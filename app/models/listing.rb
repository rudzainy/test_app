class Listing < ActiveRecord::Base
  mount_uploaders :photos, PhotosUploader
  belongs_to :user
  has_many :reservations

  def mine?(user)
    if user.nil?
      return false
    else
      return self.user_id == user.id
    end
  end
end
