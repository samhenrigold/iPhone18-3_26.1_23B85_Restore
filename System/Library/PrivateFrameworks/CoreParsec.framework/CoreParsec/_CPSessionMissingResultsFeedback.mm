@interface _CPSessionMissingResultsFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSessionMissingResultsFeedback)init;
- (void)addResults:(id)results;
- (void)setResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _CPSessionMissingResultsFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      results = [(_CPSessionMissingResultsFeedback *)self results];
      results2 = [equalCopy results];
      v8 = results2;
      if ((results != 0) != (results2 == 0))
      {
        results3 = [(_CPSessionMissingResultsFeedback *)self results];
        if (!results3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = results3;
        results4 = [(_CPSessionMissingResultsFeedback *)self results];
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
  if ([(_CPSessionMissingResultsFeedback *)self timestamp])
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

- (_CPSessionMissingResultsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSessionMissingResultsFeedback;
  v2 = [(_CPSessionMissingResultsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSessionMissingResultsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end