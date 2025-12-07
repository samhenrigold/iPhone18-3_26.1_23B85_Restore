@interface PPM2FeedbackPortraitRegistered
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)domainAsString:(int)string;
- (id)feedbackDomainStatusAsString:(int)string;
- (id)typeAsString:(int)string;
- (int)StringAsDomain:(id)domain;
- (int)StringAsFeedbackDomainStatus:(id)status;
- (int)StringAsType:(id)type;
- (int)domain;
- (int)feedbackDomainStatus;
- (int)type;
- (unint64_t)hash;
- (void)addRecords:(id)records;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasFeedbackDomainStatus:(BOOL)status;
- (void)setHasType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation PPM2FeedbackPortraitRegistered

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(PPM2FeedbackPortraitRegistered *)self setClientId:?];
  }

  v5 = *(fromCopy + 52);
  if (v5)
  {
    self->_domain = *(fromCopy + 6);
    *&self->_has |= 1u;
    v5 = *(fromCopy + 52);
  }

  if ((v5 & 4) != 0)
  {
    self->_type = *(fromCopy + 12);
    *&self->_has |= 4u;
  }

  if (*(fromCopy + 4))
  {
    [(PPM2FeedbackPortraitRegistered *)self setMappingId:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(fromCopy + 5);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

        [(PPM2FeedbackPortraitRegistered *)self addRecords:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }

  if (*(fromCopy + 1))
  {
    [(PPM2FeedbackPortraitRegistered *)self setActiveTreatments:?];
  }

  if ((*(fromCopy + 52) & 2) != 0)
  {
    self->_feedbackDomainStatus = *(fromCopy + 7);
    *&self->_has |= 2u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_clientId hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_domain;
    if ((*&self->_has & 4) != 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v4 = 0;
    if ((*&self->_has & 4) != 0)
    {
LABEL_3:
      v5 = 2654435761 * self->_type;
      goto LABEL_6;
    }
  }

  v5 = 0;
LABEL_6:
  v6 = [(NSString *)self->_mappingId hash];
  v7 = [(NSMutableArray *)self->_records hash];
  v8 = [(NSString *)self->_activeTreatments hash];
  if ((*&self->_has & 2) != 0)
  {
    v9 = 2654435761 * self->_feedbackDomainStatus;
  }

  else
  {
    v9 = 0;
  }

  return v4 ^ v3 ^ v5 ^ v6 ^ v7 ^ v8 ^ v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_24;
  }

  clientId = self->_clientId;
  if (clientId | *(equalCopy + 2))
  {
    if (![(NSString *)clientId isEqual:?])
    {
      goto LABEL_24;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 52) & 1) == 0 || self->_domain != *(equalCopy + 6))
    {
      goto LABEL_24;
    }
  }

  else if (*(equalCopy + 52))
  {
LABEL_24:
    v9 = 0;
    goto LABEL_25;
  }

  if ((*&self->_has & 4) != 0)
  {
    if ((*(equalCopy + 52) & 4) == 0 || self->_type != *(equalCopy + 12))
    {
      goto LABEL_24;
    }
  }

  else if ((*(equalCopy + 52) & 4) != 0)
  {
    goto LABEL_24;
  }

  mappingId = self->_mappingId;
  if (mappingId | *(equalCopy + 4) && ![(NSString *)mappingId isEqual:?])
  {
    goto LABEL_24;
  }

  records = self->_records;
  if (records | *(equalCopy + 5))
  {
    if (![(NSMutableArray *)records isEqual:?])
    {
      goto LABEL_24;
    }
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments | *(equalCopy + 1))
  {
    if (![(NSString *)activeTreatments isEqual:?])
    {
      goto LABEL_24;
    }
  }

  v9 = (*(equalCopy + 52) & 2) == 0;
  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 52) & 2) == 0 || self->_feedbackDomainStatus != *(equalCopy + 7))
    {
      goto LABEL_24;
    }

    v9 = 1;
  }

