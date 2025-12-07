@interface VGChargingNetworksStorage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addNetworks:(id)networks;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VGChargingNetworksStorage

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [(VGChargingNetworksStorage *)self addNetworks:*(*(&v10 + 1) + 8 * v9++), v10];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 20))
  {
    self->_usesPreferredNetworksForRouting = *(fromCopy + 16);
    *&self->_has |= 1u;
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_networks hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_usesPreferredNetworksForRouting;
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ v3;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  networks = self->_networks;
  if (networks | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)networks isEqual:?])
    {
      goto LABEL_6;
    }
  }

  v6 = (*(equalCopy + 20) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 20) & 1) == 0)
    {
LABEL_6:
      v6 = 0;
      goto LABEL_7;
    }

    if (self->_usesPreferredNetworksForRouting)
    {
      if ((*(equalCopy + 16) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if (*(equalCopy + 16))
    {
      goto LABEL_6;
    }

    v6 = 1;
  }

LABEL_7:

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = self->_networks;
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
        [v5 addNetworks:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    v5[16] = self->_usesPreferredNetworksForRouting;
    v5[20] |= 1u;
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(VGChargingNetworksStorage *)self networksCount])
  {
    [toCopy clearNetworks];
    networksCount = [(VGChargingNetworksStorage *)self networksCount];
    if (networksCount)
    {
      v5 = networksCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VGChargingNetworksStorage *)self networksAtIndex:i];
        [toCopy addNetworks:v7];
      }
    }
  }

  if (*&self->_has)
  {
    toCopy[16] = self->_usesPreferredNetworksForRouting;
    toCopy[20] |= 1u;
  }
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_networks;
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

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }
}

- (id)dictionaryRepresentation
{
  v18 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(NSMutableArray *)self->_networks count])
  {
    v4 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_networks, "count")}];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = self->_networks;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v13 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"networks"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithBool:self->_usesPreferredNetworksForRouting];
    [dictionary setObject:v11 forKey:@"usesPreferredNetworksForRouting"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VGChargingNetworksStorage;
  v4 = [(VGChargingNetworksStorage *)&v8 description];
  dictionaryRepresentation = [(VGChargingNetworksStorage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addNetworks:(id)networks
{
  networksCopy = networks;
  networks = self->_networks;
  v8 = networksCopy;
  if (!networks)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_networks;
    self->_networks = v6;

    networksCopy = v8;
    networks = self->_networks;
  }

  [(NSMutableArray *)networks addObject:networksCopy];
}

@end