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
FactoryBot.define do
  factory :meeting do
    user
    start_time { '2022-11-17 10:57:45' }
    end_time { '2022-11-17 10:57:45' }
  end
end
