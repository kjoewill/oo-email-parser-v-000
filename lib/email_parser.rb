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
    
  end


  private
  
  def parse_comma_delimited
    mail_array = emails.split(/[ ,]/) #/[\s,]/
    mail_array.collect { |e| e.strip }
  end
    
  def parse_space_delimited
    mail_array = emails.split(/[ ,]/)
    mail_array.collect { |e| e.strip }
  end

  def comma_delimited?
    emails.include?(",")
  end

end