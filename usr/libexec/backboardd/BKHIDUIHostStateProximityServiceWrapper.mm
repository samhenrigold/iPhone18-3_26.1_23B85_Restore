@interface BKHIDUIHostStateProximityServiceWrapper
- (BKHIDUIHostStateProximityServiceWrapper)initWithIOHIDService:(id)service;
- (BOOL)supportsProximityLPAEventTransitions;
- (void)applyUIMode:(id)mode;
- (void)updateCharacteristics:(id)characteristics;
@end

@implementation BKHIDUIHostStateProximityServiceWrapper

- (BOOL)supportsProximityLPAEventTransitions
{
  v2 = [(BKIOHIDService *)self->_proximityService propertyOfClass:objc_opt_class() forKey:@"ProximitySupportsLPAEventTransitions"];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (void)updateCharacteristics:(id)characteristics
{
  characteristicsCopy = characteristics;
  [characteristicsCopy setHasDiscreteProximitySensor:1];
  v4 = [(BKIOHIDService *)self->_proximityService propertyOfClass:objc_opt_class() forKey:@"SuggestedLPAScreenOffHysteresisMs"];
  v5 = v4;
  if (v4)
  {
    [characteristicsCopy setSuggestedSystemApertureGracePeriodForScreenOff:{objc_msgSend(v4, "integerValue")}];
  }
}

- (void)applyUIMode:(id)mode
{
  modeCopy = mode;
  v5 = sub_100008AE4(modeCopy, 0);
  senderID = [(BKIOHIDService *)self->_proximityService senderID];
  if (BSEqualObjects())
  {
    v7 = BKLogUISensor();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = senderID;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "  ignoring redundant mode change for proximity service %llX", &v18, 0xCu);
    }
  }

  else
  {
    v8 = [v5 copy];
    previousHostStateDictionary = self->_previousHostStateDictionary;
    self->_previousHostStateDictionary = v8;

    if ([modeCopy postEventWithCurrentDetectionMask])
    {
      v10 = sub_100008AE4(modeCopy, 1);
      v11 = BKLogUISensor();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 138543874;
        v19 = v10;
        v20 = 2048;
        v21 = senderID;
        v22 = 2114;
        v23 = modeCopy;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "  send %{public}@ to proximity service %llX for mode %{public}@", &v18, 0x20u);
      }

      [(BKIOHIDService *)self->_proximityService asyncSetProperty:v10 forKey:@"HostStateNotification" andDelayForSeconds:0.06];
    }

    v12 = BKLogUISensor();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543874;
      v19 = v5;
      v20 = 2048;
      v21 = senderID;
      v22 = 2114;
      v23 = modeCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "  send %{public}@ to proximity service %llX for mode %{public}@", &v18, 0x20u);
    }

    [(BKIOHIDService *)self->_proximityService asyncSetProperty:v5 forKey:@"HostStateNotification"];
  }

  digitizerEnabled = [modeCopy digitizerEnabled];
  pocketTouchesExpected = [modeCopy pocketTouchesExpected];
  pocketTouchesExpected2 = [(BKSHIDUISensorMode *)self->_prevailingMode pocketTouchesExpected];
  if (digitizerEnabled && pocketTouchesExpected2 && (pocketTouchesExpected & 1) == 0)
  {
    v16 = BKLogUISensor();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 134217984;
      v19 = senderID;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "  send ScreenUnlocked to proximity service %llX", &v18, 0xCu);
    }

    [(BKIOHIDService *)self->_proximityService asyncSetProperty:&__kCFBooleanTrue forKey:@"ScreenUnlocked"];
  }

  prevailingMode = self->_prevailingMode;
  self->_prevailingMode = modeCopy;
}

- (BKHIDUIHostStateProximityServiceWrapper)initWithIOHIDService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = BKHIDUIHostStateProximityServiceWrapper;
  v6 = [(BKHIDUIHostStateProximityServiceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_proximityService, service);
  }

  return v7;
}

@end