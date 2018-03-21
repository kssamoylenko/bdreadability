# == Schema Information
#
# Table name: results
#
#  id          :integer          not null, primary key
#  learning_id :integer
#  text_id     :integer
#  level       :string
#  m1          :decimal(, )
#  m2          :decimal(, )
#  m3          :decimal(, )
#  m4          :decimal(, )
#  m5          :decimal(, )
#  m6          :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

FactoryGirl.define do
  factory :result do
    learning nil
    text nil
    level "MyString"
    m1 "9.99"
    m2 "9.99"
    m3 "9.99"
    m4 "9.99"
    m5 "9.99"
    m6 "9.99"
  end
end
