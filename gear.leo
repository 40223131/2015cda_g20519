<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<?xml-stylesheet ekr_test ?>
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2" tnodes="0" max_tnode_index="0" clone_windows="0"/>
<globals body_outline_ratio="0.5" body_secondary_ratio="0.5">
	<global_window_position top="50" left="50" height="500" width="700"/>
	<global_log_window_position top="0" left="0" height="0" width="0"/>
</globals>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="2014fall.20141212095015.1784"><vh>@settings</vh>
<v t="2014fall.20141212095015.1785"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="2014fall.20141212095015.1786"><vh>@string initial_split_orientation = horizontal</vh></v>
</v>
<v t="2015.20150330144929.1714"><vh>以下為協同產品開發程式</vh></v>
<v t="2014fall.20141212095015.1774" a="E"><vh>@path ./</vh>
<v t="2014fall.20141212095015.1775" a="E"><vh>@clean wsgi.py</vh>
<v t="2014fall.20141212095015.1776"><vh>&lt;&lt;declarations&gt;&gt; (wsgi)</vh></v>
<v t="2014fall.20141212095015.1777" a="E"><vh>class Hello</vh>
<v t="2014fall.20141212095015.2004"><vh>__init__</vh></v>
<v t="2014fall.20141212095015.1778"><vh>index_orig</vh></v>
<v t="2014fall.20141215194146.1791"><vh>index</vh></v>
<v t="2015.20150516023303.1"><vh>index2</vh></v>
<v t="2015.20150516030055.1" a="E"><vh>cda_g2_middletest</vh>
<v t="2015.20150512104601.1"><vh>spur</vh></v>
<v t="2015.20150512104712.1"><vh>spuraction</vh></v>
<v t="2015.20150512104918.1"><vh>drawspur</vh></v>
<v t="2015.20150512105003.1"><vh>drawspuraction</vh></v>
</v>
<v t="2015.20150516024238.1" a="E"><vh>cda_g2_w11</vh>
<v t="2015.20150512103704.1"><vh>spur1</vh></v>
<v t="2015.20150512103719.1"><vh>spuraction1</vh></v>
<v t="2015.20150512103843.1"><vh>drawspur1</vh></v>
<v t="2015.20150512103921.1"><vh>drawspuraction1</vh></v>
</v>
<v t="2014fall.20141212095015.1779"><vh>hello</vh></v>
<v t="2015.20150330144929.1713"><vh>twoDgear</vh></v>
<v t="2015.20150331094055.1733"><vh>threeDgear</vh></v>
<v t="2015.20150330144929.1762"><vh>do2Dgear</vh></v>
<v t="2015.20150331094055.1735"><vh>do3Dgear</vh></v>
<v t="2015.20150330144929.1765"><vh>mygeartest</vh></v>
<v t="2015.20150331094055.1737"><vh>my3Dgeartest</vh></v>
<v t="2014python.20150420214549.1830"><vh>mygeartest2</vh></v>
</v>
</v>
<v t="office.20150407074720.1" a="E"
expanded="office.20150407074720.3,"><vh>@file gear.py</vh></v>
<v t="2014fall.20141212095015.1780"><vh>@edit setup.py</vh></v>
</v>
<v t="2014python.20150420214549.1827" a="E"><vh>@path static/Brython3.1.1-20150328-091302/Lib/site-packages/</vh>
<v t="2014python.20150420214549.1828"><vh>@edit spur.py</vh></v>
</v>
<v t="2015.20150330144929.1715" a="E"><vh>以下為專案報告相關檔案</vh>
<v t="2015.20150330144929.1716"><vh>@edit SUMMARY.md</vh></v>
<v t="2015.20150330144929.1717"><vh>@edit README.md </vh></v>
<v t="2014python.20150413234258.1744"><vh>@edit _專案任務分配.md</vh></v>
<v t="2014python.20150420214549.1880"><vh>@edit scrumaster.md</vh></v>
<v t="2014python.20150420214549.1882"><vh>@edit scrum_1.md</vh></v>
<v t="2014python.20150420214549.1884"><vh>@edit scrum_2.md</vh></v>
<v t="2014python.20150420214549.1886"><vh>@edit scrum_3.md</vh></v>
<v t="2014python.20150420214549.1888"><vh>@edit scrum_4.md</vh></v>
<v t="2014python.20150420214549.1890"><vh>@edit product_owner.md</vh></v>
</v>
<v t="2015.20150330144929.1763" a="E"><vh>以下為參考資料</vh>
<v t="2015.20150330144929.1764"><vh>Brython 正齒輪程式</vh></v>
</v>
</vnodes>
<tnodes>
<t tx="2014fall.20141212095015.1774"></t>
<t tx="2014fall.20141212095015.1775"># coding=utf-8
# 上面的程式內容編碼必須在程式的第一或者第二行才會有作用

################# (1) 模組導入區
# 導入 cherrypy 模組, 為了在 OpenShift 平台上使用 cherrypy 模組, 必須透過 setup.py 安裝


@language python
@tabwidth -4

&lt;&lt;declarations&gt;&gt;
@others
################# (4) 程式啟動區
# 配合程式檔案所在目錄設定靜態目錄或靜態檔案
application_conf = {'/static':{
        'tools.staticdir.on': True,
        # 程式執行目錄下, 必須自行建立 static 目錄
        'tools.staticdir.dir': _curdir+"/static"},
        '/downloads':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/downloads"},
        '/images':{
        'tools.staticdir.on': True,
        'tools.staticdir.dir': data_dir+"/images"}
    }
    
root = Hello()
root.gear = gear.Gear()

if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示在 OpenSfhit 執行
    application = cherrypy.Application(root, config=application_conf)
else:
    # 表示在近端執行
    cherrypy.config.update({'server.socket_port': 8099})
    cherrypy.quickstart(root, config=application_conf)
</t>
<t tx="2014fall.20141212095015.1776">import cherrypy
# 導入 Python 內建的 os 模組, 因為 os 模組為 Python 內建, 所以無需透過 setup.py 安裝
import os
# 導入 random 模組
import random
# 導入 gear 模組
import gear

################# (2) 廣域變數設定區
# 確定程式檔案所在目錄, 在 Windows 下有最後的反斜線
_curdir = os.path.join(os.getcwd(), os.path.dirname(__file__))
# 設定在雲端與近端的資料儲存目錄
if 'OPENSHIFT_REPO_DIR' in os.environ.keys():
    # 表示程式在雲端執行
    download_root_dir = os.environ['OPENSHIFT_DATA_DIR']
    data_dir = os.environ['OPENSHIFT_DATA_DIR']
else:
    # 表示程式在近端執行
    download_root_dir = _curdir + "/local_data/"
    data_dir = _curdir + "/local_data/"

'''以下為近端 input() 與 for 迴圈應用的程式碼, 若要將程式送到 OpenShift 執行, 除了採用 CherryPy 網際框架外, 還要轉為 html 列印
# 利用 input() 取得的資料型別為字串
toprint = input("要印甚麼內容?")
# 若要將 input() 取得的字串轉為整數使用, 必須利用 int() 轉換
repeat_no = int(input("重複列印幾次?"))
for i in range(repeat_no):
    print(toprint)
'''
</t>
<t tx="2014fall.20141212095015.1777">################# (3) 程式類別定義區
# 以下改用 CherryPy 網際框架程式架構
# 以下為 Hello 類別的設計內容, 其中的 object 使用, 表示 Hello 類別繼承 object 的所有特性, 包括方法與屬性設計
class Hello(object):

    # Hello 類別的啟動設定
    _cp_config = {
    'tools.encode.encoding': 'utf-8',
    'tools.sessions.on' : True,
    'tools.sessions.storage_type' : 'file',
    #'tools.sessions.locking' : 'explicit',
    # session 以檔案儲存, 而且位於 data_dir 下的 tmp 目錄
    'tools.sessions.storage_path' : data_dir+'/tmp',
    # session 有效時間設為 60 分鐘
    'tools.sessions.timeout' : 60
    }

    @others
</t>
<t tx="2014fall.20141212095015.1778"># 以 @ 開頭的 cherrypy.expose 為 decorator, 用來表示隨後的成員方法, 可以直接讓使用者以 URL 連結執行
@cherrypy.expose
# index 方法為 CherryPy 各類別成員方法中的內建(default)方法, 當使用者執行時未指定方法, 系統將會優先執行 index 方法
# 有 self 的方法為類別中的成員方法, Python 程式透過此一 self 在各成員方法間傳遞物件內容
def index_orig(self, toprint="Hello World!"):
    return toprint
