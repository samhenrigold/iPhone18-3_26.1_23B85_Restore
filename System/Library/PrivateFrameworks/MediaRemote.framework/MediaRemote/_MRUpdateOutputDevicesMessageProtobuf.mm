@interface _MRUpdateOutputDevicesMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addClusterAwareOutputDevices:(id)devices;
- (void)addOutputDevices:(id)devices;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRUpdateOutputDevicesMessageProtobuf

- (void)addOutputDevices:(id)devices
{
  devicesCopy = devices;
  outputDevices = self->_outputDevices;
  v8 = devicesCopy;
  if (!outputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDevices;
    self->_outputDevices = v6;

    devicesCopy = v8;
    outputDevices = self->_outputDevices;
  }

  [(NSMutableArray *)outputDevices addObject:devicesCopy];
}

- (void)addClusterAwareOutputDevices:(id)devices
{
  devicesCopy = devices;
  clusterAwareOutputDevices = self->_clusterAwareOutputDevices;
  v8 = devicesCopy;
  if (!clusterAwareOutputDevices)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_clusterAwareOutputDevices;
    self->_clusterAwareOutputDevices = v6;

    devicesCopy = v8;
    clusterAwareOutputDevices = self->_clusterAwareOutputDevices;
  }

  [(NSMutableArray *)clusterAwareOutputDevices addObject:devicesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRUpdateOutputDevicesMessageProtobuf;
  v4 = [(_MRUpdateOutputDevicesMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRUpdateOutputDevicesMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v30 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_outputDevices count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_outputDevices, "count")}];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v5 = self->_outputDevices;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v25;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v25 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v24 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"outputDevices"];
  }

  endpointUID = self->_endpointUID;
  if (endpointUID)
  {
    [dictionary setObject:endpointUID forKey:@"endpointUID"];
  }

  if ([(NSMutableArray *)self->_clusterAwareOutputDevices count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_clusterAwareOutputDevices, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v13 = self->_clusterAwareOutputDevices;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v20 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"clusterAwareOutputDevices"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = self->_outputDevices;
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

  if (self->_endpointUID)
  {
    PBDataWriterWriteStringField();
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_clusterAwareOutputDevices;
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
  if ([(_MRUpdateOutputDevicesMessageProtobuf *)self outputDevicesCount])
  {
    [toCopy clearOutputDevices];
    outputDevicesCount = [(_MRUpdateOutputDevicesMessageProtobuf *)self outputDevicesCount];
    if (outputDevicesCount)
    {
      v5 = outputDevicesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRUpdateOutputDevicesMessageProtobuf *)self outputDevicesAtIndex:i];
        [toCopy addOutputDevices:v7];
      }
    }
  }

  if (self->_endpointUID)
  {
    [toCopy setEndpointUID:?];
  }

  if ([(_MRUpdateOutputDevicesMessageProtobuf *)self clusterAwareOutputDevicesCount])
  {
    [toCopy clearClusterAwareOutputDevices];
    clusterAwareOutputDevicesCount = [(_MRUpdateOutputDevicesMessageProtobuf *)self clusterAwareOutputDevicesCount];
    if (clusterAwareOutputDevicesCount)
    {
      v9 = clusterAwareOutputDevicesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(_MRUpdateOutputDevicesMessageProtobuf *)self clusterAwareOutputDevicesAtIndex:j];
        [toCopy addClusterAwareOutputDevices:v11];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_outputDevices;
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
        [v5 addOutputDevices:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_endpointUID copyWithZone:zone];
  v13 = v5[2];
  v5[2] = v12;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_clusterAwareOutputDevices;
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
        [v5 addClusterAwareOutputDevices:v19];

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
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((outputDevices = self->_outputDevices, !(outputDevices | equalCopy[3])) || -[NSMutableArray isEqual:](outputDevices, "isEqual:")) && ((endpointUID = self->_endpointUID, !(endpointUID | equalCopy[2])) || -[NSString isEqual:](endpointUID, "isEqual:")))
  {
    clusterAwareOutputDevices = self->_clusterAwareOutputDevices;
    if (clusterAwareOutputDevices | equalCopy[1])
    {
      v8 = [(NSMutableArray *)clusterAwareOutputDevices isEqual:?];
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
  v3 = [(NSMutableArray *)self->_outputDevices hash];
  v4 = [(NSString *)self->_endpointUID hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_clusterAwareOutputDevices hash];
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = fromCopy[3];
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

        [(_MRUpdateOutputDevicesMessageProtobuf *)self addOutputDevices:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (fromCopy[2])
  {
    [(_MRUpdateOutputDevicesMessageProtobuf *)self setEndpointUID:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = fromCopy[1];
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

        [(_MRUpdateOutputDevicesMessageProtobuf *)self addClusterAwareOutputDevices:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }
}

@end