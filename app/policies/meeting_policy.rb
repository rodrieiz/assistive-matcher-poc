class MeetingPolicy < ApplicationPolicy
  def create?
    user.present? && user.user_type != 'Consumer'
  end
end
