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
  extend Enumerize
  enumerize :level, in: %i[1_basic 2_middle 3_hard]
  belongs_to :learning
  belongs_to :text
  rails_admin do
    exclude_fields :id, :learning, :level, :created_at, :updated_at
  end
end
