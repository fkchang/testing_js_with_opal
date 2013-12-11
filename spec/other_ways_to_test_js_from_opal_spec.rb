require 'opal'
require 'opal-jquery'

describe "Dom Testing" do
  it "should see DOM changes" do
    # convenient to use heredocs to define HTML inline
    # in a very readable, close to test code context
    html = <<-HTML
      <div id="target-div">
        original text
      </div>
    HTML

    # if using opal-jquery, you can use Element.parse to create
    # DOM elements and append to the body of the DOM used the
    # registered index.html
    div = Element.parse html
    div.append_to_body

    # gran an element via opal-jquery
    d = Element.find("#target-div")
    d.text.should =~ /original text/

    # exercise your js code on the DOM object
    `document.getElementById('target-div').innerText = 'js replaced text'`

    # do your assertions
    d.text.should == "js replaced text"
  end

end

describe "Async testing" do

  async "can test async javascript" do

    puts "starting async"       # proof to myself this works
    `var foo = 1`
    # you can assert values on js
    `foo`.should == 1

    # you can call js via xstrings
    # opal is smart enough to expand the run_async line via string
    #interpolation.
    %x| setTimeout( function()
                     { console.log('in timeout');
                       foo = 2;
                       #{run_async { `foo`.should == 2} }
                      }, 10 )|
  end
end
