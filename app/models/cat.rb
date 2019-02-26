# == Schema Information
#
# Table name: cats
#
#  id          :bigint(8)        not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Cat < ApplicationRecord
    validates :birth_date, presence: true
    validates :color, presence: true, inclusion: { in: %w(red black white gray orange yellow purple),
    message: "%{value} is not a valid color" }
    validates :name, presence: true
    validates :sex, presence: true, inclusion: { in: %w(M F),
    message: "%{value} is not a valid gender" }
    validates :description, presence: true
    
    has_many :cat_rental_requests,
        class_name: :Cat,
        foreign_key: :cat_id,
        dependent: :destroy

    def age
        ((Time.zone.now - birth_date.to_time) / 1.year.seconds).floor
    end

end
