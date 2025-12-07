@interface PRAstBuilder
- (BOOL)astHasFieldNodes:(id)nodes;
- (BOOL)hasFieldKeywordPrefix:(id)prefix;
- (BOOL)hasNonEmailQPFilters;
- (BOOL)isIgnoredToken:(id)token;
- (BOOL)isNegatedToken:(id)token;
- (BOOL)isQuotedToken:(id)token;
- (BOOL)node:(id)node containsFilter:(id)filter;
- (BOOL)tokenizeQuery:(id)query;
- (PRAstBuilder)initWithLanguageCode:(id)code context:(PRContext *)context logHeader:(id)header;
- (id)buildASTFromQuery:(id)query queryUnderstanding:(id)understanding;
- (id)extractSourceTokenFromRange:(_NSRange)range originalQuery:(id)query;
- (id)getFilterSourceTokenForIndex:(int64_t)index;
- (id)parseExpressionAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens;
- (id)parseFieldExpressionAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens;
- (id)parseMultiTokenQuotedValueStartingWithValue:(id)value atIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens;
- (id)parseNegatedTermAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens;
- (id)parseQuotedExpressionAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens;
- (id)parseSentKeywordAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens;
- (id)parseTokensIntoAST;
- (id)stripNegationFromToken:(id)token;
- (void)buildTokenToFilterAndU2LabelsMapping;
- (void)dealloc;
- (void)extractQUFiltersAndLabelsFromQueryUnderstanding:(id)understanding;
- (void)postProcessAstForMailToken:(id)token;
- (void)setMailTokenIgnoredInAst:(id)ast;
@end

@implementation PRAstBuilder

- (id)extractSourceTokenFromRange:(_NSRange)range originalQuery:(id)query
{
  if (range.location == 0x7FFFFFFFFFFFFFFFLL)
  {
    return &stru_1F4284FD0;
  }

  length = range.length;
  location = range.location;
  if (range.location + range.length > [query length])
  {
    return &stru_1F4284FD0;
  }

  return [query substringWithRange:{location, length}];
}

- (id)getFilterSourceTokenForIndex:(int64_t)index
{
  if (index < 0 || [(NSMutableArray *)self->_qpParsesRange count]<= index)
  {
    return &stru_1F4284FD0;
  }

  v5 = [-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange objectAtIndexedSubscript:{index), "rangeValue"}];
  v7 = v6;
  originalQuery = [(PRAstBuilder *)self originalQuery];

  return [(PRAstBuilder *)self extractSourceTokenFromRange:v5 originalQuery:v7, originalQuery];
}

