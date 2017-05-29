curl \
  --data-urlencode sig="`\
   echo '{"body":{"key":{"eldest_kid":"0101d177abfcef05d7301e2e4c016e4c5d39cff2a76f36e5e22c44c061cce3d724860a","fingerprint":"e08799aa5747249480c2ef7d1bd95bd9e18474d1","host":"keybase.io","key_id":"1bd95bd9e18474d1","kid":"0101d177abfcef05d7301e2e4c016e4c5d39cff2a76f36e5e22c44c061cce3d724860a","uid":"f80124193bc95aca338c6dd7fa847b19","username":"riichard"},"service":{"hostname":"riichard.com","protocol":"https:"},"type":"web_service_binding","version":1},"ctime":1488543173,"expire_in":157680000,"prev":"5a42670bbf4d785ec1e60c5b9aecaaef01cb9bcc4c423900d25cf1560db6a343","seqno":3,"tag":"signature"}' | \
   gpg1 -u 'e08799aa5747249480c2ef7d1bd95bd9e18474d1' -a --sign`" \
  --data-urlencode type="web_service_binding.generic" \
  --data-urlencode session="lgHZIGY4MDEyNDE5M2JjOTVhY2EzMzhjNmRkN2ZhODQ3YjE5zli5W/vOAeEzgNkgOTYzMDJiMmE2ZDliM2ViYTZkOTYzOGIxNzRiYThlMDLEIFC5pN0p9ih7bonKxiI+AIxoVhEjij606gKXSijKftGn" \
  --data-urlencode csrf_token="lgHZIGY4MDEyNDE5M2JjOTVhY2EzMzhjNmRkN2ZhODQ3YjE5zli5W/vOAAFRgMDEILX6LXmYifzfaEyKuDLXSc2tRVoBjGw0/zBRhay9BWyn" \
  --data-urlencode plain_out="1" \
  --data-urlencode signing_kid="0101d177abfcef05d7301e2e4c016e4c5d39cff2a76f36e5e22c44c061cce3d724860a" \
  --data-urlencode remote_host="https://riichard.com" \
  https://keybase.io/_/api/1.0/sig/post.json
