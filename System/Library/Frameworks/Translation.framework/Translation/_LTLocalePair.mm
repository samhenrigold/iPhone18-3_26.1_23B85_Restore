@interface _LTLocalePair
+ (_LTLocalePair)pairWithIdentifiers:(id)identifiers;
+ (id)pairNamesForLocaleIdentifiers:(id)identifiers;
+ (id)pairNamesForLocales:(id)locales;
- (BOOL)isBidirectionalEqual:(id)equal;
- (BOOL)isEqual:(id)equal;
- (BOOL)isPassthrough;
- (BOOL)isVariantPair;
- (_LTLocalePair)initWithCoder:(id)coder;
- (_LTLocalePair)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale;
- (id)canonicalIdentifier;
- (id)canonicalLocalePair;
- (id)combinedLocaleIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)identifier;
- (id)oppositeToLocale:(id)locale;
- (id)reversedPair;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation _LTLocalePair

- (_LTLocalePair)initWithSourceLocale:(id)locale targetLocale:(id)targetLocale
{
  localeCopy = locale;
  targetLocaleCopy = targetLocale;
  v13.receiver = self;
  v13.super_class = _LTLocalePair;
  v9 = [(_LTLocalePair *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_sourceLocale, locale);
    objc_storeStrong(&v10->_targetLocale, targetLocale);
    v11 = v10;
  }

  return v10;
}

- (_LTLocalePair)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = _LTLocalePair;
  v5 = [(_LTLocalePair *)&v16 init];
  if (v5)
  {
    v6 = MEMORY[0x277CBEAF8];
    v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sourceLocaleIdentifier"];
    v8 = [v6 localeWithLocaleIdentifier:v7];
    sourceLocale = v5->_sourceLocale;
    v5->_sourceLocale = v8;

    v10 = MEMORY[0x277CBEAF8];
    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"targetLocaleIdentifier"];
    v12 = [v10 localeWithLocaleIdentifier:v11];
    targetLocale = v5->_targetLocale;
    v5->_targetLocale = v12;

    v14 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  sourceLocale = self->_sourceLocale;
  coderCopy = coder;
  localeIdentifier = [(NSLocale *)sourceLocale localeIdentifier];
  [coderCopy encodeObject:localeIdentifier forKey:@"sourceLocaleIdentifier"];

  localeIdentifier2 = [(NSLocale *)self->_targetLocale localeIdentifier];
  [coderCopy encodeObject:localeIdentifier2 forKey:@"targetLocaleIdentifier"];
}