- (id)parseQuotedExpressionAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens
{
  v7 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
  array = [MEMORY[0x1E695DF70] array];
  if ([(NSArray *)self->_tokens count]<= index)
  {
LABEL_12:
    v12 = [(NSArray *)self->_tokens objectAtIndexedSubscript:index];
    v13 = [(NSArray *)self->_tokens count]- 1 == index;
    *tokens = 1;
    v14 = [PRAstTermNode alloc];
    v15 = v12;
    v16 = v12;
    v17 = v13;
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  v9 = 0;
  while (1)
  {
    v10 = [(NSArray *)self->_tokens objectAtIndexedSubscript:index + v9];
    [array addObject:v10];
    v11 = [v10 length] >= 2 && v9 == 0;
    if (v11 && ([v7 characterIsMember:{objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1)}] & 1) != 0)
    {
      indexCopy = index;
      goto LABEL_19;
    }

    if (index + v9 > index && ([v7 characterIsMember:{objc_msgSend(v10, "characterAtIndex:", objc_msgSend(v10, "length") - 1)}] & 1) != 0)
    {
      break;
    }

    ++v9;
    if (index + v9 >= [(NSArray *)self->_tokens count])
    {
      goto LABEL_12;
    }
  }

  indexCopy = index + v9;
LABEL_19:
  *tokens = indexCopy - index + 1;
  v22 = [array componentsJoinedByString:@" "];
  v23 = v22;
  if ([v22 length])
  {
    v23 = v22;
    if ([v7 characterIsMember:{objc_msgSend(v22, "characterAtIndex:", 0)}])
    {
      v23 = [v22 substringFromIndex:1];
    }
  }

  if ([v23 length] && objc_msgSend(v7, "characterIsMember:", objc_msgSend(v23, "characterAtIndex:", objc_msgSend(v23, "length") - 1)))
  {
    v23 = [v23 substringToIndex:{objc_msgSend(v23, "length") - 1}];
  }

  v24 = [v23 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
  v25 = [v24 length];
  v14 = [PRAstTermNode alloc];
  if (v25)
  {
    v15 = v24;
    v16 = v22;
    v17 = 0;
    goto LABEL_13;
  }

  v15 = v22;
  v16 = v22;
  v17 = 0;
  v18 = 1;
LABEL_14:
  v19 = [(PRAstTermNode *)v14 initWithValue:v15 sourceToken:v16 isLastToken:v17 isNegated:0 isIgnored:v18];

  return v19;
}

- (id)parseFieldExpressionAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens
{
  v66 = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)self->_tokens objectAtIndexedSubscript:?];
  if (![v7 containsString:@":"] || (v8 = objc_msgSend(v7, "componentsSeparatedByString:", @":"), objc_msgSend(v8, "count") < 2) || (v9 = objc_msgSend(v8, "objectAtIndexedSubscript:", 0), v10 = objc_msgSend(v9, "stringByAppendingString:", @":"), v11 = -[PRAstLanguageProfile fieldTypeForKeyword:](self->_languageProfile, "fieldTypeForKeyword:", v10), v11 == -1) && (v11 = -[PRAstLanguageProfile fieldTypeForKeyword:](self->_languageProfile, "fieldTypeForKeyword:", v9), v11 == -1) || (v12 = v11, v13 = objc_msgSend(objc_msgSend(v8, "subarrayWithRange:", 1, objc_msgSend(v8, "count") - 1), "componentsJoinedByString:", @":"), !objc_msgSend(v13, "length")))
  {
    v33 = [(PRAstLanguageProfile *)self->_languageProfile fieldTypeForKeyword:v7];
    if (v33 != -1)
    {
      v34 = v33;
      if (![(PRAstLanguageProfile *)self->_languageProfile argumentDirectionForKeyword:v7])
      {
        v60 = 0;
        if (v34 == 7)
        {
          return [(PRAstBuilder *)self parseSentKeywordAtIndex:index consumedTokens:tokens];
        }

        v39 = [(PRAstBuilder *)self parseExpressionAtIndex:index + 1 consumedTokens:&v60];
        if (v39)
        {
          v40 = v39;
          v41 = v60;
          *tokens = v60 + 1;
          v42 = [(NSArray *)self->_tokens count];
          v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", v7, -[PRAstNode sourceToken](v40, "sourceToken")];
          v43 = -[NSDictionary objectForKeyedSubscript:](self->_tokenToU2LabelsMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index]);
          if ([v43 count])
          {
            v44 = [-[NSMutableArray objectAtIndexedSubscript:](self->_u2TokensLabel objectAtIndexedSubscript:{objc_msgSend(objc_msgSend(v43, "objectAtIndexedSubscript:", 0), "intValue")), "intValue"}] == 0;
          }

          else
          {
            v44 = 0;
          }

          if ([(NSArray *)self->_tokens count]< 2)
          {
            v49 = 0;
          }

          else if (v34 == 9)
          {
            v49 = 1;
          }

          else
          {
            v49 = (v34 == 10) & v44;
          }

          v53 = v41 + index;
          v54 = v42 - 1;
          v55 = *__error();
          v56 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
          {
            logHeader = self->_logHeader;
            v58 = @"FALSE";
            *buf = 138412802;
            if (v49)
            {
              v58 = @"TRUE";
            }

            *&buf[4] = logHeader;
            v62 = 2048;
            indexCopy2 = index;
            v64 = 2112;
            v65 = v58;
            _os_log_impl(&dword_1C278D000, v56, OS_LOG_TYPE_DEFAULT, "%@ Token %lu is field node with IsIgnored = %@", buf, 0x20u);
          }

          *__error() = v55;
          v28 = [PRAstFieldNode alloc];
          v29 = v34;
          v30 = v7;
          v31 = v40;
          v32 = v59;
          v27 = v53 == v54;
          v48 = v49;
          return [(PRAstFieldNode *)v28 initWithFieldType:v29 originalKeyword:v30 expression:v31 sourceToken:v32 isLastToken:v27 isIgnored:v48];
        }

        if (v34 == 9 && index + 1 == [(NSArray *)self->_tokens count])
        {
          v45 = *__error();
          v46 = _SILogForLogForCategory(19);
          if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
          {
            v47 = self->_logHeader;
            *buf = 138412546;
            *&buf[4] = v47;
            v62 = 2048;
            indexCopy2 = index;
            _os_log_impl(&dword_1C278D000, v46, OS_LOG_TYPE_DEFAULT, "%@ Token %lu is field node with IsIgnored = TRUE", buf, 0x16u);
          }

          *__error() = v45;
          v28 = [PRAstFieldNode alloc];
          v29 = 9;
          v30 = v7;
          v31 = 0;
          v32 = v7;
          v27 = 1;
          v48 = 1;
          return [(PRAstFieldNode *)v28 initWithFieldType:v29 originalKeyword:v30 expression:v31 sourceToken:v32 isLastToken:v27 isIgnored:v48];
        }
      }
    }

    result = 0;
    *tokens = 0;
    return result;
  }

  if (-[PRAstBuilder isQuotedToken:](self, "isQuotedToken:", v13) && ((v14 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"], objc_msgSend(v13, "length") < 2) || (objc_msgSend(v14, "characterIsMember:", objc_msgSend(v13, "characterAtIndex:", objc_msgSend(v13, "length") - 1)) & 1) == 0) && (*buf = 0, (v15 = -[PRAstBuilder parseMultiTokenQuotedValueStartingWithValue:atIndex:consumedTokens:](self, "parseMultiTokenQuotedValueStartingWithValue:atIndex:consumedTokens:", v13, index, buf)) != 0))
  {
    v16 = v15;
    v17 = *buf;
    *tokens = *buf;
    v18 = v17 + index;
    v19 = v17 + index - 1;
    v20 = [-[NSArray objectAtIndexedSubscript:](self->_tokenRanges objectAtIndexedSubscript:{index), "rangeValue"}];
    v22 = v21;
    v68.location = [-[NSArray objectAtIndexedSubscript:](self->_tokenRanges objectAtIndexedSubscript:{v19), "rangeValue"}];
    v68.length = v23;
    v67.location = v20;
    v67.length = v22;
    v24 = NSUnionRange(v67, v68);
    v25 = [(PRAstBuilder *)self extractSourceTokenFromRange:v24.location originalQuery:v24.length, [(PRAstBuilder *)self originalQuery]];
    v26 = [PRAstFieldNode alloc];
    v27 = v18 == [(NSArray *)self->_tokens count];
    v28 = v26;
    v29 = v12;
    v30 = v10;
    v31 = v16;
    v32 = v25;
  }

  else
  {
    v36 = v13;
    if ([(PRAstBuilder *)self isQuotedToken:v13])
    {
      v37 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
      if ([v13 length])
      {
        v38 = [v37 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", 0)}];
      }

      else
      {
        v38 = 0;
      }

      v36 = v13;
      if ([v13 length] >= 2)
      {
        v36 = v13;
        if ((v38 & [v37 characterIsMember:{objc_msgSend(v13, "characterAtIndex:", objc_msgSend(v13, "length") - 1)}]) == 1)
        {
          v50 = [v13 substringWithRange:{1, objc_msgSend(v13, "length") - 2}];
          v36 = [v50 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}];
        }
      }
    }

    v51 = [(NSArray *)self->_tokens count]- 1 == index;
    v52 = [[PRAstTermNode alloc] initWithValue:v36 sourceToken:v13 isLastToken:v51 isNegated:0 isIgnored:0];
    *tokens = 1;
    v28 = [PRAstFieldNode alloc];
    v29 = v12;
    v30 = v10;
    v31 = v52;
    v32 = v7;
    v27 = v51;
  }

  v48 = 0;
  return [(PRAstFieldNode *)v28 initWithFieldType:v29 originalKeyword:v30 expression:v31 sourceToken:v32 isLastToken:v27 isIgnored:v48];
}

- (id)parseMultiTokenQuotedValueStartingWithValue:(id)value atIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens
{
  v9 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
  v10 = [MEMORY[0x1E695DF70] arrayWithObject:value];
  for (i = index + 1; ; ++i)
  {
    if (i >= [(NSArray *)self->_tokens count])
    {
      *tokens = 0;
      return 0;
    }

    v12 = [(NSArray *)self->_tokens objectAtIndexedSubscript:i];
    [v10 addObject:v12];
    if ([v12 length])
    {
      if ([v9 characterIsMember:{objc_msgSend(v12, "characterAtIndex:", objc_msgSend(v12, "length") - 1)}])
      {
        break;
      }
    }
  }

  *tokens = i - index + 1;
  v14 = [v10 componentsJoinedByString:@" "];
  v15 = v14;
  if ([v14 length])
  {
    v15 = v14;
    if ([v9 characterIsMember:{objc_msgSend(v14, "characterAtIndex:", 0)}])
    {
      v15 = [v14 substringFromIndex:1];
    }
  }

  if ([v15 length] && objc_msgSend(v9, "characterIsMember:", objc_msgSend(v15, "characterAtIndex:", objc_msgSend(v15, "length") - 1)))
  {
    v15 = [v15 substringToIndex:{objc_msgSend(v15, "length") - 1}];
  }

  v16 = -[PRAstTermNode initWithValue:sourceToken:isLastToken:isNegated:isIgnored:]([PRAstTermNode alloc], "initWithValue:sourceToken:isLastToken:isNegated:isIgnored:", [v15 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "whitespaceAndNewlineCharacterSet")}], v14, 0, 0, 0);

  return v16;
}

