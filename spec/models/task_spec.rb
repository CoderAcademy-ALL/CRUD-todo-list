require 'rails_helper'

RSpec.describe Task, type: :model do
  it 'should save into the database' do
    user = User.create email: 'jack@example.com', password: 'password'
    valid_attrs = { user_id: user.id, title: "abcdef" }
    expect { Task.create valid_attrs }.to change { Task.count }.by(1)
  end

  it 'should not save into the database with invalid attrs' do
    invalid_attrs = { user_id: nil, title: ('a'*1000) }
    expect { Task.create invalid_attrs }.to change { Task.count }.by(0)
  end

  it 'should have a title' do
    expect(Task.new).to respond_to :title  
  end

end
