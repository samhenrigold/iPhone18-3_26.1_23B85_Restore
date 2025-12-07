@interface AWDCoreRoutineMagicalMomentsExperts
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExperts:(id)experts;
- (void)addSuggestions:(id)suggestions;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasDurationSinceLastSuccessfulTraining:(BOOL)training;
- (void)setHasTrainingTime:(BOOL)time;
- (void)writeTo:(id)to;
@end

@implementation AWDCoreRoutineMagicalMomentsExperts

- (void)dealloc
{
  [(AWDCoreRoutineMagicalMomentsExperts *)self setExperts:0];
  [(AWDCoreRoutineMagicalMomentsExperts *)self setSuggestions:0];
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsExperts;
  [(AWDCoreRoutineMagicalMomentsExperts *)&v3 dealloc];
}

- (void)setHasDurationSinceLastSuccessfulTraining:(BOOL)training
{
  if (training)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)setHasTrainingTime:(BOOL)time
{
  if (time)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (void)addExperts:(id)experts
{
  experts = self->_experts;
  if (!experts)
  {
    experts = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_experts = experts;
  }

  [(NSMutableArray *)experts addObject:experts];
}

- (void)addSuggestions:(id)suggestions
{
  suggestions = self->_suggestions;
  if (!suggestions)
  {
    suggestions = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_suggestions = suggestions;
  }

  [(NSMutableArray *)suggestions addObject:suggestions];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDCoreRoutineMagicalMomentsExperts;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDCoreRoutineMagicalMomentsExperts description](&v3, sel_description), -[AWDCoreRoutineMagicalMomentsExperts dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  has = self->_has;
  if (has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_durationSinceLastSuccessfulTraining), @"durationSinceLastSuccessfulTraining"}];
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithInt:", self->_trainingTime), @"trainingTime"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_experts count])
  {
    v5 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_experts, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    experts = self->_experts;
    v7 = [(NSMutableArray *)experts countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(experts);
          }

          [v5 addObject:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v8 = [(NSMutableArray *)experts countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }

    [dictionary setObject:v5 forKey:@"experts"];
  }

  if ([(NSMutableArray *)self->_suggestions count])
  {
    v11 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_suggestions, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    suggestions = self->_suggestions;
    v13 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v18 objects:v26 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(suggestions);
          }

          [v11 addObject:{objc_msgSend(*(*(&v18 + 1) + 8 * j), "dictionaryRepresentation")}];
        }

        v14 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v18 objects:v26 count:16];
      }

      while (v14);
    }

    [dictionary setObject:v11 forKey:@"suggestions"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x29EDCA608];
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  PBDataWriterWriteInt32Field();
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    PBDataWriterWriteInt32Field();
  }

