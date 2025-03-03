CREATE OR REPLACE MODEL your_set.modelgraphics
  REMOTE WITH CONNECTION `us.llm-connection`
  OPTIONS (ENDPOINT = 'gemini-1.5-flash-001');
