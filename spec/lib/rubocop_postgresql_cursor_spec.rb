require 'spec_helper'

describe RuboCop::Cop::Rails::PostgresqlCursor do
  subject(:cop) { described_class.new }

  it "registers an offense for find_each" do
    inspect_source_file(cop, "User.find_each { |x| x }")
    expect(cop.offenses.size).to eq(1)
  end

  it 'auto-corrects to each_instance' do
    new_source = autocorrect_source_file(cop, 'User.find_each')
    expect(new_source).to eq('User.each_instance')
  end
end
