@interface MXProcessingError
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)errorSourceAsString:(int)string;
- (int)StringAsErrorSource:(id)source;
- (int)errorSource;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)setHasErrorSource:(BOOL)source;
- (void)writeTo:(id)to;
@end

@implementation MXProcessingError

- (int)errorSource
{
  if ((*&self->_has & 2) != 0)
  {
    return self->_errorSource;
  }

  else
  {
    return 0;
  }
}

- (void)setHasErrorSource:(BOOL)source
{
  if (source)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *&self->_has = *&self->_has & 0xFD | v3;
}

- (id)errorSourceAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_27991B978[string];
  }

  return v4;
}

- (int)StringAsErrorSource:(id)source
{
  sourceCopy = source;
  if ([sourceCopy isEqualToString:@"UNKNOWN"])
  {
    v4 = 0;
  }

  else if ([sourceCopy isEqualToString:@"QSS"])
  {
    v4 = 1;
  }

  else if ([sourceCopy isEqualToString:@"MODALITY_X"])
  {
    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = MXProcessingError;
  v4 = [(MXProcessingError *)&v8 description];
  dictionaryRepresentation = [(MXProcessingError *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (*&self->_has)
  {
    v4 = [MEMORY[0x277CCABB0] numberWithInt:self->_code];
    [dictionary setObject:v4 forKey:@"code"];
  }

  errorDescription = self->_errorDescription;
  if (errorDescription)
  {
    [dictionary setObject:errorDescription forKey:@"error_description"];
  }

  if ((*&self->_has & 2) != 0)
  {
    errorSource = self->_errorSource;
    if (errorSource >= 3)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_errorSource];
    }

    else
    {
      v7 = off_27991B978[errorSource];
    }

    [dictionary setObject:v7 forKey:@"error_source"];
  }

  requestId = self->_requestId;
  if (requestId)
  {
    [dictionary setObject:requestId forKey:@"request_id"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  v5 = toCopy;
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_errorDescription)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    PBDataWriterWriteInt32Field();
    toCopy = v5;
  }

  if (self->_requestId)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_code;
    *(toCopy + 40) |= 1u;
  }

  v5 = toCopy;
  if (self->_errorDescription)
  {
    [toCopy setErrorDescription:?];
    toCopy = v5;
  }

  if ((*&self->_has & 2) != 0)
  {
    toCopy[6] = self->_errorSource;
    *(toCopy + 40) |= 2u;
  }

  if (self->_requestId)
  {
    [v5 setRequestId:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_code;
    *(v5 + 40) |= 1u;
  }

  v7 = [(NSString *)self->_errorDescription copyWithZone:zone];
  v8 = *(v6 + 16);
  *(v6 + 16) = v7;

  if ((*&self->_has & 2) != 0)
  {
    *(v6 + 24) = self->_errorSource;
    *(v6 + 40) |= 2u;
  }

  v9 = [(NSString *)self->_requestId copyWithZone:zone];
  v10 = *(v6 + 32);
  *(v6 + 32) = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_17;
  }

  has = self->_has;
  if (has)
  {
    if ((*(equalCopy + 40) & 1) == 0 || self->_code != *(equalCopy + 2))
    {
      goto LABEL_17;
    }
  }

  else if (*(equalCopy + 40))
  {
    goto LABEL_17;
  }

  errorDescription = self->_errorDescription;
  if (errorDescription | *(equalCopy + 2))
  {
    if (![(NSString *)errorDescription isEqual:?])
    {
LABEL_17:
      v8 = 0;
      goto LABEL_18;
    }

    has = self->_has;
  }

  if ((has & 2) != 0)
  {
    if ((*(equalCopy + 40) & 2) == 0 || self->_errorSource != *(equalCopy + 6))
    {
      goto LABEL_17;
    }
  }

  else if ((*(equalCopy + 40) & 2) != 0)
  {
    goto LABEL_17;
  }

  requestId = self->_requestId;
  if (requestId | *(equalCopy + 4))
  {
    v8 = [(NSString *)requestId isEqual:?];
  }

  else
  {
    v8 = 1;
  }

LABEL_18:

  return v8;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_code;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_errorDescription hash];
  if ((*&self->_has & 2) != 0)
  {
    v5 = 2654435761 * self->_errorSource;
  }

  else
  {
    v5 = 0;
  }

  return v4 ^ v3 ^ v5 ^ [(NSString *)self->_requestId hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[10])
  {
    self->_code = fromCopy[2];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(MXProcessingError *)self setErrorDescription:?];
    fromCopy = v5;
  }

  if ((fromCopy[10] & 2) != 0)
  {
    self->_errorSource = fromCopy[6];
    *&self->_has |= 2u;
  }

  if (*(fromCopy + 4))
  {
    [(MXProcessingError *)self setRequestId:?];
    fromCopy = v5;
  }
}

@end