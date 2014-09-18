class Location < ActiveRecord::Base
  has_many :jobs
  has_many :schools

  before_save :populate_geometry

  def populate_geometry
    if self.geom.nil?

      geocode_address = [self.address1, self.city, self.state, self.zip, self.country].join(" ").gsub(" ","+")
      url = URI.parse("https://maps.googleapis.com/maps/api/geocode/json?address=#{geocode_address}&key=AIzaSyA-X2XBhw5YoULPzp9tUbguULexGsxiZCk")
      res = Net::HTTP.get_response(url)
      geometry = JSON.parse(res.body)["results"].first["geometry"]["location"]

      self.geom = "POINT(#{geometry["lng"]} #{geometry["lat"]} 0)"
    end
  end

  def self.map_points
    result = []
    Location.all.each do |location|
      record = { geom: location.geom, info: []}

      if !location.schools.nil?
        location.schools.each do |school|
          record[:info] << { type: "school", name: school.name, purpose: school.degree, date: "#{school.start_date.strftime("%B %Y")} - #{school.end_date.strftime("%B %Y")} #{school.date_note}" }
        end
      end


      if !location.jobs.nil?
        location.jobs.each do |job|
          record[:info] << { type: "job", name: job.company, purpose: job.title, date: "#{job.start_date.strftime("%B %Y")} - #{job.end_date.strftime("%B %Y")}" }
        end
      end

      result << record
    end
    result
  end
end
