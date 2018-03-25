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

class Learning < ApplicationRecord
  has_many :results, dependent: :destroy
  accepts_nested_attributes_for :results
end
