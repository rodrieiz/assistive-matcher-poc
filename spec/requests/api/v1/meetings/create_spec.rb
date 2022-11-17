describe 'POST api/v1/meetings/', type: :request do
  let!(:user) { create(:user, user_type: 'Professional') }

  describe 'POST create' do
    subject { post api_v1_meetings_path, headers: auth_headers, params:, as: :json }

    let(:start_time) { Faker::Time.forward(days: 23) }
    let(:end_time) { start_time + 1.hour }

    let(:params) do
      {
        meeting: {
          start_time:,
          end_time:
        }
      }
    end

    it 'returns a successful response' do
      subject
      expect(response).to have_http_status(:success)
    end

    it 'creates the user' do
      expect { subject }.to change(Meeting, :count).by(1)
    end

    it 'returns the meeting' do
      subject
      expect(json[:meeting][:start_time]).to eq(start_time.utc.iso8601(3))
      expect(json[:meeting][:end_time]).to eq(end_time.utc.iso8601(3))
      expect(json[:meeting][:user][:id]).to eq(user.id)
    end
  end
end
