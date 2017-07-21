require 'rails_helper'

describe "post a animal route", :type => :request do

  before do
    post '/animals', params: { :name => 'test_name', :animal_type => 'test_animal_type', :adoption_fee => 2, :age => 3, :sex => 'test_sex_type', :weight => 15, :available => true }
  end

  it 'returns the animal name' do
    expect(JSON.parse(response.body)['name']).to eq('test_name')
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['animal_type']).to eq('test_animal_type')
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['adoption_fee']).to eq(2)
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['age']).to eq(3)
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['sex']).to eq('test_sex_type')
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['weight']).to eq(15)
  end

  it 'returns the animal content' do
    expect(JSON.parse(response.body)['available']).to eq(true)
  end

  it 'returns a created status' do
    expect(response).to have_http_status(:ok)
  end
end
