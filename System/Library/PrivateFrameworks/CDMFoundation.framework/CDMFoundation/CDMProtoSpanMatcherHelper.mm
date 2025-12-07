@interface CDMProtoSpanMatcherHelper
+ (BOOL)isTrailingSpanAdjacent:(id)adjacent secondSpan:(id)span tokenChain:(id)chain;
+ (id)buildMatchingSpanProtoWithLabel:(id)label inputStringForDebug:(id)debug startTokenIndex:(unsigned int)index endTokenIndex:(unsigned int)tokenIndex spanMatcherName:(int)name;
+ (id)buildMatchingSpanProtoWithLabel:(id)label inputStringForDebug:(id)debug startTokenIndex:(unsigned int)index endTokenIndex:(unsigned int)tokenIndex startCharIndex:(unsigned int)charIndex endCharIndex:(unsigned int)endCharIndex spanMatcherName:(int)name;
+ (id)buildUsoEntitySpan:(id)span semantic:(id)semantic nodeIndex:(int)index startIndex:(unsigned int)startIndex endIndex:(unsigned int)endIndex tokenCount:(unsigned int)count;
+ (id)buildUsoIdentifier:(id)identifier semantic:(id)semantic nodeIndex:(int)index;
+ (id)buildUtteranceAlignments:(unsigned int)alignments endCharIndex:(unsigned int)index nodeIndex:(int)nodeIndex;
+ (void)enumerateTokenChain:(id)chain useNormalizedValues:(BOOL)values withCallback:(id)callback;
@end

@implementation CDMProtoSpanMatcherHelper

+ (BOOL)isTrailingSpanAdjacent:(id)adjacent secondSpan:(id)span tokenChain:(id)chain
{
  adjacentCopy = adjacent;
  spanCopy = span;
  chainCopy = chain;
  endTokenIndex = [adjacentCopy endTokenIndex];
  if (endTokenIndex == [spanCopy startTokenIndex])
  {
    goto LABEL_2;
  }

  endTokenIndex2 = [adjacentCopy endTokenIndex];
  if (endTokenIndex2 > [spanCopy startTokenIndex] || (v13 = objc_msgSend(adjacentCopy, "endTokenIndex"), objc_msgSend(chainCopy, "tokens"), v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "count"), v14, v15 == v13))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  endTokenIndex3 = [adjacentCopy endTokenIndex];
  tokens = [chainCopy tokens];
  if ([tokens count] < endTokenIndex3)
  {

    goto LABEL_13;
  }

  startTokenIndex = [spanCopy startTokenIndex];
  tokens2 = [chainCopy tokens];
  v20 = [tokens2 count];

  if (v20 <= startTokenIndex)
  {
    goto LABEL_13;
  }

  LODWORD(v21) = [adjacentCopy endTokenIndex];
  if (v21 >= [spanCopy startTokenIndex])
  {
LABEL_2:
    v11 = 1;
    goto LABEL_14;
  }

  v21 = v21;
  do
  {
    tokens3 = [chainCopy tokens];
    v23 = [tokens3 objectAtIndexedSubscript:v21];
    isSignificant = [v23 isSignificant];

    if (isSignificant)
    {
      break;
    }

    ++v21;
  }

  while ([spanCopy startTokenIndex] > v21);
  v11 = isSignificant ^ 1;
LABEL_14:

  return v11;
}

