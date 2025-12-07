@interface AFKEndpointInterfacePowerlogDisplay
- (AFKEndpointInterfacePowerlogDisplay)initWithService:(unsigned int)service andIOKitComposition:(id)composition;
- (PLIOKitOperatorComposition)comp;
- (void)cancel;
@end

@implementation AFKEndpointInterfacePowerlogDisplay

- (AFKEndpointInterfacePowerlogDisplay)initWithService:(unsigned int)service andIOKitComposition:(id)composition
{
  v4 = *&service;
  compositionCopy = composition;
  v13.receiver = self;
  v13.super_class = AFKEndpointInterfacePowerlogDisplay;
  v7 = [(AFKEndpointInterface *)&v13 initWithService:v4];
  v8 = v7;
  if (v7)
  {
    [(AFKEndpointInterfacePowerlogDisplay *)v7 setValid:1];
    [(AFKEndpointInterfacePowerlogDisplay *)v8 setComp:compositionCopy];
    v9 = IOServiceAddInterestNotification([compositionCopy ioNotifyPort], v4, "IOGeneralInterest", serviceInterestCallback, v8, &v8->_notification);
    if (v9)
    {
      v10 = PLLogDisplay(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_25EE51000, v10, OS_LOG_TYPE_DEFAULT, "Error trying to setup IO service interest notification", v12, 2u);
      }
    }
  }

  return v8;
}

- (void)cancel
{
  notification = self->_notification;
  if (notification)
  {
    IOObjectRelease(notification);
  }

  v4.receiver = self;
  v4.super_class = AFKEndpointInterfacePowerlogDisplay;
  [(AFKEndpointInterface *)&v4 cancel];
}

- (PLIOKitOperatorComposition)comp
{
  WeakRetained = objc_loadWeakRetained(&self->_comp);

  return WeakRetained;
}

@end