LABEL_25:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v25 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_clientId copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  has = self->_has;
  if (has)
  {
    *(v5 + 24) = self->_domain;
    *(v5 + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(v5 + 48) = self->_type;
    *(v5 + 52) |= 4u;
  }

  v9 = [(NSString *)self->_mappingId copyWithZone:zone];
  v10 = *(v5 + 32);
  *(v5 + 32) = v9;

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v11 = self->_records;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v21;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v21 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v20 + 1) + 8 * i) copyWithZone:{zone, v20}];
        [v5 addRecords:v16];
      }

      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = [(NSString *)self->_activeTreatments copyWithZone:zone];
  v18 = *(v5 + 8);
  *(v5 + 8) = v17;

  if ((*&self->_has & 2) != 0)
  {
    *(v5 + 28) = self->_feedbackDomainStatus;
    *(v5 + 52) |= 2u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_clientId)
  {
    [toCopy setClientId:?];
    toCopy = v10;
  }

  has = self->_has;
  if (has)
  {
    *(toCopy + 6) = self->_domain;
    *(toCopy + 52) |= 1u;
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    *(toCopy + 12) = self->_type;
    *(toCopy + 52) |= 4u;
  }

  if (self->_mappingId)
  {
    [v10 setMappingId:?];
  }

  if ([(PPM2FeedbackPortraitRegistered *)self recordsCount])
  {
    [v10 clearRecords];
    recordsCount = [(PPM2FeedbackPortraitRegistered *)self recordsCount];
    if (recordsCount)
    {
      v7 = recordsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(PPM2FeedbackPortraitRegistered *)self recordsAtIndex:i];
        [v10 addRecords:v9];
      }
    }
  }

  if (self->_activeTreatments)
  {
    [v10 setActiveTreatments:?];
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v10 + 7) = self->_feedbackDomainStatus;
    *(v10 + 52) |= 2u;
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_clientId)
  {
    PBDataWriterWriteStringField();
  }

  has = self->_has;
  if (has)
  {
    PBDataWriterWriteInt32Field();
    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_mappingId)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_records;
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

  if (self->_activeTreatments)
  {
    PBDataWriterWriteStringField();
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (id)dictionaryRepresentation
{
  v28 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  clientId = self->_clientId;
  if (clientId)
  {
    [dictionary setObject:clientId forKey:@"clientId"];
  }

  has = self->_has;
  if (has)
  {
    domain = self->_domain;
    if (domain >= 8)
    {
      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_domain];
    }

    else
    {
      v8 = off_278971818[domain];
    }

    [v4 setObject:v8 forKey:@"domain"];

    has = self->_has;
  }

  if ((has & 4) != 0)
  {
    type = self->_type;
    if (type >= 6)
    {
      v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_type];
    }

    else
    {
      v10 = off_278971858[type];
    }

    [v4 setObject:v10 forKey:@"type"];
  }

  mappingId = self->_mappingId;
  if (mappingId)
  {
    [v4 setObject:mappingId forKey:@"mappingId"];
  }

  if ([(NSMutableArray *)self->_records count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v13 = self->_records;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v24 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation = [*(*(&v23 + 1) + 8 * i) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v23 objects:v27 count:16];
      }

      while (v15);
    }

    [v4 setObject:v12 forKey:@"records"];
  }

  activeTreatments = self->_activeTreatments;
  if (activeTreatments)
  {
    [v4 setObject:activeTreatments forKey:@"activeTreatments"];
  }

  if ((*&self->_has & 2) != 0)
  {
    feedbackDomainStatus = self->_feedbackDomainStatus;
    if (feedbackDomainStatus >= 6)
    {
      v21 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_feedbackDomainStatus];
    }

    else
    {
      v21 = off_278971888[feedbackDomainStatus];
    }

    [v4 setObject:v21 forKey:@"feedbackDomainStatus"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPM2FeedbackPortraitRegistered;
  v4 = [(PPM2FeedbackPortraitRegistered *)&v8 description];
  dictionaryRepresentation = [(PPM2FeedbackPortraitRegistered *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsFeedbackDomainStatus:(id)status
{
  statusCopy = status;
  if ([statusCopy isEqualToString:@"NotInDomain"])
  {
    v4 = 0;
  }

  else if ([statusCopy isEqualToString:@"InDomainOnly"])
  {
    v4 = 1;
  }

  else if ([statusCopy isEqualToString:@"InUserPortrait"])
  {
    v4 = 2;
  }

  else if ([statusCopy isEqualToString:@"MappedIdentifierNotInDomain"])
  {
    v4 = 3;
  }

  else if ([statusCopy isEqualToString:@"MappedIdentifierInDomainOnly"])
  {
    v4 = 4;
  }

  else if ([statusCopy isEqualToString:@"MappedIdentifierInUserPortrait"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)feedbackDomainStatusAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278971888[string];
  }

  return v4;
}

- (void)setHasFeedbackDomainStatus:(BOOL)status
{
  if (status)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (int)feedbackDomainStatus
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_feedbackDomainStatus;
  }

  else
  {
    return 0;
  }
}

- (void)addRecords:(id)records
{
  recordsCopy = records;
  records = self->_records;
  v8 = recordsCopy;
  if (!records)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_records;
    self->_records = v6;

    recordsCopy = v8;
    records = self->_records;
  }

  [(NSMutableArray *)records addObject:recordsCopy];
}

- (int)StringAsType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"Invalid"])
  {
    v4 = 0;
  }

  else if ([typeCopy isEqualToString:@"EngagedExplicit"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"EngagedImplicit"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"RejectedExplicit"])
  {
    v4 = 3;
  }

  else if ([typeCopy isEqualToString:@"RejectedImplicit"])
  {
    v4 = 4;
  }

  else if ([typeCopy isEqualToString:@"Offered"])
  {
    v4 = 5;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)typeAsString:(int)string
{
  if (string >= 6)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278971858[string];
  }

  return v4;
}

