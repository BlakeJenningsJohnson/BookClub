require 'test_helper'

class AuthenticationPagesTest < ActionDispatch::IntegrationTest

  describe "Authentication" do

    subject { page }

    describe "signin page" do
      before { visit signin_path }

      it { should have_content('Sign in') }
      it { should have_title('Sign in') }
    end
  end
end
