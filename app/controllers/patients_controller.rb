class PatientsController < ApplicationController

    def show
        @patient = Patient.find(params[:id])

        # @patient.appointments.first.appointment_datetime
        # @patient.appointments.first.doctor.name
    end

    def index
        @patients = Patient.all

        # @patients.first.name
        # @patients.first.appointments.count
    end

    
end
