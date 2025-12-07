@interface CDMDateTimeProtoSpanMatcher
+ (id)buildMatchingSpan:(id)span tokenChain:(id)chain;
+ (id)getCDMServiceAssetConfig;
- (CDMDateTimeProtoSpanMatcher)initWithDataDetectorPath:(id)path locale:(id)locale;
- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis;
@end

@implementation CDMDateTimeProtoSpanMatcher

+ (id)getCDMServiceAssetConfig
{
  v8[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(CDMServiceAssetConfig);
  v6 = @"data_detectors";
  v7 = @"com.apple.siri.nl.data_detectors";
  v3 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  [(CDMServiceAssetConfig *)v2 addCDMFactorToFoldersMapping:v4 forAssetSet:0];

  return v2;
}

- (id)matchSpansForTokenChain:(id)chain asrHypothesis:(id)hypothesis
{
  v39 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  v5 = os_signpost_id_generate(CDMLogContext);
  v6 = CDMLogContext;
  v7 = v6;
  v8 = v5 - 1;
  if (v5 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v6))
  {
    v9 = objc_opt_class();
    v10 = NSStringFromClass(v9);
    *buf = 138543362;
    v38 = v10;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v7, OS_SIGNPOST_INTERVAL_BEGIN, v5, "SpanMatcher", "%{public}@", buf, 0xCu);
  }

  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  string = [chainCopy string];

  if (string)
  {
    v29 = v5 - 1;
    v30 = v5;
    upDataDetectors = self->_upDataDetectors;
    string2 = [chainCopy string];
    v15 = [(UPDataDetectors *)upDataDetectors matchSpansForUtterance:string2];

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v16 = v15;
    v17 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v32 + 1) + 8 * i);
          v22 = [CDMDateTimeProtoSpanMatcher buildMatchingSpan:v21 tokenChain:chainCopy];
          v23 = MEMORY[0x1E69D1408];
          usoGraph = [v21 usoGraph];
          v25 = [v23 convertFromUsoGraph:usoGraph];

          [v22 setUsoGraph:v25];
          [v11 addObject:v22];
        }

        v18 = [v16 countByEnumeratingWithState:&v32 objects:v36 count:16];
      }

      while (v18);
    }

    v8 = v29;
    v5 = v30;
  }

  v26 = CDMLogContext;
  v27 = v26;
  if (v8 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v26))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1DC287000, v27, OS_SIGNPOST_INTERVAL_END, v5, "SpanMatcher", "", buf, 2u);
  }

  return v11;
}

- (CDMDateTimeProtoSpanMatcher)initWithDataDetectorPath:(id)path locale:(id)locale
{
  pathCopy = path;
  localeCopy = locale;
  v12.receiver = self;
  v12.super_class = CDMDateTimeProtoSpanMatcher;
  v8 = [(CDMDateTimeProtoSpanMatcher *)&v12 init];
  if (v8)
  {
    v9 = [objc_alloc(MEMORY[0x1E69D14B0]) initLoadFromDataDetectorsDirectoryPath:pathCopy forLocale:localeCopy];
    upDataDetectors = v8->_upDataDetectors;
    v8->_upDataDetectors = v9;
  }

  return v8;
}

+ (id)buildMatchingSpan:(id)span tokenChain:(id)chain
{
  v49 = *MEMORY[0x1E69E9840];
  spanCopy = span;
  chainCopy = chain;
  tokens = [chainCopy tokens];
  v8 = [tokens count];

  tokens2 = [chainCopy tokens];
  v10 = [tokens2 count];

  tokens3 = [chainCopy tokens];
  lastObject = [tokens3 lastObject];
  value = [lastObject value];

  range = [spanCopy range];
  string = [chainCopy string];
  if (range >= [string length])
  {
  }

  else
  {
    range2 = [spanCopy range];
    [spanCopy range];
    v18 = range2 + v17 - 1;
    string2 = [chainCopy string];
    v20 = [string2 length];

    if (v18 < v20)
    {
      v21 = [chainCopy tokenIndexFromCharacterIndex:{objc_msgSend(spanCopy, "range")}];
      range3 = [spanCopy range];
      [spanCopy range];
      v10 = [chainCopy tokenIndexFromCharacterIndex:range3 + v23 - 1] + 1;
      string3 = [chainCopy string];
      range4 = [spanCopy range];
      v27 = [string3 substringWithRange:{range4, v26}];

      value = v27;
      goto LABEL_8;
    }
  }

  v28 = CDMOSLoggerForCategory(0);
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
  {
    range5 = [spanCopy range];
    range6 = [spanCopy range];
    [spanCopy range];
    v38 = v37 + range6;
    string4 = [chainCopy string];
    *buf = 136315906;
    v42 = "+[CDMDateTimeProtoSpanMatcher buildMatchingSpan:tokenChain:]";
    v43 = 1024;
    v44 = range5;
    v45 = 1024;
    v46 = v38;
    v47 = 1024;
    v48 = [string4 length];
    _os_log_debug_impl(&dword_1DC287000, v28, OS_LOG_TYPE_DEBUG, "%s Forced DateTime span match to align with final token due to invalid DD match range start=<%u>, end=<%u> (exclusive), tokenChain string length=<%u>", buf, 0x1Eu);
  }

  v21 = (v8 - 1);
LABEL_8:
  category = [spanCopy category];
  range7 = [spanCopy range];
  range8 = [spanCopy range];
  [spanCopy range];
  LODWORD(v40) = 0;
  v33 = [CDMProtoSpanMatcherHelper buildMatchingSpanProtoWithLabel:category inputStringForDebug:value startTokenIndex:v21 endTokenIndex:v10 startCharIndex:range7 endCharIndex:(v32 + range8) spanMatcherName:v40];

  return v33;
}

@end