+ (id)buildUtteranceAlignments:(unsigned int)alignments endCharIndex:(unsigned int)index nodeIndex:(int)nodeIndex
{
  if (nodeIndex)
  {
    v5 = *&nodeIndex;
    v6 = *&index;
    v7 = *&alignments;
    v8 = objc_alloc_init(MEMORY[0x1E69D1268]);
    v9 = objc_alloc_init(MEMORY[0x1E69D1270]);
    [v9 setStartIndex:v7];
    [v9 setEndIndex:v6];
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
    [v8 setSpans:v10];

    [v8 setNodeIndex:v5];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (id)buildUsoEntitySpan:(id)span semantic:(id)semantic nodeIndex:(int)index startIndex:(unsigned int)startIndex endIndex:(unsigned int)endIndex tokenCount:(unsigned int)count
{
  if (index)
  {
    v8 = *&count;
    v9 = *&endIndex;
    v10 = *&startIndex;
    v11 = *&index;
    v13 = MEMORY[0x1E69D1258];
    semanticCopy = semantic;
    spanCopy = span;
    v16 = objc_alloc_init(v13);
    [v16 setNodeIndex:v11];
    v17 = objc_alloc_init(MEMORY[0x1E69D1200]);
    [v17 setKey:spanCopy];

    v18 = objc_alloc_init(MEMORY[0x1E69D1128]);
    [v18 setValue:semanticCopy];

    [v17 setValueString:v18];
    [v16 addProperties:v17];
    [v16 setSourceComponent:2];
    v19 = objc_alloc_init(MEMORY[0x1E69D1128]);
    [v19 setValue:*MEMORY[0x1E69D23F8]];
    [v16 setOriginAppId:v19];
    v20 = objc_alloc_init(MEMORY[0x1E69D1130]);
    [v20 setValue:v10];
    [v16 setStartIndex:v20];
    v21 = objc_alloc_init(MEMORY[0x1E69D1130]);
    [v21 setValue:v9];
    [v16 setEndIndex:v21];
    v22 = objc_alloc_init(MEMORY[0x1E69D1188]);
    v23 = objc_alloc_init(MEMORY[0x1E69D1130]);
    [v23 setValue:v8];
    [v22 setMatchedTokenCount:v23];
    [v16 setMatchInfo:v22];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

+ (id)buildUsoIdentifier:(id)identifier semantic:(id)semantic nodeIndex:(int)index
{
  if (index)
  {
    v5 = *&index;
    v7 = MEMORY[0x1E69D1250];
    semanticCopy = semantic;
    identifierCopy = identifier;
    v10 = objc_alloc_init(v7);
    [v10 setValue:semanticCopy];

    v11 = objc_alloc_init(MEMORY[0x1E69D1128]);
    [v11 setValue:identifierCopy];

    [v10 setNamespaceA:v11];
    [v10 setSourceComponent:2];
    [v10 setBackingAppBundleId:*MEMORY[0x1E69D23F8]];
    [v10 setNodeIndex:v5];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)buildMatchingSpanProtoWithLabel:(id)label inputStringForDebug:(id)debug startTokenIndex:(unsigned int)index endTokenIndex:(unsigned int)tokenIndex spanMatcherName:(int)name
{
  v7 = *&name;
  v8 = *&tokenIndex;
  v9 = *&index;
  v11 = MEMORY[0x1E69D1308];
  debugCopy = debug;
  labelCopy = label;
  v14 = objc_alloc_init(v11);
  [v14 setLabel:labelCopy];

  [v14 setInput:debugCopy];
  [v14 setStartTokenIndex:v9];
  [v14 setEndTokenIndex:v8];
  [v14 addMatcherNames:v7];

  return v14;
}

+ (id)buildMatchingSpanProtoWithLabel:(id)label inputStringForDebug:(id)debug startTokenIndex:(unsigned int)index endTokenIndex:(unsigned int)tokenIndex startCharIndex:(unsigned int)charIndex endCharIndex:(unsigned int)endCharIndex spanMatcherName:(int)name
{
  v9 = [self buildMatchingSpanProtoWithLabel:label inputStringForDebug:debug startTokenIndex:*&index endTokenIndex:*&tokenIndex spanMatcherName:{name, *&endCharIndex}];
  v10 = objc_alloc_init(MEMORY[0x1E69D1260]);
  [v9 setUsoGraph:v10];

  return v9;
}

+ (void)enumerateTokenChain:(id)chain useNormalizedValues:(BOOL)values withCallback:(id)callback
{
  v62 = *MEMORY[0x1E69E9840];
  chainCopy = chain;
  callbackCopy = callback;
  tokens = [chainCopy tokens];
  if ([tokens count])
  {
    v9 = 0;
    *&v8 = 136316162;
    v41 = v8;
    v42 = chainCopy;
    do
    {
      v10 = [tokens objectAtIndexedSubscript:{v9, v41}];
      isSignificant = [v10 isSignificant];

      if (isSignificant)
      {
        v50 = 0;
        string = [MEMORY[0x1E696AD60] string];
        if ([tokens count] > v9 && (v50 & 1) == 0)
        {
          v13 = v9;
          while (1)
          {
            v14 = [tokens objectAtIndexedSubscript:v13];
            isSignificant2 = [v14 isSignificant];

            if ((isSignificant2 & 1) == 0)
            {
              v26 = [tokens objectAtIndexedSubscript:v13];
              value = [v26 value];
              [string appendString:value];
              goto LABEL_14;
            }

            v16 = [tokens objectAtIndexedSubscript:v9];
            begin = [v16 begin];
            v18 = [tokens objectAtIndexedSubscript:v13];
            v19 = [v18 end];
            v20 = [tokens objectAtIndexedSubscript:v9];
            v21 = v19 - [v20 begin];

            v45 = v13 - v9 + 1;
            if (values)
            {
              break;
            }

            v22 = [tokens objectAtIndexedSubscript:v13];
            getHasCleanValues = [v22 getHasCleanValues];

            if (!getHasCleanValues)
            {
              break;
            }

            normalizedString = [chainCopy normalizedString];
            v25 = [normalizedString length];

            if (v21 + begin > v25)
            {
              v26 = CDMOSLoggerForCategory(0);
              if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
              {
                value = [chainCopy normalizedString];
                normalizedString2 = [chainCopy normalizedString];
                v29 = [normalizedString2 length];
                *buf = v41;
                v53 = "+[CDMProtoSpanMatcherHelper enumerateTokenChain:useNormalizedValues:withCallback:]";
                v54 = 2048;
                v55 = begin;
                v56 = 2048;
                v57 = v21;
                v58 = 2112;
                v59 = value;
                v60 = 2048;
                v61 = v29;
                _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s [WARN]: Skipping this callback as charRange.location=%lu + charRange.length=%lu would be out-of-bound for text=[%@] with length=%lu", buf, 0x34u);

                goto LABEL_14;
              }

              goto LABEL_15;
            }

            normalizedString3 = [chainCopy normalizedString];
            v40 = [normalizedString3 substringWithRange:{begin, v21}];

            callbackCopy[2](callbackCopy, v40, begin, v21, v9, v45, &v50);
LABEL_28:
            if ([tokens count] <= ++v13 || (v50 & 1) != 0)
            {
              goto LABEL_30;
            }
          }

          v30 = [tokens objectAtIndexedSubscript:v13];
          normalizedValues = [v30 normalizedValues];
          v32 = [normalizedValues count];

          if (v32)
          {
            v48 = 0u;
            v49 = 0u;
            v46 = 0u;
            v47 = 0u;
            v33 = [tokens objectAtIndexedSubscript:v13];
            normalizedValues2 = [v33 normalizedValues];

            v35 = [normalizedValues2 countByEnumeratingWithState:&v46 objects:v51 count:16];
            if (v35)
            {
              v36 = v35;
              v37 = *v47;
              do
              {
                for (i = 0; i != v36; ++i)
                {
                  if (*v47 != v37)
                  {
                    objc_enumerationMutation(normalizedValues2);
                  }

                  [string appendString:*(*(&v46 + 1) + 8 * i)];
                }

                v36 = [normalizedValues2 countByEnumeratingWithState:&v46 objects:v51 count:16];
              }

              while (v36);
            }

            callbackCopy[2](callbackCopy, string, begin, v21, v9, v45, &v50);
            chainCopy = v42;
            goto LABEL_28;
          }

          v26 = CDMOSLoggerForCategory(0);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            value = [tokens objectAtIndexedSubscript:v13];
            *buf = 136315394;
            v53 = "+[CDMProtoSpanMatcherHelper enumerateTokenChain:useNormalizedValues:withCallback:]";
            v54 = 2112;
            v55 = value;
            _os_log_impl(&dword_1DC287000, v26, OS_LOG_TYPE_INFO, "%s [WARN]: A significant token: (%@) does not have normalized values. This won't break but should not happen", buf, 0x16u);
LABEL_14:
          }

LABEL_15:

          goto LABEL_28;
        }

LABEL_30:
      }

      ++v9;
    }

    while ([tokens count] > v9);
  }
}

uint64_t __55__CDMProtoSpanMatcherHelper_voiceCommandSpanComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = v4;
  v7 = v5;
  LODWORD(v5) = [v6 endTokenIndex];
  v8 = v5 - [v6 startTokenIndex];
  LODWORD(v5) = [v7 endTokenIndex];
  v9 = v5 - [v7 startTokenIndex];
  if (v8 > v9)
  {
    goto LABEL_2;
  }

  if (v8 < v9)
  {
LABEL_4:
    v10 = 1;
    goto LABEL_12;
  }

  if (![v6 matcherNames] || !objc_msgSend(v7, "matcherNames"))
  {
LABEL_11:
    v10 = 0;
    goto LABEL_12;
  }

  if (*[v6 matcherNames] != 2 || *objc_msgSend(v7, "matcherNames") == 2)
  {
    if (*[v6 matcherNames] != 2 && *objc_msgSend(v7, "matcherNames") == 2)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

LABEL_2:
  v10 = -1;
LABEL_12:

  return v10;
}

uint64_t __55__CDMProtoSpanMatcherHelper_descendingLengthComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  v6 = [v5 startTokenIndex];
  v7 = [v5 endTokenIndex];

  v8 = [v4 startTokenIndex];
  v9 = [v4 endTokenIndex];

  if (v7 - v6 > v9 - v8)
  {
    return -1;
  }

  else
  {
    return v7 - v6 < v9 - v8;
  }
}

uint64_t __58__CDMProtoSpanMatcherHelper_ascendingStartIndexComparator__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 startTokenIndex];
  v7 = [v5 startTokenIndex];
  if (v6 >= v7)
  {
    if (v6 <= v7)
    {
      v9 = [v4 endTokenIndex];
      v10 = [v5 endTokenIndex];
      if (v9 > v10)
      {
        v8 = -1;
      }

      else
      {
        v8 = v9 < v10;
      }
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = -1;
  }

  return v8;
}

@end