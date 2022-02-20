module Web
  module Controllers
    module Todos
      class Index
        include Web::Action

        expose :result

        def initialize(interactor: FetchAllTodos.new)
          @interactor = interactor
        end

        def call(params)
          @result = @interactor.call
        end
      end
    end
  end
end
