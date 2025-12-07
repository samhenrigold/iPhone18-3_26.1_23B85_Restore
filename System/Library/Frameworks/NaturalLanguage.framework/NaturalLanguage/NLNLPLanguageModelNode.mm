@interface NLNLPLanguageModelNode
+ (id)conditionalProbabilitiesForStrings:(id)strings modelState:(void *)state copyRequired:(BOOL)required;
- (NLNLPLanguageModelNode)initWithTokenIDs:(id)ds;
- (id)_treeDescriptionWithPrefix:(id)prefix;
- (id)description;
- (void)_addString:(id)string tokenIDs:(id)ds;
- (void)_evaluateChildrenWithModelState:(void *)state copyRequired:(BOOL)required probability:(double)probability dictionary:(id)dictionary;
- (void)_setProbability:(double)probability dictionary:(id)dictionary;
@end

@implementation NLNLPLanguageModelNode

- (NLNLPLanguageModelNode)initWithTokenIDs:(id)ds
{
  dsCopy = ds;
  v13.receiver = self;
  v13.super_class = NLNLPLanguageModelNode;
  v5 = [(NLNLPLanguageModelNode *)&v13 init];
  if (v5)
  {
    v6 = [dsCopy copy];
    tokenIDs = v5->_tokenIDs;
    v5->_tokenIDs = v6;

    v8 = [MEMORY[0x1E695DFA8] set];
    strings = v5->_strings;
    v5->_strings = v8;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    children = v5->_children;
    v5->_children = dictionary;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x1E696AD60];
  v10.receiver = self;
  v10.super_class = NLNLPLanguageModelNode;
  v4 = [(NLNLPLanguageModelNode *)&v10 description];
  v5 = [(NSArray *)self->_tokenIDs componentsJoinedByString:@"-"];
  v6 = [v3 stringWithFormat:@"%@ <%@>", v4, v5];

  if ([(NSMutableSet *)self->_strings count])
  {
    allObjects = [(NSMutableSet *)self->_strings allObjects];
    v8 = [allObjects componentsJoinedByString:@"/"];
    [v6 appendFormat:@" <%@>", v8];
  }

  return v6;
}

- (id)_treeDescriptionWithPrefix:(id)prefix
{
  v22 = *MEMORY[0x1E69E9840];
  prefixCopy = prefix;
  v5 = MEMORY[0x1E696AD60];
  v6 = [(NLNLPLanguageModelNode *)self description];
  v7 = [v5 stringWithFormat:@"%@%@", prefixCopy, v6];

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  obj = self->_children;
  v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = [(NSMutableDictionary *)self->_children objectForKey:*(*(&v17 + 1) + 8 * i)];
        v13 = [prefixCopy stringByAppendingString:@"  "];
        v14 = [v12 _treeDescriptionWithPrefix:v13];
        [v7 appendFormat:@"\n%@", v14];
      }

      v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  return v7;
}

- (void)_addString:(id)string tokenIDs:(id)ds
{
  stringCopy = string;
  dsCopy = ds;
  if ([dsCopy count])
  {
    firstObject = [dsCopy firstObject];
    v8 = [(NSMutableDictionary *)self->_children objectForKey:firstObject];
    if (!v8)
    {
      v9 = [NLNLPLanguageModelNode alloc];
      v10 = [(NSArray *)self->_tokenIDs arrayByAddingObject:firstObject];
      v8 = [(NLNLPLanguageModelNode *)v9 initWithTokenIDs:v10];

      [(NSMutableDictionary *)self->_children setObject:v8 forKey:firstObject];
    }

    v11 = [dsCopy subarrayWithRange:{1, objc_msgSend(dsCopy, "count") - 1}];
    [(NLNLPLanguageModelNode *)v8 _addString:stringCopy tokenIDs:v11];
  }

  else
  {
    [(NSMutableSet *)self->_strings addObject:stringCopy];
  }
}

- (void)_setProbability:(double)probability dictionary:(id)dictionary
{
  v20 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = self->_strings;
  v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    do
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v15 + 1) + 8 * v11);
        v13 = [NLProbabilityInfo alloc];
        v14 = [(NLProbabilityInfo *)v13 initWithProbability:0 flags:probability, v15];
        [dictionaryCopy setObject:v14 forKey:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v9);
  }
}

