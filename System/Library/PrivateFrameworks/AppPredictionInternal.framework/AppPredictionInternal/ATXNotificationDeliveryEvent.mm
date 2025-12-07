@interface ATXNotificationDeliveryEvent
+ (id)eventWithData:(id)data dataVersion:(unsigned int)version;
- (ATXNotificationDeliveryEvent)initWithDeliveryUI:(unint64_t)i suggestionUUIDs:(id)ds;
- (ATXNotificationDeliveryEvent)initWithProto:(id)proto;
- (ATXNotificationDeliveryEvent)initWithProtoData:(id)data;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToATXNotificationDeliveryEvent:(id)event;
- (id)encodeAsProto;
- (id)json;
- (id)jsonRawData;
- (id)proto;
@end

@implementation ATXNotificationDeliveryEvent

- (id)encodeAsProto
{
  proto = [(ATXNotificationDeliveryEvent *)self proto];
  data = [proto data];

  return data;
}

- (id)proto
{
  v3 = objc_opt_new();
  [v3 setDeliveryUI:LODWORD(self->_deliveryUI)];
  v4 = [(NSArray *)self->_suggestionUUIDs _pas_mappedArrayWithTransform:&__block_literal_global_25_3];
  v5 = [v4 mutableCopy];
  [v3 setSuggestionUUIDs:v5];

  return v3;
}

- (ATXNotificationDeliveryEvent)initWithDeliveryUI:(unint64_t)i suggestionUUIDs:(id)ds
{
  dsCopy = ds;
  v11.receiver = self;
  v11.super_class = ATXNotificationDeliveryEvent;
  v8 = [(ATXNotificationDeliveryEvent *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_deliveryUI = i;
    objc_storeStrong(&v8->_suggestionUUIDs, ds);
  }

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(ATXNotificationDeliveryEvent *)self isEqualToATXNotificationDeliveryEvent:v5];
  }

  return v6;
}

- (BOOL)isEqualToATXNotificationDeliveryEvent:(id)event
{
  eventCopy = event;
  if ([eventCopy deliveryUI] == self->_deliveryUI)
  {
    v5 = self->_suggestionUUIDs;
    v6 = v5;
    if (v5 == eventCopy[2])
    {
      v7 = 1;
    }

    else
    {
      v7 = [(NSArray *)v5 isEqual:?];
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)eventWithData:(id)data dataVersion:(unsigned int)version
{
  dataCopy = data;
  v6 = [[self alloc] initWithProtoData:dataCopy];

  return v6;
}

- (id)jsonRawData
{
  v9[2] = *MEMORY[0x277D85DE8];
  suggestionUUIDs = self->_suggestionUUIDs;
  if (suggestionUUIDs)
  {
    v4 = [(NSArray *)suggestionUUIDs description];
  }

  else
  {
    v4 = @"nil";
  }

  v8[0] = @"deliveryUI";
  if (self->_deliveryUI >= 8)
  {
    v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", self->_deliveryUI, v8[0]];
  }

  else
  {
    v5 = off_27859F690[self->_deliveryUI & 7];
  }

  v8[1] = @"suggestionUUIDs";
  v9[0] = v5;
  v9[1] = v4;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];

  return v6;
}

- (id)json
{
  v2 = MEMORY[0x277CCAAA0];
  jsonRawData = [(ATXNotificationDeliveryEvent *)self jsonRawData];
  v4 = [v2 dataWithJSONObject:jsonRawData options:1 error:0];

  return v4;
}

- (ATXNotificationDeliveryEvent)initWithProtoData:(id)data
{
  if (data)
  {
    dataCopy = data;
    v5 = [[ATXPBNotificationDeliveryEvent alloc] initWithData:dataCopy];

    self = [(ATXNotificationDeliveryEvent *)self initWithProto:v5];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (ATXNotificationDeliveryEvent)initWithProto:(id)proto
{
  protoCopy = proto;
  if (!protoCopy)
  {
LABEL_7:
    selfCopy = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  if ((isKindOfClass & 1) == 0)
  {
    v11 = __atxlog_handle_notification_management(isKindOfClass);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      [(ATXMinimalAction *)self initWithProto:v11];
    }

    goto LABEL_7;
  }

  v6 = protoCopy;
  deliveryUI = [v6 deliveryUI];
  suggestionUUIDs = [v6 suggestionUUIDs];

  v9 = [suggestionUUIDs _pas_mappedArrayWithTransform:&__block_literal_global_177];
  self = [(ATXNotificationDeliveryEvent *)self initWithDeliveryUI:deliveryUI suggestionUUIDs:v9];

  selfCopy = self;
LABEL_8:

  return selfCopy;
}

id __46__ATXNotificationDeliveryEvent_initWithProto___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCAD78];
  v3 = a2;
  v4 = [[v2 alloc] initWithUUIDString:v3];

  return v4;
}

@end