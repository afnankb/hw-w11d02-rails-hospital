class DoctorsController < ApplicationController

    def index

        @doctors = Doctor.all 

    end
    

    def show
        @doctor =  Doctor.find(params[:id])

      end

      def create
        @doctor = Doctor.new(doctor_paramse)
         @doctor.save
         
       end 
       
       def new
       @doctor = Doctor.new  
       end 


       def edit
        @doctor = Doctor.find(params[:id])
      end



      def update
        doctor = Doctor.find(params[:id])
        doctor.update(params.require(:doctor).permit(:name, :family_name, :specialty, :zip_code))
          
     
      end


      def destroy
        Doctor.find(params[:id]).destroy
      end


       private 
def doctor_paramse
   params.require(:patient).permit(:name, :family_name, :specialty, :zip_code)
end

end
