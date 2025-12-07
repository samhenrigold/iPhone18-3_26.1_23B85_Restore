@interface ABCPbSigGrantRequest
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addSigRequest:(id)request;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation ABCPbSigGrantRequest

- (void)addSigRequest:(id)request
{
  requestCopy = request;
  sigRequests = self->_sigRequests;
  v8 = requestCopy;
  if (!sigRequests)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_sigRequests;
    self->_sigRequests = v6;

    requestCopy = v8;
    sigRequests = self->_sigRequests;
  }

  [(NSMutableArray *)sigRequests addObject:requestCopy];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = ABCPbSigGrantRequest;
  v4 = [(ABCPbSigGrantRequest *)&v8 description];
  dictionaryRepresentation = [(ABCPbSigGrantRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:self->_ver];
    [dictionary setObject:v4 forKey:@"ver"];
  }

  deviceModel = self->_deviceModel;
  if (deviceModel)
  {
    [dictionary setObject:deviceModel forKey:@"device_model"];
  }

  buildPlatform = self->_buildPlatform;
  if (buildPlatform)
  {
    [dictionary setObject:buildPlatform forKey:@"build_platform"];
  }

  if ([(NSMutableArray *)self->_sigRequests count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_sigRequests, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_sigRequests;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"sig_request"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  if (self->_deviceModel)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_buildPlatform)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_sigRequests;
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
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[8] = self->_ver;
    *(toCopy + 36) |= 1u;
  }

  v9 = toCopy;
  if (self->_deviceModel)
  {
    [toCopy setDeviceModel:?];
  }

  if (self->_buildPlatform)
  {
    [v9 setBuildPlatform:?];
  }

  if ([(ABCPbSigGrantRequest *)self sigRequestsCount])
  {
    [v9 clearSigRequests];
    sigRequestsCount = [(ABCPbSigGrantRequest *)self sigRequestsCount];
    if (sigRequestsCount)
    {
      v6 = sigRequestsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(ABCPbSigGrantRequest *)self sigRequestAtIndex:i];
        [v9 addSigRequest:v8];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 32) = self->_ver;
    *(v5 + 36) |= 1u;
  }

  v7 = [(NSString *)self->_deviceModel copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_buildPlatform copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_sigRequests;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v18 + 1) + 8 * v15) copyWithZone:{zone, v18}];
        [v6 addSigRequest:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_ver != *(equalCopy + 8))
    {
      goto LABEL_13;
    }
  }

  else if (*(equalCopy + 36))
  {
LABEL_13:
    v8 = 0;
    goto LABEL_14;
  }

  deviceModel = self->_deviceModel;
  if (deviceModel | *(equalCopy + 2) && ![(NSString *)deviceModel isEqual:?])
  {
    goto LABEL_13;
  }

  buildPlatform = self->_buildPlatform;
  if (buildPlatform | *(equalCopy + 1))
  {
    if (![(NSString *)buildPlatform isEqual:?])
    {
      goto LABEL_13;
    }
  }

  sigRequests = self->_sigRequests;
  if (sigRequests | *(equalCopy + 3))
  {
    v8 = [(NSMutableArray *)sigRequests isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_ver;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_deviceModel hash]^ v3;
  v5 = [(NSString *)self->_buildPlatform hash];
  return v4 ^ v5 ^ [(NSMutableArray *)self->_sigRequests hash];
}

- (void)mergeFrom:(id)from
{
  v16 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[9])
  {
    self->_ver = fromCopy[8];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    [(ABCPbSigGrantRequest *)self setDeviceModel:?];
  }

  if (*(v5 + 1))
  {
    [(ABCPbSigGrantRequest *)self setBuildPlatform:?];
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = *(v5 + 3);
  v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(ABCPbSigGrantRequest *)self addSigRequest:*(*(&v11 + 1) + 8 * i), v11];
      }

      v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

@end