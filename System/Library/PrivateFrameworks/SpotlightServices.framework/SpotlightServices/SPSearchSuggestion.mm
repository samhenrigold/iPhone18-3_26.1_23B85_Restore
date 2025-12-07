@interface SPSearchSuggestion
+ (id)suggestionsWithData:(id)data queryString:(id)string;
+ (id)suggestionsWithNLPData:(id)data queryString:(id)string;
- (BOOL)isEqual:(id)equal;
- (NSArray)searchEntities;
- (SPSearchSuggestion)initWithNLPData:(id)data queryString:(id)string;
- (SPSearchSuggestion)initWithSuggestion:(id)suggestion query:(id)query scores:(id)scores bundleIDs:(id)ds;
- (id)description;
- (id)suggestionsFeedbackData;
- (int64_t)compare:(id)compare;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation SPSearchSuggestion

+ (id)suggestionsWithData:(id)data queryString:(id)string
{
  v33 = *MEMORY[0x1E69E9840];
  dataCopy = data;
  stringCopy = string;
  [dataCopy bytes];
  v27 = dataCopy;
  [dataCopy length];
  cf = _MDPlistBytesCreateTrusted();
  v7 = _MDPlistBytesCopyPlistAtIndex();
  v8 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:objc_msgSend_count(v7)];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v29;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v29 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v28 + 1) + 8 * i);
        if (objc_msgSend_count(v14, cf) == 23)
        {
          v15 = [v14 objectAtIndexedSubscript:0];
          objc_opt_class();
          isKindOfClass = objc_opt_isKindOfClass();

          if ((isKindOfClass & 1) == 0)
          {
            goto LABEL_14;
          }

          v17 = [v14 objectAtIndexedSubscript:22];
          objc_opt_class();
          v18 = objc_opt_isKindOfClass();

          if ((v18 & 1) == 0)
          {
            goto LABEL_14;
          }

          v19 = [v14 objectAtIndexedSubscript:0];
          v20 = [v14 objectAtIndexedSubscript:22];
          v21 = [v14 subarrayWithRange:{1, objc_msgSend_count(v14) - 2}];
          v22 = [[SPSearchSuggestion alloc] initWithSuggestion:v19 query:stringCopy scores:v21 bundleIDs:v20];
          [(SPSearchSuggestion *)v22 setQuery:stringCopy];
          if (v22)
          {
            [v8 addObject:v22];
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v11);
  }

LABEL_14:

  CFRelease(cf);
  allObjects = [v8 allObjects];
  v24 = [allObjects sortedArrayUsingSelector:sel_compare_];

  return v24;
}

+ (id)suggestionsWithNLPData:(id)data queryString:(id)string
{
  stringCopy = string;
  dataCopy = data;
  v7 = [[SPSearchSuggestion alloc] initWithNLPData:dataCopy queryString:stringCopy];

  return v7;
}

