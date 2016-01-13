class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :message,   :validate => true
  attribute :nickname,  :captcha  => true

  def headers
    {
      :subject => "My Contact Form",
      :to => "mjroche@mail.usf.edu",
      :from => %("#{name}" <#{email}>)
    }
  end
end
