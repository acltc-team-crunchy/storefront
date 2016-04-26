class Product < ActiveRecord::Base
  belongs_to :supplier


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
