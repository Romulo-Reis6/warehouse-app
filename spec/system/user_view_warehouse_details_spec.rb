require 'rails_helper'

describe 'Usuário visualiza detalhes de um galpão' do
  it 'e visualiza as infirmações do galpão' do
    # Arrange
    Warehouse.create(
      name: 'Aeroporto SP',
      code: 'GRU',
      city: 'Guarulhos',
      area: 100_000,
      address: 'Avenida do Aeroporto, 1000',
      cep: '15000-000',
      description: 'Galpão destinado a carga internacional'
      )

    # Act
    visit(root_path)
    click_on('Aeroporto SP')

    # Assert
    expect(page).to have_content('Galpão GRU')
    expect(page).to have_content('Aeroporto SP')
    expect(page).to have_content('Cidade: Guarulhos')
    expect(page).to have_content('Área: 100000 m²')
    expect(page).to have_content('Endereço: Avenida do Aeroporto, 1000 CEP: 15000-000')
    expect(page).to have_content('Galpão destinado a carga internacional')
  end
  it 'e volta para a tela inicial' do
    # Arrange
    Warehouse.create(
      name: 'Aeroporto SP',
      code: 'GRU',
      city: 'Guarulhos',
      area: 100_000,
      address: 'Avenida do Aeroporto, 1000',
      cep: '15000-000',
      description: 'Galpão destinado a carga internacional'
      )
    # Act
    visit(root_path)
    click_on 'Aeroporto SP'
    click_on 'Voltar'
    # Assert
    expect(current_path).to eq(root_path)
  end
end
