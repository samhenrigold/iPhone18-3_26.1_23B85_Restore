@interface NLConcatenatedDataProvider
- (NLConcatenatedDataProvider)initWithDataProviders:(id)providers;
- (__CFStringTokenizer)tokenizer;
- (id)configuration;
- (id)documentFrequencyMap;
- (id)instanceAtIndex:(unint64_t)index;
- (id)inverseLabelMap;
- (id)labelMap;
- (id)vocabularyMap;
- (unint64_t)numberOfInstances;
- (unint64_t)numberOfLabels;
- (unint64_t)numberOfVocabularyEntries;
@end

@implementation NLConcatenatedDataProvider

- (NLConcatenatedDataProvider)initWithDataProviders:(id)providers
{
  providersCopy = providers;
  if ([providersCopy count])
  {
    v8.receiver = self;
    v8.super_class = NLConcatenatedDataProvider;
    self = [(NLConcatenatedDataProvider *)&v8 init];
    if (self)
    {
      v5 = [providersCopy copy];
      dataProviders = self->_dataProviders;
      self->_dataProviders = v5;
    }
  }

  return self;
}

- (id)configuration
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  configuration = [firstObject configuration];

  return configuration;
}

- (unint64_t)numberOfInstances
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = self->_dataProviders;
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

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfInstances];
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

- (id)instanceAtIndex:(unint64_t)index
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = self->_dataProviders;
  v5 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      indexCopy = index;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v8);
        numberOfInstances = [v10 numberOfInstances];
        index = indexCopy - numberOfInstances;
        if (indexCopy < numberOfInstances)
        {
          v12 = [v10 instanceAtIndex:indexCopy];
          goto LABEL_11;
        }

        ++v8;
        indexCopy -= numberOfInstances;
      }

      while (v6 != v8);
      v6 = [(NSArray *)v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v12 = 0;
LABEL_11:

  return v12;
}

- (__CFStringTokenizer)tokenizer
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  tokenizer = [firstObject tokenizer];

  return tokenizer;
}

- (id)labelMap
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  labelMap = [firstObject labelMap];

  return labelMap;
}

- (id)inverseLabelMap
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  inverseLabelMap = [firstObject inverseLabelMap];

  return inverseLabelMap;
}

- (id)vocabularyMap
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  vocabularyMap = [firstObject vocabularyMap];

  return vocabularyMap;
}

- (id)documentFrequencyMap
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  documentFrequencyMap = [firstObject documentFrequencyMap];

  return documentFrequencyMap;
}

- (unint64_t)numberOfLabels
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  numberOfLabels = [firstObject numberOfLabels];

  return numberOfLabels;
}

- (unint64_t)numberOfVocabularyEntries
{
  firstObject = [(NSArray *)self->_dataProviders firstObject];
  numberOfVocabularyEntries = [firstObject numberOfVocabularyEntries];

  return numberOfVocabularyEntries;
}

@end