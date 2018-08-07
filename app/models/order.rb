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
#

class Order < ApplicationRecord
  belongs_to :service, :optional => true
end
