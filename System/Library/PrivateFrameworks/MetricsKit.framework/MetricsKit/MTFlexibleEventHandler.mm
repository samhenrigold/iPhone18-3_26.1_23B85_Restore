@interface MTFlexibleEventHandler
- (BOOL)mtIncludeBaseFields;
- (id)eventTime:(id)time;
- (id)knownFields;
- (id)metricsDataWithEventType:(id)type eventData:(id)data;
@end

@implementation MTFlexibleEventHandler

- (id)metricsDataWithEventType:(id)type eventData:(id)data
{
  v13[1] = *MEMORY[0x277D85DE8];
  v12 = @"eventType";
  v13[0] = type;
  v6 = MEMORY[0x277CBEAC0];
  dataCopy = data;
  typeCopy = type;
  v9 = [v6 dictionaryWithObjects:v13 forKeys:&v12 count:1];

  v10 = [(MTEventHandler *)self metricsDataWithFields:v9, dataCopy, 0];

  return v10;
}

- (id)eventTime:(id)time
{
  timeCopy = time;
  metricsKit = [(MTObject *)self metricsKit];
  eventHandlers = [metricsKit eventHandlers];
  base = [eventHandlers base];
  v8 = [base eventTime:timeCopy];

  return v8;
}

- (id)knownFields
{
  v10[2] = *MEMORY[0x277D85DE8];
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
    v9.super_class = MTFlexibleEventHandler;
    delegate2 = [(MTEventHandler *)&v9 knownFields];
    v10[0] = @"eventTime";
    v10[1] = @"eventType";
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
    knownFields = [delegate2 arrayByAddingObjectsFromArray:v7];
  }

  return knownFields;
}

- (BOOL)mtIncludeBaseFields
{
  delegate = [(MTEventDataProvider *)self delegate];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  delegate2 = [(MTEventDataProvider *)self delegate];
  mtIncludeBaseFields = [delegate2 mtIncludeBaseFields];

  return mtIncludeBaseFields;
}

@end