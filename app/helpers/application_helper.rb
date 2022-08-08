# frozen_string_literal: true

module ApplicationHelper
  def formatted_time(time)
    return unless time

    time.in_time_zone("Warsaw").strftime("%R, %d.%m.%Y")
  end
end
