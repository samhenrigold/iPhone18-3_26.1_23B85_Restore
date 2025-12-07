@interface MSServiceEvent
- (MSServiceEvent)initWithEventType:(int)type serviceID:(id)d didSucceed:(BOOL)succeed;
- (NSString)eventName;
@end

@implementation MSServiceEvent

- (MSServiceEvent)initWithEventType:(int)type serviceID:(id)d didSucceed:(BOOL)succeed
{
  succeedCopy = succeed;
  v6 = *&type;
  dCopy = d;
  v16.receiver = self;
  v16.super_class = MSServiceEvent;
  v9 = [(MSServiceEvent *)&v16 init];
  v10 = v9;
  if (!v9)
  {
    goto LABEL_8;
  }

  if (v6 != 2 || !dCopy)
  {
    [(MSServiceEvent *)v9 setEventType:v6];
    [(MSServiceEvent *)v10 setServiceID:dCopy];
    [(MSServiceEvent *)v10 setDidSucceed:succeedCopy];
    v13 = objc_alloc_init(MSStopwatch);
    [(MSServiceEvent *)v10 setStopwatch:v13];

LABEL_8:
    v12 = v10;
    goto LABEL_9;
  }

  v11 = _MSLogingFacility(v9);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *v15 = 0;
    _os_log_impl(&dword_23986C000, v11, OS_LOG_TYPE_DEFAULT, "Failed to create MSServiceEvent. Tried to log batched update for a particular serviceID", v15, 2u);
  }

  v12 = 0;
LABEL_9:

  return v12;
}

- (NSString)eventName
{
  eventType = self->_eventType;
  if (eventType > 2)
  {
    return 0;
  }

  else
  {
    return &off_278AA2C40[eventType]->isa;
  }
}

@end