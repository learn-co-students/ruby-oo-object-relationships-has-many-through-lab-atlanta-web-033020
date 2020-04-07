require 'pry'


class Doctor

    attr_reader :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(patient, date)
        #  takes in a an instance of the Patient class and a date, and creates a new Appointment. That Appointment should know that it belongs to the doctor
        new_apt = Appointment.new(date, patient, self)
    end

    def appointments
    # iterates through all Appointments and finds those belonging to this doctor.
        Appointment.all.select do |appt|
            appt.doctor == self
        end
    end
    
    def patients
        # iterates over that doctor's Appointments and collects the patient that belongs to each Appointments.
        self.appointments.map do |appt|
            appt.patient
        end
    end
end