class Trip < ActiveRecord::Base
  validates :user_id, :room, :num_guests, presence: true
  # validates :num_guests, numericality: { less_than_or_equal_to: room.num_guests }

  validate :does_not_exceed_capacity

  belongs_to :room

  has_one :host,
    through: :room,
    source: :host

  has_one :customer,
    class_name: 'User',
    foreign_key: :user_id

  def does_not_exceed_capacity
    unless room.num_guests >= num_guests
      errors.add(:num_guests, "Number of guests can not exceed capacity.")
    end
  end

end

# Trip.create(user_id: User.last.id, room_id: Room.first.id, status: "Approved", check_in: Date.new, check_out: Date.new, num_guests: 2)
