# jessica_elasticsearch

```bash
docker build -t gaoyuanliang/jessica_elasticsearch:1.0.0 .

docker run -it \
-p 0.0.0.0:2897:9200 \
-p 0.0.0.0:0569:5601 \
--memory="256g" \
-v /Users/liangyu/Downloads/:/Users/liangyu/Downloads/ \
gaoyuanliang/jessica_elasticsearch:1.0.0
```
