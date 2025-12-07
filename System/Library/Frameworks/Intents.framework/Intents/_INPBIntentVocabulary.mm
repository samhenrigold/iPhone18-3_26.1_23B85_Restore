@interface _INPBIntentVocabulary
- (BOOL)isEqual:(id)equal;
- (_INPBIntentVocabulary)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (void)addIntentSlotVocabularyPolicies:(id)policies;
- (void)addIntentTypePhrases:(id)phrases;
- (void)encodeWithCoder:(id)coder;
- (void)setIntentSlotVocabularyPolicies:(id)policies;
- (void)setIntentTypePhrases:(id)phrases;
- (void)writeTo:(id)to;
@end

@implementation _INPBIntentVocabulary

- (id)dictionaryRepresentation
{
  v29 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_intentSlotVocabularyPolicies count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v5 = self->_intentSlotVocabularyPolicies;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v24;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v24 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v23 objects:v28 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"intent_slot_vocabulary_policies"];
  }

  if ([(NSArray *)self->_intentTypePhrases count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v12 = self->_intentTypePhrases;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v20;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v20 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v19 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"intent_type_phrases"];
  }

  return dictionary;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_12;
  }

  intentSlotVocabularyPolicies = [(_INPBIntentVocabulary *)self intentSlotVocabularyPolicies];
  intentSlotVocabularyPolicies2 = [equalCopy intentSlotVocabularyPolicies];
  if ((intentSlotVocabularyPolicies != 0) == (intentSlotVocabularyPolicies2 == 0))
  {
    goto LABEL_11;
  }

  intentSlotVocabularyPolicies3 = [(_INPBIntentVocabulary *)self intentSlotVocabularyPolicies];
  if (intentSlotVocabularyPolicies3)
  {
    v8 = intentSlotVocabularyPolicies3;
    intentSlotVocabularyPolicies4 = [(_INPBIntentVocabulary *)self intentSlotVocabularyPolicies];
    intentSlotVocabularyPolicies5 = [equalCopy intentSlotVocabularyPolicies];
    v11 = [intentSlotVocabularyPolicies4 isEqual:intentSlotVocabularyPolicies5];

    if (!v11)
    {
      goto LABEL_12;
    }
  }

  else
  {
  }

  intentSlotVocabularyPolicies = [(_INPBIntentVocabulary *)self intentTypePhrases];
  intentSlotVocabularyPolicies2 = [equalCopy intentTypePhrases];
  if ((intentSlotVocabularyPolicies != 0) != (intentSlotVocabularyPolicies2 == 0))
  {
    intentTypePhrases = [(_INPBIntentVocabulary *)self intentTypePhrases];
    if (!intentTypePhrases)
    {

LABEL_15:
      v17 = 1;
      goto LABEL_13;
    }

    v13 = intentTypePhrases;
    intentTypePhrases2 = [(_INPBIntentVocabulary *)self intentTypePhrases];
    intentTypePhrases3 = [equalCopy intentTypePhrases];
    v16 = [intentTypePhrases2 isEqual:intentTypePhrases3];

    if (v16)
    {
      goto LABEL_15;
    }
  }

  else
  {
LABEL_11:
  }

LABEL_12:
  v17 = 0;
LABEL_13:

  return v17;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBIntentVocabulary allocWithZone:](_INPBIntentVocabulary init];
  v6 = [(NSArray *)self->_intentSlotVocabularyPolicies copyWithZone:zone];
  [(_INPBIntentVocabulary *)v5 setIntentSlotVocabularyPolicies:v6];

  v7 = [(NSArray *)self->_intentTypePhrases copyWithZone:zone];
  [(_INPBIntentVocabulary *)v5 setIntentTypePhrases:v7];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBIntentVocabulary *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBIntentVocabulary)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBIntentVocabulary *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_intentSlotVocabularyPolicies;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_intentTypePhrases;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)addIntentTypePhrases:(id)phrases
{
  phrasesCopy = phrases;
  intentTypePhrases = self->_intentTypePhrases;
  v8 = phrasesCopy;
  if (!intentTypePhrases)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentTypePhrases;
    self->_intentTypePhrases = array;

    phrasesCopy = v8;
    intentTypePhrases = self->_intentTypePhrases;
  }

  [(NSArray *)intentTypePhrases addObject:phrasesCopy];
}

- (void)setIntentTypePhrases:(id)phrases
{
  v4 = [phrases mutableCopy];
  intentTypePhrases = self->_intentTypePhrases;
  self->_intentTypePhrases = v4;

  MEMORY[0x1EEE66BB8](v4, intentTypePhrases);
}

- (void)addIntentSlotVocabularyPolicies:(id)policies
{
  policiesCopy = policies;
  intentSlotVocabularyPolicies = self->_intentSlotVocabularyPolicies;
  v8 = policiesCopy;
  if (!intentSlotVocabularyPolicies)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_intentSlotVocabularyPolicies;
    self->_intentSlotVocabularyPolicies = array;

    policiesCopy = v8;
    intentSlotVocabularyPolicies = self->_intentSlotVocabularyPolicies;
  }

  [(NSArray *)intentSlotVocabularyPolicies addObject:policiesCopy];
}

- (void)setIntentSlotVocabularyPolicies:(id)policies
{
  v4 = [policies mutableCopy];
  intentSlotVocabularyPolicies = self->_intentSlotVocabularyPolicies;
  self->_intentSlotVocabularyPolicies = v4;

  MEMORY[0x1EEE66BB8](v4, intentSlotVocabularyPolicies);
}

@end