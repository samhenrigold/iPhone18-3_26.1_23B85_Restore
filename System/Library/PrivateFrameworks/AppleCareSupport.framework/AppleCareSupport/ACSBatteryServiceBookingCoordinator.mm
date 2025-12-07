@interface ACSBatteryServiceBookingCoordinator
- (ACSBatteryServiceBookingCoordinator)init;
- (ACSBatteryServiceBookingCoordinator)initWithOptions:(id)options;
- (BOOL)respondsToSelector:(SEL)selector;
@end

@implementation ACSBatteryServiceBookingCoordinator

- (ACSBatteryServiceBookingCoordinator)init
{
  v6.receiver = self;
  v6.super_class = ACSBatteryServiceBookingCoordinator;
  v2 = [(ACSBatteryServiceBookingCoordinator *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    coordinator = v2->coordinator;
    v2->coordinator = v3;
  }

  return v2;
}

- (ACSBatteryServiceBookingCoordinator)initWithOptions:(id)options
{
  optionsCopy = options;
  v11.receiver = self;
  v11.super_class = ACSBatteryServiceBookingCoordinator;
  v5 = [(ACSBatteryServiceBookingCoordinator *)&v11 init];
  if (v5)
  {
    v6 = [_ACSBatteryServiceBookingCoordinator alloc];
    v7 = [[_ACSBatteryServiceOptions alloc] initWithValues:optionsCopy];
    v8 = [(_ACSBatteryServiceBookingCoordinator *)v6 initWithOptions:v7];
    coordinator = v5->coordinator;
    v5->coordinator = v8;
  }

  return v5;
}

- (BOOL)respondsToSelector:(SEL)selector
{
  v5.receiver = self;
  v5.super_class = ACSBatteryServiceBookingCoordinator;
  if ([(ACSBatteryServiceBookingCoordinator *)&v5 respondsToSelector:?])
  {
    v3 = 1;
  }

  else
  {
    v3 = objc_opt_respondsToSelector();
  }

  return v3 & 1;
}

@end