# minio-lab
This carries backwards compatibility tests on encrypted data while switching from `RELEASE.2021-03-26T00-00-41Z` to `RELEASE.2021-11-09T03-21-45Z`

# Test
```bash
# 1) Setup old Minio
$ make setup-old

# 2) Now, go to http://127.0.0.1:9001/dashboard, create a bucket and put some files into it. Explore ./data dir to solidify your expectations.

# 3) Switch to latest version
$ make switch2new

# 4) Again, go to http://127.0.0.1:9001/dashboard, check your files are alright. Explore ./data dir and access .minio.sys directory to match your expectations.

# 5) Finally
$ make stop
```
