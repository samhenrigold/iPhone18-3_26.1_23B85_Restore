@interface REContentRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (REContentRelevanceProvider)initWithContent:(id)content;
- (REContentRelevanceProvider)initWithDictionary:(id)dictionary;
- (REContentRelevanceProvider)initWithKeywords:(id)keywords;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryEncoding;
- (unint64_t)_hash;
@end

@implementation REContentRelevanceProvider

- (REContentRelevanceProvider)initWithContent:(id)content
{
  v4 = RETokenizeString(content);
  v5 = [(REContentRelevanceProvider *)self initWithKeywords:v4];

  return v5;
}

- (REContentRelevanceProvider)initWithKeywords:(id)keywords
{
  keywordsCopy = keywords;
  v9.receiver = self;
  v9.super_class = REContentRelevanceProvider;
  v6 = [(RERelevanceProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_keywords, keywords);
    if (!v7->_keywords)
    {
      v7->_keywords = MEMORY[0x277CBEBF8];
    }
  }

  return v7;
}

- (REContentRelevanceProvider)initWithDictionary:(id)dictionary
{
  v4 = [dictionary objectForKeyedSubscript:@"keywords"];
  if (v4)
  {
    v5 = [(REContentRelevanceProvider *)self init];
    if (v5)
    {
      v6 = [v4 copy];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = MEMORY[0x277CBEBF8];
      }

      objc_storeStrong(&v5->_keywords, v8);
    }

    self = v5;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (id)dictionaryEncoding
{
  v6[1] = *MEMORY[0x277D85DE8];
  if (self->_keywords)
  {
    keywords = self->_keywords;
  }

  else
  {
    keywords = MEMORY[0x277CBEBF8];
  }

  v5 = @"keywords";
  v6[0] = keywords;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];

  return v3;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[REContentRelevanceProvider allocWithZone:?]];
  objc_storeStrong(&v4->_keywords, self->_keywords);
  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v9 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v11.receiver = self, v11.super_class = REContentRelevanceProvider, [(RERelevanceProvider *)&v11 isEqual:equalCopy]))
    {
      keywords = self->_keywords;
      v6 = equalCopy->_keywords;
      v7 = keywords;
      v8 = v7;
      if (v7 == v6)
      {
        v9 = 1;
      }

      else
      {
        v9 = [(NSArray *)v7 isEqual:v6];
      }
    }

    else
    {
      v9 = 0;
    }
  }

  return v9;
}

- (unint64_t)_hash
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_keywords;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v5 ^= [*(*(&v9 + 1) + 8 * i) hash];
      }

      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v7.receiver = self;
  v7.super_class = REContentRelevanceProvider;
  v4 = [(REContentRelevanceProvider *)&v7 description];
  v5 = [v3 stringWithFormat:@"%@, keywords=%@", v4, self->_keywords];

  return v5;
}

@end