require "spec_helper"

describe ApplicationHelper do

  describe "#nav_link" do
    before do
      helper.stubs(:current_tab).returns("")
    end

    it "builds an li tag with an href" do
      value = helper.nav_link "Show me the money", :href => "#tasty", :tab => :bits
      value.should == %{<li class="bits"><a href="#tasty">Show me the money</a></li>}
    end

    it "adds the active class to the li if the current tab matches the class" do
      helper.stubs(:current_tab).returns(:bits)
      value = helper.nav_link "Show me the money", :href => "#tasty", :tab => :bits
      value.should == %{<li class="bits active"><a href="#tasty">Show me the money</a></li>}
    end

    it "merges in auxilary options as html opts" do
      value = helper.nav_link "Hello", :href => "#tasty", :tab => :bits, :id => "hey", :style => "myown"
      value.should == %{<li class="bits" id="hey" style="myown"><a href="#tasty">Hello</a></li>}
    end

    it "merges tab option into the CSS class" do
      value = helper.nav_link "Hello", :href => "#tasty", :tab => :bits, :class => "other classes"
      value.should == %{<li class="other classes bits"><a href="#tasty">Hello</a></li>}
    end
  end
  
end
