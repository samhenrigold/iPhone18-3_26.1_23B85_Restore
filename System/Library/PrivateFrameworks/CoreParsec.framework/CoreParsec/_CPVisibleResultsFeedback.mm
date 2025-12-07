@interface _CPVisibleResultsFeedback
- (BOOL)isEqual:(id)equal;
- (_CPVisibleResultsFeedback)init;
- (_CPVisibleResultsFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (unint64_t)uniqueIdsOfVisibleButtonsAtIndex:(unint64_t)index;
- (void)addResults:(id)results;
- (void)addUniqueIdentifiersOfVisibleCardSections:(id)sections;
- (void)addUniqueIdsOfVisibleButtons:(unint64_t)buttons;
- (void)setResults:(id)results;
- (void)setUniqueIdentifiersOfVisibleCardSections:(id)sections;
- (void)setUniqueIdsOfVisibleButtons:(id)buttons;
- (void)writeTo:(id)to;
@end

@implementation _CPVisibleResultsFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(NSArray *)self->_results hash]^ v3;
  v5 = 2654435761 * self->_triggerEvent;
  v6 = v4 ^ v5 ^ [(_CPSearchResultForFeedback *)self->_goTakeoverResult hash];
  v7 = [(NSArray *)self->_uniqueIdsOfVisibleButtons hash];
  return v6 ^ v7 ^ [(NSArray *)self->_uniqueIdentifiersOfVisibleCardSections hash]^ (2654435761 * self->_isFilterBarShown) ^ (2654435761 * self->_inputToResultShownMs);
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_24;
  }

  results = [(_CPVisibleResultsFeedback *)self results];
  results2 = [equalCopy results];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_23;
  }

  results3 = [(_CPVisibleResultsFeedback *)self results];
  if (results3)
  {
    v9 = results3;
    results4 = [(_CPVisibleResultsFeedback *)self results];
    results5 = [equalCopy results];
    v12 = [results4 isEqual:results5];

    if (!v12)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  triggerEvent = self->_triggerEvent;
  if (triggerEvent != [equalCopy triggerEvent])
  {
    goto LABEL_24;
  }

  results = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
  results2 = [equalCopy goTakeoverResult];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_23;
  }

  goTakeoverResult = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
  if (goTakeoverResult)
  {
    v15 = goTakeoverResult;
    goTakeoverResult2 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
    goTakeoverResult3 = [equalCopy goTakeoverResult];
    v18 = [goTakeoverResult2 isEqual:goTakeoverResult3];

    if (!v18)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  results = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  results2 = [equalCopy uniqueIdsOfVisibleButtons];
  if ((results != 0) == (results2 == 0))
  {
    goto LABEL_23;
  }

  uniqueIdsOfVisibleButtons = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
  if (uniqueIdsOfVisibleButtons)
  {
    v20 = uniqueIdsOfVisibleButtons;
    uniqueIdsOfVisibleButtons2 = [(_CPVisibleResultsFeedback *)self uniqueIdsOfVisibleButtons];
    uniqueIdsOfVisibleButtons3 = [equalCopy uniqueIdsOfVisibleButtons];
    v23 = [uniqueIdsOfVisibleButtons2 isEqual:uniqueIdsOfVisibleButtons3];

    if (!v23)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  results = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  results2 = [equalCopy uniqueIdentifiersOfVisibleCardSections];
  if ((results != 0) == (results2 == 0))
  {
LABEL_23:

    goto LABEL_24;
  }

  uniqueIdentifiersOfVisibleCardSections = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
  if (uniqueIdentifiersOfVisibleCardSections)
  {
    v25 = uniqueIdentifiersOfVisibleCardSections;
    uniqueIdentifiersOfVisibleCardSections2 = [(_CPVisibleResultsFeedback *)self uniqueIdentifiersOfVisibleCardSections];
    uniqueIdentifiersOfVisibleCardSections3 = [equalCopy uniqueIdentifiersOfVisibleCardSections];
    v28 = [uniqueIdentifiersOfVisibleCardSections2 isEqual:uniqueIdentifiersOfVisibleCardSections3];

    if (!v28)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  isFilterBarShown = self->_isFilterBarShown;
  if (isFilterBarShown == [equalCopy isFilterBarShown])
  {
    inputToResultShownMs = self->_inputToResultShownMs;
    v29 = inputToResultShownMs == [equalCopy inputToResultShownMs];
    goto LABEL_25;
  }

LABEL_24:
  v29 = 0;
LABEL_25:

  return v29;
}

- (void)writeTo:(id)to
{
  v37 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPVisibleResultsFeedback *)self timestamp])
  {
    PBDataWriterWriteUint64Field();
  }

  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_results;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v31;
    do
    {
      v9 = 0;
      do
      {
        if (*v31 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSArray *)v5 countByEnumeratingWithState:&v30 objects:v36 count:16];
    }

    while (v7);
  }

  if ([(_CPVisibleResultsFeedback *)self triggerEvent])
  {
    PBDataWriterWriteInt32Field();
  }

  goTakeoverResult = [(_CPVisibleResultsFeedback *)self goTakeoverResult];

  if (goTakeoverResult)
  {
    goTakeoverResult2 = [(_CPVisibleResultsFeedback *)self goTakeoverResult];
    PBDataWriterWriteSubmessage();
  }

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v12 = self->_uniqueIdsOfVisibleButtons;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v27;
    do
    {
      v16 = 0;
      do
      {
        if (*v27 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [*(*(&v26 + 1) + 8 * v16) unsignedLongLongValue];
        PBDataWriterWriteUint64Field();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v26 objects:v35 count:16];
    }

    while (v14);
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v17 = self->_uniqueIdentifiersOfVisibleCardSections;
  v18 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v23;
    do
    {
      v21 = 0;
      do
      {
        if (*v23 != v20)
        {
          objc_enumerationMutation(v17);
        }

        PBDataWriterWriteStringField();
        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSArray *)v17 countByEnumeratingWithState:&v22 objects:v34 count:16];
    }

    while (v19);
  }

  if ([(_CPVisibleResultsFeedback *)self isFilterBarShown])
  {
    PBDataWriterWriteBOOLField();
  }

  if ([(_CPVisibleResultsFeedback *)self inputToResultShownMs])
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)addUniqueIdentifiersOfVisibleCardSections:(id)sections
{
  sectionsCopy = sections;
  uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  v8 = sectionsCopy;
  if (!uniqueIdentifiersOfVisibleCardSections)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_uniqueIdentifiersOfVisibleCardSections;
    self->_uniqueIdentifiersOfVisibleCardSections = array;

    sectionsCopy = v8;
    uniqueIdentifiersOfVisibleCardSections = self->_uniqueIdentifiersOfVisibleCardSections;
  }

  [(NSArray *)uniqueIdentifiersOfVisibleCardSections addObject:sectionsCopy];
}