- (void)_evaluateChildrenWithModelState:(void *)state copyRequired:(BOOL)required probability:(double)probability dictionary:(id)dictionary
{
  requiredCopy = required;
  v41 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  allKeys = [(NSMutableDictionary *)self->_children allKeys];
  v11 = [allKeys count];
  stateCopy = state;
  v12 = CoreLMCopyConditionalProbabilities();
  if (v12)
  {
    v13 = v12;
    v29 = allKeys;
    if (v11 == CFArrayGetCount(v12))
    {
      v30 = v11;
      v32 = dictionaryCopy;
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v14 = allKeys;
      v15 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
      if (v15)
      {
        v16 = v15;
        v17 = 0;
        v18 = *v36;
        do
        {
          for (i = 0; i != v16; ++i)
          {
            if (*v36 != v18)
            {
              objc_enumerationMutation(v14);
            }

            v20 = [(NSMutableDictionary *)self->_children objectForKey:*(*(&v35 + 1) + 8 * i), v29];
            v17 += [v20 isLeaf] ^ 1;
          }

          v16 = [v14 countByEnumeratingWithState:&v35 objects:v40 count:16];
        }

        while (v16);
      }

      else
      {
        v17 = 0;
      }

      dictionaryCopy = v32;
      v21 = v30;
      if (v30)
      {
        v22 = 0;
        v23 = 0;
        do
        {
          v24 = [v14 objectAtIndex:{v22, v29}];
          v25 = [(NSMutableDictionary *)self->_children objectForKey:v24];
          ValueAtIndex = CFArrayGetValueAtIndex(v13, v22);
          valuePtr = 0.0;
          if (CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr))
          {
            [v25 _setProbability:dictionaryCopy dictionary:valuePtr * probability];
            if (([v25 isLeaf] & 1) == 0)
            {
              v27 = ++v23 < v17 || requiredCopy;
              v28 = stateCopy;
              if (v27 == 1)
              {
                v28 = CoreLMCreateCopy();
              }

              if (v28)
              {
                v39 = v24;
                [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
                if (CoreLMUpdateWithContext())
                {
                  [v25 _evaluateChildrenWithModelState:v28 copyRequired:0 probability:v32 dictionary:valuePtr * probability];
                }

                if (v27)
                {
                  CFRelease(v28);
                }
              }

              dictionaryCopy = v32;
              v21 = v30;
            }
          }

          ++v22;
        }

        while (v21 != v22);
      }
    }

    CFRelease(v13);
    allKeys = v29;
  }
}

+ (id)conditionalProbabilitiesForStrings:(id)strings modelState:(void *)state copyRequired:(BOOL)required
{
  requiredCopy = required;
  v38 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  array = [MEMORY[0x1E695DF70] array];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (state)
  {
    v26 = requiredCopy;
    v10 = [NLNLPLanguageModelNode alloc];
    v11 = [(NLNLPLanguageModelNode *)v10 initWithTokenIDs:MEMORY[0x1E695E0F0]];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = stringsCopy;
    v12 = stringsCopy;
    v13 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v32 + 1) + 8 * i);
          v18 = CoreLMCopyTokenIdsForText();
          [(NLNLPLanguageModelNode *)v11 _addString:v17 tokenIDs:v18];
        }

        v14 = [v12 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v14);
    }

    [(NLNLPLanguageModelNode *)v11 _setProbability:dictionary dictionary:1.0];
    if (![(NLNLPLanguageModelNode *)v11 isLeaf])
    {
      [(NLNLPLanguageModelNode *)v11 _evaluateChildrenWithModelState:state copyRequired:v26 probability:dictionary dictionary:1.0];
    }

    stringsCopy = v27;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v19 = stringsCopy;
  v20 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v29;
    do
    {
      for (j = 0; j != v21; ++j)
      {
        if (*v29 != v22)
        {
          objc_enumerationMutation(v19);
        }

        initWithInvalidProbability = [dictionary objectForKey:*(*(&v28 + 1) + 8 * j)];
        if (!initWithInvalidProbability)
        {
          initWithInvalidProbability = [[NLProbabilityInfo alloc] initWithInvalidProbability];
        }

        [array addObject:initWithInvalidProbability];
      }

      v21 = [v19 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v21);
  }

  return array;
}

@end