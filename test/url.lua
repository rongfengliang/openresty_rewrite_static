local m, err = ngx.re.match("/demo1",[[^(\/demo)(\/?)(\d+)$]])

if m then
   print("is match")
end