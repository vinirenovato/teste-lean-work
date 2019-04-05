class LoginPage < SitePrism::Page

    element :user,'[name=login]'
    element :password, '[name=senha]'
    element :enter_button, '.btn.btn-success.btn-block.btn-submit'

    def do_login(cpf_user, password_user)
      user.set cpf_user
      password.set password_user
      enter_button.click
    end

end