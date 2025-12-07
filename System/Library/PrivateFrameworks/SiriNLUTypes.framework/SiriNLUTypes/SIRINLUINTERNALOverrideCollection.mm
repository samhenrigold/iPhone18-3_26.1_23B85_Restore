@interface SIRINLUINTERNALOverrideCollection
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addComponentOverrides:(id)overrides;
- (void)addParseOverrides:(id)overrides;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation SIRINLUINTERNALOverrideCollection

- (void)mergeFrom:(id)from
{
  v26 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  v5 = fromCopy;
  if (fromCopy[6])
  {
    self->_creationTimestampMsSinceUnixEpoch = fromCopy[1];
    *&self->_has |= 1u;
  }

  if (fromCopy[2])
  {
    [(SIRINLUINTERNALOverrideCollection *)self setAssetId:?];
  }

  if (*(v5 + 5))
  {
    [(SIRINLUINTERNALOverrideCollection *)self setVersion:?];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = *(v5 + 4);
  v7 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(SIRINLUINTERNALOverrideCollection *)self addParseOverrides:*(*(&v20 + 1) + 8 * i)];
      }

      v8 = [v6 countByEnumeratingWithState:&v20 objects:v25 count:16];
    }

    while (v8);
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v11 = *(v5 + 3);
  v12 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v17;
    do
    {
      for (j = 0; j != v13; ++j)
      {
        if (*v17 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(SIRINLUINTERNALOverrideCollection *)self addComponentOverrides:*(*(&v16 + 1) + 8 * j), v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v13);
  }
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761u * self->_creationTimestampMsSinceUnixEpoch;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_assetId hash]^ v3;
  v5 = [(NSString *)self->_version hash];
  v6 = v4 ^ v5 ^ [(NSMutableArray *)self->_parseOverrides hash];
  return v6 ^ [(NSMutableArray *)self->_componentOverrides hash];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_15;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 48) & 1) == 0 || self->_creationTimestampMsSinceUnixEpoch != *(equalCopy + 1))
    {
      goto LABEL_15;
    }
  }

  else if (*(equalCopy + 48))
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  assetId = self->_assetId;
  if (assetId | *(equalCopy + 2) && ![(NSString *)assetId isEqual:?])
  {
    goto LABEL_15;
  }

  version = self->_version;
  if (version | *(equalCopy + 5))
  {
    if (![(NSString *)version isEqual:?])
    {
      goto LABEL_15;
    }
  }

  parseOverrides = self->_parseOverrides;
  if (parseOverrides | *(equalCopy + 4))
  {
    if (![(NSMutableArray *)parseOverrides isEqual:?])
    {
      goto LABEL_15;
    }
  }

  componentOverrides = self->_componentOverrides;
  if (componentOverrides | *(equalCopy + 3))
  {
    v9 = [(NSMutableArray *)componentOverrides isEqual:?];
  }

  else
  {
    v9 = 1;
  }

LABEL_16:

  return v9;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v34 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_creationTimestampMsSinceUnixEpoch;
    *(v5 + 48) |= 1u;
  }

  v7 = [(NSString *)self->_assetId copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSString *)self->_version copyWithZone:zone];
  v10 = v6[5];
  v6[5] = v9;

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v11 = self->_parseOverrides;
  v12 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v29;
    do
    {
      v15 = 0;
      do
      {
        if (*v29 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = [*(*(&v28 + 1) + 8 * v15) copyWithZone:zone];
        [v6 addParseOverrides:v16];

        ++v15;
      }

      while (v13 != v15);
      v13 = [(NSMutableArray *)v11 countByEnumeratingWithState:&v28 objects:v33 count:16];
    }

    while (v13);
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v17 = self->_componentOverrides;
  v18 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v25;
    do
    {
      v21 = 0;
      do
      {
        if (*v25 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = [*(*(&v24 + 1) + 8 * v21) copyWithZone:{zone, v24}];
        [v6 addComponentOverrides:v22];

        ++v21;
      }

      while (v19 != v21);
      v19 = [(NSMutableArray *)v17 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v19);
  }

  return v6;
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[1] = self->_creationTimestampMsSinceUnixEpoch;
    *(toCopy + 48) |= 1u;
  }

  v13 = toCopy;
  if (self->_assetId)
  {
    [toCopy setAssetId:?];
  }

  if (self->_version)
  {
    [v13 setVersion:?];
  }

  if ([(SIRINLUINTERNALOverrideCollection *)self parseOverridesCount])
  {
    [v13 clearParseOverrides];
    parseOverridesCount = [(SIRINLUINTERNALOverrideCollection *)self parseOverridesCount];
    if (parseOverridesCount)
    {
      v6 = parseOverridesCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(SIRINLUINTERNALOverrideCollection *)self parseOverridesAtIndex:i];
        [v13 addParseOverrides:v8];
      }
    }
  }

  if ([(SIRINLUINTERNALOverrideCollection *)self componentOverridesCount])
  {
    [v13 clearComponentOverrides];
    componentOverridesCount = [(SIRINLUINTERNALOverrideCollection *)self componentOverridesCount];
    if (componentOverridesCount)
    {
      v10 = componentOverridesCount;
      for (j = 0; j != v10; ++j)
      {
        v12 = [(SIRINLUINTERNALOverrideCollection *)self componentOverridesAtIndex:j];
        [v13 addComponentOverrides:v12];
      }
    }
  }
}

