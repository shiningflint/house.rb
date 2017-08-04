require './speaker'
require './room'

RSpec.describe Speaker do
  before do
    @s = Speaker.new "Voombox"
    @lr = Room.new "Living Room"
    @s.move_to @lr
  end

  describe 'Move speaker' do
    it 'to living room from nil' do
      expect(@s.at_room).to eq @lr
      expect(@lr.objects[@s.label]).to eq @s
    end

    it 'to kitchen from living room' do
      @kitchen = Room.new "Kitchen"
      @s.move_to @kitchen
      expect(@s.at_room).to eq @kitchen
      expect(@lr.objects[@s.label]).to eq nil
      expect(@kitchen.objects[@s.label]).to eq @s
    end
  end
end
