# ----------IMPORT LIBRARY----------
from flask import Flask, redirect, url_for, request, render_template # berkaitan dengan penggunaan framework Flask untuk menghubungkan Python ke web
from werkzeug.utils import secure_filename
import mysql.connector # berkaitan dengan koneksi ke database mysql
# library nltk berkaitan dengan dengan preprocessing dokumen
from nltk import LancasterStemmer
from nltk.corpus import stopwords
from nltk.tokenize import sent_tokenize, word_tokenize
import math # untuk operasi matematika lanjutan

app = Flask(__name__)


# ----------KONFIGURASI DATABASE DOKUMEN----------
db = mysql.connector.connect(
  host="localhost",
  user="root",
  passwd="",
  database="stki"
)
cursor = db.cursor()

# buat variabel tempat stopwords
stop_words = set(stopwords.words('english'))
lancaster = LancasterStemmer() # Lancaster/Paice-Husk Stemmer
eliminasi = ['.', '?', '!', ' ', ',', ':', ';', '(', ')', '\'', '"', '%', '&', '*', '-', '_', '+', '=', '{', '}', '[', ']', '\\', '|', '"', '<', '>', '/',
              '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '�']


def preProcessDoc(docs):
  docs_token = word_tokenize(docs)
  arr = []
  for i in range(len(docs_token)):
    docs_token[i] = docs_token[i].lower()
    if docs_token[i] not in stop_words:
      skip = 0
      for j in range(len(docs_token[i])):
        if docs_token[i][j] in eliminasi:
          skip=1
      if skip == 0:
        arr.append(lancaster.stem(docs_token[i]))
  return arr


def dictionaryKata(id_corpus):
  sql = "SELECT text_corpus FROM tb_corpus2 WHERE id=" + id_corpus
  cursor.execute(sql)
  tup = cursor.fetchall()
  doc = list(tup[0])
  arr = preProcessDoc(doc[0])

  frequency = {} # membuat dictionary yang key nya berupa kata, sedangkan values nya berupa frekuensi kata tsb dalam sebuah dokumen
  for word in arr:
      count = frequency.get(word, 0)
      frequency[word] = count + 1

  frequency_list = frequency.keys() # variabel untuk menyimpan keys dari dictionary frequency
  return frequency, frequency_list


def uploadDokumenToDatabase(content):
  text = str(content)
  sql = "INSERT INTO tb_corpus2(text_corpus) VALUES(\"" + text +"\")"
  cursor.execute(sql)
  db.commit()


def resetDatabase():
  sql = "TRUNCATE TABLE tb_corpus2"
  cursor.execute(sql)
  db.commit()


def hitungJumlahDokumen():
  sql = "SELECT COUNT(*) FROM tb_corpus2"
  cursor.execute(sql)
  tup = cursor.fetchall()
  tup = list(tup[0])
  counter = int(tup[0])
  return counter


def overlapCoefficient(keywords_arr, docfreqlist):
  D = hitungJumlahDokumen()
  hitung = 0
  count = []
  minim = []
  w_ovr = []
  jeniskata = []
  len_doc = []
  query = list(set(keywords_arr))
  len_q = len(query)

  for i in range(D):
    jeniskata.append(list(set(docfreqlist[i]))) 
  for j in range(D):
    len_doc.append(len(jeniskata[j]))
    minim.append(min(len(query), len(jeniskata[j])))
    hitung = 0
    for k in range(len(query)):
      if query[k] in jeniskata[j]:
        hitung += 1
    count.append(hitung)
    
  for l in range(D):
      w_ovr.append(round(count[l]/minim[l], 3))

  return len_q, len_doc, minim, count, w_ovr


def vector(a, b):
  vec = []
  for i in range(len(b)):
    if b[i] in a:
      vec.append(1)
    else:
      vec.append(0)
  return vec


def simpleMatchingCoefficient(keywords_arr, docfreqlist):
  D = hitungJumlahDokumen()
  jenis_kata = []
  for i in range(D):
    jenis_kata += docfreqlist[i]
  
  jenis_kata += keywords_arr
  jenis_kata = list(set(jenis_kata))
  vec_keyword = vector(keywords_arr, jenis_kata)

  vec_doc = []
  m00 = []
  m01 = []
  m10 = []
  m11 = []
  for j in range(D):
    vec_doc.append(vector(docfreqlist[j], jenis_kata))
  
  for l in range(D):
    m00.append(0)
    m01.append(0)
    m10.append(0)
    m11.append(0)

    for k in range(len(vec_keyword)):
      if vec_keyword[k]==0 and vec_doc[l][k]==0:
        m00[l] += 1
      elif vec_keyword[k]==0 and vec_doc[l][k]==1:
        m01[l] += 1
      elif vec_keyword[k]==1 and vec_doc[l][k]==0:
        m10[l] += 1
      elif vec_keyword[k]==1 and vec_doc[l][k]==1:
        m11[l] += 1

  m00_11 = []
  w_smc = []
  total_m = len(vec_keyword)
  for m in range(D):
    m00_11.append(m00[m]+m11[m])
    w_smc.append(round(m00_11[m]/total_m, 3))
  
  return jenis_kata, vec_keyword, vec_doc, m00, m01, m10, m11, m00_11, total_m, w_smc


def hitungTotalWeight(D, keywords_arr, w):
  total_w = []
  for i in range(D):
    temp = 0
    for j in range(len(keywords_arr)):
      temp += w[j][i]
    total_w.append(round(temp, 3))
  return(total_w)


def tfIDF(keywords_arr, docfreq, docfreqlist):
  D = hitungJumlahDokumen()
  df = []
  tf = []

  for i in range(len(keywords_arr)):
    df.append(0)
    temp_tf = []
    for j in range(D):
      if(keywords_arr[i] in docfreqlist[j]):
        df[i] += 1
        temp_tf.append(docfreq[j][keywords_arr[i]])
      else:
        temp_tf.append(0)
    tf.append(temp_tf)
    del(temp_tf)
  
  divD = []
  idf = []

  for k in range(len(keywords_arr)):
    if df[k] == 0:
      divD.append(0)
      idf.append(0)
    else:
      divD.append(round(D/df[k], 3))
      idf.append(round(math.log10(divD[k]), 3))
  
  idf1 = []
  for i in range(len(idf)):
    idf1.append(round(idf[i]+1,3))
  
  w_tfidf = []

  for i in range(len(keywords_arr)):
    temp_w = []
    for j in range(D):
      temp_w.append(tf[i][j] * idf1[i])
    w_tfidf.append(temp_w)
    del(temp_w)
  
  total_w=hitungTotalWeight(D, keywords_arr, w_tfidf)
  return df, tf, divD, idf, idf1, w_tfidf, total_w

def listSeluruhDokumen():
  D = hitungJumlahDokumen()
  docfreq = []
  docfreqlist = []

  for i in range(D):
      doc_id = str(i+1)
      doc_freq, doc_freq_list = dictionaryKata(doc_id)
      docfreq.append(doc_freq)
      docfreqlist.append(doc_freq_list)
  return docfreq, docfreqlist


@app.route('/upload')
def upload_file():
   return render_template('upload.html')
	

# ----------PROSES UPLOAD DOKUMEN KE DATABASE----------
@app.route('/success', methods = ['GET', 'POST'])
def upload_to_database():
   if request.method == 'POST':
      f = request.files['file']
      f.save(secure_filename(f.filename))
      file_name = f.filename
      file_txt = open(file_name, "r")
      content = file_txt.read()
      uploadDokumenToDatabase(content)
      return render_template('index.html')


@app.route('/reset')
def reset():
  resetDatabase()
  return render_template('index.html')


@app.route('/query/')
def pagenotfound():
   return render_template('error.html')


@app.route('/')
def index():
   return render_template('index.html')


# ----------PROGRAM UTAMA----------
@app.route('/query/<search>')
def query(search):
  keywords = search
  keywords_arr = preProcessDoc(keywords)
  D = hitungJumlahDokumen()
  
  if D == 0:
    return render_template('error.html')

  docfreq, docfreqlist = listSeluruhDokumen()
  len_q, len_doc, minim, counting, w_ovr = overlapCoefficient(keywords_arr, docfreqlist)
  jenis_kata, vec_keyword, vec_doc, m00, m01, m10, m11, m00_11, total_m, w_smc = simpleMatchingCoefficient(keywords_arr, docfreqlist)
  df, tf, divD, idf, idf1, w, total_w = tfIDF(keywords_arr, docfreq, docfreqlist)

  return render_template('result.html', pjg_doc = D, pjg_query = len_q, query = keywords_arr, tf_ = tf, df_ = df, div_D = divD, idf_ = idf, w_ = w, idf1_ = idf1, tot_w = total_w,
  len_q_ = len_q, len_doc_ = len_doc, min_ = minim, count_ = counting, w_ovr_ = w_ovr,
  jenis_kata_ = jenis_kata, vec_keyword_ = vec_keyword, vec_doc_ = vec_doc, m00_ = m00, m01_ = m01, m10_ = m10, m11_ = m11, m0011_ = m00_11, total_m_ = total_m, w_smc_ = w_smc)


@app.route('/retrieve', methods = ['POST', 'GET'])
def search():
  if request.method == 'POST':
    query = request.form['keyword']
    return redirect(url_for('query', search = query))
  else:
    query = request.args.get('keyword')
    return redirect(url_for('query', search = query))


if __name__ == '__main__':
  app.run()
  
# ANAK AGUNG GDE BAGUS JANAPRIYA 1705551044
# CP: @janapr7 (Telegram)