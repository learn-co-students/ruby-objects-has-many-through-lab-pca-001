class Doctor
  attr_reader :name
  @all = []

  def initialize(name)
    @name = name
    self.class.all << self
  end

  def appointments
    Appointment.all.select { |appointment| appointment.doctor == self }
  end

  def new_appointment(date, patient)
    Appointment.new(date, patient, self)
  end

  def patients
    Appointment.all.map(&:patient).uniq
  end

  class << self
    attr_reader :all
  end
end
