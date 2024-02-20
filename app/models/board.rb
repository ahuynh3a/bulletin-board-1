# == Schema Information
#
# Table name: boards
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Board < ApplicationRecord
  
  def post
   the_id = self.id
    matching_records = Post.where(board_id => the_id)
    return matching_records
  end 
end
