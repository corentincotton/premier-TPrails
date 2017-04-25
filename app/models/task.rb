class Task < ApplicationRecord
  belongs_to :author

scope :depassed,  -> {where("date_due < ?", DateTime.now)}
scope :status_false,  -> {where(status: false)}
scope :current,  -> {where("date_due > ?", DateTime.now)}
scope :date_due_order_desc,  -> {order('date_due DESC')}

end
