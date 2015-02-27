module Lita
  module Handlers
    class Destiny < Handler
      route(/^echo\s+(.+)/, :echo, command: true, help: {
        "echo TEXT" => "Replies back with TEXT."
      })

      def echo(response)
        response.reply response.matches
      end
    end

    Lita.register_handler(Destiny)
  end
end
