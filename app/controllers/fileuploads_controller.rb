require "date"
class FileuploadsController < ApplicationController
  def index
    @message = 'Completed'
  end

  def create
    dt = DateTime.now
    dt = dt.strftime("%Y%m%d%H%M%S")
    uploaded_file = fileupload_param[:file]
    name = uploaded_file.original_filename + dt
    File.open("var/log/#{name}", 'wb') { |f|
      f.write(uploaded_file.read)
    }

    redirect_to action: 'new'

  end

  def new
  end

  private

  def fileupload_param
    params.require(:fileupload).permit(:file)
  end
end
