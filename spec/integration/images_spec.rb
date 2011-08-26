require 'spec_helper'

describe 'images' do
  before do
    @album = Factory(:album)
  end
  it 'creating a new one from a file upload' do
    visit album_path(@album)
    click_link "New Image"
    attach_file("File", File.expand_path('../../files/rails.png', __FILE__))
    click_button "Attach Image"
    within ".flash.notice" do
      page.should have_content("Image has been attached!")
    end
  end
end
