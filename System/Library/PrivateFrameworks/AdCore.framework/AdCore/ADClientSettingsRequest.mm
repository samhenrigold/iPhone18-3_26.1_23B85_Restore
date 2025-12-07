@interface ADClientSettingsRequest
+ (id)options;
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCurrentSearchLandingAdsSettingParams:(id)params;
- (void)addCurrentSettingParams:(id)params;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ADClientSettingsRequest

+ (id)options
{
  if (options_once_2 != -1)
  {
    +[ADClientSettingsRequest options];
  }

  v3 = options_sOptions_2;

  return v3;
}

void __34__ADClientSettingsRequest_options__block_invoke()
{
  v0 = options_sOptions_2;
  options_sOptions_2 = &unk_285104C90;
}

- (void)addCurrentSettingParams:(id)params
{
  paramsCopy = params;
  currentSettingParams = self->_currentSettingParams;
  v8 = paramsCopy;
  if (!currentSettingParams)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_currentSettingParams;
    self->_currentSettingParams = v6;

    paramsCopy = v8;
    currentSettingParams = self->_currentSettingParams;
  }

  [(NSMutableArray *)currentSettingParams addObject:paramsCopy];
}

- (void)addCurrentSearchLandingAdsSettingParams:(id)params
{
  paramsCopy = params;
  currentSearchLandingAdsSettingParams = self->_currentSearchLandingAdsSettingParams;
  v8 = paramsCopy;
  if (!currentSearchLandingAdsSettingParams)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_currentSearchLandingAdsSettingParams;
    self->_currentSearchLandingAdsSettingParams = v6;

    paramsCopy = v8;
    currentSearchLandingAdsSettingParams = self->_currentSearchLandingAdsSettingParams;
  }

  [(NSMutableArray *)currentSearchLandingAdsSettingParams addObject:paramsCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ADClientSettingsRequest;
  v4 = [(ADClientSettingsRequest *)&v8 description];
  dictionaryRepresentation = [(ADClientSettingsRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v31 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  iAdIDString = self->_iAdIDString;
  if (iAdIDString)
  {
    [dictionary setObject:iAdIDString forKey:@"iAdIDString"];
  }

  if ([(NSMutableArray *)self->_currentSettingParams count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_currentSettingParams, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v7 = self->_currentSettingParams;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v25 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v25 objects:v30 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"currentSettingParams"];
  }

  if ([(NSMutableArray *)self->_currentSearchLandingAdsSettingParams count])
  {
    v13 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_currentSearchLandingAdsSettingParams, "count")}];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v14 = self->_currentSearchLandingAdsSettingParams;
    v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          dictionaryRepresentation2 = [*(*(&v21 + 1) + 8 * j) dictionaryRepresentation];
          [v13 addObject:dictionaryRepresentation2];
        }

        v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v16);
    }

    [v4 setObject:v13 forKey:@"currentSearchLandingAdsSettingParams"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_iAdIDString)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_currentSettingParams;
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

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_currentSearchLandingAdsSettingParams;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_iAdIDString)
  {
    [toCopy setIAdIDString:?];
  }

  if ([(ADClientSettingsRequest *)self currentSettingParamsCount])
  {
    [toCopy clearCurrentSettingParams];
    currentSettingParamsCount = [(ADClientSettingsRequest *)self currentSettingParamsCount];
    if (currentSettingParamsCount)
    {
      v5 = currentSettingParamsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ADClientSettingsRequest *)self currentSettingParamsAtIndex:i];
        [toCopy addCurrentSettingParams:v7];
      }
    }
  }

  if ([(ADClientSettingsRequest *)self currentSearchLandingAdsSettingParamsCount])
  {
    [toCopy clearCurrentSearchLandingAdsSettingParams];
    currentSearchLandingAdsSettingParamsCount = [(ADClientSettingsRequest *)self currentSearchLandingAdsSettingParamsCount];
    if (currentSearchLandingAdsSettingParamsCount)
    {
      v9 = currentSearchLandingAdsSettingParamsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ADClientSettingsRequest *)self currentSearchLandingAdsSettingParamsAtIndex:j];
        [toCopy addCurrentSearchLandingAdsSettingParams:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_iAdIDString copyWithZone:zone];
  v7 = v5[3];
  v5[3] = v6;

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v8 = self->_currentSettingParams;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v26;
    do
    {
      v12 = 0;
      do
      {
        if (*v26 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v25 + 1) + 8 * v12) copyWithZone:zone];
        [v5 addCurrentSettingParams:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v10);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_currentSearchLandingAdsSettingParams;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
        [v5 addCurrentSearchLandingAdsSettingParams:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((iAdIDString = self->_iAdIDString, !(iAdIDString | equalCopy[3])) || -[NSString isEqual:](iAdIDString, "isEqual:")) && ((currentSettingParams = self->_currentSettingParams, !(currentSettingParams | equalCopy[2])) || -[NSMutableArray isEqual:](currentSettingParams, "isEqual:")))
  {
    currentSearchLandingAdsSettingParams = self->_currentSearchLandingAdsSettingParams;
    if (currentSearchLandingAdsSettingParams | equalCopy[1])
    {
      v8 = [(NSMutableArray *)currentSearchLandingAdsSettingParams isEqual:?];
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
  v3 = [(NSString *)self->_iAdIDString hash];
  v4 = [(NSMutableArray *)self->_currentSettingParams hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_currentSearchLandingAdsSettingParams hash];
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(ADClientSettingsRequest *)self setIAdIDString:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = *(fromCopy + 2);
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

        [(ADClientSettingsRequest *)self addCurrentSettingParams:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 1);
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

        [(ADClientSettingsRequest *)self addCurrentSearchLandingAdsSettingParams:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end