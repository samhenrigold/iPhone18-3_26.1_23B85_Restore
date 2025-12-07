@interface AWDSymptomsNetworkTCPFlowThroughputEstimator
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)networkTypeAsString:(int)string;
- (int)StringAsNetworkType:(id)type;
- (int)networkType;
- (unint64_t)hash;
- (void)addFlowThroughputEvent:(id)event;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasNetworkType:(BOOL)type;
- (void)writeTo:(id)to;
@end

@implementation AWDSymptomsNetworkTCPFlowThroughputEstimator

- (int)networkType
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_networkType;
  }

  else
  {
    return 1;
  }
}

- (void)setHasNetworkType:(BOOL)type
{
  if (type)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)networkTypeAsString:(int)string
{
  if ((string - 1) >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = *(&off_27898F0E8 + (string - 1));
  }

  return v4;
}

- (int)StringAsNetworkType:(id)type
{
  typeCopy = type;
  if ([typeCopy isEqualToString:@"WIFI"])
  {
    v4 = 1;
  }

  else if ([typeCopy isEqualToString:@"CELLULAR"])
  {
    v4 = 2;
  }

  else if ([typeCopy isEqualToString:@"WIRED_ETHERNET"])
  {
    v4 = 3;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (void)addFlowThroughputEvent:(id)event
{
  eventCopy = event;
  flowThroughputEvents = self->_flowThroughputEvents;
  v8 = eventCopy;
  if (!flowThroughputEvents)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_flowThroughputEvents;
    self->_flowThroughputEvents = v6;

    eventCopy = v8;
    flowThroughputEvents = self->_flowThroughputEvents;
  }

  [(NSMutableArray *)flowThroughputEvents addObject:eventCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = AWDSymptomsNetworkTCPFlowThroughputEstimator;
  v4 = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)&v8 description];
  dictionaryRepresentation = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v23 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  has = self->_has;
  if (has)
  {
    v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:self->_timestamp];
    [dictionary setObject:v5 forKey:@"timestamp"];

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    v6 = self->_networkType - 1;
    if (v6 >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_networkType];
    }

    else
    {
      v7 = *(&off_27898F0E8 + v6);
    }

    [dictionary setObject:v7 forKey:@"networkType"];
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier)
  {
    [dictionary setObject:clientIdentifier forKey:@"clientIdentifier"];
  }

  sourceAppIdentifier = self->_sourceAppIdentifier;
  if (sourceAppIdentifier)
  {
    [dictionary setObject:sourceAppIdentifier forKey:@"sourceAppIdentifier"];
  }

  if ([(NSMutableArray *)self->_flowThroughputEvents count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_flowThroughputEvents, "count")}];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = self->_flowThroughputEvents;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v19;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v19 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation = [*(*(&v18 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v13);
    }

    [dictionary setObject:v10 forKey:@"flowThroughputEvent"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  has = self->_has;
  if (has)
  {
    PBDataWriterWriteUint64Field();
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_clientIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_sourceAppIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_flowThroughputEvents;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  has = self->_has;
  if (has)
  {
    toCopy[1] = self->_timestamp;
    *(toCopy + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(toCopy + 8) = self->_networkType;
    *(toCopy + 48) |= 2u;
  }

  v10 = toCopy;
  if (self->_clientIdentifier)
  {
    [toCopy setClientIdentifier:?];
  }

  if (self->_sourceAppIdentifier)
  {
    [v10 setSourceAppIdentifier:?];
  }

  if ([(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self flowThroughputEventsCount])
  {
    [v10 clearFlowThroughputEvents];
    flowThroughputEventsCount = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self flowThroughputEventsCount];
    if (flowThroughputEventsCount)
    {
      v7 = flowThroughputEventsCount;
      for (i = 0; i != v7; ++i)
      {
        v9 = [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self flowThroughputEventAtIndex:i];
        [v10 addFlowThroughputEvent:v9];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v24 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  has = self->_has;
  if (has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 48) |= 1u;
    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    *(v5 + 32) = self->_networkType;
    *(v5 + 48) |= 2u;
  }

  v8 = [(NSString *)self->_clientIdentifier copyWithZone:zone];
  v9 = v6[2];
  v6[2] = v8;

  v10 = [(NSString *)self->_sourceAppIdentifier copyWithZone:zone];
  v11 = v6[5];
  v6[5] = v10;

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_flowThroughputEvents;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * i) copyWithZone:{zone, v19}];
        [v6 addFlowThroughputEvent:v17];
      }

      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v14);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_18;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_timestamp != *(equalCopy + 1))
    {
      goto LABEL_18;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_18:
    v8 = 0;
    goto LABEL_19;
  }

  if ((*&self->_has & 2) != 0)
  {
    if ((*(equalCopy + 48) & 2) == 0 || self->_networkType != *(equalCopy + 8))
    {
      goto LABEL_18;
    }
  }

  else if ((*(equalCopy + 48) & 2) != 0)
  {
    goto LABEL_18;
  }

  clientIdentifier = self->_clientIdentifier;
  if (clientIdentifier | *(equalCopy + 2) && ![(NSString *)clientIdentifier isEqual:?])
  {
    goto LABEL_18;
  }

  sourceAppIdentifier = self->_sourceAppIdentifier;
  if (sourceAppIdentifier | *(equalCopy + 5))
  {
    if (![(NSString *)sourceAppIdentifier isEqual:?])
    {
      goto LABEL_18;
    }
  }

  flowThroughputEvents = self->_flowThroughputEvents;
  if (flowThroughputEvents | *(equalCopy + 3))
  {
    v8 = [(NSMutableArray *)flowThroughputEvents isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_19:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
    if ((*&self->_has & 2) != 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v4 = 0;
    goto LABEL_6;
  }

  v3 = 0;
  if ((*&self->_has & 2) == 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  v4 = 2654435761 * self->_networkType;
LABEL_6:
  v5 = v4 ^ v3 ^ [(NSString *)self->_clientIdentifier hash];
  v6 = [(NSString *)self->_sourceAppIdentifier hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_flowThroughputEvents hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  v6 = *(fromCopy + 48);
  if (v6)
  {
    self->_timestamp = *(fromCopy + 1);
    *&self->_has |= 1u;
    v6 = *(fromCopy + 48);
  }

  if ((v6 & 2) != 0)
  {
    self->_networkType = *(fromCopy + 8);
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 2))
  {
    [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self setClientIdentifier:?];
  }

  if (*(v5 + 5))
  {
    [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self setSourceAppIdentifier:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(v5 + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(AWDSymptomsNetworkTCPFlowThroughputEstimator *)self addFlowThroughputEvent:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

@end