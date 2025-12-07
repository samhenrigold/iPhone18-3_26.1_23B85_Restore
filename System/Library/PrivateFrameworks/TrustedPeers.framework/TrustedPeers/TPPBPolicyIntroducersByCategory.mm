@interface TPPBPolicyIntroducersByCategory
+ (id)TPPBPolicyIntroducersByCategoryWithCategory:(id)category introducers:(id)introducers;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addIntroducers:(id)introducers;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation TPPBPolicyIntroducersByCategory

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(TPPBPolicyIntroducersByCategory *)self setCategory:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
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

        [(TPPBPolicyIntroducersByCategory *)self addIntroducers:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((category = self->_category, !(category | equalCopy[1])) || -[NSString isEqual:](category, "isEqual:")))
  {
    introducers = self->_introducers;
    if (introducers | equalCopy[2])
    {
      v7 = [(NSMutableArray *)introducers isEqual:?];
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_category copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_introducers;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addIntroducers:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_category)
  {
    [toCopy setCategory:?];
  }

  if ([(TPPBPolicyIntroducersByCategory *)self introducersCount])
  {
    [toCopy clearIntroducers];
    introducersCount = [(TPPBPolicyIntroducersByCategory *)self introducersCount];
    if (introducersCount)
    {
      v5 = introducersCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(TPPBPolicyIntroducersByCategory *)self introducersAtIndex:i];
        [toCopy addIntroducers:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_category)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_introducers;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  category = self->_category;
  if (category)
  {
    [dictionary setObject:category forKey:@"category"];
  }

  introducers = self->_introducers;
  if (introducers)
  {
    [v4 setObject:introducers forKey:@"introducers"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = TPPBPolicyIntroducersByCategory;
  v4 = [(TPPBPolicyIntroducersByCategory *)&v8 description];
  dictionaryRepresentation = [(TPPBPolicyIntroducersByCategory *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addIntroducers:(id)introducers
{
  introducersCopy = introducers;
  introducers = self->_introducers;
  v8 = introducersCopy;
  if (!introducers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_introducers;
    self->_introducers = v6;

    introducersCopy = v8;
    introducers = self->_introducers;
  }

  [(NSMutableArray *)introducers addObject:introducersCopy];
}

+ (id)TPPBPolicyIntroducersByCategoryWithCategory:(id)category introducers:(id)introducers
{
  introducersCopy = introducers;
  categoryCopy = category;
  v7 = objc_alloc_init(TPPBPolicyIntroducersByCategory);
  [(TPPBPolicyIntroducersByCategory *)v7 setCategory:categoryCopy];

  v8 = [introducersCopy mutableCopy];
  [(TPPBPolicyIntroducersByCategory *)v7 setIntroducers:v8];

  return v7;
}

@end