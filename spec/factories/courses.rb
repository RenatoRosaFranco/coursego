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
FactoryBot.define do
  factory :course do
    title { Faker::Educator.course_name }
    description { Faker::TvShows::GameOfThrones.quote }
    short_description { Faker::Quote.famous_last_words }
    language { FFaker::ProgrammingLanguage.name }
    level { 'Beginner' }
    user { association :user }
  end
end
