@interface PPPBMusicDataCollectionArray
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addExperimentalGroups:(id)groups;
- (void)addRecords:(id)records;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation PPPBMusicDataCollectionArray

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(fromCopy + 3);
  v6 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(PPPBMusicDataCollectionArray *)self addRecords:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 36))
  {
    self->_hasMusicSubscription = *(fromCopy + 32);
    *&self->_has |= 1u;
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 2);
  v11 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      for (j = 0; j != v12; ++j)
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(PPPBMusicDataCollectionArray *)self addExperimentalGroups:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 1))
  {
    [(PPPBMusicDataCollectionArray *)self setAssetVersion:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_records hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_hasMusicSubscription;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_experimentalGroups hash];
  return v5 ^ v6 ^ [(NSString *)self->_assetVersion hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  records = self->_records;
  if (records | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)records isEqual:?])
    {
      goto LABEL_11;
    }
  }

  v6 = *(equalCopy + 36);
  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0)
    {
      goto LABEL_11;
    }

    v6 = *(equalCopy + 32);
    if (self->_hasMusicSubscription)
    {
      if (*(equalCopy + 32))
      {
        goto LABEL_6;
      }

LABEL_11:
      v9 = 0;
      goto LABEL_12;
    }
  }

  if (v6)
  {
    goto LABEL_11;
  }

LABEL_6:
  experimentalGroups = self->_experimentalGroups;
  if (experimentalGroups | *(equalCopy + 2) && ![(NSMutableArray *)experimentalGroups isEqual:?])
  {
    goto LABEL_11;
  }

  assetVersion = self->_assetVersion;
  if (assetVersion | *(equalCopy + 1))
  {
    v9 = [(NSString *)assetVersion isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_12:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_records;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v26;
    do
    {
      v10 = 0;
      do
      {
        if (*v26 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v25 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addRecords:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 32) = self->_hasMusicSubscription;
    *(v5 + 36) |= 1u;
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = self->_experimentalGroups;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v22;
    do
    {
      v16 = 0;
      do
      {
        if (*v22 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v21 + 1) + 8 * v16) copyWithZone:{zone, v21}];
        [v5 addExperimentalGroups:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_assetVersion copyWithZone:zone];
  v19 = *(v5 + 8);
  *(v5 + 8) = v18;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(PPPBMusicDataCollectionArray *)self recordsCount])
  {
    [toCopy clearRecords];
    recordsCount = [(PPPBMusicDataCollectionArray *)self recordsCount];
    if (recordsCount)
    {
      v5 = recordsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(PPPBMusicDataCollectionArray *)self recordsAtIndex:i];
        [toCopy addRecords:v7];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[32] = self->_hasMusicSubscription;
    toCopy[36] |= 1u;
  }

  if ([(PPPBMusicDataCollectionArray *)self experimentalGroupsCount])
  {
    [toCopy clearExperimentalGroups];
    experimentalGroupsCount = [(PPPBMusicDataCollectionArray *)self experimentalGroupsCount];
    if (experimentalGroupsCount)
    {
      v9 = experimentalGroupsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(PPPBMusicDataCollectionArray *)self experimentalGroupsAtIndex:j];
        [toCopy addExperimentalGroups:v11];
      }
    }
  }

  if (self->_assetVersion)
  {
    [toCopy setAssetVersion:?];
  }
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_records;
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

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_experimentalGroups;
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

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_assetVersion)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_records count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_records, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v5 = self->_records;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v26;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v26 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"records"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_hasMusicSubscription];
    [dictionary setObject:v11 forKey:@"hasMusicSubscription"];
  }

  if ([(NSMutableArray *)self->_experimentalGroups count])
  {
    v12 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_experimentalGroups, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v13 = self->_experimentalGroups;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v22;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v22 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"experimentalGroups"];
  }

  assetVersion = self->_assetVersion;
  if (assetVersion)
  {
    [dictionary setObject:assetVersion forKey:@"assetVersion"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = PPPBMusicDataCollectionArray;
  v4 = [(PPPBMusicDataCollectionArray *)&v8 description];
  dictionaryRepresentation = [(PPPBMusicDataCollectionArray *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addExperimentalGroups:(id)groups
{
  groupsCopy = groups;
  experimentalGroups = self->_experimentalGroups;
  v8 = groupsCopy;
  if (!experimentalGroups)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_experimentalGroups;
    self->_experimentalGroups = v6;

    groupsCopy = v8;
    experimentalGroups = self->_experimentalGroups;
  }

  [(NSMutableArray *)experimentalGroups addObject:groupsCopy];
}

- (void)addRecords:(id)records
{
  recordsCopy = records;
  records = self->_records;
  v8 = recordsCopy;
  if (!records)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_records;
    self->_records = v6;

    recordsCopy = v8;
    records = self->_records;
  }

  [(NSMutableArray *)records addObject:recordsCopy];
}

+ (id)options
{
  if (options_once_6772 != -1)
  {
    dispatch_once(&options_once_6772, &__block_literal_global_6773);
  }

  v3 = options_sOptions_6774;

  return v3;
}

void __39__PPPBMusicDataCollectionArray_options__block_invoke()
{
  v0 = options_sOptions_6774;
  options_sOptions_6774 = &unk_284785F28;
}

@end