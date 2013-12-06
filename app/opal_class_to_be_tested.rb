# Nominal Opal class to show Opal and Javascript classes tested side by side
# via opal-rspec.  It matches the interface of the js class being tested
class OpalClassToBeTested
  attr_reader :full_name
  def initialize(first_name, last_name)
    @full_name = "#{first_name} #{last_name}"
  end

  def year_born_if_this_old(age)
    Date.today.year - age
  end
end
