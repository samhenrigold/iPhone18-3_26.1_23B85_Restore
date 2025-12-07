@interface NSMutableAttributedString(DataDetectorsSupport)
- (uint64_t)dd_urlifyClientRange:()DataDetectorsSupport index:context:;
- (uint64_t)dd_urlifyResult:()DataDetectorsSupport withBlock:referenceDate:context:;
- (void)dd_appendUrl:()DataDetectorsSupport context:range:backedAttributes:;
- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:;
- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:range:;
- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:;
- (void)dd_replaceResultAttributesWithSimpleLinksForTypes:()DataDetectorsSupport context:;
- (void)dd_resetResults:()DataDetectorsSupport;
@end

@implementation NSMutableAttributedString(DataDetectorsSupport)

- (void)dd_resetResults:()DataDetectorsSupport
{
  v30 = *MEMORY[0x277D85DE8];
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 0;
  v5 = [self length];
  v6 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:8];
  v7 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:3];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __67__NSMutableAttributedString_DataDetectorsSupport__dd_resetResults___block_invoke;
  v19[3] = &unk_278291638;
  v8 = v6;
  v20 = v8;
  v9 = v7;
  v24 = a3;
  selfCopy = self;
  v23 = &v25;
  v21 = v9;
  [self enumerateAttributesInRange:0 options:v5 usingBlock:{0, v19}];
  if ((a3 & 1) == 0)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    if (qword_280B12328 != -1)
    {
      [NSMutableAttributedString(DataDetectorsSupport) dd_resetResults:];
    }

    v14 = v9;
    v10 = _MergedGlobals_12;
    v11 = [v10 countByEnumeratingWithState:&v15 objects:v29 count:16];
    if (v11)
    {
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(v10);
          }

          [self enumerateAttribute:? inRange:? options:? usingBlock:?];
        }

        v11 = [v10 countByEnumeratingWithState:&v15 objects:v29 count:16];
      }

      while (v11);
    }

    v9 = v14;
  }

  if (*(v26 + 24) == 1)
  {
    [self endEditing];
  }

  _Block_object_dispose(&v25, 8);
}

- (void)dd_appendUrl:()DataDetectorsSupport context:range:backedAttributes:
{
  v12 = a3;
  v13 = a4;
  v14 = a7;
  v15 = [MEMORY[0x277CBEB38] dictionaryWithObject:v12 forKey:*MEMORY[0x277D740E8]];
  v16 = v15;
  if (v13)
  {
    [v15 setObject:v13 forKeyedSubscript:@"DDContext"];
  }

  [self addAttributes:v16 range:{a5, a6}];
  if ([v14 count])
  {
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __95__NSMutableAttributedString_DataDetectorsSupport__dd_appendUrl_context_range_backedAttributes___block_invoke;
    v17[3] = &unk_278291688;
    v18 = v12;
    v19 = v14;
    selfCopy = self;
    [self enumerateAttributesInRange:a5 options:a6 usingBlock:{0, v17}];
  }
}

- (uint64_t)dd_urlifyResult:()DataDetectorsSupport withBlock:referenceDate:context:
{
  v42[2] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v35 = a6;
  [v10 coreResult];
  RangeForURLification = DDResultGetRangeForURLification();
  v15 = v14;
  defaultTimeZone = [MEMORY[0x277CBEBB0] defaultTimeZone];
  v17 = [self length];
  v43.location = RangeForURLification;
  v43.length = v15;
  v45.location = 0;
  v45.length = v17;
  if (NSIntersectionRange(v43, v45) == __PAIR128__(v15, RangeForURLification))
  {
    v37 = 0;
    v38 = &v37;
    v39 = 0x2020000000;
    v40 = 0;
    v18 = *MEMORY[0x277D740E8];
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __99__NSMutableAttributedString_DataDetectorsSupport__dd_urlifyResult_withBlock_referenceDate_context___block_invoke;
    v36[3] = &unk_2782916B0;
    v36[4] = self;
    v36[5] = &v37;
    [self enumerateAttribute:v18 inRange:RangeForURLification options:v15 usingBlock:{0, v36}];
    if (v38[3])
    {
      v19 = 0;
LABEL_28:
      _Block_object_dispose(&v37, 8);
      goto LABEL_29;
    }

    rangeForURLification = [MEMORY[0x277CCACA8] stringWithFormat:@"%@/%lu", @"embedded-result", RangeForURLification];
    coreResult = [v10 coreResult];
    v21 = v11[2](v11, coreResult, rangeForURLification, v12, defaultTimeZone);
    if (v21)
    {
      v22 = [MEMORY[0x277CBEBC0] dd_URLWithPotentiallyInvalidURLString:v21];
LABEL_9:
      v23 = v22;
      if (v22 && (dd_urlLooksSuspicious(v22) & 1) == 0)
      {
        if (DDShouldUseLightLinksForResult())
        {
          v25 = *MEMORY[0x277D741E8];
          v42[0] = *MEMORY[0x277D741F0];
          v42[1] = v25;
          v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:2];
        }

        else
        {
          mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
          bundleIdentifier = [mainBundle bundleIdentifier];
          if ([bundleIdentifier isEqualToString:@"com.apple.mobilenotes"])
          {
            v28 = *MEMORY[0x277D741E8];
            v41[0] = *MEMORY[0x277D740C0];
            v41[1] = v28;
            v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
            v30 = bundleIdentifier;
            v26 = v29;
          }

          else
          {
            v30 = bundleIdentifier;
            v26 = 0;
          }
        }

        [self dd_appendUrl:v23 context:v35 range:RangeForURLification backedAttributes:{v15, v26}];

        v19 = 1;
      }

      else
      {
        v19 = 0;
      }

      goto LABEL_27;
    }

    if (DDResultHasType())
    {
      v24 = [v35 objectForKeyedSubscript:@"IncludeMoney"];
      if ([v24 BOOLValue])
      {

        goto LABEL_20;
      }

      v31 = [DDConversionAction actionAvailableForResult:coreResult];

      if (v31)
      {
LABEL_20:
        v21 = DDInternalURLStringForResultIdentifier();
        if (v21)
        {
          v22 = [MEMORY[0x277CBEBC0] URLWithString:v21];
          goto LABEL_9;
        }

LABEL_23:
        v23 = 0;
        v19 = 0;
LABEL_27:

        goto LABEL_28;
      }
    }

    v21 = 0;
    goto LABEL_23;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v44.location = RangeForURLification;
    v44.length = v15;
    [NSMutableAttributedString(DataDetectorsSupport) dd_urlifyResult:v10 withBlock:v44 referenceDate:0 context:v17];
  }

  v19 = 0;
