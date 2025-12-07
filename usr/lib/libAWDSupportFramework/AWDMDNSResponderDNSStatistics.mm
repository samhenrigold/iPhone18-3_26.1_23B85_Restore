@interface AWDMDNSResponderDNSStatistics
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addStats:(id)stats;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMDNSResponderDNSStatistics

- (void)dealloc
{
  [(AWDMDNSResponderDNSStatistics *)self setStats:0];
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderDNSStatistics;
  [(AWDMDNSResponderDNSStatistics *)&v3 dealloc];
}

- (void)addStats:(id)stats
{
  stats = self->_stats;
  if (!stats)
  {
    stats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_stats = stats;
  }

  [(NSMutableArray *)stats addObject:stats];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderDNSStatistics;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderDNSStatistics description](&v3, sel_description), -[AWDMDNSResponderDNSStatistics dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v16 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if (*&self->_has)
  {
    [dictionary setObject:objc_msgSend(MEMORY[0x29EDBA070] forKey:{"numberWithUnsignedLongLong:", self->_timestamp), @"timestamp"}];
  }

  if ([(NSMutableArray *)self->_stats count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_stats, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    stats = self->_stats;
    v6 = [(NSMutableArray *)stats countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v12;
      do
      {
        v9 = 0;
        do
        {
          if (*v12 != v8)
          {
            objc_enumerationMutation(stats);
          }

          [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9++), "dictionaryRepresentation")}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)stats countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"stats"];
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
  stats = self->_stats;
  v5 = [(NSMutableArray *)stats countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(stats);
        }

        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)stats countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 1) = self->_timestamp;
    *(to + 24) |= 1u;
  }

  if ([(AWDMDNSResponderDNSStatistics *)self statsCount])
  {
    [to clearStats];
    statsCount = [(AWDMDNSResponderDNSStatistics *)self statsCount];
    if (statsCount)
    {
      v6 = statsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addStats:{-[AWDMDNSResponderDNSStatistics statsAtIndex:](self, "statsAtIndex:", i)}];
      }
    }
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
    *(v5 + 24) |= 1u;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  stats = self->_stats;
  v8 = [(NSMutableArray *)stats countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(stats);
        }

        v12 = [*(*(&v14 + 1) + 8 * v11) copyWithZone:zone];
        [v6 addStats:v12];

        ++v11;
      }

      while (v9 != v11);
      v9 = [(NSMutableArray *)stats countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
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
      if ((*(equal + 24) & 1) == 0 || self->_timestamp != *(equal + 1))
      {
        goto LABEL_9;
      }
    }

    else if (*(equal + 24))
    {
LABEL_9:
      LOBYTE(v5) = 0;
      return v5;
    }

    stats = self->_stats;
    if (stats | *(equal + 2))
    {

      LOBYTE(v5) = [(NSMutableArray *)stats isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761u * self->_timestamp;
  }

  else
  {
    v2 = 0;
  }

  return [(NSMutableArray *)self->_stats hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x29EDCA608];
  if (*(from + 24))
  {
    self->_timestamp = *(from + 1);
    *&self->_has |= 1u;
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(from + 2);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(AWDMDNSResponderDNSStatistics *)self addStats:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end