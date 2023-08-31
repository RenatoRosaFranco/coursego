# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  description :text
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Course < ApplicationRecord

  # Properties
  self.table_name  = 'courses'
  self.primary_key = 'id'
end
