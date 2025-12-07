@interface ADLogAnalyticsRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addEvents:(id)events;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADLogAnalyticsRequest

+ (id)options
{
  if (options_once_0 != -1)
  {
    +[ADLogAnalyticsRequest options];
  }

  v3 = options_sOptions_0;

  return v3;
}

void __32__ADLogAnalyticsRequest_options__block_invoke()
{
  v0 = options_sOptions_0;
  options_sOptions_0 = &unk_285104C40;
}

- (void)addEvents:(id)events
{
  eventsCopy = events;
  events = self->_events;
  v8 = eventsCopy;
  if (!events)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_events;
    self->_events = v6;

    eventsCopy = v8;
    events = self->_events;
  }

  [(NSMutableArray *)events addObject:eventsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADLogAnalyticsRequest;
  v4 = [(ADLogAnalyticsRequest *)&v8 description];
  dictionaryRepresentation = [(ADLogAnalyticsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v22 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  iAdID = self->_iAdID;
  if (iAdID)
  {
    [dictionary setObject:iAdID forKey:@"iAdID"];
  }

  bundleID = self->_bundleID;
  if (bundleID)
  {
    [v4 setObject:bundleID forKey:@"bundleID"];
  }

  contentiAdID = self->_contentiAdID;
  if (contentiAdID)
  {
    [v4 setObject:contentiAdID forKey:@"contentiAdID"];
  }

  dPID = self->_dPID;
  if (dPID)
  {
    [v4 setObject:dPID forKey:@"DPID"];
  }

  if ([(NSMutableArray *)self->_events count])
  {
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_events, "count")}];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = self->_events;
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

    [v4 setObject:v9 forKey:@"events"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_iAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_bundleID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_contentiAdID)
  {
    PBDataWriterWriteDataField();
  }

  if (self->_dPID)
  {
    PBDataWriterWriteDataField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_events;
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
  if (self->_iAdID)
  {
    [toCopy setIAdID:?];
  }

  if (self->_bundleID)
  {
    [toCopy setBundleID:?];
  }

  if (self->_contentiAdID)
  {
    [toCopy setContentiAdID:?];
  }

  if (self->_dPID)
  {
    [toCopy setDPID:?];
  }

  if ([(ADLogAnalyticsRequest *)self eventsCount])
  {
    [toCopy clearEvents];
    eventsCount = [(ADLogAnalyticsRequest *)self eventsCount];
    if (eventsCount)
    {
      v5 = eventsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ADLogAnalyticsRequest *)self eventsAtIndex:i];
        [toCopy addEvents:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSData *)self->_iAdID copyWithZone:zone];
  v7 = v5[5];
  v5[5] = v6;

  v8 = [(NSString *)self->_bundleID copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSData *)self->_contentiAdID copyWithZone:zone];
  v11 = v5[2];
  v5[2] = v10;

  v12 = [(NSData *)self->_dPID copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_events;
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
        [v5 addEvents:v19];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((iAdID = self->_iAdID, !(iAdID | equalCopy[5])) || -[NSData isEqual:](iAdID, "isEqual:")) && ((bundleID = self->_bundleID, !(bundleID | equalCopy[1])) || -[NSString isEqual:](bundleID, "isEqual:")) && ((contentiAdID = self->_contentiAdID, !(contentiAdID | equalCopy[2])) || -[NSData isEqual:](contentiAdID, "isEqual:")) && ((dPID = self->_dPID, !(dPID | equalCopy[3])) || -[NSData isEqual:](dPID, "isEqual:")))
  {
    events = self->_events;
    if (events | equalCopy[4])
    {
      v10 = [(NSMutableArray *)events isEqual:?];
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
  v3 = [(NSData *)self->_iAdID hash];
  v4 = [(NSString *)self->_bundleID hash]^ v3;
  v5 = [(NSData *)self->_contentiAdID hash];
  v6 = v4 ^ v5 ^ [(NSData *)self->_dPID hash];
  return v6 ^ [(NSMutableArray *)self->_events hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 5))
  {
    [(ADLogAnalyticsRequest *)self setIAdID:?];
  }

  if (*(fromCopy + 1))
  {
    [(ADLogAnalyticsRequest *)self setBundleID:?];
  }

  if (*(fromCopy + 2))
  {
    [(ADLogAnalyticsRequest *)self setContentiAdID:?];
  }

  if (*(fromCopy + 3))
  {
    [(ADLogAnalyticsRequest *)self setDPID:?];
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

        [(ADLogAnalyticsRequest *)self addEvents:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end