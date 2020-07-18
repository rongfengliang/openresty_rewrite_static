local m, err = ngx.re.match("/demo1/index",[[index]])


if m then
   print("is match")
end