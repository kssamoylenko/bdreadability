# == Schema Information
#
# Table name: sites
#
#  id              :integer          not null, primary key
#  name            :string
#  url             :string
#  foundation_year :integer
#  comment         :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

FactoryGirl.define do
  factory :site do
    name "MyString"
    url "MyString"
    foundation_year ""
    comment "MyText"
  end
end
