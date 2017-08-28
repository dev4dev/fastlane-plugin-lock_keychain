describe Fastlane::Actions::LockKeychainAction do
  describe '#run' do
    it 'prints a message' do
      expect(Fastlane::UI).to receive(:message).with("The lock_keychain plugin is working!")

      Fastlane::Actions::LockKeychainAction.run(nil)
    end
  end
end
