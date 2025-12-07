@interface ADRotatingIdentifiers
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExperimentBuckets:(id)buckets;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADRotatingIdentifiers

- (void)addExperimentBuckets:(id)buckets
{
  bucketsCopy = buckets;
  experimentBuckets = self->_experimentBuckets;
  v8 = bucketsCopy;
  if (!experimentBuckets)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_experimentBuckets;
    self->_experimentBuckets = v6;

    bucketsCopy = v8;
    experimentBuckets = self->_experimentBuckets;
  }

  [(NSMutableArray *)experimentBuckets addObject:bucketsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADRotatingIdentifiers;
  v4 = [(ADRotatingIdentifiers *)&v8 description];
  dictionaryRepresentation = [(ADRotatingIdentifiers *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_experimentBuckets count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_experimentBuckets, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_experimentBuckets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"experimentBuckets"];
  }

  rotatedAnonymousId = self->_rotatedAnonymousId;
  if (rotatedAnonymousId)
  {
    [dictionary setObject:rotatedAnonymousId forKey:@"rotatedAnonymousId"];
  }

  anonymousSessionId = self->_anonymousSessionId;
  if (anonymousSessionId)
  {
    [dictionary setObject:anonymousSessionId forKey:@"anonymousSessionId"];
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
  v5 = self->_experimentBuckets;
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

  if (self->_rotatedAnonymousId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_anonymousSessionId)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ADRotatingIdentifiers *)self experimentBucketsCount])
  {
    [toCopy clearExperimentBuckets];
    experimentBucketsCount = [(ADRotatingIdentifiers *)self experimentBucketsCount];
    if (experimentBucketsCount)
    {
      v5 = experimentBucketsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ADRotatingIdentifiers *)self experimentBucketsAtIndex:i];
        [toCopy addExperimentBuckets:v7];
      }
    }
  }

  if (self->_rotatedAnonymousId)
  {
    [toCopy setRotatedAnonymousId:?];
  }

  v8 = toCopy;
  if (self->_anonymousSessionId)
  {
    [toCopy setAnonymousSessionId:?];
    v8 = toCopy;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = self->_experimentBuckets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      v10 = 0;
      do
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v17 + 1) + 8 * v10) copyWithZone:{zone, v17}];
        [v5 addExperimentBuckets:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_rotatedAnonymousId copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  v14 = [(NSString *)self->_anonymousSessionId copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((experimentBuckets = self->_experimentBuckets, !(experimentBuckets | equalCopy[2])) || -[NSMutableArray isEqual:](experimentBuckets, "isEqual:")) && ((rotatedAnonymousId = self->_rotatedAnonymousId, !(rotatedAnonymousId | equalCopy[3])) || -[NSString isEqual:](rotatedAnonymousId, "isEqual:")))
  {
    anonymousSessionId = self->_anonymousSessionId;
    if (anonymousSessionId | equalCopy[1])
    {
      v8 = [(NSString *)anonymousSessionId isEqual:?];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_experimentBuckets hash];
  v4 = [(NSString *)self->_rotatedAnonymousId hash]^ v3;
  return v4 ^ [(NSString *)self->_anonymousSessionId hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[2];
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

        [(ADRotatingIdentifiers *)self addExperimentBuckets:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[3])
  {
    [(ADRotatingIdentifiers *)self setRotatedAnonymousId:?];
  }

  if (fromCopy[1])
  {
    [(ADRotatingIdentifiers *)self setAnonymousSessionId:?];
  }
}

@end