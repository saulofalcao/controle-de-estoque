describe "color_enabled" do
  context "when set with RSpec.configure" do
    before do
      # color is disabled for non-tty output, so stub the output stream
      # to say it is tty, even though we're running this with cucumber
      allow(RSpec.configuration.output_stream).to receive(:tty?) { true }
    end

    it "is true" do
      expect(RSpec.configuration).to be_color_enabled
    end
  end
end