- (SPSearchSuggestion)initWithSuggestion:(id)suggestion query:(id)query scores:(id)scores bundleIDs:(id)ds
{
  v86 = *MEMORY[0x1E69E9840];
  suggestionCopy = suggestion;
  queryCopy = query;
  scoresCopy = scores;
  dsCopy = ds;
  v14 = suggestionCopy;
  v15 = objc_msgSend_count(scoresCopy);
  obj = suggestion;
  if (v15 != 21)
  {
    v18 = 0;
    v19 = 7;
    v20 = v14;
    goto LABEL_20;
  }

  v16 = [scoresCopy objectAtIndexedSubscript:14];
  integerValue = [v16 integerValue];

  v18 = 0;
  v19 = 7;
  if (integerValue <= 7)
  {
    if (integerValue != 3)
    {
      v20 = v14;
      v15 = 21;
      if (integerValue == 6)
      {
        v21 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
        v22 = [v21 localizedStringForKey:@"PHOTOS_SUGGESTION" value:&stru_1F556FE60 table:@"SpotlightServices"];
        v20 = [v22 stringByReplacingOccurrencesOfString:@"%@" withString:v14];

        v15 = 21;
        v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(kMDItemContentTypeTree=public.image && **=%@*cwd)", v14];
      }

      goto LABEL_20;
    }

    whitespaceCharacterSet = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    v36 = [queryCopy stringByTrimmingCharactersInSet:whitespaceCharacterSet];

    whitespaceCharacterSet2 = [MEMORY[0x1E696AB08] whitespaceCharacterSet];
    [v14 stringByTrimmingCharactersInSet:whitespaceCharacterSet2];
    v39 = v38 = v14;

    v40 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v36, v39];

    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(**=%@cwd && **=%@cwd)", v36, v39];

    v14 = v38;
    v20 = v40;

LABEL_19:
    v15 = 21;
    goto LABEL_20;
  }

  if (integerValue == 8)
  {
    v18 = 0;
    v19 = 2;
    v20 = v14;
    goto LABEL_19;
  }

  v20 = v14;
  v15 = 21;
  if (integerValue == 22)
  {
    v74 = scoresCopy;
    v75 = queryCopy;
    lowercaseString = [v14 lowercaseString];

    v23 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v24 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@cwd", v14];
    [v23 addObject:v24];

    v83 = 0u;
    v84 = 0u;
    v81 = 0u;
    v82 = 0u;
    v73 = dsCopy;
    v25 = dsCopy;
    v26 = [v25 countByEnumeratingWithState:&v81 objects:v85 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v82;
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v82 != v28)
          {
            objc_enumerationMutation(v25);
          }

          v30 = MEMORY[0x1E696AEC0];
          v31 = [*(*(&v81 + 1) + 8 * i) stringByReplacingOccurrencesOfString:@" " withString:@"*"];
          v32 = [v30 stringWithFormat:@"**=%@*cwd", v31];
          [v23 addObject:v32];
        }

        v27 = [v25 countByEnumeratingWithState:&v81 objects:v85 count:16];
      }

      while (v27);
    }

    v33 = MEMORY[0x1E696AEC0];
    v34 = [v23 componentsJoinedByString:@" || "];
    v18 = [v33 stringWithFormat:@"(%@)", v34];

    v19 = 7;
    scoresCopy = v74;
    queryCopy = v75;
    dsCopy = v73;
    v15 = 21;
    v20 = lowercaseString;
  }

LABEL_20:
  v80.receiver = self;
  v80.super_class = SPSearchSuggestion;
  v41 = [(SPSearchSuggestion *)&v80 init];
  v42 = v41;
  if (v41)
  {
    v77 = v20;
    if (v15 == 21)
    {
      v43 = [scoresCopy objectAtIndexedSubscript:0];
      v42->_queryLen = [v43 integerValue];

      v44 = [scoresCopy objectAtIndexedSubscript:1];
      v42->_queryFragmentCount = [v44 integerValue];

      v45 = [scoresCopy objectAtIndexedSubscript:2];
      v42->_queryCompletionCount = [v45 longLongValue];

      v46 = [scoresCopy objectAtIndexedSubscript:3];
      v42->_fragments = [v46 integerValue];

      v47 = [scoresCopy objectAtIndexedSubscript:4];
      [v47 doubleValue];
      v42->_age = v48;

      v49 = [scoresCopy objectAtIndexedSubscript:5];
      [v49 doubleValue];
      v42->_prob = v50;

      v51 = [scoresCopy objectAtIndexedSubscript:6];
      v42->_maxscore = [v51 longLongValue];

      v52 = [scoresCopy objectAtIndexedSubscript:7];
      v42->_weight = [v52 intValue];

      v53 = [scoresCopy objectAtIndexedSubscript:8];
      v42->_parentWeight = [v53 intValue];

      v54 = [scoresCopy objectAtIndexedSubscript:9];
      v42->_rootWeight = [v54 integerValue];

      v55 = [scoresCopy objectAtIndexedSubscript:10];
      [v55 doubleValue];
      v42->_phraseScore = v56;

      v57 = [scoresCopy objectAtIndexedSubscript:11];
      [v57 doubleValue];
      v42->_punishment = v58;

      v59 = [scoresCopy objectAtIndexedSubscript:12];
      [v59 doubleValue];
      p_compositeScore = &v42->_compositeScore;
      v42->_compositeScore = v61;

      v62 = [scoresCopy objectAtIndexedSubscript:13];
      [v62 floatValue];
      v42->_fieldWeight = v63;

      v64 = [scoresCopy objectAtIndexedSubscript:14];
      v42->_completionType = [v64 integerValue];

      v65 = [scoresCopy objectAtIndexedSubscript:15];
      v42->_prefixLen = [v65 integerValue];

      v66 = [scoresCopy objectAtIndexedSubscript:16];
      v42->_isSingleThread = [v66 integerValue] != 0;

      v67 = [scoresCopy objectAtIndexedSubscript:17];
      v42->_hasUsedDate = [v67 integerValue] != 0;

      v68 = [scoresCopy objectAtIndexedSubscript:18];
      v42->_isShortcut = [v68 integerValue] != 0;

      v69 = [scoresCopy objectAtIndexedSubscript:19];
      v42->_hasMultipleResults = [v69 integerValue] != 0;

      v70 = [dsCopy copy];
    }

    else
    {
      v41->_queryLen = 0;
      v41->_queryFragmentCount = 0;
      v41->_queryCompletionCount = 0;
      v41->_fragments = 1;
      v41->_age = 1.0;
      v41->_prob = 0.0;
      v41->_maxscore = 0;
      v41->_weight = 0;
      v41->_parentWeight = 0;
      v41->_rootWeight = 0;
      v41->_phraseScore = 0.0;
      v41->_punishment = 0.0;
      p_compositeScore = &v41->_compositeScore;
      v41->_compositeScore = 1.0;
      v41->_fieldWeight = 0.0;
      v41->_completionType = 1;
      v41->_prefixLen = 0;
      v41->_isSingleThread = 0;
      v41->_hasUsedDate = 0;
      v41->_isShortcut = 0;
      v41->_hasMultipleResults = 0;
      v70 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v42->_bundleIDs, v70);
    if (v15 == 21)
    {
    }

    objc_storeStrong(&v42->_completion, obj);
    objc_storeStrong(&v42->_spotlightQuery, v18);
    categories = v42->_categories;
    v42->_categories = 0;

    [(SPSearchSuggestion *)v42 setScore:*p_compositeScore];
    v20 = v77;
    [(SPSearchSuggestion *)v42 setSuggestion:v77];
    [(SPSearchSuggestion *)v42 setQuery:queryCopy];
    [(SPSearchSuggestion *)v42 setType:v19];
  }

  return v42;
}

