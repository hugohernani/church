module API
  module V1
    class Lessons < Grape::API
      include API::V1::Defaults

      resource :aulas do
        desc 'Return all lessons'
        get '', root: :aulas do
          Lesson.all
        end

        desc 'Retorn one lesson'
        params do
          requires :id, type: String, desc: "Lesson id"
        end
        get ':id', root: :aula do
          Lesson.find(id: permitted_params[:id])
        end
      end
    end
  end
end
