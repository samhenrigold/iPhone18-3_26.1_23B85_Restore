@interface _CPResultRankingFeedback
- (BOOL)isEqual:(id)equal;
- (_CPResultRankingFeedback)init;
- (_CPResultRankingFeedback)initWithFacade:(id)facade;
- (unint64_t)hash;
- (void)addDuplicateResults:(id)results;
- (void)addHiddenResults:(id)results;
- (void)setDuplicateResults:(id)results;
- (void)setHiddenResults:(id)results;
- (void)writeTo:(id)to;
@end

@implementation _CPResultRankingFeedback

- (unint64_t)hash
{
  v3 = 2654435761u * self->_timestamp;
  v4 = [(_CPSearchResultForFeedback *)self->_result hash];
  v5 = v4 ^ [(NSArray *)self->_hiddenResults hash];
  v6 = [(NSArray *)self->_duplicateResults hash];
  personalizationScore = self->_personalizationScore;
  if (personalizationScore < 0.0)
  {
    personalizationScore = -personalizationScore;
  }

  *v7.i64 = round(personalizationScore);
  *v8.i64 = *v7.i64 - trunc(*v7.i64 * 5.42101086e-20) * 1.84467441e19;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  return v5 ^ v6 ^ (2654435761 * self->_localResultPosition) ^ v3 ^ ((*vbslq_s8(vnegq_f64(v10), v8, v7).i64 * 2654435760.0) + vcvtd_n_u64_f64(personalizationScore - *v7.i64, 0x40uLL));
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  timestamp = self->_timestamp;
  if (timestamp != [equalCopy timestamp])
  {
    goto LABEL_18;
  }

  result = [(_CPResultRankingFeedback *)self result];
  result2 = [equalCopy result];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_17;
  }

  result3 = [(_CPResultRankingFeedback *)self result];
  if (result3)
  {
    v9 = result3;
    result4 = [(_CPResultRankingFeedback *)self result];
    result5 = [equalCopy result];
    v12 = [result4 isEqual:result5];

    if (!v12)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  result = [(_CPResultRankingFeedback *)self hiddenResults];
  result2 = [equalCopy hiddenResults];
  if ((result != 0) == (result2 == 0))
  {
    goto LABEL_17;
  }

  hiddenResults = [(_CPResultRankingFeedback *)self hiddenResults];
  if (hiddenResults)
  {
    v14 = hiddenResults;
    hiddenResults2 = [(_CPResultRankingFeedback *)self hiddenResults];
    hiddenResults3 = [equalCopy hiddenResults];
    v17 = [hiddenResults2 isEqual:hiddenResults3];

    if (!v17)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  result = [(_CPResultRankingFeedback *)self duplicateResults];
  result2 = [equalCopy duplicateResults];
  if ((result != 0) == (result2 == 0))
  {
LABEL_17:

    goto LABEL_18;
  }

  duplicateResults = [(_CPResultRankingFeedback *)self duplicateResults];
  if (duplicateResults)
  {
    v19 = duplicateResults;
    duplicateResults2 = [(_CPResultRankingFeedback *)self duplicateResults];
    duplicateResults3 = [equalCopy duplicateResults];
    v22 = [duplicateResults2 isEqual:duplicateResults3];

    if (!v22)
    {
      goto LABEL_18;
    }
  }

  else
  {
  }

  localResultPosition = self->_localResultPosition;
  if (localResultPosition == [equalCopy localResultPosition])
  {
    personalizationScore = self->_personalizationScore;
    [equalCopy personalizationScore];
    v23 = personalizationScore == v27;
    goto LABEL_19;
  }

LABEL_18:
  v23 = 0;
LABEL_19:

  return v23;
}

- (void)writeTo:(id)to
{
  v28 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if ([(_CPResultRankingFeedback *)self timestamp])
  {
    PBDataWriterWriteUint64Field();
  }

  result = [(_CPResultRankingFeedback *)self result];

  if (result)
  {
    result2 = [(_CPResultRankingFeedback *)self result];
    PBDataWriterWriteSubmessage();
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v7 = self->_hiddenResults;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      v11 = 0;
      do
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        PBDataWriterWriteSubmessage();
        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSArray *)v7 countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v9);
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v12 = self->_duplicateResults;
  v13 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v19;
    do
    {
      v16 = 0;
      do
      {
        if (*v19 != v15)
        {
          objc_enumerationMutation(v12);
        }

        PBDataWriterWriteSubmessage();
        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSArray *)v12 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v14);
  }

  if ([(_CPResultRankingFeedback *)self localResultPosition])
  {
    PBDataWriterWriteUint32Field();
  }

  [(_CPResultRankingFeedback *)self personalizationScore];
  if (v17 != 0.0)
  {
    PBDataWriterWriteDoubleField();
  }
}

