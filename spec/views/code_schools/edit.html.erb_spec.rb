require 'rails_helper'

RSpec.describe "code_schools/edit", type: :view do
  before(:each) do
    @code_school = assign(:code_school, CodeSchool.create!(
      :name => "MyString"
    ))
  end

  it "renders the edit code_school form" do
    render

    assert_select "form[action=?][method=?]", code_school_path(@code_school), "post" do

      assert_select "input#code_school_name[name=?]", "code_school[name]"
    end
  end
end
