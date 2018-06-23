class AugmentationsController < ApplicationController

  def index
    @augmentation = Augmentation.all
  end


 def show
  @augmentation = Augmentation.find(params[:id])
  @references = @augmentation.references.split("\r\n")
  @configurations = @augmentation.configuration.split("\r\n")
  @conceptualModel = @augmentation.conceptualModel.split("\r\n")
  @designDiagrams = @augmentation.designDiagram.split("\r\n")
 
   @screenshots = @augmentation.screenshot.split("\r\n")
rescue ActiveRecord::RecordNotFound  
 redirect_to :controller => "augmentations", :action => "index"
 return
    
  end


def edit
     @augmentation = Augmentation.find(params[:id])
     rescue ActiveRecord::RecordNotFound  
 redirect_to :controller => "augmentations", :action => "index"
 return
  end

  def update
     @augmentation = Augmentation.find(params[:id])
     @augmentation.title = params[:augmentation][:title]
     @augmentation.description = params[:augmentation][:description]
     @augmentation.references = params[:augmentation][:references]
     @augmentation.conceptualModel = params[:augmentation][:conceptualModel]
     @augmentation.configuration = params[:augmentation][:configuration]
     @augmentation.designDiagram = params[:augmentation][:designDiagram]
    @augmentation.screenshot = params[:augmentation][:screenshot]
     @augmentation.save
     redirect_to @augmentation
          rescue ActiveRecord::RecordNotFound  
 redirect_to :controller => "augmentations", :action => "index"
 return
    end  
  
def new 
end

  def create

  @augmentation = Augmentation.new(params.require(:augmentation).permit(:title, :description, :references, :conceptualModel, :configuration, :designDiagram, :screenshot))
 
  @augmentation.save
  redirect_to @augmentation
end

def delete
  @augmentation = Augmentation.find(params[:id])
   @augmentation.delete
 redirect_to :controller => "augmentations", :action => "index"
rescue ActiveRecord::RecordNotFound  
 redirect_to :controller => "augmentations", :action => "index"
 return
  
  end
  
  
  
end
