require './speaker'

RSpec.describe Speaker do
  describe 'New speaker' do
    it 'error with no label' do
      expect { Speaker.new }.to raise_error(ArgumentError)
    end
  end
end
