module Lita
  module Handlers
    class Destiny < Handler
      route(/^destiny\s+(.+)/, :destiny, command: true, help: {
        "destiny" => "Query Destiny API."
      })

      def destiny(response)
        params = response.matches[0][0].split[' ']
        params.each do |param|
          response.reply param
        end
      end
    end

    Lita.register_handler(Destiny)
  end
end
