@interface _INPBSearchForTimersIntentResponse
- (BOOL)isEqual:(id)equal;
- (_INPBSearchForTimersIntentResponse)initWithCoder:(id)coder;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addMatchedTimers:(id)timers;
- (void)addTimers:(id)timers;
- (void)addUnmatchedTimers:(id)timers;
- (void)encodeWithCoder:(id)coder;
- (void)setMatchedTimers:(id)timers;
- (void)setTimers:(id)timers;
- (void)setUnmatchedTimers:(id)timers;
- (void)writeTo:(id)to;
@end

@implementation _INPBSearchForTimersIntentResponse

- (id)dictionaryRepresentation
{
  v41 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSArray *)self->_matchedTimers count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v5 = self->_matchedTimers;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v35;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v35 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v34 + 1) + 8 * i) dictionaryRepresentation];
          [array addObject:dictionaryRepresentation];
        }

        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v7);
    }

    [dictionary setObject:array forKeyedSubscript:@"matchedTimers"];
  }

  if ([(NSArray *)self->_timers count])
  {
    array2 = [MEMORY[0x1E695DF70] array];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v12 = self->_timers;
    v13 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v31;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v31 != v15)
          {
            objc_enumerationMutation(v12);
          }

          dictionaryRepresentation2 = [*(*(&v30 + 1) + 8 * j) dictionaryRepresentation];
          [array2 addObject:dictionaryRepresentation2];
        }

        v14 = [(NSArray *)v12 countByEnumeratingWithState:&v30 objects:v39 count:16];
      }

      while (v14);
    }

    [dictionary setObject:array2 forKeyedSubscript:@"timers"];
  }

  if ([(NSArray *)self->_unmatchedTimers count])
  {
    array3 = [MEMORY[0x1E695DF70] array];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v19 = self->_unmatchedTimers;
    v20 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v27;
      do
      {
        for (k = 0; k != v21; ++k)
        {
          if (*v27 != v22)
          {
            objc_enumerationMutation(v19);
          }

          dictionaryRepresentation3 = [*(*(&v26 + 1) + 8 * k) dictionaryRepresentation];
          [array3 addObject:dictionaryRepresentation3];
        }

        v21 = [(NSArray *)v19 countByEnumeratingWithState:&v26 objects:v38 count:16];
      }

      while (v21);
    }

    [dictionary setObject:array3 forKeyedSubscript:@"unmatchedTimers"];
  }

  return dictionary;
}

