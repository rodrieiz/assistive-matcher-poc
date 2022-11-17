json.id          meeting.id
json.start_time  meeting.start_time
json.end_time    meeting.end_time
json.user        meeting.user, partial: 'api/v1/users/info', as: :user