LABEL_29:

  return v19;
}

- (uint64_t)dd_urlifyClientRange:()DataDetectorsSupport index:context:
{
  v26[2] = *MEMORY[0x277D85DE8];
  v10 = a6;
  v11 = [self length];
  v27.location = a3;
  v27.length = a4;
  v29.location = 0;
  v29.length = v11;
  if (NSIntersectionRange(v27, v29) == __PAIR128__(a4, a3))
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 0;
    v12 = *MEMORY[0x277D740E8];
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __86__NSMutableAttributedString_DataDetectorsSupport__dd_urlifyClientRange_index_context___block_invoke;
    v21[3] = &unk_2782916D8;
    v21[4] = &v22;
    [self enumerateAttribute:v12 inRange:a3 options:a4 usingBlock:{0, v21}];
    v13 = *(v23 + 24);
    if ((v13 & 1) == 0)
    {
      v14 = MEMORY[0x277CBEBC0];
      v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%lu", @"x-apple-data-detectors-clientdefined", a5];
      v16 = [v14 URLWithString:v15];

      v17 = *MEMORY[0x277D741E8];
      v26[0] = *MEMORY[0x277D741F0];
      v26[1] = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];
      [self dd_appendUrl:v16 context:v10 range:a3 backedAttributes:{a4, v18}];
    }

    v19 = v13 ^ 1u;
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
    {
      v28.location = a3;
      v28.length = a4;
      [NSMutableAttributedString(DataDetectorsSupport) dd_urlifyClientRange:v28 index:0 context:v11];
    }

    v19 = 0;
  }

  return v19;
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:
{
  v49 = *MEMORY[0x277D85DE8];
  v35 = a4;
  v11 = a5;
  v12 = [v11 objectForKeyedSubscript:@"CoreSpotlightUniqueIdentifier"];
  if (v12)
  {
    v13 = DDTrackEventCreationInHostApplication(0);
  }

  else
  {
    v13 = 0;
  }

  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__4;
  v46 = __Block_byref_object_dispose__4;
  v47 = 0;
  if (a6 != 0x7FFFFFFFFFFFFFFFLL && a7)
  {
    v14 = [self length];
    if (a6 > v14 || a6 + a7 > v14)
    {
      v26 = v14;
      v27 = MEMORY[0x277D86220];
      v28 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
      {
        v50.location = a6;
        v50.length = a7;
        v29 = NSStringFromRange(v50);
        [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:v29 usingURLificationBlock:buf context:v26 range:?];
      }
    }

    else
    {
      v15 = [v11 objectForKey:@"ReferenceDate"];
      v16 = *MEMORY[0x277D041D8];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __129__NSMutableAttributedString_DataDetectorsSupport__dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___block_invoke;
      v36[3] = &unk_278291700;
      v36[4] = self;
      v39 = v35;
      v34 = v15;
      v37 = v34;
      v17 = v11;
      v41 = v13;
      v38 = v17;
      v40 = &v42;
      [self enumerateAttribute:v16 inRange:a6 options:a7 usingBlock:{0, v36}];
      v18 = [v17 objectForKeyedSubscript:@"CustomActionRanges"];
      if (v18)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v19 = [v18 count];
          if (v19)
          {
            for (i = 0; i != v19; ++i)
            {
              v21 = [v18 objectAtIndexedSubscript:{i, v34}];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                rangeValue = [v21 rangeValue];
                if (rangeValue != 0x7FFFFFFFFFFFFFFFLL)
                {
                  if (v22)
                  {
                    [self dd_urlifyClientRange:rangeValue index:v22 context:{i, v17}];
                  }
                }
              }
            }
          }
        }
      }

      if (v13)
      {
        v24 = [dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache objectForKey:v12];
        v25 = v24 == 0;

        if (v25)
        {
          [v43[5] enumerateObjectsUsingBlock:&__block_literal_global_12];
          v30 = dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache;
          if (!dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache)
          {
            v31 = objc_alloc_init(MEMORY[0x277CBEA78]);
            v32 = dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache;
            dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache = v31;

            v30 = dd_makeLinksForResultsInAttributesOfType_usingURLificationBlock_context_range___trackedCoreSpotlightUniqueIdentifiersCache;
          }

          null = [MEMORY[0x277CBEB68] null];
          [v30 setObject:null forKey:v12];
        }

        else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
        {
          [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:usingURLificationBlock:context:range:];
        }
      }

      v27 = v34;
    }
  }

  _Block_object_dispose(&v42, 8);
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:
{
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:context:];
  }

  v7 = [DDOperation urlificationBlockForTypes:a3];
  [self dd_makeLinksForResultsInAttributesOfType:a3 usingURLificationBlock:v7 context:v6 range:{0, objc_msgSend(self, "length")}];
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:range:
{
  v10 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableAttributedString(DataDetectorsSupport) dd_makeLinksForResultsInAttributesOfType:context:];
  }

  v11 = [DDOperation urlificationBlockForTypes:a3];
  [self dd_makeLinksForResultsInAttributesOfType:a3 usingURLificationBlock:v11 context:v10 range:{a5, a6}];
}

