require "sinatra"
require "json"

get "/blogs" do
  headers 'Access-Control-Allow-Origin' => '*'
  [{ title: "hello", content: "hello, world!" }].to_json
end

post "/blogs" do
  # ここで保存などの処理が行われる

  headers 'Access-Control-Allow-Origin' => '*'
  { message: "success" }.to_json
end

options "/blogs" do
  status 204
  headers \
    'Access-Control-Allow-Origin' => '*',
    'Access-Control-Allow-Methods' => 'POST',
    'Access-Control-Allow-Headers' => 'Content-Type'
end
