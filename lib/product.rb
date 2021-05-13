class Product
  # (1)@name、@priceをクラスの外から参照可能にする
  # (3)attr_readerに@idを追加
  attr_reader :id, :name, :price
  # (1)クラス変数を定義
  @@count = 30
  def initialize(product_params)
    # (2)インスタンスを生成するごとにプラス1
    @id = @@count += 1
    @name = product_params[:name]
    @price = product_params[:price]
  end
end  