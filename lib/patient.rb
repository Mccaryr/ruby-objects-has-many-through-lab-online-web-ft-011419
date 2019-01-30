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

  def new_appointment(doctor, date)
    Appointment.new(self, date, doctor)
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
