@interface VCPBIntentDefinition
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (void)addFiles:(id)files;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation VCPBIntentDefinition

- (void)mergeFrom:(id)from
{
  v15 = *MEMORY[0x277D85DE8];
  fromCopy = from;
  if (*(fromCopy + 1))
  {
    [(VCPBIntentDefinition *)self setAssociatedBundleID:?];
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = *(fromCopy + 2);
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

        [(VCPBIntentDefinition *)self addFiles:*(*(&v10 + 1) + 8 * i), v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((associatedBundleID = self->_associatedBundleID, !(associatedBundleID | equalCopy[1])) || -[NSString isEqual:](associatedBundleID, "isEqual:")))
  {
    files = self->_files;
    if (files | equalCopy[2])
    {
      v7 = [(NSMutableArray *)files isEqual:?];
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

- (id)copyWithZone:(_NSZone *)zone
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_associatedBundleID copyWithZone:zone];
  v7 = v5[1];
  v5[1] = v6;

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = self->_files;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v15 + 1) + 8 * v12) copyWithZone:{zone, v15}];
        [v5 addFiles:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v10);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  [toCopy setAssociatedBundleID:self->_associatedBundleID];
  if ([(VCPBIntentDefinition *)self filesCount])
  {
    [toCopy clearFiles];
    filesCount = [(VCPBIntentDefinition *)self filesCount];
    if (filesCount)
    {
      v5 = filesCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(VCPBIntentDefinition *)self filesAtIndex:i];
        [toCopy addFiles:v7];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v16 = *MEMORY[0x277D85DE8];
  toCopy = to;
  if (!self->_associatedBundleID)
  {
    __assert_rtn("[VCPBIntentDefinition writeTo:]", "VCPBIntentDefinition.m", 126, "nil != self->_associatedBundleID");
  }

  v5 = toCopy;
  PBDataWriterWriteStringField();
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v6 = self->_files;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        PBDataWriterWriteSubmessage();
        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (id)dictionaryRepresentation
{
  v19 = *MEMORY[0x277D85DE8];
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = dictionary;
  associatedBundleID = self->_associatedBundleID;
  if (associatedBundleID)
  {
    [dictionary setObject:associatedBundleID forKey:@"associatedBundleID"];
  }

  if ([(NSMutableArray *)self->_files count])
  {
    v6 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSMutableArray count](self->_files, "count")}];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = self->_files;
    v8 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

          dictionaryRepresentation = [*(*(&v14 + 1) + 8 * i) dictionaryRepresentation];
          [v6 addObject:dictionaryRepresentation];
        }

        v9 = [(NSMutableArray *)v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }

    [v4 setObject:v6 forKey:@"files"];
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = VCPBIntentDefinition;
  v4 = [(VCPBIntentDefinition *)&v8 description];
  dictionaryRepresentation = [(VCPBIntentDefinition *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addFiles:(id)files
{
  filesCopy = files;
  files = self->_files;
  v8 = filesCopy;
  if (!files)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v7 = self->_files;
    self->_files = v6;

    filesCopy = v8;
    files = self->_files;
  }

  [(NSMutableArray *)files addObject:filesCopy];
}

@end