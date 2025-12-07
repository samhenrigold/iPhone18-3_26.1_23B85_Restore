@interface WACUIViewController
- (BOOL)hostIsEntitled;
- (WACUIViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)airPortAssistantCompleteWithResult:(int)result context:(id)context animated:(BOOL)animated;
- (void)backendConfigureAirPortAssistantWithTargetMACAddress:(id)address;
- (void)backendStartSearch;
- (void)backendStopSearch;
- (void)cancelActiveConfiguration;
- (void)dealloc;
- (void)didReceiveMemoryWarning;
- (void)shouldCheckWiFiPowerStatus;
- (void)updateState:(int64_t)state;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)wacDevicesAdded:(id)added andWACDevicesRemoved:(id)removed;
@end

@implementation WACUIViewController

- (WACUIViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v11.receiver = self;
  v11.super_class = WACUIViewController;
  v4 = [(WACUIViewController *)&v11 initWithNibName:name bundle:bundle];
  if (v4)
  {
    v5 = objc_alloc_init(AirPortAssistantManager);
    airportAssistantManager = v4->_airportAssistantManager;
    v4->_airportAssistantManager = v5;

    [(AirPortAssistantManager *)v4->_airportAssistantManager setDelegate:v4];
    v4->_authorized = 0;
    v4->_wifiManager = WiFiManagerClientCreate();
    CFRunLoopGetCurrent();
    WiFiManagerClientScheduleWithRunLoop();
    WiFiManagerClientSetType();
    v7 = WiFiManagerClientCopyDevices();
    v8 = v7;
    if (v7)
    {
      if ([v7 count])
      {
        v9 = [v8 objectAtIndex:0];
        v4->_wifiDevice = v9;
        CFRetain(v9);
        WiFiDeviceClientRegisterPowerCallback();
      }

      CFRelease(v8);
    }

    v4->__debugLog = +[WACLogging isEnabled];
  }

  return v4;
}

- (void)dealloc
{
  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    CFRelease(wifiManager);
  }

  wifiDevice = self->_wifiDevice;
  if (wifiDevice)
  {
    CFRelease(wifiDevice);
  }

  v5.receiver = self;
  v5.super_class = WACUIViewController;
  [(WACUIViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = WACUIViewController;
  [(WACUIViewController *)&v3 viewDidLoad];
  if (self->__debugLog)
  {
    NSLog(@"Plugin: ViewDidLoad");
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = WACUIViewController;
  [(WACUIViewController *)&v4 viewDidAppear:appear];
  if (self->__debugLog)
  {
    NSLog(@"Plugin: ViewDidAppear");
  }
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  if (self->__debugLog)
  {
    NSLog(@"Plugin: viewDidDisappear", a2);
  }

  v7.receiver = self;
  v7.super_class = WACUIViewController;
  [(WACUIViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = [(WACUIViewController *)self nav];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100001154;
  v6[3] = &unk_1000041C0;
  v6[4] = self;
  [v5 dismissViewControllerAnimated:0 completion:v6];
}

- (void)didReceiveMemoryWarning
{
  v2.receiver = self;
  v2.super_class = WACUIViewController;
  [(WACUIViewController *)&v2 didReceiveMemoryWarning];
}

- (void)shouldCheckWiFiPowerStatus
{
  if (self->__debugLog)
  {
    NSLog(@"Plugin: shouldCheckWiFiPowerStatus", a2);
  }

  if (self->_wifiDevice && !WiFiDeviceClientGetPower() && [(WACUIViewController *)self hostIsEntitled])
  {
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy wifiDidShutdown];
  }
}

- (BOOL)hostIsEntitled
{
  if (!self->_didCheckedEntitlements)
  {
    self->_didCheckedEntitlements = 1;
    memset(&v11, 0, sizeof(v11));
    objc_msgSend__hostAuditToken(self, a2);
    if (self->__debugLog)
    {
      NSLog(@"Audit Token: %x %x %x %x %x %x %x %x", v11.val[0], v11.val[1], v11.val[2], v11.val[3], v11.val[4], v11.val[5], v11.val[6], v11.val[7]);
    }

    token = v11;
    v3 = SecTaskCreateWithAuditToken(kCFAllocatorDefault, &token);
    v4 = v3;
    if (self->__debugLog)
    {
      NSLog(@"Task: %@", v3);
    }

    *token.val = 0;
    v5 = SecTaskCopyValueForEntitlement(v4, @"com.apple.external-accessory.wireless-configuration", &token);
    v6 = v5;
    if (v5)
    {
      v7 = CFGetTypeID(v5);
      v8 = v7 == CFBooleanGetTypeID() && CFBooleanGetValue(v6) != 0;
      self->_authorized = v8;
    }

    if (self->__debugLog)
    {
      NSLog(@"Entitlement returned: %@, Error returned: %@", v6, *token.val);
    }

    if (v6)
    {
      CFRelease(v6);
    }

    if (*token.val)
    {
      CFRelease(*token.val);
    }

    if (v4)
    {
      CFRelease(v4);
    }
  }

  return self->_authorized;
}

- (void)cancelActiveConfiguration
{
  if (self->__debugLog)
  {
    NSLog(@"Plugin: cancelActiveConfiguration", a2);
  }

  airportAssistantController = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
  viewController = [airportAssistantController viewController];
  [viewController performSelector:"handeImmediateCancel" withObject:0];
}

- (void)wacDevicesAdded:(id)added andWACDevicesRemoved:(id)removed
{
  addedCopy = added;
  removedCopy = removed;
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy backendFoundNewWACDevices:addedCopy andRemovedWACDevices:removedCopy];
  }
}

- (void)airPortAssistantCompleteWithResult:(int)result context:(id)context animated:(BOOL)animated
{
  v5 = *&result;
  if ([(WACUIViewController *)self hostIsEntitled:*&result])
  {
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy dismissWithStatus:v5];
  }
}

