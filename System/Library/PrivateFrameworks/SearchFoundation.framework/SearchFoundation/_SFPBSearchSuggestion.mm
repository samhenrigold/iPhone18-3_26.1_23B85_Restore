@interface _SFPBSearchSuggestion
- (BOOL)getServerFeatures:(double *)features forKey:(id)key;
- (BOOL)isEqual:(id)equal;
- (NSData)jsonData;
- (_SFPBSearchSuggestion)initWithDictionary:(id)dictionary;
- (_SFPBSearchSuggestion)initWithFacade:(id)facade;
- (_SFPBSearchSuggestion)initWithJSON:(id)n;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addDuplicateSuggestions:(id)suggestions;
- (void)setBundleIdentifier:(id)identifier;
- (void)setDetailText:(id)text;
- (void)setDuplicateSuggestions:(id)suggestions;
- (void)setFbr:(id)fbr;
- (void)setIdentifier:(id)identifier;
- (void)setQuery:(id)query;
- (void)setScopedSearchApplicationBundleIdentifier:(id)identifier;
- (void)setServerFeatures:(double)features forKey:(id)key;
- (void)setServerFeatures:(id)features;
- (void)setSuggestion:(id)suggestion;
- (void)setTopicIdentifier:(id)identifier;
- (void)setUtteranceText:(id)text;
- (void)writeTo:(id)to;
@end

@implementation _SFPBSearchSuggestion

- (_SFPBSearchSuggestion)initWithFacade:(id)facade
{
  v56 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v5 = [(_SFPBSearchSuggestion *)self init];
  if (v5)
  {
    identifier = [facadeCopy identifier];

    if (identifier)
    {
      identifier2 = [facadeCopy identifier];
      [(_SFPBSearchSuggestion *)v5 setIdentifier:identifier2];
    }

    suggestion = [facadeCopy suggestion];

    if (suggestion)
    {
      suggestion2 = [facadeCopy suggestion];
      [(_SFPBSearchSuggestion *)v5 setSuggestion:suggestion2];
    }

    query = [facadeCopy query];

    if (query)
    {
      query2 = [facadeCopy query];
      [(_SFPBSearchSuggestion *)v5 setQuery:query2];
    }

    if ([facadeCopy hasScore])
    {
      v12 = [_SFPBGraphicalFloat alloc];
      [facadeCopy score];
      v13 = [(_SFPBGraphicalFloat *)v12 initWithCGFloat:?];
      [(_SFPBSearchSuggestion *)v5 setScore:v13];
    }

    if ([facadeCopy hasType])
    {
      -[_SFPBSearchSuggestion setType:](v5, "setType:", [facadeCopy type]);
    }

    duplicateSuggestions = [facadeCopy duplicateSuggestions];
    if (duplicateSuggestions)
    {
      v15 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v15 = 0;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    duplicateSuggestions2 = [facadeCopy duplicateSuggestions];
    v17 = [duplicateSuggestions2 countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v51;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v51 != v19)
          {
            objc_enumerationMutation(duplicateSuggestions2);
          }

          v21 = [[_SFPBSearchSuggestion alloc] initWithFacade:*(*(&v50 + 1) + 8 * i)];
          if (v21)
          {
            [v15 addObject:v21];
          }
        }

        v18 = [duplicateSuggestions2 countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v18);
    }

    [(_SFPBSearchSuggestion *)v5 setDuplicateSuggestions:v15];
    topicIdentifier = [facadeCopy topicIdentifier];

    if (topicIdentifier)
    {
      topicIdentifier2 = [facadeCopy topicIdentifier];
      [(_SFPBSearchSuggestion *)v5 setTopicIdentifier:topicIdentifier2];
    }

    bundleIdentifier = [facadeCopy bundleIdentifier];

    if (bundleIdentifier)
    {
      bundleIdentifier2 = [facadeCopy bundleIdentifier];
      [(_SFPBSearchSuggestion *)v5 setBundleIdentifier:bundleIdentifier2];
    }

    if ([facadeCopy hasPreviouslyEngaged])
    {
      -[_SFPBSearchSuggestion setPreviouslyEngaged:](v5, "setPreviouslyEngaged:", [facadeCopy previouslyEngaged]);
    }

    v26 = [facadeCopy fbr];

    if (v26)
    {
      v27 = [facadeCopy fbr];
      [(_SFPBSearchSuggestion *)v5 setFbr:v27];
    }

    scopedSearchApplicationBundleIdentifier = [facadeCopy scopedSearchApplicationBundleIdentifier];

    if (scopedSearchApplicationBundleIdentifier)
    {
      scopedSearchApplicationBundleIdentifier2 = [facadeCopy scopedSearchApplicationBundleIdentifier];
      [(_SFPBSearchSuggestion *)v5 setScopedSearchApplicationBundleIdentifier:scopedSearchApplicationBundleIdentifier2];
    }

    utteranceText = [facadeCopy utteranceText];

    if (utteranceText)
    {
      utteranceText2 = [facadeCopy utteranceText];
      [(_SFPBSearchSuggestion *)v5 setUtteranceText:utteranceText2];
    }

    detailText = [facadeCopy detailText];

    if (detailText)
    {
      detailText2 = [facadeCopy detailText];
      [(_SFPBSearchSuggestion *)v5 setDetailText:detailText2];
    }

    serverFeatures = [facadeCopy serverFeatures];
    v35 = serverFeatures;
    if (serverFeatures)
    {
      v36 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(serverFeatures, "count")}];
    }

    else
    {
      v36 = 0;
    }

    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v37 = v35;
    v38 = [v37 countByEnumeratingWithState:&v46 objects:v54 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v47;
      do
      {
        for (j = 0; j != v39; ++j)
        {
          if (*v47 != v40)
          {
            objc_enumerationMutation(v37);
          }

          v42 = *(*(&v46 + 1) + 8 * j);
          v43 = [v37 objectForKey:{v42, v46}];
          if (v43)
          {
            [v36 setObject:v43 forKey:v42];
          }
        }

        v39 = [v37 countByEnumeratingWithState:&v46 objects:v54 count:16];
      }

      while (v39);
    }

    [(_SFPBSearchSuggestion *)v5 setServerFeatures:v36];
    v44 = v5;
  }

  return v5;
}

