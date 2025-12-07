@interface CPLSuggestionRecordList
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addAsset:(id)asset;
- (void)addMemory:(id)memory;
- (void)addPerson:(id)person;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation CPLSuggestionRecordList

- (void)mergeFrom:(id)from
{
  v35 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = *(fromCopy + 1);
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [(CPLSuggestionRecordList *)self addAsset:*(*(&v28 + 1) + 8 * v9++)];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 36))
  {
    self->_version = *(fromCopy + 8);
    *&self->_has |= 1u;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = *(fromCopy + 3);
  v11 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(CPLSuggestionRecordList *)self addPerson:*(*(&v24 + 1) + 8 * v14++)];
      }

      while (v12 != v14);
      v12 = [v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = *(fromCopy + 2);
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        [(CPLSuggestionRecordList *)self addMemory:*(*(&v20 + 1) + 8 * v19++), v20];
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (unint64_t)hash
{
  v3 = [(NSMutableArray *)self->_assets hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_version;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSMutableArray *)self->_persons hash];
  return v5 ^ v6 ^ [(NSMutableArray *)self->_memorys hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_13;
  }

  assets = self->_assets;
  if (assets | *(equalCopy + 1))
  {
    if (![(NSMutableArray *)assets isEqual:?])
    {
      goto LABEL_13;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 36) & 1) == 0 || self->_version != *(equalCopy + 8))
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

  persons = self->_persons;
  if (persons | *(equalCopy + 3) && ![(NSMutableArray *)persons isEqual:?])
  {
    goto LABEL_13;
  }

  memorys = self->_memorys;
  if (memorys | *(equalCopy + 2))
  {
    v8 = [(NSMutableArray *)memorys isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_14:

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v6 = self->_assets;
  v7 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v34;
    do
    {
      v10 = 0;
      do
      {
        if (*v34 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [*(*(&v33 + 1) + 8 * v10) copyWithZone:zone];
        [v5 addAsset:v11];

        ++v10;
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)v6 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v8);
  }

  if (*&self->_has)
  {
    *(v5 + 32) = self->_version;
    *(v5 + 36) |= 1u;
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v12 = self->_persons;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v29 + 1) + 8 * v16) copyWithZone:zone];
        [v5 addPerson:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v29 objects:v38 count:16];
    }

    while (v14);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v18 = self->_memorys;
  v19 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v26;
    do
    {
      v22 = 0;
      do
      {
        if (*v26 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = [*(*(&v25 + 1) + 8 * v22) copyWithZone:{zone, v25}];
        [v5 addMemory:v23];

        ++v22;
      }

      while (v20 != v22);
      v20 = [(NSMutableArray *)v18 countByEnumeratingWithState:&v25 objects:v37 count:16];
    }

    while (v20);
  }

  return v5;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if ([(CPLSuggestionRecordList *)self assetsCount])
  {
    [toCopy clearAssets];
    assetsCount = [(CPLSuggestionRecordList *)self assetsCount];
    if (assetsCount)
    {
      v5 = assetsCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(CPLSuggestionRecordList *)self assetAtIndex:i];
        [toCopy addAsset:v7];
      }
    }
  }

  if (*&self->_has)
  {
    *(toCopy + 8) = self->_version;
    *(toCopy + 36) |= 1u;
  }

  if ([(CPLSuggestionRecordList *)self personsCount])
  {
    [toCopy clearPersons];
    personsCount = [(CPLSuggestionRecordList *)self personsCount];
    if (personsCount)
    {
      v9 = personsCount;
      for (j = 0; j != v9; ++j)
      {
        v11 = [(CPLSuggestionRecordList *)self personAtIndex:j];
        [toCopy addPerson:v11];
      }
    }
  }

  if ([(CPLSuggestionRecordList *)self memorysCount])
  {
    [toCopy clearMemorys];
    memorysCount = [(CPLSuggestionRecordList *)self memorysCount];
    if (memorysCount)
    {
      v13 = memorysCount;
      for (k = 0; k != v13; ++k)
      {
        v15 = [(CPLSuggestionRecordList *)self memoryAtIndex:k];
        [toCopy addMemory:v15];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v35 = *MEMORY[0x1E69E9840];
  toCopy = to;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = self->_assets;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      v9 = 0;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        PBDataWriterWriteSubmessage();
        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v28 objects:v34 count:16];
    }

    while (v7);
  }

  if (*&self->_has)
  {
    PBDataWriterWriteUint32Field();
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = self->_persons;
  v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v25;
    do
    {
      v14 = 0;
      do
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        PBDataWriterWriteSubmessage();
        ++v14;
      }

      while (v12 != v14);
      v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v24 objects:v33 count:16];
    }

    while (v12);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v15 = self->_memorys;
  v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        PBDataWriterWriteSubmessage();
        ++v19;
      }

      while (v17 != v19);
      v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v20 objects:v32 count:16];
    }

    while (v17);
  }
}

