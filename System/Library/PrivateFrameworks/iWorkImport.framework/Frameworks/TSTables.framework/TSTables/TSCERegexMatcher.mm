@interface TSCERegexMatcher
+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)string caseSensitive:(BOOL)sensitive entireMatch:(BOOL)match outError:(id *)error;
+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)string caseSensitive:(BOOL)sensitive outError:(id *)error;
+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)string outError:(id *)error;
+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)match caseSensitive:(BOOL)sensitive entireMatch:(BOOL)entireMatch outError:(id *)error;
+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)match outError:(id *)error;
- (TSCERegexMatcher)initWithRegexString:(id)string caseSensitive:(BOOL)sensitive entireMatch:(BOOL)match outError:(id *)error;
- (TSCERegexMatcher)initWithString:(id)string caseSensitive:(BOOL)sensitive entireMatch:(BOOL)match outError:(id *)error;
- (_NSRange)rangeOfFirstMatchInString:(id)string;
- (_NSRange)rangeOfFirstMatchInString:(id)string options:(unint64_t)options range:(_NSRange)range;
- (_NSRange)rangeOfMatchInString:(id)string occurrence:(int64_t)occurrence;
- (_NSRange)rangeOfMatchInString:(id)string occurrence:(int64_t)occurrence matchesFound:(int64_t *)found;
- (id)matchesInString:(id)string options:(unint64_t)options range:(_NSRange)range;
- (id)stringByReplacingMatchesInString:(id)string options:(unint64_t)options range:(_NSRange)range withTemplate:(id)template;
@end

@implementation TSCERegexMatcher

- (TSCERegexMatcher)initWithString:(id)string caseSensitive:(BOOL)sensitive entireMatch:(BOOL)match outError:(id *)error
{
  sensitiveCopy = sensitive;
  matchCopy = match;
  v6 = objc_msgSend_stringWithString_(MEMORY[0x277CCAB68], a2, string, sensitive);
  v56 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v7, @"~?*", v8);
  v57 = objc_msgSend_characterSetWithCharactersInString_(MEMORY[0x277CCA900], v9, @"+[(){}^$|\\./", v10);
  v14 = objc_msgSend_mutableCopy(v57, v11, v12, v13);
  objc_msgSend_formUnionWithCharacterSet_(v14, v15, v56, v16);
  v21 = objc_msgSend_rangeOfCharacterFromSet_(v6, v17, v14, v18);
  v22 = v19;
  v23 = 0x7FFFFFFFFFFFFFFFLL;
  while (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v24 = objc_msgSend_characterAtIndex_(v6, v19, v21, v20);
    v28 = v24;
    if (v24 == 42)
    {
      if (v21 == v23)
      {
        objc_msgSend_replaceCharactersInRange_withString_(v6, v25, v21, v22, &stru_2834BADA0);
        v32 = v23;
      }

      else
      {
        objc_msgSend_replaceCharactersInRange_withString_(v6, v25, v21, v22, @".*");
        v32 = v21 + 2;
        v23 = v21 + 2;
      }
    }

    else if (v24 == 63)
    {
      objc_msgSend_replaceCharactersInRange_withString_(v6, v25, v21, v22, @".{1}");
      v32 = v21 + 4;
    }

    else
    {
      if (v24 == 126)
      {
        v32 = v21 + 1;
        if (v21 >= objc_msgSend_length(v6, v25, v26, v27) - 1)
        {
          goto LABEL_18;
        }

        v33 = objc_msgSend_characterAtIndex_(v6, v29, v21 + 1, v31);
        if (v33 == 42)
        {
          objc_msgSend_replaceCharactersInRange_withString_(v6, v29, v21, 2, @"\\*");
        }

        else
        {
          if (v33 != 63)
          {
            goto LABEL_18;
          }

          objc_msgSend_replaceCharactersInRange_withString_(v6, v29, v21, 2, @"\\?");
        }
      }

      else
      {
        if ((objc_msgSend_characterIsMember_(v57, v25, v24, v27) & 1) == 0)
        {
          v36 = MEMORY[0x277D81150];
          v37 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v34, "NSString *TSCEConvertWildcardStringToICURegex(NSString *__strong)", v35);
          v40 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v38, "/Library/Caches/com.apple.xbs/Sources/iWorkImport/shared/calculationEngine/TSCERegexMatcher.mm", v39);
          objc_msgSend_handleFailureInFunction_file_lineNumber_isFatal_description_(v36, v41, v37, v40, 84, 0, "We don't want to quote a character that doesn't need to be quoted.");

          objc_msgSend_logBacktraceThrottled(MEMORY[0x277D81150], v42, v43, v44);
        }

        v45 = objc_msgSend_stringWithFormat_(MEMORY[0x277CCACA8], v34, @"\\%C", v35, v28);
        objc_msgSend_replaceCharactersInRange_withString_(v6, v46, v21, v22, v45);
      }

      v32 = v21 + 2;
    }

