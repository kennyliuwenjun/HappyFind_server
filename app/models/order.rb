class Order < ApplicationRecord
  belongs_to :service, :optional => true
end
