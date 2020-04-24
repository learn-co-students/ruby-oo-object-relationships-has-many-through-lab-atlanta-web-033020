require 'pry'

class Patient
     
    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
    #  takes in an argument of a doctor and a date and creates a new Appointment. The Appointment should know that it belongs to the patient.
        new_apt = Appointment.new(date, self, doctor)
    end

    def appointments
        # iterates through the Appointments array and returns Appointments that belong to the patient.
        Appointment.all.select do |appt|
            appt.patient == self
        end
    end

    def doctors
    # iterates over that patient's Appointments and collects the doctor that belongs to each Appointment.
        self.appointments.map do |appt|
            appt.doctor
        end
    end

end