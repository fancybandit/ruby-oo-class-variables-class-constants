class Shoe
  
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS << brand
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def BRANDS.size
    brands_list = []
    brands_list += BRANDS
    brands_list.each_with_index do |brand, index|
      matches = BRANDS.select {|i| i == brand}
      matches.length > 1 ? brands_list.delete_at(index) : nil
    end
    brands_list.length
  end

end