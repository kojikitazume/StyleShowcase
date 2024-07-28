class UsersController < ApplicationController
    def guest_sign_in
      user = User.find_or_create_by!(email: 'guest@example.com') do |user|
        user.password = 'password'
        user.password_confirmation = 'password'
      end
      sign_in(user)
      redirect_to root_path, notice: 'Signed in as guest user.'
    end
  end
  
  