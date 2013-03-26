CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => "AWS",
    :aws_access_key_id      => 'AKIAJSEOK6PIDD5OG7LQ',
    :aws_secret_access_key  => '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'
  }
  config.fog_directory  = 'cap_loto'
end