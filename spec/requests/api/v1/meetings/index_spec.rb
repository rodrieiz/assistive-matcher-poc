describe 'GET api/v1/interest_areas', type: :request do
  let(:user) { create(:user) }

  subject { get api_v1_meetings_path, params: params, headers: auth_headers, as: :json }

  context 'with valid params' do
    let!(:meetings) { create_list(:meeting, 5) }
    let!(:params) { {} }

    it 'returns success' do
      subject
      expect(response).to have_http_status(:success)
    end

    it 'returns an array' do
      subject
      expect(json[:meetings].length).to eq 5
      expect(json[:meetings].pluck(:id))
        .to match_array(meetings.pluck(:id))
    end
  end
end
