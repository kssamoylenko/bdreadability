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

class Text < ApplicationRecord
  extend Enumerize
  enumerize :level, in: %i[1_basic 2_middle 3_hard]
  belongs_to :site
  has_many :results, dependent: :destroy
end
