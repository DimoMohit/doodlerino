require 'rails_helper'

RSpec.describe 'User doodles', type: :request do
  let(:user) { create :user }

  before do
    get '/test'
  end

  context 'when user has no doodles' do
    it 'informs that this user has no doodles' do
      expect(response.body).to include("hasn't been doodling at all")
    end
  end

  context 'when user has doodled before' do
    let(:doodle) { create :doodle }

    it 'renders doodles' do
      expect(response.body).to include(doodle.description)
    end
  end
end
