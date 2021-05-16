# jessica_elasticsearch

```bash
docker build -t gaoyuanliang/jessica_elasticsearch:1.0.0 .

docker run -it \
-p 0.0.0.0:2897:9200 \
-p 0.0.0.0:0569:5601 \
--memory="256g" \
-v /Users/liangyu/Downloads/:/Downloads/ \
gaoyuanliang/jessica_elasticsearch:1.0.0
```

http://0.0.0.0:2897/a/_search?pretty=true

http://0.0.0.0:2897/_cat/indices?v

