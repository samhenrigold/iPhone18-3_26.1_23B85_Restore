@interface _MRErrorProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (unint64_t)hash;
- (void)addUnderlyingErrors:(id)errors;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRErrorProtobuf

- (void)addUnderlyingErrors:(id)errors
{
  errorsCopy = errors;
  underlyingErrors = self->_underlyingErrors;
  v8 = errorsCopy;
  if (!underlyingErrors)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_underlyingErrors;
    self->_underlyingErrors = v6;

    errorsCopy = v8;
    underlyingErrors = self->_underlyingErrors;
  }

  [(NSMutableArray *)underlyingErrors addObject:errorsCopy];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRErrorProtobuf;
  v4 = [(_MRErrorProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRErrorProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  v25 = *MEMORY[0x1E69E9840];
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v4 = dictionary;
  domain = self->_domain;
  if (domain)
  {
    [dictionary setObject:domain forKey:@"domain"];
  }

  if (*&self->_has)
  {
    v6 = [MEMORY[0x1E696AD98] numberWithInt:self->_code];
    [v4 setObject:v6 forKey:@"code"];
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription)
  {
    [v4 setObject:localizedDescription forKey:@"localizedDescription"];
  }

  localizedFailureReason = self->_localizedFailureReason;
  if (localizedFailureReason)
  {
    [v4 setObject:localizedFailureReason forKey:@"localizedFailureReason"];
  }

  if ([(NSMutableArray *)self->_underlyingErrors count])
  {
    v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{-[NSMutableArray count](self->_underlyingErrors, "count")}];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v10 = self->_underlyingErrors;
    v11 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          dictionaryRepresentation = [*(*(&v20 + 1) + 8 * i) dictionaryRepresentation];
          [v9 addObject:dictionaryRepresentation];
        }

        v12 = [(NSMutableArray *)v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v12);
    }

    [v4 setObject:v9 forKey:@"underlyingErrors"];
  }

  debugMessage = self->_debugMessage;
  if (debugMessage)
  {
    [v4 setObject:debugMessage forKey:@"debugMessage"];
  }

  userInfo = self->_userInfo;
  if (userInfo)
  {
    dictionaryRepresentation2 = [(_MRDictionaryProtobuf *)userInfo dictionaryRepresentation];
    [v4 setObject:dictionaryRepresentation2 forKey:@"userInfo"];
  }

  return v4;
}

