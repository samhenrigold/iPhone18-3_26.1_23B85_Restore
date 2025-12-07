@interface NPKProtoStandaloneRequestHeader
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)protocolVersionAsString:(int)string;
- (unint64_t)hash;
- (void)addCachedHeroImages:(id)images;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation NPKProtoStandaloneRequestHeader

- (id)protocolVersionAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"Version1";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (void)addCachedHeroImages:(id)images
{
  imagesCopy = images;
  cachedHeroImages = self->_cachedHeroImages;
  v8 = imagesCopy;
  if (!cachedHeroImages)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_cachedHeroImages;
    self->_cachedHeroImages = v6;

    imagesCopy = v8;
    cachedHeroImages = self->_cachedHeroImages;
  }

  [(NSMutableArray *)cachedHeroImages addObject:imagesCopy];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = NPKProtoStandaloneRequestHeader;
  v4 = [(NPKProtoStandaloneRequestHeader *)&v8 description];
  dictionaryRepresentation = [(NPKProtoStandaloneRequestHeader *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (self->_protocolVersion == 1)
  {
    v4 = @"Version1";
  }

  else
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_protocolVersion];
  }

  [dictionary setObject:v4 forKey:@"protocolVersion"];

  sessionIdentifier = self->_sessionIdentifier;
  if (sessionIdentifier)
  {
    [dictionary setObject:sessionIdentifier forKey:@"sessionIdentifier"];
  }

  stepIdentifier = self->_stepIdentifier;
  if (stepIdentifier)
  {
    [dictionary setObject:stepIdentifier forKey:@"stepIdentifier"];
  }

  if ([(NSMutableArray *)self->_cachedHeroImages count])
  {
    v7 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_cachedHeroImages, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v8 = self->_cachedHeroImages;
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

    [dictionary setObject:v7 forKey:@"cachedHeroImages"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x277D85DE8];
  toCopy = to;
  PBDataWriterWriteInt32Field();
  if (self->_sessionIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_stepIdentifier)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_cachedHeroImages;
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
  toCopy[4] = self->_protocolVersion;
  if (self->_sessionIdentifier)
  {
    [toCopy setSessionIdentifier:?];
  }

  if (self->_stepIdentifier)
  {
    [toCopy setStepIdentifier:?];
  }

  if ([(NPKProtoStandaloneRequestHeader *)self cachedHeroImagesCount])
  {
    [toCopy clearCachedHeroImages];
    cachedHeroImagesCount = [(NPKProtoStandaloneRequestHeader *)self cachedHeroImagesCount];
    if (cachedHeroImagesCount)
    {
      v5 = cachedHeroImagesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(NPKProtoStandaloneRequestHeader *)self cachedHeroImagesAtIndex:i];
        [toCopy addCachedHeroImages:v7];
      }
    }
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_protocolVersion;
  v6 = [(NSString *)self->_sessionIdentifier copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  v8 = [(NSString *)self->_stepIdentifier copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = self->_cachedHeroImages;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v18;
    do
    {
      v14 = 0;
      do
      {
        if (*v18 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [*(*(&v17 + 1) + 8 * v14) copyWithZone:{zone, v17}];
        [v5 addCachedHeroImages:v15];

        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v12);
  }

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_protocolVersion == *(equalCopy + 4) && ((sessionIdentifier = self->_sessionIdentifier, !(sessionIdentifier | equalCopy[3])) || -[NSString isEqual:](sessionIdentifier, "isEqual:")) && ((stepIdentifier = self->_stepIdentifier, !(stepIdentifier | equalCopy[4])) || -[NSString isEqual:](stepIdentifier, "isEqual:")))
  {
    cachedHeroImages = self->_cachedHeroImages;
    if (cachedHeroImages | equalCopy[1])
    {
      v8 = [(NSMutableArray *)cachedHeroImages isEqual:?];
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
  v3 = 2654435761 * self->_protocolVersion;
  v4 = [(NSString *)self->_sessionIdentifier hash];
  v5 = v4 ^ [(NSString *)self->_stepIdentifier hash];
  return v5 ^ [(NSMutableArray *)self->_cachedHeroImages hash]^ v3;
}

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  self->_protocolVersion = *(fromCopy + 4);
  if (*(fromCopy + 3))
  {
    [(NPKProtoStandaloneRequestHeader *)self setSessionIdentifier:?];
  }

  if (*(fromCopy + 4))
  {
    [(NPKProtoStandaloneRequestHeader *)self setStepIdentifier:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 1);
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

        [(NPKProtoStandaloneRequestHeader *)self addCachedHeroImages:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end