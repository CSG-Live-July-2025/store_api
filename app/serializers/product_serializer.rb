class ProductSerializer < ActiveModel::Serializer
  attributes :id, :title, :price, :description, :size, :supplier_id, :tax, :total

  belongs_to :supplier

  def tax
    return object.price * 0.08
  end

  def total
    return object.price + tax
  end
end
