@interface AWDWiFiTDM
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addSliceStats:(id)stats;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDWiFiTDM

- (void)dealloc
{
  [(AWDWiFiTDM *)self setSliceStats:0];
  v3.receiver = self;
  v3.super_class = AWDWiFiTDM;
  [(AWDWiFiTDM *)&v3 dealloc];
}

- (void)addSliceStats:(id)stats
{
  sliceStats = self->_sliceStats;
  if (!sliceStats)
  {
    sliceStats = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_sliceStats = sliceStats;
  }

  [(NSMutableArray *)sliceStats addObject:stats];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDWiFiTDM;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDWiFiTDM description](&v3, sel_description), -[AWDWiFiTDM dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v16 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  if ([(NSMutableArray *)self->_sliceStats count])
  {
    v4 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_sliceStats, "count")}];
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    sliceStats = self->_sliceStats;
    v6 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(sliceStats);
          }

          [v4 addObject:{objc_msgSend(*(*(&v11 + 1) + 8 * v9++), "dictionaryRepresentation")}];
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"sliceStats"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v13 = *MEMORY[0x29EDCA608];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  sliceStats = self->_sliceStats;
  v4 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(sliceStats);
        }

        PBDataWriterWriteSubmessage();
      }

      v5 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

- (void)copyTo:(id)to
{
  if ([(AWDWiFiTDM *)self sliceStatsCount])
  {
    [to clearSliceStats];
    sliceStatsCount = [(AWDWiFiTDM *)self sliceStatsCount];
    if (sliceStatsCount)
    {
      v6 = sliceStatsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addSliceStats:{-[AWDWiFiTDM sliceStatsAtIndex:](self, "sliceStatsAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  sliceStats = self->_sliceStats;
  v7 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(sliceStats);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addSliceStats:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)sliceStats countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  v5 = [equal isMemberOfClass:objc_opt_class()];
  if (v5)
  {
    sliceStats = self->_sliceStats;
    if (sliceStats | *(equal + 1))
    {

      LOBYTE(v5) = [(NSMutableArray *)sliceStats isEqual:?];
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x29EDCA608];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = *(from + 1);
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

        [(AWDWiFiTDM *)self addSliceStats:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end