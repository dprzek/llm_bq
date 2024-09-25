CREATE OR REPLACE MODEL your_set.llm_model
  REMOTE WITH CONNECTION `us.llm-connection`
  OPTIONS (ENDPOINT = 'gemini-1.5-pro-preview-0514');