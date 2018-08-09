class BookmarksController < ApplicationController

  def recent
    @bookmarks = Bookmark.recently_added
    render :index

  end

  def neglected
    @bookmarks = Bookmark.neglected
    render :index
  end

  def archived
    @bookmarks = Bookmark.archived
    render :index
  end

  def index
    @bookmarks = Bookmark.all
    @bookmark = Bookmark.new
    render :index
  end

  def new
    @bookmark=Bookmark.new
  end

  def create
    @bookmark=Bookmark.new(bookmark_params) 
    @bookmark.title = MetaInspector.new(bookmark.url).best_title
  
    #mass assignment
    # @bookmark.url = params[:url] # this is perfectly ok

    if @bookmark.save
      redirect_to '/bookmarks'
    else
      render :new # render a template
    end
  end
  

  def show
    # atomic operation
    Bookmark.increment_counter(:click_count, params[:id])

    #works sometimes - but not always 
    #@bookmark = Bookmark.find(params[:id])
    #@bookmark.click_count += 1
    #@bookmark.save

    redirect_to Bookmark.find(params[:id]).url
  end

  def destroy
    @bookmark = Bookmark.find( params[:id])
    if @bookmark.destroy
      redirect_to '/bookmarks'
    else  
      render :show
    end
  end

  def edit
    @bookmark = Bookmark.find( params[:id])
    render :edit
  end

  def update
    @bookmark = Bookmark.find( params[:id])
    @bookmark.url = params[:url]
    if @bookmark.save
      redirect_to "/bookmarks/#{@bookmark.id}"
    else
      render :edit
    end
  end

  def archive
    @bookmark = Bookmark.find( params[:id])
    @bookmark.toggle(:archived)
    @bookmark.save
    redirect_to "/bookmarks"
  end

  def bookmark_params
    params.require(:bookmark).permit(:url)
  end

    

end

