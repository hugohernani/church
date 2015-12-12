require 'grape-swagger'

module API
  module V1
    class Base < Grape::API
      mount API::V1::Lessons

      add_swagger_documentation(
        format: :json,
        api_version: "v1",
        mount_path: "/documentation",
        hide_format: true,
        hide_documentation_path: true,
      )
    end
  end
end
