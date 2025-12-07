@interface _MRDiscoveryUpdateEndpointsProtobufMessage
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addEndpoints:(id)endpoints;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRDiscoveryUpdateEndpointsProtobufMessage

- (void)addEndpoints:(id)endpoints
{
  endpointsCopy = endpoints;
  endpoints = self->_endpoints;
  v8 = endpointsCopy;
  if (!endpoints)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_endpoints;
    self->_endpoints = v6;

    endpointsCopy = v8;
    endpoints = self->_endpoints;
  }

  [(NSMutableArray *)endpoints addObject:endpointsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRDiscoveryUpdateEndpointsProtobufMessage;
  v4 = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)&v8 description];
  dictionaryRepresentation = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_endpoints count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_endpoints, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v5 = self->_endpoints;
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

    [dictionary setObject:v4 forKey:@"endpoints"];
  }

  configuration = self->_configuration;
  if (configuration)
  {
    dictionaryRepresentation2 = [(_MRDiscoverySessionConfigurationProtobuf *)configuration dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation2 forKey:@"configuration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_endpoints;
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

  if (self->_configuration)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRDiscoveryUpdateEndpointsProtobufMessage *)self endpointsCount])
  {
    [toCopy clearEndpoints];
    endpointsCount = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self endpointsCount];
    if (endpointsCount)
    {
      v5 = endpointsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self endpointsAtIndex:i];
        [toCopy addEndpoints:v7];
      }
    }
  }

  if (self->_configuration)
  {
    [toCopy setConfiguration:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_endpoints;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v15 + 1) + 8 * v10) copyWithZone:{zone, v15}];
        [v5 addEndpoints:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(_MRDiscoverySessionConfigurationProtobuf *)self->_configuration copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((endpoints = self->_endpoints, !(endpoints | equalCopy[2])) || -[NSMutableArray isEqual:](endpoints, "isEqual:")))
  {
    configuration = self->_configuration;
    if (configuration | equalCopy[1])
    {
      v7 = [(_MRDiscoverySessionConfigurationProtobuf *)configuration isEqual:?];
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
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = fromCopy[2];
  v6 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self addEndpoints:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  configuration = self->_configuration;
  v11 = fromCopy[1];
  if (configuration)
  {
    if (v11)
    {
      [(_MRDiscoverySessionConfigurationProtobuf *)configuration mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(_MRDiscoveryUpdateEndpointsProtobufMessage *)self setConfiguration:?];
  }
}

@end