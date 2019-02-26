# == Schema Information
#
# Table name: cat_rental_requests
#
#  id         :bigint(8)        not null, primary key
#  cat_id     :integer          not null
#  start_date :date             not null
#  end_date   :date             not null
#  status     :integer          default(0), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class CatRentalRequest < ApplicationRecord
    validates :status, presence: true, inclusion: { in: %w(APPROVED DENIED),
    message: "%{value} is not a valid status" }
    validates :cat_id, presence: true 
    validates :start_date, presence: true 
    validates :end_date, presence: true     

    belongs_to :cat,
        class_name: :Cat,
        foreign_key: :cat_id 
    
    has_many :cats, class_name: "Cat", foreign_key: "cat_id"

    
end

