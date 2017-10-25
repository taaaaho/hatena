ReadMe

はてなブログの記事一覧とURLを取得するバッチ
単純なスクレイピングを利用

＜必要なもの＞
・Ruby
・nokogiri

＜手順＞
1.Rubyをインストールします。
2.nokogiriをインストール
3.ソースのURL部分に自分のトップページのURLを指定します。
4.コマンドライン上で実行します。


1.Rubyのインストール
Windows：
　「RubyをWindowsでインストールする方法【初心者向け】」
　　https://techacademy.jp/magazine/7056
Mac：
　「【初心者向け】【Ruby】【シリーズ】MacでRubyを使えるように開発環境を作ってみよう！」
　　http://morei.hatenablog.jp/entry/2016/03/05/111627

2.nokogiri
 「Ruby + Nokogiriでスクレイピング」
 　　https://qiita.com/kumamonmaster/items/9bb2aadde56c956fdc9f
 　※nokogiriのインストールまで
 　※macでエラーでる場合は[sudo gem install nokogiri]ってやるとうまくいくかも。

 3.そのまんま

 4.以下コマンド実行
   ruby GetAllEntry.rb > allEntry.csv

 ちょっと出力形式いじればGoogleスプレッドシートにも貼り付けできる。
 （コメントアウトしてる出力方法の方を外して、スプレッドシートに貼り付ける。）
 　※データ ＞ テキストを列に分割 で区切り文字に「カンマ」を指定してあげればOK
 
