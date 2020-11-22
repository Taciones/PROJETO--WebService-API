



Given('I send the request') do
    expect(@FilmResponse_Page.response.code).not_to be(500)
  end
  
  Given('I receive the response code') do
    expect(@FilmResponse_Page.response).not_to be_empty
  end
  
  Then('the received response code should be {int}') do |code|
    expect(@FilmResponse_Page.response.code).to eq(code)
  end
  
  Given('I see the title element on the response') do
    @FilmResponse_Page.has_title.include? "title"
  end

  Then('I should save these {string} for later use') do |elements|
    @FilmResponse_Page.save_titles.include? "elements"
  end