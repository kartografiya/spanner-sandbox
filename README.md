# Cloud Spanner Emulator + docker-compose + spanner-cli

Create a network:
```
$ docker network create spanner
```

Build it:
```
$ docker-compose build
```

Start it:
```
$ docker-compose up -d
```

Try it:
```
$ docker-compose run spanner-cli ./wrap
Connected.
[test-db]> SELECT 42;
+----+
|    |
+----+
| 42 |
+----+
1 rows in set (221.516us)
```

## Standing on the shoulders of giants
- [Cloud Spanner Emulator](https://github.com/GoogleCloudPlatform/cloud-spanner-emulator)
- [spanner-cli](https://github.com/cloudspannerecosystem/spanner-cli)
- [gcloud docs](https://cloud.google.com/spanner/docs/emulator)
