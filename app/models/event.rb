class Event < ApplicationRecord
  validate: :events_date_overlap
  validates :title, presence: true
  
  def eventrange
  	start_date..end_date
  end

  private

  def events_date_overlap
  	sql = ":end_date >= start_date and end_date >= :start_date"
  	overlap = Event.where(sql, start_date: t.start_date, end_date: t.end_date).exists?
  	errors.add(:event_date_overlap) if overlap
  end
end
