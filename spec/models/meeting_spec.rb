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
require 'rails_helper'

RSpec.describe Meeting, type: :model do
  subject { build :meeting }

  describe 'validations' do
    it { is_expected.to validate_presence_of(:start_time) }
    it { is_expected.to validate_presence_of(:end_time) }
  end

  describe 'associations' do
    it { should belong_to(:user) }
  end
end
