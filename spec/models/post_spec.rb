require 'rails_helper'

RSpec.describe Post, type: :model do

  it 'has a message' do
    post = Post.new(text: 'Hello World!!')
    expect(post.text).to eq 'Hello World!!'
  end

  it 'has a wall ID' do
    post = Post.new(text: 'My Very Easy Method Just Speeds Up Naming Planets!', wall_id: 1)
    expect(post.wall_id).to eq 1
  end

  it 'can update a message' do
    post = Post.new(text: 'Hello World!!')
    expect(post.text).to eq 'Hello World!!'
    post = Post.new(text: 'Hello New World!!')
    expect(post.text).to eq 'Hello New World!!'
  end
end

# it 'user can update post'
# it 'user can only update within 10 minutes'
# it 'user can only update their own posts'
# it 'user can delete post'
# it 'user can only delete their own posts'
# it 'displays a new post'
# it 'posts are displayed in reverse order'
