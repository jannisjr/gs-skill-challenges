require 'reading_time'

RSpec.describe "reading_time" do
  it "returns 1 when given 2 words" do
    expect(reading_time("Hello world")).to eq 0.6
  end
end

RSpec.describe "reading_time" do
  it "returns 22.5 when given 75 words" do
    expect(reading_time("It's great that there is so much source code available on public repositories and file shares. No matter the coding task or problem, there is probably already a good solution available somewhere. It is also great that there are so many powerful coding tools available to help you understand, debug, and optimize your code. However, using open-source code and tools does have risks, and you can leave yourself open to malicious code execution and exploits.")).to eq 22.5
  end
end

RSpec.describe "reading_time" do
  it "returns 0 when given 0 words" do
    expect(reading_time("")).to eq 0
  end
end
