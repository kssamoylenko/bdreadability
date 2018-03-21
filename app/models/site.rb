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

class Site < ApplicationRecord
  has_many :texts, dependent: :destroy
end
