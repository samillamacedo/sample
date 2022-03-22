class User < ApplicationRecord
  validates :name, :phone, :email, :cpf, :birthdate, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validate :cpf_valid?

  def cpf_valid?
    return if CPF.valid?(cpf)

    errors.add(:cpf)
  end
end
