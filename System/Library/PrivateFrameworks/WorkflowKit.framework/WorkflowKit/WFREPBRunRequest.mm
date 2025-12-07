@interface WFREPBRunRequest
- (BOOL)isEqual:(id)equal;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)dictionaryRepresentation;
- (id)payloadTypeAsString:(int)string;
- (int)StringAsPayloadType:(id)type;
- (void)mergeFrom:(id)from;
- (void)writeTo:(id)to;
@end

@implementation WFREPBRunRequest

- (void)mergeFrom:(id)from
{
  self->_payloadType = *(from + 4);
  if (*(from + 1))
  {
    [(WFREPBRunRequest *)self setPayload:?];
  }
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && self->_payloadType == *(equalCopy + 4))
  {
    payload = self->_payload;
    if (payload | equalCopy[1])
    {
      v6 = [(NSData *)payload isEqual:?];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 16) = self->_payloadType;
  v6 = [(NSData *)self->_payload copyWithZone:zone];
  v7 = *(v5 + 8);
  *(v5 + 8) = v6;

  return v5;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  PBDataWriterWriteInt32Field();
  if (!self->_payload)
  {
    __assert_rtn("[WFREPBRunRequest writeTo:]", "WFREPBRunRequest.m", 91, "nil != self->_payload");
  }

  PBDataWriterWriteDataField();
}

- (id)dictionaryRepresentation
{
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  payloadType = self->_payloadType;
  if (payloadType == 1)
  {
    v5 = @"SingleActionExecution";
  }

  else if (payloadType == 2)
  {
    v5 = @"WorkflowExecution";
  }

  else
  {
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", self->_payloadType];
  }

  [dictionary setObject:v5 forKey:@"payloadType"];

  payload = self->_payload;
  if (payload)
  {
    [dictionary setObject:payload forKey:@"payload"];
  }

  return dictionary;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v8.receiver = self;
  v8.super_class = WFREPBRunRequest;
  v4 = [(WFREPBRunRequest *)&v8 description];
  dictionaryRepresentation = [(WFREPBRunRequest *)self dictionaryRepresentation];
  v6 = [v3 stringWithFormat:@"%@ %@", v4, dictionaryRepresentation];

  return v6;
}

- (int)StringAsPayloadType:(id)type
{
  typeCopy = type;
  v4 = 1;
  if ((objc_msgSend_isEqualToString_(typeCopy) & 1) == 0)
  {
    if (objc_msgSend_isEqualToString_(typeCopy))
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  return v4;
}

- (id)payloadTypeAsString:(int)string
{
  if (string == 1)
  {
    v4 = @"SingleActionExecution";
  }

  else if (string == 2)
  {
    v4 = @"WorkflowExecution";
  }

  else
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"(unknown: %i)", *&string];
  }

  return v4;
}

@end