- (id)dictionaryRepresentation
{
  v42 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if ([(NSMutableArray *)self->_assets count])
  {
    v4 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_assets, "count")}];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v5 = self->_assets;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v36;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v36 != v8)
          {
            objc_enumerationMutation(v5);
          }

          dictionaryRepresentation = [*(*(&v35 + 1) + 8 * i) dictionaryRepresentation];
          [v4 addObject:dictionaryRepresentation];
        }

        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v35 objects:v41 count:16];
      }

      while (v7);
    }

    [dictionary setObject:v4 forKey:@"asset"];
  }

  if (*&self->_has)
  {
    v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:self->_version];
    [dictionary setObject:v11 forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_persons count])
  {
    v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_persons, "count")}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v13 = self->_persons;
    v14 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v32;
      do
      {
        for (j = 0; j != v15; ++j)
        {
          if (*v32 != v16)
          {
            objc_enumerationMutation(v13);
          }

          dictionaryRepresentation2 = [*(*(&v31 + 1) + 8 * j) dictionaryRepresentation];
          [v12 addObject:dictionaryRepresentation2];
        }

        v15 = [(NSMutableArray *)v13 countByEnumeratingWithState:&v31 objects:v40 count:16];
      }

      while (v15);
    }

    [dictionary setObject:v12 forKey:@"person"];
  }

  if ([(NSMutableArray *)self->_memorys count])
  {
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_memorys, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v20 = self->_memorys;
    v21 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v28;
      do
      {
        for (k = 0; k != v22; ++k)
        {
          if (*v28 != v23)
          {
            objc_enumerationMutation(v20);
          }

          dictionaryRepresentation3 = [*(*(&v27 + 1) + 8 * k) dictionaryRepresentation];
          [v19 addObject:dictionaryRepresentation3];
        }

        v22 = [(NSMutableArray *)v20 countByEnumeratingWithState:&v27 objects:v39 count:16];
      }

      while (v22);
    }

    [dictionary setObject:v19 forKey:@"memory"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = CPLSuggestionRecordList;
  v4 = [(CPLSuggestionRecordList *)&v8 description];
  dictionaryRepresentation = [(CPLSuggestionRecordList *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addMemory:(id)memory
{
  memoryCopy = memory;
  memorys = self->_memorys;
  v8 = memoryCopy;
  if (!memorys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_memorys;
    self->_memorys = v6;

    memoryCopy = v8;
    memorys = self->_memorys;
  }

  [(NSMutableArray *)memorys addObject:memoryCopy];
}

- (void)addPerson:(id)person
{
  personCopy = person;
  persons = self->_persons;
  v8 = personCopy;
  if (!persons)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_persons;
    self->_persons = v6;

    personCopy = v8;
    persons = self->_persons;
  }

  [(NSMutableArray *)persons addObject:personCopy];
}

- (void)addAsset:(id)asset
{
  assetCopy = asset;
  assets = self->_assets;
  v8 = assetCopy;
  if (!assets)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_assets;
    self->_assets = v6;

    assetCopy = v8;
    assets = self->_assets;
  }

  [(NSMutableArray *)assets addObject:assetCopy];
}

@end