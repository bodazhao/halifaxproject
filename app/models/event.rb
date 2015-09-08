class Event < ActiveRecord::Base
  belongs_to :user
  #default_scope -> { where('date_start >= ?', Date.current ).order(date_start: :asc) } # Proc(procedure) or lambda syntax
  mount_uploader :picture, PictureUploader
  
  # attr_accessor :date_start_display
  before_save  :default_date_end
  
  validates :user_id, presence: true
  validates :title,   presence: true, length: { maximum: 140 }
  validates :date_start, :time_start_hour, :time_start_minute,  presence: true
  validates :content, presence: true, length: { maximum: 1400 }
  validate  :picture_size
  
  private
    def picture_size
      if picture.size > 5.megabytes
        errors.add(:picture, "should be less than 5MB")
      end
    end
    
    def default_date_end
      if self.date_end.blank?
        self.date_end = self.date_start
      end
      if self.time_end_hour.blank?
        self.time_end_hour = self.time_start_hour
      end
      if self.time_end_minute.blank?
        self.time_end_minute = self.time_start_minute
      end
    end
    
end
