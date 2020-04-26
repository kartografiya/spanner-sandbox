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
