# == Schema Information
#
# Table name: courses
#
#  id          :integer          not null, primary key
#  description :text
#  slug        :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
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
FactoryBot.define do
  factory :course do
    title { Faker::Educator.course_name }
    description { Faker::TvShows::GameOfThrones.quote }
  end
end