- (SPSearchSuggestion)initWithNLPData:(id)data queryString:(id)string
{
  stringCopy = string;
  dataCopy = data;
  v8 = [dataCopy objectForKeyedSubscript:@"suggestion"];
  v9 = [dataCopy objectForKeyedSubscript:@"query"];
  v10 = [dataCopy objectForKeyedSubscript:@"tokenCount"];
  v11 = v10;
  if (v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = &unk_1F55B3BE8;
  }

  v13 = v12;

  v14 = [dataCopy objectForKeyedSubscript:@"attributeCount"];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = &unk_1F55B3BE8;
  }

  v17 = v16;

  v18 = [dataCopy objectForKeyedSubscript:@"categories"];
  v19 = v18;
  v20 = MEMORY[0x1E695E0F8];
  if (v18)
  {
    v21 = v18;
  }

  else
  {
    v21 = MEMORY[0x1E695E0F8];
  }

  obj = v21;
  v30 = v21;

  v22 = [dataCopy objectForKeyedSubscript:@"terms"];

  if (v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v20;
  }

  v24 = v23;

  v31.receiver = self;
  v31.super_class = SPSearchSuggestion;
  v25 = [(SPSearchSuggestion *)&v31 init];
  if (v25)
  {
    v25->_queryLen = [stringCopy length];
    v25->_queryFragmentCount = [v13 intValue];
    v25->_queryCompletionCount = 20;
    v25->_fragments = [v17 integerValue];
    v25->_age = 0.0;
    v25->_prob = 0.0;
    v25->_maxscore = 0;
    v25->_weight = 0;
    v25->_parentWeight = 0;
    v25->_rootWeight = 0;
    v25->_phraseScore = 0.0;
    v25->_punishment = 0.0;
    v25->_compositeScore = 1.79769313e308;
    v25->_fieldWeight = 0.0;
    v25->_completionType = 5;
    v25->_prefixLen = 0;
    v25->_isSingleThread = 0;
    v25->_hasUsedDate = 0;
    v25->_isShortcut = 0;
    v25->_hasMultipleResults = 0;
    bundleIDs = v25->_bundleIDs;
    v25->_bundleIDs = MEMORY[0x1E695E0F0];

    completion = v25->_completion;
    v25->_completion = 0;

    objc_storeStrong(&v25->_categories, obj);
    objc_storeStrong(&v25->_terms, v23);
    objc_storeStrong(&v25->_spotlightQuery, v9);
    [(SPSearchSuggestion *)v25 setSuggestion:v8];
    [(SPSearchSuggestion *)v25 setQuery:stringCopy];
    [(SPSearchSuggestion *)v25 setType:15];
  }

  return v25;
}

