# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#
# Indexes
#
#  index_courses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Course < ApplicationRecord
  # Properties
  self.table_name  = 'courses'
  self.primary_key = 'id'

  # Trix
  has_rich_text :description

  # Validations
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 5 }

  # Relationships
  belongs_to :user
end
