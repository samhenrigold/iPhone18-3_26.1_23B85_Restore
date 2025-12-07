@interface DRSProtoDiagnosticRequestStats
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOutcomes:(id)outcomes;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation DRSProtoDiagnosticRequestStats

- (void)addOutcomes:(id)outcomes
{
  outcomesCopy = outcomes;
  outcomes = self->_outcomes;
  v8 = outcomesCopy;
  if (!outcomes)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_outcomes;
    self->_outcomes = v6;

    outcomesCopy = v8;
    outcomes = self->_outcomes;
  }

  [(NSMutableArray *)outcomes addObject:outcomesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = DRSProtoDiagnosticRequestStats;
  v4 = [(DRSProtoDiagnosticRequestStats *)&v8 description];
  dictionaryRepresentation = [(DRSProtoDiagnosticRequestStats *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  build = self->_build;
  if (build)
  {
    [dictionary setObject:build forKey:@"build"];
  }

  teamId = self->_teamId;
  if (teamId)
  {
    [v4 setObject:teamId forKey:@"team_id"];
  }

  issueCategory = self->_issueCategory;
  if (issueCategory)
  {
    [v4 setObject:issueCategory forKey:@"issue_category"];
  }

  issueDescription = self->_issueDescription;
  if (issueDescription)
  {
    [v4 setObject:issueDescription forKey:@"issue_description"];
  }

  if ([(NSMutableArray *)self->_outcomes count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_outcomes, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_outcomes;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v17 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"outcomes"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_build)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_teamId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issueCategory)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_issueDescription)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_outcomes;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_build)
  {
    [toCopy setBuild:?];
  }

  if (self->_teamId)
  {
    [toCopy setTeamId:?];
  }

  if (self->_issueCategory)
  {
    [toCopy setIssueCategory:?];
  }

  if (self->_issueDescription)
  {
    [toCopy setIssueDescription:?];
  }

  if ([(DRSProtoDiagnosticRequestStats *)self outcomesCount])
  {
    [toCopy clearOutcomes];
    outcomesCount = [(DRSProtoDiagnosticRequestStats *)self outcomesCount];
    if (outcomesCount)
    {
      v5 = outcomesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(DRSProtoDiagnosticRequestStats *)self outcomesAtIndex:i];
        [toCopy addOutcomes:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_build copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v8 = [(NSString *)self->_teamId copyWithZone:zone];
  v9 = v5[5];
  v5[5] = v8;

  v10 = [(NSString *)self->_issueCategory copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSString *)self->_issueDescription copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_outcomes;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
        [v5 addOutcomes:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((build = self->_build, !(build | equalCopy[1])) || -[NSString isEqual:](build, "isEqual:")) && ((teamId = self->_teamId, !(teamId | equalCopy[5])) || -[NSString isEqual:](teamId, "isEqual:")) && ((issueCategory = self->_issueCategory, !(issueCategory | equalCopy[2])) || -[NSString isEqual:](issueCategory, "isEqual:")) && ((issueDescription = self->_issueDescription, !(issueDescription | equalCopy[3])) || -[NSString isEqual:](issueDescription, "isEqual:")))
  {
    outcomes = self->_outcomes;
    if (outcomes | equalCopy[4])
    {
      v10 = [(NSMutableArray *)outcomes isEqual:?];
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_build hash];
  v4 = [(NSString *)self->_teamId hash]^ v3;
  v5 = [(NSString *)self->_issueCategory hash];
  v6 = v4 ^ v5 ^ [(NSString *)self->_issueDescription hash];
  return v6 ^ [(NSMutableArray *)self->_outcomes hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(DRSProtoDiagnosticRequestStats *)self setBuild:?];
  }

  if (*(fromCopy + 5))
  {
    [(DRSProtoDiagnosticRequestStats *)self setTeamId:?];
  }

  if (*(fromCopy + 2))
  {
    [(DRSProtoDiagnosticRequestStats *)self setIssueCategory:?];
  }

  if (*(fromCopy + 3))
  {
    [(DRSProtoDiagnosticRequestStats *)self setIssueDescription:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 4);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(DRSProtoDiagnosticRequestStats *)self addOutcomes:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end