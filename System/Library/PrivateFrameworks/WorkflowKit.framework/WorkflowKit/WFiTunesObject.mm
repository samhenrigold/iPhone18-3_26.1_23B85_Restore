@interface WFiTunesObject
+ (Class)classForParsingJSONDictionary:(id)dictionary;
+ (id)JSONKeyPathsByPropertyKey;
+ (id)allowedSecureCodingClassesByPropertyKey;
+ (id)releaseDateJSONTransformer;
- (WFiTunesObject)initWithName:(id)name identifier:(id)identifier kind:(id)kind;
@end

@implementation WFiTunesObject

- (WFiTunesObject)initWithName:(id)name identifier:(id)identifier kind:(id)kind
{
  nameCopy = name;
  identifierCopy = identifier;
  kindCopy = kind;
  v15.receiver = self;
  v15.super_class = WFiTunesObject;
  v11 = [(MTLModel *)&v15 init];
  v12 = v11;
  if (v11)
  {
    [(WFiTunesObject *)v11 setName:nameCopy];
    [(WFiTunesObject *)v12 setIdentifier:identifierCopy];
    [(WFiTunesObject *)v12 setKind:kindCopy];
    v13 = v12;
  }

  return v12;
}

+ (Class)classForParsingJSONDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  v5 = [dictionaryCopy objectForKeyedSubscript:@"wrapperType"];
  v6 = [dictionaryCopy objectForKeyedSubscript:@"kind"];
  if (objc_msgSend_isEqualToString_(v5))
  {
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v6))
  {
    [dictionaryCopy objectForKeyedSubscript:@"intent"];

LABEL_10:
    selfCopy = objc_opt_class();
    goto LABEL_11;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    goto LABEL_10;
  }

  if (objc_msgSend_isEqualToString_(v5))
  {
    goto LABEL_10;
  }

  v7 = [dictionaryCopy objectForKeyedSubscript:@"trackId"];

  if (v7)
  {
    goto LABEL_10;
  }

  selfCopy = self;
LABEL_11:
  v9 = selfCopy;

  return v9;
}

id __44__WFiTunesObject_artworkURLsJSONTransformer__block_invoke_230(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = objc_opt_new();
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"artworkUrl%lu", objc_msgSend(v9, "unsignedLongValue")];
        v11 = [v4 objectForKeyedSubscript:v9];
        v12 = [v11 absoluteString];
        [v3 setObject:v12 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  return v3;
}

id __44__WFiTunesObject_artworkURLsJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v25 = objc_opt_new();
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v27;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v27 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v26 + 1) + 8 * i);
        v9 = MEMORY[0x1E696AD98];
        v10 = [v8 substringFromIndex:10];
        v11 = [v9 numberWithInteger:{objc_msgSend(v10, "integerValue")}];

        v12 = MEMORY[0x1E695DFF8];
        v13 = [v3 objectForKeyedSubscript:v8];
        v14 = [v12 URLWithString:v13];

        if (v11)
        {
          v15 = v14 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          [v25 setObject:v14 forKeyedSubscript:v11];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v5);
  }

  v16 = [v25 objectForKeyedSubscript:&unk_1F4A9A720];
  if (v16)
  {
    v17 = v16;
    v18 = [v25 objectForKeyedSubscript:&unk_1F4A9A738];

    if (!v18)
    {
      v19 = MEMORY[0x1E695DFF8];
      v20 = [v25 objectForKeyedSubscript:&unk_1F4A9A720];
      v21 = [v20 absoluteString];
      v22 = [v21 stringByReplacingOccurrencesOfString:@"100x100" withString:@"512x512"];
      v23 = [v19 URLWithString:v22];
      [v25 setObject:v23 forKeyedSubscript:&unk_1F4A9A738];
    }
  }

  return v25;
}

+ (id)releaseDateJSONTransformer
{
  v2 = MEMORY[0x1E696B0A0];
  v3 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:@"en_US_POSIX"];
  v4 = [MEMORY[0x1E695DFE8] timeZoneWithName:@"UTC"];
  v5 = [v2 mtl_dateTransformerWithDateFormat:@"yyyy-MM-dd'T'HH:mm:ss'Z'" calendar:0 locale:v3 timeZone:v4 defaultDate:0];

  return v5;
}

id __43__WFiTunesObject_identifierJSONTransformer__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [v2 stringValue];
LABEL_5:
    v4 = v3;
    goto LABEL_7;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = v2;
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

+ (id)JSONKeyPathsByPropertyKey
{
  v5[1] = *MEMORY[0x1E69E9840];
  v4 = @"artworkURLs";
  v5[0] = &unk_1F4A9B5C0;
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v5 forKeys:&v4 count:1];

  return v2;
}

+ (id)allowedSecureCodingClassesByPropertyKey
{
  v7[3] = *MEMORY[0x1E69E9840];
  v6.receiver = self;
  v6.super_class = &OBJC_METACLASS___WFiTunesObject;
  v2 = objc_msgSendSuper2(&v6, sel_allowedSecureCodingClassesByPropertyKey);
  v3 = [v2 mutableCopy];

  v7[0] = objc_opt_class();
  v7[1] = objc_opt_class();
  v7[2] = objc_opt_class();
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:3];
  [v3 setObject:v4 forKey:@"artworkURLs"];

  return v3;
}

@end