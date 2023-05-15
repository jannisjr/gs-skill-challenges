require 'track_list'

RSpec.describe TrackList do
  context "Add tracklists to array, then print array" do
    it "Adds a single track to the array, prints the array" do
      tracklist = TrackList.new
      tracklist.track("walk the line")
      expect(tracklist.print).to eq ["walk the line"]
    end
  end
end