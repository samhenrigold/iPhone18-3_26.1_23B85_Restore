@interface CSDAssistantServicesObserver
- (CSDAssistantServicesObserver)initWithQueue:(id)queue;
- (NSString)announceCallsProviderIdentifier;
- (void)addDelegate:(id)delegate queue:(id)queue;
- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)dealloc;
- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform;
- (void)handleAFPreferencesDidChangeNotification:(id)notification;
- (void)removeDelegate:(id)delegate;
- (void)setAnnounceCallsProviderIdentifier:(id)identifier;
- (void)updateAnnounceCallsVersionForAssistantAvailableWhenLocked:(BOOL)locked;
- (void)updateAnnounceCallsVersionForAssistantAvailableWhenLocked:(BOOL)locked availableRequestTypes:(unint64_t)types;
- (void)updateAnnounceCallsVersionForAvailableRequestTypes:(unint64_t)types;
@end

@implementation CSDAssistantServicesObserver

- (CSDAssistantServicesObserver)initWithQueue:(id)queue
{
  queueCopy = queue;
  v21.receiver = self;
  v21.super_class = CSDAssistantServicesObserver;
  v6 = [(CSDAssistantServicesObserver *)&v21 init];
  v7 = v6;
  if (v6)
  {
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v6->_queue, queue);
    v7->_announceCallsPlatform = 1;
    objc_storeStrong(&v7->_announceCallsProviderIdentifier, TUBundleIdentifierInCallServiceApplication);
    v8 = objc_alloc_init(TUDelegateController);
    delegateController = v7->_delegateController;
    v7->_delegateController = v8;

    v10 = objc_alloc_init(TUFeatureFlags);
    featureFlags = v7->_featureFlags;
    v7->_featureFlags = v10;

    v12 = +[AFPreferences sharedPreferences];
    assistantPreferences = v7->_assistantPreferences;
    v7->_assistantPreferences = v12;

    v7->_assistantAvailableWhenLocked = [(AFPreferences *)v7->_assistantPreferences disableAssistantWhilePasscodeLocked]^ 1;
    v14 = +[NSNotificationCenter defaultCenter];
    [v14 addObserver:v7 selector:"handleAFPreferencesDidChangeNotification:" name:AFPreferencesDidChangeNotification object:v7->_assistantPreferences];

    v15 = [[AFSiriAnnouncementRequestCapabilityManager alloc] initWithPlatform:v7->_announceCallsPlatform];
    announcementRequestCapabilityManager = v7->_announcementRequestCapabilityManager;
    v7->_announcementRequestCapabilityManager = v15;

    [(AFSiriAnnouncementRequestCapabilityManager *)v7->_announcementRequestCapabilityManager addObserver:v7];
    v17 = v7->_announcementRequestCapabilityManager;
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100218E88;
    v19[3] = &unk_10061EC20;
    v20 = v7;
    [(AFSiriAnnouncementRequestCapabilityManager *)v17 fetchAvailableAnnouncementRequestTypesWithCompletion:v19];
  }

  return v7;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AFPreferencesDidChangeNotification object:self->_assistantPreferences];

  [(AFSiriAnnouncementRequestCapabilityManager *)self->_announcementRequestCapabilityManager removeObserver:self];
  v4.receiver = self;
  v4.super_class = CSDAssistantServicesObserver;
  [(CSDAssistantServicesObserver *)&v4 dealloc];
}

- (NSString)announceCallsProviderIdentifier
{
  os_unfair_lock_lock(&self->_accessorLock);
  v3 = self->_announceCallsProviderIdentifier;
  os_unfair_lock_unlock(&self->_accessorLock);

  return v3;
}

- (void)setAnnounceCallsProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_accessorLock);
  if ((TUStringsAreEqualOrNil() & 1) == 0)
  {
    v5 = [identifierCopy copy];
    announceCallsProviderIdentifier = self->_announceCallsProviderIdentifier;
    self->_announceCallsProviderIdentifier = v5;

    delegateController = [(CSDAssistantServicesObserver *)self delegateController];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100219060;
    v8[3] = &unk_10061EC48;
    v8[4] = self;
    v9 = identifierCopy;
    [delegateController enumerateDelegatesUsingBlock:v8];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)addDelegate:(id)delegate queue:(id)queue
{
  queueCopy = queue;
  delegateCopy = delegate;
  delegateController = [(CSDAssistantServicesObserver *)self delegateController];
  [delegateController addDelegate:delegateCopy queue:queueCopy];
}

