class CasesController < ApplicationController
    def index
        # if current_user.role == "lawyer"
        # else 
        #     redirect_to root_path
        #  end
         @case = Case.all
        
    end

    def show
       
         @case = Case.find(params[:id])
        end

        def profile
       
          @case = Case.find(params[:id])
         end

      def new
        @case = Case.new
        if current_user.role == "client"
        else 
        redirect_to root_path
        end
    end
     
    

      def edit 
        @case = Case.find(params[:id])
        if current_user.role == "client"
        else 
        redirect_to root_path
        end
        end
      
    def create
      

      puts params
       ca = Case.new(case_params)
       ca.user_id = current_user.id
        ca.save
        redirect_to cases_path
        
        end

    def update
        puts params
        @case = Case.find(params[:id])
        @case.update(case_params)
            
        redirect_to cases_path
        
        if current_user.role == "client"
        else 
        redirect_to root_path
        end
      end

      def accept
        @case = Case.find(params[:id])
        @case.update_attribute(:lawyer, current_user.id)
        @case.update_attribute( :status, true)
        redirect_to cases_path
      end

def destroy
    @case = Case.find(params[:id])
    @case.destroy
   
    redirect_to cases_path
  end

    private
  def case_params
    params.require(:case).permit(:subject, :detail, :opposing_lawyer)
  end

end