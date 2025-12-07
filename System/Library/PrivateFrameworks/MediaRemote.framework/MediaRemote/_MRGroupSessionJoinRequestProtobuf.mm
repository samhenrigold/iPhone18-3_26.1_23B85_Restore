@interface _MRGroupSessionJoinRequestProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addOobKeys:(id)keys;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionJoinRequestProtobuf

- (void)addOobKeys:(id)keys
{
  keysCopy = keys;
  oobKeys = self->_oobKeys;
  v8 = keysCopy;
  if (!oobKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_oobKeys;
    self->_oobKeys = v6;

    keysCopy = v8;
    oobKeys = self->_oobKeys;
  }

  [(NSMutableArray *)oobKeys addObject:keysCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionJoinRequestProtobuf;
  v4 = [(_MRGroupSessionJoinRequestProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionJoinRequestProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  identity = self->_identity;
  if (identity)
  {
    dictionaryRepresentation = [(_MRUserIdentityProtobuf *)identity dictionaryRepresentation];
    [dictionary setObject:dictionaryRepresentation forKey:@"identity"];
  }

  oobKeys = self->_oobKeys;
  if (oobKeys)
  {
    [dictionary setObject:oobKeys forKey:@"oobKeys"];
  }

  identifier = self->_identifier;
  if (identifier)
  {
    [dictionary setObject:identifier forKey:@"identifier"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_identity)
  {
    PBDataWriterWriteSubmessage();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_oobKeys;
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

  if (self->_identifier)
  {
    PBDataWriterWriteStringField();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (self->_identity)
  {
    [toCopy setIdentity:?];
  }

  if ([(_MRGroupSessionJoinRequestProtobuf *)self oobKeysCount])
  {
    [toCopy clearOobKeys];
    oobKeysCount = [(_MRGroupSessionJoinRequestProtobuf *)self oobKeysCount];
    if (oobKeysCount)
    {
      v5 = oobKeysCount;
      for (i = 0; i != v5; ++i)
      {
        v7 = [(_MRGroupSessionJoinRequestProtobuf *)self oobKeysAtIndex:i];
        [toCopy addOobKeys:v7];
      }
    }
  }

  if (self->_identifier)
  {
    [toCopy setIdentifier:?];
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(_MRUserIdentityProtobuf *)self->_identity copyWithZone:zone];
  v7 = v5[2];
  v5[2] = v6;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v8 = self->_oobKeys;
  v9 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v18;
    do
    {
      v12 = 0;
      do
      {
        if (*v18 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v17 + 1) + 8 * v12) copyWithZone:{zone, v17}];
        [v5 addOobKeys:v13];

        ++v12;
      }

      while (v10 != v12);
      v10 = [(NSMutableArray *)v8 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v10);
  }

  v14 = [(NSString *)self->_identifier copyWithZone:zone];
  v15 = v5[1];
  v5[1] = v14;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && ((identity = self->_identity, !(identity | equalCopy[2])) || -[_MRUserIdentityProtobuf isEqual:](identity, "isEqual:")) && ((oobKeys = self->_oobKeys, !(oobKeys | equalCopy[3])) || -[NSMutableArray isEqual:](oobKeys, "isEqual:")))
  {
    identifier = self->_identifier;
    if (identifier | equalCopy[1])
    {
      v8 = [(NSString *)identifier isEqual:?];
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
  v3 = [(_MRUserIdentityProtobuf *)self->_identity hash];
  v4 = [(NSMutableArray *)self->_oobKeys hash]^ v3;
  return v4 ^ [(NSString *)self->_identifier hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  identity = self->_identity;
  v6 = *(fromCopy + 2);
  if (identity)
  {
    if (v6)
    {
      [(_MRUserIdentityProtobuf *)identity mergeFrom:?];
    }
  }

  else if (v6)
  {
    [(_MRGroupSessionJoinRequestProtobuf *)self setIdentity:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = *(fromCopy + 3);
  v8 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [(_MRGroupSessionJoinRequestProtobuf *)self addOobKeys:*(*(&v12 + 1) + 8 * i), v12];
      }

      v9 = [v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }

  if (*(fromCopy + 1))
  {
    [(_MRGroupSessionJoinRequestProtobuf *)self setIdentifier:?];
  }
}

@end