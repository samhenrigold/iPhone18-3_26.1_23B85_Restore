@interface AXSSDocumentTextRuleBasic
- (AXSSDocumentTextRuleBasic)init;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index;
- (unint64_t)hash;
- (void)setAvoidWords:(id)words;
@end

@implementation AXSSDocumentTextRuleBasic

- (void)setAvoidWords:(id)words
{
  v28 = *MEMORY[0x277D85DE8];
  wordsCopy = words;
  v5 = objc_opt_new();
  selfCopy = self;
  avoidPhrases = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
  if (avoidPhrases)
  {
    avoidPhrases2 = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
    v8 = [avoidPhrases2 mutableCopy];
  }

  else
  {
    v8 = objc_opt_new();
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = wordsCopy;
  v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v9)
  {
    v10 = *v24;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v24 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v23 + 1) + 8 * i);
        v19 = 0;
        v20 = &v19;
        v21 = 0x2020000000;
        v22 = 0;
        v13 = [v12 length];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __43__AXSSDocumentTextRuleBasic_setAvoidWords___block_invoke;
        v18[3] = &unk_278BF0468;
        v18[4] = &v19;
        [v12 enumerateSubstringsInRange:0 options:v13 usingBlock:{3, v18}];
        if (v20[6] >= 2)
        {
          v14 = v8;
        }

        else
        {
          v14 = v5;
        }

        [v14 addObject:v12];
        _Block_object_dispose(&v19, 8);
      }

      v9 = [obj countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v9);
  }

  avoidWords = selfCopy->_avoidWords;
  selfCopy->_avoidWords = v5;

  [(AXSSDocumentTextRuleBasic *)selfCopy setAvoidPhrases:v8];
}

- (id)issuesForWord:(id)word atRange:(_NSRange)range previousWord:(id)previousWord previousWordRange:(_NSRange)wordRange inText:(id)text ignoreRuleUntilIndex:(int64_t *)index
{
  length = range.length;
  location = range.location;
  v67 = *MEMORY[0x277D85DE8];
  wordCopy = word;
  previousWordCopy = previousWord;
  textCopy = text;
  v47 = wordCopy;
  if ([wordCopy length])
  {
    string = [wordCopy string];
    caseSensitive = [(AXSSDocumentTextRuleBasic *)self caseSensitive];
    avoidWords = [(AXSSDocumentTextRuleBasic *)self avoidWords];
    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __110__AXSSDocumentTextRuleBasic_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke;
    v62[3] = &unk_278BF0490;
    v45 = string;
    v63 = v45;
    v64 = !caseSensitive;
    v49 = v64;
    v15 = [avoidWords indexOfObjectPassingTest:v62];

    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = 0;
    }

    else
    {
      v16 = objc_opt_new();
      [v16 setOffendingText:v47];
      [v16 setRange:{location, length}];
      v18 = objc_opt_class();
      suggestedWords = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
      string2 = [v47 string];
      v21 = [v18 matchReplacementArrayCapitalization:suggestedWords withSource:string2];
      [v16 setSuggestions:v21];

      v22 = MEMORY[0x277CCACA8];
      string3 = [v47 string];
      v24 = [v22 stringWithFormat:@"The term '%@' may not be the best choice. Consider one of the following terms.", string3];
      [v16 setNote:v24];

      [v16 setKind:4];
    }

    avoidPhrases = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
    v26 = [avoidPhrases count] == 0;

    if (!v26)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      obj = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
      v27 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
      if (v27)
      {
        v51 = *v59;
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v59 != v51)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v58 + 1) + 8 * i);
            v30 = [v29 length];
            if (v30 + location < [textCopy length])
            {
              string4 = [textCopy string];
              v32 = [string4 substringWithRange:{location, v30}];

              if (![v29 compare:v32 options:1])
              {
                v54 = 0;
                v55 = &v54;
                v56 = 0x2020000000;
                v57 = 0;
                string5 = [textCopy string];
                v34 = [textCopy length];
                v53[0] = MEMORY[0x277D85DD0];
                v53[1] = 3221225472;
                v53[2] = __110__AXSSDocumentTextRuleBasic_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke_2;
                v53[3] = &unk_278BF04B8;
                v53[5] = location;
                v53[6] = v30;
                v53[4] = &v54;
                [string5 enumerateSubstringsInRange:location options:v34 - location usingBlock:{3, v53}];

                if (*(v55 + 24) == 1)
                {
                  string6 = [textCopy string];
                  v36 = [string6 substringWithRange:{location, v30}];

                  if ([v29 compare:v36 options:v49])
                  {
                    v37 = v16;
                  }

                  else
                  {
                    v37 = objc_opt_new();

                    v38 = [textCopy attributedSubstringFromRange:{location, v30}];
                    [v37 setOffendingText:v38];

                    [v37 setRange:{location, v30}];
                    v39 = objc_opt_class();
                    suggestedWords2 = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
                    string7 = [v47 string];
                    v42 = [v39 matchReplacementArrayCapitalization:suggestedWords2 withSource:string7];
                    [v37 setSuggestions:v42];

                    v43 = [MEMORY[0x277CCACA8] stringWithFormat:@"The term '%@' may not be the best choice. Consider one of the following terms.", v29];
                    [v37 setNote:v43];

                    [v37 setKind:4];
                  }

                  v16 = v37;
                }

                _Block_object_dispose(&v54, 8);
              }
            }
          }

          v27 = [obj countByEnumeratingWithState:&v58 objects:v66 count:16];
        }

        while (v27);
      }
    }

    [v16 setSeverity:{-[AXSSDocumentTextRule severity](self, "severity")}];
    if (v16)
    {
      v65 = v16;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v65 count:1];
    }

    else
    {
      v17 = MEMORY[0x277CBEBF8];
    }
  }

  else
  {
    v17 = MEMORY[0x277CBEBF8];
  }

  return v17;
}

