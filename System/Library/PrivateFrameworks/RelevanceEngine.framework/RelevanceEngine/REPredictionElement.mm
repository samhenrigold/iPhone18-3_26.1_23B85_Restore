@interface REPredictionElement
+ (id)predictionElementFromElement:(id)element;
+ (id)predictionElementWithIdentifier:(id)identifier relevanceProviders:(id)providers bundleIdentifier:(id)bundleIdentifier;
- (REPredictionElement)initWithCoder:(id)coder;
- (void)encodeWithCoder:(id)coder;
@end

@implementation REPredictionElement

+ (id)predictionElementFromElement:(id)element
{
  elementCopy = element;
  v4 = objc_opt_new();
  identifier = [elementCopy identifier];
  v6 = *(v4 + 8);
  *(v4 + 8) = identifier;

  *(v4 + 16) = [elementCopy privacyBehavior];
  relevanceProviders = [elementCopy relevanceProviders];
  v8 = *(v4 + 24);
  *(v4 + 24) = relevanceProviders;

  bundleIdentifier = [elementCopy bundleIdentifier];
  v10 = *(v4 + 32);
  *(v4 + 32) = bundleIdentifier;

  applicationBundleIdentifier = [elementCopy applicationBundleIdentifier];
  v12 = *(v4 + 40);
  *(v4 + 40) = applicationBundleIdentifier;

  content = [elementCopy content];

  v14 = [content objectForKey:@"REContentInteractionKey"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v15 = v14;
  }

  else
  {
    v15 = @"REElementInteractionDefault";
  }

  objc_storeStrong((v4 + 48), v15);

  return v4;
}

- (REPredictionElement)initWithCoder:(id)coder
{
  v34 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v32.receiver = self;
  v32.super_class = REPredictionElement;
  v5 = [(REPredictionElement *)&v32 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];
    identifier = v5->_identifier;
    v5->_identifier = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"bundleIdentifier"];
    bundleIdentifier = v5->_bundleIdentifier;
    v5->_bundleIdentifier = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"applicationBundleIdentifier"];
    applicationBundleIdentifier = v5->_applicationBundleIdentifier;
    v5->_applicationBundleIdentifier = v10;

    objc_storeStrong(&v5->_interaction, @"REElementInteractionDefault");
    v12 = MEMORY[0x277CBEB98];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = [v12 setWithObjects:{v13, v14, v15, objc_opt_class(), 0}];
    v17 = [coderCopy decodeObjectOfClasses:v16 forKey:@"relevanceProviders"];
    array = [MEMORY[0x277CBEB18] array];
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v19 = v17;
    v20 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v29;
      do
      {
        v23 = 0;
        do
        {
          if (*v29 != v22)
          {
            objc_enumerationMutation(v19);
          }

          v24 = [[RECustomRelevanceProvider alloc] initWithDictionary:*(*(&v28 + 1) + 8 * v23)];
          [array addObject:v24];

          ++v23;
        }

        while (v21 != v23);
        v21 = [v19 countByEnumeratingWithState:&v28 objects:v33 count:16];
      }

      while (v21);
    }

    v25 = [array copy];
    relevanceProviders = v5->_relevanceProviders;
    v5->_relevanceProviders = v25;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v18 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  [coderCopy encodeObject:self->_identifier forKey:@"identifier"];
  [coderCopy encodeObject:self->_bundleIdentifier forKey:@"bundleIdentifier"];
  [coderCopy encodeObject:self->_applicationBundleIdentifier forKey:@"applicationBundleIdentifier"];
  array = [MEMORY[0x277CBEB18] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_relevanceProviders;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        dictionaryEncoding = [*(*(&v13 + 1) + 8 * v10) dictionaryEncoding];
        [array addObject:dictionaryEncoding];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  v12 = [array copy];
  [coderCopy encodeObject:v12 forKey:@"relevanceProviders"];
}

+ (id)predictionElementWithIdentifier:(id)identifier relevanceProviders:(id)providers bundleIdentifier:(id)bundleIdentifier
{
  v27 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  providersCopy = providers;
  bundleIdentifierCopy = bundleIdentifier;
  v11 = objc_opt_new();
  objc_storeStrong((v11 + 8), identifier);
  objc_storeStrong((v11 + 32), bundleIdentifier);
  objc_storeStrong((v11 + 48), @"REElementInteractionDefault");
  array = [MEMORY[0x277CBEB18] array];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v13 = providersCopy;
  v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v23;
    do
    {
      for (i = 0; i != v15; ++i)
      {
        if (*v23 != v16)
        {
          objc_enumerationMutation(v13);
        }

        v18 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:{v18, v22}];
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v15);
  }

  v19 = [array copy];
  v20 = *(v11 + 24);
  *(v11 + 24) = v19;

  return v11;
}

@end