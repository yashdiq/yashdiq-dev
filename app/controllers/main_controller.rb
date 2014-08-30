class MainController < ApplicationController
  def index
    limit = 5
    if (params[:p].blank?)
      page = 1
    else
      page = params[:p]
    end
    
    @blogs = Blog.all
    
    start = (page.to_i*limit) - limit
    
    if (@blogs.count > (page.to_i*limit))
      @next_page = page.to_i+1
    else
      @next_page = nil
    end
    
    @query = Blog.limit(limit).offset(start)
    
    if (@query.count < 1)
      puts "Error, 404"
    end
    
#    render :text => "#{@next_page} => #{@blogs.count} > #{page.to_i*limit}"
  end
  
  def get_data
    @blogs = Blog.all
    render :text => @blogs.to_json
  end
end
