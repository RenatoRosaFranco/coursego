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
FactoryBot.define do
  factory :course do
    title { FFaker::Book.title }
    description { FFaker::Lorem.paragraphs(rand(1..2)).join }
  end
end
