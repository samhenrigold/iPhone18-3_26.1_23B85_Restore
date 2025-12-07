@interface BYAnalyticsEvent
+ (id)eventWithName:(id)name withPayload:(id)payload persist:(BOOL)persist;
- (id)description;
@end

@implementation BYAnalyticsEvent

+ (id)eventWithName:(id)name withPayload:(id)payload persist:(BOOL)persist
{
  persistCopy = persist;
  payloadCopy = payload;
  nameCopy = name;
  v9 = objc_alloc_init(BYAnalyticsEvent);
  [(BYAnalyticsEvent *)v9 setName:nameCopy];

  [(BYAnalyticsEvent *)v9 setPayload:payloadCopy];
  [(BYAnalyticsEvent *)v9 setPersist:persistCopy];

  return v9;
}

- (id)description
{
  if ([(BYAnalyticsEvent *)self persist])
  {
    v3 = @"persists";
  }

  else
  {
    v3 = @"does not persist";
  }

  v4 = MEMORY[0x1E696AEC0];
  name = [(BYAnalyticsEvent *)self name];
  payload = [(BYAnalyticsEvent *)self payload];
  v7 = [v4 stringWithFormat:@"%@ %@ (%@)", name, payload, v3];

  return v7;
}

@end