def read_data(socket)
  data = socket.read(512)
  if data.nil?
    raise RetryException.new(true), "transient read error"
  end
  #.. 일반적인 처리
end


begin
  stuff = read_data(socket)
  # .. 처리한다.
rescue RetryException => detail
  retry if detail.ok_to_retry
  raise
end