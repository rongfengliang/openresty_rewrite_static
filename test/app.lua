-- local uri = ngx.re.sub("/index/1", [[^(.*?)(.html)?\/1$]], "/demo1$1", "o")
-- print(uri)

local origin_url = [[/dalong/dalong]]
local uri,n,err = ngx.re.sub(origin_url, [[^(.*?)(.html)?\/(\d)$]], "/demo$3$1", "o")
-- local uri = ngx.re.sub("/index/1", [[^(.*?)(.html)?\/(\d)$]], "/demo$3$1", "o")

if n ==0 then
  print("not sub")
end

local m, err = ngx.re.match(origin_url,[[index]])
if not m  then 
    print("not match")
end