+ (_LTLocalePair)pairWithIdentifiers:(id)identifiers
{
  v4 = [identifiers componentsSeparatedByString:@"-"];
  if ([v4 count] == 2)
  {
    v5 = MEMORY[0x277CBEAF8];
    v6 = [v4 objectAtIndexedSubscript:0];
    v7 = [v5 localeWithLocaleIdentifier:v6];

    v8 = MEMORY[0x277CBEAF8];
    v9 = [v4 objectAtIndexedSubscript:1];
    v10 = [v8 localeWithLocaleIdentifier:v9];

    v11 = 0;
    if (v7 && v10)
    {
      v11 = [[self alloc] initWithSourceLocale:v7 targetLocale:v10];
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [_LTLocalePair alloc];
  sourceLocale = self->_sourceLocale;
  targetLocale = self->_targetLocale;

  return [(_LTLocalePair *)v4 initWithSourceLocale:sourceLocale targetLocale:targetLocale];
}

- (id)combinedLocaleIdentifier
{
  v3 = MEMORY[0x277CCACA8];
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  targetLocale = [(_LTLocalePair *)self targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  v8 = [v3 stringWithFormat:@"%@-%@", _ltLocaleIdentifier, _ltLocaleIdentifier2];

  return v8;
}

- (id)reversedPair
{
  v3 = [_LTLocalePair alloc];
  targetLocale = [(_LTLocalePair *)self targetLocale];
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  v6 = [(_LTLocalePair *)v3 initWithSourceLocale:targetLocale targetLocale:sourceLocale];

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (equalCopy == self)
  {
    v10 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
      sourceLocale = [(_LTLocalePair *)self sourceLocale];
      sourceLocale2 = [(_LTLocalePair *)v5 sourceLocale];
      if ([sourceLocale _ltEqual:sourceLocale2])
      {
        targetLocale = [(_LTLocalePair *)self targetLocale];
        targetLocale2 = [(_LTLocalePair *)v5 targetLocale];
        v10 = [targetLocale _ltEqual:targetLocale2];
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      v10 = 0;
    }
  }

  return v10;
}

- (BOOL)isBidirectionalEqual:(id)equal
{
  equalCopy = equal;
  if ([(_LTLocalePair *)self isEqual:equalCopy])
  {
    v5 = 1;
  }

  else
  {
    reversedPair = [(_LTLocalePair *)self reversedPair];
    v5 = [reversedPair isEqual:equalCopy];
  }

  return v5;
}

- (unint64_t)hash
{
  identifier = [(_LTLocalePair *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (id)oppositeToLocale:(id)locale
{
  localeCopy = locale;
  _ltLocaleIdentifier = [localeCopy _ltLocaleIdentifier];
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  _ltLocaleIdentifier2 = [sourceLocale _ltLocaleIdentifier];
  v8 = [_ltLocaleIdentifier isEqualToString:_ltLocaleIdentifier2];

  if (v8)
  {
    targetLocale = [(_LTLocalePair *)self targetLocale];
LABEL_5:
    v14 = targetLocale;
    goto LABEL_7;
  }

  _ltLocaleIdentifier3 = [localeCopy _ltLocaleIdentifier];
  targetLocale2 = [(_LTLocalePair *)self targetLocale];
  _ltLocaleIdentifier4 = [targetLocale2 _ltLocaleIdentifier];
  v13 = [_ltLocaleIdentifier3 isEqualToString:_ltLocaleIdentifier4];

  if (v13)
  {
    targetLocale = [(_LTLocalePair *)self sourceLocale];
    goto LABEL_5;
  }

  v14 = 0;
LABEL_7:

  return v14;
}

- (id)identifier
{
  v3 = MEMORY[0x277CCACA8];
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];
  targetLocale = [(_LTLocalePair *)self targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];
  v8 = [v3 stringWithFormat:@"%@-%@", localeIdentifier, localeIdentifier2];

  return v8;
}

- (id)canonicalIdentifier
{
  v14[2] = *MEMORY[0x277D85DE8];
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  _ltLocaleIdentifier = [sourceLocale _ltLocaleIdentifier];
  v14[0] = _ltLocaleIdentifier;
  targetLocale = [(_LTLocalePair *)self targetLocale];
  _ltLocaleIdentifier2 = [targetLocale _ltLocaleIdentifier];
  v14[1] = _ltLocaleIdentifier2;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];

  v8 = [v7 sortedArrayUsingSelector:sel_compare_];
  v9 = MEMORY[0x277CCACA8];
  v10 = [v8 objectAtIndexedSubscript:0];
  v11 = [v8 objectAtIndexedSubscript:1];
  v12 = [v9 stringWithFormat:@"%@-%@", v10, v11];

  return v12;
}

- (id)canonicalLocalePair
{
  canonicalIdentifier = [(_LTLocalePair *)self canonicalIdentifier];
  v3 = [_LTLocalePair pairWithIdentifiers:canonicalIdentifier];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  localeIdentifier = [sourceLocale localeIdentifier];
  targetLocale = [(_LTLocalePair *)self targetLocale];
  localeIdentifier2 = [targetLocale localeIdentifier];
  v10 = [v3 stringWithFormat:@"<%@: source:%@ target:%@>", v5, localeIdentifier, localeIdentifier2];

  return v10;
}

- (BOOL)isPassthrough
{
  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  targetLocale = [(_LTLocalePair *)self targetLocale];
  v5 = [sourceLocale _ltEqual:targetLocale];

  return v5;
}

- (BOOL)isVariantPair
{
  if ([(_LTLocalePair *)self isPassthrough])
  {
    return 0;
  }

  sourceLocale = [(_LTLocalePair *)self sourceLocale];
  languageCode = [sourceLocale languageCode];
  targetLocale = [(_LTLocalePair *)self targetLocale];
  languageCode2 = [targetLocale languageCode];
  v8 = [languageCode isEqualToString:languageCode2];

  return v8;
}

+ (id)pairNamesForLocales:(id)locales
{
  v19 = *MEMORY[0x277D85DE8];
  localesCopy = locales;
  array = [MEMORY[0x277CBEB18] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = localesCopy;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        _ltLocaleIdentifier = [*(*(&v14 + 1) + 8 * i) _ltLocaleIdentifier];
        [array addObject:_ltLocaleIdentifier];
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v12 = [self pairNamesForLocaleIdentifiers:array];

  return v12;
}

+ (id)pairNamesForLocaleIdentifiers:(id)identifiers
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = [identifiers sortedArrayUsingSelector:sel_compare_];
  array = [MEMORY[0x277CBEB18] array];
  v5 = [v3 count];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = v3;
  v17 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v17)
  {
    v6 = 0;
    v16 = *v26;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v25 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v19 = v6;
        v20 = v5;
        v9 = [obj subarrayWithRange:{v6, v5}];
        v10 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v22;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v22 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@-%@", v8, *(*(&v21 + 1) + 8 * j)];
              [array addObject:v14];
            }

            v11 = [v9 countByEnumeratingWithState:&v21 objects:v29 count:16];
          }

          while (v11);
        }

        v6 = v19 + 1;
        v5 = v20 - 1;
      }

      v17 = [obj countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v17);
  }

  return array;
}

@end