- (BOOL)isIgnoredToken:(id)token
{
  if ([(PRAstLanguageProfile *)self->_languageProfile fieldTypeForKeyword:?]== 11)
  {
    return 1;
  }

  return [token isEqualToString:@"-"];
}

- (id)parseSentKeywordAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens
{
  v30 = *MEMORY[0x1E69E9840];
  v7 = [(NSArray *)self->_tokens objectAtIndexedSubscript:?];
  v8 = [(NSArray *)self->_tokens count];
  *tokens = 1;
  v9 = -[NSDictionary objectForKeyedSubscript:](self->_tokenToU2LabelsMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:index]);
  if ([v9 count])
  {
    v10 = [-[NSMutableArray objectAtIndexedSubscript:](self->_u2TokensLabel objectAtIndexedSubscript:{objc_msgSend(objc_msgSend(v9, "objectAtIndexedSubscript:", 0), "intValue")), "intValue"}] == 0;
  }

  else
  {
    v10 = 0;
  }

  v11 = v8 - 1;
  v12 = ([(NSArray *)self->_tokens count]> 1) & v10;
  v13 = *__error();
  v14 = _SILogForLogForCategory(19);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    logHeader = self->_logHeader;
    v16 = @"FALSE";
    *buf = 138412802;
    if (v12)
    {
      v16 = @"TRUE";
    }

    v25 = logHeader;
    v26 = 2048;
    indexCopy = index;
    v28 = 2112;
    v29 = v16;
  }

  *__error() = v13;
  v17 = [[PRAstFieldNode alloc] initWithFieldType:7 originalKeyword:v7 expression:0 sourceToken:v7 isLastToken:v11 == index isIgnored:v12];
  if ((v12 & 1) == 0)
  {
    v18 = v11 == index;
    if ((*(self->_context + 7) & 0x10) != 0)
    {
      v19 = @"kMDItemMailboxes=*sent";
    }

    else
    {
      v19 = @"com_apple_mobilesms_fromMe=1";
    }

    v20 = [[PRAstQPFilterNode alloc] initWithFilterString:v19 sourceToken:v7 isLastToken:v18];
    v21 = [PRAstCompositeNode alloc];
    v23[0] = v17;
    v23[1] = v20;
    return -[PRAstCompositeNode initWithNodeType:children:sourceToken:isLastToken:](v21, "initWithNodeType:children:sourceToken:isLastToken:", @"OR", [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2], v7, v18);
  }

  return v17;
}

- (id)parseNegatedTermAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens
{
  v7 = [(NSArray *)self->_tokens objectAtIndexedSubscript:?];
  v8 = [(NSArray *)self->_tokens count]- 1;
  *tokens = 1;
  v9 = [(PRAstBuilder *)self stripNegationFromToken:v7];
  v10 = [v9 length];
  v11 = [PRAstTermNode alloc];
  if (v10)
  {
    v12 = v9;
    v13 = v7;
    v14 = 1;
  }

  else
  {
    v12 = v7;
    v13 = v7;
    v14 = 0;
  }

  v15 = [(PRAstTermNode *)v11 initWithValue:v12 sourceToken:v13 isLastToken:v8 == index isNegated:v14 isIgnored:0];

  return v15;
}

