class TestStallsController < ApplicationController
  before_action :set_test_stall, only: [:show, :edit, :update, :destroy]

  def sync
    uuid = params[:uuid]
    status = params[:status]

    p uuid
    p status
    p "~~~~~~~~~~~~~~"
    render json: nil
  end


  # GET /test_stalls
  # GET /test_stalls.json
  def index
    @test_stalls = TestStall.all
  end

  # GET /test_stalls/1
  # GET /test_stalls/1.json
  def show
  end

  # GET /test_stalls/new
  def new
    @test_stall = TestStall.new
  end

  # GET /test_stalls/1/edit
  def edit
  end

  # POST /test_stalls
  # POST /test_stalls.json
  def create
    @test_stall = TestStall.new(test_stall_params)

    respond_to do |format|
      if @test_stall.save
        format.html { redirect_to @test_stall, notice: 'Test stall was successfully created.' }
        format.json { render :show, status: :created, location: @test_stall }
      else
        format.html { render :new }
        format.json { render json: @test_stall.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_stalls/1
  # PATCH/PUT /test_stalls/1.json
  def update
    respond_to do |format|
      if @test_stall.update(test_stall_params)
        format.html { redirect_to @test_stall, notice: 'Test stall was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_stall }
      else
        format.html { render :edit }
        format.json { render json: @test_stall.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_stalls/1
  # DELETE /test_stalls/1.json
  def destroy
    @test_stall.destroy
    respond_to do |format|
      format.html { redirect_to test_stalls_url, notice: 'Test stall was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_stall
      @test_stall = TestStall.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_stall_params
      params.require(:test_stall).permit(:name, :uuid, :status)
    end
end
