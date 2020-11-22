
Then('I send a higher random value than my actual count and received response code should be {int}') do |code|
    expect(@PlanetsResponse_Page.send_value.code).to eq(code)
    end


  Given('I can keep the count value to use later') do
    expect(@PlanetsResponse_Page.keep_count).to be(60)
  end