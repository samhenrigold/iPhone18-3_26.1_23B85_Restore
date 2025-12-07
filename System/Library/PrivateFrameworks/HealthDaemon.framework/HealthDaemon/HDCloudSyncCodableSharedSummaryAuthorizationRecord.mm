@interface HDCloudSyncCodableSharedSummaryAuthorizationRecord
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addAuthorizationCategories:(id)categories;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HDCloudSyncCodableSharedSummaryAuthorizationRecord

- (void)addAuthorizationCategories:(id)categories
{
  categoriesCopy = categories;
  authorizationCategories = self->_authorizationCategories;
  v8 = categoriesCopy;
  if (!authorizationCategories)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_authorizationCategories;
    self->_authorizationCategories = v6;

    categoriesCopy = v8;
    authorizationCategories = self->_authorizationCategories;
  }

  [(NSMutableArray *)authorizationCategories addObject:categoriesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = HDCloudSyncCodableSharedSummaryAuthorizationRecord;
  v4 = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)&v8 description];
  dictionaryRepresentation = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  uuid = self->_uuid;
  if (uuid)
  {
    [dictionary setObject:uuid forKey:@"uuid"];
  }

  authorizationCategories = self->_authorizationCategories;
  if (authorizationCategories)
  {
    [v4 setObject:authorizationCategories forKey:@"authorizationCategories"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_uuid)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_authorizationCategories;
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

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_uuid)
  {
    [toCopy setUuid:?];
  }

  if ([(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self authorizationCategoriesCount])
  {
    [toCopy clearAuthorizationCategories];
    authorizationCategoriesCount = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self authorizationCategoriesCount];
    if (authorizationCategoriesCount)
    {
      v5 = authorizationCategoriesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self authorizationCategoriesAtIndex:i];
        [toCopy addAuthorizationCategories:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_uuid copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_authorizationCategories;
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
        [v5 addAuthorizationCategories:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((uuid = self->_uuid, !(uuid | equalCopy[2])) || -[NSString isEqual:](uuid, "isEqual:")))
  {
    authorizationCategories = self->_authorizationCategories;
    if (authorizationCategories | equalCopy[1])
    {
      v7 = [(NSMutableArray *)authorizationCategories isEqual:?];
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

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self setUuid:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
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

        [(HDCloudSyncCodableSharedSummaryAuthorizationRecord *)self addAuthorizationCategories:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end