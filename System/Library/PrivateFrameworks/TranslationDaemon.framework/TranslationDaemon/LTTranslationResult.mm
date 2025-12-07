@interface LTTranslationResult
@end

@implementation LTTranslationResult

id __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 identifier];
  v6 = [v4 objectForKeyedSubscript:v5];

  if (v6)
  {
    v9 = objc_alloc_init(MEMORY[0x277CE1AB8]);
    v10 = [v6 identifier];
    [v9 setIdentifier:v10];

    v11 = [v6 range];
    [v9 setSourceRange:{v11, v12}];
    [v9 setShouldTranslate:{objc_msgSend(v6, "shouldTranslate")}];
    v13 = [v3 range];
    [v9 setTargetRange:{v13, v14}];
    v15 = *(a1 + 40);
    v16 = [v3 range];
    v18 = [v15 substringWithRange:{v16, v17}];
    [v9 setText:v18];

    v21 = _LTOSLogTranslationEngine(v19, v20);
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      v22 = v21;
      v23 = [v6 range];
      [v6 range];
      v25 = v24;
      v26 = *(a1 + 40);
      v27 = [v9 text];
      v30 = 134218755;
      v31 = v23;
      v32 = 2048;
      v33 = v25;
      v34 = 2117;
      v35 = v26;
      v36 = 2117;
      v37 = v27;
      _os_log_debug_impl(&dword_232E53000, v22, OS_LOG_TYPE_DEBUG, "Creating alignment from range (%zul, %zul) in text %{sensitive}@ with substring %{sensitive}@", &v30, 0x2Au);
    }
  }

  else
  {
    v28 = _LTOSLogTranslationEngine(v7, v8);
    if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
    {
      __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke_cold_1(v28, v3);
    }

    v9 = 0;
  }

  return v9;
}

id __98___LTTranslationResult_Osprey__initWithOspreySpeechTranslationMTResponse_sourceText_censorSpeech___block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE1BF8];
  v4 = a2;
  v5 = [v3 alloc];
  v6 = [*(a1 + 32) locale];
  v7 = [v5 initWithOspreyMtResponsePhrase:v4 locale:v6 censorSpeech:*(a1 + 40)];

  return v7;
}

id __55___LTTranslationResult_Osprey__initWithOspreyResponse___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CE1BF8];
  v3 = a2;
  v4 = [[v2 alloc] initWithOspreyPhrase:v3];

  return v4;
}

uint64_t __73___LTTranslationResult_Osprey__updateAlignmentWithSourceSpan_targetSpan___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 targetRange];
  if (v6 == [v5 targetRange])
  {
    v7 = 0;
  }

  else
  {
    v8 = [v4 targetRange];
    if (v8 < [v5 targetRange])
    {
      v7 = -1;
    }

    else
    {
      v7 = 1;
    }
  }

  return v7;
}

void __82___LTTranslationResult_Daemon__updateAlignmentWithSourceSpans_offlineTargetSpans___block_invoke_cold_1(void *a1, void *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = a1;
  v4 = [a2 identifier];
  v5 = 138543362;
  v6 = v4;
  _os_log_fault_impl(&dword_232E53000, v3, OS_LOG_TYPE_FAULT, "Unexpectedly got target span with identifier '%{public}@' that doesn't correspond to any source span identifier; ignoring span", &v5, 0xCu);
}

@end