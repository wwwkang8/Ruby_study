f = file.open("testfile")
begin
  #.. 프로세스
rescue
  #.. 에러처리
ensure
  f.close
end

