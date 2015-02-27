module Lita
  module Handlers
    class Destiny < Handler
      route(/^echo\s+(.+)/, :echo, command: true, help: {
        "echo TEXT" => "Replies back with TEXT."
      })
    end

    Lita.register_handler(Destiny)
  end
end
