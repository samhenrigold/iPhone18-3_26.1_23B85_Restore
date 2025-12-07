@interface ATXEventTravelTimeDataSource
- (ATXEventTravelTimeDataSource)initWithDevice:(id)device;
- (void)travelTimeInfoForEventID:(id)d location:(id)location expectedArrivalDate:(id)date transportType:(id)type localOnlyAfterFirstUpdate:(BOOL)update callback:(id)callback;
@end

@implementation ATXEventTravelTimeDataSource

- (ATXEventTravelTimeDataSource)initWithDevice:(id)device
{
  deviceCopy = device;
  v9.receiver = self;
  v9.super_class = ATXEventTravelTimeDataSource;
  v6 = [(ATXEventTravelTimeDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_device, device);
  }

  return v7;
}

- (void)travelTimeInfoForEventID:(id)d location:(id)location expectedArrivalDate:(id)date transportType:(id)type localOnlyAfterFirstUpdate:(BOOL)update callback:(id)callback
{
  updateCopy = update;
  callbackCopy = callback;
  typeCopy = type;
  dateCopy = date;
  locationCopy = location;
  dCopy = d;
  v19 = +[ATXEventTravelTimeDataSourceInternal sharedInstance];
  [v19 travelTimeInfoForEventID:dCopy location:locationCopy expectedArrivalDate:dateCopy transportType:typeCopy localOnlyAfterFirstUpdate:updateCopy heuristicDevice:self->_device callback:callbackCopy];
}

@end