Her::API.setup url: "https://api.example.com" do |c|
  c.use Faraday::Request::UrlEncoded
  c.use Her::Middleware::DefaultParseJSON
  c.use Faraday::Adapter::Typhoeus
end