</t>
<t tx="2014fall.20141212095015.1779">@cherrypy.expose
def hello(self, toprint="Hello World!"):
    return toprint
</t>
<t tx="2014fall.20141212095015.1784"></t>
<t tx="2014fall.20141212095015.1785">QSplitter::handle {
    background-color: #CAE1FF; /* lightSteelBlue1 */
}

QStackedWidget {
    /* background-color:lightpink; */
    border-color: red;
    padding: 0px;
    /* border-width: 0px; */
    /* background-color: yellow; */
}

QSplitter {
    border-color: white;
    background-color: white;
    border-style: solid;
}

QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 20px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="2014fall.20141212095015.1786">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="2014fall.20141212095015.2004">def __init__(self):
    # 配合透過案例啟始建立所需的目錄
    if not os.path.isdir(data_dir+'/tmp'):
        os.mkdir(data_dir+'/tmp')
    if not os.path.isdir(data_dir+"/downloads"):
        os.mkdir(data_dir+"/downloads")
    if not os.path.isdir(data_dir+"/images"):
        os.mkdir(data_dir+"/images")
</t>
<t tx="2014fall.20141215194146.1791">@cherrypy.expose
def index(self):
    outstring = '''
 &lt;!DOCTYPE html&gt; 
 &lt;html&gt;
&lt;head&gt;

&lt;style&gt;
table, th, td {
    border: 3px solid black;
    border-collapse: collapse;

}
th, td {
    padding: 3px;
}
&lt;/style&gt;

&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;SCRIPT LANGUAGE="javascript"&gt;

function LinkUp() 
{
var number = document.cda.DDlinks.selectedIndex;
&lt;!--location.href = document.cda.DDlinks.options[number].value;--&gt;
window.open(document.cda.DDlinks.options[number].value);
}
&lt;/SCRIPT&gt;

&lt;/head&gt;
 &lt;body&gt;
 
&lt;!-- 
&lt;form&gt;
&lt;select name="2015cda_g2"&gt;
--&gt;
&lt;font size="8" face="標楷體" color="#0000FF"&gt;2015cdag2第二組網頁&lt;/font&gt;

&lt;h2&gt;組員名單&lt;/h2&gt;

&lt;table  style="width:20%"&gt;
  &lt;tr&gt;
    &lt;th&gt;組長&lt;/th&gt;&lt;th&gt;學號&lt;/th&gt;		
  &lt;/tr&gt;
  
  &lt;tr&gt;
    &lt;td &gt;陳柏安&lt;/td&gt; &lt;td&gt;40223131&lt;/td&gt;		
  &lt;/tr&gt;
  
   &lt;tr&gt;
    &lt;th&gt;組員&lt;/th&gt;&lt;th&gt;學號&lt;/th&gt;		
  &lt;/tr&gt;
  
  &lt;tr&gt;
    &lt;td &gt;吳佳容&lt;/td&gt;&lt;td&gt;40223102&lt;/td&gt;		
  &lt;/tr&gt;
  
   &lt;tr&gt;
    &lt;td &gt;林瑩禎&lt;/td&gt;&lt;td&gt;40223104&lt;/td&gt;		
  &lt;/tr&gt;

   &lt;tr&gt;
    &lt;td &gt;侯云婷&lt;/td&gt;&lt;td&gt;40223105&lt;/td&gt;		
  &lt;/tr&gt;
  
  &lt;tr&gt;
    &lt;td &gt;許芸瑄&lt;/td&gt;&lt;td&gt;40223106&lt;/td&gt;		
  &lt;/tr&gt;
  
  &lt;tr&gt;
    &lt;td &gt;黃雯琦&lt;/td&gt;&lt;td&gt;40223107&lt;/td&gt;		
  &lt;/tr&gt;
  
  &lt;tr&gt;
    &lt;td &gt;陳儀芳&lt;/td&gt;&lt;td&gt;40023107&lt;/td&gt;		
  &lt;/tr&gt;

&lt;/table&gt;&lt;br /&gt;

&lt;h2&gt;40223131 陳柏安 各週協同內容 &lt;/h2&gt;

&lt;a href="index2" target="_blank"&gt;各週協同內容&lt;/a&gt;&lt;br&gt;

&lt;h2&gt;各組員的openshift表單&lt;/h2&gt;

&lt;FORM NAME="cda"&gt;
&lt;SELECT NAME="DDlinks"&gt;

　&lt;option value="https://www.gitbook.com/book/40223131/2015cdag2_0421/edit#/edit/master/scrum_1.md"&gt;40223102吳佳容&lt;/option&gt;
　&lt;option value="http://2015cd0512-40223104.rhcloud.com/"&gt;40223104林瑩禎&lt;/option&gt;
　&lt;option value="https://www.gitbook.com/book/40223131/2015cdag2_0421/edit#/edit/master/scrumaster.md"&gt;40223105侯云亭&lt;/option&gt;
　&lt;option value="https://www.gitbook.com/book/40223131/2015cdag2_0421/edit#/edit/master/scrum_2.md"&gt;40223106許芸瑄&lt;/option&gt;
    &lt;option value="https://www.gitbook.com/book/40223131/2015cdag2_0421/edit#/edit/master/scrum_3.md"&gt;40223107黃雯琪&lt;/option&gt;
    &lt;option value="https://www.gitbook.com/book/40223131/2015cdag2_0421/edit#/edit/master/scrum_4.md"&gt;40023107陳儀芳&lt;/option&gt;
&lt;/select&gt;
&lt;INPUT TYPE="BUTTON" VALUE="openshift" onClick="LinkUp()"&gt;
&lt;/form&gt;&lt;br /&gt;

&lt;!--&lt;a href="http://www.google.com.tw/?gws_rd=ssl" target="_blank"&gt;Google&lt;/a&gt;&lt;br&gt;--&gt;
&lt;!---"建立分頁"--&gt;

&lt;a href="https://www.gitbook.com/book/40223131/2015cdag2_0421/edit#/edit/master/SUMMARY.md"target="_blank"&gt;gitbook&lt;/a&gt;&lt;br /&gt;

'''
    return outstring

</t>
<t tx="2014python.20150420214549.1827"></t>
<t tx="2014python.20150420214549.1830">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def mygeartest2(self, N=20, N1=10, N2=30, N3=10, N4=20, N5=30, N6=30,M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;

第1齒數:'''+str(N)+'''&lt;output name=N for=str(N)&gt;&lt;br /&gt;
第2齒數:'''+str(N1)+'''&lt;output name=N1 for=str(N1)&gt;&lt;br /&gt;
第3齒數:'''+str(N2)+'''&lt;output name=N2 for=str(N2)&gt;&lt;br /&gt;
第4齒數:'''+str(N3)+'''&lt;output name=N3 for=str(N3)&gt;&lt;br /&gt;
第5齒數:'''+str(N4)+'''&lt;output name=N4 for=str(N4)&gt;&lt;br /&gt;
第6齒數:'''+str(N5)+'''&lt;output name=N5 for=str(N5)&gt;&lt;br /&gt;
第7齒數:'''+str(N6)+'''&lt;output name=N5 for=str(N6)&gt;&lt;br /&gt;
模數:'''+str(M)+'''&lt;output name=M for=str(M)&gt;&lt;br /&gt;
壓力角:'''+str(P)+'''&lt;output name=P for=str(P)&gt;&lt;br /&gt;
齒數比:'''+str(N)+''':'''+str(N1)+''':'''+str(N2)+''':'''+str(N3)+''':'''+str(N4)+''':'''+str(N5)+''':'''+str(N6)+'''&lt;br /&gt;

&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
from math import *
# 請注意, 這裡導入位於 Lib/site-packages 目錄下的 spur.py 檔案
import spur

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

# 以下利用 spur.py 程式進行繪圖, 接下來的協同設計運算必須要配合使用者的需求進行設計運算與繪圖
# 其中並將工作分配給其他組員建立類似 spur.py 的相關零件繪圖模組
# midx, midy 為齒輪圓心座標, rp 為節圓半徑, n 為齒數, pa 為壓力角, color 為線的顏色
# Gear(midx, midy, rp, n=20, pa=20, color="black"):
# 模數決定齒的尺寸大小, 囓合齒輪組必須有相同的模數與壓力角
# 壓力角 pa 單位為角度
pa = 20
# m 為模數
m = '''+str(M)+'''
# 第1齒輪齒數
n_g1 = '''+str(N)+'''
# 第2齒輪齒數
n_g2 = '''+str(N1)+'''
# 第3齒輪齒數
n_g3 ='''+str(N2)+'''
# 第4齒輪齒數
n_g4 ='''+str(N3)+'''
# 第5齒輪齒數
n_g5 ='''+str(N4)+'''
# 第6齒輪齒數
n_g6 ='''+str(N5)+'''
# 第7齒輪齒數
n_g7 ='''+str(N6)+'''



# 計算兩齒輪的節圓半徑
rp_g1 = m*n_g1/2
rp_g2 = m*n_g2/2
rp_g3 = m*n_g3/2
rp_g4 = m*n_g4/2
rp_g5= m*n_g5/2
rp_g6= m*n_g6/2
rp_g7= m*n_g7/2

# 繪圖第1齒輪的圓心座標
x_g1 = 400
y_g1 = 400
# 第2齒輪的圓心座標, 假設排列成水平, 表示各齒輪圓心 y 座標相同
x_g2 = x_g1 + rp_g1 + rp_g2
y_g2 = y_g1
# 第3齒輪的圓心座標
x_g3 = x_g1 + rp_g1 + 2*rp_g2 + rp_g3
y_g3 = y_g1

# 第4齒輪的圓心座標
x_g4 = x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 + rp_g4
y_g4 = y_g1

# 第5齒輪的圓心座標
x_g5= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+ rp_g5
y_g5 = y_g1

# 第6齒輪的圓心座標
x_g6= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+2* rp_g5+rp_g6
y_g6= y_g1

# 第7齒輪的圓心座標
x_g7= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+2* rp_g5+2*rp_g6+rp_g7
y_g7= y_g1


# 將第1齒輪順時鐘轉 90 度
# 使用 ctx.save() 與 ctx.restore() 以確保各齒輪以相對座標進行旋轉繪圖

ctx.font = "10px Verdana";
ctx.fillText("組員:31",x_g1-20, y_g1-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g1, y_g1)
# rotate to engage
ctx.rotate(pi/2)
# put it back
ctx.translate(-x_g1, -y_g1)
spur.Spur(ctx).Gear(x_g1, y_g1, rp_g1, n_g1, pa, "blue")
ctx.restore()

# 將第2齒輪逆時鐘轉 90 度之後, 再多轉一齒, 以便與第1齒輪進行囓合

ctx.font = "10px Verdana";
ctx.fillText("組員:04",x_g2-20, y_g2-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g2, y_g2)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g2)
# put it back
ctx.translate(-x_g2, -y_g2)
spur.Spur(ctx).Gear(x_g2, y_g2, rp_g2, n_g2, pa, "black")
ctx.restore()

