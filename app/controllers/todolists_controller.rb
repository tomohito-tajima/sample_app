class TodolistsController < ApplicationController
  def new
    #Viewへ渡すためのインスタンス変数を空のモデルオブジェクトを生成する。
    @list = List.new
  end
  
  # 以下を追加
  def create
    #1. データを新規登録するためのインスタンス作成
    list = List.new(list_params)
    #2. データをデータベースに保存するためのsaveメソッド実行
    list.save
    #3. トップ画面へのリダイレクト
    redirect_to '/top'
  end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end
  
end
