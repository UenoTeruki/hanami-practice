RSpec.describe FetchAllTodos, type: :model do
  let!(:interactor) { described_class.new(repository: repository) }
  let!(:repository) { instance_double('TodoRepository') }

  describe '#call' do
    subject { interactor.call }

    it 'repositoryが呼ばれること' do
      expect(repository).to receive(:all)

      subject
    end
  end
end