# 將第3齒輪逆時鐘轉 90 度之後, 再往回轉第2齒輪定位帶動轉角, 然後再逆時鐘多轉一齒, 以便與第2齒輪進行囓合

ctx.font = "10px Verdana";
ctx.fillText("組員:07",x_g3-20, y_g3-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g3, y_g3)
# rotate to engage
# pi+pi/n_g2 為第2齒輪從順時鐘轉 90 度之後, 必須配合目前的標記線所作的齒輪 2 轉動角度, 要轉換到齒輪3 的轉動角度
# 必須乘上兩齒輪齒數的比例, 若齒輪2 大, 則齒輪3 會轉動較快
# 第1個 -pi/2 為將原先垂直的第3齒輪定位線逆時鐘旋轉 90 度
# -pi/n_g3 則是第3齒與第2齒定位線重合後, 必須再逆時鐘多轉一齒的轉角, 以便進行囓合
# (pi+pi/n_g2)*n_g2/n_g3 則是第2齒原定位線為順時鐘轉動 90 度, 
# 但是第2齒輪為了與第1齒輪囓合, 已經距離定位線, 多轉了 180 度, 再加上第2齒輪的一齒角度, 因為要帶動第3齒輪定位, 
# 這個修正角度必須要再配合第2齒與第3齒的轉速比加以轉換成第3齒輪的轉角, 因此乘上 n_g2/n_g3
ctx.rotate(-pi/2-pi/n_g3+(pi+pi/n_g2)*n_g2/n_g3)
# put it back
ctx.translate(-x_g3, -y_g3)
spur.Spur(ctx).Gear(x_g3, y_g3, rp_g3, n_g3, pa, "red")
ctx.restore()

# 按照上面三個正齒輪的囓合轉角運算, 隨後的傳動齒輪轉角便可依此類推, 完成6個齒輪的囓合繪圖

#第4齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:02",x_g4-20, y_g4-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g4, y_g4)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g4+(pi+pi/n_g3)*n_g3/n_g4-(pi+pi/n_g2)*n_g2/n_g4)
# put it back
ctx.translate(-x_g4, -y_g4)
spur.Spur(ctx).Gear(x_g4, y_g4, rp_g4, n_g4, pa, "green")
ctx.restore()

#第5齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:06",x_g5-20, y_g5+10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g5, y_g5)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g5+(pi+pi/n_g4)*n_g4/n_g5-(pi+pi/n_g3)*n_g3/n_g5+(pi+pi/n_g2)*n_g2/n_g5)
# put it back
ctx.translate(-x_g5, -y_g5)
spur.Spur(ctx).Gear(x_g5, y_g5, rp_g5, n_g5, pa, "purple")
ctx.restore()

#第6齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:05",x_g6-20, y_g6+10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g6, y_g6)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g6+(pi+pi/n_g5)*n_g5/n_g6-
(pi+pi/n_g4)*n_g4/n_g6+(pi+pi/n_g3)*n_g3/n_g6-
(pi+pi/n_g2)*n_g2/n_g6)
# put it back
ctx.translate(-x_g6, -y_g6)
spur.Spur(ctx).Gear(x_g6, y_g6, rp_g6, n_g6, pa, "blue")
ctx.restore()

#第7齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:40023107",x_g7-20, y_g7+10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g7, y_g7)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g7+(pi+pi/n_g6)*n_g6/n_g7-
(pi+pi/n_g5)*n_g5/n_g7+(pi+pi/n_g4)*n_g4/n_g7-
(pi+pi/n_g3)*n_g3/n_g7+(pi+pi/n_g2)*n_g2/n_g7)
# put it back
ctx.translate(-x_g7, -y_g7)
spur.Spur(ctx).Gear(x_g7, y_g7, rp_g7, n_g7, pa, "Brown")
ctx.restore()

&lt;/script&gt;
&lt;canvas id="plotarea" width="3000" height="3000"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
'''

# 第5齒輪的圓心座標
x_g5= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+ rp_g5
y_g5 = y_g1

# 第6齒輪的圓心座標
x_g6= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+2* rp_g5+rp_g6
y_g6= y_g1

#第5齒輪
ctx.save()
# translate to the origin of second gear
ctx.translate(x_g5, y_g5)
# rotate to engage
ctx.rotate(-pi-pi/n_g5+(pi+pi/n_g4)*n_g4/n_g5)
# put it back
ctx.translate(-x_g5, -y_g5)
spur.Spur(ctx).Gear(x_g5, y_g5, rp_g5, n_g5, pa, "purple")
ctx.restore()

#第6齒輪
ctx.save()
# translate to the origin of second gear
ctx.translate(x_g6, y_g6)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g6-pi/n_g6+(pi+pi/n_g5)*n_g5/n_g6)
# put it back
ctx.translate(-x_g6, -y_g6)
spur.Spur(ctx).Gear(x_g6, y_g6, rp_g6, n_g6, pa, "blue")
ctx.restore()
'''
</t>
<t tx="2015.20150330144929.1713">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def twoDgear(self, N=None, M=None, P=None):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
    
&lt;form method=POST action=mygeartest&gt;
齒數:&lt;input type=text name=N&gt;&lt;br /&gt;
模數:&lt;input type=text name=M&gt;&lt;br /&gt;
壓力角:&lt;input type=text name=P&gt;&lt;br /&gt;
&lt;input type=submit value=send&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
</t>
<t tx="2015.20150330144929.1714"></t>
<t tx="2015.20150330144929.1715"></t>
<t tx="2015.20150330144929.1762">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def do2Dgear(self, N=None, M=None, P=None):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
import math

# 畫布指定在名稱為 plotarea 的 canvas 上
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

# 用紅色畫一條直線
ctx.beginPath()
ctx.lineWidth = 3
'''
    outstring += '''
