module Api
  module V1
    class MeetingsController < Api::V1::ApiController

      def index 
        @meetings = policy_scope(Meeting.includes([:user]).all)
      end

      def create
        if current_user.user_type == 'Consumer'
          raise 'Consumer users can not create sessions (meetings)'
        end

        @meeting = current_user.meetings.create!(meeting_params)
        authorize @meeting
        render :create
      end

      def meeting_params
        params.require(:meeting).permit(:start_time, :end_time)
      end
    end
  end
end
