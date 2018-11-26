class Doctor
    attr_accessor :name, :patient, :date
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end


#need both #new_appointment and #appointments codes for Doctor #new_appointment, #appointments; AND  Appointment .all, #patient, #doctor tests to pass.
#why do these two methods affect the Appointment class tests??

    def new_appointment(patient, date)
        Appointment.new(patient, self, date)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
        end
    end

    def patients
        appointments.map do |appointment|
            appointment.patient
        end
    end





end
