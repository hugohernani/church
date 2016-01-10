module API
  module V1
    class Events < Grape::API
      include Defaults

      group :events do
        desc 'Returns all events'

        get :recent, root: :events do
          Event.take(3)
        end

        get '', root: :events do
          Event.all
        end

        desc 'Returns one event'
        params do
          requires :id, type: String, desc: "Event id"
        end
        get ':id', root: :event do
          Event.find(permitted_params[:id])
        end
      end
    end
  end
end
