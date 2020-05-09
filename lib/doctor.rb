class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all.select do |time|
      time.doctor == self
    end
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    appointments.collect do |patient|
      patient.patient
    end
  end
end