- (void)addDuplicateResults:(id)results
{
  resultsCopy = results;
  duplicateResults = self->_duplicateResults;
  v8 = resultsCopy;
  if (!duplicateResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_duplicateResults;
    self->_duplicateResults = array;

    resultsCopy = v8;
    duplicateResults = self->_duplicateResults;
  }

  [(NSArray *)duplicateResults addObject:resultsCopy];
}

- (void)setDuplicateResults:(id)results
{
  self->_duplicateResults = [results mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (void)addHiddenResults:(id)results
{
  resultsCopy = results;
  hiddenResults = self->_hiddenResults;
  v8 = resultsCopy;
  if (!hiddenResults)
  {
    array = [MEMORY[0x1E695DF70] array];
    v7 = self->_hiddenResults;
    self->_hiddenResults = array;

    resultsCopy = v8;
    hiddenResults = self->_hiddenResults;
  }

  [(NSArray *)hiddenResults addObject:resultsCopy];
}

- (void)setHiddenResults:(id)results
{
  self->_hiddenResults = [results mutableCopy];

  MEMORY[0x1EEE66BB8]();
}

- (_CPResultRankingFeedback)init
{
  v5.receiver = self;
  v5.super_class = _CPResultRankingFeedback;
  v2 = [(_CPResultRankingFeedback *)&v5 init];
  if (v2)
  {
    [(_CPResultRankingFeedback *)v2 setTimestamp:mach_absolute_time()];
    v3 = v2;
  }

  return v2;
}

- (_CPResultRankingFeedback)initWithFacade:(id)facade
{
  v39 = *MEMORY[0x1E69E9840];
  facadeCopy = facade;
  v36.receiver = self;
  v36.super_class = _CPResultRankingFeedback;
  v5 = [(_CPResultRankingFeedback *)&v36 init];
  if (v5)
  {
    result = [facadeCopy result];

    if (result)
    {
      v7 = [_CPSearchResultForFeedback alloc];
      result2 = [facadeCopy result];
      v9 = [(_CPSearchResultForFeedback *)v7 initWithFacade:result2];
      [(_CPResultRankingFeedback *)v5 setResult:v9];
    }

    hiddenResults = [facadeCopy hiddenResults];
    if (hiddenResults)
    {
      v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v11 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    hiddenResults2 = [facadeCopy hiddenResults];
    v13 = [hiddenResults2 countByEnumeratingWithState:&v32 objects:v38 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v33;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v33 != v15)
          {
            objc_enumerationMutation(hiddenResults2);
          }

          v17 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v32 + 1) + 8 * i)];
          [v11 addObject:v17];
        }

        v14 = [hiddenResults2 countByEnumeratingWithState:&v32 objects:v38 count:16];
      }

      while (v14);
    }

    [(_CPResultRankingFeedback *)v5 setHiddenResults:v11];
    duplicateResults = [facadeCopy duplicateResults];
    if (duplicateResults)
    {
      v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    }

    else
    {
      v19 = 0;
    }

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    duplicateResults2 = [facadeCopy duplicateResults];
    v21 = [duplicateResults2 countByEnumeratingWithState:&v28 objects:v37 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v29;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v29 != v23)
          {
            objc_enumerationMutation(duplicateResults2);
          }

          v25 = [[_CPSearchResultForFeedback alloc] initWithFacade:*(*(&v28 + 1) + 8 * j)];
          [v19 addObject:v25];
        }

        v22 = [duplicateResults2 countByEnumeratingWithState:&v28 objects:v37 count:16];
      }

      while (v22);
    }

    [(_CPResultRankingFeedback *)v5 setDuplicateResults:v19];
    -[_CPResultRankingFeedback setLocalResultPosition:](v5, "setLocalResultPosition:", [facadeCopy localResultPosition]);
    [facadeCopy personalizationScore];
    [(_CPResultRankingFeedback *)v5 setPersonalizationScore:?];
    v26 = v5;
  }

  return v5;
}

@end