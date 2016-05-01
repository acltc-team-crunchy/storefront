class Product < ActiveRecord::Base
  has_many :orders
  belongs_to :supplier
  has_many :images


  DISCOUNT_THRESHOLD = 50
  SALES_TAX = 0.09

  def sale_message
    if price < DISCOUNT_THRESHOLD
      "Discount Item!"
    else
      "On Sale!"
    end
  end

  def tax
    price * SALES_TAX
  end

  def total
    price + tax
  end
end
