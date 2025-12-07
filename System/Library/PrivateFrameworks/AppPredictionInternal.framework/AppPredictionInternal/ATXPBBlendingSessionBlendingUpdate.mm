@interface ATXPBBlendingSessionBlendingUpdate
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addClientModelUpdate:(id)update;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ATXPBBlendingSessionBlendingUpdate

- (void)addClientModelUpdate:(id)update
{
  updateCopy = update;
  clientModelUpdates = self->_clientModelUpdates;
  v8 = updateCopy;
  if (!clientModelUpdates)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_clientModelUpdates;
    self->_clientModelUpdates = v6;

    updateCopy = v8;
    clientModelUpdates = self->_clientModelUpdates;
  }

  [(NSMutableArray *)clientModelUpdates addObject:updateCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ATXPBBlendingSessionBlendingUpdate;
  v4 = [(ATXPBBlendingSessionBlendingUpdate *)&v8 description];
  dictionaryRepresentation = [(ATXPBBlendingSessionBlendingUpdate *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  blendingUpdateUUID = self->_blendingUpdateUUID;
  if (blendingUpdateUUID)
  {
    [dictionary setObject:blendingUpdateUUID forKey:@"blendingUpdateUUID"];
  }

  blendingABGroup = self->_blendingABGroup;
  if (blendingABGroup)
  {
    [v4 setObject:blendingABGroup forKey:@"blendingABGroup"];
  }

  consumerSubType = self->_consumerSubType;
  if (consumerSubType)
  {
    [v4 setObject:consumerSubType forKey:@"consumerSubType"];
  }

  deviceContext = self->_deviceContext;
  if (deviceContext)
  {
    dictionaryRepresentation = [(ATXPBBlendingSessionDeviceContext *)deviceContext dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation forKey:@"deviceContext"];
  }

  if ([(NSMutableArray *)self->_clientModelUpdates count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_clientModelUpdates, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = self->_clientModelUpdates;
    v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v10 addObject:dictionaryRepresentation2];
        }

        v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v13);
    }

    [v4 setObject:v10 forKey:@"clientModelUpdate"];
  }

  uiCache = self->_uiCache;
  if (uiCache)
  {
    dictionaryRepresentation3 = [(ATXPBBlendingSessionUICache *)uiCache dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation3 forKey:@"uiCache"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (self->_blendingUpdateUUID)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_blendingABGroup)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_consumerSubType)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_deviceContext)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_clientModelUpdates;
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

  if (self->_uiCache)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_blendingUpdateUUID)
  {
    [toCopy setBlendingUpdateUUID:?];
  }

  if (self->_blendingABGroup)
  {
    [toCopy setBlendingABGroup:?];
  }

  if (self->_consumerSubType)
  {
    [toCopy setConsumerSubType:?];
  }

  if (self->_deviceContext)
  {
    [toCopy setDeviceContext:?];
  }

  if ([(ATXPBBlendingSessionBlendingUpdate *)self clientModelUpdatesCount])
  {
    [toCopy clearClientModelUpdates];
    clientModelUpdatesCount = [(ATXPBBlendingSessionBlendingUpdate *)self clientModelUpdatesCount];
    if (clientModelUpdatesCount)
    {
      v5 = clientModelUpdatesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ATXPBBlendingSessionBlendingUpdate *)self clientModelUpdateAtIndex:i];
        [toCopy addClientModelUpdate:v7];
      }
    }
  }

  if (self->_uiCache)
  {
    [toCopy setUiCache:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_blendingUpdateUUID copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v8 = [(NSString *)self->_blendingABGroup copyWithZone:zone];
  v9 = v5[1];
  v5[1] = v8;

  v10 = [(NSString *)self->_consumerSubType copyWithZone:zone];
  v11 = v5[4];
  v5[4] = v10;

  v12 = [(ATXPBBlendingSessionDeviceContext *)self->_deviceContext copyWithZone:zone];
  v13 = v5[5];
  v5[5] = v12;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v14 = self->_clientModelUpdates;
  v15 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v24;
    do
    {
      v18 = 0;
      do
      {
        if (*v24 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = [*(*(&v23 + 1) + 8 * v18) copyWithZone:{zone, v23}];
        [v5 addClientModelUpdate:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v16);
  }

  v20 = [(ATXPBBlendingSessionUICache *)self->_uiCache copyWithZone:zone];
  v21 = v5[6];
  v5[6] = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((blendingUpdateUUID = self->_blendingUpdateUUID, !(blendingUpdateUUID | equalCopy[2])) || -[NSString isEqual:](blendingUpdateUUID, "isEqual:")) && ((blendingABGroup = self->_blendingABGroup, !(blendingABGroup | equalCopy[1])) || -[NSString isEqual:](blendingABGroup, "isEqual:")) && ((consumerSubType = self->_consumerSubType, !(consumerSubType | equalCopy[4])) || -[NSString isEqual:](consumerSubType, "isEqual:")) && ((deviceContext = self->_deviceContext, !(deviceContext | equalCopy[5])) || -[ATXPBBlendingSessionDeviceContext isEqual:](deviceContext, "isEqual:")) && ((clientModelUpdates = self->_clientModelUpdates, !(clientModelUpdates | equalCopy[3])) || -[NSMutableArray isEqual:](clientModelUpdates, "isEqual:")))
  {
    uiCache = self->_uiCache;
    if (uiCache | equalCopy[6])
    {
      v11 = [(ATXPBBlendingSessionUICache *)uiCache isEqual:?];
    }

    else
    {
      v11 = 1;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_blendingUpdateUUID hash];
  v4 = [(NSString *)self->_blendingABGroup hash]^ v3;
  v5 = [(NSString *)self->_consumerSubType hash];
  v6 = v4 ^ v5 ^ [(ATXPBBlendingSessionDeviceContext *)self->_deviceContext hash];
  v7 = [(NSMutableArray *)self->_clientModelUpdates hash];
  return v6 ^ v7 ^ [(ATXPBBlendingSessionUICache *)self->_uiCache hash];
}

- (void)mergeFrom:(id)from
{
  v19 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(ATXPBBlendingSessionBlendingUpdate *)self setBlendingUpdateUUID:?];
  }

  if (*(fromCopy + 1))
  {
    [(ATXPBBlendingSessionBlendingUpdate *)self setBlendingABGroup:?];
  }

  if (*(fromCopy + 4))
  {
    [(ATXPBBlendingSessionBlendingUpdate *)self setConsumerSubType:?];
  }

  deviceContext = self->_deviceContext;
  v6 = *(fromCopy + 5);
  if (deviceContext)
  {
    if (v6)
    {
      [(ATXPBBlendingSessionDeviceContext *)deviceContext mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(ATXPBBlendingSessionBlendingUpdate *)self setDeviceContext:?];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(ATXPBBlendingSessionBlendingUpdate *)self addClientModelUpdate:*(*(&v14 + 1) + 8 * i), v14];
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  uiCache = self->_uiCache;
  v13 = *(fromCopy + 6);
  if (uiCache)
  {
    if (v13)
    {
      [(ATXPBBlendingSessionUICache *)uiCache mergeFrom:?];
    }
  }

  else if (v13)
  {
    [(ATXPBBlendingSessionBlendingUpdate *)self setUiCache:?];
  }
}

@end