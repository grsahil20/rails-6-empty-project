class TestHotwireMessage

  def self.call
    Turbo::StreamsChannel.broadcast_append_to "user_notifications",
      target: "user_notifications",
      partial: "shared/display_string", locals: { a: 1, random_string: SecureRandom.hex }
  end
end
