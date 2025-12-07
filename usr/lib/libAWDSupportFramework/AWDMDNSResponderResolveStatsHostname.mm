@interface AWDMDNSResponderResolveStatsHostname
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addResult:(id)result;
- (void)copyTo:(id)to;
- (void)dealloc;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation AWDMDNSResponderResolveStatsHostname

- (void)dealloc
{
  [(AWDMDNSResponderResolveStatsHostname *)self setName:0];
  [(AWDMDNSResponderResolveStatsHostname *)self setResults:0];
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStatsHostname;
  [(AWDMDNSResponderResolveStatsHostname *)&v3 dealloc];
}

- (void)addResult:(id)result
{
  results = self->_results;
  if (!results)
  {
    results = objc_alloc_init(MEMORY[0x29EDB8DE8]);
    self->_results = results;
  }

  [(NSMutableArray *)results addObject:result];
}

- (id)description
{
  v3.receiver = self;
  v3.super_class = AWDMDNSResponderResolveStatsHostname;
  return [MEMORY[0x29EDBA0F8] stringWithFormat:@"%@ %@", -[AWDMDNSResponderResolveStatsHostname description](&v3, sel_description), -[AWDMDNSResponderResolveStatsHostname dictionaryRepresentation](self, "dictionaryRepresentation")];
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x29EDCA608];
  dictionary = [MEMORY[0x29EDB8E00] dictionary];
  v4 = dictionary;
  name = self->_name;
  if (name)
  {
    [dictionary setObject:name forKey:@"name"];
  }

  if ([(NSMutableArray *)self->_results count])
  {
    v6 = [objc_alloc(MEMORY[0x29EDB8DE8]) initWithCapacity:{-[NSMutableArray count](self->_results, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    results = self->_results;
    v8 = [(NSMutableArray *)results countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(results);
          }

          [v6 addObject:{objc_msgSend(*(*(&v13 + 1) + 8 * i), "dictionaryRepresentation")}];
        }

        v9 = [(NSMutableArray *)results countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"result"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v14 = *MEMORY[0x29EDCA608];
  if (self->_name)
  {
    PBDataWriterWriteStringField();
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  results = self->_results;
  v5 = [(NSMutableArray *)results countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(results);
        }

        PBDataWriterWriteSubmessage();
        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)results countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)copyTo:(id)to
{
  if (self->_name)
  {
    [to setName:?];
  }

  if ([(AWDMDNSResponderResolveStatsHostname *)self resultsCount])
  {
    [to clearResults];
    resultsCount = [(AWDMDNSResponderResolveStatsHostname *)self resultsCount];
    if (resultsCount)
    {
      v6 = resultsCount;
      for (i = 0; i != v6; ++i)
      {
        [to addResult:{-[AWDMDNSResponderResolveStatsHostname resultAtIndex:](self, "resultAtIndex:", i)}];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x29EDCA608];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];

  v5[1] = [(NSString *)self->_name copyWithZone:zone];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  results = self->_results;
  v7 = [(NSMutableArray *)results countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(results);
        }

        v11 = [*(*(&v13 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addResult:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)results countByEnumeratingWithState:&v13 objects:v17 count:16];
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
    name = self->_name;
    if (!(name | *(equal + 1)) || (v5 = [(NSString *)name isEqual:?]) != 0)
    {
      results = self->_results;
      if (results | *(equal + 2))
      {

        LOBYTE(v5) = [(NSMutableArray *)results isEqual:?];
      }

      else
      {
        LOBYTE(v5) = 1;
      }
    }
  }

  return v5;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x29EDCA608];
  if (*(from + 1))
  {
    [(AWDMDNSResponderResolveStatsHostname *)self setName:?];
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

        [(AWDMDNSResponderResolveStatsHostname *)self addResult:*(*(&v10 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end