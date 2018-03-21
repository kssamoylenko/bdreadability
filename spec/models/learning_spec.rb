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

require 'rails_helper'

RSpec.describe Learning, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