- (void)removeDelegate:(id)delegate
{
  delegateCopy = delegate;
  delegateController = [(CSDAssistantServicesObserver *)self delegateController];
  [delegateController removeDelegate:delegateCopy];
}

- (void)updateAnnounceCallsVersionForAssistantAvailableWhenLocked:(BOOL)locked
{
  lockedCopy = locked;
  availableAnnounceCallsRequestTypes = [(CSDAssistantServicesObserver *)self availableAnnounceCallsRequestTypes];

  [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:lockedCopy availableRequestTypes:availableAnnounceCallsRequestTypes];
}

- (void)updateAnnounceCallsVersionForAvailableRequestTypes:(unint64_t)types
{
  isAssistantAvailableWhenLocked = [(CSDAssistantServicesObserver *)self isAssistantAvailableWhenLocked];

  [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:isAssistantAvailableWhenLocked availableRequestTypes:types];
}

- (void)updateAnnounceCallsVersionForAssistantAvailableWhenLocked:(BOOL)locked availableRequestTypes:(unint64_t)types
{
  lockedCopy = locked;
  if (!locked)
  {
    v7 = sub_100004778(self);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Announce calls with answer prompt is not available; Siri is not available when device is locked.", buf, 2u);
    }
  }

  if ((types & 2) == 0)
  {
    v8 = sub_100004778(self);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Announce calls with answer prompt is not available; eligible headphones are not connected.", v12, 2u);
    }
  }

  [(CSDAssistantServicesObserver *)self setAssistantAvailableWhenLocked:lockedCopy];
  [(CSDAssistantServicesObserver *)self setAvailableAnnounceCallsRequestTypes:types];
  if ((types & 2) != 0 && lockedCopy)
  {
    featureFlags = [(CSDAssistantServicesObserver *)self featureFlags];
    announceCalls = [featureFlags announceCalls];
    v11 = &TUBundleIdentifierCallServicesDaemon;
    if (!announceCalls)
    {
      v11 = &TUBundleIdentifierInCallServiceApplication;
    }

    [(CSDAssistantServicesObserver *)self setAnnounceCallsProviderIdentifier:*v11];
  }

  else
  {
    [(CSDAssistantServicesObserver *)self setAnnounceCallsProviderIdentifier:TUBundleIdentifierInCallServiceApplication];
  }
}

- (void)availableAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  announceCallsPlatform = [(CSDAssistantServicesObserver *)self announceCallsPlatform];
  if (announceCallsPlatform == platform)
  {
    v8 = sub_100004778(announceCallsPlatform);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      platformCopy = platform;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Available announcement request types changed for platform %ld", &v9, 0xCu);
    }

    [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAvailableRequestTypes:changed];
  }
}

- (void)eligibleAnnouncementRequestTypesChanged:(unint64_t)changed onPlatform:(int64_t)platform
{
  announceCallsPlatform = [(CSDAssistantServicesObserver *)self announceCallsPlatform];
  if (announceCallsPlatform == platform)
  {
    v6 = sub_100004778(announceCallsPlatform);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 134217984;
      platformCopy = platform;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Eligible announcement request types changed for platform %ld", &v7, 0xCu);
    }
  }
}

- (void)handleAFPreferencesDidChangeNotification:(id)notification
{
  assistantPreferences = [(CSDAssistantServicesObserver *)self assistantPreferences];
  disableAssistantWhilePasscodeLocked = [assistantPreferences disableAssistantWhilePasscodeLocked];

  if (disableAssistantWhilePasscodeLocked == [(CSDAssistantServicesObserver *)self isAssistantAvailableWhenLocked])
  {

    [(CSDAssistantServicesObserver *)self updateAnnounceCallsVersionForAssistantAvailableWhenLocked:disableAssistantWhilePasscodeLocked ^ 1];
  }
}

@end