- (id)parseExpressionAtIndex:(unint64_t)index consumedTokens:(unint64_t *)tokens
{
  indexCopy = index;
  v103[1] = *MEMORY[0x1E69E9840];
  if ([(NSArray *)self->_tokens count]<= index)
  {
    v13 = 0;
    *tokens = 0;
    return v13;
  }

  v7 = [(NSArray *)self->_tokens objectAtIndexedSubscript:indexCopy];
  v8 = [(NSArray *)self->_tokens count]- 1;
  *tokens = 1;
  v9 = [(PRAstLanguageProfile *)self->_languageProfile fieldTypeForKeyword:v7];
  if ((v9 - 3) <= 3)
  {
    v10 = v9;
    v11 = [[PRAstTermNode alloc] initWithValue:v7 sourceToken:v7 isLastToken:v8 == indexCopy isNegated:0 isIgnored:0];
    v12 = [PRAstCompositeNode alloc];
    v103[0] = v11;
    v13 = -[PRAstCompositeNode initWithNodeType:children:sourceToken:isLastToken:](v12, "initWithNodeType:children:sourceToken:isLastToken:", @"OR", [MEMORY[0x1E695DEC8] arrayWithObjects:v103 count:1], v7, v8 == indexCopy);
    obj = [MEMORY[0x1E695DFD8] setWithArray:self->_qpParsesDesc];
    if (v10 == 3)
    {
      if ((*(self->_context + 28) & 0x10) != 0)
      {
        v14 = @"kMDItemContentTypeTree=public.email-message";
      }

      else
      {
        v14 = @"kMDItemContentTypeTree=public.message";
      }
    }

    else
    {
      v14 = off_1E8197A08[v10 - 4];
    }

    v81 = v14;
    v77 = v8;
    v19 = *__error();
    v20 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      logHeader = self->_logHeader;
      *buf = 138412802;
      *&buf[4] = logHeader;
      v99 = 2112;
      v100 = v81;
      v101 = 2048;
      v102 = indexCopy;
      _os_log_impl(&dword_1C278D000, v20, OS_LOG_TYPE_DEFAULT, "%@ Added parse %@ at index %lu", buf, 0x20u);
    }

    *__error() = v19;
    if (v10 != 3)
    {
      goto LABEL_41;
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v22 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
    if (!v22)
    {
      goto LABEL_41;
    }

    v23 = v22;
    v75 = v7;
    v76 = indexCopy;
    v78 = v13;
    v24 = 0;
    v25 = *v91;
    do
    {
      for (i = 0; i != v23; ++i)
      {
        if (*v91 != v25)
        {
          objc_enumerationMutation(obj);
        }

        v27 = *(*(&v90 + 1) + 8 * i);
        v28 = [v27 isEqualToString:{v81, v75, v76}];
        if ([(NSMutableArray *)self->_qpParsesDesc count])
        {
          v29 = 0;
          v30 = 0;
          v31 = -1;
          do
          {
            if ([-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesDesc objectAtIndexedSubscript:{v30), "isEqualToString:", v27}])
            {
              [-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange objectAtIndexedSubscript:{v30), "rangeValue"}];
              if (v31 == -1 || v32 > v29)
              {
                v29 = v32;
                v31 = v30;
              }
            }

            ++v30;
          }

          while (v30 < [(NSMutableArray *)self->_qpParsesDesc count]);
          if (v31 != -1)
          {
            v35 = [(PRAstBuilder *)self getFilterSourceTokenForIndex:v31];
            v36 = [-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange objectAtIndexedSubscript:{v31), "rangeValue"}];
            v38 = v36 != 0x7FFFFFFFFFFFFFFFLL && v36 + v37 == [(NSString *)[(PRAstBuilder *)self originalQuery] length];
            [(PRAstTermNode *)v78 addChild:[[PRAstQPFilterNode alloc] initWithFilterString:v27 sourceToken:v35 isLastToken:v38]];
          }
        }

        v24 |= v28;
      }

      v23 = [obj countByEnumeratingWithState:&v90 objects:v97 count:16];
    }

    while (v23);
    v13 = v78;
    v7 = v75;
    indexCopy = v76;
    if ((v24 & 1) == 0)
    {
LABEL_41:
      [(PRAstTermNode *)v13 addChild:[[PRAstQPFilterNode alloc] initWithFilterString:v81 sourceToken:v7 isLastToken:v77 == indexCopy]];
    }

    return v13;
  }

  if ([(PRAstBuilder *)self isNegatedToken:v7])
  {
    v15 = *__error();
    v16 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = self->_logHeader;
      *buf = 138412546;
      *&buf[4] = v17;
      v99 = 2048;
      v100 = indexCopy;
      _os_log_impl(&dword_1C278D000, v16, OS_LOG_TYPE_DEFAULT, "%@ Token %lu is negated token", buf, 0x16u);
    }

    *__error() = v15;
    return [(PRAstBuilder *)self parseNegatedTermAtIndex:indexCopy consumedTokens:tokens];
  }

  if ([(PRAstBuilder *)self isIgnoredToken:v7])
  {
    v39 = *__error();
    v40 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = self->_logHeader;
      *buf = 138412546;
      *&buf[4] = v41;
      v99 = 2048;
      v100 = indexCopy;
      _os_log_impl(&dword_1C278D000, v40, OS_LOG_TYPE_DEFAULT, "%@ Token %lu is ignored token", buf, 0x16u);
    }

    *__error() = v39;
    return [(PRAstBuilder *)self parseIgnoredTermAtIndex:indexCopy consumedTokens:tokens];
  }

  if ([(PRAstBuilder *)self isQuotedToken:v7])
  {
    v42 = *__error();
    v43 = _SILogForLogForCategory(19);
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      v44 = self->_logHeader;
      *buf = 138412546;
      *&buf[4] = v44;
      v99 = 2048;
      v100 = indexCopy;
      _os_log_impl(&dword_1C278D000, v43, OS_LOG_TYPE_DEFAULT, "%@ Token %lu is quoted token", buf, 0x16u);
    }

    *__error() = v42;
    return [(PRAstBuilder *)self parseQuotedExpressionAtIndex:indexCopy consumedTokens:tokens];
  }

  if ([(PRAstBuilder *)self hasFieldKeywordPrefix:v7])
  {
    *buf = 0;
    v46 = [(PRAstBuilder *)self parseFieldExpressionAtIndex:indexCopy consumedTokens:buf];
    if (v46)
    {
      v13 = v46;
      *tokens = *buf;
      return v13;
    }
  }

  v47 = v7;
  v48 = -[NSDictionary objectForKeyedSubscript:](self->_tokenToFilterMap, "objectForKeyedSubscript:", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:indexCopy]);
  v49 = [v48 count];
  v13 = [[PRAstTermNode alloc] initWithValue:v47 sourceToken:v47 isLastToken:v8 == indexCopy isNegated:0 isIgnored:0];
  if (v49)
  {
    *tokens = 1;
    v50 = [PRAstCompositeNode alloc];
    v96 = v13;
    v79 = -[PRAstCompositeNode initWithNodeType:children:sourceToken:isLastToken:](v50, "initWithNodeType:children:sourceToken:isLastToken:", @"OR", [MEMORY[0x1E695DEC8] arrayWithObjects:&v96 count:1], v47, v8 == indexCopy);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v52 = [v48 countByEnumeratingWithState:&v86 objects:v95 count:16];
    if (v52)
    {
      v53 = v52;
      v54 = *v87;
      do
      {
        for (j = 0; j != v53; ++j)
        {
          if (*v87 != v54)
          {
            objc_enumerationMutation(v48);
          }

          v56 = *(*(&v86 + 1) + 8 * j);
          integerValue = [v56 integerValue];
          if (integerValue < [(NSMutableArray *)self->_qpParsesDesc count])
          {
            v58 = [(NSMutableArray *)self->_qpParsesDesc objectAtIndexedSubscript:integerValue];
            v59 = [objc_msgSend(v58 componentsSeparatedByCharactersInSet:{objc_msgSend(MEMORY[0x1E696AB08], "characterSetWithCharactersInString:", @"() ", "componentsJoinedByString:", &stru_1F4284FD0}];
            v60 = [dictionary objectForKeyedSubscript:v59];
            if (!v60 || ([-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange objectAtIndexedSubscript:{objc_msgSend(v60, "integerValue")), "rangeValue"}], v62 = v61, objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange, "objectAtIndexedSubscript:", integerValue), "rangeValue"), v63 > v62))
            {
              [dictionary setObject:v56 forKeyedSubscript:v59];
            }
          }
        }

        v53 = [v48 countByEnumeratingWithState:&v86 objects:v95 count:16];
      }

      while (v53);
    }

    v84 = 0u;
    v85 = 0u;
    v82 = 0u;
    v83 = 0u;
    allValues = [dictionary allValues];
    v65 = [allValues countByEnumeratingWithState:&v82 objects:v94 count:16];
    if (v65)
    {
      v66 = v65;
      v67 = *v83;
      do
      {
        for (k = 0; k != v66; ++k)
        {
          if (*v83 != v67)
          {
            objc_enumerationMutation(allValues);
          }

          integerValue2 = [*(*(&v82 + 1) + 8 * k) integerValue];
          v70 = [(NSMutableArray *)self->_qpParsesDesc objectAtIndexedSubscript:integerValue2];
          v71 = [(PRAstBuilder *)self getFilterSourceTokenForIndex:integerValue2];
          v72 = [-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange objectAtIndexedSubscript:{integerValue2), "rangeValue"}];
          v74 = v72 != 0x7FFFFFFFFFFFFFFFLL && v72 + v73 == [(NSString *)[(PRAstBuilder *)self originalQuery] length];
          [(PRAstCompositeNode *)v79 addChild:[[PRAstQPFilterNode alloc] initWithFilterString:v70 sourceToken:v71 isLastToken:v74]];
        }

        v66 = [allValues countByEnumeratingWithState:&v82 objects:v94 count:16];
      }

      while (v66);
    }

    v13 = v79;
    if ([(NSMutableArray *)[(PRAstCompositeNode *)v79 children] count]== 1)
    {
      return [(NSMutableArray *)[(PRAstCompositeNode *)v79 children] objectAtIndexedSubscript:0];
    }
  }

  return v13;
}

