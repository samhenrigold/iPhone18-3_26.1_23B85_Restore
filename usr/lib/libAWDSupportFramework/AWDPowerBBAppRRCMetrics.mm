@interface AWDPowerBBAppRRCMetrics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAppConnStats:(id)stats;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)setHasNumRRCConnections:(BOOL)connections;
- (void)writeTo:(id)to;
@end

@implementation AWDPowerBBAppRRCMetrics

- (void)dealloc
{
  [(AWDPowerBBAppRRCMetrics *)self setAppConnStats:0];
  v3.receiver = self;
  v3.super_class = AWDPowerBBAppRRCMetrics;
  [(AWDPowerBBAppRRCMetrics *)&v3 dealloc];
}

- (void)addAppConnStats:(id)stats
{
  appConnStats = self->_appConnStats;
  if (!appConnStats)
  {
    appConnStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_appConnStats = appConnStats;
  }

  [(NSMutableArray *)appConnStats addObject:stats];
}

- (void)setHasNumRRCConnections:(BOOL)connections
{
  if (connections)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDPowerBBAppRRCMetrics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDPowerBBAppRRCMetrics description](&v3, sel_description), -[AWDPowerBBAppRRCMetrics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v16 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_appConnStats count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_appConnStats, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    appConnStats = self->_appConnStats;
    v6 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(appConnStats);
          }

          [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v7 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"appConnStats"];
  }

  if ((*&self->_has & 2) != 0)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedInt:", self->_numRRCConnections), @"numRRCConnections"}];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v14 = *MEMORY[0x29EDCA608];
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  appConnStats = self->_appConnStats;
  v5 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(appConnStats);
        }

        PBDataWriterWriteSubmessage();
      }

      v6 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteUint32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 28) |= 1u;
  }

  if ([(AWDPowerBBAppRRCMetrics *)self appConnStatsCount])
  {
    [to clearAppConnStats];
    appConnStatsCount = [(AWDPowerBBAppRRCMetrics *)self appConnStatsCount];
    if (appConnStatsCount)
    {
      v6 = appConnStatsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addAppConnStats:{-[AWDPowerBBAppRRCMetrics appConnStatsAtIndex:](self, "appConnStatsAtIndex:", i)}];
      }
    }
  }

  if ((*&self->_has & 2) != 0)
  {
    *(to + 6) = self->_numRRCConnections;
    *(to + 28) |= 2u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v19 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_timestamp;
    *(v5 + 28) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  appConnStats = self->_appConnStats;
  v8 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(appConnStats);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) copyWithZone:zone];
        [v6 addAppConnStats:v12];
      }

      v9 = [(NSMutableArray *)appConnStats countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_numRRCConnections;
    *(v6 + 28) |= 2u;
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    has = self->_has;
    if (has)
    {
      if ((*(equal + 28) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_14;
      }
    }

    else if (*(equal + 28))
    {
LABEL_14:
      LOBYTE(v5) = 0;
      return v5;
    }

    appConnStats = self->_appConnStats;
    if (appConnStats | *(equal + 2))
    {
      v5 = [(NSMutableArray *)appConnStats isEqual:?];
      if (!v5)
      {
        return v5;
      }

      has = self->_has;
    }

    LOBYTE(v5) = (*(equal + 28) & 2) == 0;
    if ((has & 2) != 0)
    {
      if ((*(equal + 28) & 2) == 0 || self->_numRRCConnections != *(equal + 6))
      {
        goto LABEL_14;
      }

      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_timestamp;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSMutableArray *)self->_appConnStats hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_numRRCConnections;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(from + 28))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(from + 2);
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

        [(AWDPowerBBAppRRCMetrics *)self addAppConnStats:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if ((*(from + 28) & 2) != 0)
  {
    self->_numRRCConnections = *(from + 6);
    *&self->_has |= 2u;
  }
}

@end