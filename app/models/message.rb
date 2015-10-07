class Message < ActiveRecord::Base

	validates :content, presence: true, length: { maximum: 500 }
	validates :sender_id, presence: true
	validates :recipient_id, presence: true

	belongs_to :recipient, class_name: "User", foreign_key: "recipient_id"
	belongs_to :sender, class_name: "User", foreign_key: "sender_id"
	scope :unread, -> { where read: false }

	enum activities: {:"Beach" => 0, :"Bike Ride" => 1, :"Coffee" => 2, :"Club" => 3, :"Couple's Date" => 4, :"Dinner" => 5, :"Drinks" => 6, :"Gym" => 7, :"Kid's Play Date" => 8, :"Lunch" => 9, :"Travel" => 10, :"Other" => 11}

	enum times: {:"Now" => 0, :"1:00 am" => 1, :"2:00 am" => 2, :"3:00 am" => 3, :"4:00 am"  => 4, :"5:00 am" => 5, :"6:00 am" => 6, :"7:00 am" => 7, :"8:00 am" => 8, :"9:00 am" => 9, :"10:00 am" => 10, :"11:00 am" => 11, :"Noon" => 12, :"1:00 pm" => 13, :"2:00 pm" => 14, :"3:00 pm" => 15, :"4:00 pm" => 16, :"5:00 pm" => 17, :"6:00 pm" => 18, :"7:00 pm" => 19, :"8:00 pm" => 20, :"9:00 pm" => 21, :"10:00 pm" => 22, :"11:00 pm" => 23, :"Midnight" => 24}
end
