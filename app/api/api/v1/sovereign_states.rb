module API
  module V1
    class SovereignStates < Grape::API
      include Defaults

      group :sovereign_states do
        desc 'Returns all sovereign states'

        get '', root: :sovereign_states do
          SovereignState.all
        end

        desc 'Returns one sovereign state'
        params do
          requires :id, type: String, desc: "Sovereign State id"
        end
        get ':id', root: :sovereign_state do
          SovereignState.find(permitted_params[:id])
        end

        desc 'Returns one sovereign state by its abbreviation'
        params do
          requires :abbr, type: String, desc: "Sovereign State abbrevation"
        end
        get ':abbr', root: :sovereign_state do
          SovereignState.find_by_abbr(permitted_params[:abbr])
        end
      end
    end
  end
end
