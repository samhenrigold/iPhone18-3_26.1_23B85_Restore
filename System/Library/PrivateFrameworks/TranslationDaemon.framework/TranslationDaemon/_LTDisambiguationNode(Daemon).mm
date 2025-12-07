@interface _LTDisambiguationNode(Daemon)
+ (id)_nodeWithText:()Daemon links:numberOfSelectionSpans:romanization:;
+ (id)nodeFromEMTResult:()Daemon sourceText:romanization:;
+ (id)nodeFromFTSpeechTranslationPhrase:()Daemon descriptions:sourceText:censorSpeech:;
+ (id)nodeFromFTTranslationPhrase:()Daemon descriptions:sourceText:;
+ (id)nodeFromOspreyBatchPhrase:()Daemon descriptions:sourceText:;
@end

@implementation _LTDisambiguationNode(Daemon)

+ (id)_nodeWithText:()Daemon links:numberOfSelectionSpans:romanization:
{
  v34 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a6;
  isGenderDisambiguationEnabled = [MEMORY[0x277CE1AE0] isGenderDisambiguationEnabled];
  if ((isGenderDisambiguationEnabled & 1) == 0)
  {
    v23 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v13);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      LOWORD(v30) = 0;
      v24 = "Not attempting to parse disambiguation objects because the feature flag is disabled";
LABEL_22:
      _os_log_impl(&dword_232E53000, v23, OS_LOG_TYPE_INFO, v24, &v30, 2u);
    }

LABEL_23:
    v28 = 0;
    goto LABEL_24;
  }

  if (!a5)
  {
    v14 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v13);
    isGenderDisambiguationEnabled = os_log_type_enabled(v14, OS_LOG_TYPE_ERROR);
    if (isGenderDisambiguationEnabled)
    {
      [_LTDisambiguationNode(Daemon) _nodeWithText:v14 links:? numberOfSelectionSpans:? romanization:?];
      if (v9)
      {
        goto LABEL_5;
      }

LABEL_20:
      v23 = _LTOSLogDisambiguation(isGenderDisambiguationEnabled, v13);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(v30) = 0;
        v24 = "Got nil translation phrase source text; won't create _LTDisambiguationNode";
        goto LABEL_22;
      }

      goto LABEL_23;
    }
  }

  if (!v9)
  {
    goto LABEL_20;
  }

LABEL_5:
  v15 = [v10 count];
  if (v15 != a5)
  {
    v17 = _LTOSLogDisambiguation(v15, v16);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v30 = 134218240;
      v31 = [v10 count];
      v32 = 2048;
      v33 = a5;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, "Only %zu out of %zu link configurations were valid; not adding any links to this disambiguable node", &v30, 0x16u);
    }

    v10 = MEMORY[0x277CBEBF8];
  }

  v19 = v11;
  v21 = v19;
  if (v19 && (v19 = [v19 length]) == 0)
  {

    v27 = _LTOSLogTranslationEngine(v25, v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEBUG))
    {
      [_LTDisambiguationNode(Daemon) _nodeWithText:v27 links:? numberOfSelectionSpans:? romanization:?];
    }

    v21 = 0;
  }

  else
  {
    v22 = _LTOSLogTranslationEngine(v19, v20);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      [_LTDisambiguationNode(Daemon) _nodeWithText:v21 links:v22 numberOfSelectionSpans:? romanization:?];
    }
  }

  v28 = [objc_alloc(MEMORY[0x277CE1AF8]) initWithText:v9 links:v10 romanization:v21];

LABEL_24:

  return v28;
}

+ (id)nodeFromEMTResult:()Daemon sourceText:romanization:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_respondsToSelector();
  if (v11)
  {
    alternativeSelectionSpans = [v8 alternativeSelectionSpans];
    tokens = [v8 tokens];
    v15 = [tokens _ltCompactMap:&__block_literal_global_10];

    v16 = [v15 componentsJoinedByString:@" "];
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __75___LTDisambiguationNode_Daemon__nodeFromEMTResult_sourceText_romanization___block_invoke_2;
    v25 = &unk_2789B6098;
    v26 = v9;
    v27 = v16;
    v17 = v16;
    v18 = [alternativeSelectionSpans _ltCompactMap:&v22];
    v19 = [self _nodeWithText:v17 links:v18 numberOfSelectionSpans:objc_msgSend(alternativeSelectionSpans romanization:{"count", v22, v23, v24, v25), v10}];
  }

  else
  {
    v20 = _LTOSLogDisambiguation(v11, v12);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [_LTDisambiguationNode(Daemon) nodeFromEMTResult:v20 sourceText:? romanization:?];
    }

    v19 = 0;
  }

  return v19;
}

