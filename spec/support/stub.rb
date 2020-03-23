module Support
  module Stub
    def stub_api(root, params = {})
      ApiStruct::Settings.configure do |config|
        config.endpoints = { api: { root: root, params: params } }
        config.node = { url: root, api_key: 'SECRET', params: params }
      end
    end
  end
end
