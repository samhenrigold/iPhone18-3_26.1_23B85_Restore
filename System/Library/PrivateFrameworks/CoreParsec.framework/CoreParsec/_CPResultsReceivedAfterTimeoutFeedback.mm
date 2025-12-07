@interface _CPResultsReceivedAfterTimeoutFeedback
- (BOOL)isEqual:(id)equal;
- (_CPResultsReceivedAfterTimeoutFeedback)init;
- (_CPResultsReceivedAfterTimeoutFeedback)initWithFacade:(id)facade;
- (void)addResults:(id)results;
- (void)setResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _CPResultsReceivedAfterTimeoutFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      results = [(_CPResultsReceivedAfterTimeoutFeedback *)self results];
      results2 = [equalCopy results];
      v8 = results2;
      if ((results != 0) != (results2 == 0))
      {
        results3 = [(_CPResultsReceivedAfterTimeoutFeedback *)self results];
        if (!results3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = results3;
        results4 = [(_CPResultsReceivedAfterTimeoutFeedback *)self results];
        results5 = [equalCopy results];
        v13 = [results4 isEqual:results5];

        if (v13)
        {
          goto LABEL_11;
        }
      }

      else
      {
      }
    }
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPResultsReceivedAfterTimeoutFeedback *)self timestamp])
  {
    PBDataWriterWriteUint64Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)addResults:(id)results
{
  resultsCopy = results;
  results = self->_results;
  v8 = resultsCopy;
  if (!results)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_results;
    self->_results = array;

    resultsCopy = v8;
    results = self->_results;
  }

  [(NSArray *)results addObject:resultsCopy];
}

- (void)setResults:(id)results
{
  self->_results = [results mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (_CPResultsReceivedAfterTimeoutFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPResultsReceivedAfterTimeoutFeedback;
  v2 = [(_CPResultsReceivedAfterTimeoutFeedback *)&v5 init];
  if (v2)
  {
    [(_CPResultsReceivedAfterTimeoutFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPResultsReceivedAfterTimeoutFeedback)initWithFacade:(id)facade
{
  v22 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v20.receiver = self;
  v20.super_class = _CPResultsReceivedAfterTimeoutFeedback;
  v5 = [(_CPResultsReceivedAfterTimeoutFeedback *)&v20 init];
  if (v5)
  {
    -[_CPResultsReceivedAfterTimeoutFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    results = [facadeCopy results];
    if (results)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    results2 = [facadeCopy results];
    v9 = [results2 countByEnumeratingWithState:&v16 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(results2);
          }

          v13 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v16 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [results2 countByEnumeratingWithState:&v16 objects:v21 count:16];
      }

      while (v10);
    }

    [(_CPResultsReceivedAfterTimeoutFeedback *)v5 setResults:v7];
    v14 = v5;
  }

  return v5;
}

@end