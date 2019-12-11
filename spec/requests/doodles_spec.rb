require 'rails_helper'

RSpec.describe 'Doodles', type: :request do
  let(:user) { create :user }
  let(:path) { 'https://scontent.ftia8-1.fna.fbcdn.net/v/t31.0-8/20785807_1031764710259476_6834944016236025040_o.png?_nc_cat=102&_nc_oc=AQnCJgOnm8dfmOMawIoZy7ZN9BcxzZgQPncZ59a5WAnYi7siMXm3kDgBLzyz-KsH_Mo&_nc_ht=scontent.ftia8-1.fna&oh=f650fcae27320317f0bc140f53de4f75&oe=5DEB8B69' }

  before do
    3.times do |i|
      # TODO: set the coordinates of the following doodles to be between 10 and 20
      Doodle.create!(path: path, description: "Good doodle ##{i}",
        x_coordinate: 10, y_coordinate: 20, user: user)
    end

    Doodle.create!(path: path, description: "Bad doodle",
      x_coordinate: 30, y_coordinate: 30, user: user)

    # The coords passed to the following URL are:
    # { "top": { "x": 10, "y": 10 }, "bottom": { "x": 20, "y": 20 } }
    get '/canvas?q=%7B%22top%22%3A%7B%22x%22%3A10%2C%22y%22%3A10%7D%2C%22bottom%22%3A%7B%22x%22%3A20%2C%22y%22%3A20%7D%7D'
  end

  it 'shows doodles in the required section' do
    expect(response.body).to include('Good doodle')
  end

  it 'does not show doodles outside the required section' do
    expect(response.body).not_to include('Bad doodle')
  end
end
