CREATE EXTERNAL TABLE `your_set.objects`
WITH CONNECTION `us.llm-connection`
OPTIONS(
  object_metadata = 'SIMPLE',
  uris = ['gs://bqml_vision/*'], #it is URI to Cloud Storage and contains bunch of .jpg files
  max_staleness = INTERVAL 30 MINUTE,
  metadata_cache_mode = 'AUTOMATIC');
