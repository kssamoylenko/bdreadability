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

require 'rails_helper'

RSpec.describe Text, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