- (void)writeTo:(id)to
{
  v25 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (*&self->_has)
  {
    PBDataWriterWriteUint64Field();
  }

  if (self->_assetId)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_version)
  {
    PBDataWriterWriteStringField();
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = self->_parseOverrides;
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

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v10 = self->_componentOverrides;
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

- (id)dictionaryRepresentation
{
  v32 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_creationTimestampMsSinceUnixEpoch];
    [dictionary setObject:v4 forKey:@"creation_timestamp_ms_since_unix_epoch"];
  }

  assetId = self->_assetId;
  if (assetId)
  {
    [dictionary setObject:assetId forKey:@"asset_id"];
  }

  version = self->_version;
  if (version)
  {
    [dictionary setObject:version forKey:@"version"];
  }

  if ([(NSMutableArray *)self->_parseOverrides count])
  {
    v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_parseOverrides, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v8 = self->_parseOverrides;
    v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(v8);
          }

          dictionaryRepresentation = [*(*(&v26 + 1) + 8 * i) dictionaryRepresentation];
          [v7 addObject:dictionaryRepresentation];
        }

        v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v10);
    }

    [dictionary setObject:v7 forKey:@"parse_overrides"];
  }

  if ([(NSMutableArray *)self->_componentOverrides count])
  {
    v14 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_componentOverrides, "count")}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v15 = self->_componentOverrides;
    v16 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v23;
      do
      {
        for (j = 0; j != v17; ++j)
        {
          if (*v23 != v18)
          {
            objc_enumerationMutation(v15);
          }

          dictionaryRepresentation2 = [*(*(&v22 + 1) + 8 * j) dictionaryRepresentation];
          [v14 addObject:dictionaryRepresentation2];
        }

        v17 = [(NSMutableArray *)v15 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v17);
    }

    [dictionary setObject:v14 forKey:@"component_overrides"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = SIRINLUINTERNALOverrideCollection;
  v4 = [(SIRINLUINTERNALOverrideCollection *)&v8 description];
  dictionaryRepresentation = [(SIRINLUINTERNALOverrideCollection *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (void)addComponentOverrides:(id)overrides
{
  overridesCopy = overrides;
  componentOverrides = self->_componentOverrides;
  v8 = overridesCopy;
  if (!componentOverrides)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_componentOverrides;
    self->_componentOverrides = v6;

    overridesCopy = v8;
    componentOverrides = self->_componentOverrides;
  }

  [(NSMutableArray *)componentOverrides addObject:overridesCopy];
}

- (void)addParseOverrides:(id)overrides
{
  overridesCopy = overrides;
  parseOverrides = self->_parseOverrides;
  v8 = overridesCopy;
  if (!parseOverrides)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_parseOverrides;
    self->_parseOverrides = v6;

    overridesCopy = v8;
    parseOverrides = self->_parseOverrides;
  }

  [(NSMutableArray *)parseOverrides addObject:overridesCopy];
}

@end