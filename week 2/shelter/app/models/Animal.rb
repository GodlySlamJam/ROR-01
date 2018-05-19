class Animal < ApplicationRecord
validates :name, presence: true
validates :age, :numericality => { :only_integer => true }
validates :spieces, presence: true
validates :num_legs, :numericality => { :only_integer => true }
validates :blurb, length: {in:1..100}

belongs_to :owner
end
