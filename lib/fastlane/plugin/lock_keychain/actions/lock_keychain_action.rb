module Fastlane
  module Actions
    class LockKeychainAction < Action
      def self.run(params)
        keychain_path = FastlaneCore::Helper.keychain_path(params[:path])
        escaped_path = keychain_path.shellescape
        Fastlane::Actions.sh("security lock-keychain #{escaped_path}", log: false)
      end

      def self.description
        "Plugin for locking unlocked keychain"
      end

      def self.authors
        ["Alex Antonyuk"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "You can use this plugin in pair with unlock_keychain to lock keychain after build process"
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(key: :path,
                                  env_name: "FL_LOCK_KEYCHAIN_PATH",
                               description: "Path to the keychain file",
                                  optional: false,
                                      type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://github.com/fastlane/fastlane/blob/master/fastlane/docs/Platforms.md
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