- (_SFPBSearchSuggestion)initWithDictionary:(id)dictionary
{
  v76 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v73.receiver = self;
  v73.super_class = _SFPBSearchSuggestion;
  v5 = [(_SFPBSearchSuggestion *)&v73 init];
  if (v5)
  {
    v6 = [dictionaryCopy objectForKeyedSubscript:@"identifier"];
    objc_opt_class();
    v64 = v6;
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 copy];
      [(_SFPBSearchSuggestion *)v5 setIdentifier:v7];
    }

    v8 = [dictionaryCopy objectForKeyedSubscript:@"suggestion"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v9 = [v8 copy];
      [(_SFPBSearchSuggestion *)v5 setSuggestion:v9];
    }

    v10 = [dictionaryCopy objectForKeyedSubscript:@"query"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v11 = [v10 copy];
      [(_SFPBSearchSuggestion *)v5 setQuery:v11];
    }

    v56 = v10;
    v12 = [dictionaryCopy objectForKeyedSubscript:@"score"];
    objc_opt_class();
    v63 = v12;
    if (objc_opt_isKindOfClass())
    {
      v13 = [[_SFPBGraphicalFloat alloc] initWithDictionary:v12];
      [(_SFPBSearchSuggestion *)v5 setScore:v13];
    }

    v14 = [dictionaryCopy objectForKeyedSubscript:@"type"];
    objc_opt_class();
    v62 = v14;
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSearchSuggestion setType:](v5, "setType:", [v14 intValue]);
    }

    v15 = [dictionaryCopy objectForKeyedSubscript:@"duplicateSuggestions"];
    objc_opt_class();
    v61 = v15;
    v57 = v8;
    if (objc_opt_isKindOfClass())
    {
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v16 = v15;
      v17 = [v16 countByEnumeratingWithState:&v69 objects:v75 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v70;
        do
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v70 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v69 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v22 = [[_SFPBSearchSuggestion alloc] initWithDictionary:v21];
              [(_SFPBSearchSuggestion *)v5 addDuplicateSuggestions:v22];
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v69 objects:v75 count:16];
        }

        while (v18);
      }
    }

    v23 = [dictionaryCopy objectForKeyedSubscript:@"topicIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v24 = [v23 copy];
      [(_SFPBSearchSuggestion *)v5 setTopicIdentifier:v24];
    }

    v25 = [dictionaryCopy objectForKeyedSubscript:@"bundleIdentifier"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v26 = [v25 copy];
      [(_SFPBSearchSuggestion *)v5 setBundleIdentifier:v26];
    }

    v27 = [dictionaryCopy objectForKeyedSubscript:@"previouslyEngaged"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      -[_SFPBSearchSuggestion setPreviouslyEngaged:](v5, "setPreviouslyEngaged:", [v27 BOOLValue]);
    }

    v28 = [dictionaryCopy objectForKeyedSubscript:@"fbr"];
    objc_opt_class();
    v60 = v28;
    if (objc_opt_isKindOfClass())
    {
      v29 = v23;
      v30 = [v60 copy];
      [(_SFPBSearchSuggestion *)v5 setFbr:v30];

      v23 = v29;
    }

    v31 = [dictionaryCopy objectForKeyedSubscript:@"scopedSearchApplicationBundleIdentifier"];
    objc_opt_class();
    v59 = v31;
    if (objc_opt_isKindOfClass())
    {
      v32 = v25;
      v33 = [v59 copy];
      [(_SFPBSearchSuggestion *)v5 setScopedSearchApplicationBundleIdentifier:v33];

      v25 = v32;
    }

    v34 = [dictionaryCopy objectForKeyedSubscript:@"utteranceText"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v35 = [v34 copy];
      v36 = v34;
      v37 = v27;
      v38 = v35;
      [(_SFPBSearchSuggestion *)v5 setUtteranceText:v35];

      v27 = v37;
      v34 = v36;
    }

    v39 = [dictionaryCopy objectForKeyedSubscript:@"detailText"];
    objc_opt_class();
    v58 = v39;
    if (objc_opt_isKindOfClass())
    {
      v40 = [v39 copy];
      [(_SFPBSearchSuggestion *)v5 setDetailText:v40];
    }

    v41 = [dictionaryCopy objectForKeyedSubscript:@"serverFeatures"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v53 = v34;
      v54 = v27;
      v55 = v25;
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      serverFeatures = v5->_serverFeatures;
      v5->_serverFeatures = dictionary;

      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v44 = v41;
      v45 = [v44 countByEnumeratingWithState:&v65 objects:v74 count:16];
      if (v45)
      {
        v46 = v45;
        v47 = *v66;
        do
        {
          for (j = 0; j != v46; ++j)
          {
            if (*v66 != v47)
            {
              objc_enumerationMutation(v44);
            }

            v49 = *(*(&v65 + 1) + 8 * j);
            v50 = [v44 objectForKeyedSubscript:v49];
            [(NSDictionary *)v5->_serverFeatures setObject:v50 forKey:v49];
          }

          v46 = [v44 countByEnumeratingWithState:&v65 objects:v74 count:16];
        }

        while (v46);
      }

      v8 = v57;
      v25 = v55;
      v34 = v53;
      v27 = v54;
    }

    v51 = v5;
  }

  return v5;
}

