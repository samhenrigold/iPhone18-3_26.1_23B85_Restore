@interface HMAccessoryInfoProtoNetworkServiceEvent
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addIpv4Addresses:(id)addresses;
- (void)addIpv6Addresses:(id)addresses;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation HMAccessoryInfoProtoNetworkServiceEvent

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 2))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setIfaceName:?];
  }

  if (*(fromCopy + 5))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setMacAddress:?];
  }

  if (*(fromCopy + 84))
  {
    self->_isPrimary = *(fromCopy + 80);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 1))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setConfirmedIfaceName:?];
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
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

        [(HMAccessoryInfoProtoNetworkServiceEvent *)self addIpv4Addresses:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 6))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setNetworkSignatureV4:?];
  }

  if (*(fromCopy + 8))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setRouterIPv4:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 4);
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

        [(HMAccessoryInfoProtoNetworkServiceEvent *)self addIpv6Addresses:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (*(fromCopy + 7))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setNetworkSignatureV6:?];
  }

  if (*(fromCopy + 9))
  {
    [(HMAccessoryInfoProtoNetworkServiceEvent *)self setRouterIPv6:?];
  }
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_ifaceName hash];
  v4 = [(NSString *)self->_macAddress hash];
  if (*&self->_has)
  {
    v5 = 2654435761 * self->_isPrimary;
  }

  else
  {
    v5 = 0;
  }

  v6 = v4 ^ v3 ^ v5 ^ [(NSString *)self->_confirmedIfaceName hash];
  v7 = [(NSMutableArray *)self->_ipv4Addresses hash];
  v8 = v7 ^ [(NSString *)self->_networkSignatureV4 hash];
  v9 = v6 ^ v8 ^ [(NSString *)self->_routerIPv4 hash];
  v10 = [(NSMutableArray *)self->_ipv6Addresses hash];
  v11 = v10 ^ [(NSString *)self->_networkSignatureV6 hash];
  return v9 ^ v11 ^ [(NSString *)self->_routerIPv6 hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_23;
  }

  ifaceName = self->_ifaceName;
  if (ifaceName | *(equalCopy + 2))
  {
    if (![(NSString *)ifaceName isEqual:?])
    {
      goto LABEL_23;
    }
  }

  macAddress = self->_macAddress;
  if (macAddress | *(equalCopy + 5))
  {
    if (![(NSString *)macAddress isEqual:?])
    {
      goto LABEL_23;
    }
  }

  v7 = *(equalCopy + 84);
  if ((*&self->_has & 1) == 0)
  {
    goto LABEL_7;
  }

  if ((*(equalCopy + 84) & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = *(equalCopy + 80);
  if (!self->_isPrimary)
  {
LABEL_7:
    if ((v7 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_23:
    v15 = 0;
    goto LABEL_24;
  }

  if ((*(equalCopy + 80) & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  confirmedIfaceName = self->_confirmedIfaceName;
  if (confirmedIfaceName | *(equalCopy + 1) && ![(NSString *)confirmedIfaceName isEqual:?])
  {
    goto LABEL_23;
  }

  ipv4Addresses = self->_ipv4Addresses;
  if (ipv4Addresses | *(equalCopy + 3))
  {
    if (![(NSMutableArray *)ipv4Addresses isEqual:?])
    {
      goto LABEL_23;
    }
  }

  networkSignatureV4 = self->_networkSignatureV4;
  if (networkSignatureV4 | *(equalCopy + 6))
  {
    if (![(NSString *)networkSignatureV4 isEqual:?])
    {
      goto LABEL_23;
    }
  }

  routerIPv4 = self->_routerIPv4;
  if (routerIPv4 | *(equalCopy + 8))
  {
    if (![(NSString *)routerIPv4 isEqual:?])
    {
      goto LABEL_23;
    }
  }

  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)ipv6Addresses isEqual:?])
    {
      goto LABEL_23;
    }
  }

  networkSignatureV6 = self->_networkSignatureV6;
  if (networkSignatureV6 | *(equalCopy + 7))
  {
    if (![(NSString *)networkSignatureV6 isEqual:?])
    {
      goto LABEL_23;
    }
  }

  routerIPv6 = self->_routerIPv6;
  if (routerIPv6 | *(equalCopy + 9))
  {
    v15 = [(NSString *)routerIPv6 isEqual:?];
  }

  else
  {
    v15 = 1;
  }

LABEL_24:

  return v15;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v43 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_ifaceName copyWithZone:zone];
  v7 = *(v5 + 16);
  *(v5 + 16) = v6;

  v8 = [(NSString *)self->_macAddress copyWithZone:zone];
  v9 = *(v5 + 40);
  *(v5 + 40) = v8;

  if (*&self->_has)
  {
    *(v5 + 80) = self->_isPrimary;
    *(v5 + 84) |= 1u;
  }

  v10 = [(NSString *)self->_confirmedIfaceName copyWithZone:zone];
  v11 = *(v5 + 8);
  *(v5 + 8) = v10;

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v12 = self->_ipv4Addresses;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v38;
    do
    {
      v16 = 0;
      do
      {
        if (*v38 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v37 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addIpv4Addresses:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_networkSignatureV4 copyWithZone:zone];
  v19 = *(v5 + 48);
  *(v5 + 48) = v18;

  v20 = [(NSString *)self->_routerIPv4 copyWithZone:zone];
  v21 = *(v5 + 64);
  *(v5 + 64) = v20;

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v22 = self->_ipv6Addresses;
  v23 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v34;
    do
    {
      v26 = 0;
      do
      {
        if (*v34 != v25)
        {
          objc_enumerationMutation(v22);
        }

        v27 = [*(*(&v33 + 1) + 8 * v26) copyWithZone:{zone, v33}];
        [v5 addIpv6Addresses:v27];

        ++v26;
      }

      while (v24 != v26);
      v24 = [(NSMutableArray *)v22 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v24);
  }

  v28 = [(NSString *)self->_networkSignatureV6 copyWithZone:zone];
  v29 = *(v5 + 56);
  *(v5 + 56) = v28;

  v30 = [(NSString *)self->_routerIPv6 copyWithZone:zone];
  v31 = *(v5 + 72);
  *(v5 + 72) = v30;

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v14 = toCopy;
  if (self->_ifaceName)
  {
    [toCopy setIfaceName:?];
    toCopy = v14;
  }

  if (self->_macAddress)
  {
    [v14 setMacAddress:?];
    toCopy = v14;
  }

  if (*&self->_has)
  {
    toCopy[80] = self->_isPrimary;
    toCopy[84] |= 1u;
  }

  if (self->_confirmedIfaceName)
  {
    [v14 setConfirmedIfaceName:?];
  }

  if ([(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv4AddressesCount])
  {
    [v14 clearIpv4Addresses];
    ipv4AddressesCount = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv4AddressesCount];
    if (ipv4AddressesCount)
    {
      v6 = ipv4AddressesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv4AddressesAtIndex:i];
        [v14 addIpv4Addresses:v8];
      }
    }
  }

  if (self->_networkSignatureV4)
  {
    [v14 setNetworkSignatureV4:?];
  }

  if (self->_routerIPv4)
  {
    [v14 setRouterIPv4:?];
  }

  if ([(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv6AddressesCount])
  {
    [v14 clearIpv6Addresses];
    ipv6AddressesCount = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv6AddressesCount];
    if (ipv6AddressesCount)
    {
      v10 = ipv6AddressesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(HMAccessoryInfoProtoNetworkServiceEvent *)self ipv6AddressesAtIndex:j];
        [v14 addIpv6Addresses:v12];
      }
    }
  }

  if (self->_networkSignatureV6)
  {
    [v14 setNetworkSignatureV6:?];
  }

  v13 = v14;
  if (self->_routerIPv6)
  {
    [v14 setRouterIPv6:?];
    v13 = v14;
  }
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_ifaceName)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_macAddress)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteBOOLField();
  }

  if (self->_confirmedIfaceName)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_ipv4Addresses;
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

        PBDataWriterWriteStringField();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (self->_networkSignatureV4)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_routerIPv4)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_ipv6Addresses;
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

        PBDataWriterWriteStringField();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  if (self->_networkSignatureV6)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_routerIPv6)
  {
    PBDataWriterWriteStringField();
  }
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  ifaceName = self->_ifaceName;
  if (ifaceName)
  {
    [dictionary setObject:ifaceName forKey:@"ifaceName"];
  }

  macAddress = self->_macAddress;
  if (macAddress)
  {
    [v4 setObject:macAddress forKey:@"macAddress"];
  }

  if (*&self->_has)
  {
    v7 = [MEMORY[0x1E696AD98] numberWithBool:self->_isPrimary];
    [v4 setObject:v7 forKey:@"isPrimary"];
  }

  confirmedIfaceName = self->_confirmedIfaceName;
  if (confirmedIfaceName)
  {
    [v4 setObject:confirmedIfaceName forKey:@"confirmedIfaceName"];
  }

  ipv4Addresses = self->_ipv4Addresses;
  if (ipv4Addresses)
  {
    [v4 setObject:ipv4Addresses forKey:@"ipv4Addresses"];
  }

  networkSignatureV4 = self->_networkSignatureV4;
  if (networkSignatureV4)
  {
    [v4 setObject:networkSignatureV4 forKey:@"networkSignatureV4"];
  }

  routerIPv4 = self->_routerIPv4;
  if (routerIPv4)
  {
    [v4 setObject:routerIPv4 forKey:@"routerIPv4"];
  }

  ipv6Addresses = self->_ipv6Addresses;
  if (ipv6Addresses)
  {
    [v4 setObject:ipv6Addresses forKey:@"ipv6Addresses"];
  }

  networkSignatureV6 = self->_networkSignatureV6;
  if (networkSignatureV6)
  {
    [v4 setObject:networkSignatureV6 forKey:@"networkSignatureV6"];
  }

  routerIPv6 = self->_routerIPv6;
  if (routerIPv6)
  {
    [v4 setObject:routerIPv6 forKey:@"routerIPv6"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = HMAccessoryInfoProtoNetworkServiceEvent;
  v4 = [(HMAccessoryInfoProtoNetworkServiceEvent *)&v8 description];
  dictionaryRepresentation = [(HMAccessoryInfoProtoNetworkServiceEvent *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addIpv6Addresses:(id)addresses
{
  addressesCopy = addresses;
  ipv6Addresses = self->_ipv6Addresses;
  v8 = addressesCopy;
  if (!ipv6Addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ipv6Addresses;
    self->_ipv6Addresses = v6;

    addressesCopy = v8;
    ipv6Addresses = self->_ipv6Addresses;
  }

  [(NSMutableArray *)ipv6Addresses addObject:addressesCopy];
}

- (void)addIpv4Addresses:(id)addresses
{
  addressesCopy = addresses;
  ipv4Addresses = self->_ipv4Addresses;
  v8 = addressesCopy;
  if (!ipv4Addresses)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_ipv4Addresses;
    self->_ipv4Addresses = v6;

    addressesCopy = v8;
    ipv4Addresses = self->_ipv4Addresses;
  }

  [(NSMutableArray *)ipv4Addresses addObject:addressesCopy];
}

@end