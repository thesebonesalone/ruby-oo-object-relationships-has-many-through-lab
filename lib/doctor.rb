class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name = "Joe Schmoe")
        @name = name
        @@all << self
    end
    def self.all
        @@all
    end
    def appointments
        Appointment.all.select { |v| v.doctor == self}
    end
    def new_appointment(patient, date)
        Appointment.new(date, patient, self)
    end
    def patients
        self.appointments.map { |v| v.patient }
    end



end
