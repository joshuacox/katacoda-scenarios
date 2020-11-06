## Add an Index

`curl -X PUT "localhost:9200/cool_stuff?pretty"`{{execute}}

`curl localhost:9200/_cat/indices`{{execute}}

`curl -v "localhost:9200/_cat/indices"`{{execute}}

`curl -iv "localhost:9200/cool_stuff?pretty"`{{execute}}

``{{execute}}

Let's follow the [main documentation](https://www.elastic.co/guide/en/elasticsearch/reference/current/getting-started-index.html)

`curl -X PUT "localhost:9200/customer/_doc/1?pretty" -H 'Content-Type: application/json' -d'
{
  "name": "John Doe"
}
'
'`{{execute}}

`curl -X GET "localhost:9200/customer/_doc/1?pretty"`{{execute}}

`wget https://github.com/elastic/elasticsearch/blob/master/docs/src/test/resources/accounts.json?raw=true`{{execute}}

`curl -H "Content-Type: application/json" -XPOST "localhost:9200/bank/_bulk?pretty&refresh" --data-binary "@accounts.json"`{{execute}}

`curl "localhost:9200/_cat/indices?v"`{{execute}}

`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": { "match_all": {} },
  "sort": [
      { "account_number": "asc" }
    ]
}
'
'`{{execute}}

`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": { "match_all": {} },
  "sort": [
      { "account_number": "asc" }
    ],
  "from": 10,
  "size": 10
}
'
'`{{execute}}

`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
      "bool": {
            "must": [
                    { "match": { "age": "40" } }
                  ],
            "must_not": [
                    { "match": { "state": "ID" } }
                  ]
          }
    }
}
'
'`{{execute}}


`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "query": {
    "bool": {
      "must": { "match_all": {} },
      "filter": {
        "range": {
          "balance": {
            "gte": 20000,
            "lte": 30000
          }
        }
      }
    }
  }
}
'`{{execute}}

