@interface ASDTPMDeviceProxy
+ (id)forPMDevice:(id)device;
- (ASDTPMProtocol)proxiedDevice;
- (BOOL)asdtHandlesPowerTransition:(int)transition;
- (BOOL)pmNoStateChangeOnFailure;
- (NSString)name;
- (id)initForPMDevice:(id)device;
- (int)asdtPowerStateChange:(int)change;
- (int)performPowerStateIdle:(int)idle;
- (int)performPowerStateInactive:(int)inactive;
- (int)performPowerStateOn;
- (int)performPowerStatePrepare:(int)prepare;
- (int)performPowerStatePrewarm:(int)prewarm;
- (int)performPowerStateSleep;
- (int)powerState;
- (unsigned)pmOrderPowerDown;
- (unsigned)pmOrderPowerUp;
- (void)setPowerState:(int)state;
@end

@implementation ASDTPMDeviceProxy

+ (id)forPMDevice:(id)device
{
  deviceCopy = device;
  v5 = [[self alloc] initForPMDevice:deviceCopy];

  return v5;
}

- (id)initForPMDevice:(id)device
{
  deviceCopy = device;
  v8.receiver = self;
  v8.super_class = ASDTPMDeviceProxy;
  v5 = [(ASDTPMDeviceProxy *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(ASDTPMDeviceProxy *)v5 setProxiedDevice:deviceCopy];
  }

  return v6;
}

- (NSString)name
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  name = [proxiedDevice name];

  return name;
}

- (unsigned)pmOrderPowerUp
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  pmOrderPowerUp = [proxiedDevice pmOrderPowerUp];

  return pmOrderPowerUp;
}

- (unsigned)pmOrderPowerDown
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  pmOrderPowerDown = [proxiedDevice pmOrderPowerDown];

  return pmOrderPowerDown;
}

- (BOOL)pmNoStateChangeOnFailure
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  pmNoStateChangeOnFailure = [proxiedDevice pmNoStateChangeOnFailure];

  return pmNoStateChangeOnFailure;
}

- (int)powerState
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  powerState = [proxiedDevice powerState];

  return powerState;
}

- (void)setPowerState:(int)state
{
  v3 = *&state;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  [proxiedDevice setPowerState:v3];
}

- (int)asdtPowerStateChange:(int)change
{
  v3 = *&change;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  LODWORD(v3) = [proxiedDevice asdtPowerStateChange:v3];

  return v3;
}

- (BOOL)asdtHandlesPowerTransition:(int)transition
{
  v3 = *&transition;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  LOBYTE(v3) = [proxiedDevice asdtHandlesPowerTransition:v3];

  return v3;
}

- (int)performPowerStateSleep
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  performPowerStateSleep = [proxiedDevice performPowerStateSleep];

  return performPowerStateSleep;
}

- (int)performPowerStateInactive:(int)inactive
{
  v3 = *&inactive;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  LODWORD(v3) = [proxiedDevice performPowerStateInactive:v3];

  return v3;
}

- (int)performPowerStateIdle:(int)idle
{
  v3 = *&idle;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  LODWORD(v3) = [proxiedDevice performPowerStateIdle:v3];

  return v3;
}

- (int)performPowerStatePrepare:(int)prepare
{
  v3 = *&prepare;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  LODWORD(v3) = [proxiedDevice performPowerStatePrepare:v3];

  return v3;
}

- (int)performPowerStatePrewarm:(int)prewarm
{
  v3 = *&prewarm;
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  LODWORD(v3) = [proxiedDevice performPowerStatePrewarm:v3];

  return v3;
}

- (int)performPowerStateOn
{
  proxiedDevice = [(ASDTPMDeviceProxy *)self proxiedDevice];
  performPowerStateOn = [proxiedDevice performPowerStateOn];

  return performPowerStateOn;
}

- (ASDTPMProtocol)proxiedDevice
{
  WeakRetained = objc_loadWeakRetained(&self->_proxiedDevice);

  return WeakRetained;
}

@end