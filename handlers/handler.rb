class Handler < Sinatra::Base
  error Sinatra::NotFound do
    err = env['sinatra.error']
    [404, {}, {status: "error", errors: [{code: 404, message: "#{request.path} not found"}]}.to_json]
  end
end
