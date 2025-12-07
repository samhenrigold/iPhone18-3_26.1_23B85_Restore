@interface _LTEtiquetteSanitizer
- (_LTEtiquetteSanitizer)initWithModelURL:(id)l language:(id)language;
- (_LTEtiquetteSanitizer)initWithReplacementTokenDictionary:(id)dictionary language:(id)language;
- (id)matchesForString:(id)string;
- (id)replacementStringForString:(id)string forToken:(id)token;
- (id)sanitizedStringForString:(id)string;
- (id)stringByReplacingMatches:(id)matches inString:(id)string;
- (id)treeForReplacementTokens:(id)tokens;
@end

@implementation _LTEtiquetteSanitizer

- (_LTEtiquetteSanitizer)initWithReplacementTokenDictionary:(id)dictionary language:(id)language
{
  dictionaryCopy = dictionary;
  languageCopy = language;
  v8 = [(_LTEtiquetteSanitizer *)self init];
  v9 = v8;
  if (v8)
  {
    v10 = [(_LTEtiquetteSanitizer *)v8 treeForReplacementTokens:dictionaryCopy];
    replacementTree = v9->_replacementTree;
    v9->_replacementTree = v10;

    objc_storeStrong(&v9->_locale, language);
    v12 = v9;
  }

  return v9;
}

- (_LTEtiquetteSanitizer)initWithModelURL:(id)l language:(id)language
{
  v16 = *MEMORY[0x277D85DE8];
  languageCopy = language;
  v7 = [l URLByAppendingPathComponent:@"etiquette.json"];
  v8 = replacementDictionaryForEtiquetteFileAtURL(v7);
  v10 = v8;
  if (v8)
  {
    v11 = _LTOSLogEtiquetteSanitizer(v8, v9);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v14 = 138543362;
      v15 = v7;
      _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "Creating etiquette sanitizer with URL: %{public}@", &v14, 0xCu);
    }
  }

  v12 = [(_LTEtiquetteSanitizer *)self initWithReplacementTokenDictionary:v10 language:languageCopy];

  return v12;
}

- (id)treeForReplacementTokens:(id)tokens
{
  v3 = MEMORY[0x277CBEB38];
  tokensCopy = tokens;
  dictionary = [v3 dictionary];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50___LTEtiquetteSanitizer_treeForReplacementTokens___block_invoke;
  v8[3] = &unk_2789B6AC0;
  v6 = dictionary;
  v9 = v6;
  [tokensCopy enumerateKeysAndObjectsUsingBlock:v8];

  return v6;
}

- (id)matchesForString:(id)string
{
  v38 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  objc_initWeak(&location, self);
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  array3 = [MEMORY[0x277CBEB18] array];
  v34[0] = 0;
  v34[1] = v34;
  v34[2] = 0x3032000000;
  v34[3] = __Block_byref_object_copy__7;
  v34[4] = __Block_byref_object_dispose__7;
  v35 = 0;
  lowercaseString = [stringCopy lowercaseString];
  v8 = [stringCopy length];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __42___LTEtiquetteSanitizer_matchesForString___block_invoke;
  v28[3] = &unk_2789B6AE8;
  objc_copyWeak(&v33, &location);
  v9 = array2;
  v29 = v9;
  v32 = v34;
  v10 = array;
  v30 = v10;
  v11 = array3;
  v31 = v11;
  [lowercaseString enumerateSubstringsInRange:0 options:v8 usingBlock:{2, v28}];

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v12 = v9;
  v13 = [v12 countByEnumeratingWithState:&v24 objects:v37 count:16];
  if (v13)
  {
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v12);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        node = [v16 node];
        v18 = [node objectForKeyedSubscript:@"TOKEN"];
        [v16 setToken:v18];

        token = [v16 token];

        if (token)
        {
          [v10 addObject:v16];
        }
      }

      v13 = [v12 countByEnumeratingWithState:&v24 objects:v37 count:16];
    }

    while (v13);
  }

  v20 = v31;
  v21 = v10;

  objc_destroyWeak(&v33);
  _Block_object_dispose(v34, 8);

  objc_destroyWeak(&location);

  return v21;
}

- (id)replacementStringForString:(id)string forToken:(id)token
{
  tokenCopy = token;
  stringCopy = string;
  v7 = [stringCopy mutableCopy];
  v8 = [tokenCopy length];
  v9 = [stringCopy length];

  if (v8 >= v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = v8;
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __61___LTEtiquetteSanitizer_replacementStringForString_forToken___block_invoke;
  v13[3] = &unk_2789B6B10;
  v11 = v7;
  v14 = v11;
  [tokenCopy enumerateSubstringsInRange:0 options:v10 usingBlock:{2, v13}];

  return v11;
}

- (id)stringByReplacingMatches:(id)matches inString:(id)string
{
  v30 = *MEMORY[0x277D85DE8];
  matchesCopy = matches;
  v7 = [string mutableCopy];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = matchesCopy;
  v8 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v25 + 1) + 8 * i);
        range = [v13 range];
        v16 = [v7 substringWithRange:{range, v15}];
        token = [v13 token];
        v18 = [(_LTEtiquetteSanitizer *)self replacementStringForString:v16 forToken:token];

        v19 = [v18 length];
        v10 += v19 - [v16 length];
        range2 = [v13 range];
        [v7 replaceCharactersInRange:range2 + v10 withString:{v21, v18}];
      }

      v9 = [obj countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  v22 = [v7 copy];

  return v22;
}

- (id)sanitizedStringForString:(id)string
{
  v20 = *MEMORY[0x277D85DE8];
  stringCopy = string;
  v5 = [(_LTEtiquetteSanitizer *)self matchesForString:stringCopy];
  v6 = [v5 count];
  if (v6)
  {
    v6 = [(_LTEtiquetteSanitizer *)self stringByReplacingMatches:v5 inString:stringCopy];
    v8 = v6;
  }

  else
  {
    v8 = 0;
  }

  v9 = _LTOSLogEtiquetteSanitizer(v6, v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    locale = self->_locale;
    v11 = v9;
    localeIdentifier = [(NSLocale *)locale localeIdentifier];
    v14 = 138740483;
    v15 = v8;
    v16 = 2117;
    v17 = stringCopy;
    v18 = 2114;
    v19 = localeIdentifier;
    _os_log_impl(&dword_232E53000, v11, OS_LOG_TYPE_INFO, "sanitizedString '%{sensitive}@' forString '%{sensitive}@' locale: %{public}@", &v14, 0x20u);
  }

  return v8;
}

@end