- (id)parseTokensIntoAST
{
  result = [(NSArray *)self->_tokens count];
  if (result)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    if ([(NSArray *)self->_tokens count])
    {
      v6 = 0;
      v7 = @"AND";
      v8 = &stru_1F4284FD0;
      v9 = 0x1EEADE000uLL;
      do
      {
        v10 = [(NSArray *)self->_tokens objectAtIndexedSubscript:v6];
        if ([(PRAstLanguageProfile *)self->_languageProfile fieldTypeForKeyword:v10]== 12)
        {
          if ([array2 count])
          {
            if ([array2 count] == 1)
            {
              v11 = [array2 objectAtIndexedSubscript:0];
            }

            else
            {
              v11 = [objc_alloc((v9 + 1816)) initWithNodeType:v7 children:array2 sourceToken:v8 isLastToken:0];
            }

            [array addObject:v11];
            [array2 removeAllObjects];
          }
        }

        else
        {
          v12 = [(PRAstLanguageProfile *)self->_languageProfile fieldTypeForKeyword:v10];
          if (v12 == -1 || (v13 = v12, -[PRAstLanguageProfile argumentDirectionForKeyword:](self->_languageProfile, "argumentDirectionForKeyword:", v10) != 1) || ![array2 count] || (v14 = objc_msgSend(array2, "lastObject"), objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || (objc_msgSend(v14, "isIgnored") & 1) != 0)
          {
            v24 = 0;
            v15 = [(PRAstBuilder *)self parseExpressionAtIndex:v6 consumedTokens:&v24];
            if (v15)
            {
              [array2 addObject:v15];
            }

            v16 = v24;
            if (v24 <= 1)
            {
              v16 = 1;
            }

            v6 += v16;
            continue;
          }

          [array2 removeLastObject];
          v23 = v6 == [(NSArray *)self->_tokens count]- 1;
          v17 = v8;
          v18 = v7;
          v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %@", objc_msgSend(v14, "sourceToken"), v10];
          v20 = [PRAstFieldNode alloc];
          v21 = v19;
          v7 = v18;
          v8 = v17;
          v9 = 0x1EEADE000;
          [array2 addObject:{-[PRAstFieldNode initWithFieldType:originalKeyword:expression:sourceToken:isLastToken:isIgnored:](v20, "initWithFieldType:originalKeyword:expression:sourceToken:isLastToken:isIgnored:", v13, v10, v14, v21, v23, 0)}];
        }

        ++v6;
      }

      while (v6 < [(NSArray *)self->_tokens count]);
    }

    if ([array2 count])
    {
      if ([array2 count] == 1)
      {
        v22 = [array2 objectAtIndexedSubscript:0];
      }

      else
      {
        v22 = [[PRAstCompositeNode alloc] initWithNodeType:@"AND" children:array2 sourceToken:&stru_1F4284FD0 isLastToken:0];
      }

      [array addObject:v22];
    }

    result = [array count];
    if (result)
    {
      if ([array count] == 1)
      {
        return [array objectAtIndexedSubscript:0];
      }

      else
      {
        return [[PRAstCompositeNode alloc] initWithNodeType:@"OR" children:array sourceToken:[(PRAstBuilder *)self originalQuery] isLastToken:1];
      }
    }
  }

  return result;
}

- (id)stripNegationFromToken:(id)token
{
  if (![(PRAstBuilder *)self isNegatedToken:?])
  {
    return token;
  }

  v4 = [token rangeOfComposedCharacterSequenceAtIndex:0];

  return [token substringFromIndex:v4 + v5];
}

- (BOOL)isQuotedToken:(id)token
{
  v4 = [token length];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"'‘’“”«»„“‹›"];
    v6 = [token characterAtIndex:0];

    LOBYTE(v4) = [v5 characterIsMember:v6];
  }

  return v4;
}

- (BOOL)isNegatedToken:(id)token
{
  if ([token length] < 2)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"-~"];
  v6 = [token characterAtIndex:0];

  return [v5 characterIsMember:v6];
}

- (BOOL)hasFieldKeywordPrefix:(id)prefix
{
  if ([(PRAstLanguageProfile *)self->_languageProfile fieldTypeForKeyword:?]!= -1)
  {
LABEL_2:
    LOBYTE(v5) = 1;
    return v5;
  }

  LODWORD(v5) = [prefix containsString:@":"];
  if (v5)
  {
    v5 = [objc_msgSend(prefix componentsSeparatedByString:{@":", "firstObject"}];
    if (v5)
    {
      v6 = v5;
      if (-[PRAstLanguageProfile fieldTypeForKeyword:](self->_languageProfile, "fieldTypeForKeyword:", v5) == -1 && -[PRAstLanguageProfile fieldTypeForKeyword:](self->_languageProfile, "fieldTypeForKeyword:", [v6 stringByAppendingString:@":"]) == -1)
      {
        LOBYTE(v5) = 0;
        return v5;
      }

      goto LABEL_2;
    }
  }

  return v5;
}

- (void)buildTokenToFilterAndU2LabelsMapping
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_tokenRanges count])
  {
    v4 = 0;
    do
    {
      v5 = [-[NSArray objectAtIndexedSubscript:](self->_tokenRanges objectAtIndexedSubscript:{v4), "rangeValue"}];
      v7 = v6;
      array = [MEMORY[0x1E695DF70] array];
      if ([(NSMutableArray *)self->_qpParsesRange count])
      {
        v9 = 0;
        do
        {
          v10 = [-[NSMutableArray objectAtIndexedSubscript:](self->_qpParsesRange objectAtIndexedSubscript:{v9), "rangeValue"}];
          if (v10 <= v5 && v5 + v7 <= v10 + v11)
          {
            [array addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v9)}];
          }

          ++v9;
        }

        while (v9 < [(NSMutableArray *)self->_qpParsesRange count]);
      }

      if ([array count])
      {
        [dictionary setObject:array forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v4)}];
      }

      array2 = [MEMORY[0x1E695DF70] array];
      if ([(NSMutableArray *)self->_u2TokensRange count])
      {
        v14 = 0;
        do
        {
          v15 = [-[NSMutableArray objectAtIndexedSubscript:](self->_u2TokensRange objectAtIndexedSubscript:{v14), "rangeValue"}];
          if (v15 <= v5 && v5 + v7 <= v15 + v16)
          {
            [array2 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v14)}];
          }

          ++v14;
        }

        while (v14 < [(NSMutableArray *)self->_u2TokensRange count]);
      }

      if ([array2 count])
      {
        [dictionary2 setObject:array2 forKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", v4)}];
      }

      ++v4;
    }

    while (v4 < [(NSArray *)self->_tokenRanges count]);
  }

  self->_tokenToFilterMap = dictionary;
  self->_tokenToU2LabelsMap = dictionary2;
}

