@interface FCCAlmostThereConfigurationProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCoalescingRules:(id)rules;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasGoalType:(BOOL)type;
- (void)setHasMinimumPercentageComplete:(BOOL)complete;
- (void)writeTo:(id)to;
@end

@implementation FCCAlmostThereConfigurationProtobuf

- (void)setHasMinimumPercentageComplete:(BOOL)complete
{
  if (complete)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (void)addCoalescingRules:(id)rules
{
  rulesCopy = rules;
  coalescingRules = self->_coalescingRules;
  v8 = rulesCopy;
  if (!coalescingRules)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_coalescingRules;
    self->_coalescingRules = v6;

    rulesCopy = v8;
    coalescingRules = self->_coalescingRules;
  }

  [(NSMutableArray *)coalescingRules addObject:rulesCopy];
}

- (void)setHasGoalType:(BOOL)type
{
  if (type)
  {
    v3 = 4;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFB | v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = FCCAlmostThereConfigurationProtobuf;
  v4 = [(FCCAlmostThereConfigurationProtobuf *)&v8 description];
  dictionaryRepresentation = [(FCCAlmostThereConfigurationProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    v7 = [MEMORY[0x277CCABB0] numberWithDouble:self->_minimumPercentageComplete];
    [v4 setObject:v7 forKey:@"minimumPercentageComplete"];

    has = self->_has;
  }

  if (has)
  {
    v8 = [MEMORY[0x277CCABB0] numberWithDouble:self->_goalBufferPercentage];
    [v4 setObject:v8 forKey:@"goalBufferPercentage"];
  }

  if ([(NSMutableArray *)self->_coalescingRules count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_coalescingRules, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_coalescingRules;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"coalescingRules"];
  }

  timeOfDayRule = self->_timeOfDayRule;
  if (timeOfDayRule)
  {
    dictionaryRepresentation2 = [(FCCTimeOfDayRuleProtobuf *)timeOfDayRule dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"timeOfDayRule"];
  }

  if ((*&self->_has & 4) != 0)
  {
    v18 = [MEMORY[0x277CCABB0] numberWithInt:self->_goalType];
    [v4 setObject:v18 forKey:@"goalType"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    PBDataWriterWriteDoubleField();
    has = self->_has;
  }

  if (has)
  {
    PBDataWriterWriteDoubleField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_coalescingRules;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
      }

      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (self->_timeOfDayRule)
  {
    PBDataWriterWriteSubmessage();
  }

  if ((*&self->_has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
    toCopy = v10;
  }

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(toCopy + 2) = *&self->_minimumPercentageComplete;
    *(toCopy + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(toCopy + 1) = *&self->_goalBufferPercentage;
    *(toCopy + 56) |= 1u;
  }

  if ([(FCCAlmostThereConfigurationProtobuf *)self coalescingRulesCount])
  {
    [v10 clearCoalescingRules];
    coalescingRulesCount = [(FCCAlmostThereConfigurationProtobuf *)self coalescingRulesCount];
    if (coalescingRulesCount)
    {
      v7 = coalescingRulesCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(FCCAlmostThereConfigurationProtobuf *)self coalescingRulesAtIndex:i];
        [v10 addCoalescingRules:v9];
      }
    }
  }

  if (self->_timeOfDayRule)
  {
    [v10 setTimeOfDayRule:?];
  }

  if ((*&self->_has & 4) != 0)
  {
    *(v10 + 8) = self->_goalType;
    *(v10 + 56) |= 4u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_identifier copyWithZone:zone];
  v7 = *(v5 + 40);
  *(v5 + 40) = v6;

  has = self->_has;
  if ((has & 2) != 0)
  {
    *(v5 + 16) = self->_minimumPercentageComplete;
    *(v5 + 56) |= 2u;
    has = self->_has;
  }

  if (has)
  {
    *(v5 + 8) = self->_goalBufferPercentage;
    *(v5 + 56) |= 1u;
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = self->_coalescingRules;
  v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v19;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v19 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [*(*(&v18 + 1) + 8 * i) copyWithZone:{zone, v18}];
        [v5 addCoalescingRules:v14];
      }

      v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v11);
  }

  v15 = [(FCCTimeOfDayRuleProtobuf *)self->_timeOfDayRule copyWithZone:zone];
  v16 = *(v5 + 48);
  *(v5 + 48) = v15;

  if ((*&self->_has & 4) != 0)
  {
    *(v5 + 32) = self->_goalType;
    *(v5 + 56) |= 4u;
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_22;
  }

  identifier = self->_identifier;
  if (identifier | *(equalCopy + 5))
  {
    if (![(NSString *)identifier isEqual:?])
    {
      goto LABEL_22;
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 56) & 2) == 0 || self->_minimumPercentageComplete != *(equalCopy + 2))
    {
      goto LABEL_22;
    }
  }

  else if ((*(equalCopy + 56) & 2) != 0)
  {
LABEL_22:
    v8 = 0;
    goto LABEL_23;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 56) & 1) == 0 || self->_goalBufferPercentage != *(equalCopy + 1))
    {
      goto LABEL_22;
    }
  }

  else if (*(equalCopy + 56))
  {
    goto LABEL_22;
  }

  coalescingRules = self->_coalescingRules;
  if (coalescingRules | *(equalCopy + 3) && ![(NSMutableArray *)coalescingRules isEqual:?])
  {
    goto LABEL_22;
  }

  timeOfDayRule = self->_timeOfDayRule;
  if (timeOfDayRule | *(equalCopy + 6))
  {
    if (![(FCCTimeOfDayRuleProtobuf *)timeOfDayRule isEqual:?])
    {
      goto LABEL_22;
    }
  }

  v8 = (*(equalCopy + 56) & 4) == 0;
  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 56) & 4) == 0 || self->_goalType != *(equalCopy + 8))
    {
      goto LABEL_22;
    }

    v8 = 1;
  }

