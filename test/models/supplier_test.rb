# == Schema Information
#
# Table name: suppliers
#
#  id              :bigint(8)        not null, primary key
#  email           :text
#  password_digest :text
#  name            :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class SupplierTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
