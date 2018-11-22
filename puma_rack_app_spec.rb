require './puma_rack_app'

describe PumaRackApp do
  context "get /" do
    let(:app)      { PumaRackApp.new }
    let(:env)      { { "REQUEST_METHOD" => "GET", "PATH_INFO" => "/" } }
    let(:response) { app.call(env) }
    let(:body)     { response[2][0] }

    it "returns the body" do
      expect(body).to eq "Nerd, World!"
    end
  end
end