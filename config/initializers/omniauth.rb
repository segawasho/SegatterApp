Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, ENV['704878875986120705-k520LLq77q5MtMf3hdKVgjCg0ZcHGF7'], ENV['kt1ZoFZxVEHx8zcvV28TSNQBg1uKczIs73RqJs6JlojD8']
end
