# == Schema Information
#
# Table name: courses
#
#  id                :integer          not null, primary key
#  description       :text
#  language          :string           default("English"), not null
#  level             :string           default(NULL), not null
#  price             :integer          default(0), not null
#  short_description :text
#  slug              :string
#  title             :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  user_id           :integer
#
# Indexes
#
#  index_courses_on_slug     (slug) UNIQUE
#  index_courses_on_user_id  (user_id)
#
# Foreign Keys
#
#  user_id  (user_id => users.id)
#
class Course < ApplicationRecord
  extend FriendlyId
  friendly_id :title, use: [:slugged]

  # Properties
  self.table_name  = 'courses'
  self.primary_key = 'id'

  # Enum
  enum level: %i[Beginner Intermediate Advanced Expert]

  # Trix
  has_rich_text :description

  # Validations
  validates :title, :short_description, :language, :price, :level, presence: true
  validates :description, presence: true, length: { minimum: 5 }

  # Relationships
  belongs_to :user
end
