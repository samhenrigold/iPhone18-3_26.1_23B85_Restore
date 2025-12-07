@interface BMPBParsecSearchEngagementEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEntities:(id)entities;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BMPBParsecSearchEngagementEvent

- (void)addEntities:(id)entities
{
  entitiesCopy = entities;
  entities = self->_entities;
  v8 = entitiesCopy;
  if (!entities)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_entities;
    self->_entities = v6;

    entitiesCopy = v8;
    entities = self->_entities;
  }

  [(NSMutableArray *)entities addObject:entitiesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = BMPBParsecSearchEngagementEvent;
  v4 = [(BMPBParsecSearchEngagementEvent *)&v8 description];
  dictionaryRepresentation = [(BMPBParsecSearchEngagementEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v26 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  resultId = self->_resultId;
  if (resultId)
  {
    [dictionary setObject:resultId forKey:@"resultId"];
  }

  domainId = self->_domainId;
  if (domainId)
  {
    [v4 setObject:domainId forKey:@"domainId"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithDouble:self->_absoluteTimestamp];
    [v4 setObject:v7 forKey:@"absoluteTimestamp"];
  }

  userInput = self->_userInput;
  if (userInput)
  {
    [v4 setObject:userInput forKey:@"userInput"];
  }

  completedQuery = self->_completedQuery;
  if (completedQuery)
  {
    [v4 setObject:completedQuery forKey:@"completedQuery"];
  }

  if ([(NSMutableArray *)self->_entities count])
  {
    v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_entities, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v11 = self->_entities;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v21 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"entities"];
  }

  uniqueId = self->_uniqueId;
  if (uniqueId)
  {
    [v4 setObject:uniqueId forKey:@"uniqueId"];
  }

  contentProtection = self->_contentProtection;
  if (contentProtection)
  {
    [v4 setObject:contentProtection forKey:@"contentProtection"];
  }

  personaId = self->_personaId;
  if (personaId)
  {
    [v4 setObject:personaId forKey:@"personaId"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_resultId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_domainId)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteDoubleField();
  }

  if (self->_userInput)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_completedQuery)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_entities;
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

  if (self->_uniqueId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentProtection)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_personaId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_resultId)
  {
    [toCopy setResultId:?];
    toCopy = v10;
  }

  if (self->_domainId)
  {
    [v10 setDomainId:?];
    toCopy = v10;
  }

  if (*&self->_has)
  {
    *(toCopy + 1) = *&self->_absoluteTimestamp;
    *(toCopy + 80) |= 1u;
  }

  if (self->_userInput)
  {
    [v10 setUserInput:?];
  }

  if (self->_completedQuery)
  {
    [v10 setCompletedQuery:?];
  }

  if ([(BMPBParsecSearchEngagementEvent *)self entitiesCount])
  {
    [v10 clearEntities];
    entitiesCount = [(BMPBParsecSearchEngagementEvent *)self entitiesCount];
    if (entitiesCount)
    {
      v6 = entitiesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(BMPBParsecSearchEngagementEvent *)self entitiesAtIndex:i];
        [v10 addEntities:v8];
      }
    }
  }

  if (self->_uniqueId)
  {
    [v10 setUniqueId:?];
  }

  v9 = v10;
  if (self->_contentProtection)
  {
    [v10 setContentProtection:?];
    v9 = v10;
  }

  if (self->_personaId)
  {
    [v10 setPersonaId:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_resultId copyWithZone:zone];
  v7 = *(v5 + 56);
  *(v5 + 56) = v6;

  v8 = [(NSString *)self->_domainId copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_absoluteTimestamp;
    *(v5 + 80) |= 1u;
  }

  v10 = [(NSString *)self->_userInput copyWithZone:zone];
  v11 = *(v5 + 72);
  *(v5 + 72) = v10;

  v12 = [(NSString *)self->_completedQuery copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v14 = self->_entities;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v28;
    do
    {
      v18 = 0;
      do
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v27 + 1) + 8 * v18) copyWithZone:{zone, v27}];
        [v5 addEntities:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v27 objects:v31 count:16];
    }

    while (v16);
  }

  v20 = [(NSString *)self->_uniqueId copyWithZone:zone];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v22 = [(NSString *)self->_contentProtection copyWithZone:zone];
  v23 = *(v5 + 24);
  *(v5 + 24) = v22;

  v24 = [(NSString *)self->_personaId copyWithZone:zone];
  v25 = *(v5 + 48);
  *(v5 + 48) = v24;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  resultId = self->_resultId;
  if (resultId | *(equalCopy + 7))
  {
    if (![(NSString *)resultId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  domainId = self->_domainId;
  if (domainId | *(equalCopy + 4))
  {
    if (![(NSString *)domainId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 80) & 1) == 0 || self->_absoluteTimestamp != *(equalCopy + 1))
    {
      goto LABEL_23;
    }
  }

  else if (*(equalCopy + 80))
  {
LABEL_23:
    v13 = 0;
    goto LABEL_24;
  }

  userInput = self->_userInput;
  if (userInput | *(equalCopy + 9) && ![(NSString *)userInput isEqual:?])
  {
    goto LABEL_23;
  }

  completedQuery = self->_completedQuery;
  if (completedQuery | *(equalCopy + 2))
  {
    if (![(NSString *)completedQuery isEqual:?])
    {
      goto LABEL_23;
    }
  }

  entities = self->_entities;
  if (entities | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)entities isEqual:?])
    {
      goto LABEL_23;
    }
  }

  uniqueId = self->_uniqueId;
  if (uniqueId | *(equalCopy + 8))
  {
    if (![(NSString *)uniqueId isEqual:?])
    {
      goto LABEL_23;
    }
  }

  contentProtection = self->_contentProtection;
  if (contentProtection | *(equalCopy + 3))
  {
    if (![(NSString *)contentProtection isEqual:?])
    {
      goto LABEL_23;
    }
  }

  personaId = self->_personaId;
  if (personaId | *(equalCopy + 6))
  {
    v13 = [(NSString *)personaId isEqual:?];
  }

  else
  {
    v13 = 1;
  }

