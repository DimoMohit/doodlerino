require 'rails_helper'

RSpec.describe 'User doodles', type: :request do
  let(:user) { create :user }

  before do
    get "/profile/#{user.id}"
  end

  context 'when user has no doodles' do
    it 'informs that this user has no doodles' do
      expect(response.body).to include("hasn't been doodling at all")
    end
  end

  context 'when user has doodled before' do
    let!(:doodle) { create :doodle, user: user }

    it 'renders doodles' do
      get "/profile/#{user.id}"
      expect(response.body).to include(doodle.description)
    end
  end
end