- (void)extractQUFiltersAndLabelsFromQueryUnderstanding:(id)understanding
{
  v47 = *MEMORY[0x1E69E9840];
  [(NSMutableArray *)self->_qpParsesDesc removeAllObjects];
  [(NSMutableArray *)self->_qpParsesRange removeAllObjects];
  [(NSMutableSet *)self->_specialIndices removeAllObjects];
  [(NSMutableArray *)self->_u2TokensLabel removeAllObjects];
  selfCopy = self;
  [(NSMutableArray *)self->_u2TokensRange removeAllObjects];
  if (understanding)
  {
    if ([understanding objectForKeyedSubscript:@"kQPQUOutputTokenInfo"])
    {
      v5 = [understanding objectForKeyedSubscript:@"kQPQUOutputTokenInfo"];
      if ([v5 count])
      {
        v6 = 0;
        do
        {
          v7 = [v5 objectAtIndexedSubscript:v6];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v7 objectForKeyedSubscript:@"kQPQUOutputTokenRange"])
            {
              if ([v7 objectForKeyedSubscript:@"kQPQUOutputTokenArgIds"])
              {
                if ([v7 objectForKeyedSubscript:@"kQPQUOutputTokenArgScores"])
                {
                  if ([v7 objectForKeyedSubscript:@"kQPQUOutputToken"])
                  {
                    v8 = [v7 objectForKeyedSubscript:@"kQPQUOutputTokenRange"];
                    objc_opt_class();
                    if ((objc_opt_isKindOfClass() & 1) != 0 && [v8 rangeValue] != 0x7FFFFFFFFFFFFFFFLL)
                    {
                      v9 = [v7 objectForKeyedSubscript:@"kQPQUOutputTokenArgIds"];
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        if ([v9 count])
                        {
                          [(NSMutableArray *)self->_u2TokensRange addObject:v8];
                          -[NSMutableArray addObject:](self->_u2TokensLabel, "addObject:", [v9 objectAtIndexedSubscript:0]);
                        }
                      }
                    }
                  }
                }
              }
            }
          }

          ++v6;
        }

        while (v6 < [v5 count]);
      }
    }

    if ([understanding objectForKeyedSubscript:@"attributedParses"])
    {
      v10 = [understanding objectForKeyedSubscript:@"attributedParses"];
      if ([v10 count])
      {
        v11 = [MEMORY[0x1E695DFA8] set];
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v12 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (v12)
        {
          v13 = *v38;
          v14 = MEMORY[0x1E69E9820];
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v38 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v16 = *(*(&v37 + 1) + 8 * i);
              v17 = [v16 length];
              v36[0] = v14;
              v36[1] = 3221225472;
              v36[2] = __64__PRAstBuilder_extractQUFiltersAndLabelsFromQueryUnderstanding___block_invoke;
              v36[3] = &unk_1E8197958;
              v36[4] = v11;
              [v16 enumerateAttribute:@"kQPFlagColorAction" inRange:0 options:v17 usingBlock:{0, v36}];
            }

            v12 = [v10 countByEnumeratingWithState:&v37 objects:v46 count:16];
          }

          while (v12);
        }

        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        v18 = [v10 countByEnumeratingWithState:&v32 objects:v45 count:16];
        if (v18)
        {
          v19 = *v33;
          do
          {
            for (j = 0; j != v18; ++j)
            {
              if (*v33 != v19)
              {
                objc_enumerationMutation(v10);
              }

              v21 = *(*(&v32 + 1) + 8 * j);
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3052000000;
              v42 = __Block_byref_object_copy__13345;
              v43 = __Block_byref_object_dispose__13346;
              v44 = 0;
              v22 = [v21 length];
              v31[0] = MEMORY[0x1E69E9820];
              v31[1] = 3221225472;
              v31[2] = __64__PRAstBuilder_extractQUFiltersAndLabelsFromQueryUnderstanding___block_invoke_246;
              v31[3] = &unk_1E8197980;
              v31[5] = v11;
              v31[6] = buf;
              v31[4] = selfCopy;
              [v21 enumerateAttributesInRange:0 options:v22 usingBlock:{0, v31}];
              _Block_object_dispose(buf, 8);
            }

            v18 = [v10 countByEnumeratingWithState:&v32 objects:v45 count:16];
          }

          while (v18);
        }

        if ([(NSMutableArray *)selfCopy->_qpParsesDesc count])
        {
          v23 = 0;
          obj = 138412802;
          do
          {
            v24 = [(NSMutableArray *)selfCopy->_qpParsesDesc objectAtIndexedSubscript:v23, obj];
            v25 = [(NSMutableArray *)selfCopy->_qpParsesRange objectAtIndexedSubscript:v23];
            v26 = *__error();
            v27 = _SILogForLogForCategory(19);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
            {
              logHeader = selfCopy->_logHeader;
              *buf = obj;
              *&buf[4] = logHeader;
              *&buf[12] = 2112;
              *&buf[14] = v24;
              *&buf[22] = 2112;
              v42 = v25;
              _os_log_impl(&dword_1C278D000, v27, OS_LOG_TYPE_DEFAULT, "%@ Got QP parse %@ at range %@", buf, 0x20u);
            }

            *__error() = v26;
            ++v23;
          }

          while (v23 < [(NSMutableArray *)selfCopy->_qpParsesDesc count]);
        }
      }
    }
  }
}

