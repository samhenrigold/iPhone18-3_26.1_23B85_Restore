@interface _MRRegisterForGameControllerEventsMessageProtobuf
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)inputModeFlagsAsString:(int)string;
- (int)StringAsInputModeFlags:(id)flags;
- (int)inputModeFlags;
- (unint64_t)hash;
- (void)copyTo:(id)to;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation _MRRegisterForGameControllerEventsMessageProtobuf

- (int)inputModeFlags
{
  if (*&self->_has)
  {
    return self->_inputModeFlags;
  }

  else
  {
    return 0;
  }
}

- (id)inputModeFlagsAsString:(int)string
{
  if (string < 5 && ((0x17u >> string) & 1) != 0)
  {
    v4 = off_1E76A1E50[string];
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

- (int)StringAsInputModeFlags:(id)flags
{
  flagsCopy = flags;
  if (objc_msgSend_isEqualToString_(flagsCopy))
  {
    v4 = 0;
  }

  else if (objc_msgSend_isEqualToString_(flagsCopy))
  {
    v4 = 1;
  }

  else if (objc_msgSend_isEqualToString_(flagsCopy))
  {
    v4 = 2;
  }

  else if (objc_msgSend_isEqualToString_(flagsCopy))
  {
    v4 = 4;
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
  v8.super_class = _MRRegisterForGameControllerEventsMessageProtobuf;
  v4 = [(_MRRegisterForGameControllerEventsMessageProtobuf *)&v8 description];
  dictionaryRepresentation = [(_MRRegisterForGameControllerEventsMessageProtobuf *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  if (*&self->_has)
  {
    inputModeFlags = self->_inputModeFlags;
    if (inputModeFlags < 5 && ((0x17u >> inputModeFlags) & 1) != 0)
    {
      v5 = off_1E76A1E50[inputModeFlags];
    }

    else
    {
      v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_inputModeFlags];
    }

    [dictionary setObject:v5 forKey:@"inputModeFlags"];
  }

  return dictionary;
}

- (void)writeTo:(id)to
{
  if (*&self->_has)
  {
    PBDataWriterWriteInt32Field();
  }
}

- (void)copyTo:(id)to
{
  if (*&self->_has)
  {
    *(to + 2) = self->_inputModeFlags;
    *(to + 12) |= 1u;
  }
}

- (id)copyWithZone:(_NSZone *)zone
{
  result = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  if (*&self->_has)
  {
    *(result + 2) = self->_inputModeFlags;
    *(result + 12) |= 1u;
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (![equalCopy isMemberOfClass:objc_opt_class()])
  {
    goto LABEL_6;
  }

  v5 = (*(equalCopy + 12) & 1) == 0;
  if (*&self->_has)
  {
    if ((*(equalCopy + 12) & 1) != 0 && self->_inputModeFlags == *(equalCopy + 2))
    {
      v5 = 1;
      goto LABEL_7;
    }

LABEL_6:
    v5 = 0;
  }

LABEL_7:

  return v5;
}

- (unint64_t)hash
{
  if (*&self->_has)
  {
    return 2654435761 * self->_inputModeFlags;
  }

  else
  {
    return 0;
  }
}

- (void)mergeFrom:(id)from
{
  if (*(from + 12))
  {
    self->_inputModeFlags = *(from + 2);
    *&self->_has |= 1u;
  }
}

@end