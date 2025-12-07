@interface ASDTDeviceInterest
+ (id)createForObject:(id)object withInterests:(int)interests;
- (ASDTDeviceInterestProtocol)interested;
- (id)initForObject:(id)object withInterests:(int)interests;
- (void)notifyOfInterest:(int)interest forDevice:(id)device;
@end

@implementation ASDTDeviceInterest

- (id)initForObject:(id)object withInterests:(int)interests
{
  v4 = *&interests;
  objectCopy = object;
  v10.receiver = self;
  v10.super_class = ASDTDeviceInterest;
  v7 = [(ASDTDeviceInterest *)&v10 init];
  if (v7)
  {
    if (![objectCopy conformsToProtocol:&unk_28535A428])
    {
      v8 = 0;
      goto LABEL_6;
    }

    [(ASDTDeviceInterest *)v7 setInterested:objectCopy];
    [(ASDTDeviceInterest *)v7 setInterests:v4];
  }

  v8 = v7;
LABEL_6:

  return v8;
}

+ (id)createForObject:(id)object withInterests:(int)interests
{
  v4 = *&interests;
  objectCopy = object;
  v7 = [[self alloc] initForObject:objectCopy withInterests:v4];

  return v7;
}

- (void)notifyOfInterest:(int)interest forDevice:(id)device
{
  v4 = *&interest;
  deviceCopy = device;
  if (deviceCopy && ([(ASDTDeviceInterest *)self interests]& v4) != 0)
  {
    interested = [(ASDTDeviceInterest *)self interested];
    [interested interestNotification:v4 forDevice:deviceCopy];
  }
}

- (ASDTDeviceInterestProtocol)interested
{
  WeakRetained = objc_loadWeakRetained(&self->_interested);

  return WeakRetained;
}

@end