@interface CSDStatusBarManager
+ (BOOL)isDeviceSupported;
+ (id)bundleIdentifiersForPillDataSource;
- (BOOL)shouldOpenInCallServiceForCall:(id)call;
- (CSDStatusBarManager)init;
- (CSDStatusBarManager)initWithResolver:(id)resolver withSystemStatusPublisher:(id)publisher queue:(id)queue;
- (void)currentStatusDescriptorForIdentifier:(id)identifier reply:(id)reply;
- (void)displayHandoffEligibleNearbyByURL;
- (void)displayLagunaPullByURL;
- (void)displaySystemCallControlsByURL;
- (void)openInCallServiceByURL;
- (void)openUIServiceWithURL:(id)l;
- (void)openVoIPApplicationForCall:(id)call;
- (void)pillDataSourceRegistrationChangedForResolver:(id)resolver;
- (void)resolutionChangedForResolver:(id)resolver;
- (void)startTrackingException;
- (void)stopTrackingException;
- (void)updateAttributionsForDescriptor:(id)descriptor;
- (void)updateRegistrationIfNeeded;
- (void)updateStatusBar;
@end

@implementation CSDStatusBarManager

- (void)updateRegistrationIfNeeded
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  resolver = [(CSDStatusBarManager *)self resolver];
  shouldRegisterForPillDatasource = [resolver shouldRegisterForPillDatasource];

  if (shouldRegisterForPillDatasource)
  {
    resolver2 = [(CSDStatusBarManager *)self resolver];
    if ([resolver2 shouldRegisterForPillDatasource])
    {
      msnPillRegister = [(CSDStatusBarManager *)self msnPillRegister];

      if (!msnPillRegister)
      {
        v8 = objc_alloc_init(TUFeatureFlags);
        if ([v8 usesMediaSafetyNetPillDataSource])
        {
          serverBag = [(CSDStatusBarManager *)self serverBag];
          isMSNPillDataSourceEnabled = [serverBag isMSNPillDataSourceEnabled];

          if (isMSNPillDataSourceEnabled)
          {
            v11 = CUTWeakLinkClass();
            if (v11)
            {
              v12 = [v11 alloc];
              if (objc_opt_respondsToSelector())
              {
                queue2 = [(CSDStatusBarManager *)self queue];
                -[CSDStatusBarManager setMsnPillRegister:](self, "setMsnPillRegister:", [v12 performSelector:"initWithQueue:" withObject:queue2]);

                msnPillRegister2 = [(CSDStatusBarManager *)self msnPillRegister];
                v15 = objc_opt_respondsToSelector();

                if (v15)
                {
                  bundleIdentifiersForPillDataSource = [objc_opt_class() bundleIdentifiersForPillDataSource];
                  v17 = sub_100004778(bundleIdentifiersForPillDataSource);
                  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Registering for pill datasource", buf, 2u);
                  }

                  [self->_msnPillRegister performSelector:"registerPillDataSource:forIdentifiers:" withObject:self withObject:bundleIdentifiersForPillDataSource];
                }
              }
            }
          }
        }
      }
    }

    else
    {
    }
  }

  else
  {
    v18 = sub_100004778(v6);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Unregistering for pill datasource", v21, 2u);
    }

    [(CSDStatusBarManager *)self setMsnPillRegister:0];
  }
}

+ (id)bundleIdentifiersForPillDataSource
{
  v5[0] = TUBundleIdentifierFaceTimeApplication;
  v5[1] = TUBundleIdentifierMobilePhoneApplication;
  v2 = [NSArray arrayWithObjects:v5 count:2];
  v3 = [NSSet setWithArray:v2];

  return v3;
}

- (void)updateStatusBar
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  resolver = [(CSDStatusBarManager *)self resolver];
  resolvedDescriptor = [resolver resolvedDescriptor];
  [(CSDStatusBarManager *)self updateAttributionsForDescriptor:resolvedDescriptor];
}

+ (BOOL)isDeviceSupported
{
  v2 = +[FTDeviceSupport sharedInstance];
  v3 = [v2 deviceType] != 7;

  return v3;
}

- (CSDStatusBarManager)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_100028614;
  v14 = sub_100032894;
  v15 = 0;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000BEE20;
  block[3] = &unk_10061ABF0;
  selfCopy = self;
  v9 = &v10;
  v7 = dispatch_queue_create("com.apple.telephonyutilities.callservicesd.statusbarmanager", 0);
  v2 = selfCopy;
  v3 = v7;
  dispatch_sync(v3, block);
  v4 = v11[5];

  _Block_object_dispose(&v10, 8);
  return v4;
}

