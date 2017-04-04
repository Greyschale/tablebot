post '/' do
  content_type :json

  action = params.fetch('text', :unknown).to_sym
  return error_response unless ALLOWED_ACTIONS.keys.include?(action)

  {
    response_type: 'in_channel',
    text: ALLOWED_ACTIONS[action]
  }.to_json
end

private

def error_response
  {
    response_type: 'ephemeral',
    text: '┬──┬ ノ( ゜-゜ノ) I don\'t know how to flip that.'
  }.to_json
end
