require 'track_list'

RSpec.describe TrackList do
  context "Add tracklists to array, then print array" do
    it "Adds a single track to the array, prints the array" do
      tracklist = TrackList.new
      tracklist.track("walk the line")
      expect(tracklist.print).to eq ["walk the line"]
    end
    it "Return multiple tracks" do
      tracklist = TrackList.new
      tracklist.track("walk the line")
      tracklist.track("Easy Lover")
      expect(tracklist.print).to eq ["walk the line", "Easy Lover"]
    end

    it "Puts an error message if no name is added" do
      tracklist = TrackList.new
      expect { tracklist.track("") }.to raise_error "Please enter a name"
    end
  end
end