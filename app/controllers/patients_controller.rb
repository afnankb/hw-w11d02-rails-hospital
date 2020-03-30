class PatientsController < ApplicationController

    def index

        @patients = Patient.all 

    end
    

    def show
        @patient =  Patient.find(params[:id])

      end

      def create
        @patient = Patient.new(patient_paramse)
        @patient.save
        redirect_to @patient
       end 
       
       def new
       @patient = Patient.new  
       end 


       def edit
        @patient = Patient.find(params[:id])
      end



      def update
        patient = Patient.find(params[:id])
        patient.update(params.require(:patient).permit(:first_name, :last_name, :diagnosis, :born_on))
          
        redirect_to patient
      end


      def destroy
        Patient.find(params[:id]).destroy
      end


       private 
def patient_paramse
   params.require(:patient).permit(:first_name ,:last_name , :diagnosis , :born_on)
end

end
