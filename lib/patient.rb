class Patient
  attr_accessor :name, :appointment, :doctor
  @@all = []
  def initialize(name)
    @doctor=doctor
    @appointment=appointment
    @name=name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select {|appointment| appointment.patient ==self}
  end

  def doctors
  appointments.map do |appointment|
    appointment.doctor #was getting date instead of doctor when def new_appointment arguments were reversed.
  end
  end
end
