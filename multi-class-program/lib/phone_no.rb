class PhoneNo
  def initialize
    @phone_no = []
    @entries = []
  end

  def entry(entry)
    @entries << entry
  end
  def phone_no
    @entries.each do |entry|
      /[0-9]{11}/ =~ entry
      @phone_no << $~[0] if $~ != nil
    end
    # stores a list of phone numbers
  end
  def phone_no_print
    @phone_no
    # prints a list of phone numbers
  end
end