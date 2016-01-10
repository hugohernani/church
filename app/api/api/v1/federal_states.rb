module API
  module V1
    class FederalStates < Grape::API
      include Defaults

      group :federal_states do
        desc 'Returns all federal states'

        get '', root: :federal_states do
          FederalState.all
        end

        desc 'Returns one federal state'
        params do
          requires :id, type: String, desc: "federal state id"
        end
        get ':id', root: :federal_state do
          FederalState.find(permitted_params[:id])
        end

        desc 'Returns one federal state by its abbreviation'
        params do
          requires :abbr, type: String, desc: "federal state abbrevation"
        end
        get ':abbr', root: :federal_state do
          FederalState.find_by_abbr(permitted_params[:abbr])
        end
      end
    end
  end
end
