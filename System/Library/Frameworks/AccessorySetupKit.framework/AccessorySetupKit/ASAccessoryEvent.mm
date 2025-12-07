@interface ASAccessoryEvent
- (ASAccessoryEvent)initWithEventType:(int64_t)type;
- (ASAccessoryEvent)initWithEventType:(int64_t)type error:(id)error;
- (id)descriptionWithLevel:(int)level;
@end

@implementation ASAccessoryEvent

- (ASAccessoryEvent)initWithEventType:(int64_t)type
{
  v8.receiver = self;
  v8.super_class = ASAccessoryEvent;
  v4 = [(ASAccessoryEvent *)&v8 init];
  v5 = v4;
  if (v4)
  {
    v4->_eventType = type;
    v6 = v4;
  }

  return v5;
}

- (ASAccessoryEvent)initWithEventType:(int64_t)type error:(id)error
{
  errorCopy = error;
  v8 = [(ASAccessoryEvent *)self initWithEventType:type];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_error, error);
    v10 = v9;
  }

  return v9;
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v4 = 8;
  }

  else
  {
    v4 = 12;
  }

  v15 = v4;
  if ((level & 0x8000000) != 0)
  {
    v6 = 0;
  }

  else
  {
    v14 = 0;
    v5 = objc_opt_class();
    CUAppendF(&v14, &v15, "%@", v5);
    v6 = v14;
  }

  eventType = self->_eventType;
  if (eventType)
  {
    v13 = v6;
    v8 = ASAccessoryEventTypeToString(eventType);
    CUAppendF(&v13, &v15, "type %@", v8);
    v9 = v13;

    v6 = v9;
  }

  v10 = &stru_28499D698;
  if (v6)
  {
    v10 = v6;
  }

  v11 = v10;

  return v11;
}

@end