LABEL_18:
    v47 = objc_msgSend_length(v6, v29, v30, v31);
    v21 = objc_msgSend_rangeOfCharacterFromSet_options_range_(v6, v48, v14, 0, v32, v47 - v32);
    v22 = v19;
  }

  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(self, v49, v6, sensitiveCopy, matchCopy, error);
  return matched;
}

- (TSCERegexMatcher)initWithRegexString:(id)string caseSensitive:(BOOL)sensitive entireMatch:(BOOL)match outError:(id *)error
{
  matchCopy = match;
  sensitiveCopy = sensitive;
  stringCopy = string;
  v27.receiver = self;
  v27.super_class = TSCERegexMatcher;
  v11 = [(TSCERegexMatcher *)&v27 init];
  if (v11)
  {
    v12 = stringCopy;
    v13 = v12;
    if (matchCopy)
    {
      v14 = objc_alloc(MEMORY[0x277CCACA8]);
      v13 = objc_msgSend_initWithFormat_(v14, v15, @"^%@$", v16, v12);
    }

    v17 = objc_alloc(MEMORY[0x277CCAC68]);
    if (sensitiveCopy)
    {
      v19 = 48;
    }

    else
    {
      v19 = 49;
    }

    v26 = 0;
    v20 = objc_msgSend_initWithPattern_options_error_(v17, v18, v13, v19, &v26);
    v21 = v26;
    regularExpression = v11->_regularExpression;
    v11->_regularExpression = v20;

    if (v21)
    {
      *error = objc_msgSend_invalidRegexError_(TSCEError, v23, v12, v24);

      v11 = 0;
    }
  }

  return v11;
}

