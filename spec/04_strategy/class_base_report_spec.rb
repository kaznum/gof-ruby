require 'rspec'
require File.dirname(__FILE__) + '/../../src/04_strategy/class_base_report'

describe ClassBaseReport do
  describe "constructor" do
    before do
      @mock_formatter = double
    end
    subject { ClassBaseReport.new @mock_formatter }
    its(:title) { should == "Monthly Report" }
    its(:text) { should == ["Things are going", 'really, really well.'] }
    its(:formatter) { should be @mock_formatter}
  end

  describe "#output_report" do
    before do
      @mock_formatter = double
      @report = ClassBaseReport.new @mock_formatter
      @mock_formatter.should_receive(:output_report).with(@report)
    end

    it { expect { @report.output_report }.not_to raise_error }
  end
end
