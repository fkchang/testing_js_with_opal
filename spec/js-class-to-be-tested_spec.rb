# This shows how to wrap a javascript object and test attributes and functions
# via opal-require
require 'js-class-to-be-tested'
require 'date'
require 'opal'
require 'opal-jquery'


describe "JsClassToBeTested" do
  let(:user) { Native(`new JsClassToBeTested('bill', 'thompson')`)}

  it 'should be able to test an attribute' do
    user.fullName.should == "bill thompson"
  end

  it 'should be able to test a function' do
    user.yearBornIfThisOld(10).should == Date.today.year - 10
  end

end