uint64_t __64__PRAstBuilder_extractQUFiltersAndLabelsFromQueryUnderstanding___block_invoke(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = result;
    objc_opt_class();
    result = objc_opt_isKindOfClass();
    if (result)
    {
      v4 = *(v3 + 32);
      v5 = [a2 lowercaseString];

      return [v4 addObject:v5];
    }
  }

  return result;
}

void *__64__PRAstBuilder_extractQUFiltersAndLabelsFromQueryUnderstanding___block_invoke_246(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  result = [a2 count];
  if (result)
  {
    if ([a2 objectForKeyedSubscript:@"kQPDateExtension"])
    {
      if ([*(*(*(a1 + 48) + 8) + 40) length])
      {
        [*(*(a1 + 32) + 32) addObject:*(*(*(a1 + 48) + 8) + 40)];
        [*(*(a1 + 32) + 40) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
      }

      *(*(*(a1 + 48) + 8) + 40) = 0;
    }

    v9 = [a2 objectForKeyedSubscript:@"kQPDescription"];
    result = [v9 length];
    if (result)
    {
      v10 = [a2 objectForKeyedSubscript:@"kQPFlaggedAction"];
      if (!v10 || (v11 = v10, objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || ![*(a1 + 40) count] || (result = objc_msgSend(*(a1 + 40), "containsObject:", objc_msgSend(v11, "lowercaseString")), (result & 1) == 0))
      {
        v12 = [a2 objectForKeyedSubscript:@"kQPDisplay"];
        v13 = [a2 objectForKeyedSubscript:@"kQPKind"];
        if ((([v12 hasPrefix:@"Messages"] & 1) != 0 || objc_msgSend(v13, "isEqualToString:", @"emails")) && objc_msgSend(v9, "length"))
        {
          [*(*(a1 + 32) + 64) addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInteger:", objc_msgSend(*(*(a1 + 32) + 32), "count"))}];
          [*(*(a1 + 32) + 32) addObject:v9];
          v14 = *(*(a1 + 32) + 40);
          v15 = [MEMORY[0x1E696B098] valueWithRange:{a3, a4}];

          return [v14 addObject:v15];
        }

        else if ([a2 objectForKeyedSubscript:@"kQPDate"] || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPFlagColorAction") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPReadAction") && objc_msgSend(v12, "length") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPAttached") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPAttachment") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPRepliedAction") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPSentAction") || objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPReceivedAction") || (result = objc_msgSend(a2, "objectForKeyedSubscript:", @"kQPFlaggedAction")) != 0)
        {
          [*(*(a1 + 32) + 32) addObject:v9];
          [*(*(a1 + 32) + 40) addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", a3, a4)}];
          result = [a2 objectForKeyedSubscript:@"kQPDate"];
          if (result)
          {
            *(*(*(a1 + 48) + 8) + 40) = v9;
          }
        }
      }
    }
  }

  return result;
}

- (BOOL)tokenizeQuery:(id)query
{
  QueryTokens = CreateQueryTokens(query, 1);
  if (!QueryTokens)
  {
    return 0;
  }

  v5 = QueryTokens;
  v6 = *QueryTokens;
  if (*QueryTokens && (v7 = *(QueryTokens + 1), v8 = *(QueryTokens + 2), CFArrayGetCount(*QueryTokens)))
  {
    v39 = v5;
    selfCopy = self;
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    Count = CFArrayGetCount(v6);
    if (Count >= 1)
    {
      v12 = Count;
      for (i = 0; i != v12; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v6, i);
        if (ValueAtIndex)
        {
          v15 = ValueAtIndex;
          if (CFStringGetLength(ValueAtIndex) >= 1)
          {
            [array addObject:v15];
            RangeAtIndex = getRangeAtIndex(v7, v8, i);
            [array2 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", RangeAtIndex, v17)}];
          }
        }
      }
    }

    v18 = selfCopy;
    if (![(PRAstLanguageProfile *)[(PRAstBuilder *)selfCopy languageProfile] isSpaceDelimited])
    {
      v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array, "count")}];
      v20 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(array2, "count")}];
      if ([array count])
      {
        v21 = 0;
        do
        {
          v22 = [array objectAtIndexedSubscript:v21];
          v23 = [objc_msgSend(array2 objectAtIndexedSubscript:{v21), "rangeValue"}];
          v25 = v24;
          v26 = v21 + 1;
          if ([v22 isEqualToString:@":"] && v21 && v26 < objc_msgSend(array, "count") && (v27 = objc_msgSend(v19, "lastObject"), -[PRAstLanguageProfile fieldTypeForKeyword:](-[PRAstBuilder languageProfile](selfCopy, "languageProfile"), "fieldTypeForKeyword:", v27) != -1))
          {
            v28 = [array objectAtIndexedSubscript:v21 + 1];
            v29 = [objc_msgSend(array2 objectAtIndexedSubscript:{v21 + 1), "rangeValue"}];
            v31 = v30;
            v32 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v27, v28];
            v33 = [objc_msgSend(v20 "lastObject")];
            v35 = v34;
            [v19 removeLastObject];
            [v20 removeLastObject];
            [v19 addObject:v32];
            v41.location = v33;
            v41.length = v35;
            v42.location = v29;
            v42.length = v31;
            v36 = NSUnionRange(v41, v42);
            [v20 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", v36.location, v36.length)}];
            v26 = v21 + 2;
          }

          else
          {
            [v19 addObject:v22];
            [v20 addObject:{objc_msgSend(MEMORY[0x1E696B098], "valueWithRange:", v23, v25)}];
          }

          v21 = v26;
        }

        while (v26 < [array count]);
        array2 = v20;
        array = v19;
        v18 = selfCopy;
      }

      else
      {
        array2 = v20;
        array = v19;
      }
    }

    v18->_tokens = array;
    v18->_tokenRanges = array2;
    v37 = 1;
    v5 = v39;
  }

  else
  {
    v37 = 0;
  }

  freeQueryTokensContext(v5);
  return v37;
}

- (BOOL)node:(id)node containsFilter:(id)filter
{
  v19 = *MEMORY[0x1E69E9840];
  if (!node)
  {
    return 0;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      children = [node children];
      v10 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v15;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v15 != v12)
            {
              objc_enumerationMutation(children);
            }

            if ([(PRAstBuilder *)self node:*(*(&v14 + 1) + 8 * i) containsFilter:filter])
            {
              return 1;
            }
          }

          v11 = [children countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return -[PRAstBuilder node:containsFilter:](self, "node:containsFilter:", [node expression], filter);
    }

    return 0;
  }

  filterString = [node filterString];

  return [filterString isEqualToString:filter];
}

