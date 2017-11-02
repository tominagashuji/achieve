class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.create(contact_params)
    if @contact.save
      redirect_to new_contact_path, notice: "お問い合わせありがとうございました。"
    else
      render 'new'
    end
  end
  
  private
  def contact_params
    params.require(:contact).permit(:name, :email, :content)
  end
end


## =>コントローラーでコメントアウトしているのが悪さをしているかと思ったが無関係だった。
##  def index
##  end
##    @blog = Blog.new
##    redirect_to "/blogs/new"
## =>上記は残骸です。ここまで。
##
## 課題の着手に伴い分からなかった事。
## =>コントローラー作成
## =>マイグレーションファイル作成してマイグレーションする
## =>モデル名は単数形で作成する！テーブルは複数形で作成すること。rails11参照
## =>複数形の名前で作成したモデルは
## =>history | grep model
## =>history | grep scaff
## =>history | grep controller
## =>history | grep contact
## =>history | grep rails
## =>
## =>芝田さんに質問した所、色々していた
## =>複数名のモデルを削除して
## =>rails d model contacts
## =>マイグレーションファイルを編集した。（順番をうろ覚え）
## =>単数名のモデルを作成した
## =>rails g model contact
## =>これでcreateに行くタイミングでコケなくなった
## =>
## =>モデルから引っ張ってきたデータは上記の通り単数形なので、コントローラーでハッシュ
## =>形式で変数を書く時には単数形で書かないとダメだった。
## =>



##    @contact = Contact.new(contact_params)
##    if @contact.save
#      # 新規作成画面に遷移して"問い合わせを受け付けました！"とメッセージを表示します。
#      Contact.create(name: params[:contact][:name], email: params[:contact][:email], content: params[:contact][:content])
#      redirect_to new_contact_path, notice: "問い合わせを受け付けました！"
#    else
#      # 入力フォームを再描画します。
#      render 'new'
#    end
