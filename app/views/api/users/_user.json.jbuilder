columns = %i(id login_name long_name url role icon_title)
columns << :mentor_memo if admin_or_mentor_login?
json.(user, *columns)
json.avatar_url user.avatar_url
json.daimyo user.daimyo?
json.unposted_in_two_weeks user.completed_at >= 2.weeks.ago.end_of_day if user.respond_to?(:completed_at)
