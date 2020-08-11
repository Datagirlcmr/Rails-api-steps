# require 'rails_helper'

# RSpec.describe 'Steps API', type: :request do
#   # initialize test data 
#   let!(:steps) { create_list(:step, 10) }
#   let(:step_id) { steps.first.id }

#   # Test suite for GET /steps
#   describe 'GET /steps' do
#     # make HTTP get request before each example
#     before { get '/steps' }

#     it 'returns steps' do
#       # Note `json` is a custom helper to parse JSON responses
#       expect(json).not_to be_empty
#       expect(json.size).to eq(10)
#     end

#     it 'returns status code 200' do
#       expect(response).to have_http_status(200)
#     end
#   end

#   # Test suite for GET /steps/:id
#   describe 'GET /steps/:id' do
#     before { get "/steps/#{step_id}" }

#     context 'when the record exists' do
#       it 'returns the step' do
#         expect(json).not_to be_empty
#         expect(json['id']).to eq(step_id)
#       end

#       it 'returns status code 200' do
#         expect(response).to have_http_status(200)
#       end
#     end

#     context 'when the record does not exist' do
#       let(:step_id) { 100 }

#       it 'returns status code 404' do
#         expect(response).to have_http_status(404)
#       end

#       it 'returns a not found message' do
#         expect(response.body).to match(/Couldn't find step/)
#       end
#     end
#   end

#   # # Test suite for POST /steps
#   # describe 'POST /steps' do
#   #   # valid payload
#   #   let(:valid_attributes) { { date: 2020-11-9 steps: 1800 } }

#   #   context 'when the request is valid' do
#   #     before { post '/steps', params: valid_attributes }

#   #     it 'creates a step' do
#   #       expect(json['date']).to eq(2020-11-9 )
#   #     end

#   #     it 'returns status code 201' do
#   #       expect(response).to have_http_status(201)
#   #     end
#   #   end

#   #   context 'when the request is invalid' do
#   #     before { post '/steps', params: { date: 2020-10-14 } }

#   #     it 'returns status code 422' do
#   #       expect(response).to have_http_status(422)
#   #     end

#   #     it 'returns a validation failure message' do
#   #       expect(response.body)
#   #         .to match(/Validation failed: Created by can't be blank/)
#   #     end
#   #   end
#   # end

#   # Test suite for PUT /steps/:id
#   describe 'PUT /steps/:id' do
#     let(:valid_attributes) { { title: 'Shopping' } }

#     context 'when the record exists' do
#       before { put "/steps/#{step_id}", params: valid_attributes }

#       it 'updates the record' do
#         expect(response.body).to be_empty
#       end

#       it 'returns status code 204' do
#         expect(response).to have_http_status(204)
#       end
#     end
#   end

#   # Test suite for DELETE /steps/:id
#   describe 'DELETE /steps/:id' do
#     before { delete "/steps/#{step_id}" }

#     it 'returns status code 204' do
#       expect(response).to have_http_status(204)
#     end
#   end
# end