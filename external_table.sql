CREATE EXTERNAL TABLE `your_set.objects`
WITH CONNECTION `us.llm-connection`
OPTIONS(
  object_metadata = 'SIMPLE',
  uris = ['gs://bqml_vision/*'],
  max_staleness = INTERVAL 30 MINUTE,
  metadata_cache_mode = 'AUTOMATIC');