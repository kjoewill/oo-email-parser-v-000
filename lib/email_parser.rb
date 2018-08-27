# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :emails

  def initialize(emails)
    @emails = emails
  end

  def parse
    mail_array = emails.split(/[ ,]/).delete_if { |e| e == ""}
    puts mail_array.inspect
  end


  private

  def comma_delimited?
    emails.include?(",")
  end

end