+ (id)nodeFromFTSpeechTranslationPhrase:()Daemon descriptions:sourceText:censorSpeech:
{
  v10 = a4;
  v11 = a5;
  v12 = a3;
  meta_info_data = [v12 meta_info_data];
  selection_spans = [meta_info_data selection_spans];

  translation_phrase = [v12 translation_phrase];
  meta_info_data2 = [v12 meta_info_data];

  romanization = [meta_info_data2 romanization];

  if (a6 && (v18 = [MEMORY[0x277CE1BE8] stringContainsRedaction:translation_phrase], v18))
  {
    v20 = _LTOSLogDisambiguation(v18, v19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_232E53000, v20, OS_LOG_TYPE_DEFAULT, "Removing all potential links from node because the target string appears to have redactions, and we don't currently support redactions and disambiguation in the same sentence", buf, 2u);
    }

    v21 = [self _nodeWithText:translation_phrase links:MEMORY[0x277CBEBF8] numberOfSelectionSpans:0 romanization:0];
  }

  else
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __104___LTDisambiguationNode_Daemon__nodeFromFTSpeechTranslationPhrase_descriptions_sourceText_censorSpeech___block_invoke;
    v25[3] = &unk_2789B60C0;
    v26 = v10;
    v27 = v11;
    v22 = translation_phrase;
    v28 = v22;
    v23 = [selection_spans _ltCompactMap:v25];
    v21 = [self _nodeWithText:v22 links:v23 numberOfSelectionSpans:objc_msgSend(selection_spans romanization:{"count"), romanization}];
  }

  return v21;
}

+ (id)nodeFromFTTranslationPhrase:()Daemon descriptions:sourceText:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  meta_info_data = [v10 meta_info_data];
  selection_spans = [meta_info_data selection_spans];

  lt_formattedString = [v10 lt_formattedString];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __85___LTDisambiguationNode_Daemon__nodeFromFTTranslationPhrase_descriptions_sourceText___block_invoke;
  v22[3] = &unk_2789B60C0;
  v23 = v8;
  v24 = v9;
  v25 = lt_formattedString;
  v14 = lt_formattedString;
  v15 = v9;
  v16 = v8;
  v17 = [selection_spans _ltCompactMap:v22];
  meta_info_data2 = [v10 meta_info_data];

  romanization = [meta_info_data2 romanization];

  v20 = [self _nodeWithText:v14 links:v17 numberOfSelectionSpans:objc_msgSend(selection_spans romanization:{"count"), romanization}];

  return v20;
}

+ (id)nodeFromOspreyBatchPhrase:()Daemon descriptions:sourceText:
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  meta_info_data = [v10 meta_info_data];
  selection_spans = [meta_info_data selection_spans];

  translation_phrase = [v10 translation_phrase];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __83___LTDisambiguationNode_Daemon__nodeFromOspreyBatchPhrase_descriptions_sourceText___block_invoke;
  v22[3] = &unk_2789B60C0;
  v23 = v8;
  v24 = v9;
  v25 = translation_phrase;
  v14 = translation_phrase;
  v15 = v9;
  v16 = v8;
  v17 = [selection_spans _ltCompactMap:v22];
  meta_info_data2 = [v10 meta_info_data];

  romanization = [meta_info_data2 romanization];

  v20 = [self _nodeWithText:v14 links:v17 numberOfSelectionSpans:objc_msgSend(selection_spans romanization:{"count"), romanization}];

  return v20;
}

+ (void)_nodeWithText:()Daemon links:numberOfSelectionSpans:romanization:.cold.3(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138739971;
  v3 = a1;
  _os_log_debug_impl(&dword_232E53000, a2, OS_LOG_TYPE_DEBUG, "Setting romanization from meta_info_data: %{sensitive}@", &v2, 0xCu);
}

@end