- (_SFPBSearchSuggestion)initWithJSON:(id)n
{
  v7 = 0;
  v4 = [MEMORY[0x1E696ACB0] JSONObjectWithData:n options:0 error:&v7];
  if (v7 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {
    selfCopy = 0;
  }

  else
  {
    self = [(_SFPBSearchSuggestion *)self initWithDictionary:v4];
    selfCopy = self;
  }

  return selfCopy;
}

- (NSData)jsonData
{
  dictionaryRepresentation = [(_SFPBSearchSuggestion *)self dictionaryRepresentation];
  if ([MEMORY[0x1E696ACB0] isValidJSONObject:dictionaryRepresentation])
  {
    v3 = [MEMORY[0x1E696ACB0] dataWithJSONObject:dictionaryRepresentation options:0 error:0];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)dictionaryRepresentation
{
  v55 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (self->_bundleIdentifier)
  {
    bundleIdentifier = [(_SFPBSearchSuggestion *)self bundleIdentifier];
    v5 = [bundleIdentifier copy];
    [dictionary setObject:v5 forKeyedSubscript:@"bundleIdentifier"];
  }

  if (self->_detailText)
  {
    detailText = [(_SFPBSearchSuggestion *)self detailText];
    v7 = [detailText copy];
    [dictionary setObject:v7 forKeyedSubscript:@"detailText"];
  }

  if ([(NSArray *)self->_duplicateSuggestions count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v9 = self->_duplicateSuggestions;
    v10 = [(NSArray *)v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v50;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v50 != v12)
          {
            objc_enumerationMutation(v9);
          }

          dictionaryRepresentation = [*(*(&v49 + 1) + 8 * i) dictionaryRepresentation];
          if (dictionaryRepresentation)
          {
            [array addObject:dictionaryRepresentation];
          }

          else
          {
            null = [MEMORY[0x1E695DFB0] null];
            [array addObject:null];
          }
        }

        v11 = [(NSArray *)v9 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v11);
    }

    [dictionary setObject:array forKeyedSubscript:@"duplicateSuggestions"];
  }

  if (self->_fbr)
  {
    v16 = [(_SFPBSearchSuggestion *)self fbr];
    v17 = [v16 copy];
    [dictionary setObject:v17 forKeyedSubscript:@"fbr"];
  }

  if (self->_identifier)
  {
    identifier = [(_SFPBSearchSuggestion *)self identifier];
    v19 = [identifier copy];
    [dictionary setObject:v19 forKeyedSubscript:@"identifier"];
  }

  if (self->_previouslyEngaged)
  {
    v20 = [MEMORY[0x1E696AD98] numberWithBool:{-[_SFPBSearchSuggestion previouslyEngaged](self, "previouslyEngaged")}];
    [dictionary setObject:v20 forKeyedSubscript:@"previouslyEngaged"];
  }

  if (self->_query)
  {
    query = [(_SFPBSearchSuggestion *)self query];
    v22 = [query copy];
    [dictionary setObject:v22 forKeyedSubscript:@"query"];
  }

  if (self->_scopedSearchApplicationBundleIdentifier)
  {
    scopedSearchApplicationBundleIdentifier = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
    v24 = [scopedSearchApplicationBundleIdentifier copy];
    [dictionary setObject:v24 forKeyedSubscript:@"scopedSearchApplicationBundleIdentifier"];
  }

  if (self->_score)
  {
    score = [(_SFPBSearchSuggestion *)self score];
    dictionaryRepresentation2 = [score dictionaryRepresentation];
    if (dictionaryRepresentation2)
    {
      [dictionary setObject:dictionaryRepresentation2 forKeyedSubscript:@"score"];
    }

    else
    {
      null2 = [MEMORY[0x1E695DFB0] null];
      [dictionary setObject:null2 forKeyedSubscript:@"score"];
    }
  }

  dictionary2 = [MEMORY[0x1E695DF90] dictionary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  v29 = self->_serverFeatures;
  v30 = [(NSDictionary *)v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v46;
    do
    {
      for (j = 0; j != v31; ++j)
      {
        if (*v46 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v45 + 1) + 8 * j);
        v35 = [(NSDictionary *)self->_serverFeatures objectForKeyedSubscript:v34];
        [dictionary2 setObject:v35 forKeyedSubscript:v34];
      }

      v31 = [(NSDictionary *)v29 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v31);
  }

  [dictionary setObject:dictionary2 forKeyedSubscript:@"serverFeatures"];
  if (self->_suggestion)
  {
    suggestion = [(_SFPBSearchSuggestion *)self suggestion];
    v37 = [suggestion copy];
    [dictionary setObject:v37 forKeyedSubscript:@"suggestion"];
  }

  if (self->_topicIdentifier)
  {
    topicIdentifier = [(_SFPBSearchSuggestion *)self topicIdentifier];
    v39 = [topicIdentifier copy];
    [dictionary setObject:v39 forKeyedSubscript:@"topicIdentifier"];
  }

  if (self->_type)
  {
    type = [(_SFPBSearchSuggestion *)self type];
    if (type >= 0x11)
    {
      v41 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", type];
    }

    else
    {
      v41 = off_1E7ACE3C0[type];
    }

    [dictionary setObject:v41 forKeyedSubscript:@"type"];
  }

  if (self->_utteranceText)
  {
    utteranceText = [(_SFPBSearchSuggestion *)self utteranceText];
    v43 = [utteranceText copy];
    [dictionary setObject:v43 forKeyedSubscript:@"utteranceText"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  v4 = [(NSString *)self->_suggestion hash];
  v5 = [(NSString *)self->_query hash];
  v6 = [(_SFPBGraphicalFloat *)self->_score hash];
  v7 = 2654435761 * self->_type;
  v8 = [(NSArray *)self->_duplicateSuggestions hash];
  v9 = [(NSString *)self->_topicIdentifier hash];
  v10 = [(NSString *)self->_bundleIdentifier hash];
  if (self->_previouslyEngaged)
  {
    v11 = 2654435761;
  }

  else
  {
    v11 = 0;
  }

  v12 = v4 ^ v3 ^ v5 ^ v6 ^ v8 ^ v9 ^ v7;
  v13 = v10 ^ v11 ^ [(NSString *)self->_fbr hash];
  v14 = v13 ^ [(NSString *)self->_scopedSearchApplicationBundleIdentifier hash];
  v15 = v12 ^ v14 ^ [(NSString *)self->_utteranceText hash];
  v16 = [(NSString *)self->_detailText hash];
  return v15 ^ v16 ^ [(NSDictionary *)self->_serverFeatures hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_64;
  }

  identifier = [(_SFPBSearchSuggestion *)self identifier];
  identifier2 = [equalCopy identifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  identifier3 = [(_SFPBSearchSuggestion *)self identifier];
  if (identifier3)
  {
    v8 = identifier3;
    identifier4 = [(_SFPBSearchSuggestion *)self identifier];
    identifier5 = [equalCopy identifier];
    v11 = [identifier4 isEqual:identifier5];

    if (!v11)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self suggestion];
  identifier2 = [equalCopy suggestion];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  suggestion = [(_SFPBSearchSuggestion *)self suggestion];
  if (suggestion)
  {
    v13 = suggestion;
    suggestion2 = [(_SFPBSearchSuggestion *)self suggestion];
    suggestion3 = [equalCopy suggestion];
    v16 = [suggestion2 isEqual:suggestion3];

    if (!v16)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self query];
  identifier2 = [equalCopy query];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  query = [(_SFPBSearchSuggestion *)self query];
  if (query)
  {
    v18 = query;
    query2 = [(_SFPBSearchSuggestion *)self query];
    query3 = [equalCopy query];
    v21 = [query2 isEqual:query3];

    if (!v21)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self score];
  identifier2 = [equalCopy score];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  score = [(_SFPBSearchSuggestion *)self score];
  if (score)
  {
    v23 = score;
    score2 = [(_SFPBSearchSuggestion *)self score];
    score3 = [equalCopy score];
    v26 = [score2 isEqual:score3];

    if (!v26)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  type = self->_type;
  if (type != [equalCopy type])
  {
    goto LABEL_64;
  }

  identifier = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
  identifier2 = [equalCopy duplicateSuggestions];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  duplicateSuggestions = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
  if (duplicateSuggestions)
  {
    v29 = duplicateSuggestions;
    duplicateSuggestions2 = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
    duplicateSuggestions3 = [equalCopy duplicateSuggestions];
    v32 = [duplicateSuggestions2 isEqual:duplicateSuggestions3];

    if (!v32)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self topicIdentifier];
  identifier2 = [equalCopy topicIdentifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  topicIdentifier = [(_SFPBSearchSuggestion *)self topicIdentifier];
  if (topicIdentifier)
  {
    v34 = topicIdentifier;
    topicIdentifier2 = [(_SFPBSearchSuggestion *)self topicIdentifier];
    topicIdentifier3 = [equalCopy topicIdentifier];
    v37 = [topicIdentifier2 isEqual:topicIdentifier3];

    if (!v37)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self bundleIdentifier];
  identifier2 = [equalCopy bundleIdentifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  bundleIdentifier = [(_SFPBSearchSuggestion *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    v39 = bundleIdentifier;
    bundleIdentifier2 = [(_SFPBSearchSuggestion *)self bundleIdentifier];
    bundleIdentifier3 = [equalCopy bundleIdentifier];
    v42 = [bundleIdentifier2 isEqual:bundleIdentifier3];

    if (!v42)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  previouslyEngaged = self->_previouslyEngaged;
  if (previouslyEngaged != [equalCopy previouslyEngaged])
  {
    goto LABEL_64;
  }

  identifier = [(_SFPBSearchSuggestion *)self fbr];
  identifier2 = [equalCopy fbr];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  v44 = [(_SFPBSearchSuggestion *)self fbr];
  if (v44)
  {
    v45 = v44;
    v46 = [(_SFPBSearchSuggestion *)self fbr];
    v47 = [equalCopy fbr];
    v48 = [v46 isEqual:v47];

    if (!v48)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  identifier2 = [equalCopy scopedSearchApplicationBundleIdentifier];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  scopedSearchApplicationBundleIdentifier = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  if (scopedSearchApplicationBundleIdentifier)
  {
    v50 = scopedSearchApplicationBundleIdentifier;
    scopedSearchApplicationBundleIdentifier2 = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
    scopedSearchApplicationBundleIdentifier3 = [equalCopy scopedSearchApplicationBundleIdentifier];
    v53 = [scopedSearchApplicationBundleIdentifier2 isEqual:scopedSearchApplicationBundleIdentifier3];

    if (!v53)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self utteranceText];
  identifier2 = [equalCopy utteranceText];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  utteranceText = [(_SFPBSearchSuggestion *)self utteranceText];
  if (utteranceText)
  {
    v55 = utteranceText;
    utteranceText2 = [(_SFPBSearchSuggestion *)self utteranceText];
    utteranceText3 = [equalCopy utteranceText];
    v58 = [utteranceText2 isEqual:utteranceText3];

    if (!v58)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self detailText];
  identifier2 = [equalCopy detailText];
  if ((identifier != 0) == (identifier2 == 0))
  {
    goto LABEL_63;
  }

  detailText = [(_SFPBSearchSuggestion *)self detailText];
  if (detailText)
  {
    v60 = detailText;
    detailText2 = [(_SFPBSearchSuggestion *)self detailText];
    detailText3 = [equalCopy detailText];
    v63 = [detailText2 isEqual:detailText3];

    if (!v63)
    {
      goto LABEL_64;
    }
  }

  else
  {
  }

  identifier = [(_SFPBSearchSuggestion *)self serverFeatures];
  identifier2 = [equalCopy serverFeatures];
  if ((identifier != 0) == (identifier2 == 0))
  {
LABEL_63:

    goto LABEL_64;
  }

  serverFeatures = [(_SFPBSearchSuggestion *)self serverFeatures];
  if (!serverFeatures)
  {

LABEL_67:
    v69 = 1;
    goto LABEL_65;
  }

  v65 = serverFeatures;
  serverFeatures2 = [(_SFPBSearchSuggestion *)self serverFeatures];
  serverFeatures3 = [equalCopy serverFeatures];
  v68 = [serverFeatures2 isEqual:serverFeatures3];

  if (v68)
  {
    goto LABEL_67;
  }

LABEL_64:
  v69 = 0;
LABEL_65:

  return v69;
}

- (void)writeTo:(id)to
{
  v38 = *MEMORY[0x1E69E9840];
  toCopy = to;
  identifier = [(_SFPBSearchSuggestion *)self identifier];
  if (identifier)
  {
    PBDataWriterWriteStringField();
  }

  suggestion = [(_SFPBSearchSuggestion *)self suggestion];
  if (suggestion)
  {
    PBDataWriterWriteStringField();
  }

  query = [(_SFPBSearchSuggestion *)self query];
  if (query)
  {
    PBDataWriterWriteStringField();
  }

  score = [(_SFPBSearchSuggestion *)self score];
  if (score)
  {
    PBDataWriterWriteSubmessage();
  }

  if ([(_SFPBSearchSuggestion *)self type])
  {
    PBDataWriterWriteInt32Field();
  }

  duplicateSuggestions = [(_SFPBSearchSuggestion *)self duplicateSuggestions];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = [duplicateSuggestions countByEnumeratingWithState:&v32 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v33;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(duplicateSuggestions);
        }

        PBDataWriterWriteSubmessage();
      }

      v11 = [duplicateSuggestions countByEnumeratingWithState:&v32 objects:v37 count:16];
    }

    while (v11);
  }

  topicIdentifier = [(_SFPBSearchSuggestion *)self topicIdentifier];
  if (topicIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  bundleIdentifier = [(_SFPBSearchSuggestion *)self bundleIdentifier];
  if (bundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if ([(_SFPBSearchSuggestion *)self previouslyEngaged])
  {
    PBDataWriterWriteBOOLField();
  }

  v16 = [(_SFPBSearchSuggestion *)self fbr];
  if (v16)
  {
    PBDataWriterWriteStringField();
  }

  scopedSearchApplicationBundleIdentifier = [(_SFPBSearchSuggestion *)self scopedSearchApplicationBundleIdentifier];
  if (scopedSearchApplicationBundleIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  utteranceText = [(_SFPBSearchSuggestion *)self utteranceText];
  if (utteranceText)
  {
    PBDataWriterWriteStringField();
  }

  detailText = [(_SFPBSearchSuggestion *)self detailText];
  if (detailText)
  {
    PBDataWriterWriteStringField();
  }

  serverFeatures = [(_SFPBSearchSuggestion *)self serverFeatures];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v21 = self->_serverFeatures;
  v22 = [(NSDictionary *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
  if (v22)
  {
    v23 = v22;
    v24 = *v29;
    do
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v29 != v24)
        {
          objc_enumerationMutation(v21);
        }

        v26 = *(*(&v28 + 1) + 8 * j);
        PBDataWriterPlaceMark();
        PBDataWriterWriteStringField();
        v27 = [serverFeatures objectForKeyedSubscript:v26];
        [v27 doubleValue];
        PBDataWriterWriteDoubleField();

        PBDataWriterRecallMark();
      }

      v23 = [(NSDictionary *)v21 countByEnumeratingWithState:&v28 objects:v36 count:16];
    }

    while (v23);
  }
}

- (void)setServerFeatures:(double)features forKey:(id)key
{
  keyCopy = key;
  serverFeatures = self->_serverFeatures;
  if (!serverFeatures)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v8 = self->_serverFeatures;
    self->_serverFeatures = dictionary;

    serverFeatures = self->_serverFeatures;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithDouble:features];
  [(NSDictionary *)serverFeatures setObject:v9 forKey:keyCopy];
}

- (BOOL)getServerFeatures:(double *)features forKey:(id)key
{
  v5 = [(NSDictionary *)self->_serverFeatures objectForKeyedSubscript:key];
  v6 = v5;
  if (features && v5)
  {
    [v5 doubleValue];
    *features = v7;
  }

  return v6 != 0;
}

- (void)setServerFeatures:(id)features
{
  self->_serverFeatures = [features copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setDetailText:(id)text
{
  self->_detailText = [text copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setUtteranceText:(id)text
{
  self->_utteranceText = [text copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setScopedSearchApplicationBundleIdentifier:(id)identifier
{
  self->_scopedSearchApplicationBundleIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setFbr:(id)fbr
{
  self->_fbr = [fbr copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setBundleIdentifier:(id)identifier
{
  self->_bundleIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setTopicIdentifier:(id)identifier
{
  self->_topicIdentifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addDuplicateSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  duplicateSuggestions = self->_duplicateSuggestions;
  v8 = suggestionsCopy;
  if (!duplicateSuggestions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_duplicateSuggestions;
    self->_duplicateSuggestions = array;

    suggestionsCopy = v8;
    duplicateSuggestions = self->_duplicateSuggestions;
  }

  [(NSArray *)duplicateSuggestions addObject:suggestionsCopy];
}

- (void)setDuplicateSuggestions:(id)suggestions
{
  self->_duplicateSuggestions = [suggestions copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setQuery:(id)query
{
  self->_query = [query copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setSuggestion:(id)suggestion
{
  self->_suggestion = [suggestion copy];

  MEMORY[0x1EEE66BB8]();
}

- (void)setIdentifier:(id)identifier
{
  self->_identifier = [identifier copy];

  MEMORY[0x1EEE66BB8]();
}

@end