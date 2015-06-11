class ChatroomsController < ApplicationController
  before_action :set_chatroom, only: [:show, :edit, :update, :destroy]

  
  # GET /chatrooms
  # GET /chatrooms.json
  def index
  end

  # GET /chatrooms/1
  # GET /chatrooms/1.json
  def show
    @chatroom = Chatroom.find_by_id(params[:id])
    @creater = User.find( @chatroom.user_id )
  end

  # GET /chatrooms/new
  def new
    @chatroom = Chatroom.new
  end

  # GET /chatrooms/1/edit
  def edit
  end

  # POST /chatrooms
  # POST /chatrooms.json
  def create
    @chatroom = Chatroom.new(chatroom_params)
    @chatroom.user_id ||= current_user.id

    respond_to do |format|
      if @chatroom.save
        room_mem = RoomMem.new
        room_mem.user_id = current_user.id 
        room_mem.chatroom_id = @chatroom.id
        room_mem.save

        format.html { redirect_to set_tag_path(@chatroom.id) }
        format.json { render :show, status: :created, location: @chatroom }
      else
        format.html { render :new }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end
end




  # PATCH/PUT /chatrooms/1
  # PATCH/PUT /chatrooms/1.json
  def update
    respond_to do |format|
      if @chatroom.update(chatroom_params)
        format.html { redirect_to @chatroom, notice: 'Chatroom was successfully updated.' }
        format.json { render :show, status: :ok, location: @chatroom }
      else
        format.html { render :edit }
        format.json { render json: @chatroom.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chatrooms/1
  # DELETE /chatrooms/1.json
  def destroy
    @chatroom.destroy
    respond_to do |format|
      format.html { redirect_to :root, notice: 'Chatroom was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chatroom
      @chatroom = Chatroom.find(params[:id])
    end
    # Never trust parameters from the scary internet, only allow the white list through.
    def chatroom_params
      params.require(:chatroom).permit(:roomname, :roomcover, :privacy, :popularity, :memnum, :roomno, :key, :user_id, :description)
    end
end
