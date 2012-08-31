require 'rspec'
require File.dirname(__FILE__) + '/../../src/04_strategy/class_base_report'
require File.dirname(__FILE__) + '/../../src/04_strategy/class_base_plain_text_formatter'

describe  ClassBasePlainTextFormatter do
  describe "#output_report" do
    describe "with arbitrary context" do 
      before do
        @mock_context = double
        @mock_context.stub(:title).and_return("This is a title")
        @mock_context.stub(:text).and_return(["good morning", "hello", "bye"])
        @formatter = ClassBasePlainTextFormatter.new
      end

      subject { @formatter.output_report(@mock_context) }
      it { should match /\*\*\*\*\* This is a title \*\*\*\*\*/ }
      it { should match /^good morning$/ }
      it { should match /^hello$/ }
      it { should match /^bye$/ }
    end

    describe ClassBaseReport do # This "describe" is not correct to be here because it is composition test.
      subject { ClassBaseReport.new(ClassBasePlainTextFormatter.new).output_report }
      it { should match /\*\*\*\*\* Monthly Report \*\*\*\*\*/ }
      it { should match /^Things are going$/ }
      it { should match /^really, really well.$/ }
    end
  end

end
