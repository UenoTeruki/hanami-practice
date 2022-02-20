RSpec.describe Web::Controllers::Todos::Index, type: :action do
  let(:action) { described_class.new(interactor: interactor) }
  let(:interactor) { instance_double('FetchAllTodos') }
  let(:params) { Hash[] }

  before { allow(interactor).to receive(:call) }

  subject { action.call(params) }

  it 'is successful' do
    response = subject
    expect(response[0]).to eq 200
  end

  it 'interactorが呼ばれること' do
    expect(interactor).to receive(:call)

    subject
  end
end
