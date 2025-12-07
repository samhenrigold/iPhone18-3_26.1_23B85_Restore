@interface _MRGroupSessionFastSyncMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)messageTypeAsString:(int)string;
- (int)StringAsMessageType:(id)type;
- (int)messageType;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRGroupSessionFastSyncMessageProtobuf

- (int)messageType
{
  if (*&self->_has)
  {
    return self->_messageType;
  }

  else
  {
    return 0;
  }
}

- (id)messageTypeAsString:(int)string
{
  if (string >= 0xB)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E769E048[string];
  }

  return v4;
}

- (int)StringAsMessageType:(id)type
{
  typeCopy = type;
  if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 2;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 3;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 4;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 5;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 6;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 7;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 8;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 9;
  }

  else if (objc_msgSend_isEqualToString_(typeCopy))
  {
    v4 = 10;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRGroupSessionFastSyncMessageProtobuf;
  v4 = [(_MRGroupSessionFastSyncMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRGroupSessionFastSyncMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    messageType = self->_messageType;
    if (messageType >= 0xB)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_messageType];
    }

    else
    {
      v5 = off_1E769E048[messageType];
    }

    [dictionary setObject:v5 forKey:@"messageType"];
  }

  payload = self->_payload;
  if (payload)
  {
    [dictionary setObject:payload forKey:@"payload"];
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

  if (self->_payload)
  {
    PBDataWriterWriteDataField();
    toCopy = v5;
  }
}

- (void)copyTo:(id)to
{
  toCopy = to;
  if (*&self->_has)
  {
    toCopy[2] = self->_messageType;
    *(toCopy + 24) |= 1u;
  }

  if (self->_payload)
  {
    v5 = toCopy;
    [toCopy setPayload:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 8) = self->_messageType;
    *(v5 + 24) |= 1u;
  }

  v7 = [(NSData *)self->_payload copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_9;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 24) & 1) == 0 || self->_messageType != *(equalCopy + 2))
    {
      goto LABEL_9;
    }
  }

  else if (*(equalCopy + 24))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  payload = self->_payload;
  if (payload | *(equalCopy + 2))
  {
    v6 = [(NSData *)payload isEqual:?];
  }

  else
  {
    v6 = 1;
  }

LABEL_10:

  return v6;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v2 = 2654435761 * self->_messageType;
  }

  else
  {
    v2 = 0;
  }

  return [(NSData *)self->_payload hash]^ v2;
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[6])
  {
    self->_messageType = fromCopy[2];
    *&self->_has |= 1u;
  }

  if (*(fromCopy + 2))
  {
    v5 = fromCopy;
    [(_MRGroupSessionFastSyncMessageProtobuf *)self setPayload:?];
    fromCopy = v5;
  }
}

@end