require 'rails_helper'

RSpec.describe "code_schools/new", type: :view do
  before(:each) do
    assign(:code_school, CodeSchool.new(
      :name => "MyString"
    ))
  end

  it "renders new code_school form" do
    render

    assert_select "form[action=?][method=?]", code_schools_path, "post" do

      assert_select "input#code_school_name[name=?]", "code_school[name]"
    end
  end
end
