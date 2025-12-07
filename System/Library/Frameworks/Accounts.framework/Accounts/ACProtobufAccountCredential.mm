@interface ACProtobufAccountCredential
- (BOOL)isEqual:(id)equal;
- (NSDictionary)credentialItemsDictionary;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addCredentialItems:(id)items;
- (void)addDirtyProperties:(id)properties;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setCredentialItemsDictionary:(id)dictionary;
- (void)writeTo:(id)to;
@end

@implementation ACProtobufAccountCredential

- (void)setCredentialItemsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  [(ACProtobufAccountCredential *)self clearCredentialItems];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __69__ACProtobufAccountCredential_Helpers__setCredentialItemsDictionary___block_invoke;
  v5[3] = &unk_1E7976BE8;
  v5[4] = self;
  [dictionaryCopy enumerateKeysAndObjectsUsingBlock:v5];
}

void __69__ACProtobufAccountCredential_Helpers__setCredentialItemsDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[ACProtobufKeyValuePair alloc] initWithValue:v5 forKey:v6];

  [*(a1 + 32) addCredentialItems:v7];
}

- (NSDictionary)credentialItemsDictionary
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{-[ACProtobufAccountCredential credentialItemsCount](self, "credentialItemsCount")}];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  credentialItems = [(ACProtobufAccountCredential *)self credentialItems];
  v5 = [credentialItems countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(credentialItems);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        value = [v9 value];
        v11 = [v9 key];
        [v3 setObject:value forKeyedSubscript:v11];
      }

      v6 = [credentialItems countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)addCredentialItems:(id)items
{
  itemsCopy = items;
  credentialItems = self->_credentialItems;
  v8 = itemsCopy;
  if (!credentialItems)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_credentialItems;
    self->_credentialItems = v6;

    itemsCopy = v8;
    credentialItems = self->_credentialItems;
  }

  [(NSMutableArray *)credentialItems addObject:itemsCopy];
}

- (void)addDirtyProperties:(id)properties
{
  propertiesCopy = properties;
  dirtyProperties = self->_dirtyProperties;
  v8 = propertiesCopy;
  if (!dirtyProperties)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_dirtyProperties;
    self->_dirtyProperties = v6;

    propertiesCopy = v8;
    dirtyProperties = self->_dirtyProperties;
  }

  [(NSMutableArray *)dirtyProperties addObject:propertiesCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = ACProtobufAccountCredential;
  v4 = [(ACProtobufAccountCredential *)&v8 description];
  dictionaryRepresentation = [(ACProtobufAccountCredential *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v20 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_credentialItems count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_credentialItems, "count")}];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v5 = self->_credentialItems;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v15 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"credentialItems"];
  }

  credentialType = self->_credentialType;
  if (credentialType)
  {
    [dictionary setObject:credentialType forKey:@"credentialType"];
  }

  dirtyProperties = self->_dirtyProperties;
  if (dirtyProperties)
  {
    [dictionary setObject:dirtyProperties forKey:@"dirtyProperties"];
  }

  v13 = [MEMORY[0x1E696AD98] numberWithBool:{self->_requiresTouchID, v15}];
  [dictionary setObject:v13 forKey:@"requiresTouchID"];

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
  v5 = self->_credentialItems;
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

  PBDataWriterWriteStringField();
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_dirtyProperties;
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

  PBDataWriterWriteBOOLField();
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(ACProtobufAccountCredential *)self credentialItemsCount])
  {
    [toCopy clearCredentialItems];
    credentialItemsCount = [(ACProtobufAccountCredential *)self credentialItemsCount];
    if (credentialItemsCount)
    {
      v5 = credentialItemsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(ACProtobufAccountCredential *)self credentialItemsAtIndex:i];
        [toCopy addCredentialItems:v7];
      }
    }
  }

  [toCopy setCredentialType:self->_credentialType];
  if ([(ACProtobufAccountCredential *)self dirtyPropertiesCount])
  {
    [toCopy clearDirtyProperties];
    dirtyPropertiesCount = [(ACProtobufAccountCredential *)self dirtyPropertiesCount];
    if (dirtyPropertiesCount)
    {
      v9 = dirtyPropertiesCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(ACProtobufAccountCredential *)self dirtyPropertiesAtIndex:j];
        [toCopy addDirtyProperties:v11];
      }
    }
  }

  toCopy[32] = self->_requiresTouchID;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v6 = self->_credentialItems;
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
        [v5 addCredentialItems:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v25 objects:v30 count:16];
    }

    while (v8);
  }

  v12 = [(NSString *)self->_credentialType copyWithZone:zone];
  v13 = *(v5 + 16);
  *(v5 + 16) = v12;

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_dirtyProperties;
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
        [v5 addDirtyProperties:v19];

        ++v18;
      }

      while (v16 != v18);
      v16 = [(NSMutableArray *)v14 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v16);
  }

  *(v5 + 32) = self->_requiresTouchID;
  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v8 = [equalCopy isMemberOfClass:objc_opt_class()] && ((credentialItems = self->_credentialItems, !(credentialItems | *(equalCopy + 1))) || -[NSMutableArray isEqual:](credentialItems, "isEqual:")) && ((credentialType = self->_credentialType, !(credentialType | *(equalCopy + 2))) || -[NSString isEqual:](credentialType, "isEqual:")) && ((dirtyProperties = self->_dirtyProperties, !(dirtyProperties | *(equalCopy + 3))) || -[NSMutableArray isEqual:](dirtyProperties, "isEqual:")) && self->_requiresTouchID == equalCopy[32];

  return v8;
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_credentialItems hash];
  v4 = [(NSString *)self->_credentialType hash]^ v3;
  return v4 ^ [(NSMutableArray *)self->_dirtyProperties hash]^ (2654435761 * self->_requiresTouchID);
}

- (void)mergeFrom:(id)from
{
  v25 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = *(fromCopy + 1);
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

        [(ACProtobufAccountCredential *)self addCredentialItems:*(*(&v19 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(ACProtobufAccountCredential *)self setCredentialType:?];
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = *(fromCopy + 3);
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

        [(ACProtobufAccountCredential *)self addDirtyProperties:*(*(&v15 + 1) + 8 * j), v15];
      }

      v12 = [v10 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v12);
  }

  self->_requiresTouchID = *(fromCopy + 32);
}

@end