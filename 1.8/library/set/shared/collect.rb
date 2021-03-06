shared :set_collect_bang do |klass, cmd|
  describe "#{klass}##{cmd}" do
    before(:each) do
      @set = klass[1, 2, 3, 4, 5]
    end

    it "yields each Object in self" do
      res = []
      @set.send(cmd) { |x| res << x }
      res.sort.should == [1, 2, 3, 4, 5].sort
    end

    it "returns self" do
      @set.send(cmd) { |x| x }.should equal(@set)
    end

    it "replaces self with the return values of the block" do
      @set.send(cmd) { |x| x * 2 }
      @set.should == klass[2, 4, 6, 8, 10]
    end
  end

end