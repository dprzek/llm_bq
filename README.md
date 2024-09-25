# llm_in_bq

1. Click the + ADD button on the BigQuery Explorer pane, then click Connections to external data sources in the popular sources listed.
2. Select Connection type as Vertex AI remote models, remote functions and BigLake (Cloud Resource) and set Connection ID to llm-connection.
3. Click CREATE CONNECTION.
4. Select us.llm-connection under the External connections section of the project's datasets. Copy the Service Account ID generated from the external connection configuration details to your clipboard. You use it in the next step.
5. You need to grant the Service Account generated by the external connection access to the Vertex AI service. To do so:
  - From the Navigation menu select IAM & Admin.
  - Click + GRANT ACCESS on the IAM page.
  -  Paste the Service Account ID generated by the external connection in the New principals form input.
  - Set the Role to Vertex AI User then click SAVE.
6. Create an external table with reference to your files using external_table.sql.
7. Create a model using: model_create.sql - use appropriate endpoint.
7. Collaborate with: query_llm.sql
8. Code works with no bugs provided that data sample is kept in dataset named 'agora_set' and in table 'news' with two columns: `'int64_field_0'` (id) and `'string_field_1'` (article).
10. voila!