- (void)updateState:(int64_t)state
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    _remoteViewControllerProxy = [(WACUIViewController *)self _remoteViewControllerProxy];
    [_remoteViewControllerProxy updateState:state];
  }
}

- (void)backendStartSearch
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    airportAssistantManager = self->_airportAssistantManager;

    [(AirPortAssistantManager *)airportAssistantManager startSearchingForUnconfiguredAccessories];
  }
}

- (void)backendStopSearch
{
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    airportAssistantManager = self->_airportAssistantManager;

    [(AirPortAssistantManager *)airportAssistantManager stopSearchingForUnconfiguredAccessories];
  }
}

- (void)backendConfigureAirPortAssistantWithTargetMACAddress:(id)address
{
  addressCopy = address;
  if ([(WACUIViewController *)self hostIsEntitled])
  {
    v13[0] = kAirPortAssistantDeviceMACAddressKey;
    v13[1] = kAirPortAssistantWACShouldHideFindAppUIKey;
    v14[0] = addressCopy;
    v14[1] = &__kCFBooleanTrue;
    v5 = [NSDictionary dictionaryWithObjects:v14 forKeys:v13 count:2];
    [(AirPortAssistantManager *)self->_airportAssistantManager stopSearchingForUnconfiguredAccessories];
    airportAssistantController = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
    [airportAssistantController configureUIViewControllerWithParameters:v5];

    [(WACUIViewController *)self updateState:3];
    v7 = [AirPortAssistantUINavigationController alloc];
    airportAssistantController2 = [(AirPortAssistantManager *)self->_airportAssistantManager airportAssistantController];
    viewController = [airportAssistantController2 viewController];
    v10 = [v7 initWithRootViewController:viewController];
    nav = self->_nav;
    self->_nav = v10;

    [(AirPortAssistantUINavigationController *)self->_nav setModalInPresentation:1];
    v12 = [(WACUIViewController *)self nav];
    [(WACUIViewController *)self presentViewController:v12 animated:0 completion:0];
  }
}

@end