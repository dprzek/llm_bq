SELECT
   uri,
   ml_generate_text_llm_result as description
 FROM
   ML.GENERATE_TEXT(
     MODEL `your_set.modelgraphics`,
     TABLE `your_set.objects`,
      STRUCT(
       'What is in the picture?' AS PROMPT,
       TRUE AS FLATTEN_JSON_OUTPUT));
