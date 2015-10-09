module ApplicationHelper
  def fix_url(str)
    str.starts_with?("http://") ? str : "http://#{str}"
  end

  def time_format(time)
    time.strftime("%F %H:%M")
  end
end
