# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  comment    :string           not null
#  likes      :integer          default(0)
#  dislikes   :integer          default(0)
#  post_id    :integer          not null
#  user_id    :integer          not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user

end
