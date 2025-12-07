@interface NPKProtoFeatureApplicationsForAccountIdentifierResponse
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addDeprecatedFeatureApplications:(id)applications;
- (void)addFeatureApplications:(id)applications;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoFeatureApplicationsForAccountIdentifierResponse

- (void)addDeprecatedFeatureApplications:(id)applications
{
  applicationsCopy = applications;
  deprecatedFeatureApplications = self->_deprecatedFeatureApplications;
  v8 = applicationsCopy;
  if (!deprecatedFeatureApplications)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_deprecatedFeatureApplications;
    self->_deprecatedFeatureApplications = v6;

    applicationsCopy = v8;
    deprecatedFeatureApplications = self->_deprecatedFeatureApplications;
  }

  [(NSMutableArray *)deprecatedFeatureApplications addObject:applicationsCopy];
}

- (void)addFeatureApplications:(id)applications
{
  applicationsCopy = applications;
  featureApplications = self->_featureApplications;
  v8 = applicationsCopy;
  if (!featureApplications)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_featureApplications;
    self->_featureApplications = v6;

    applicationsCopy = v8;
    featureApplications = self->_featureApplications;
  }

  [(NSMutableArray *)featureApplications addObject:applicationsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoFeatureApplicationsForAccountIdentifierResponse;
  v4 = [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)&v8 description];
  dictionaryRepresentation = [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  deprecatedFeatureApplications = self->_deprecatedFeatureApplications;
  if (deprecatedFeatureApplications)
  {
    [dictionary setObject:deprecatedFeatureApplications forKey:@"deprecatedFeatureApplications"];
  }

  featureApplications = self->_featureApplications;
  if (featureApplications)
  {
    [v4 setObject:featureApplications forKey:@"featureApplications"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_deprecatedFeatureApplications;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteDataField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_featureApplications;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteDataField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self deprecatedFeatureApplicationsCount])
  {
    [toCopy clearDeprecatedFeatureApplications];
    deprecatedFeatureApplicationsCount = [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self deprecatedFeatureApplicationsCount];
    if (deprecatedFeatureApplicationsCount)
    {
      v5 = deprecatedFeatureApplicationsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self deprecatedFeatureApplicationsAtIndex:i];
        [toCopy addDeprecatedFeatureApplications:v7];
      }
    }
  }

  if ([(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self featureApplicationsCount])
  {
    [toCopy clearFeatureApplications];
    featureApplicationsCount = [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self featureApplicationsCount];
    if (featureApplicationsCount)
    {
      v9 = featureApplicationsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self featureApplicationsAtIndex:j];
        [toCopy addFeatureApplications:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v29 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v6 = self->_deprecatedFeatureApplications;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v23 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addDeprecatedFeatureApplications:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v23 objects:v28 count:16];
    }

    while (v8);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = self->_featureApplications;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      v16 = 0;
      do
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v19 + 1) + 8 * v16) copyWithZone:{zone, v19}];
        [v5 addFeatureApplications:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v14);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((deprecatedFeatureApplications = self->_deprecatedFeatureApplications, !(deprecatedFeatureApplications | equalCopy[1])) || -[NSMutableArray isEqual:](deprecatedFeatureApplications, "isEqual:")))
  {
    featureApplications = self->_featureApplications;
    if (featureApplications | equalCopy[2])
    {
      v7 = [(NSMutableArray *)featureApplications isEqual:?];
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
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = fromCopy[1];
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      v9 = 0;
      do
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self addDeprecatedFeatureApplications:*(*(&v19 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = fromCopy[2];
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NPKProtoFeatureApplicationsForAccountIdentifierResponse *)self addFeatureApplications:*(*(&v15 + 1) + 8 * v14++), v15];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end