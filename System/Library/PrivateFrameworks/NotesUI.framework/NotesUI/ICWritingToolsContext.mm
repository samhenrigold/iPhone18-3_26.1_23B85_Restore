@interface ICWritingToolsContext
- (ICWritingToolsContext)initWithAttributedString:(id)string originalString:(id)originalString originalRange:(_NSRange)range rangeMapping:(id)mapping;
- (_NSRange)rangeInOriginalStringCorrespondingToRange:(_NSRange)range;
- (void)updateRangeMapping:(id)mapping withinRange:(_NSRange)range;
@end

@implementation ICWritingToolsContext

- (ICWritingToolsContext)initWithAttributedString:(id)string originalString:(id)originalString originalRange:(_NSRange)range rangeMapping:(id)mapping
{
  length = range.length;
  location = range.location;
  v43 = *MEMORY[0x1E69E9840];
  stringCopy = string;
  originalStringCopy = originalString;
  mappingCopy = mapping;
  if (location != [originalStringCopy length] || length)
  {
    selfCopy = self;
    v31 = length;
    v32 = originalStringCopy;
    v33 = stringCopy;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    obj = [mappingCopy allKeys];
    v16 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      v14 = location;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(obj);
          }

          [*(*(&v38 + 1) + 8 * i) rangeValue];
          v21 = v20;
          v22 = objc_msgSend_objectForKeyedSubscript_(mappingCopy);
          rangeValue = [v22 rangeValue];
          v25 = v24;

          if (location >= rangeValue + v25)
          {
            v14 = v21 + v14 - v25;
          }

          else if (location > rangeValue)
          {
            v26 = os_log_create("com.apple.notes", "WritingTools");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
            {
              [ICWritingToolsContext initWithAttributedString:v37 originalString:v26 originalRange:? rangeMapping:?];
            }
          }
        }

        v17 = [obj countByEnumeratingWithState:&v38 objects:v42 count:16];
      }

      while (v17);
    }

    else
    {
      v14 = location;
    }

    originalStringCopy = v32;
    stringCopy = v33;
    self = selfCopy;
    v15 = v31;
  }

  else
  {
    v14 = [stringCopy length];
    v15 = 0;
  }

  v35.receiver = self;
  v35.super_class = ICWritingToolsContext;
  v27 = [(UIWritingToolsCoordinatorContext *)&v35 initWithAttributedString:stringCopy range:v14, v15];
  v28 = v27;
  if (v27)
  {
    [(ICWritingToolsContext *)v27 setOriginalString:originalStringCopy];
    [(ICWritingToolsContext *)v28 setRangeMapping:mappingCopy];
  }

  return v28;
}

- (_NSRange)rangeInOriginalStringCorrespondingToRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  v38 = *MEMORY[0x1E69E9840];
  rangeMapping = [(ICWritingToolsContext *)self rangeMapping];
  v6 = [rangeMapping count];

  if (v6)
  {
    rangeMapping2 = [(ICWritingToolsContext *)self rangeMapping];
    allKeys = [rangeMapping2 allKeys];
    v9 = [allKeys sortedArrayUsingComparator:&__block_literal_global_5];

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v9;
    v10 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    v28 = length;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v31 = location + length;
      v30 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          rangeValue = [*(*(&v33 + 1) + 8 * i) rangeValue];
          v17 = v16;
          rangeMapping3 = [(ICWritingToolsContext *)self rangeMapping];
          v19 = objc_msgSend_objectForKeyedSubscript_(rangeMapping3);
          [v19 rangeValue];
          v21 = v20;

          v22 = v21 - v17;
          v23 = rangeValue + v17;
          if (rangeValue < v31 && v23 > location)
          {
            v25 = v21 - v17;
          }

          else
          {
            v25 = 0;
          }

          v12 += v25;
          if (v23 > location)
          {
            v22 = 0;
          }

          v13 += v22;
        }

        v11 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v11);
    }

    else
    {
      v12 = 0;
      v13 = 0;
    }

    location += v13;
    length = v12 + v28;
  }

  v26 = location;
  v27 = length;
  result.length = v27;
  result.location = v26;
  return result;
}

uint64_t __67__ICWritingToolsContext_rangeInOriginalStringCorrespondingToRange___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 rangeValue];
  v6 = [v4 rangeValue];

  if (v5 < v6)
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

- (void)updateRangeMapping:(id)mapping withinRange:(_NSRange)range
{
  length = range.length;
  location = range.location;
  selfCopy = self;
  v43 = *MEMORY[0x1E69E9840];
  mappingCopy = mapping;
  v7 = mappingCopy;
  if (location)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v9 = v7;
    obj = [v7 allKeys];
    v10 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v38;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v38 != v12)
          {
            objc_enumerationMutation(obj);
          }

          rangeValue = [*(*(&v37 + 1) + 8 * i) rangeValue];
          v16 = v15;
          v17 = objc_msgSend_objectForKeyedSubscript_(v9);
          v18 = [MEMORY[0x1E696B098] valueWithRange:{rangeValue + location, v16}];
          [dictionary setObject:v17 forKeyedSubscript:v18];
        }

        v11 = [obj countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v11);
    }

    v19 = [dictionary copy];
    v7 = v9;
  }

  else
  {
    v19 = mappingCopy;
  }

  v20 = selfCopy;
  rangeMapping = [(ICWritingToolsContext *)selfCopy rangeMapping];
  v22 = [rangeMapping mutableCopy];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  rangeMapping2 = [(ICWritingToolsContext *)v20 rangeMapping];
  v24 = [rangeMapping2 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v34;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v34 != v26)
        {
          objc_enumerationMutation(rangeMapping2);
        }

        v28 = *(*(&v33 + 1) + 8 * j);
        v44.location = [v28 rangeValue];
        v45.location = location;
        v45.length = length;
        if (NSIntersectionRange(v44, v45).length)
        {
          [v22 removeObjectForKey:v28];
        }
      }

      v25 = [rangeMapping2 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v25);
  }

  [v22 addEntriesFromDictionary:v19];
  v29 = [v22 copy];
  [v31 setRangeMapping:v29];
}

- (void)initWithAttributedString:(os_log_t)log originalString:originalRange:rangeMapping:.cold.1(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1D4171000, log, OS_LOG_TYPE_ERROR, "Unexpectedly getting asked to form Writing Tools Context for range in between table.", buf, 2u);
}

@end