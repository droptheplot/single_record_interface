describe SingleRecordInterface do
  context 'included to ActiveRecord model' do
    let!(:email) { 'email@email.email' }
    let!(:settings) { mock_model('Settings', email: email) }

    before do
      allow(Settings).to receive(:attribute_names).and_return(%w(email))
      allow(Settings).to receive(:first).and_return(settings)

      Settings.send(:include, SingleRecordInterface)
    end

    it 'convert attributes to class methods' do
      expect(Settings.email).to eq(email)
    end
  end
end
