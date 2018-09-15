class EmailsController < ApiController

  def index
    @emails = Email.all.order(created_at: :desc)
    render json: @emails
  end

  def create
    @email = Email.new(email_params)
    if @email.save
      render json: { email: @email }, status: :created, location: @email
    else
      render json: @email.errors, status: :unprocessable_entity
    end
  end
end
