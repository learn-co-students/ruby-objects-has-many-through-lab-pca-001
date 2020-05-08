class Patient
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select { |visit| visit.patient == self }
  end

  def doctors
    appointments.collect(&:doctor)
  end

  def self.all
    @@all
  end
end
