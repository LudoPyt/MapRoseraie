# == Schema Information
#
# Table name: roses
#
#  id           :bigint(8)        not null, primary key
#  name         :string
#  description  :text
#  longitude    :float
#  latitude     :float
#  family       :string
#  creationDate :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

require 'test_helper'

class RoseTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