- (void)dd_replaceResultAttributesWithSimpleLinksForTypes:()DataDetectorsSupport context:
{
  v6 = a4;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEBUG))
  {
    [NSMutableAttributedString(DataDetectorsSupport) dd_replaceResultAttributesWithSimpleLinksForTypes:context:];
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __109__NSMutableAttributedString_DataDetectorsSupport__dd_replaceResultAttributesWithSimpleLinksForTypes_context___block_invoke;
  v7[3] = &__block_descriptor_40_e229___NSString_40__0____DDResult____CFRuntimeBase_QAQ____DDQueryRange____DDQueryOffset_b16b16b32____DDQueryOffset_b16b16b32_____qq_q____CFArray_____CFString_____CFString__v____CFDictionary_qCf_8__NSString_16__NSDate_24__NSTimeZone_32l;
  v7[4] = a3;
  [self dd_makeLinksForResultsInAttributesOfType:a3 usingURLificationBlock:v7 context:v6 range:{0, objc_msgSend(self, "length")}];
  [self removeAttribute:*MEMORY[0x277D041D8] range:{0, objc_msgSend(self, "length")}];
}

- (void)dd_urlifyResult:()DataDetectorsSupport withBlock:referenceDate:context:.cold.1(int a1, NSRange range, NSUInteger a3, NSUInteger a4)
{
  v14 = *MEMORY[0x277D85DE8];
  v6 = NSStringFromRange(range);
  v15.location = a3;
  v15.length = a4;
  v7 = NSStringFromRange(v15);
  OUTLINED_FUNCTION_2_4();
  v11 = v6;
  v12 = v8;
  v13 = v9;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Bad result %@: its range %@ is not completely included in the range %@ of the string it is attached to", v10, 0x20u);
}

- (void)dd_urlifyClientRange:()DataDetectorsSupport index:context:.cold.1(NSRange a1, NSUInteger a2, NSUInteger a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = NSStringFromRange(a1);
  v12.location = a2;
  v12.length = a3;
  v6 = NSStringFromRange(v12);
  v7 = 138412546;
  v8 = v5;
  v9 = 2112;
  v10 = v6;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Bad custom client range %@ not completely included in the range %@ of the string it is attached to", &v7, 0x16u);
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport usingURLificationBlock:context:range:.cold.2(void *a1, uint8_t *buf, uint64_t a3)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2048;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "dd_makeLinksForResults called with an invalid range %@ (self length = %lu))", buf, 0x16u);
}

- (void)dd_makeLinksForResultsInAttributesOfType:()DataDetectorsSupport context:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

- (void)dd_replaceResultAttributesWithSimpleLinksForTypes:()DataDetectorsSupport context:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
}

@end