- (void)setHasType:(BOOL)type
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

- (int)type
{
  if ((*&self->_has & 4) != 0)
  {
    return self->_type;
  }

  else
  {
    return 0;
  }
}

- (int)StringAsDomain:(id)domain
{
  domainCopy = domain;
  if ([domainCopy isEqualToString:@"Topics"])
  {
    v4 = 0;
  }

  else if ([domainCopy isEqualToString:@"NamedEntities"])
  {
    v4 = 1;
  }

  else if ([domainCopy isEqualToString:@"Locations"])
  {
    v4 = 2;
  }

  else if ([domainCopy isEqualToString:@"Events"])
  {
    v4 = 3;
  }

  else if ([domainCopy isEqualToString:@"ContactsDomain"])
  {
    v4 = 4;
  }

  else if ([domainCopy isEqualToString:@"Connections"])
  {
    v4 = 5;
  }

  else if ([domainCopy isEqualToString:@"QuickTypeBroker"])
  {
    v4 = 6;
  }

  else if ([domainCopy isEqualToString:@"UniversalSearchSpotlightTopics"])
  {
    v4 = 7;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)domainAsString:(int)string
{
  if (string >= 8)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_278971818[string];
  }

  return v4;
}

- (int)domain
{
  if (*&self->_has)
  {
    return self->_domain;
  }

  else
  {
    return 0;
  }
}

+ (id)options
{
  if (options_once != -1)
  {
    dispatch_once(&options_once, &__block_literal_global_621);
  }

  v3 = options_sOptions;

  return v3;
}

void __41__PPM2FeedbackPortraitRegistered_options__block_invoke()
{
  v0 = options_sOptions;
  options_sOptions = &unk_284785E38;
}

@end