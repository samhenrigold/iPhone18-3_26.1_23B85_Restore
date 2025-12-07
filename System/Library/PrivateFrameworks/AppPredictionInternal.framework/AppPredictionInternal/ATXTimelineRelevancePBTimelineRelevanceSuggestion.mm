@interface ATXTimelineRelevancePBTimelineRelevanceSuggestion
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAbuseControlOutcome:(id)outcome;
- (void)addTimelineRelevanceScoreEntry:(id)entry;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXTimelineRelevancePBTimelineRelevanceSuggestion

- (void)addAbuseControlOutcome:(id)outcome
{
  outcomeCopy = outcome;
  abuseControlOutcomes = self->_abuseControlOutcomes;
  v8 = outcomeCopy;
  if (!abuseControlOutcomes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_abuseControlOutcomes;
    self->_abuseControlOutcomes = v6;

    outcomeCopy = v8;
    abuseControlOutcomes = self->_abuseControlOutcomes;
  }

  [(NSMutableArray *)abuseControlOutcomes addObject:outcomeCopy];
}

- (void)addTimelineRelevanceScoreEntry:(id)entry
{
  entryCopy = entry;
  timelineRelevanceScoreEntrys = self->_timelineRelevanceScoreEntrys;
  v8 = entryCopy;
  if (!timelineRelevanceScoreEntrys)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_timelineRelevanceScoreEntrys;
    self->_timelineRelevanceScoreEntrys = v6;

    entryCopy = v8;
    timelineRelevanceScoreEntrys = self->_timelineRelevanceScoreEntrys;
  }

  [(NSMutableArray *)timelineRelevanceScoreEntrys addObject:entryCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXTimelineRelevancePBTimelineRelevanceSuggestion;
  v4 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)&v8 description];
  dictionaryRepresentation = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  suggestionID = self->_suggestionID;
  if (suggestionID)
  {
    [dictionary setObject:suggestionID forKey:@"suggestionID"];
  }

  if ([(NSMutableArray *)self->_abuseControlOutcomes count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_abuseControlOutcomes, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_abuseControlOutcomes;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"abuseControlOutcome"];
  }

  if ([(NSMutableArray *)self->_timelineRelevanceScoreEntrys count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_timelineRelevanceScoreEntrys, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_timelineRelevanceScoreEntrys;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"timelineRelevanceScoreEntry"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_suggestionID)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_abuseControlOutcomes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
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
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_timelineRelevanceScoreEntrys;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
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
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_suggestionID)
  {
    [toCopy setSuggestionID:?];
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self abuseControlOutcomesCount])
  {
    [toCopy clearAbuseControlOutcomes];
    abuseControlOutcomesCount = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self abuseControlOutcomesCount];
    if (abuseControlOutcomesCount)
    {
      v5 = abuseControlOutcomesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self abuseControlOutcomeAtIndex:i];
        [toCopy addAbuseControlOutcome:v7];
      }
    }
  }

  if ([(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self timelineRelevanceScoreEntrysCount])
  {
    [toCopy clearTimelineRelevanceScoreEntrys];
    timelineRelevanceScoreEntrysCount = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self timelineRelevanceScoreEntrysCount];
    if (timelineRelevanceScoreEntrysCount)
    {
      v9 = timelineRelevanceScoreEntrysCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self timelineRelevanceScoreEntryAtIndex:j];
        [toCopy addTimelineRelevanceScoreEntry:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_suggestionID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_abuseControlOutcomes;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addAbuseControlOutcome:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_timelineRelevanceScoreEntrys;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v22;
    do
    {
      v18 = 0;
      do
      {
        if (*v22 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v21 + 1) + 8 * v18) copyWithZone:{zone, v21}];
        [v5 addTimelineRelevanceScoreEntry:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((suggestionID = self->_suggestionID, !(suggestionID | equalCopy[2])) || -[NSString isEqual:](suggestionID, "isEqual:")) && ((abuseControlOutcomes = self->_abuseControlOutcomes, !(abuseControlOutcomes | equalCopy[1])) || -[NSMutableArray isEqual:](abuseControlOutcomes, "isEqual:")))
  {
    timelineRelevanceScoreEntrys = self->_timelineRelevanceScoreEntrys;
    if (timelineRelevanceScoreEntrys | equalCopy[3])
    {
      v8 = [(NSMutableArray *)timelineRelevanceScoreEntrys isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_suggestionID hash];
  v4 = [(NSMutableArray *)self->_abuseControlOutcomes hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_timelineRelevanceScoreEntrys hash];
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self setSuggestionID:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self addAbuseControlOutcome:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(ATXTimelineRelevancePBTimelineRelevanceSuggestion *)self addTimelineRelevanceScoreEntry:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end