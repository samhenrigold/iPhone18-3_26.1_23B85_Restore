@interface _CPSessionMissingSuggestionsFeedback
- (BOOL)isEqual:(id)equal;
- (_CPSessionMissingSuggestionsFeedback)init;
- (void)addSuggestions:(id)suggestions;
- (void)setSuggestions:(id)suggestions;
- (void)writeTo:(id)to;
@end

@implementation _CPSessionMissingSuggestionsFeedback

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    timestamp = self->_timestamp;
    if (timestamp == [equalCopy timestamp])
    {
      suggestions = [(_CPSessionMissingSuggestionsFeedback *)self suggestions];
      suggestions2 = [equalCopy suggestions];
      v8 = suggestions2;
      if ((suggestions != 0) != (suggestions2 == 0))
      {
        suggestions3 = [(_CPSessionMissingSuggestionsFeedback *)self suggestions];
        if (!suggestions3)
        {

LABEL_11:
          v14 = 1;
          goto LABEL_9;
        }

        v10 = suggestions3;
        suggestions4 = [(_CPSessionMissingSuggestionsFeedback *)self suggestions];
        suggestions5 = [equalCopy suggestions];
        v13 = [suggestions4 isEqual:suggestions5];

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
  if ([(_CPSessionMissingSuggestionsFeedback *)self timestamp])
  {
    PBDataWriterWriteUint64Field();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_suggestions;
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

- (void)addSuggestions:(id)suggestions
{
  suggestionsCopy = suggestions;
  suggestions = self->_suggestions;
  v8 = suggestionsCopy;
  if (!suggestions)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_suggestions;
    self->_suggestions = array;

    suggestionsCopy = v8;
    suggestions = self->_suggestions;
  }

  [(NSArray *)suggestions addObject:suggestionsCopy];
}

- (void)setSuggestions:(id)suggestions
{
  self->_suggestions = [suggestions mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (_CPSessionMissingSuggestionsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPSessionMissingSuggestionsFeedback;
  v2 = [(_CPSessionMissingSuggestionsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPSessionMissingSuggestionsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

@end