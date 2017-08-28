describe Fastlane::Actions::LockKeychainAction do
  describe '#run' do
    it 'to run lock keychain command' do
      # expect(Fastlane::UI).to receive(:message).with("The lock_keychain plugin is working!")
      keychain_path = Tempfile.new('foo').path

      result = Fastlane::FastFile.new.parse("lane :test do
        lock_keychain ({
          path: '#{keychain_path}'
        })
      end").runner.execute(:test)

      expect(result[0]).to eq("security lock-keychain #{keychain_path}")
    end
  end
end