- (id)buildASTFromQuery:(id)query queryUnderstanding:(id)understanding
{
  if (!query)
  {
    return 0;
  }

  if (![query length])
  {
    return 0;
  }

  [(PRAstBuilder *)self setOriginalQuery:query];
  if (![(PRAstBuilder *)self tokenizeQuery:query])
  {
    return 0;
  }

  [(PRAstBuilder *)self extractQUFiltersAndLabelsFromQueryUnderstanding:understanding];
  [(PRAstBuilder *)self buildTokenToFilterAndU2LabelsMapping];
  parseTokensIntoAST = [(PRAstBuilder *)self parseTokensIntoAST];
  if ((*(self->_context + 28) & 0x10) != 0 && [(NSString *)[(PRAstLanguageProfile *)self->_languageProfile languageCode] isEqualToString:@"en"])
  {
    [(PRAstBuilder *)self postProcessAstForMailToken:parseTokensIntoAST];
  }

  return parseTokensIntoAST;
}

- (void)postProcessAstForMailToken:(id)token
{
  v31 = *MEMORY[0x1E69E9840];
  if (token)
  {
    v5 = [(PRAstBuilder *)self astHasFieldNodes:?];
    hasNonEmailQPFilters = [(PRAstBuilder *)self hasNonEmailQPFilters];
    if (v5 || hasNonEmailQPFilters)
    {

      [(PRAstBuilder *)self setMailTokenIgnoredInAst:token];
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v19 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(objc_msgSend(token, "children"), "count")}];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = [token children];
        v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
        if (v20)
        {
          v18 = *v26;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v26 != v18)
              {
                objc_enumerationMutation(obj);
              }

              v8 = *(*(&v25 + 1) + 8 * i);
              objc_opt_class();
              if ((objc_opt_isKindOfClass() & 1) != 0 && [objc_msgSend(v8 "nodeType")] && (v23 = 0u, v24 = 0u, v21 = 0u, v22 = 0u, v9 = objc_msgSend(v8, "children"), (v10 = objc_msgSend(v9, "countByEnumeratingWithState:objects:count:", &v21, v29, 16)) != 0))
              {
                v11 = v10;
                v12 = *v22;
LABEL_14:
                v13 = 0;
                while (1)
                {
                  if (*v22 != v12)
                  {
                    objc_enumerationMutation(v9);
                  }

                  v14 = *(*(&v21 + 1) + 8 * v13);
                  objc_opt_class();
                  if ((objc_opt_isKindOfClass() & 1) != 0 && -[PRAstLanguageProfile fieldTypeForKeyword:](-[PRAstBuilder languageProfile](self, "languageProfile"), "fieldTypeForKeyword:", [v14 value]) == 3)
                  {
                    break;
                  }

                  if (v11 == ++v13)
                  {
                    v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
                    if (v11)
                    {
                      goto LABEL_14;
                    }

                    goto LABEL_24;
                  }
                }

                if (!v14)
                {
                  goto LABEL_24;
                }

                v15 = v19;
                v16 = v14;
              }

              else
              {
LABEL_24:
                v15 = v19;
                v16 = v8;
              }

              [v15 addObject:v16];
            }

            v20 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
          }

          while (v20);
        }

        [token setChildren:v19];
      }
    }
  }
}

- (void)setMailTokenIgnoredInAst:(id)ast
{
  v15 = *MEMORY[0x1E69E9840];
  if (ast)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && -[PRAstLanguageProfile fieldTypeForKeyword:](-[PRAstBuilder languageProfile](self, "languageProfile"), "fieldTypeForKeyword:", [ast value]) == 3)
    {
      [ast setIsIgnored:1];
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = 0u;
      v13 = 0u;
      v10 = 0u;
      v11 = 0u;
      children = [ast children];
      v6 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v11;
        do
        {
          v9 = 0;
          do
          {
            if (*v11 != v8)
            {
              objc_enumerationMutation(children);
            }

            [(PRAstBuilder *)self setMailTokenIgnoredInAst:*(*(&v10 + 1) + 8 * v9++)];
          }

          while (v7 != v9);
          v7 = [children countByEnumeratingWithState:&v10 objects:v14 count:16];
        }

        while (v7);
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[PRAstBuilder setMailTokenIgnoredInAst:](self, "setMailTokenIgnoredInAst:", [ast expression]);
    }
  }
}

- (BOOL)hasNonEmailQPFilters
{
  v3 = [(NSMutableArray *)[(PRAstBuilder *)self qpParsesDesc] count];
  if (v3)
  {
    if ([(NSMutableArray *)[(PRAstBuilder *)self qpParsesDesc] count]<= 1)
    {
      LOBYTE(v3) = [-[NSMutableArray objectAtIndexedSubscript:](-[PRAstBuilder qpParsesDesc](self "qpParsesDesc")] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  return v3;
}

- (BOOL)astHasFieldNodes:(id)nodes
{
  v16 = *MEMORY[0x1E69E9840];
  if (!nodes)
  {
    goto LABEL_14;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_14:
    LOBYTE(v5) = 0;
    return v5;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  children = [nodes children];
  v5 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (!v5)
  {
    return v5;
  }

  v7 = v5;
  v8 = *v12;
LABEL_7:
  v9 = 0;
  while (1)
  {
    if (*v12 != v8)
    {
      objc_enumerationMutation(children);
    }

    if ([(PRAstBuilder *)self astHasFieldNodes:*(*(&v11 + 1) + 8 * v9)])
    {
      break;
    }

    if (v7 == ++v9)
    {
      v7 = [children countByEnumeratingWithState:&v11 objects:v15 count:16];
      LOBYTE(v5) = 0;
      if (v7)
      {
        goto LABEL_7;
      }

      return v5;
    }
  }

LABEL_3:
  LOBYTE(v5) = 1;
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = PRAstBuilder;
  [(PRAstBuilder *)&v3 dealloc];
}

- (PRAstBuilder)initWithLanguageCode:(id)code context:(PRContext *)context logHeader:(id)header
{
  v10.receiver = self;
  v10.super_class = PRAstBuilder;
  v8 = [(PRAstBuilder *)&v10 init];
  if (v8)
  {
    v8->_languageProfile = [[PRAstLanguageProfile alloc] initWithLanguageCode:code];
    v8->_qpParsesDesc = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_qpParsesRange = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_u2TokensLabel = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_u2TokensRange = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8->_specialIndices = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v8->_logHeader = header;
    v8->_context = context;
  }

  return v8;
}

@end