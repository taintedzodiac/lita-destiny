module Lita
  module Handlers
    class Destiny < Handler
      route(/^destiny\s+(.+)/, :destiny, command: true, help: {
        "destiny" => "Query Destiny API."
      })

      def destiny(response)
        # params order: console, username
        params = response.matches[0][0].split

        console = params[0].to_sym
        gamertag = params[1]

        destiny_client = Destiny.new({ console: console })
        membership = destiny_client.memberships.get(gamertag)
        response.reply membership.inspect
      end
    end

    Lita.register_handler(Destiny)
  end
end
