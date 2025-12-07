@interface BCSHoursPeriodMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addHours:(id)hours;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation BCSHoursPeriodMessage

- (void)addHours:(id)hours
{
  hoursCopy = hours;
  hours = self->_hours;
  v8 = hoursCopy;
  if (!hours)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_hours;
    self->_hours = v6;

    hoursCopy = v8;
    hours = self->_hours;
  }

  [(NSMutableArray *)hours addObject:hoursCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = BCSHoursPeriodMessage;
  v4 = [(BCSHoursPeriodMessage *)&v8 description];
  dictionaryRepresentation = [(BCSHoursPeriodMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v17 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_hours count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_hours, "count")}];
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = self->_hours;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v13 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v12 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"hours"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_hours;
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
  if ([(BCSHoursPeriodMessage *)self hoursCount])
  {
    [toCopy clearHours];
    hoursCount = [(BCSHoursPeriodMessage *)self hoursCount];
    if (hoursCount)
    {
      v5 = hoursCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(BCSHoursPeriodMessage *)self hoursAtIndex:i];
        [toCopy addHours:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_hours;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:{zone, v13}];
        [v5 addHours:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hours = self->_hours;
    if (hours | equalCopy[1])
    {
      v6 = [(NSMutableArray *)hours isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)mergeFrom:(id)from
{
  v14 = *MEMORY[0x277D85DE8];
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

        [(BCSHoursPeriodMessage *)self addHours:*(*(&v9 + 1) + 8 * v8++), v9];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

@end