class ClassBasePlainTextFormatter
  def output_report(context)
    output = ""
    output << "***** #{context.title} *****\n"
    output << context.text.join("\n")
    output
  end
end
