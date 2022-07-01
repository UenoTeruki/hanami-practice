require 'hanami/interactor'

class FetchAllTodos
  include Hanami::Interactor

  expose :all_todos

  def initialize(repository:)
    @repository = repository
  end

  def call
    @all_todos = @repository.all
  end
end