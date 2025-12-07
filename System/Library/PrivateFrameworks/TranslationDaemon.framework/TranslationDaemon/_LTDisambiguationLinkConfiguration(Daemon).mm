@interface _LTDisambiguationLinkConfiguration(Daemon)
+ (id)_linkConfigurationWithSourceRange:()Daemon targetRange:unvalidatedAdjacencyList:expectedNumberOfEdges:;
+ (id)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:;
+ (id)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:;
@end

@implementation _LTDisambiguationLinkConfiguration(Daemon)

+ (id)_linkConfigurationWithSourceRange:()Daemon targetRange:unvalidatedAdjacencyList:expectedNumberOfEdges:
{
  v24 = *MEMORY[0x277D85DE8];
  v13 = a7;
  v14 = [v13 count];
  if (v14 == a8)
  {
    v16 = [objc_alloc(MEMORY[0x277CE1AF0]) initWithSourceRange:a3 targetRange:a4 unvalidatedAdjacencyList:{a5, a6, v13}];
  }

  else
  {
    v17 = _LTOSLogDisambiguation(v14, v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = v17;
      v20 = 134218240;
      v21 = [v13 count];
      v22 = 2048;
      v23 = a8;
      _os_log_impl(&dword_232E53000, v18, OS_LOG_TYPE_INFO, "Only %zu out of %zu edges were valid, won't create a link for this selectionSpan", &v20, 0x16u);
    }

    v16 = 0;
  }

  return v16;
}

+ (id)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (objc_opt_respondsToSelector())
  {
    alternatives = [v8 alternatives];
    v12 = alternatives;
    v13 = MEMORY[0x277CBEBF8];
    if (alternatives)
    {
      v13 = alternatives;
    }

    v14 = v13;

    v15 = [v14 _ltCompactMap:&__block_literal_global_9];
    source = [v8 source];
    v18 = [v9 lt_codeUnitsRangeFromCodePointsRange:{source, v17}];
    if (v18 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = _LTOSLogDisambiguation(0x7FFFFFFFFFFFFFFFLL, v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithEMTSelectionSpan:v20 sourceText:v8 targetText:?];
      }

      v21 = 0;
    }

    else
    {
      v22 = v18;
      v23 = v19;
      v34 = v15;
      projection = [v8 projection];
      v26 = [v10 lt_codeUnitsRangeFromCodePointsRange:{projection, v25}];
      if (v26 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = _LTOSLogDisambiguation(0x7FFFFFFFFFFFFFFFLL, v27);
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithEMTSelectionSpan:v28 sourceText:v8 targetText:?];
        }

        v21 = 0;
      }

      else
      {
        v29 = v26;
        v30 = v27;
        v31 = [v14 count];
        v32 = v29;
        v15 = v34;
        v21 = [self _linkConfigurationWithSourceRange:v22 targetRange:v23 unvalidatedAdjacencyList:v32 expectedNumberOfEdges:{v30, v34, v31}];
      }
    }
  }

  else
  {
    v21 = 0;
  }

  return v21;
}

+ (id)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  alternatives = [v10 alternatives];
  v15 = alternatives;
  v16 = MEMORY[0x277CBEBF8];
  if (alternatives)
  {
    v16 = alternatives;
  }

  v17 = v16;

  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __118___LTDisambiguationLinkConfiguration_Daemon__linkConfigurationWithFTSelectionSpan_descriptions_sourceText_targetText___block_invoke;
  v51[3] = &unk_2789B6050;
  v52 = v11;
  v18 = v11;
  v19 = [v17 _ltCompactMap:v51];
  source_range = [v10 source_range];
  v22 = source_range;
  if (source_range)
  {
    selfCopy = self;
    v49 = v13;
    start = [source_range start];
    v24 = [v22 length];
    v25 = [v12 lt_codeUnitsRangeFromCodePointsRange:{start, v24}];
    if (v25 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v48 = v17;
      v27 = v19;
      v28 = v18;
      v29 = _LTOSLogDisambiguation(0x7FFFFFFFFFFFFFFFLL, v26);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithFTSelectionSpan:v29 descriptions:start sourceText:v24 targetText:?];
      }

      v30 = 0;
      v18 = v28;
      v19 = v27;
      v17 = v48;
      goto LABEL_22;
    }

    v32 = v25;
    v33 = v26;
    projection_ranges = [v10 projection_ranges];
    firstObject = [projection_ranges firstObject];

    if (!firstObject)
    {
      v43 = _LTOSLogDisambiguation(v36, v37);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_232E53000, v43, OS_LOG_TYPE_INFO, "Can't get target range on selectionSpan; won't create link", buf, 2u);
      }

      v30 = 0;
      v13 = v49;
      goto LABEL_21;
    }

    v46 = v18;
    start2 = [firstObject start];
    v39 = [firstObject length];
    v45 = start2;
    v40 = [v49 lt_codeUnitsRangeFromCodePointsRange:{start2, v39}];
    if (v40 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v42 = _LTOSLogDisambiguation(0x7FFFFFFFFFFFFFFFLL, v41);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        v13 = v49;
        [_LTDisambiguationLinkConfiguration(Daemon) linkConfigurationWithFTSelectionSpan:v42 descriptions:v45 sourceText:v39 targetText:?];
        v30 = 0;
        goto LABEL_20;
      }

      v30 = 0;
    }

    else
    {
      v30 = [selfCopy _linkConfigurationWithSourceRange:v32 targetRange:v33 unvalidatedAdjacencyList:v40 expectedNumberOfEdges:{v41, v19, objc_msgSend(v17, "count")}];
    }

    v13 = v49;
LABEL_20:
    v18 = v46;
LABEL_21:

    goto LABEL_22;
  }

  v31 = _LTOSLogDisambiguation(0, v21);
  if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_232E53000, v31, OS_LOG_TYPE_INFO, "No source range set on selectionSpan; won't create link", buf, 2u);
  }

  v30 = 0;
LABEL_22:

  return v30;
}

+ (void)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:.cold.1(void *a1, void *a2)
{
  v3 = a1;
  v10.location = [a2 projection];
  NSStringFromRange(v10);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Code points target range: %{public}@ cannot be converted to NSString code units target range, target text length: %zu", v6, v7, v8, v9);
}

+ (void)linkConfigurationWithEMTSelectionSpan:()Daemon sourceText:targetText:.cold.2(void *a1, void *a2)
{
  v3 = a1;
  v10.location = [a2 source];
  NSStringFromRange(v10);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_1_1(&dword_232E53000, v4, v5, "Code points source range: %{public}@ cannot be converted to NSString code units source range, source text length: %zu", v6, v7, v8, v9);
}

+ (void)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:.cold.1(void *a1, NSUInteger a2, void *a3)
{
  v5 = a1;
  v12.location = a2;
  v12.length = a3;
  NSStringFromRange(v12);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_1(&dword_232E53000, v6, v7, "Code points target range: %{public}@ cannot be converted to NSString code units target range, target text length: %zu", v8, v9, v10, v11);
}

+ (void)linkConfigurationWithFTSelectionSpan:()Daemon descriptions:sourceText:targetText:.cold.2(void *a1, NSUInteger a2, void *a3)
{
  v5 = a1;
  v12.location = a2;
  v12.length = a3;
  NSStringFromRange(v12);
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_1(&dword_232E53000, v6, v7, "Code points source range: %{public}@ cannot be converted to NSString code units source range, source text length: %zu", v8, v9, v10, v11);
}

@end