require 'spec_helper'

describe Post do

  context "Demonstration of how datamapper works" do

    it 'should be created and then retrieved from the db' do

      expect(Post.count).to eq(0)

      Post.create(:title => "Blagger is Born",
                  :text => "My first post about my wonderful new blogging
                  platform.")

      expect(Post.count).to eq(1)

      post = Post.first

      expect(post.text).to eq("My first post about my wonderful new blogging
                  platform.")
      expect(post.title).to eq("Blagger is Born")

      post.destroy

      expect(Post.count).to eq(0)
    end

  end

end