- (CSDStatusBarManager)initWithResolver:(id)resolver withSystemStatusPublisher:(id)publisher queue:(id)queue
{
  resolverCopy = resolver;
  publisherCopy = publisher;
  queueCopy = queue;
  v22.receiver = self;
  v22.super_class = CSDStatusBarManager;
  v12 = [(CSDStatusBarManager *)&v22 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_queue, queue);
    objc_storeStrong(&v13->_resolver, resolver);
    [(CSDStatusBarResolver *)v13->_resolver setDelegate:v13];
    objc_storeStrong(&v13->_systemStatusPublisher, publisher);
    objc_initWeak(&location, v13);
    systemStatusPublisher = v13->_systemStatusPublisher;
    v16 = _NSConcreteStackBlock;
    v17 = 3221225472;
    v18 = sub_1000BF03C;
    v19 = &unk_10061AC18;
    objc_copyWeak(&v20, &location);
    [(STCallingStatusDomainPublisher *)systemStatusPublisher handleUserInteractionsWithBlock:&v16];
    [(CSDStatusBarManager *)v13 updateStatusBar:v16];
    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return v13;
}

- (BOOL)shouldOpenInCallServiceForCall:(id)call
{
  callCopy = call;
  status = [callCopy status];
  resolvedConversation = [(CSDStatusBarResolver *)self->_resolver resolvedConversation];
  if ([resolvedConversation state] == 1)
  {
    resolvedConversation2 = [(CSDStatusBarResolver *)self->_resolver resolvedConversation];
    v8 = [resolvedConversation2 avMode] == 2;
  }

  else
  {
    v8 = 0;
  }

  if (status == 4)
  {
    v9 = 1;
  }

  else
  {
    provider = [callCopy provider];
    v9 = [provider isSystemProvider] | v8;
  }

  v11 = objc_alloc_init(TUFeatureFlags);
  provider2 = [callCopy provider];
  if (![provider2 supportsDynamicSystemUI] || !objc_msgSend(v11, "groupConversations"))
  {
    goto LABEL_12;
  }

  HasChinaSKU = TUDeviceHasChinaSKU();

  if (HasChinaSKU)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      provider2 = [callCopy providerDisplayMonitor];
      v9 = [provider2 isVisible] ^ 1;
LABEL_12:
    }
  }

  if ([callCopy isPTT])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      providerDisplayMonitor = [callCopy providerDisplayMonitor];
      v9 = [providerDisplayMonitor isVisible] ^ 1;
    }
  }

  return v9 & 1;
}

- (void)updateAttributionsForDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    currentDescriptor = [(CSDStatusBarManager *)self currentDescriptor];
    *buf = 138543618;
    *&buf[4] = currentDescriptor;
    *&buf[12] = 2114;
    *&buf[14] = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "updating descriptor old: %{public}@ new: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = sub_100028614;
  v16 = sub_100032894;
  currentDescriptor2 = [(CSDStatusBarManager *)self currentDescriptor];
  [(CSDStatusBarManager *)self setCurrentDescriptor:descriptorCopy];
  systemStatusPublisher = [(CSDStatusBarManager *)self systemStatusPublisher];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000BF660;
  v11[3] = &unk_10061AC40;
  v13 = buf;
  v10 = descriptorCopy;
  v12 = v10;
  [systemStatusPublisher updateVolatileDataWithBlock:v11];

  _Block_object_dispose(buf, 8);
}

- (void)currentStatusDescriptorForIdentifier:(id)identifier reply:(id)reply
{
  replyCopy = reply;
  identifierCopy = identifier;
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  bundleIdentifiersForPillDataSource = [objc_opt_class() bundleIdentifiersForPillDataSource];
  v9 = [bundleIdentifiersForPillDataSource containsObject:identifierCopy];

  if (v9)
  {
    resolver = [(CSDStatusBarManager *)self resolver];
    resolvedCallForActiveDescriptor = [resolver resolvedCallForActiveDescriptor];

    if (resolvedCallForActiveDescriptor)
    {
      currentDescriptor = [(CSDStatusBarManager *)self currentDescriptor];
      if (![resolvedCallForActiveDescriptor isScreening] || (objc_msgSend(resolvedCallForActiveDescriptor, "screeningAnnouncementHasFinished") & 1) != 0 || currentDescriptor)
      {
        if ([resolvedCallForActiveDescriptor isScreening] && objc_msgSend(resolvedCallForActiveDescriptor, "screeningAnnouncementHasFinished") && currentDescriptor)
        {
          [(CSDStatusBarManager *)self stopTrackingException];
        }
      }

      else
      {
        [(CSDStatusBarManager *)self startTrackingException];
      }
    }

    else
    {
      [(CSDStatusBarManager *)self stopTrackingException];
      currentDescriptor = 0;
    }
  }

  else
  {
    currentDescriptor = 0;
  }

  replyCopy[2](replyCopy, currentDescriptor);
}

