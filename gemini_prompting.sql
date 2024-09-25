SELECT
   uri,
   ml_generate_text_llm_result as description
 FROM
   ML.GENERATE_TEXT(
     MODEL `gemini_vision.gemini_pro_vision_model`,
     TABLE `gemini_vision.jpg_objects3`,
      STRUCT(
       'What is in the picture?' AS PROMPT,
       TRUE AS FLATTEN_JSON_OUTPUT));