## Basic info Query

##### Get info on the running ES instance

`curl localhost:9200`{{execute}}

You should get something like:

```
{
  "name" : "linuxpowerhouse.local",
  "cluster_name" : "elasticsearch_user",
  "cluster_uuid" : "DEADBEEF",
  "version" : {
      "number" : "7.x.x",
      "build_flavor" : "default",
      "build_type" : "tar",
      "build_hash" : "DEADBEEFIER",
      "build_date" : "2020-10-15T11:11:11.33",
      "build_snapshot" : false,
      "lucene_version" : "8.x.x",
      "minimum_wire_compatibility_version" : "6.x.x",
      "minimum_index_compatibility_version" : "6.x.x-beta1"
    },
  "tagline" : "You Know, for Search"
}
```
