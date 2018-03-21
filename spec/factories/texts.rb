# == Schema Information
#
# Table name: texts
#
#  id         :integer          not null, primary key
#  content    :text
#  site_id    :integer
#  name       :string
#  level      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :text do
    content "MyText"
    site nil
    name "MyString"
    level "MyString"
  end
end
