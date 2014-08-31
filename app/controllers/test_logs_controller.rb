class TestLogsController < ApplicationController
  before_action :set_test_log, only: [:show, :edit, :update, :destroy]

  # GET /test_logs
  # GET /test_logs.json
  def index
    @test_logs = TestLog.where.not( changed_at: nil)
  end

  # GET /test_logs/1
  # GET /test_logs/1.json
  def show
  end

  # GET /test_logs/new
  def new
    @test_log = TestLog.new
  end

  # GET /test_logs/1/edit
  def edit
  end

  # POST /test_logs
  # POST /test_logs.json
  def create
    @test_log = TestLog.new(test_log_params)

    respond_to do |format|
      if @test_log.save
        format.html { redirect_to @test_log, notice: 'Test log was successfully created.' }
        format.json { render :show, status: :created, location: @test_log }
      else
        format.html { render :new }
        format.json { render json: @test_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_logs/1
  # PATCH/PUT /test_logs/1.json
  def update
    respond_to do |format|
      if @test_log.update(test_log_params)
        format.html { redirect_to @test_log, notice: 'Test log was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_log }
      else
        format.html { render :edit }
        format.json { render json: @test_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_logs/1
  # DELETE /test_logs/1.json
  def destroy
    @test_log.destroy
    respond_to do |format|
      format.html { redirect_to test_logs_url, notice: 'Test log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_log
      @test_log = TestLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_log_params
      params.require(:test_log).permit(:test_stall_id, :status, :changed_at)
    end
end
