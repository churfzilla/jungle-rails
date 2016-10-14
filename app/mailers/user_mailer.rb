class OrderMailer < ApplicationMailer

  def order_email(user, order)
    @user = user
    @order = order

    # CONFIGURED TO USE MAILCATCHER ON PORT 1025
    delivery_options = { address: 'localhost', port: 1025 }
    mail(
      to: @user.email,
      subject: "Jungle Order: \##{@order.id}",
      delivery_method_options: delivery_options
    )
  end

end