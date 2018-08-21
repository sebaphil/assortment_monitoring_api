require 'rails_helper'

Rspec.describe 'Daily Assortments API', type: :request do
  # initializing test data
  let!(:daily_assortments) {create_list(:daily_assortment, 10)}
  let(:daily_assortments_id) {daily_assortments.first.daily_assortments_id}

  # tests for GET /daily_assortments
  describe 'GET /daily_assortments' do
    # make http request before each example
    before {get '/daily_assortments'}

    it 'returns daily_assortments' do
      # note 'json' is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  # tests for GET /daily_assortments/:id
  describe 'GET /daily_assortments/:id' do
    before {get "/daily_assortments/#{daily_assortments_id}"}
    context 'when the record exists' do
      it 'returns the daily_assortment' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(daily_assortment_id)
      end

      it 'returns status code 200' do
        expect(response).to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:daily_assortment_id) {100}

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find daily_assortment/)
      end
    end
  end

  # tests for POST /daily_assortments
  describe 'POST /daily_assortments' do
    # valid payload
    let(:valid_attributes) { {assortment_start_date: Date.current,
                              article_id: 1,
                              store_id: 2,
                              in_cluster_only_because_of_promotion: false,
                              in_elimination: false,
                              provisioning_start_date: Date.tomorrow,
                              replenishment_start_date: Date.tomorrow,
                              is_replenishable: true,
                              article_name: 'mastro lindo',
                              sub_family_id: 3,
                              substitute_article_id: 4,
                              sub_category_id: 5,
                              is_article_without_price: false,
                              is_orderable_and_loadable: true}}

    context 'when the request is valid' do
      before {post 'daily_assortments', params: valid_attributes}
      it 'creates a daily_assortment' do
        expect(json['article_id']).to eq(1)
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/daily_assortments', params: {article_id: 6}}

      it 'returns status code 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response).to match(/Validation failed: created by can't be blank/)
      end
    end
  end

  describe 'PUT /daily_assortments/:id' do
    let(:valid_attributes) {{article_id: 1}}

    context 'when the record exists' do
      before { put "/daily_assortments/#{daily_assortment_id}", params: valid_attributes}

      it 'updates the record' do
        expect(response.body).to be_empty
      end

      it 'returns status code 204' do
        expect(response).to have_http_status(204)
      end
    end
  end

  # test for DELETE daily_assortments/:id
  describe 'DELETE /daily_assortments/:id' do
    before { delete "/daily_assortments/#{daily_assortment_id}"}

    it 'returns status code 204' do
      expect(response).to have_http_status(204)
    end
  end
end