LABEL_23:

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_identifier hash];
  if ((*&self->_has & 2) != 0)
  {
    minimumPercentageComplete = self->_minimumPercentageComplete;
    if (minimumPercentageComplete < 0.0)
    {
      minimumPercentageComplete = -minimumPercentageComplete;
    }

    *v4.i64 = floor(minimumPercentageComplete + 0.5);
    v8 = (minimumPercentageComplete - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v4 = vbslq_s8(vnegq_f64(v9), v5, v4);
    v6 = 2654435761u * *v4.i64;
    if (v8 >= 0.0)
    {
      if (v8 > 0.0)
      {
        v6 += v8;
      }
    }

    else
    {
      v6 -= fabs(v8);
    }
  }

  else
  {
    v6 = 0;
  }

  if (*&self->_has)
  {
    goalBufferPercentage = self->_goalBufferPercentage;
    if (goalBufferPercentage < 0.0)
    {
      goalBufferPercentage = -goalBufferPercentage;
    }

    *v4.i64 = floor(goalBufferPercentage + 0.5);
    v12 = (goalBufferPercentage - *v4.i64) * 1.84467441e19;
    *v5.i64 = *v4.i64 - trunc(*v4.i64 * 5.42101086e-20) * 1.84467441e19;
    v13.f64[0] = NAN;
    v13.f64[1] = NAN;
    v10 = 2654435761u * *vbslq_s8(vnegq_f64(v13), v5, v4).i64;
    if (v12 >= 0.0)
    {
      if (v12 > 0.0)
      {
        v10 += v12;
      }
    }

    else
    {
      v10 -= fabs(v12);
    }
  }

  else
  {
    v10 = 0;
  }

  v14 = [(NSMutableArray *)self->_coalescingRules hash];
  v15 = [(FCCTimeOfDayRuleProtobuf *)self->_timeOfDayRule hash];
  if ((*&self->_has & 4) != 0)
  {
    v16 = 2654435761 * self->_goalType;
  }

  else
  {
    v16 = 0;
  }

  return v6 ^ v3 ^ v10 ^ v14 ^ v15 ^ v16;
}

- (void)mergeFrom:(id)from
{
  v18 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(FCCAlmostThereConfigurationProtobuf *)self setIdentifier:?];
  }

  v5 = *(fromCopy + 56);
  if ((v5 & 2) != 0)
  {
    self->_minimumPercentageComplete = *(fromCopy + 2);
    *&self->_has |= 2u;
    v5 = *(fromCopy + 56);
  }

  if (v5)
  {
    self->_goalBufferPercentage = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = *(fromCopy + 3);
  v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(FCCAlmostThereConfigurationProtobuf *)self addCoalescingRules:*(*(&v13 + 1) + 8 * i), v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  timeOfDayRule = self->_timeOfDayRule;
  v12 = *(fromCopy + 6);
  if (timeOfDayRule)
  {
    if (v12)
    {
      [(FCCTimeOfDayRuleProtobuf *)timeOfDayRule mergeFrom:?];
    }
  }

  else if (v12)
  {
    [(FCCAlmostThereConfigurationProtobuf *)self setTimeOfDayRule:?];
  }

  if ((*(fromCopy + 56) & 4) != 0)
  {
    self->_goalType = *(fromCopy + 8);
    *&self->_has |= 4u;
  }
}

@end