require File.dirname(__FILE__) + '/../../../spec_helper'
require 'set'
require File.dirname(__FILE__) + '/../shared/classify'

describe "SortedSet#classify" do
  it_behaves_like :set_classify, SortedSet
  
  it "yields each Object in sorted order" do
    res = []
    set = SortedSet["one", "two", "three", "four"]
    set.classify { |x| res << x }
    res.should == ["four", "one", "three", "two"]

    res = []
    set = SortedSet[4, 5, 1, 2]
    set.classify { |x| res << x }
    res.should == [1, 2, 4, 5]
  end
end
