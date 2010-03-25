require "spec"
require "cleaner"
include Cleaner

describe "Remove unnecessary whitespaces" do

  it "leave clean text untouched" do
    text ="already clean text."
   clean(text).should == text
  end

  it "removed dup new line" do
    text = "first line.\n\nThe next"
    should = "first line.\nThe next"
    clean(text).should == should
  end
  it "removed unnecessary new line" do
    text = " this should\nbe one line"
    should = " this should be one line"
    clean(text).should == should
  end
  it "removed unnecessary new lines" do
    text = " this should\n\nbe one line"
    should = " this should be one line"
    clean(text).should == should
  end
  it "removed unnecessary new lines and whitespaces" do
    text = " this should\n \nbe one line"
    should = " this should be one line"
    clean(text).should == should
  end
  it "removed unnecessary new lines and whitespaces" do
    text = " this should \n \n be one line"
    should = " this should be one line"
    clean(text).should == should
  end
  it "removes repeated  text" do
    text = " this should appear once this should appear once."
    should = " this should appear once."
    clean(text).should == should
  end
end