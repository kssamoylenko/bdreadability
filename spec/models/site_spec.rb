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

require 'rails_helper'

RSpec.describe Site, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
