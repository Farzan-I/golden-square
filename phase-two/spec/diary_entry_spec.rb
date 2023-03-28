require 'diary_entry'

RSpec.describe DiaryEntry do
  it "creates a diary entry" do
    diary_entry = DiaryEntry.new("Story of my life", "Auto-bio-comedy")
    expect(diary_entry.title).to eq "Story of my life"
    expect(diary_entry.contents).to eq "Auto-bio-comedy"
  end

  describe "#count_words" do
    it "returns the number of words in the contents" do
      diary_entry = DiaryEntry.new("Story of my life", "Auto-bio-comedy")
      expect(diary_entry.count_words).to eq 1
    end

    it "returns zero when the contents are empty" do
      diary_entry = DiaryEntry.new("Story of my life", "")
      expect(diary_entry.count_words).to eq 0
    end
  end

  describe "#reading_time" do
    context "given a words per minute by user" do
      it "returns the ceiling of the number of minutes it takes to read the contents" do
        diary_entry = DiaryEntry.new("Story of my life", "Hello " * 500)
        expect(diary_entry.reading_time(150)).to eq 4
      end
    end

    context "given a words per minute of 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("Story of my life", "Hello " * 3)
        expect {diary_entry.reading_time(0)}.to raise_error "Reading speed most be above zero."
      end
    end
  end

  describe "#reading_chunk" do
    context "with a text readable within the given time" do
      it "returns the full contents" do
        diary_entry = DiaryEntry.new("Story of my life", "Auto-bio-comedy")
        chunk = diary_entry.reading_chunk(150, 1)
        expect(chunk).to eq "Auto-bio-comedy"
      end
    end

    context "given a words per minute of 0" do
      it "fails" do
        diary_entry = DiaryEntry.new("Story of my life", "Hello " * 3)
        expect {diary_entry.reading_chunk(0, 5)}.to raise_error "Reading speed most be above zero."
      end
    end

    context "with the contents inreadable within the time" do
      it "returns a readable chunk" do
        diary_entry = DiaryEntry.new("Story of my life", "Auto bio comedy")
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Auto bio"
      end

      it "returns the next chunk, next time method is called" do
        diary_entry = DiaryEntry.new("Story of my life", "Auto bio comedy")
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "comedy"
      end

      it "restarts after reading the whole contents" do
        diary_entry = DiaryEntry.new("Story of my life", "Auto bio comedy")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(2, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Auto bio"
      end

      it "restarts if it finishes exactly on the end" do
        diary_entry = DiaryEntry.new("Story of my life", "Auto bio comedy")
        diary_entry.reading_chunk(2, 1)
        diary_entry.reading_chunk(1, 1)
        chunk = diary_entry.reading_chunk(2, 1)
        expect(chunk).to eq "Auto bio"
      end
    end
  end
end