# == Schema Information
#
# Table name: meetings
#
#  id         :bigint           not null, primary key
#  user_id    :bigint           not null
#  start_time :datetime         not null
#  end_time   :datetime         not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_meetings_on_user_id  (user_id)
#
class Meeting < ApplicationRecord
  belongs_to :user

  validates :start_time, :end_time, presence: true
end
