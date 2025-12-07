@interface _MRMicrophoneConnectionResponseMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)resultAsString:(int)string;
- (int)StringAsResult:(id)result;
- (int)result;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRMicrophoneConnectionResponseMessageProtobuf

- (int)result
{
  if (*&self->_has)
  {
    return self->_result;
  }

  else
  {
    return 0;
  }
}

- (id)resultAsString:(int)string
{
  if (string >= 3)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  else
  {
    v4 = off_1E769F8B8[string];
  }

  return v4;
}

- (int)StringAsResult:(id)result
{
  resultCopy = result;
  if (objc_msgSend_isEqualToString_(resultCopy))
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(resultCopy))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(resultCopy))
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
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = _MRMicrophoneConnectionResponseMessageProtobuf;
  v4 = [(_MRMicrophoneConnectionResponseMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRMicrophoneConnectionResponseMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    v4 = self->_result;
    if (v4 >= 3)
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_result];
    }

    else
    {
      v5 = off_1E769F8B8[v4];
    }

    [dictionary setObject:v5 forKey:@"result"];
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier)
  {
    [dictionary setObject:rapportIdentifier forKey:@"rapportIdentifier"];
  }

  pairingData = self->_pairingData;
  if (pairingData)
  {
    [dictionary setObject:pairingData forKey:@"pairingData"];
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

  if (self->_rapportIdentifier)
  {
    PBDataWriterWriteStringField();
    toCopy = v5;
  }

  if (self->_pairingData)
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
    toCopy[6] = self->_result;
    *(toCopy + 28) |= 1u;
  }

  v5 = toCopy;
  if (self->_rapportIdentifier)
  {
    [toCopy setRapportIdentifier:?];
    toCopy = v5;
  }

  if (self->_pairingData)
  {
    [v5 setPairingData:?];
    toCopy = v5;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  v6 = v5;
  if (*&self->_has)
  {
    *(v5 + 24) = self->_result;
    *(v5 + 28) |= 1u;
  }

  v7 = [(NSString *)self->_rapportIdentifier copyWithZone:zone];
  v8 = v6[2];
  v6[2] = v7;

  v9 = [(NSData *)self->_pairingData copyWithZone:zone];
  v10 = v6[1];
  v6[1] = v9;

  return v6;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_11;
  }

  if (*&self->_has)
  {
    if ((*(equalCopy + 28) & 1) == 0 || self->_result != *(equalCopy + 6))
    {
      goto LABEL_11;
    }
  }

  else if (*(equalCopy + 28))
  {
LABEL_11:
    v7 = 0;
    goto LABEL_12;
  }

  rapportIdentifier = self->_rapportIdentifier;
  if (rapportIdentifier | *(equalCopy + 2) && ![(NSString *)rapportIdentifier isEqual:?])
  {
    goto LABEL_11;
  }

  pairingData = self->_pairingData;
  if (pairingData | *(equalCopy + 1))
  {
    v7 = [(NSData *)pairingData isEqual:?];
  }

  else
  {
    v7 = 1;
  }

LABEL_12:

  return v7;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    v3 = 2654435761 * self->_result;
  }

  else
  {
    v3 = 0;
  }

  v4 = [(NSString *)self->_rapportIdentifier hash]^ v3;
  return v4 ^ [(NSData *)self->_pairingData hash];
}

- (void)mergeFrom:(id)from
{
  fromCopy = from;
  if (fromCopy[7])
  {
    self->_result = fromCopy[6];
    *&self->_has |= 1u;
  }

  v5 = fromCopy;
  if (*(fromCopy + 2))
  {
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)self setRapportIdentifier:?];
    fromCopy = v5;
  }

  if (*(fromCopy + 1))
  {
    [(_MRMicrophoneConnectionResponseMessageProtobuf *)self setPairingData:?];
    fromCopy = v5;
  }
}

@end