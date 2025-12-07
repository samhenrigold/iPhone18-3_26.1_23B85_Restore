@interface NSPPrivacyProxyTransparencyOHTTPEntry
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addTargetInformation:(id)information;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NSPPrivacyProxyTransparencyOHTTPEntry

- (void)addTargetInformation:(id)information
{
  informationCopy = information;
  targetInformations = self->_targetInformations;
  v8 = informationCopy;
  if (!targetInformations)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_targetInformations;
    self->_targetInformations = v6;

    informationCopy = v8;
    targetInformations = self->_targetInformations;
  }

  [(NSMutableArray *)targetInformations addObject:informationCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = NSPPrivacyProxyTransparencyOHTTPEntry;
  v4 = [(NSPPrivacyProxyTransparencyOHTTPEntry *)&v8 description];
  dictionaryRepresentation = [(NSPPrivacyProxyTransparencyOHTTPEntry *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_configurationDeliveryStart];
  [dictionary setObject:v4 forKey:@"configurationDeliveryStart"];

  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_configurationDeliveryEnd];
  [dictionary setObject:v5 forKey:@"configurationDeliveryEnd"];

  if ([(NSMutableArray *)self->_targetInformations count])
  {
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_targetInformations, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_targetInformations;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    [dictionary setObject:v6 forKey:@"targetInformation"];
  }

  keyConfiguration = self->_keyConfiguration;
  if (keyConfiguration)
  {
    [dictionary setObject:keyConfiguration forKey:@"keyConfiguration"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  PBDataWriterWriteUint64Field();
  PBDataWriterWriteUint64Field();
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_targetInformations;
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

  if (!self->_keyConfiguration)
  {
    __assert_rtn("[NSPPrivacyProxyTransparencyOHTTPEntry writeTo:]", "NSPPrivacyProxyTransparencyOHTTPEntry.m", 170, "nil != self->_keyConfiguration");
  }

  PBDataWriterWriteDataField();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  toCopy[2] = self->_configurationDeliveryStart;
  v9 = toCopy;
  toCopy[1] = self->_configurationDeliveryEnd;
  if ([(NSPPrivacyProxyTransparencyOHTTPEntry *)self targetInformationsCount])
  {
    [v9 clearTargetInformations];
    targetInformationsCount = [(NSPPrivacyProxyTransparencyOHTTPEntry *)self targetInformationsCount];
    if (targetInformationsCount)
    {
      v6 = targetInformationsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(NSPPrivacyProxyTransparencyOHTTPEntry *)self targetInformationAtIndex:i];
        [v9 addTargetInformation:v8];
      }
    }
  }

  [v9 setKeyConfiguration:self->_keyConfiguration];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v5[2] = self->_configurationDeliveryStart;
  v5[1] = self->_configurationDeliveryEnd;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_targetInformations;
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
        [v5 addTargetInformation:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v12 = [(NSData *)self->_keyConfiguration copyWithZone:zone];
  v13 = v5[3];
  v5[3] = v12;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_configurationDeliveryStart == equalCopy[2] && self->_configurationDeliveryEnd == equalCopy[1] && ((targetInformations = self->_targetInformations, !(targetInformations | equalCopy[4])) || -[NSMutableArray isEqual:](targetInformations, "isEqual:")))
  {
    keyConfiguration = self->_keyConfiguration;
    if (keyConfiguration | equalCopy[3])
    {
      v7 = [(NSData *)keyConfiguration isEqual:?];
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

- (unint64_t)hash
{
  v3 = (2654435761u * self->_configurationDeliveryEnd) ^ (2654435761u * self->_configurationDeliveryStart);
  v4 = [(NSMutableArray *)self->_targetInformations hash];
  return v3 ^ v4 ^ [(NSData *)self->_keyConfiguration hash];
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  self->_configurationDeliveryStart = *(fromCopy + 2);
  self->_configurationDeliveryEnd = *(fromCopy + 1);
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 4);
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

        [(NSPPrivacyProxyTransparencyOHTTPEntry *)self addTargetInformation:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 3))
  {
    [(NSPPrivacyProxyTransparencyOHTTPEntry *)self setKeyConfiguration:?];
  }
}

@end