- (void)writeTo:(id)to
{
  v15 = *MEMORY[0x1E69E9840];
  toCopy = to;
  if (self->_domain)
  {
    PBDataWriterWriteStringField();
  }

  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }

  if (self->_localizedDescription)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_localizedFailureReason)
  {
    PBDataWriterWriteStringField();
  }

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = self->_underlyingErrors;
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

  if (self->_debugMessage)
  {
    PBDataWriterWriteStringField();
  }

  if (self->_userInfo)
  {
    PBDataWriterWriteSubmessage();
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  v10 = toCopy;
  if (self->_domain)
  {
    [toCopy setDomain:?];
    toCopy = v10;
  }

  if (*&self->_has)
  {
    *(toCopy + 2) = self->_code;
    *(toCopy + 64) |= 1u;
  }

  if (self->_localizedDescription)
  {
    [v10 setLocalizedDescription:?];
  }

  if (self->_localizedFailureReason)
  {
    [v10 setLocalizedFailureReason:?];
  }

  if ([(_MRErrorProtobuf *)self underlyingErrorsCount])
  {
    [v10 clearUnderlyingErrors];
    underlyingErrorsCount = [(_MRErrorProtobuf *)self underlyingErrorsCount];
    if (underlyingErrorsCount)
    {
      v6 = underlyingErrorsCount;
      for (i = 0; i != v6; ++i)
      {
        v8 = [(_MRErrorProtobuf *)self underlyingErrorsAtIndex:i];
        [v10 addUnderlyingErrors:v8];
      }
    }
  }

  if (self->_debugMessage)
  {
    [v10 setDebugMessage:?];
  }

  v9 = v10;
  if (self->_userInfo)
  {
    [v10 setUserInfo:?];
    v9 = v10;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v28 = *MEMORY[0x1E69E9840];
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = [(NSString *)self->_domain copyWithZone:zone];
  v7 = *(v5 + 24);
  *(v5 + 24) = v6;

  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 64) |= 1u;
  }

  v8 = [(NSString *)self->_localizedDescription copyWithZone:zone];
  v9 = *(v5 + 32);
  *(v5 + 32) = v8;

  v10 = [(NSString *)self->_localizedFailureReason copyWithZone:zone];
  v11 = *(v5 + 40);
  *(v5 + 40) = v10;

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v12 = self->_underlyingErrors;
  v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v24;
    do
    {
      v16 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = [*(*(&v23 + 1) + 8 * v16) copyWithZone:{zone, v23}];
        [v5 addUnderlyingErrors:v17];

        ++v16;
      }

      while (v14 != v16);
      v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v14);
  }

  v18 = [(NSString *)self->_debugMessage copyWithZone:zone];
  v19 = *(v5 + 16);
  *(v5 + 16) = v18;

  v20 = [(_MRDictionaryProtobuf *)self->_userInfo copyWithZone:zone];
  v21 = *(v5 + 56);
  *(v5 + 56) = v20;

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_19;
  }

  domain = self->_domain;
  if (domain | *(equalCopy + 3))
  {
    if (![(NSString *)domain isEqual:?])
    {
      goto LABEL_19;
    }
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 64) & 1) == 0 || self->_code != *(equalCopy + 2))
    {
      goto LABEL_19;
    }
  }

  else if (*(equalCopy + 64))
  {
LABEL_19:
    v11 = 0;
    goto LABEL_20;
  }

  localizedDescription = self->_localizedDescription;
  if (localizedDescription | *(equalCopy + 4) && ![(NSString *)localizedDescription isEqual:?])
  {
    goto LABEL_19;
  }

  localizedFailureReason = self->_localizedFailureReason;
  if (localizedFailureReason | *(equalCopy + 5))
  {
    if (![(NSString *)localizedFailureReason isEqual:?])
    {
      goto LABEL_19;
    }
  }

  underlyingErrors = self->_underlyingErrors;
  if (underlyingErrors | *(equalCopy + 6))
  {
    if (![(NSMutableArray *)underlyingErrors isEqual:?])
    {
      goto LABEL_19;
    }
  }

  debugMessage = self->_debugMessage;
  if (debugMessage | *(equalCopy + 2))
  {
    if (![(NSString *)debugMessage isEqual:?])
    {
      goto LABEL_19;
    }
  }

  userInfo = self->_userInfo;
  if (userInfo | *(equalCopy + 7))
  {
    v11 = [(_MRDictionaryProtobuf *)userInfo isEqual:?];
  }

  else
  {
    v11 = 1;
  }

LABEL_20:

  return v11;
}

- (unint64_t)hash
{
  v3 = [(NSString *)self->_domain hash];
  if (*&self->_has)
  {
    v4 = 2654435761 * self->_code;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ v3;
  v6 = [(NSString *)self->_localizedDescription hash];
  v7 = v5 ^ v6 ^ [(NSString *)self->_localizedFailureReason hash];
  v8 = [(NSMutableArray *)self->_underlyingErrors hash];
  v9 = v8 ^ [(NSString *)self->_debugMessage hash];
  return v7 ^ v9 ^ [(_MRDictionaryProtobuf *)self->_userInfo hash];
}

- (void)mergeFrom:(id)from
{
  v17 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  if (*(fromCopy + 3))
  {
    [(_MRErrorProtobuf *)self setDomain:?];
  }

  if (*(fromCopy + 64))
  {
    self->_code = *(fromCopy + 2);
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 4))
  {
    [(_MRErrorProtobuf *)self setLocalizedDescription:?];
  }

  if (*(fromCopy + 5))
  {
    [(_MRErrorProtobuf *)self setLocalizedFailureReason:?];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = *(fromCopy + 6);
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

        [(_MRErrorProtobuf *)self addUnderlyingErrors:*(*(&v12 + 1) + 8 * i), v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  if (*(fromCopy + 2))
  {
    [(_MRErrorProtobuf *)self setDebugMessage:?];
  }

  userInfo = self->_userInfo;
  v11 = *(fromCopy + 7);
  if (userInfo)
  {
    if (v11)
    {
      [(_MRDictionaryProtobuf *)userInfo mergeFrom:?];
    }
  }

  else if (v11)
  {
    [(_MRErrorProtobuf *)self setUserInfo:?];
  }
}

@end