- (void)encodeWithCoder:(id)coder
{
  v12.receiver = self;
  v12.super_class = SPSearchSuggestion;
  coderCopy = coder;
  [(SPSearchSuggestion *)&v12 encodeWithCoder:coderCopy];
  [coderCopy encodeInt:LODWORD(self->_queryLen) forKey:{@"queryLen", v12.receiver, v12.super_class}];
  [coderCopy encodeInt:LODWORD(self->_queryFragmentCount) forKey:@"queryFragmentCount"];
  [coderCopy encodeInt64:self->_queryCompletionCount forKey:@"queryCompletionCount"];
  [coderCopy encodeInt:LODWORD(self->_fragments) forKey:@"fragments"];
  [coderCopy encodeDouble:@"age" forKey:self->_age];
  [coderCopy encodeDouble:@"prob" forKey:self->_prob];
  [coderCopy encodeInt64:self->_maxscore forKey:@"maxscore"];
  [coderCopy encodeInt:self->_weight forKey:@"weight"];
  [coderCopy encodeInt:self->_parentWeight forKey:@"parentWeight"];
  [coderCopy encodeInt:self->_rootWeight forKey:@"rootWeight"];
  [coderCopy encodeDouble:@"phraseScore" forKey:self->_phraseScore];
  [coderCopy encodeDouble:@"punishment" forKey:self->_punishment];
  [coderCopy encodeDouble:@"compositeScore" forKey:self->_compositeScore];
  [coderCopy encodeInt:self->_completionType forKey:@"completionType"];
  [coderCopy encodeInt:self->_prefixLen forKey:@"prefixLen"];
  *&v5 = self->_fieldWeight;
  [coderCopy encodeFloat:@"fieldWeight" forKey:v5];
  [coderCopy encodeBool:self->_isSingleThread forKey:@"isSingleThread"];
  [coderCopy encodeBool:self->_hasUsedDate forKey:@"hasUsedDate"];
  [coderCopy encodeBool:self->_isShortcut forKey:@"isShortcut"];
  [coderCopy encodeBool:self->_hasMultipleResults forKey:@"hasMultipleResults"];
  if (self->_bundleIDs)
  {
    bundleIDs = self->_bundleIDs;
  }

  else
  {
    bundleIDs = MEMORY[0x1E695E0F0];
  }

  [coderCopy encodeObject:bundleIDs forKey:@"bundleIDs"];
  if (self->_completion)
  {
    completion = self->_completion;
  }

  else
  {
    completion = &stru_1F556FE60;
  }

  [coderCopy encodeObject:completion forKey:@"completion"];
  if (self->_spotlightQuery)
  {
    spotlightQuery = self->_spotlightQuery;
  }

  else
  {
    spotlightQuery = &stru_1F556FE60;
  }

  [coderCopy encodeObject:spotlightQuery forKey:@"spotlightQuery"];
  v9 = MEMORY[0x1E695E0F8];
  if (self->_categories)
  {
    categories = self->_categories;
  }

  else
  {
    categories = MEMORY[0x1E695E0F8];
  }

  [coderCopy encodeObject:categories forKey:@"categories"];
  if (self->_terms)
  {
    terms = self->_terms;
  }

  else
  {
    terms = v9;
  }

  [coderCopy encodeObject:terms forKey:@"terms"];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    suggestion = [(SPSearchSuggestion *)self suggestion];
    suggestion2 = [v5 suggestion];

    v8 = [suggestion isEqual:suggestion2];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  query = [(SPSearchSuggestion *)self query];
  v3 = [query hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  suggestion = [(SPSearchSuggestion *)self suggestion];
  suggestion2 = [(SPSearchSuggestion *)self suggestion];
  v7 = [v3 stringWithFormat:@"<%@: %p> %@ len:%ld fragments:%ld max_score:%llu age:%g weight:%d pweight:%d rweight:%d c_score:%g type:%d pfx_len:%d st:%d phrase_score:%g field_weight:%f hasUsed:%d isShortcut:%d", v4, self, suggestion, objc_msgSend(suggestion2, "length"), self->_fragments, self->_maxscore, *&self->_age, self->_weight, self->_parentWeight, self->_rootWeight, *&self->_compositeScore, self->_completionType, self->_prefixLen, self->_isSingleThread, *&self->_phraseScore, self->_fieldWeight, self->_hasUsedDate, self->_isShortcut];

  return v7;
}

- (int64_t)compare:(id)compare
{
  compareCopy = compare;
  if ([compareCopy completionType] > self->_completionType)
  {
    goto LABEL_2;
  }

  if ([compareCopy completionType] < self->_completionType || (objc_msgSend(compareCopy, "compositeScore"), v6 > self->_compositeScore))
  {
LABEL_5:
    v5 = -1;
    goto LABEL_6;
  }

  [compareCopy compositeScore];
  if (v8 < self->_compositeScore)
  {
    goto LABEL_2;
  }

  if ([compareCopy isShortcut] && !self->_isShortcut)
  {
    goto LABEL_5;
  }

  if (self->_isShortcut > [compareCopy isShortcut])
  {
LABEL_2:
    v5 = 1;
    goto LABEL_6;
  }

  if (([compareCopy hasUsedDate] & 1) == 0 && !self->_hasUsedDate)
  {
    [compareCopy age];
    if (v11 < self->_age)
    {
      goto LABEL_5;
    }

    [compareCopy age];
    if (v12 <= self->_age)
    {
      if ([compareCopy maxscore] > self->_maxscore)
      {
        goto LABEL_5;
      }

      if ([compareCopy maxscore] >= self->_maxscore)
      {
        if ([compareCopy weight] < self->_weight)
        {
          goto LABEL_5;
        }

        if ([compareCopy weight] <= self->_weight)
        {
          if ([compareCopy fragments] < self->_fragments)
          {
            goto LABEL_5;
          }

          if ([compareCopy fragments] <= self->_fragments)
          {
            suggestion = [compareCopy suggestion];
            v14 = [suggestion length];
            suggestion2 = [(SPSearchSuggestion *)self suggestion];
            v16 = [suggestion2 length];

            if (v14 >= v16)
            {
              suggestion3 = [compareCopy suggestion];
              v18 = [suggestion3 length];
              suggestion4 = [(SPSearchSuggestion *)self suggestion];
              v5 = v18 > [suggestion4 length];

              goto LABEL_6;
            }

            goto LABEL_5;
          }
        }
      }
    }

    goto LABEL_2;
  }

  if ([compareCopy hasUsedDate] && self->_hasUsedDate)
  {
    [compareCopy age];
    if (v9 >= self->_age)
    {
      [compareCopy age];
      v5 = v10 > self->_age;
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if ([compareCopy hasUsedDate])
  {
    v5 = -1;
  }

  else
  {
    v5 = 1;
  }

LABEL_6:

  return v5;
}

- (id)suggestionsFeedbackData
{
  v40[22] = *MEMORY[0x1E69E9840];
  v39[0] = @"queryLen";
  v3 = SSRoundDouble(4, [(SPSearchSuggestion *)self queryLen]);
  v40[0] = v3;
  v39[1] = @"queryFragmentCount";
  v4 = SSRoundDouble(4, [(SPSearchSuggestion *)self queryFragmentCount]);
  v40[1] = v4;
  v39[2] = @"queryCompletionCount";
  v5 = SSRoundUInt64([(SPSearchSuggestion *)self queryCompletionCount]);
  v40[2] = v5;
  v39[3] = @"len";
  suggestion = [(SPSearchSuggestion *)self suggestion];
  v7 = SSRoundDouble(4, [suggestion length]);
  v40[3] = v7;
  v39[4] = @"fragments";
  v8 = SSRoundDouble(4, [(SPSearchSuggestion *)self fragments]);
  v40[4] = v8;
  v39[5] = @"age";
  [(SPSearchSuggestion *)self age];
  v10 = SSRoundDouble(4, v9);
  v40[5] = v10;
  v39[6] = @"prob";
  [(SPSearchSuggestion *)self prob];
  v12 = SSRoundDouble(2, v11);
  v40[6] = v12;
  v39[7] = @"maxscore";
  v38 = SSRoundUInt64([(SPSearchSuggestion *)self maxscore]);
  v40[7] = v38;
  v39[8] = @"weight";
  v37 = SSRoundDouble(4, [(SPSearchSuggestion *)self weight]);
  v40[8] = v37;
  v39[9] = @"parentWeight";
  v36 = SSRoundDouble(4, [(SPSearchSuggestion *)self parentWeight]);
  v40[9] = v36;
  v39[10] = @"rootWeight";
  v35 = SSRoundDouble(4, [(SPSearchSuggestion *)self rootWeight]);
  v40[10] = v35;
  v39[11] = @"phraseScore";
  [(SPSearchSuggestion *)self phraseScore];
  v34 = SSRoundDouble(4, v13);
  v40[11] = v34;
  v39[12] = @"punishment";
  [(SPSearchSuggestion *)self punishment];
  v33 = SSRoundDouble(4, v14);
  v40[12] = v33;
  v39[13] = @"compositeScore";
  [(SPSearchSuggestion *)self compositeScore];
  v16 = v15;
  v17 = 0.0;
  if (v16 != 1.79769313e308)
  {
    [(SPSearchSuggestion *)self compositeScore];
  }

  v32 = SSRoundDouble(4, v17);
  v40[13] = v32;
  v39[14] = @"completionType";
  v31 = SSRoundDouble(4, [(SPSearchSuggestion *)self completionType]);
  v40[14] = v31;
  v39[15] = @"prefixLen";
  v30 = SSRoundDouble(4, [(SPSearchSuggestion *)self prefixLen]);
  v40[15] = v30;
  v39[16] = @"fieldWeight";
  [(SPSearchSuggestion *)self fieldWeight];
  v29 = SSRoundDouble(4, v18);
  v40[16] = v29;
  v39[17] = @"isSingleThread";
  if ([(SPSearchSuggestion *)self isSingleThread])
  {
    v19 = &unk_1F55B3C00;
  }

  else
  {
    v19 = &unk_1F55B3BE8;
  }

  v40[17] = v19;
  v39[18] = @"hasUsedDate";
  if ([(SPSearchSuggestion *)self hasUsedDate])
  {
    v20 = &unk_1F55B3C00;
  }

  else
  {
    v20 = &unk_1F55B3BE8;
  }

  v40[18] = v20;
  v39[19] = @"isShortcut";
  if ([(SPSearchSuggestion *)self isShortcut])
  {
    v21 = &unk_1F55B3C00;
  }

  else
  {
    v21 = &unk_1F55B3BE8;
  }

  v40[19] = v21;
  v39[20] = @"hasMultipleResults";
  if ([(SPSearchSuggestion *)self hasMultipleResults])
  {
    v22 = &unk_1F55B3C00;
  }

  else
  {
    v22 = &unk_1F55B3BE8;
  }

  v40[20] = v22;
  v39[21] = @"bundleIDs";
  bundleIDs = [(SPSearchSuggestion *)self bundleIDs];
  v24 = bundleIDs;
  v25 = MEMORY[0x1E695E0F0];
  if (bundleIDs)
  {
    v25 = bundleIDs;
  }

  v40[21] = v25;
  v26 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v40 forKeys:v39 count:22];

  v27 = [MEMORY[0x1E696ACB0] dataWithJSONObject:v26 options:2 error:0];

  return v27;
}

- (NSArray)searchEntities
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (self->_spotlightQuery)
  {
    suggestion = [(SPSearchSuggestion *)self suggestion];
    spotlightQuery = self->_spotlightQuery;
    bundleIDs = [(SPSearchSuggestion *)self bundleIDs];
    v6 = [SPSearchEntity searchEntityWithSearchString:suggestion spotlightQueryString:spotlightQuery preferredBundleIDs:bundleIDs];
  }

  else
  {
    suggestion2 = [(SPSearchSuggestion *)self suggestion];
    v8 = [suggestion2 substringFromIndex:{-[SPSearchSuggestion prefixLen](self, "prefixLen")}];
    suggestion = SSEscapedStringForSearchQuery(v8);

    bundleIDs = [(SPSearchSuggestion *)self suggestion];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"**=%@cwd || _kMDItemLaunchString=%@cwd", suggestion, suggestion];
    bundleIDs2 = [(SPSearchSuggestion *)self bundleIDs];
    v6 = [SPSearchEntity searchEntityWithSearchString:bundleIDs spotlightQueryString:v9 preferredBundleIDs:bundleIDs2];
  }

  v13[0] = v6;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];

  return v11;
}

@end