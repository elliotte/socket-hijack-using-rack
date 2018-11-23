require './rack_app'

describe PumaRackApp do

  let(:app)      { PumaRackApp.new }
  let(:body)     { response[2][0] }
  let(:response) { app.call(env) } 

  context "get /" do
  	let(:env)      { { "REQUEST_METHOD" => "GET", "PATH_INFO" => "/" } }
    it "returns the body" do
      expect(body).to eq "Nerd, World!"
    end
  end

  context "post to /" do
    let(:env)      { { "REQUEST_METHOD" => "POST", "PATH_INFO" => "/" } }
    it { expect(response).to eq 405 }
    # it { expect(response.body).to eq "Method not allowed: POST" }
  end

end