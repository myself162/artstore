# == Schema Information
#
# Table name: products
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text
#  quantity    :integer
#  created_at  :datetime
#  updated_at  :datetime
#  image       :string(255)
#  price       :float            default(0.0)
#

class Product < ActiveRecord::Base

  mount_uploader :image, ImageUploader
  belongs_to :user

  validates :title, :presence => true

end
