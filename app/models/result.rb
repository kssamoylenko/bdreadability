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

class Result < ApplicationRecord
  belongs_to :learning
  belongs_to :text
end