- (void)startTrackingException
{
  isTrackingMSNException = [(CSDStatusBarManager *)self isTrackingMSNException];
  if ((isTrackingMSNException & 1) == 0)
  {
    v4 = sub_100004778(isTrackingMSNException);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Starting MSN Exception", v5, 2u);
    }

    MSNMonitorBeginException();
    [(CSDStatusBarManager *)self setIsTrackingMSNException:1];
  }
}

- (void)stopTrackingException
{
  isTrackingMSNException = [(CSDStatusBarManager *)self isTrackingMSNException];
  if (isTrackingMSNException)
  {
    v4 = sub_100004778(isTrackingMSNException);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Ending MSN Exception", v5, 2u);
    }

    MSNMonitorEndException();
    [(CSDStatusBarManager *)self setIsTrackingMSNException:0];
  }
}

- (void)displaySystemCallControlsByURL
{
  v3 = +[NSURL faceTimeShowSystemCallControlsURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)displayHandoffEligibleNearbyByURL
{
  v3 = +[NSURL faceTimeShowHandoffEligibleNearbyURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)displayLagunaPullByURL
{
  v3 = +[NSURL faceTimeShowLagunaPullConversationURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)openInCallServiceByURL
{
  v3 = +[NSURL faceTimeShowInCallUIURL];
  [(CSDStatusBarManager *)self openUIServiceWithURL:v3];
}

- (void)openUIServiceWithURL:(id)l
{
  lCopy = l;
  v4 = +[CSDCallCapabilities sharedInstance];
  _supportslaunchingInCallApplicationForIncomingCall = [v4 _supportslaunchingInCallApplicationForIncomingCall];

  if (_supportslaunchingInCallApplicationForIncomingCall)
  {
    v6 = lCopy;
    TUOpenURLWithCompletion();
  }
}

- (void)openVoIPApplicationForCall:(id)call
{
  callCopy = call;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = callCopy;
  }

  else
  {
    v4 = 0;
  }

  applicationRecord = [v4 applicationRecord];
  bundleIdentifier = [applicationRecord bundleIdentifier];

  if ([bundleIdentifier length])
  {
    v7 = objc_alloc_init(_LSOpenConfiguration);
    isPTT = [v4 isPTT];
    v9 = isPTT;
    v10 = sub_100004778(isPTT);
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
    if (v9)
    {
      if (v11)
      {
        *buf = 138412290;
        v26 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Background launching application with bundle identifier %@", buf, 0xCu);
      }

      v23 = FBSOpenApplicationOptionKeyActivateSuspended;
      v24 = &__kCFBooleanTrue;
      v12 = &v24;
      v13 = &v23;
      v14 = 1;
    }

    else
    {
      if (v11)
      {
        *buf = 138412290;
        v26 = bundleIdentifier;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Foreground launching application with bundle identifier %@", buf, 0xCu);
      }

      v21[0] = FBSOpenApplicationOptionKeyUnlockDevice;
      v21[1] = FBSOpenApplicationOptionKeyPromptUnlockDevice;
      v22[0] = &__kCFBooleanTrue;
      v22[1] = &__kCFBooleanTrue;
      v12 = v22;
      v13 = v21;
      v14 = 2;
    }

    v15 = [NSDictionary dictionaryWithObjects:v12 forKeys:v13 count:v14];
    [v7 setFrontBoardOptions:v15];

    v16 = +[LSApplicationWorkspace defaultWorkspace];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_1000BFF10;
    v17[3] = &unk_10061AC68;
    v18 = bundleIdentifier;
    v19 = v4;
    v20 = callCopy;
    [v16 openApplicationWithBundleIdentifier:v18 configuration:v7 completionHandler:v17];
  }
}

- (void)resolutionChangedForResolver:(id)resolver
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDStatusBarManager *)self updateStatusBar];
}

- (void)pillDataSourceRegistrationChangedForResolver:(id)resolver
{
  queue = [(CSDStatusBarManager *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDStatusBarManager *)self updateRegistrationIfNeeded];
}

@end