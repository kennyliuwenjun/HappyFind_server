# == Schema Information
#
# Table name: orders
#
#  id             :bigint(8)        not null, primary key
#  service_id     :integer
#  date           :date
#  hours          :float
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  user_name      :text
#  user_email     :text
#  user_phone     :text
#  user_address   :text
#  payment_status :integer
#  mail_cust      :boolean
#  mail_supp      :boolean
#

require 'test_helper'

class OrderTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
