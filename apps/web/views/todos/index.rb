module Web
  module Views
    module Todos
      class Index
        include Web::View

        def all_todos
          result.all_todos
        end
      end
    end
  end
end
