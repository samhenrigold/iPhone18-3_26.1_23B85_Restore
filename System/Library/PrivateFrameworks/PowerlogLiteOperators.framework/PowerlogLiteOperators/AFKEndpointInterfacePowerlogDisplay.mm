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
  v12.receiver = self;
  v12.super_class = AFKEndpointInterfacePowerlogDisplay;
  v7 = [(AFKEndpointInterface *)&v12 initWithService:v4];
  v8 = v7;
  if (v7)
  {
    [(AFKEndpointInterfacePowerlogDisplay *)v7 setValid:1];
    [(AFKEndpointInterfacePowerlogDisplay *)v8 setComp:compositionCopy];
    if (IOServiceAddInterestNotification([compositionCopy ioNotifyPort], v4, "IOGeneralInterest", serviceInterestCallback, v8, &v8->_notification))
    {
      v9 = PLLogDisplay();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *v11 = 0;
        _os_log_impl(&dword_21A4C6000, v9, OS_LOG_TYPE_DEFAULT, "Error trying to setup IO service interest notification", v11, 2u);
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