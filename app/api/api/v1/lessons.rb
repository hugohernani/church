module API
  module V1
    class Lessons < Grape::API
      include Defaults

      group :lessons do
        desc 'Returns all lessons'
        get '', root: :lessons do
          Lesson.all
        end

        desc 'Returns one lesson'
        params do
          requires :id, type: String, desc: "Lesson id"
        end
        get ':id', root: :lesson do
          Lesson.find(permitted_params[:id])
        end
      end
    end
  end
end
