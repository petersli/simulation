class ApplicationController < ActionController::Base

  def get_mixpanel_traffic_data
    params = {
      type: 'general',
      event: 'visit',
      from_date: '2020-04-15',
      to_date: '2020-04-20',
      name: 'city',
      unit: 'month',
    }
    data = HTTParty.get('https://18ad81beba0bbcf68160d7226b1879ee@mixpanel.com/api/2.0/events/properties/', query: params).body
    data
  end

end
