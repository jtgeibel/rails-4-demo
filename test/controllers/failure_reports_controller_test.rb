require 'test_helper'

class FailureReportsControllerTest < ActionController::TestCase
  setup do
    @failure_report = failure_reports(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:failure_reports)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create failure_report" do
    assert_difference('FailureReport.count') do
      post :create, failure_report: { author_id: @failure_report.author_id, description: @failure_report.description, failcode: @failure_report.failcode, rma: @failure_report.rma, subject: @failure_report.subject, unit_id: @failure_report.unit_id }
    end

    assert_redirected_to failure_report_path(assigns(:failure_report))
  end

  test "should show failure_report" do
    get :show, id: @failure_report
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @failure_report
    assert_response :success
  end

  test "should update failure_report" do
    patch :update, id: @failure_report, failure_report: { author_id: @failure_report.author_id, description: @failure_report.description, failcode: @failure_report.failcode, rma: @failure_report.rma, subject: @failure_report.subject, unit_id: @failure_report.unit_id }
    assert_redirected_to failure_report_path(assigns(:failure_report))
  end

  test "should destroy failure_report" do
    assert_difference('FailureReport.count', -1) do
      delete :destroy, id: @failure_report
    end

    assert_redirected_to failure_reports_path
  end
end