LABEL_5:
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  experts = self->_experts;
  v6 = [(NSMutableArray *)experts countByEnumeratingWithState:&v19 objects:v24 count:16];
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
          objc_enumerationMutation(experts);
        }

        PBDataWriterWriteSubmessage();
      }

      v7 = [(NSMutableArray *)experts countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  suggestions = self->_suggestions;
  v11 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v15 objects:v23 count:16];
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
          objc_enumerationMutation(suggestions);
        }

        PBDataWriterWriteSubmessage();
      }

      v12 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  has = self->_has;
  if ((has & 1) == 0)
  {
    if ((*&self->_has & 2) == 0)
    {
      goto LABEL_3;
    }

LABEL_15:
    *(to + 4) = self->_durationSinceLastSuccessfulTraining;
    *(to + 44) |= 2u;
    if ((*&self->_has & 4) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  *(to + 1) = self->_timestamp;
  *(to + 44) |= 1u;
  has = self->_has;
  if ((has & 2) != 0)
  {
    goto LABEL_15;
  }

LABEL_3:
  if ((has & 4) != 0)
  {
LABEL_4:
    *(to + 10) = self->_trainingTime;
    *(to + 44) |= 4u;
  }

LABEL_5:
  if ([(AWDCoreRoutineMagicalMomentsExperts *)self expertsCount])
  {
    [to clearExperts];
    expertsCount = [(AWDCoreRoutineMagicalMomentsExperts *)self expertsCount];
    if (expertsCount)
    {
      v7 = expertsCount;
      for (i = 0; i != v7; ++i)
      {
        [to addExperts:{-[AWDCoreRoutineMagicalMomentsExperts expertsAtIndex:](self, "expertsAtIndex:", i)}];
      }
    }
  }

  if ([(AWDCoreRoutineMagicalMomentsExperts *)self suggestionsCount])
  {
    [to clearSuggestions];
    suggestionsCount = [(AWDCoreRoutineMagicalMomentsExperts *)self suggestionsCount];
    if (suggestionsCount)
    {
      v10 = suggestionsCount;
      for (j = 0; j != v10; ++j)
      {
        [to addSuggestions:{-[AWDCoreRoutineMagicalMomentsExperts suggestionsAtIndex:](self, "suggestionsAtIndex:", j)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 44) |= 1u;
    has = self->_has;
    if ((has & 2) == 0)
    {
LABEL_3:
      if ((has & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*&self->_has & 2) == 0)
  {
    goto LABEL_3;
  }

  *(v5 + 16) = self->_durationSinceLastSuccessfulTraining;
  *(v5 + 44) |= 2u;
  if ((*&self->_has & 4) != 0)
  {
LABEL_4:
    *(v5 + 40) = self->_trainingTime;
    *(v5 + 44) |= 4u;
  }

LABEL_5:
  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  experts = self->_experts;
  v9 = [(NSMutableArray *)experts countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(experts);
        }

        v13 = [*(*(&v25 + 1) + 8 * i) copyWithZone:zone];
        [v6 addExperts:v13];
      }

      v10 = [(NSMutableArray *)experts countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  suggestions = self->_suggestions;
  v15 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v21 objects:v29 count:16];
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
          objc_enumerationMutation(suggestions);
        }

        v19 = [*(*(&v21 + 1) + 8 * j) copyWithZone:zone];
        [v6 addSuggestions:v19];
      }

      v16 = [(NSMutableArray *)suggestions countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    if (*&self->_has)
    {
      if ((*(equal + 44) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_21;
      }
    }

    else if (*(equal + 44))
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    if ((*&self->_has & 2) != 0)
    {
      if ((*(equal + 44) & 2) == 0 || self->_durationSinceLastSuccessfulTraining != *(equal + 4))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 44) & 2) != 0)
    {
      goto LABEL_21;
    }

    if ((*&self->_has & 4) != 0)
    {
      if ((*(equal + 44) & 4) == 0 || self->_trainingTime != *(equal + 10))
      {
        goto LABEL_21;
      }
    }

    else if ((*(equal + 44) & 4) != 0)
    {
      goto LABEL_21;
    }

    experts = self->_experts;
    if (!(experts | *(equal + 3)) || (v5 = [(NSMutableArray *)experts isEqual:?]) != 0)
    {
      suggestions = self->_suggestions;
      if (suggestions | *(equal + 4))
      {

        LOBYTE(v5) = [(NSMutableArray *)suggestions isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if ((*&self->_has & 1) == 0)
  {
    v3 = 0;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_6:
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_4;
    }

LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v3 = 2654435761u * self->_timestamp;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v4 = 2654435761 * self->_durationSinceLastSuccessfulTraining;
  if ((*&self->_has & 4) == 0)
  {
    goto LABEL_7;
  }

LABEL_4:
  v5 = 2654435761 * self->_trainingTime;
LABEL_8:
  v6 = v4 ^ v3 ^ v5 ^ [(NSMutableArray *)self->_experts hash];
  return v6 ^ [(NSMutableArray *)self->_suggestions hash];
}

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x29EDCA608];
  v5 = *(from + 44);
  if (v5)
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
    v5 = *(from + 44);
    if ((v5 & 2) == 0)
    {
LABEL_3:
      if ((v5 & 4) == 0)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  else if ((*(from + 44) & 2) == 0)
  {
    goto LABEL_3;
  }

  self->_durationSinceLastSuccessfulTraining = *(from + 4);
  *&self->_has |= 2u;
  if ((*(from + 44) & 4) != 0)
  {
LABEL_4:
    self->_trainingTime = *(from + 10);
    *&self->_has |= 4u;
  }

LABEL_5:
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(from + 3);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(AWDCoreRoutineMagicalMomentsExperts *)self addExperts:*(*(&v20 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(from + 4);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(AWDCoreRoutineMagicalMomentsExperts *)self addSuggestions:*(*(&v16 + 1) + 8 * j)];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

@end