- (void)setUniqueIdentifiersOfVisibleCardSections:(id)sections
{
  self->_uniqueIdentifiersOfVisibleCardSections = [sections mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (unint64_t)uniqueIdsOfVisibleButtonsAtIndex:(unint64_t)index
{
  v3 = [(NSArray *)self->_uniqueIdsOfVisibleButtons objectAtIndexedSubscript:index];
  unsignedLongLongValue = [v3 unsignedLongLongValue];

  return unsignedLongLongValue;
}

- (void)addUniqueIdsOfVisibleButtons:(unint64_t)buttons
{
  uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  if (!uniqueIdsOfVisibleButtons)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_uniqueIdsOfVisibleButtons;
    self->_uniqueIdsOfVisibleButtons = array;

    uniqueIdsOfVisibleButtons = self->_uniqueIdsOfVisibleButtons;
  }

  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:buttons];
  [(NSArray *)uniqueIdsOfVisibleButtons addObject:v8];
}

- (void)setUniqueIdsOfVisibleButtons:(id)buttons
{
  self->_uniqueIdsOfVisibleButtons = [buttons mutableCopy];

  MEMORY[0x1EEE66BB8]();
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

- (_CPVisibleResultsFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPVisibleResultsFeedback;
  v2 = [(_CPVisibleResultsFeedback *)&v5 init];
  if (v2)
  {
    [(_CPVisibleResultsFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPVisibleResultsFeedback)initWithFacade:(id)facade
{
  v52 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v48.receiver = self;
  v48.super_class = _CPVisibleResultsFeedback;
  v5 = [(_CPVisibleResultsFeedback *)&v48 init];
  if (v5)
  {
    -[_CPVisibleResultsFeedback setTimestamp:](v5, "setTimestamp:", [facadeCopy timestamp]);
    results = [facadeCopy results];
    if (results)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v7 = 0;
    }

    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    results2 = [facadeCopy results];
    v9 = [results2 countByEnumeratingWithState:&v44 objects:v51 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v45;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v45 != v11)
          {
            objc_enumerationMutation(results2);
          }

          v13 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v44 + 1) + 8 * i)];
          [v7 addObject:v13];
        }

        v10 = [results2 countByEnumeratingWithState:&v44 objects:v51 count:16];
      }

      while (v10);
    }

    [(_CPVisibleResultsFeedback *)v5 setResults:v7];
    -[_CPVisibleResultsFeedback setTriggerEvent:](v5, "setTriggerEvent:", [facadeCopy triggerEvent]);
    goTakeoverResult = [facadeCopy goTakeoverResult];

    if (goTakeoverResult)
    {
      v15 = [_CPSearchResultForFeedback alloc];
      goTakeoverResult2 = [facadeCopy goTakeoverResult];
      v17 = [(_CPSearchResultForFeedback *)v15 initWithFacade:goTakeoverResult2];
      [(_CPVisibleResultsFeedback *)v5 setGoTakeoverResult:v17];
    }

    uniqueIdsOfVisibleButtons = [facadeCopy uniqueIdsOfVisibleButtons];
    if (uniqueIdsOfVisibleButtons)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    uniqueIdsOfVisibleButtons2 = [facadeCopy uniqueIdsOfVisibleButtons];
    v21 = [uniqueIdsOfVisibleButtons2 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v41;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v41 != v23)
          {
            objc_enumerationMutation(uniqueIdsOfVisibleButtons2);
          }

          if (*(*(&v40 + 1) + 8 * j))
          {
            [v19 addObject:?];
          }
        }

        v22 = [uniqueIdsOfVisibleButtons2 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v22);
    }

    [(_CPVisibleResultsFeedback *)v5 setUniqueIdsOfVisibleButtons:v19];
    uniqueIdentifiersOfVisibleCardSections = [facadeCopy uniqueIdentifiersOfVisibleCardSections];
    if (uniqueIdentifiersOfVisibleCardSections)
    {
      v26 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v26 = 0;
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    uniqueIdentifiersOfVisibleCardSections2 = [facadeCopy uniqueIdentifiersOfVisibleCardSections];
    v28 = [uniqueIdentifiersOfVisibleCardSections2 countByEnumeratingWithState:&v36 objects:v49 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v37;
      do
      {
        for (k = 0; k != v29; ++k)
        {
          if (*v37 != v30)
          {
            objc_enumerationMutation(uniqueIdentifiersOfVisibleCardSections2);
          }

          if (*(*(&v36 + 1) + 8 * k))
          {
            [v26 addObject:?];
          }
        }

        v29 = [uniqueIdentifiersOfVisibleCardSections2 countByEnumeratingWithState:&v36 objects:v49 count:16];
      }

      while (v29);
    }

    [(_CPVisibleResultsFeedback *)v5 setUniqueIdentifiersOfVisibleCardSections:v26];
    -[_CPVisibleResultsFeedback setIsFilterBarShown:](v5, "setIsFilterBarShown:", [facadeCopy isFilterBarShown]);
    inputToResultShownMs = [facadeCopy inputToResultShownMs];

    if (inputToResultShownMs)
    {
      inputToResultShownMs2 = [facadeCopy inputToResultShownMs];
      -[_CPVisibleResultsFeedback setInputToResultShownMs:](v5, "setInputToResultShownMs:", [inputToResultShownMs2 intValue]);
    }

    v34 = v5;
  }

  return v5;
}

@end