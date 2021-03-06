module Fastlane
  module Actions
    class NotifyAction < Action
      def self.run(params)
        require 'terminal-notifier'
        UI.important("It's recommended to use the new 'notification' method instead of 'notify'")

        text = params.join(' ')
        TerminalNotifier.notify(text, title: 'fastlane')
      end

      def self.description
        "Shows a macOS notification"
      end

      def self.author
        ["champo", "KrauseFx"]
      end

      def self.available_options
      end

      def self.is_supported?(platform)
        Helper.mac?
      end
    end
  end
end
