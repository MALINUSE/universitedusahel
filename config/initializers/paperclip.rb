unless Rails.env.production?
  #Paperclip::Attachment.default_options[:path] = "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  #Paperclip::Attachment.default_options[:url] = '/system/:attachment/:id/:style/:filename'
  #Paperclip::Attachment.default_options[:s3_host_name] = 'localhost'
else
  Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
  Paperclip::Attachment.default_options[:path] = '/:class/:attachment/:id_partition/:style/:filename'
  Paperclip::Attachment.default_options[:s3_host_name] = 's3-us-west-2.amazonaws.com'
end