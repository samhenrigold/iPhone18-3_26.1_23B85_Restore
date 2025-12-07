@interface ASRelationshipEvent
+ (id)_relationshipEventWithCodable:(id)codable;
+ (id)relationshipEventWithRecord:(id)record;
- (ASRelationshipEvent)initWithType:(unsigned __int16)type anchor:(unsigned __int16)anchor timestamp:(id)timestamp;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToRelationshipEvent:(id)event;
- (id)_codableRelationshipEvent;
- (id)description;
@end

@implementation ASRelationshipEvent

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  anchor = self->_anchor;
  v5 = NSStringFromASRelationshipEventType(self->_type);
  v6 = [v3 stringWithFormat:@"[%d: %@ at %@]", anchor, v5, self->_timestamp];

  return v6;
}

- (id)_codableRelationshipEvent
{
  v3 = objc_alloc_init(ASCodableCloudKitRelationshipEvent);
  [(ASCodableCloudKitRelationshipEvent *)v3 setAnchor:[(ASRelationshipEvent *)self anchor]];
  [(ASCodableCloudKitRelationshipEvent *)v3 setType:[(ASRelationshipEvent *)self type]];
  timestamp = [(ASRelationshipEvent *)self timestamp];
  [timestamp timeIntervalSinceReferenceDate];
  [(ASCodableCloudKitRelationshipEvent *)v3 setDate:?];

  return v3;
}

+ (id)_relationshipEventWithCodable:(id)codable
{
  codableCopy = codable;
  anchor = [codableCopy anchor];
  type = [codableCopy type];
  v6 = MEMORY[0x277CBEAA8];
  [codableCopy date];
  v8 = v7;

  v9 = [v6 dateWithTimeIntervalSinceReferenceDate:v8];
  v10 = [[ASRelationshipEvent alloc] initWithType:type anchor:anchor timestamp:v9];

  return v10;
}

+ (id)relationshipEventWithRecord:(id)record
{
  recordCopy = record;
  v4 = _ASCloudKitSchemaVersionForRecord(recordCopy);
  if (v4 == 2)
  {
    encryptedValues = [recordCopy encryptedValues];
    v7 = [encryptedValues objectForKeyedSubscript:@"EncryptedData"];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v12 = [[ASCodableCloudKitRelationshipEvent alloc] initWithData:v8];
      anchor = [(ASCodableCloudKitRelationshipEvent *)v12 anchor];
      type = [(ASCodableCloudKitRelationshipEvent *)v12 type];
      creationDate = [recordCopy creationDate];
      v9 = [[ASRelationshipEvent alloc] initWithType:type anchor:anchor timestamp:creationDate];
    }

    else
    {
      ASLoggingInitialize(v10, v11);
      if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
      {
        +[ASRelationshipEvent(CloudKitCoding) relationshipEventWithRecord:];
      }

      v9 = 0;
    }
  }

  else
  {
    ASLoggingInitialize(v4, v5);
    if (os_log_type_enabled(ASLogCloudKit, OS_LOG_TYPE_ERROR))
    {
      +[ASRelationshipEvent(CloudKitCoding) relationshipEventWithRecord:];
    }

    v9 = 0;
  }

  return v9;
}

- (ASRelationshipEvent)initWithType:(unsigned __int16)type anchor:(unsigned __int16)anchor timestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v13.receiver = self;
  v13.super_class = ASRelationshipEvent;
  v10 = [(ASRelationshipEvent *)&v13 init];
  v11 = v10;
  if (v10)
  {
    v10->_type = type;
    v10->_anchor = anchor;
    objc_storeStrong(&v10->_timestamp, timestamp);
  }

  return v11;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(ASRelationshipEvent *)self isEqualToRelationshipEvent:equalCopy];
  }

  return v5;
}

- (BOOL)isEqualToRelationshipEvent:(id)event
{
  eventCopy = event;
  anchor = self->_anchor;
  if (anchor == [eventCopy anchor] && (type = self->_type, type == objc_msgSend(eventCopy, "type")))
  {
    timestamp = self->_timestamp;
    timestamp = [eventCopy timestamp];
    v9 = [(NSDate *)timestamp isEqualToDate:timestamp];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end