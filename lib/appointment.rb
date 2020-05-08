class Appointment
  attr_reader :date, :patient, :doctor
  @all = []

  class << self
    attr_reader :all
  end

  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    self.class.all << self
  end
end