LABEL_24:

  return v13;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_resultId hash];
  v4 = [(NSString *)self->_domainId hash];
  if (*&self->_has)
  {
    absoluteTimestamp = self->_absoluteTimestamp;
    if (absoluteTimestamp < 0.0)
    {
      absoluteTimestamp = -absoluteTimestamp;
    }

    *v5.i64 = floor(absoluteTimestamp + 0.5);
    v9 = (absoluteTimestamp - *v5.i64) * 1.84467441e19;
    *v6.i64 = *v5.i64 - trunc(*v5.i64 * 5.42101086e-20) * 1.84467441e19;
    v10.f64[0] = NAN;
    v10.f64[1] = NAN;
    v7 = 2654435761u * *vbslq_s8(vnegq_f64(v10), v6, v5).i64;
    if (v9 >= 0.0)
    {
      if (v9 > 0.0)
      {
        v7 += v9;
      }
    }

    else
    {
      v7 -= fabs(v9);
    }
  }

  else
  {
    v7 = 0;
  }

  v11 = v4 ^ v3 ^ v7 ^ [(NSString *)self->_userInput hash];
  v12 = [(NSString *)self->_completedQuery hash];
  v13 = v12 ^ [(NSMutableArray *)self->_entities hash];
  v14 = v11 ^ v13 ^ [(NSString *)self->_uniqueId hash];
  v15 = [(NSString *)self->_contentProtection hash];
  return v14 ^ v15 ^ [(NSString *)self->_personaId hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 7))
  {
    [(BMPBParsecSearchEngagementEvent *)self setResultId:?];
  }

  if (*(fromCopy + 4))
  {
    [(BMPBParsecSearchEngagementEvent *)self setDomainId:?];
  }

  if (*(fromCopy + 80))
  {
    self->_absoluteTimestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 9))
  {
    [(BMPBParsecSearchEngagementEvent *)self setUserInput:?];
  }

  if (*(fromCopy + 2))
  {
    [(BMPBParsecSearchEngagementEvent *)self setCompletedQuery:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 5);
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

        [(BMPBParsecSearchEngagementEvent *)self addEntities:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 8))
  {
    [(BMPBParsecSearchEngagementEvent *)self setUniqueId:?];
  }

  if (*(fromCopy + 3))
  {
    [(BMPBParsecSearchEngagementEvent *)self setContentProtection:?];
  }

  if (*(fromCopy + 6))
  {
    [(BMPBParsecSearchEngagementEvent *)self setPersonaId:?];
  }
}

@end