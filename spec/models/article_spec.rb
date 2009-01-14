require File.join( File.dirname(__FILE__), '..', "spec_helper" )

describe Article do
  before(:all) do
    @article = mock(:article)
    @article = [@article]
  end

  describe Article do
		it "should create a new article" do
			a = Article.new
			a.title = "test"
			a.content = "test of content"
			a.should be_valid
	end
end


end
