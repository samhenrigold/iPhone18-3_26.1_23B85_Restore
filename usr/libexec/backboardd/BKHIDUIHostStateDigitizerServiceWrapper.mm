@interface BKHIDUIHostStateDigitizerServiceWrapper
- (BKHIDUIHostStateDigitizerServiceWrapper)initWithIOHIDService:(id)service;
- (void)applyUIMode:(id)mode;
@end

@implementation BKHIDUIHostStateDigitizerServiceWrapper

- (void)applyUIMode:(id)mode
{
  modeCopy = mode;
  proximityDetectionMode = [modeCopy proximityDetectionMode];
  pocketTouchesExpected = [modeCopy pocketTouchesExpected];
  digitizerEnabled = [modeCopy digitizerEnabled];
  v7 = objc_alloc_init(NSMutableDictionary);
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  multitouchHostStateKeys = [modeCopy multitouchHostStateKeys];
  v9 = [multitouchHostStateKeys countByEnumeratingWithState:&v23 objects:buf count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v24;
    do
    {
      v12 = 0;
      do
      {
        if (*v24 != v11)
        {
          objc_enumerationMutation(multitouchHostStateKeys);
        }

        [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:*(*(&v23 + 1) + 8 * v12)];
        v12 = v12 + 1;
      }

      while (v10 != v12);
      v10 = [multitouchHostStateKeys countByEnumeratingWithState:&v23 objects:buf count:16];
    }

    while (v10);
  }

  if (([modeCopy changeSource] | 2) == 3)
  {
    v13 = [NSNumber numberWithUnsignedInt:786480];
    [v7 setObject:v13 forKeyedSubscript:@"ChangeSourceKeyboardUsagePair"];
  }

  if (digitizerEnabled)
  {
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:@"ScreenOn"];
  }

  displayState = [modeCopy displayState];
  if ((displayState - 1) <= 2)
  {
    v15 = [NSNumber numberWithInteger:displayState];
    [v7 setObject:v15 forKeyedSubscript:@"DisplayState"];
  }

  if (proximityDetectionMode <= 6 && ((1 << proximityDetectionMode) & 0x4C) != 0)
  {
    v16 = @"FaceTouchesExpected";
LABEL_17:
    [v7 setObject:&__kCFBooleanTrue forKeyedSubscript:v16];
    goto LABEL_18;
  }

  if ((digitizerEnabled & pocketTouchesExpected) == 1)
  {
    v16 = @"PocketTouchesExpected";
    goto LABEL_17;
  }

LABEL_18:

  senderID = [(BKIOHIDService *)self->_digitizerService senderID];
  if (BSEqualObjects())
  {
    v18 = BKLogUISensor();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v28 = senderID;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "  ignoring redundant mode change for digitizer service %llX", buf, 0xCu);
    }
  }

  else
  {
    v19 = [v7 copy];
    previousHostStateDictionary = self->_previousHostStateDictionary;
    self->_previousHostStateDictionary = v19;

    v21 = BKLogUISensor();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543874;
      v28 = v7;
      v29 = 2048;
      v30 = senderID;
      v31 = 2114;
      v32 = modeCopy;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "  send %{public}@ to digitizer service %llX for mode %{public}@", buf, 0x20u);
    }

    [(BKIOHIDService *)self->_digitizerService asyncSetProperty:v7 forKey:@"HostStateNotification"];
  }
}

- (BKHIDUIHostStateDigitizerServiceWrapper)initWithIOHIDService:(id)service
{
  serviceCopy = service;
  v9.receiver = self;
  v9.super_class = BKHIDUIHostStateDigitizerServiceWrapper;
  v6 = [(BKHIDUIHostStateDigitizerServiceWrapper *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_digitizerService, service);
  }

  return v7;
}

@end