@interface _MRRemoveOutputDevicesMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addOutputDeviceUIDs:(id)ds;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRRemoveOutputDevicesMessageProtobuf

- (void)addOutputDeviceUIDs:(id)ds
{
  dsCopy = ds;
  outputDeviceUIDs = self->_outputDeviceUIDs;
  v8 = dsCopy;
  if (!outputDeviceUIDs)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_outputDeviceUIDs;
    self->_outputDeviceUIDs = v6;

    dsCopy = v8;
    outputDeviceUIDs = self->_outputDeviceUIDs;
  }

  [(NSMutableArray *)outputDeviceUIDs addObject:dsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRRemoveOutputDevicesMessageProtobuf;
  v4 = [(_MRRemoveOutputDevicesMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRemoveOutputDevicesMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  outputDeviceUIDs = self->_outputDeviceUIDs;
  if (outputDeviceUIDs)
  {
    [dictionary setObject:outputDeviceUIDs forKey:@"outputDeviceUIDs"];
  }

  endpointUID = self->_endpointUID;
  if (endpointUID)
  {
    [v4 setObject:endpointUID forKey:@"endpointUID"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_outputDeviceUIDs;
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

  if (self->_endpointUID)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(_MRRemoveOutputDevicesMessageProtobuf *)self outputDeviceUIDsCount])
  {
    [toCopy clearOutputDeviceUIDs];
    outputDeviceUIDsCount = [(_MRRemoveOutputDevicesMessageProtobuf *)self outputDeviceUIDsCount];
    if (outputDeviceUIDsCount)
    {
      v5 = outputDeviceUIDsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRRemoveOutputDevicesMessageProtobuf *)self outputDeviceUIDsAtIndex:i];
        [toCopy addOutputDeviceUIDs:v7];
      }
    }
  }

  if (self->_endpointUID)
  {
    [toCopy setEndpointUID:?];
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
  v6 = self->_outputDeviceUIDs;
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
        [v5 addOutputDeviceUIDs:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_endpointUID copyWithZone:zone];
  v13 = v5[1];
  v5[1] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((outputDeviceUIDs = self->_outputDeviceUIDs, !(outputDeviceUIDs | equalCopy[2])) || -[NSMutableArray isEqual:](outputDeviceUIDs, "isEqual:")))
  {
    endpointUID = self->_endpointUID;
    if (endpointUID | equalCopy[1])
    {
      v7 = [(NSString *)endpointUID isEqual:?];
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
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = fromCopy[2];
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

        [(_MRRemoveOutputDevicesMessageProtobuf *)self addOutputDeviceUIDs:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (fromCopy[1])
  {
    [(_MRRemoveOutputDevicesMessageProtobuf *)self setEndpointUID:?];
  }
}

@end