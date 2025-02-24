require 'spec_helper'

describe 'albums' do
  it 'creating a new one' do
    visit albums_path
    click_link "New Album"
    fill_in "Name", :with => "First album!"
    click_button "Create Album"
    within ".flash.notice" do
      page.should have_content("Album has been created!")
    end
  end

  it 'creating a new one unsuccessfully' do
    visit albums_path
    click_link "New Album"
    click_button "Create Album"
    within ".flash.error" do
      page.should have_content("There was a problem creating the album.")
    end
  end

  describe 'viewing an existing album' do
    before do
      @album = Factory(:album, :name => "Boogie")
      @image = Factory(:image, :album => @album, :file_url => 'http://www.google.com/images/logo_sm.gif')
    end
    context 'with no plugin view defined in the params' do
      it 'should render the default view' do
        visit album_path(@album)
        within 'h2' do
          page.should have_content("Boogie")
        end
      end
    end
    context 'with basic_list_view plugin view defined in the params' do
      it 'should render the basic_list_view album show view' do
        visit album_path(@album, :plugin => 'basic_list_view')
        within 'h2' do
          page.should have_content("Boogie")
        end
        within 'h3' do
          page.should have_content("Basic List View")
        end
        page.should have_selector('.images img')
      end
    end
  end
end
