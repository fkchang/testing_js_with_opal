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

describe "Dom Testing" do
  it "should see DOM changes" do

    html = <<-HTML
      <div id="target-div">
        original text
      </div>
    HTML

    div = Element.parse html
    div.append_to_body

    d = Element.find("#target-div")
    d.text.should =~ /original text/
    `document.getElementById('target-div').innerText = 'js replaced text'`

    d.text.should == "js replaced text"
  end

end

describe "Async testing" do
  async "should test async" do
    puts "starting async"
    `var foo = 1`
    `foo`.should == 1
    %x| setTimeout( function()
                     { console.log('in timeout');
                       foo = 2;
                       #{run_async { `foo`.should == 2} }
                      }, 1 0 )|
  end
end
