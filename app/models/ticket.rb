class Ticket < ApplicationRecord
  validates :first_name, :last_name, :middle_name, :passport, presence: true
  belongs_to :train
  belongs_to :user
  belongs_to :begin_station, class_name: "RailwayStation", foreign_key: :begin_station_id
  belongs_to :end_station, class_name: "RailwayStation", foreign_key: :end_station_id
  after_create :send_info
  before_destroy :send_notification

  private

  def send_info
    TicketsMailer.buy_ticket(self.user, self).deliver_now
  end

  def send_notification
    TicketsMailer.destroy_ticket(self.user, self).deliver_now
  end
end
