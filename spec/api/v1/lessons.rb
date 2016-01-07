require 'rails_helper'

module API
  module V1
    describe Lessons do
      describe 'GET /api/v1/lessons' do
        context 'returns an empty array of lessons' do
          before do
            get '/api/v1/lessons', format: :json
          end

          it { expect(response.status).to eq 200 }
          it { expect(json(response)["lessons"]).to eq [] }
        end

        context 'returns a list with one lesson' do
          before do
            @lesson = FactoryGirl.create(:lesson)
            get '/api/v1/lessons', format: :json
          end

          it { expect(response.status).to eq 200 }
          it { expect(json(response)["lessons"]).to eq [serialized_lesson(@lesson)] }
        end
      end

      describe 'GET /api/v1/lessons/:id' do
        before do
          @lesson = FactoryGirl.create(:lesson)
          get "/api/v1/lessons/#{@lesson.id}", format: :json
        end

        context 'find a lesson' do
          it { expect(response.status).to eq 200 }
          it { expect(json(response)["lesson"]).to eq serialized_lesson(@lesson) }
        end
      end

      def serialized_lesson(lesson)
        LessonSerializer.new(lesson).attributes.stringify_keys
      end
    end
  end
end
