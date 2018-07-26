json.array! @new_message do |message|
  json.content  message.content
  json.image  message.image.url
  json.user_name  message.user.name
  json.created_at message.created_at.to_s
  json.id message.id
end