- (unint64_t)hash
{
  v3 = [(NSArray *)self->_matchedTimers hash];
  v4 = [(NSArray *)self->_timers hash]^ v3;
  return v4 ^ [(NSArray *)self->_unmatchedTimers hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  matchedTimers = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
  matchedTimers2 = [equalCopy matchedTimers];
  if ((matchedTimers != 0) == (matchedTimers2 == 0))
  {
    goto LABEL_16;
  }

  matchedTimers3 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
  if (matchedTimers3)
  {
    v8 = matchedTimers3;
    matchedTimers4 = [(_INPBSearchForTimersIntentResponse *)self matchedTimers];
    matchedTimers5 = [equalCopy matchedTimers];
    v11 = [matchedTimers4 isEqual:matchedTimers5];

    if (!v11)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  matchedTimers = [(_INPBSearchForTimersIntentResponse *)self timers];
  matchedTimers2 = [equalCopy timers];
  if ((matchedTimers != 0) == (matchedTimers2 == 0))
  {
    goto LABEL_16;
  }

  timers = [(_INPBSearchForTimersIntentResponse *)self timers];
  if (timers)
  {
    v13 = timers;
    timers2 = [(_INPBSearchForTimersIntentResponse *)self timers];
    timers3 = [equalCopy timers];
    v16 = [timers2 isEqual:timers3];

    if (!v16)
    {
      goto LABEL_17;
    }
  }

  else
  {
  }

  matchedTimers = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
  matchedTimers2 = [equalCopy unmatchedTimers];
  if ((matchedTimers != 0) != (matchedTimers2 == 0))
  {
    unmatchedTimers = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
    if (!unmatchedTimers)
    {

LABEL_20:
      v22 = 1;
      goto LABEL_18;
    }

    v18 = unmatchedTimers;
    unmatchedTimers2 = [(_INPBSearchForTimersIntentResponse *)self unmatchedTimers];
    unmatchedTimers3 = [equalCopy unmatchedTimers];
    v21 = [unmatchedTimers2 isEqual:unmatchedTimers3];

    if (v21)
    {
      goto LABEL_20;
    }
  }

  else
  {
LABEL_16:
  }

LABEL_17:
  v22 = 0;
LABEL_18:

  return v22;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [+[_INPBSearchForTimersIntentResponse allocWithZone:](_INPBSearchForTimersIntentResponse init];
  v6 = [(NSArray *)self->_matchedTimers copyWithZone:zone];
  [(_INPBSearchForTimersIntentResponse *)v5 setMatchedTimers:v6];

  v7 = [(NSArray *)self->_timers copyWithZone:zone];
  [(_INPBSearchForTimersIntentResponse *)v5 setTimers:v7];

  v8 = [(NSArray *)self->_unmatchedTimers copyWithZone:zone];
  [(_INPBSearchForTimersIntentResponse *)v5 setUnmatchedTimers:v8];

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  data = [(_INPBSearchForTimersIntentResponse *)self data];
  v5 = NSStringFromSelector(sel_bytes);
  [coderCopy if_encodeBytesNoCopy:data forKey:v5];
}

- (_INPBSearchForTimersIntentResponse)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = NSStringFromSelector(sel_bytes);
  selfCopy = [coderCopy if_decodeBytesNoCopyForKey:v5];

  if (selfCopy || (v7 = objc_opt_class(), NSStringFromSelector(sel_data), v8 = objc_claimAutoreleasedReturnValue(), [coderCopy decodeObjectOfClass:v7 forKey:v8], selfCopy = objc_claimAutoreleasedReturnValue(), v8, selfCopy))
  {
    self = [(_INPBSearchForTimersIntentResponse *)self initWithData:selfCopy];

    selfCopy = self;
  }

  return selfCopy;
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_matchedTimers;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_timers;
  v11 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_unmatchedTimers;
  v16 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (void)addUnmatchedTimers:(id)timers
{
  timersCopy = timers;
  unmatchedTimers = self->_unmatchedTimers;
  v8 = timersCopy;
  if (!unmatchedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_unmatchedTimers;
    self->_unmatchedTimers = array;

    timersCopy = v8;
    unmatchedTimers = self->_unmatchedTimers;
  }

  [(NSArray *)unmatchedTimers addObject:timersCopy];
}

- (void)setUnmatchedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  unmatchedTimers = self->_unmatchedTimers;
  self->_unmatchedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, unmatchedTimers);
}

- (void)addTimers:(id)timers
{
  timersCopy = timers;
  timers = self->_timers;
  v8 = timersCopy;
  if (!timers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_timers;
    self->_timers = array;

    timersCopy = v8;
    timers = self->_timers;
  }

  [(NSArray *)timers addObject:timersCopy];
}

- (void)setTimers:(id)timers
{
  v4 = [timers mutableCopy];
  timers = self->_timers;
  self->_timers = v4;

  MEMORY[0x1EEE66BB8](v4, timers);
}

- (void)addMatchedTimers:(id)timers
{
  timersCopy = timers;
  matchedTimers = self->_matchedTimers;
  v8 = timersCopy;
  if (!matchedTimers)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_matchedTimers;
    self->_matchedTimers = array;

    timersCopy = v8;
    matchedTimers = self->_matchedTimers;
  }

  [(NSArray *)matchedTimers addObject:timersCopy];
}

- (void)setMatchedTimers:(id)timers
{
  v4 = [timers mutableCopy];
  matchedTimers = self->_matchedTimers;
  self->_matchedTimers = v4;

  MEMORY[0x1EEE66BB8](v4, matchedTimers);
}

@end