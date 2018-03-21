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
  belongs_to :site
  has_many :results, dependent: :destroy
end
