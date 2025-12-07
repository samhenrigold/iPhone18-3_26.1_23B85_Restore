@interface CLVehicleHeadingInternal
- (CLVehicleHeadingInternal)initWithClientVehicleHeading:(id)heading;
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation CLVehicleHeadingInternal

- (CLVehicleHeadingInternal)initWithClientVehicleHeading:(id)heading
{
  var1 = heading.var1;
  var0 = heading.var0;
  v6.receiver = self;
  v6.super_class = CLVehicleHeadingInternal;
  result = [(CLVehicleHeadingInternal *)&v6 init];
  if (result)
  {
    result->fHeading.trueHeading = var0;
    result->fHeading.timestamp = var1;
  }

  return result;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = objc_opt_class();
  v8 = objc_msgSend_allocWithZone_(v5, v6, zone, v7);
  trueHeading = self->fHeading.trueHeading;
  timestamp = self->fHeading.timestamp;

  return objc_msgSend_initWithClientVehicleHeading_(v8, v9, v10, v11, trueHeading, timestamp);
}

@end