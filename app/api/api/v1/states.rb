module API
  module V1
    class States < Grape::API
      include Defaults

      group :states do
        desc 'Returns all states'

        get '', root: :states do
          State.all
        end

        desc 'Returns one state'
        params do
          requires :id, type: String, desc: "State id"
        end
        get ':id', root: :state do
          State.find(permitted_params[:id])
        end

        desc 'Returns one state by its abbreviation'
        params do
          requires :abbr, type: String, desc: "State abbrevation"
        end
        get ':abbr', root: :state do
          State.find_by_abbr(permitted_params[:abbr])
        end
      end
    end
  end
end
