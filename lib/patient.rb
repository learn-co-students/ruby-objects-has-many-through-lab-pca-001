class Patient
  attr_reader :name
  @all = []

  class << self
    attr_reader :all
  end

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def appointments
    Appointment.all.select { |appt| appt.patient == self }
  end

  def doctors
    Doctor.all.select { |doc| doc.patients.include? self }
  end

  def new_appointment(date, doctor)
    Appointment.new(date, self, doctor)
  end
end
