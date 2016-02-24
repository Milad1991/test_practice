require 'rails_helper'

RSpec.describe "code_schools/show", type: :view do
  before(:each) do
    @code_school = assign(:code_school, CodeSchool.create!(
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
  end
end
