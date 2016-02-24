require 'rails_helper'

RSpec.describe "code_schools/index", type: :view do
  before(:each) do
    assign(:code_schools, [
      CodeSchool.create!(
        :name => "Name"
      ),
      CodeSchool.create!(
        :name => "Name"
      )
    ])
  end

  it "renders a list of code_schools" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
