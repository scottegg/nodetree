class Factory < ActiveRecord::Base
	validates :name, :lower_limit, :upper_limit, :node_quantity, presence: true
	validates :lower_limit, :upper_limit, :node_quantity, numericality: { only_integer: true, greater_than: 0 }
	validates :node_quantity, numericality: { less_than_or_equal_to: 15 }
	validates :upper_limit, numericality: { greater_than: :lower_limit }

  def number
    random_list_counter = 0
    while random_list_counter < node_quantity
      random_number = rand(lower_limit..upper_limit)
      random_list.push(random_number)
      random_list_counter += 1
    end
    return random_list
  end
  
end
