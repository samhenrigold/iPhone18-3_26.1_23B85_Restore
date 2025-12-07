@interface BYAnalyticsLazyEvent
+ (id)eventWithName:(id)name withPayloadBlock:(id)block persist:(BOOL)persist;
- (id)description;
@end

@implementation BYAnalyticsLazyEvent

+ (id)eventWithName:(id)name withPayloadBlock:(id)block persist:(BOOL)persist
{
  persistCopy = persist;
  blockCopy = block;
  nameCopy = name;
  v9 = objc_alloc_init(BYAnalyticsLazyEvent);
  [(BYAnalyticsLazyEvent *)v9 setName:nameCopy];

  [(BYAnalyticsLazyEvent *)v9 setPayloadBlock:blockCopy];
  [(BYAnalyticsLazyEvent *)v9 setPersist:persistCopy];

  return v9;
}

- (id)description
{
  payloadBlock = [(BYAnalyticsLazyEvent *)self payloadBlock];
  v4 = payloadBlock[2]();

  if ([(BYAnalyticsLazyEvent *)self persist])
  {
    v5 = @"persists";
  }

  else
  {
    v5 = @"does not persist";
  }

  v6 = MEMORY[0x1E696AEC0];
  name = [(BYAnalyticsLazyEvent *)self name];
  v8 = [v6 stringWithFormat:@"%@ %@ (%@)", name, v4, v5];

  return v8;
}

@end