void *__110__AXSSDocumentTextRuleBasic_issuesForWord_atRange_previousWord_previousWordRange_inText_ignoreRuleUntilIndex___block_invoke_2(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, _BYTE *a7)
{
  v7 = result[6] + result[5];
  if (a3 + a4 == v7)
  {
    *(*(result[4] + 8) + 24) = 1;
    *a7 = 1;
    v7 = result[6] + result[5];
  }

  if (v7 < a3 + a4)
  {
    *a7 = 1;
  }

  return result;
}

- (AXSSDocumentTextRuleBasic)init
{
  v5.receiver = self;
  v5.super_class = AXSSDocumentTextRuleBasic;
  v2 = [(AXSSDocumentTextRuleBasic *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AXSSDocumentTextRule *)v2 setGranularity:1];
  }

  return v3;
}

- (unint64_t)hash
{
  avoidWords = [(AXSSDocumentTextRuleBasic *)self avoidWords];
  v4 = [avoidWords hash];
  avoidPhrases = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
  v6 = [avoidPhrases hash] ^ v4;
  suggestedWords = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
  v8 = [suggestedWords hash];
  note = [(AXSSDocumentTextRuleBasic *)self note];
  v10 = v6 ^ v8 ^ [note hash];
  caseSensitive = [(AXSSDocumentTextRuleBasic *)self caseSensitive];

  return v10 ^ caseSensitive;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = AXSSDocumentTextRuleBasic;
  v4 = [(AXSSDocumentTextRule *)&v10 copyWithZone:zone];
  avoidWords = [(AXSSDocumentTextRuleBasic *)self avoidWords];
  [v4 setAvoidWords:avoidWords];

  avoidPhrases = [(AXSSDocumentTextRuleBasic *)self avoidPhrases];
  [v4 setAvoidPhrases:avoidPhrases];

  suggestedWords = [(AXSSDocumentTextRuleBasic *)self suggestedWords];
  [v4 setSuggestedWords:suggestedWords];

  note = [(AXSSDocumentTextRuleBasic *)self note];
  [v4 setNote:note];

  [v4 setCaseSensitive:{-[AXSSDocumentTextRuleBasic caseSensitive](self, "caseSensitive")}];
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  selfCopy = self;
  v6 = equalCopy;
  if (selfCopy == v6)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v19.receiver = selfCopy, v19.super_class = AXSSDocumentTextRuleBasic, [(AXSSDocumentTextRule *)&v19 isEqual:v6]) && (v7 = [(AXSSDocumentTextRuleBasic *)selfCopy caseSensitive], v7 == [(AXSSDocumentTextRuleBasic *)v6 caseSensitive]))
    {
      avoidWords = [(AXSSDocumentTextRuleBasic *)selfCopy avoidWords];
      avoidWords2 = [(AXSSDocumentTextRuleBasic *)v6 avoidWords];
      if (avoidWords | avoidWords2 && ![avoidWords isEqual:avoidWords2])
      {
        v8 = 0;
      }

      else
      {
        avoidPhrases = [(AXSSDocumentTextRuleBasic *)selfCopy avoidPhrases];
        avoidPhrases2 = [(AXSSDocumentTextRuleBasic *)v6 avoidPhrases];
        if (avoidPhrases | avoidPhrases2 && ![avoidPhrases isEqual:avoidPhrases2])
        {
          v8 = 0;
        }

        else
        {
          suggestedWords = [(AXSSDocumentTextRuleBasic *)selfCopy suggestedWords];
          suggestedWords2 = [(AXSSDocumentTextRuleBasic *)v6 suggestedWords];
          if (suggestedWords | suggestedWords2 && ![suggestedWords isEqual:suggestedWords2])
          {
            v8 = 0;
          }

          else
          {
            v18 = avoidPhrases;
            note = [(AXSSDocumentTextRuleBasic *)selfCopy note];
            note2 = [(AXSSDocumentTextRuleBasic *)v6 note];
            if (note | note2)
            {
              v8 = [note isEqual:note2];
            }

            else
            {
              v8 = 1;
            }

            avoidPhrases = v18;
          }
        }
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

@end