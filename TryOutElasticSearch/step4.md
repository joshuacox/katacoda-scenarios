# Aggregations

Following along [here](https://www.elastic.co/guide/en/elasticsearch/reference/current/getting-started-aggregations.html)

`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "size": 0,
  "aggs": {
      "group_by_state": {
            "terms": {
                    "field": "state.keyword"
                  }
          }
    }
}
'
'`{{execute}}

`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "size": 0,
  "aggs": {
      "group_by_state": {
            "terms": {
                    "field": "state.keyword"
                  },
            "aggs": {
                    "average_balance": {
                              "avg": {
                                          "field": "balance"
                                        }
                            }
                  }
          }
    }
}
'
'`{{execute}}

`curl -X GET "localhost:9200/bank/_search?pretty" -H 'Content-Type: application/json' -d'
{
  "size": 0,
  "aggs": {
      "group_by_state": {
            "terms": {
                    "field": "state.keyword",
                    "order": {
                              "average_balance": "desc"
                            }
                  },
            "aggs": {
                    "average_balance": {
                              "avg": {
                                          "field": "balance"
                                        }
                            }
                  }
          }
    }
}
'
'`{{execute}}
