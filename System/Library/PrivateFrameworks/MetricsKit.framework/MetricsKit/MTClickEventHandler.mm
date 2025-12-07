@interface MTClickEventHandler
- (id)eventType;
- (id)eventVersion:(id)version;
- (id)knownFields;
@end

@implementation MTClickEventHandler

- (id)knownFields
{
  v10[9] = *MEMORY[0x277D85DE8];
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if (v4)
  {
    delegate2 = [(MTEventDataProvider *)self delegate];
    knownFields = [delegate2 knownFields];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = MTClickEventHandler;
    delegate2 = [(MTImpressionableEventHandler *)&v9 knownFields];
    v10[0] = @"actionContext";
    v10[1] = @"actionDetails";
    v10[2] = @"actionType";
    v10[3] = @"actionUrl";
    v10[4] = @"location";
    v10[5] = @"targetId";
    v10[6] = @"targetType";
    v10[7] = @"positionX";
    v10[8] = @"positionY";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:9];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  return knownFields;
}

- (id)eventType
{
  v7.receiver = self;
  v7.super_class = MTClickEventHandler;
  eventType = [(MTEventHandler *)&v7 eventType];
  v3 = eventType;
  if (eventType)
  {
    v4 = eventType;
  }

  else
  {
    v4 = @"click";
  }

  v5 = v4;

  return v4;
}

- (id)eventVersion:(id)version
{
  v8.receiver = self;
  v8.super_class = MTClickEventHandler;
  v3 = [(MTEventHandler *)&v8 eventVersion:version];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = &unk_286A4C368;
  }

  v6 = v5;

  return v5;
}

@end