ctx.moveTo('''+str(N)+","+str(M)+")"
    outstring += '''
ctx.lineTo(0, 500)
ctx.strokeStyle = "red"
ctx.stroke()

# 用藍色再畫一條直線
ctx.beginPath()
ctx.lineWidth = 3
ctx.moveTo(0, 0)
ctx.lineTo(500, 0)
ctx.strokeStyle = "blue"
ctx.stroke()

# 用綠色再畫一條直線
ctx.beginPath()
ctx.lineWidth = 3
ctx.moveTo(0, 0)
ctx.lineTo(500, 500)
ctx.strokeStyle = "green"
ctx.stroke()

# 用黑色畫一個圓
ctx.beginPath()
ctx.lineWidth = 3
ctx.strokeStyle = "black"
ctx.arc(250,250,50,0,2*math.pi)
ctx.stroke()
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="600"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
</t>
<t tx="2015.20150330144929.1763"></t>
<t tx="2015.20150330144929.1764">@language python
from math import *

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = doc["plotarea"]
ctx = canvas.getContext("2d")

def create_line(x1, y1, x2, y2, width=3, fill="red"):
	ctx.beginPath()
	ctx.lineWidth = width
	ctx.moveTo(x1, y1)
	ctx.lineTo(x2, y2)
	ctx.strokeStyle = fill
	ctx.stroke()

# 導入數學函式後, 圓周率為 pi
# deg 為角度轉為徑度的轉換因子
deg = pi/180.
#
# 以下分別為正齒輪繪圖與主 tkinter 畫布繪圖
#
# 定義一個繪正齒輪的繪圖函式
# midx 為齒輪圓心 x 座標
# midy 為齒輪圓心 y 座標
# rp 為節圓半徑, n 為齒數
def gear(midx, midy, rp, n, 顏色):
    # 將角度轉換因子設為全域變數
    global deg
    # 齒輪漸開線分成 15 線段繪製
    imax = 15
    # 在輸入的畫布上繪製直線, 由圓心到節圓 y 軸頂點畫一直線
    create_line(midx, midy, midx, midy-rp)
    # 畫出 rp 圓, 畫圓函式尚未定義
    #create_oval(midx-rp, midy-rp, midx+rp, midy+rp, width=2)
    # a 為模數 (代表公制中齒的大小), 模數為節圓直徑(稱為節徑)除以齒數
    # 模數也就是齒冠大小
    a=2*rp/n
    # d 為齒根大小, 為模數的 1.157 或 1.25倍, 這裡採 1.25 倍
    d=2.5*rp/n
    # ra 為齒輪的外圍半徑
    ra=rp+a
    print("ra:", ra)
    # 畫出 ra 圓, 畫圓函式尚未定義
    #create_oval(midx-ra, midy-ra, midx+ra, midy+ra, width=1)
    # rb 則為齒輪的基圓半徑
    # 基圓為漸開線長齒之基準圓
    rb=rp*cos(20*deg)
    print("rp:", rp)
    print("rb:", rb)
    # 畫出 rb 圓 (基圓), 畫圓函式尚未定義
    #create_oval(midx-rb, midy-rb, midx+rb, midy+rb, width=1)
    # rd 為齒根圓半徑
    rd=rp-d
    # 當 rd 大於 rb 時
    print("rd:", rd)
    # 畫出 rd 圓 (齒根圓), 畫圓函式尚未定義
    #create_oval(midx-rd, midy-rd, midx+rd, midy+rd, width=1)
    # dr 則為基圓到齒頂圓半徑分成 imax 段後的每段半徑增量大小
    # 將圓弧分成 imax 段來繪製漸開線
    dr=(ra-rb)/imax
    # tan(20*deg)-20*deg 為漸開線函數
    sigma=pi/(2*n)+tan(20*deg)-20*deg
    for j in range(n):
        ang=-2.*j*pi/n+sigma
        ang2=2.*j*pi/n+sigma
        lxd=midx+rd*sin(ang2-2.*pi/n)
        lyd=midy-rd*cos(ang2-2.*pi/n)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(alpha-ang)
            ypt=r*cos(alpha-ang)
            xd=rd*sin(-ang)
            yd=rd*cos(-ang)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由左側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                lfx=midx+xpt
                lfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        '''
        the line from last end of dedendum point to the recent
        end of dedendum point
        '''
        # lxd 為齒根圓上的左側 x 座標, lyd 則為 y 座標
        # 下列為齒根圓上用來近似圓弧的直線
        create_line((lxd),(lyd),(midx+xd),(midy-yd),fill=顏色)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(ang2-alpha)
            ypt=r*cos(ang2-alpha)
            xd=rd*sin(ang2)
            yd=rd*cos(ang2)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由右側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                rfx=midx+xpt
                rfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # lfx 為齒頂圓上的左側 x 座標, lfy 則為 y 座標
        # 下列為齒頂圓上用來近似圓弧的直線
        create_line(lfx,lfy,rfx,rfy,fill=顏色)

gear(400,400,300,41,"blue")

</t>
<t tx="2015.20150330144929.1765">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def mygeartest(self, N=20, M=10, P=20):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;

&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
from math import *

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

def create_line(x1, y1, x2, y2, width=3, fill="red"):
	ctx.beginPath()
	ctx.lineWidth = width
	ctx.moveTo(x1, y1)
	ctx.lineTo(x2, y2)
	ctx.strokeStyle = fill
	ctx.stroke()

# 導入數學函式後, 圓周率為 pi
# deg 為角度轉為徑度的轉換因子
deg = pi/180.
#
# 以下分別為正齒輪繪圖與主 tkinter 畫布繪圖
#
# 定義一個繪正齒輪的繪圖函式
# midx 為齒輪圓心 x 座標
# midy 為齒輪圓心 y 座標
# rp 為節圓半徑, n 為齒數
def gear(midx, midy, rp, n,顏色):
    # 將角度轉換因子設為全域變數
    global deg
    # 齒輪漸開線分成 15 線段繪製
    imax = 15
    # 在輸入的畫布上繪製直線, 由圓心到節圓 y 軸頂點畫一直線
    create_line(midx, midy, midx, midy-rp)
    # 畫出 rp 圓, 畫圓函式尚未定義
    #create_oval(midx-rp, midy-rp, midx+rp, midy+rp, width=2)
    # a 為模數 (代表公制中齒的大小), 模數為節圓直徑(稱為節徑)除以齒數
    # 模數也就是齒冠大小
    a=2*rp/n
    # d 為齒根大小, 為模數的 1.157 或 1.25倍, 這裡採 1.25 倍
    d=2.5*rp/n
    # ra 為齒輪的外圍半徑
    ra=rp+a
    print("ra:", ra)
    # 畫出 ra 圓, 畫圓函式尚未定義
    #create_oval(midx-ra, midy-ra, midx+ra, midy+ra, width=1)
    # rb 則為齒輪的基圓半徑
    # 基圓為漸開線長齒之基準圓
    rb=rp*cos(20*deg)
    print("rp:", rp)
    print("rb:", rb)
    # 畫出 rb 圓 (基圓), 畫圓函式尚未定義
    #create_oval(midx-rb, midy-rb, midx+rb, midy+rb, width=1)
    # rd 為齒根圓半徑
    rd=rp-d
    # 當 rd 大於 rb 時
    print("rd:", rd)
    # 畫出 rd 圓 (齒根圓), 畫圓函式尚未定義
    #create_oval(midx-rd, midy-rd, midx+rd, midy+rd, width=1)
    # dr 則為基圓到齒頂圓半徑分成 imax 段後的每段半徑增量大小
    # 將圓弧分成 imax 段來繪製漸開線
    dr=(ra-rb)/imax
    # tan(20*deg)-20*deg 為漸開線函數
    sigma=pi/(2*n)+tan(20*deg)-20*deg
    for j in range(n):
        ang=-2.*j*pi/n+sigma
        ang2=2.*j*pi/n+sigma
        lxd=midx+rd*sin(ang2-2.*pi/n)
        lyd=midy-rd*cos(ang2-2.*pi/n)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(alpha-ang)
            ypt=r*cos(alpha-ang)
            xd=rd*sin(-ang)
            yd=rd*cos(-ang)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由左側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                lfx=midx+xpt
                lfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # the line from last end of dedendum point to the recent
        # end of dedendum point
        # lxd 為齒根圓上的左側 x 座標, lyd 則為 y 座標
        # 下列為齒根圓上用來近似圓弧的直線
        create_line((lxd),(lyd),(midx+xd),(midy-yd),fill=顏色)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(ang2-alpha)
            ypt=r*cos(ang2-alpha)
            xd=rd*sin(ang2)
            yd=rd*cos(ang2)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由右側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                rfx=midx+xpt
                rfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # lfx 為齒頂圓上的左側 x 座標, lfy 則為 y 座標
        # 下列為齒頂圓上用來近似圓弧的直線
        create_line(lfx,lfy,rfx,rfy,fill=顏色)

gear(400,400,300,'''+str(N)+''',"blue")
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring
</t>
<t tx="2015.20150331094055.1733">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def threeDgear(self, N=20, M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
    
&lt;form method=POST action=do3Dgear&gt;
齒數:&lt;input type=text name=N&gt;&lt;br /&gt;
模數:&lt;input type=text name=M&gt;&lt;br /&gt;
壓力角:&lt;input type=text name=P&gt;&lt;br /&gt;
&lt;input type=submit value=send&gt;
&lt;/form&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
</t>
<t tx="2015.20150331094055.1735">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def do3Dgear(self, N=20, M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
import math

# 畫布指定在名稱為 plotarea 的 canvas 上
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

# 用紅色畫一條直線
ctx.beginPath()
ctx.lineWidth = 3
'''
    outstring += '''
ctx.moveTo('''+str(N)+","+str(M)+")"
    outstring += '''
ctx.lineTo(0, 500)
ctx.strokeStyle = "red"
ctx.stroke()

# 用藍色再畫一條直線
ctx.beginPath()
ctx.lineWidth = 3
ctx.moveTo(0, 0)
ctx.lineTo(500, 0)
ctx.strokeStyle = "blue"
ctx.stroke()

# 用綠色再畫一條直線
ctx.beginPath()
ctx.lineWidth = 3
ctx.moveTo(0, 0)
ctx.lineTo(500, 500)
ctx.strokeStyle = "green"
ctx.stroke()

# 用黑色畫一個圓
ctx.beginPath()
ctx.lineWidth = 3
ctx.strokeStyle = "black"
ctx.arc(250,250,50,0,2*math.pi)
ctx.stroke()
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="600"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
</t>
<t tx="2015.20150331094055.1737">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def my3Dgeartest(self, N=20, M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;

&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
from math import *

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

def create_line(x1, y1, x2, y2, width=3, fill="red"):
	ctx.beginPath()
	ctx.lineWidth = width
	ctx.moveTo(x1, y1)
	ctx.lineTo(x2, y2)
	ctx.strokeStyle = fill
	ctx.stroke()

# 導入數學函式後, 圓周率為 pi
# deg 為角度轉為徑度的轉換因子
deg = pi/180.
#
# 以下分別為正齒輪繪圖與主 tkinter 畫布繪圖
#
# 定義一個繪正齒輪的繪圖函式
# midx 為齒輪圓心 x 座標
# midy 為齒輪圓心 y 座標
# rp 為節圓半徑, n 為齒數
def gear(midx, midy, rp, n, 顏色):
    # 將角度轉換因子設為全域變數
    global deg
    # 齒輪漸開線分成 15 線段繪製
    imax = 15
    # 在輸入的畫布上繪製直線, 由圓心到節圓 y 軸頂點畫一直線
    create_line(midx, midy, midx, midy-rp)
    # 畫出 rp 圓, 畫圓函式尚未定義
    #create_oval(midx-rp, midy-rp, midx+rp, midy+rp, width=2)
    # a 為模數 (代表公制中齒的大小), 模數為節圓直徑(稱為節徑)除以齒數
    # 模數也就是齒冠大小
    a=2*rp/n
    # d 為齒根大小, 為模數的 1.157 或 1.25倍, 這裡採 1.25 倍
    d=2.5*rp/n
    # ra 為齒輪的外圍半徑
    ra=rp+a
    print("ra:", ra)
    # 畫出 ra 圓, 畫圓函式尚未定義
    #create_oval(midx-ra, midy-ra, midx+ra, midy+ra, width=1)
    # rb 則為齒輪的基圓半徑
    # 基圓為漸開線長齒之基準圓
    rb=rp*cos(20*deg)
    print("rp:", rp)
    print("rb:", rb)
    # 畫出 rb 圓 (基圓), 畫圓函式尚未定義
    #create_oval(midx-rb, midy-rb, midx+rb, midy+rb, width=1)
    # rd 為齒根圓半徑
    rd=rp-d
    # 當 rd 大於 rb 時
    print("rd:", rd)
    # 畫出 rd 圓 (齒根圓), 畫圓函式尚未定義
    #create_oval(midx-rd, midy-rd, midx+rd, midy+rd, width=1)
    # dr 則為基圓到齒頂圓半徑分成 imax 段後的每段半徑增量大小
    # 將圓弧分成 imax 段來繪製漸開線
    dr=(ra-rb)/imax
    # tan(20*deg)-20*deg 為漸開線函數
    sigma=pi/(2*n)+tan(20*deg)-20*deg
    for j in range(n):
        ang=-2.*j*pi/n+sigma
        ang2=2.*j*pi/n+sigma
        lxd=midx+rd*sin(ang2-2.*pi/n)
        lyd=midy-rd*cos(ang2-2.*pi/n)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(alpha-ang)
            ypt=r*cos(alpha-ang)
            xd=rd*sin(-ang)
            yd=rd*cos(-ang)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由左側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                lfx=midx+xpt
                lfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # the line from last end of dedendum point to the recent
        # end of dedendum point
        # lxd 為齒根圓上的左側 x 座標, lyd 則為 y 座標
        # 下列為齒根圓上用來近似圓弧的直線
        create_line((lxd),(lyd),(midx+xd),(midy-yd),fill=顏色)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(ang2-alpha)
            ypt=r*cos(ang2-alpha)
            xd=rd*sin(ang2)
            yd=rd*cos(ang2)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由右側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                rfx=midx+xpt
                rfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # lfx 為齒頂圓上的左側 x 座標, lfy 則為 y 座標
        # 下列為齒頂圓上用來近似圓弧的直線
        create_line(lfx,lfy,rfx,rfy,fill=顏色)

gear(400,400,300,41,"blue")
&lt;/script&gt;
&lt;canvas id="plotarea" width="800" height="800"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
</t>
<t tx="2015.20150512103704.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def spur1(self,  N=20, N1=10, N2=30, N3=10, N4=20, N5=30, N6=30,M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
    
&lt;form method=POST action=spuraction1&gt;

齒數1:&lt;input type=text name=N value='''+str(N)+'''&gt;&lt;br /&gt;
齒數2:&lt;input type=text name=N1 value='''+str(N1)+'''&gt;&lt;br /&gt;
齒數3:&lt;input type=text name=N2 value='''+str(N2)+'''&gt;&lt;br /&gt;
齒數4:&lt;input type=text name=N3 value='''+str(N3)+'''&gt;&lt;br /&gt;
齒數5:&lt;input type=text name=N4 value='''+str(N4)+'''&gt;&lt;br /&gt;
齒數6:&lt;input type=text name=N5 value='''+str(N5)+'''&gt;&lt;br /&gt;
齒數7:&lt;input type=text name=N6 value='''+str(N6)+'''&gt;&lt;br /&gt;
模數  :&lt;input type=text name=M value='''+str(M)+'''&gt;&lt;br /&gt;
壓力角:&lt;input type=text name=P value = '''+str(P)+'''&gt;&lt;br /&gt;
&lt;input type=submit value=send&gt;
&lt;/form&gt;
&lt;br /&gt;&lt;a href="index2"&gt;index2&lt;/a&gt;&lt;br /&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring</t>
<t tx="2015.20150512103719.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def spuraction1(self, N=20, N1=10, N2=30, N3=10, N4=20, N5=30, N6=30,M=5, P=15):
    output = '''
    &lt;!doctype html&gt;&lt;html&gt;
    &lt;head&gt;
    &lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
    &lt;title&gt;2015CD Midterm&lt;/title&gt;
    &lt;/head&gt; 
    &lt;body&gt;
    '''

    output += "第1齒數為"+str(N)+"&lt;br /&gt;"
    output += "第2齒數為"+str(N1)+"&lt;br /&gt;"
    output += "第3齒數為"+str(N2)+"&lt;br /&gt;"
    output += "第4齒數為"+str(N3)+"&lt;br /&gt;"
    output += "第5齒數為"+str(N4)+"&lt;br /&gt;"
    output += "第6齒數為"+str(N5)+"&lt;br /&gt;"
    output += "第7齒數為"+str(N6)+"&lt;br /&gt;"
    output += "模數為"+str(M)+"&lt;br /&gt;"
    output += "壓力角為"+str(P)+"&lt;br /&gt;"
    output +='''&lt;br /&gt;&lt;a href="/spur"&gt;spur&lt;/a&gt;(按下後再輸入)&lt;br /&gt;'''
    output +='''&lt;br /&gt;&lt;a href="index2"&gt;index2&lt;/a&gt;&lt;br /&gt;
    &lt;/body&gt;
    &lt;/html&gt;
    '''
    
    return output
    
    </t>
<t tx="2015.20150512103843.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def drawspur1(self, N=20, N1=10, N2=30, N3=10, N4=20, N5=30, N6=30,M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;/head&gt;
&lt;body&gt;
    
&lt;form method=POST action=drawspuraction1&gt;
齒數1:&lt;input type=text name=N value='''+str(N)+'''&gt;&lt;br /&gt;
齒數2:&lt;input type=text name=N1 value='''+str(N1)+'''&gt;&lt;br /&gt;
齒數3:&lt;input type=text name=N2 value='''+str(N2)+'''&gt;&lt;br /&gt;
齒數4:&lt;input type=text name=N3 value='''+str(N3)+'''&gt;&lt;br /&gt;
齒數5:&lt;input type=text name=N4 value='''+str(N4)+'''&gt;&lt;br /&gt;
齒數6:&lt;input type=text name=N5 value='''+str(N5)+'''&gt;&lt;br /&gt;
齒數7:&lt;input type=text name=N6 value='''+str(N6)+'''&gt;&lt;br /&gt;
模數  :&lt;input type=text name=M value='''+str(M)+'''&gt;&lt;br /&gt;
壓力角:&lt;input type=text name=P value = '''+str(P)+'''&gt;&lt;br /&gt;
&lt;input type=submit value=畫出正齒輪輪廓&gt;
&lt;/form&gt;
&lt;br /&gt;&lt;a href="index2"&gt;index2&lt;/a&gt;&lt;br /&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script&gt;
window.onload=function(){
brython();
}
&lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring</t>
<t tx="2015.20150512103921.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def drawspuraction1(self, N=20, N1=10, N2=30, N3=10, N4=20, N5=30, N6=30,M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;

第1齒數:'''+str(N)+'''&lt;output name=N for=str(N)&gt;&lt;br /&gt;
第2齒數:'''+str(N1)+'''&lt;output name=N1 for=str(N1)&gt;&lt;br /&gt;
第3齒數:'''+str(N2)+'''&lt;output name=N2 for=str(N2)&gt;&lt;br /&gt;
第4齒數:'''+str(N3)+'''&lt;output name=N3 for=str(N3)&gt;&lt;br /&gt;
第5齒數:'''+str(N4)+'''&lt;output name=N4 for=str(N4)&gt;&lt;br /&gt;
第6齒數:'''+str(N5)+'''&lt;output name=N5 for=str(N5)&gt;&lt;br /&gt;
第7齒數:'''+str(N6)+'''&lt;output name=N5 for=str(N6)&gt;&lt;br /&gt;
模數:'''+str(M)+'''&lt;output name=M for=str(M)&gt;&lt;br /&gt;
壓力角:'''+str(P)+'''&lt;output name=P for=str(P)&gt;&lt;br /&gt;
齒數比:'''+str(N)+''':'''+str(N1)+''':'''+str(N2)+''':'''+str(N3)+''':'''+str(N4)+''':'''+str(N5)+''':'''+str(N6)+'''&lt;br /&gt;

&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
from math import *
# 請注意, 這裡導入位於 Lib/site-packages 目錄下的 spur.py 檔案
import spur

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

# 以下利用 spur.py 程式進行繪圖, 接下來的協同設計運算必須要配合使用者的需求進行設計運算與繪圖
# 其中並將工作分配給其他組員建立類似 spur.py 的相關零件繪圖模組
# midx, midy 為齒輪圓心座標, rp 為節圓半徑, n 為齒數, pa 為壓力角, color 為線的顏色
# Gear(midx, midy, rp, n=20, pa=20, color="black"):
# 模數決定齒的尺寸大小, 囓合齒輪組必須有相同的模數與壓力角
# 壓力角 pa 單位為角度
pa = 20
# m 為模數
m = '''+str(M)+'''
# 第1齒輪齒數
n_g1 = '''+str(N)+'''
# 第2齒輪齒數
n_g2 = '''+str(N1)+'''
# 第3齒輪齒數
n_g3 ='''+str(N2)+'''
# 第4齒輪齒數
n_g4 ='''+str(N3)+'''
# 第5齒輪齒數
n_g5 ='''+str(N4)+'''
# 第6齒輪齒數
n_g6 ='''+str(N5)+'''
# 第7齒輪齒數
n_g7 ='''+str(N6)+'''



# 計算兩齒輪的節圓半徑
rp_g1 = m*n_g1/2
rp_g2 = m*n_g2/2
rp_g3 = m*n_g3/2
rp_g4 = m*n_g4/2
rp_g5= m*n_g5/2
rp_g6= m*n_g6/2
rp_g7= m*n_g7/2

# 繪圖第1齒輪的圓心座標
x_g1 = 400
y_g1 = 400
# 第2齒輪的圓心座標, 假設排列成水平, 表示各齒輪圓心 y 座標相同
x_g2 = x_g1 + rp_g1 + rp_g2
y_g2 = y_g1
# 第3齒輪的圓心座標
x_g3 = x_g1 + rp_g1 + 2*rp_g2 + rp_g3
y_g3 = y_g1

# 第4齒輪的圓心座標
x_g4 = x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 + rp_g4
y_g4 = y_g1

# 第5齒輪的圓心座標
x_g5= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+ rp_g5
y_g5 = y_g1

# 第6齒輪的圓心座標
x_g6= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+2* rp_g5+rp_g6
y_g6= y_g1

# 第7齒輪的圓心座標
x_g7= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+2* rp_g5+2*rp_g6+rp_g7
y_g7= y_g1


# 將第1齒輪順時鐘轉 90 度
# 使用 ctx.save() 與 ctx.restore() 以確保各齒輪以相對座標進行旋轉繪圖

ctx.font = "10px Verdana";
ctx.fillText("組員:31",x_g1-20, y_g1-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g1, y_g1)
# rotate to engage
ctx.rotate(pi/2)
# put it back
ctx.translate(-x_g1, -y_g1)
spur.Spur(ctx).Gear(x_g1, y_g1, rp_g1, n_g1, pa, "blue")
ctx.restore()

# 將第2齒輪逆時鐘轉 90 度之後, 再多轉一齒, 以便與第1齒輪進行囓合

ctx.font = "10px Verdana";
ctx.fillText("組員:04",x_g2-20, y_g2-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g2, y_g2)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g2)
# put it back
ctx.translate(-x_g2, -y_g2)
spur.Spur(ctx).Gear(x_g2, y_g2, rp_g2, n_g2, pa, "black")
ctx.restore()

# 將第3齒輪逆時鐘轉 90 度之後, 再往回轉第2齒輪定位帶動轉角, 然後再逆時鐘多轉一齒, 以便與第2齒輪進行囓合

ctx.font = "10px Verdana";
ctx.fillText("組員:07",x_g3-20, y_g3-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g3, y_g3)
# rotate to engage
# pi+pi/n_g2 為第2齒輪從順時鐘轉 90 度之後, 必須配合目前的標記線所作的齒輪 2 轉動角度, 要轉換到齒輪3 的轉動角度
# 必須乘上兩齒輪齒數的比例, 若齒輪2 大, 則齒輪3 會轉動較快
# 第1個 -pi/2 為將原先垂直的第3齒輪定位線逆時鐘旋轉 90 度
# -pi/n_g3 則是第3齒與第2齒定位線重合後, 必須再逆時鐘多轉一齒的轉角, 以便進行囓合
# (pi+pi/n_g2)*n_g2/n_g3 則是第2齒原定位線為順時鐘轉動 90 度, 
# 但是第2齒輪為了與第1齒輪囓合, 已經距離定位線, 多轉了 180 度, 再加上第2齒輪的一齒角度, 因為要帶動第3齒輪定位, 
# 這個修正角度必須要再配合第2齒與第3齒的轉速比加以轉換成第3齒輪的轉角, 因此乘上 n_g2/n_g3
ctx.rotate(-pi/2-pi/n_g3+(pi+pi/n_g2)*n_g2/n_g3)
# put it back
ctx.translate(-x_g3, -y_g3)
spur.Spur(ctx).Gear(x_g3, y_g3, rp_g3, n_g3, pa, "red")
ctx.restore()

# 按照上面三個正齒輪的囓合轉角運算, 隨後的傳動齒輪轉角便可依此類推, 完成6個齒輪的囓合繪圖

#第4齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:02",x_g4-20, y_g4-10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g4, y_g4)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g4+(pi+pi/n_g3)*n_g3/n_g4-(pi+pi/n_g2)*n_g2/n_g4)
# put it back
ctx.translate(-x_g4, -y_g4)
spur.Spur(ctx).Gear(x_g4, y_g4, rp_g4, n_g4, pa, "green")
ctx.restore()

#第5齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:06",x_g5-20, y_g5+10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g5, y_g5)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g5+(pi+pi/n_g4)*n_g4/n_g5-(pi+pi/n_g3)*n_g3/n_g5+(pi+pi/n_g2)*n_g2/n_g5)
# put it back
ctx.translate(-x_g5, -y_g5)
spur.Spur(ctx).Gear(x_g5, y_g5, rp_g5, n_g5, pa, "purple")
ctx.restore()

#第6齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:05",x_g6-20, y_g6+10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g6, y_g6)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g6+(pi+pi/n_g5)*n_g5/n_g6-
(pi+pi/n_g4)*n_g4/n_g6+(pi+pi/n_g3)*n_g3/n_g6-
(pi+pi/n_g2)*n_g2/n_g6)
# put it back
ctx.translate(-x_g6, -y_g6)
spur.Spur(ctx).Gear(x_g6, y_g6, rp_g6, n_g6, pa, "blue")
ctx.restore()

#第7齒輪

ctx.font = "10px Verdana";
ctx.fillText("組員:40023107",x_g7-20, y_g7+10);

ctx.save()
# translate to the origin of second gear
ctx.translate(x_g7, y_g7)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g7+(pi+pi/n_g6)*n_g6/n_g7-
(pi+pi/n_g5)*n_g5/n_g7+(pi+pi/n_g4)*n_g4/n_g7-
(pi+pi/n_g3)*n_g3/n_g7+(pi+pi/n_g2)*n_g2/n_g7)
# put it back
ctx.translate(-x_g7, -y_g7)
spur.Spur(ctx).Gear(x_g7, y_g7, rp_g7, n_g7, pa, "Brown")
ctx.restore()

&lt;/script&gt;
&lt;canvas id="plotarea" width="3000" height="3000"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring
'''

# 第5齒輪的圓心座標
x_g5= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+ rp_g5
y_g5 = y_g1

# 第6齒輪的圓心座標
x_g6= x_g1 + rp_g1 + 2*rp_g2 + 2* rp_g3 +2* rp_g4+2* rp_g5+rp_g6
y_g6= y_g1

#第5齒輪
ctx.save()
# translate to the origin of second gear
ctx.translate(x_g5, y_g5)
# rotate to engage
ctx.rotate(-pi-pi/n_g5+(pi+pi/n_g4)*n_g4/n_g5)
# put it back
ctx.translate(-x_g5, -y_g5)
spur.Spur(ctx).Gear(x_g5, y_g5, rp_g5, n_g5, pa, "purple")
ctx.restore()

#第6齒輪
ctx.save()
# translate to the origin of second gear
ctx.translate(x_g6, y_g6)
# rotate to engage
ctx.rotate(-pi/2-pi/n_g6-pi/n_g6+(pi+pi/n_g5)*n_g5/n_g6)
# put it back
ctx.translate(-x_g6, -y_g6)
spur.Spur(ctx).Gear(x_g6, y_g6, rp_g6, n_g6, pa, "blue")
ctx.restore()
'''
</t>
<t tx="2015.20150512104601.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def spur(self,  N=20,M=5, P=15):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
    
&lt;form method=POST action=spuraction&gt;
齒數:&lt;input type=text name=N value='''+str(N)+'''&gt;&lt;br /&gt;
模數  :&lt;input type=text name=M value='''+str(M)+'''&gt;&lt;br /&gt;
壓力角:&lt;input type=text name=P value = '''+str(P)+'''&gt;&lt;br /&gt;
&lt;input type=submit value=send&gt;
&lt;/form&gt;
&lt;br /&gt;&lt;a href="index2"&gt;index2&lt;/a&gt;&lt;br /&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring</t>
<t tx="2015.20150512104712.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def spuraction(self, N=20,M=5, P=15):
    output = '''
    &lt;!doctype html&gt;&lt;html&gt;
    &lt;head&gt;
    &lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
    &lt;title&gt;2015CD Midterm&lt;/title&gt;
    &lt;/head&gt; 
    &lt;body&gt;
    '''
    output += "齒數為"+str(N)+"&lt;br /&gt;"
    output += "模數為"+str(M)+"&lt;br /&gt;"
    output += "壓力角為"+str(P)+"&lt;br /&gt;"
    output +='''&lt;br /&gt;&lt;a href="/spur1"&gt;spur1&lt;/a&gt;(按下後再輸入)&lt;br /&gt;'''
    output +='''&lt;br /&gt;&lt;a href="index2"&gt;index2&lt;/a&gt;&lt;br /&gt;
    &lt;/body&gt;
    &lt;/html&gt;
    '''
    
    return output
    
    </t>
<t tx="2015.20150512104918.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def drawspur(self,N=20, M=4, P=20,midx=400):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;/head&gt;
&lt;body&gt;
    
&lt;form method=POST action=drawspuraction&gt;
齒數:&lt;input type=text name=N value='''+str(N)+'''&gt;&lt;br /&gt;
模數  :&lt;input type=text name=M value='''+str(M)+'''&gt;&lt;br /&gt;
壓力角:&lt;input type=text name=P value = '''+str(P)+'''&gt;&lt;br /&gt;
&lt;input type=submit value=畫出正齒輪輪廓&gt;
&lt;/form&gt;
&lt;br /&gt;&lt;a href="index2"&gt;index2&lt;/a&gt;&lt;br /&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script&gt;
window.onload=function(){
brython();
}
&lt;/script&gt;
&lt;/body&gt;
&lt;/html&gt;
'''

    return outstring</t>
<t tx="2015.20150512105003.1">@cherrypy.expose
# N 為齒數, M 為模數, P 為壓力角
def drawspuraction(self,N=20, M=4, P=20,midx=400):
    outstring = '''
&lt;!DOCTYPE html&gt; 
&lt;html&gt;
&lt;head&gt;
&lt;meta http-equiv="content-type" content="text/html;charset=utf-8"&gt;
&lt;!-- 載入 brython.js --&gt;
&lt;script type="text/javascript" src="/static/Brython3.1.1-20150328-091302/brython.js"&gt;&lt;/script&gt;
&lt;script src="/static/Cango2D.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;script src="/static/gearUtils-04.js" type="text/javascript"&gt;&lt;/script&gt;
&lt;/head&gt;
&lt;!-- 啟動 brython() --&gt;
&lt;body onload="brython()"&gt;
&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
from math import *

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

def create_line(x1, y1, x2, y2, width=3, fill="red"):
	ctx.beginPath()
	ctx.lineWidth = width
	ctx.moveTo(x1, y1)
	ctx.lineTo(x2, y2)
	ctx.strokeStyle = fill
	ctx.stroke()
# 導入數學函式後, 圓周率為 pi
# deg 為角度轉為徑度的轉換因子
deg = pi/180.
#
# 以下分別為正齒輪繪圖與主 tkinter 畫布繪圖
#
# 定義一個繪正齒輪的繪圖函式
# midx 為齒輪圓心 x 座標
# midy 為齒輪圓心 y 座標
# rp 為節圓半徑
#n 為齒數

def gear(midx, midy, n,m,p,顏色):
    
    # 將角度轉換因子設為全域變數
    global deg
    # 齒輪漸開線分成 15 線段繪製
    imax = 15
    # 在輸入的畫布上繪製直線, 由圓心到節圓 y 軸頂點畫一直線
    rp=m*n/2*2
    create_line(midx, midy, midx, midy-rp)
    # 畫出 rp 圓, 畫圓函式尚未定義
    #create_oval(midx-rp, midy-rp, midx+rp, midy+rp, width=2)
    # a 為模數 (代表公制中齒的大小), 模數為節圓直徑(稱為節徑)除以齒數
    # 模數也就是齒冠大小
    a=2*rp/n
    # d 為齒根大小, 為模數的 1.157 或 1.25倍, 這裡採 1.25 倍
    d=2.5*rp/n
    # ra 為齒輪的外圍半徑
    ra1=rp+a
    print("ra1:", ra1)
    # 畫出 ra 圓, 畫圓函式尚未定義
    #create_oval(midx-ra, midy-ra, midx+ra, midy+ra, width=1)
    # rb 則為齒輪的基圓半徑
    # 基圓為漸開線長齒之基準圓
    rb=rp*cos(p*deg)
    print("rp:", rp)
    print("rb:", rb)
    # 畫出 rb 圓 (基圓), 畫圓函式尚未定義
    #create_oval(midx-rb, midy-rb, midx+rb, midy+rb, width=1)
    # rd 為齒根圓半徑
    rd=rp-d
    # 當 rd 大於 rb 時
    print("rd:", rd)
    # 畫出 rd 圓 (齒根圓), 畫圓函式尚未定義
    #create_oval(midx-rd, midy-rd, midx+rd, midy+rd, width=1)
    # dr 則為基圓到齒頂圓半徑分成 imax 段後的每段半徑增量大小
    # 將圓弧分成 imax 段來繪製漸開線
    dr=(ra1-rb)/imax
    # tan(20*deg)-20*deg 為漸開線函數
    sigma=pi/(2*n)+tan(20*deg)-20*deg
    for j in range(n):
        ang=-2.*j*pi/n+sigma
        ang2=2.*j*pi/n+sigma
        lxd=midx+rd*sin(ang2-2.*pi/n)
        lyd=midy-rd*cos(ang2-2.*pi/n)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(alpha-ang)
            ypt=r*cos(alpha-ang)
            xd=rd*sin(-ang)
            yd=rd*cos(-ang)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由左側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                lfx=midx+xpt
                lfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # the line from last end of dedendum point to the recent
        # end of dedendum point
        # lxd 為齒根圓上的左側 x 座標, lyd 則為 y 座標
        # 下列為齒根圓上用來近似圓弧的直線
        create_line((lxd),(lyd),(midx+xd),(midy-yd),fill=顏色)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(ang2-alpha)
            ypt=r*cos(ang2-alpha)
            xd=rd*sin(ang2)
            yd=rd*cos(ang2)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由右側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                rfx=midx+xpt
                rfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # lfx 為齒頂圓上的左側 x 座標, lfy 則為 y 座標
        # 下列為齒頂圓上用來近似圓弧的直線
        create_line(lfx,lfy,rfx,rfy,fill=顏色)
gear(400,400,'''+str(N)+''','''+str(M)+''','''+str(P)+''',"blue")

&lt;/script&gt;
&lt;canvas id="plotarea" width="1000" height="1000"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
&lt;!-- 以下為 canvas 畫圖程式 --&gt;
&lt;script type="text/python"&gt;
# 從 browser 導入 document
from browser import document
from math import *

# 準備在 id="plotarea" 的 canvas 中繪圖
canvas = document["plotarea"]
ctx = canvas.getContext("2d")

def create_line(x1, y1, x2, y2, width=3, fill="red"):
	ctx.beginPath()
	ctx.lineWidth = width
	ctx.moveTo(x1, y1)
	ctx.lineTo(x2, y2)
	ctx.strokeStyle = fill
	ctx.stroke()
# 導入數學函式後, 圓周率為 pi
# deg 為角度轉為徑度的轉換因子
deg = pi/180.
#
# 以下分別為正齒輪繪圖與主 tkinter 畫布繪圖
#
# 定義一個繪正齒輪的繪圖函式
# midx 為齒輪圓心 x 座標
# midy 為齒輪圓心 y 座標
# rp 為節圓半徑
#n 為齒數

def gear(midx, midy, t,m,p,顏色):
    # 將角度轉換因子設為全域變數
    global deg
    # 齒輪漸開線分成 15 線段繪製
    imax = 15
    # 在輸入的畫布上繪製直線, 由圓心到節圓 y 軸頂點畫一直線
    rp=m*t/2
    t=(rp*2/m)*0.5
    midx=400+3*rp
    create_line(midx, midy, midx, midy-rp)
    # 畫出 rp 圓, 畫圓函式尚未定義
    #create_oval(midx-rp, midy-rp, midx+rp, midy+rp, width=2)
    # a 為模數 (代表公制中齒的大小), 模數為節圓直徑(稱為節徑)除以齒數
    # 模數也就是齒冠大小
    a=2*rp/t
    # d 為齒根大小, 為模數的 1.157 或 1.25倍, 這裡採 1.25 倍
    d=2.5*rp/t
    # ra 為齒輪的外圍半徑
    ra=rp+a
    print("ra:", ra)
    # 畫出 ra 圓, 畫圓函式尚未定義
    #create_oval(midx-ra, midy-ra, midx+ra, midy+ra, width=1)
    # rb 則為齒輪的基圓半徑
    # 基圓為漸開線長齒之基準圓
    rb=rp*cos(p*deg)
    print("rp:", rp)
    print("rb:", rb)
    # 畫出 rb 圓 (基圓), 畫圓函式尚未定義
    #create_oval(midx-rb, midy-rb, midx+rb, midy+rb, width=1)
    # rd 為齒根圓半徑
    rd=rp-d
    # 當 rd 大於 rb 時
    print("rd:", rd)
    # 畫出 rd 圓 (齒根圓), 畫圓函式尚未定義
    #create_oval(midx-rd, midy-rd, midx+rd, midy+rd, width=1)
    # dr 則為基圓到齒頂圓半徑分成 imax 段後的每段半徑增量大小
    # 將圓弧分成 imax 段來繪製漸開線
    dr=(ra-rb)/imax
    # tan(20*deg)-20*deg 為漸開線函數
    sigma=pi/(2*t)+tan(20*deg)-20*deg
    for j in range(t):
        ang=-2.*j*pi/t+sigma
        ang2=2.*j*pi/t+sigma
        lxd=midx+rd*sin(ang2-2.*pi/t)
        lyd=midy-rd*cos(ang2-2.*pi/t)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(alpha-ang)
            ypt=r*cos(alpha-ang)
            xd=rd*sin(-ang)
            yd=rd*cos(-ang)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由左側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                lfx=midx+xpt
                lfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # the line from last end of dedendum point to the recent
        # end of dedendum point
        # lxd 為齒根圓上的左側 x 座標, lyd 則為 y 座標
        # 下列為齒根圓上用來近似圓弧的直線
        create_line((lxd),(lyd),(midx+xd),(midy-yd),fill=顏色)
        #for(i=0;i&lt;=imax;i++):
        for i in range(imax+1):
            r=rb+i*dr
            theta=sqrt((r*r)/(rb*rb)-1.)
            alpha=theta-atan(theta)
            xpt=r*sin(ang2-alpha)
            ypt=r*cos(ang2-alpha)
            xd=rd*sin(ang2)
            yd=rd*cos(ang2)
            # i=0 時, 繪線起點由齒根圓上的點, 作為起點
            if(i==0):
                last_x = midx+xd
                last_y = midy-yd
            # 由右側齒根圓作為起點, 除第一點 (xd,yd) 齒根圓上的起點外, 其餘的 (xpt,ypt)則為漸開線上的分段點
            create_line((midx+xpt),(midy-ypt),(last_x),(last_y),fill=顏色)
            # 最後一點, 則為齒頂圓
            if(i==imax):
                rfx=midx+xpt
                rfy=midy-ypt
            last_x = midx+xpt
            last_y = midy-ypt
        # lfx 為齒頂圓上的左側 x 座標, lfy 則為 y 座標
        # 下列為齒頂圓上用來近似圓弧的直線
        create_line(lfx,lfy,rfx,rfy,fill=顏色)
gear('''+str(midx)+''',400,'''+str(N)+''','''+str(M)+''','''+str(P)+''',"blue")

&lt;/script&gt;
&lt;canvas id="plotarea" width="1000" height="1000"&gt;&lt;/canvas&gt;
&lt;/body&gt;
&lt;/html&gt;
'''
    return outstring</t>
<t tx="2015.20150516023303.1">@cherrypy.expose
def index2(self):
    outstring = '''
 &lt;!DOCTYPE html&gt; 
 &lt;html&gt;
&lt;head&gt;
&lt;h1&gt;期中考練習&lt;/h1&gt;

&lt;p&gt;&lt;b&gt;兩顆齒輪繪圖&lt;/b&gt;&lt;/p&gt;

&lt;a href="spur"&gt;gear2&lt;/a&gt;(回傳齒數，模數，壓力角的值)&lt;br /&gt;

&lt;a href="drawspur"&gt;drawgear2&lt;/a&gt;(繪出兩顆齒輪)&lt;br /&gt;

&lt;h1&gt;cda_g2_w11練習&lt;/h1&gt;

&lt;p&gt;&lt;b&gt;七顆齒輪嚙合&lt;/b&gt;&lt;/p&gt;

&lt;a href="spur1"&gt;gear7&lt;/a&gt;(回傳齒數，模數，壓力角的值)&lt;br /&gt;

&lt;a href="drawspur1"&gt;drawgear7&lt;/a&gt;(繪出七顆齒輪嚙合)&lt;br /&gt;

'''
    return outstring

</t>
<t tx="2015.20150516024238.1"></t>
<t tx="2015.20150516030055.1"></t>
</tnodes>
</leo_file>
