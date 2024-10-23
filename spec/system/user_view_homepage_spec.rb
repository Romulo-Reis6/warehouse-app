require "rails_helper"

describe "Usuario acessa a página inicial '/'" do
  it "e visualiza o nome do app." do
    # Arrange

    # Act
    visit("/")

    # Assert
    expect(page).to have_content("Galpões & Estoque")
  end
end
