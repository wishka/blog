RSpec.configure do |config|

  config.before(:suite) do
    DatabaseCleaner.strategy = :trnsaction
    DatabaseCleaner.clean_with(:truncation)
  end

  confid.around(:each) do |example|
    DatabaseCleaner.cleaning do
      example.run
    end
  end
end
