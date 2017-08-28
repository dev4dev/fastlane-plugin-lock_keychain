module Fastlane
  module Helper
    class LockKeychainHelper
      # class methods that you define here become available in your action
      # as `Helper::LockKeychainHelper.your_method`
      #
      def self.show_message
        UI.message("Hello from the lock_keychain plugin helper!")
      end
    end
  end
end
