class Patient
    attr_accessor :name, :appointment
    @@all = []

    def initialize (name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

#from here to the end, need all three methods for the #new_appointment, #appointments, and #doctors tests to pass...why??

    def new_appointment (doctor, date)
        Appointment.new(self, doctor, date)
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
        end
    end

    def doctors
        appointments.map do |appointment|
            appointment.doctor
        end
    end

end
