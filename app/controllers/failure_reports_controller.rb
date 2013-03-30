class FailureReportsController < ApplicationController
  before_action :set_failure_report, only: [:show, :edit, :update, :destroy]
  before_filter :authenticate_user!

  # GET /failure_reports
  # GET /failure_reports.json
  def index
    @failure_reports = FailureReport.all
  end

  # GET /failure_reports/1
  # GET /failure_reports/1.json
  def show
  end

  # GET /failure_reports/new
  def new
    @failure_report = FailureReport.new
    @cancel_path = failure_reports_path
  end

  # GET /failure_reports/1/edit
  def edit
  end

  # POST /failure_reports
  # POST /failure_reports.json
  def create
    @failure_report = FailureReport.new(failure_report_params)
    @failure_report.author = current_user

    respond_to do |format|
      if @failure_report.save
        format.html { redirect_to @failure_report, notice: 'Failure report was successfully created.' }
        format.json { render action: 'show', status: :created, location: @failure_report }
      else
        format.html { render action: 'new' }
        format.json { render json: @failure_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /failure_reports/1
  # PATCH/PUT /failure_reports/1.json
  def update
    respond_to do |format|
      if @failure_report.update(failure_report_params)
        format.html { redirect_to @failure_report, notice: 'Failure report was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @failure_report.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /failure_reports/1
  # DELETE /failure_reports/1.json
  def destroy
    @failure_report.destroy
    respond_to do |format|
      format.html { redirect_to failure_reports_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_failure_report
      @failure_report = FailureReport.find(params[:id])
      @cancel_path = failure_report_path(@failure_report)
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def failure_report_params
      params.require(:failure_report).permit(:unit_id, :subject, :description, :rma, :failcode)
    end
end
