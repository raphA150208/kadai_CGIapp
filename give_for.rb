# データを受け取り、返却するCGIプログラムの起動
require 'cgi'
cgi = CGI.new
# データを受け取った後、HTMLの形式でレスポンスを返す
cgi.out("type" => "text/html", "charset" => "UTF-8") {
  # 情報の目印とした"goya"のデータを cgi['goya']と言う記述で取り出し、ローカル変数に代入する
  get_give_for = cgi['give_for']
  # HTMLでレスポンスを返却する
  "<html>
    <body>
      <p>自家消費でないゴーヤの情報は下記になります</p>
      <P>文字列：#{get_give_for}</p>
    </body>
  </html>"
}