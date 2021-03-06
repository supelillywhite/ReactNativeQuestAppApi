# == Schema Information
#
# Table name: quests
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  location    :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :quest do
    title { "MyString" }
    description { "MyText" }
    location { "MyText" }
  end
end
