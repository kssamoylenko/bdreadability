# == Schema Information
#
# Table name: learnings
#
#  id         :integer          not null, primary key
#  name       :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :learning do
    name "MyString"
    comment "MyText"
  end
end