+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)match caseSensitive:(BOOL)sensitive entireMatch:(BOOL)entireMatch outError:(id *)error
{
  entireMatchCopy = entireMatch;
  sensitiveCopy = sensitive;
  matchCopy = match;
  v10 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithString_caseSensitive_entireMatch_outError_(v10, v11, matchCopy, sensitiveCopy, entireMatchCopy, error);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithStringMatch:(id)match outError:(id *)error
{
  matchCopy = match;
  v6 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithString_caseSensitive_entireMatch_outError_(v6, v7, matchCopy, 0, 1, error);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)string caseSensitive:(BOOL)sensitive entireMatch:(BOOL)match outError:(id *)error
{
  matchCopy = match;
  sensitiveCopy = sensitive;
  stringCopy = string;
  v10 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(v10, v11, stringCopy, sensitiveCopy, matchCopy, error);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)string caseSensitive:(BOOL)sensitive outError:(id *)error
{
  sensitiveCopy = sensitive;
  stringCopy = string;
  v8 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(v8, v9, stringCopy, sensitiveCopy, 0, error);

  return matched;
}

+ (TSCERegexMatcher)regexMatcherWithRegexString:(id)string outError:(id *)error
{
  stringCopy = string;
  v6 = objc_alloc(objc_opt_class());
  matched = objc_msgSend_initWithRegexString_caseSensitive_entireMatch_outError_(v6, v7, stringCopy, 1, 0, error);

  return matched;
}

- (_NSRange)rangeOfFirstMatchInString:(id)string
{
  stringCopy = string;
  v8 = objc_msgSend_length(stringCopy, v5, v6, v7);
  MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(self, v9, stringCopy, 0, 0, v8);
  v12 = v11;

  v13 = MatchInString_options_range;
  v14 = v12;
  result.length = v14;
  result.location = v13;
  return result;
}

- (_NSRange)rangeOfMatchInString:(id)string occurrence:(int64_t)occurrence
{
  v4 = objc_msgSend_rangeOfMatchInString_occurrence_matchesFound_(self, a2, string, occurrence, 0);
  result.length = v5;
  result.location = v4;
  return result;
}

- (_NSRange)rangeOfMatchInString:(id)string occurrence:(int64_t)occurrence matchesFound:(int64_t *)found
{
  stringCopy = string;
  v12 = stringCopy;
  if (occurrence < 0)
  {
    v18 = objc_msgSend_length(stringCopy, v9, v10, v11);
    v20 = objc_msgSend_matchesInString_options_range_(self, v19, v12, 0, 0, v18);
    v24 = v20;
    if (found)
    {
      *found = objc_msgSend_count(v20, v21, v22, v23);
    }

    if (objc_msgSend_count(v24, v21, v22, v23) >= -occurrence)
    {
      v28 = objc_msgSend_count(v24, v25, v26, v27);
      v31 = objc_msgSend_objectAtIndex_(v24, v29, v28 + occurrence, v30);
      v16 = objc_msgSend_range(v31, v32, v33, v34);
      v17 = v35;
    }

    else
    {
      v16 = *MEMORY[0x277D81490];
      v17 = *(MEMORY[0x277D81490] + 8);
    }
  }

  else
  {
    v46 = 0;
    v47 = &v46;
    v48 = 0x2020000000;
    v49 = 0;
    v39 = 0;
    v40 = &v39;
    v41 = 0x4012000000;
    v42 = sub_22126B670;
    v43 = nullsub_33;
    v44 = &unk_22188E88F;
    v45 = *MEMORY[0x277D81490];
    regularExpression = self->_regularExpression;
    v14 = objc_msgSend_length(stringCopy, v9, v10, v11);
    v38[0] = MEMORY[0x277D85DD0];
    v38[1] = 3221225472;
    v38[2] = sub_22126B680;
    v38[3] = &unk_278462050;
    v38[5] = &v39;
    v38[6] = occurrence;
    v38[4] = &v46;
    objc_msgSend_enumerateMatchesInString_options_range_usingBlock_(regularExpression, v15, v12, 0, 0, v14, v38);
    if (found)
    {
      *found = v47[3];
    }

    v16 = v40[6];
    v17 = v40[7];
    _Block_object_dispose(&v39, 8);
    _Block_object_dispose(&v46, 8);
  }

  v36 = v16;
  v37 = v17;
  result.length = v37;
  result.location = v36;
  return result;
}

- (_NSRange)rangeOfFirstMatchInString:(id)string options:(unint64_t)options range:(_NSRange)range
{
  MatchInString_options_range = objc_msgSend_rangeOfFirstMatchInString_options_range_(self->_regularExpression, a2, string, options, range.location, range.length);
  result.length = v6;
  result.location = MatchInString_options_range;
  return result;
}

- (id)matchesInString:(id)string options:(unint64_t)options range:(_NSRange)range
{
  v5 = objc_msgSend_matchesInString_options_range_(self->_regularExpression, a2, string, options, range.location, range.length);

  return v5;
}

- (id)stringByReplacingMatchesInString:(id)string options:(unint64_t)options range:(_NSRange)range withTemplate:(id)template
{
  v6 = objc_msgSend_stringByReplacingMatchesInString_options_range_withTemplate_(self->_regularExpression, a2, string, options, range.location, range.length, template);

  return v6;
}

@end