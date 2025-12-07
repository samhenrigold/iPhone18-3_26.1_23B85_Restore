@interface SDBonjourBrowser
+ (void)updateFriendRPIdentityForAccountID:(id)d withAirDropClientInfo:(id)info;
- (BOOL)shouldStart;
- (BOOL)thisIsTheFinder;
- (BOOL)validAirDropInterface:(unsigned int)interface;
- (NSArray)nodes;
- (NSString)bundleID;
- (NSString)description;
- (SDBonjourBrowser)initWithDomain:(id)domain types:(id)types;
- (SDBonjourBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (__SFNode)copyNodeForName:(id)name;
- (__SFNode)copyNodeForService:(id)service;
- (id)colorArrayFromEcolor:(id)ecolor icolor:(id)icolor;
- (id)odiskMountPoints:(id)points;
- (id)queryKey:(id)key type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType;
- (id)serviceFromServiceName:(id)name;
- (id)valueForKey:(id)key inTXTRecord:(const void *)record withLength:(unsigned __int16)length;
- (unsigned)getInterface:(unsigned int)interface;
- (void)addObservers;
- (void)addQueryToDictionary:(_DNSServiceRef_t *)dictionary name:(id)name type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType;
- (void)addService:(id)service type:(id)type domain:(id)domain interface:(unsigned int)interface;
- (void)advertiseHashes;
- (void)airDropClient:(id)client event:(int64_t)event withResults:(id)results;
- (void)awdl:(id)awdl failedToStartAdvertisingWithError:(id)error;
- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi;
- (void)awdlDidUpdateState:(id)state;
- (void)cancelAirDropRequests;
- (void)cancelIdentityQueries;
- (void)cleanupAirDropRequest:(id)request;
- (void)cleanupRecordQuery:(id)query type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType;
- (void)cleanupRecordQueryForKey:(id)key;
- (void)cleanupRecordQueryForNetService:(id)service recordType:(unsigned __int16)type;
- (void)clearCache;
- (void)clearCacheAndNotify;
- (void)commentChanged:(id)changed comment:(id)comment;
- (void)contactsChanged:(id)changed;
- (void)dealloc;
- (void)deviceInfoChanged:(id)changed model:(id)model ecolor:(id)ecolor icolor:(id)icolor osxvers:(id)osxvers;
- (void)handleBrowseCallBack:(unsigned int)back interface:(unsigned int)interface error:(int)error name:(const char *)name type:(const char *)type domain:(const char *)domain;
- (void)handleIdentity:(id)identity withQueryID:(id)d emailOrPhone:(id)phone error:(id)error;
- (void)handleQueryCallBack:(unsigned int)back error:(int)error fullname:(const char *)fullname rrtype:(unsigned __int16)rrtype rdlen:(unsigned __int16)rdlen rdata:(const void *)rdata;
- (void)invalidate;
- (void)linkStateChanged:(id)changed;
- (void)logAirDropDiscoveryInfoForNode:(__SFNode *)node;
- (void)logAirDropSessionInfo;
- (void)notifyClient;
- (void)notifyClientIfDone:(unsigned int)done;
- (void)personInfoChanged:(id)changed flags:(id)flags atag:(id)atag cname:(id)cname phash:(id)phash ehash:(id)ehash nhash:(id)nhash;
- (void)processTXTRecordUpdate:(const char *)update rdlen:(unsigned __int16)rdlen rdata:(const void *)rdata;
- (void)queryRecordTimerCallBack:(id)back;
- (void)removeInvalidNodes:(id)nodes;
- (void)removeObservers;
- (void)removeService:(id)service type:(id)type domain:(id)domain;
- (void)restartAfterDelay:(double)delay;
- (void)restartBrowser:(id)browser;
- (void)setMode:(int64_t)mode;
- (void)start;
- (void)startAirDropRequestForNode:(__SFNode *)node;
- (void)startConnectionlessAdvertisingWithData:(id)data;
- (void)startIdentityQueryForNode:(__SFNode *)node;
- (void)startPictureQuery:(id)query;
- (void)startRecordQuery:(id)query type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType interface:(unsigned int)interface;
- (void)stop;
- (void)stopConnectionlessAdvertising;
- (void)systemInfoChanged:(id)changed diskInfo:(__CFDictionary *)info;
- (void)updateBrowserState;
- (void)updateSecondaryNameForNodes:(id)nodes;
- (void)updateServerCacheIfNeeded;
@end

@implementation SDBonjourBrowser

- (SDBonjourBrowser)initWithDomain:(id)domain types:(id)types
{
  domainCopy = domain;
  typesCopy = types;
  v34.receiver = self;
  v34.super_class = SDBonjourBrowser;
  v9 = [(SDBonjourBrowser *)&v34 init];
  v10 = v9;
  if (v9)
  {
    airDropRequests = v9->_airDropRequests;
    v9->_airDropRequests = 0;

    v10->_awdlIndex = 0;
    bundleID = v10->_bundleID;
    v10->_bundleID = 0;

    v10->_connection = 0;
    discoveredPeers = v10->_discoveredPeers;
    v10->_discoveredPeers = 0;

    objc_storeStrong(&v10->_domain, domain);
    v10->_firstTime = 0.0;
    iconCache = v10->_iconCache;
    v10->_iconCache = 0;

    v10->_identityQueries = 0;
    isFinder = v10->_isFinder;
    v10->_isFinder = 0;

    v10->_maxServices = 0;
    v10->_mode = 0;
    proximity = v10->_proximity;
    v10->_proximity = 0;

    sessionID = v10->_sessionID;
    v10->_sessionID = 0;

    serverCache = v10->_serverCache;
    v10->_serverCache = 0;

    v10->_startTime = 0.0;
    *&v10->_transfersInitiated = 0;
    objc_storeStrong(&v10->_types, types);
    v19 = objc_opt_new();
    servers = v10->_servers;
    v10->_servers = v19;

    v21 = objc_opt_new();
    dnsQueries = v10->_dnsQueries;
    v10->_dnsQueries = v21;

    v23 = +[SDStatusMonitor sharedMonitor];
    monitor = v10->_monitor;
    v10->_monitor = v23;

    v10->_isNetBIOS = [typesCopy containsObject:@"_netbios._udp."];
    v10->_isAirDrop = [typesCopy containsObject:sub_10011830C()];
    v10->_isWorkgroups = [typesCopy containsObject:@"_workgroups._udp."];
    v25 = [NSTimer scheduledTimerWithTimeInterval:v10 target:"restartBrowser:" selector:0 userInfo:1 repeats:1.0e30];
    restartTimer = v10->_restartTimer;
    v10->_restartTimer = v25;

    if (v10->_isAirDrop)
    {
      v27 = objc_opt_new();
      v28 = v10->_airDropRequests;
      v10->_airDropRequests = v27;

      v29 = objc_opt_new();
      v30 = v10->_discoveredPeers;
      v10->_discoveredPeers = v29;

      v31 = objc_opt_new();
      v32 = v10->_iconCache;
      v10->_iconCache = v31;

      v10->_identityQueries = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    [(SDBonjourBrowser *)v10 addObservers];
  }

  return v10;
}

- (NSString)bundleID
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection && !self->_bundleID)
  {
    v4 = sub_10000C344(xpcConnection);
    bundleID = self->_bundleID;
    self->_bundleID = v4;
  }

  v6 = self->_bundleID;

  return v6;
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    [(SDBonjourBrowser *)self stop];
    [(SDBonjourBrowser *)self notifyClient];

    [(SDBonjourBrowser *)self updateBrowserState];
  }
}

- (void)restartBrowser:(id)browser
{
  if (self->_startCalled)
  {
    [(SDBonjourBrowser *)self stop];
    [(SDBonjourBrowser *)self notifyClient];

    [(SDBonjourBrowser *)self updateBrowserState];
  }
}

- (void)dealloc
{
  [(SDBonjourBrowser *)self removeObservers];
  identityQueries = self->_identityQueries;
  if (identityQueries)
  {
    CFRelease(identityQueries);
  }

  v4.receiver = self;
  v4.super_class = SDBonjourBrowser;
  [(SDBonjourBrowser *)&v4 dealloc];
}

- (void)clearCache
{
  serverCache = self->_serverCache;
  self->_serverCache = 0;
}

- (void)addObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  if (self->_isAirDrop)
  {
    [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.AppleIDAccountInfoChanged" object:0];
    [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.AppleIDChanged" object:0];
    [v3 addObserver:self selector:"airDropPublished:" name:@"com.apple.sharingd.AirDropPublished" object:0];
    [v3 addObserver:self selector:"lockStatusChanged:" name:@"com.apple.sharingd.UILockStatusChanged" object:0];
    [v3 addObserver:self selector:"screenStatusChanged:" name:@"com.apple.sharingd.ScreenStateChanged" object:0];
    [v3 addObserver:self selector:"contactsChanged:" name:@"com.apple.sharingd.ContactsChanged" object:0];
    [v3 addObserver:self selector:"consoleUserChanged:" name:@"com.apple.sharingd.ConsoleUserChanged" object:0];
    [v3 addObserver:self selector:"linkStateChanged:" name:@"com.apple.sharingd.AirDropLinkStateChanged" object:0];
    [v3 addObserver:self selector:"wirelessPowerChanged:" name:@"com.apple.sharingd.WirelessPowerChanged" object:0];
    [v3 addObserver:self selector:"wirelessPowerChanged:" name:@"com.apple.sharingd.BluetoothPowerChanged" object:0];
  }

  [v3 addObserver:self selector:"somethingChanged:" name:@"com.apple.sharingd.MulticastDNSChanged" object:0];
}

- (void)removeObservers
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];
}

- (unsigned)getInterface:(unsigned int)interface
{
  if (self->_isAirDrop)
  {
    if ([(SDStatusMonitor *)self->_monitor browseAllInterfaces])
    {
      return 0;
    }

    else
    {
      result = self->_awdlIndex;
      if (!result)
      {
        result = sub_1001F2A44();
        self->_awdlIndex = result;
        if (!result)
        {
          v5 = airdrop_log();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
          {
            sub_10017DA5C();
          }

          return self->_awdlIndex;
        }
      }
    }
  }

  else if (self->_isWorkgroups)
  {
    return -1;
  }

  else if (self->_isNetBIOS)
  {
    return -1;
  }

  else
  {
    return interface;
  }

  return result;
}

- (BOOL)thisIsTheFinder
{
  isFinder = self->_isFinder;
  if (!isFinder)
  {
    bundleID = [(SDBonjourBrowser *)self bundleID];
    v5 = +[NSNumber numberWithBool:](NSNumber, "numberWithBool:", [bundleID isEqualToString:@"com.apple.finder"]);
    v6 = self->_isFinder;
    self->_isFinder = v5;

    isFinder = self->_isFinder;
  }

  return [(NSNumber *)isFinder BOOLValue];
}

- (void)awdl:(id)awdl foundDevice:(id)device rssi:(id)rssi
{
  deviceCopy = device;
  rssiCopy = rssi;
  v8 = airdrop_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_10017DA98();
  }
}

- (void)awdlDidUpdateState:(id)state
{
  stateCopy = state;
  state = [stateCopy state];
  if (state > 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(&off_1008D2090 + state);
  }

  v7 = airdrop_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "BTLE advertiser %@", &v9, 0xCu);
  }

  state2 = [stateCopy state];
  if (state2 == 3)
  {
    [(SDBonjourBrowser *)self advertiseHashes];
  }
}

- (void)awdl:(id)awdl failedToStartAdvertisingWithError:(id)error
{
  errorCopy = error;
  v5 = airdrop_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_10017DB18();
  }
}

- (void)startConnectionlessAdvertisingWithData:(id)data
{
  dataCopy = data;
  if (!dataCopy)
  {
    v6 = @"com.apple.airdrop";
    v5 = [NSArray arrayWithObjects:&v6 count:1];
    dataCopy = [_TtC16DaemoniOSLibrary27SDAirDropContactHashManager btleAdvertisementDataForStrings:v5];
  }

  [(WPAWDL *)self->_proximity startConnectionlessAWDLServiceAdvertisingWithData:dataCopy];
}

- (void)stopConnectionlessAdvertising
{
  [(WPAWDL *)self->_proximity stopConnectionlessAWDLServiceAdvertising];
  [(WPAWDL *)self->_proximity invalidate];
  proximity = self->_proximity;
  self->_proximity = 0;
}

- (void)advertiseHashes
{
  proximity = self->_proximity;
  if (proximity && [(WPAWDL *)proximity state]== 3)
  {
    if ([(SDStatusMonitor *)self->_monitor enableAirDropAdvertising])
    {
      myShortHashesForAirDrop = [(SDStatusMonitor *)self->_monitor myShortHashesForAirDrop];
      if (myShortHashesForAirDrop)
      {
        [(SDBonjourBrowser *)self startConnectionlessAdvertisingWithData:myShortHashesForAirDrop];
        v5 = airdrop_log();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          v7 = 138412290;
          v8 = myShortHashesForAirDrop;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "BTLE advertising hashes %@", &v7, 0xCu);
        }
      }

      else
      {
        v6 = airdrop_log();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v7) = 0;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "No email or phone number hashes to advertise", &v7, 2u);
        }

        [(SDBonjourBrowser *)self startConnectionlessAdvertisingWithData:0];
      }

      sub_100086D20(@"BluetoothAdvertise", @"Start", [(SDBonjourBrowser *)self bundleID], 0);
    }

    else
    {
      myShortHashesForAirDrop = airdrop_log();
      if (os_log_type_enabled(myShortHashesForAirDrop, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v7) = 0;
        _os_log_impl(&_mh_execute_header, myShortHashesForAirDrop, OS_LOG_TYPE_DEFAULT, "BTLE advertising disabled", &v7, 2u);
      }
    }
  }
}

- (BOOL)shouldStart
{
  if (self->_startCalled)
  {
    if (self->_isAirDrop)
    {
      screenOn = [(SDStatusMonitor *)self->_monitor screenOn];
      if (screenOn)
      {
        screenOn = [(SDStatusMonitor *)self->_monitor bluetoothEnabled];
        if (screenOn)
        {
          monitor = self->_monitor;

          LOBYTE(screenOn) = [(SDStatusMonitor *)monitor wirelessEnabled];
        }
      }
    }

    else
    {
      LOBYTE(screenOn) = 1;
    }
  }

  else
  {
    LOBYTE(screenOn) = 0;
  }

  return screenOn;
}

- (void)updateBrowserState
{
  domain = [(SDBonjourBrowser *)self domain];
  shouldStart = [(SDBonjourBrowser *)self shouldStart];
  if (domain && (WeakRetained = objc_loadWeakRetained(&self->_delegate)) != 0 && (v6 = (self->_connection == 0) & shouldStart, WeakRetained, v6 == 1))
  {
    if (DNSServiceCreateConnection(&self->_connection))
    {
      v7 = browser_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_10017DB8C();
      }
    }

    else
    {
      p_connection = &self->_connection;
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v8 = self->_types;
      v9 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v30;
        while (2)
        {
          for (i = 0; i != v10; i = i + 1)
          {
            if (*v30 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v29 + 1) + 8 * i);
            sdRef[0] = self->_connection;
            mode = self->_mode;
            if (mode == 1)
            {
              v15 = 33570816;
            }

            else
            {
              v15 = 0x4000;
            }

            if (mode == 2)
            {
              v16 = 67125248;
            }

            else
            {
              v16 = v15;
            }

            if (self->_isAirDrop && ![(SDStatusMonitor *)self->_monitor enableDemoMode])
            {
              v16 |= 0x100000u;
            }

            v17 = DNSServiceBrowse(sdRef, v16, -[SDBonjourBrowser getInterface:](self, "getInterface:", 0), [v13 UTF8String], objc_msgSend(domain, "UTF8String"), sub_10017951C, self);

            if (v17)
            {

              v18 = browser_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
              {
                sub_10017DBFC();
              }

              goto LABEL_31;
            }
          }

          v10 = [(NSArray *)v8 countByEnumeratingWithState:&v29 objects:v33 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }

      if (DNSServiceSetDispatchQueue(*p_connection, &_dispatch_main_q))
      {
        v18 = browser_log();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          sub_10017DC6C();
        }

LABEL_31:

        DNSServiceRefDeallocate(*p_connection);
        *p_connection = 0;
      }

      else if (self->_isAirDrop)
      {
        v19 = airdrop_log();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(sdRef[0]) = 0;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Bonjour discovery started", sdRef, 2u);
        }

        sub_100086D20(@"BonjourBrowse", @"Start", [(SDBonjourBrowser *)self bundleID], 0);
        self->_startTime = CFAbsoluteTimeGetCurrent();
        v20 = +[NSUUID UUID];
        uUIDString = [v20 UUIDString];
        v22 = [uUIDString substringWithRange:{24, 12}];
        browserID = self->_browserID;
        self->_browserID = v22;

        if (![(SDStatusMonitor *)self->_monitor enableDemoMode])
        {
          if (!self->_proximity)
          {
            v24 = airdrop_log();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              LOWORD(sdRef[0]) = 0;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "BTLE advertising started", sdRef, 2u);
            }

            v25 = [[WPAWDL alloc] initWithDelegate:self queue:&_dispatch_main_q];
            proximity = self->_proximity;
            self->_proximity = v25;
          }

          [(SDBonjourBrowser *)self advertiseHashes];
        }
      }
    }
  }

  else if (!((self->_startTime == 0.0) | shouldStart & 1))
  {
    [(SDBonjourBrowser *)self stop];
    [(SDBonjourBrowser *)self notifyClient];
  }
}

- (void)start
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDBonjourBrowser: start requested", buf, 2u);
  }

  self->_startCalled = 1;
  if (dword_1009A0610)
  {
    v4 = sub_1001F0530(2.0);
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10017967C;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_after(v4, &_dispatch_main_q, block);
  }

  else
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100179684;
    v5[3] = &unk_1008CDEA0;
    v5[4] = self;
    dispatch_async(&_dispatch_main_q, v5);
  }
}

- (void)logAirDropSessionInfo
{
  startTime = self->_startTime;
  Current = CFAbsoluteTimeGetCurrent();
  firstTime = self->_firstTime;
  v6 = self->_startTime;
  maxServices = self->_maxServices;
  v8 = [(NSMutableSet *)self->_discoveredPeers count];
  discoverableLevel = [(SDStatusMonitor *)self->_monitor discoverableLevel];
  v10 = airdrop_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Bonjour discovery stopped", buf, 2u);
  }

  if (firstTime == 0.0)
  {
    v11 = -1.0;
  }

  else
  {
    v11 = firstTime - v6;
  }

  browserID = self->_browserID;
  sessionID = self->_sessionID;
  bundleID = [(SDBonjourBrowser *)self bundleID];
  sub_1000868F0(sessionID, browserID, bundleID, (startTime * 1000.0), maxServices, v8, self->_transfersInitiated, self->_transfersCompleted, Current - v6, v11, discoverableLevel, 0);
}

- (void)stop
{
  [(SDBonjourBrowser *)self clearCache];
  [(NSMutableDictionary *)self->_servers removeAllObjects];
  [(SDBonjourBrowser *)self cancelIdentityQueries];
  [(SDBonjourBrowser *)self cancelAirDropRequests];
  if (self->_isAirDrop && self->_startTime != 0.0)
  {
    [(SDBonjourBrowser *)self logAirDropSessionInfo];
    [(NSMutableSet *)self->_discoveredPeers removeAllObjects];
    browserID = self->_browserID;
    self->_browserID = 0;

    self->_maxServices = 0;
    self->_firstTime = 0.0;
    self->_startTime = 0.0;
  }

  dnsQueries = self->_dnsQueries;
  if (dnsQueries)
  {
    allValues = [(NSMutableDictionary *)dnsQueries allValues];
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        v9 = 0;
        do
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(allValues);
          }

          v10 = [*(*(&v14 + 1) + 8 * v9) objectForKeyedSubscript:@"QueryTimer"];
          [v10 invalidate];

          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [allValues countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    [(NSMutableDictionary *)self->_dnsQueries removeAllObjects];
  }

  connection = self->_connection;
  if (connection)
  {
    if (self->_isAirDrop)
    {
      sub_100086D20(@"BonjourBrowse", @"Stop", [(SDBonjourBrowser *)self bundleID], 0);
      connection = self->_connection;
    }

    DNSServiceRefDeallocate(connection);
    self->_connection = 0;
  }

  if (self->_proximity)
  {
    v12 = airdrop_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "BTLE advertising stopped", v13, 2u);
    }

    sub_100086D20(@"BluetoothAdvertise", @"Stop", [(SDBonjourBrowser *)self bundleID], 0);
    [(SDBonjourBrowser *)self stopConnectionlessAdvertising];
  }
}

- (void)invalidate
{
  v3 = airdrop_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SDBonjourBrowser: invalidate requested", v6, 2u);
  }

  [(SDBonjourBrowser *)self stop];
  restartTimer = self->_restartTimer;
  if (restartTimer)
  {
    [(NSTimer *)restartTimer invalidate];
    v5 = self->_restartTimer;
    self->_restartTimer = 0;
  }
}

- (void)removeInvalidNodes:(id)nodes
{
  nodesCopy = nodes;
  allKeys = [(NSMutableDictionary *)self->_serverCache allKeys];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v6 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        [nodesCopy objectForKeyedSubscript:v10];

        v11 = SFNodeCopyDisplayName();
        if (v11)
        {
          v12 = v11;
          if (!CFStringGetLength(v11))
          {
            [nodesCopy removeObjectForKey:v10];
          }

          CFRelease(v12);
        }

        else
        {
          [nodesCopy removeObjectForKey:v10];
        }
      }

      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

- (void)updateSecondaryNameForNodes:(id)nodes
{
  nodesCopy = nodes;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [nodesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v8 = *(*(&v9 + 1) + 8 * i);
        if (sub_100090360(v8))
        {
          sub_100090598(v8, nodesCopy);
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }
}

- (void)updateServerCacheIfNeeded
{
  if (!self->_serverCache)
  {
    if (self->_isAirDrop)
    {
      if ([(SDStatusMonitor *)self->_monitor wirelessEnabled]&& [(SDStatusMonitor *)self->_monitor bluetoothEnabled])
      {
        v3 = [(NSMutableDictionary *)self->_servers mutableCopy];
        serverCache = self->_serverCache;
        self->_serverCache = v3;

        if (![(SDStatusMonitor *)self->_monitor showMeInWormhole])
        {
          v5 = sub_10008FA28(0, 0);
          if (v5)
          {
            v6 = v5;
            [(NSMutableDictionary *)self->_serverCache removeObjectForKey:v5];
            CFRelease(v6);
          }
        }

        [(SDBonjourBrowser *)self removeInvalidNodes:self->_serverCache];
        allValues = [(NSMutableDictionary *)self->_serverCache allValues];
        [(SDBonjourBrowser *)self updateSecondaryNameForNodes:allValues];

        v8 = [(NSMutableDictionary *)self->_serverCache count];
        if (v8 > self->_maxServices)
        {
          self->_maxServices = v8;
          if (self->_firstTime == 0.0)
          {
            self->_firstTime = CFAbsoluteTimeGetCurrent();
          }
        }
      }
    }

    else if (self->_isWorkgroups || [(SDStatusMonitor *)self->_monitor showThisComputer])
    {
      v9 = [(NSMutableDictionary *)self->_servers mutableCopy];
      v10 = self->_serverCache;
      self->_serverCache = v9;
    }

    else
    {
      v11 = [(NSMutableDictionary *)self->_servers mutableCopy];
      v12 = self->_serverCache;
      self->_serverCache = v11;

      monitor = self->_monitor;
      if (self->_isNetBIOS)
      {
        [(SDStatusMonitor *)monitor netbiosName];
      }

      else
      {
        [(SDStatusMonitor *)monitor bonjourName];
      }
      v14 = ;
      if (v14)
      {
        v16 = v14;
        lowercaseString = [v14 lowercaseString];
        if (lowercaseString)
        {
          [(NSMutableDictionary *)self->_serverCache removeObjectForKey:lowercaseString];
        }

        v14 = v16;
      }
    }
  }
}

- (NSArray)nodes
{
  [(SDBonjourBrowser *)self updateServerCacheIfNeeded];
  serverCache = self->_serverCache;

  return [(NSMutableDictionary *)serverCache allValues];
}

- (void)addService:(id)service type:(id)type domain:(id)domain interface:(unsigned int)interface
{
  v6 = *&interface;
  serviceCopy = service;
  typeCopy = type;
  domainCopy = domain;
  if (sub_10011885C(typeCopy))
  {
    lowercaseString = [serviceCopy lowercaseString];
    v14 = [(NSMutableDictionary *)self->_servers objectForKeyedSubscript:lowercaseString];

    if (v14)
    {
LABEL_25:
      SFNodeAddBonjourProtocol();

      goto LABEL_26;
    }

    v15 = sub_1001F2B40(domainCopy);
    if (self->_isNetBIOS)
    {
      v16 = SFNodeCreate();
      SFNodeAddKind();
      SFNodeSetNetbiosName();
      SFNodeSetWorkgroup();
      v17 = sub_1001174F4(kSFNodeProtocolSMB, 0, 0, lowercaseString, 0xFFFFFFFF, 0, 0, 0);
      if (v17)
      {
        v18 = v17;
        SFNodeSetURL();
        CFRelease(v18);
      }

      selfCopy2 = self;
      v20 = serviceCopy;
      v21 = typeCopy;
    }

    else
    {
      if (self->_isWorkgroups)
      {
        v16 = SFNodeCreate();
        SFNodeAddKind();
        SFNodeAddWorkgroup();
        goto LABEL_24;
      }

      v16 = SFNodeCreate();
      SFNodeSetServiceName();
      SFNodeSetDomain();
      SFNodeAddKind();
      v22 = sub_10011830C();
      if (CFEqual(typeCopy, v22))
      {
        SFNodeSetDisplayName();
        SFNodeSetRealName();
        SFNodeAddKind();
        SFNodeAddKind();
        v23 = sub_10008FA28(0, 0);
        if (![serviceCopy isEqual:v23] || -[SDStatusMonitor showMeInWormhole](self->_monitor, "showMeInWormhole"))
        {
          v35 = v15;
          v37 = v23;
          v24 = objc_opt_new();
          [v24 setSessionID:self->_browserID];
          objc_setAssociatedObject(v16, @"SDAirDropPeerMetric", v24, 0x301);
          Current = CFAbsoluteTimeGetCurrent();
          v26 = [NSNumber numberWithDouble:Current - self->_startTime];
          [v24 setBonjourPTRDiscovery:v26];

          v27 = [NSNumber numberWithDouble:Current];
          [v24 setBonjourTXTRecordDiscovery:v27];

          v36 = v24;
          bonjourPTRDiscovery = [v24 bonjourPTRDiscovery];
          [bonjourPTRDiscovery doubleValue];
          v30 = v29;

          v31 = sub_1001F04A8(v6);
          v32 = v31;
          if (v31)
          {
            v33 = v31;
          }

          else
          {
            v33 = [NSNumber numberWithInt:v6];
          }

          v38 = v33;

          v34 = airdrop_log();
          v15 = v35;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v40 = serviceCopy;
            v41 = 2112;
            v42 = v38;
            v43 = 1024;
            v44 = (v30 * 1000.0);
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Bonjour discovered %@ PTR over %@ in %d ms", buf, 0x1Cu);
          }

          [(SDBonjourBrowser *)self startRecordQuery:serviceCopy type:typeCopy domain:v35 recordType:16 interface:v6];
          v23 = v37;
        }

        goto LABEL_24;
      }

      if (CFEqual(typeCopy, @"_odisk._tcp."))
      {
        SFNodeAddKind();
        [(SDBonjourBrowser *)self startRecordQuery:serviceCopy type:typeCopy domain:v15 recordType:16 interface:v6];
      }

      if (self->_mode == 1)
      {
        goto LABEL_24;
      }

      v21 = @"_device-info._tcp.";
      selfCopy2 = self;
      v20 = serviceCopy;
    }

    [(SDBonjourBrowser *)selfCopy2 startRecordQuery:v20 type:v21 domain:v15 recordType:16 interface:v6];
LABEL_24:
    [(NSMutableDictionary *)self->_servers setObject:v16 forKeyedSubscript:lowercaseString, v35];
    CFRelease(v15);
    CFRelease(v16);
    goto LABEL_25;
  }

LABEL_26:
}

- (id)queryKey:(id)key type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType
{
  recordTypeCopy = recordType;
  typeCopy = type;
  keyCopy = key;
  v11 = sub_1001F2B40(domain);
  recordTypeCopy = [NSString stringWithFormat:@"%@.%@%@.%d", keyCopy, typeCopy, v11, recordTypeCopy];

  lowercaseString = [recordTypeCopy lowercaseString];

  return lowercaseString;
}

- (void)addQueryToDictionary:(_DNSServiceRef_t *)dictionary name:(id)name type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType
{
  recordTypeCopy = recordType;
  typeCopy = type;
  v16 = [(SDBonjourBrowser *)self queryKey:name type:typeCopy domain:domain recordType:recordTypeCopy];
  v13 = objc_opt_new();
  v14 = [NSNumber numberWithLong:*dictionary];
  [v13 setObject:v14 forKeyedSubscript:@"ServiceRef"];

  LODWORD(v14) = CFEqual(typeCopy, @"_device-info._tcp.");
  if (v14)
  {
    v15 = [NSTimer scheduledTimerWithTimeInterval:self target:"queryRecordTimerCallBack:" selector:v16 userInfo:0 repeats:30.0];
    [v13 setObject:v15 forKeyedSubscript:@"QueryTimer"];
  }

  [(NSMutableDictionary *)self->_dnsQueries setObject:v13 forKeyedSubscript:v16];
}

- (void)startRecordQuery:(id)query type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType interface:(unsigned int)interface
{
  v7 = *&interface;
  recordTypeCopy = recordType;
  queryCopy = query;
  typeCopy = type;
  domainCopy = domain;
  v15 = sub_1001F2C18(queryCopy, typeCopy, domainCopy, 1);
  if (!v15)
  {
    v20 = browser_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10017DD88();
    }

    goto LABEL_16;
  }

  bzero(buffer, 0x3F1uLL);
  if (!CFStringGetCString(v15, buffer, 1009, 0x8000100u))
  {
    v20 = browser_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10017DD4C();
    }

    goto LABEL_16;
  }

  sdRef = self->_connection;
  isAirDrop = self->_isAirDrop;
  v17 = [(SDBonjourBrowser *)self getInterface:v7];
  if (isAirDrop)
  {
    v18 = 1065216;
  }

  else
  {
    v18 = 16640;
  }

  v19 = DNSServiceQueryRecord(&sdRef, v18, v17, buffer, recordTypeCopy, 1u, sub_10017A7AC, self);
  if (v19 == -65540)
  {
    if (![(SDStatusMonitor *)self->_monitor enableBugs])
    {
      goto LABEL_17;
    }

    goto LABEL_14;
  }

  if (v19)
  {
LABEL_14:
    v20 = browser_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      sub_10017DCDC();
    }

LABEL_16:

    goto LABEL_17;
  }

  [(SDBonjourBrowser *)self addQueryToDictionary:&sdRef name:queryCopy type:typeCopy domain:domainCopy recordType:recordTypeCopy];
LABEL_17:
}

- (void)cleanupRecordQueryForKey:(id)key
{
  keyCopy = key;
  v4 = [(NSMutableDictionary *)self->_dnsQueries objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"QueryTimer"];
    [v6 invalidate];

    v7 = [v5 objectForKeyedSubscript:@"ServiceRef"];
    longValue = [v7 longValue];

    if (longValue)
    {
      DNSServiceRefDeallocate(longValue);
    }

    [(NSMutableDictionary *)self->_dnsQueries removeObjectForKey:keyCopy];
  }
}

- (void)cleanupRecordQuery:(id)query type:(id)type domain:(id)domain recordType:(unsigned __int16)recordType
{
  v7 = [(SDBonjourBrowser *)self queryKey:query type:type domain:domain recordType:recordType];
  if (v7)
  {
    v8 = v7;
    [(SDBonjourBrowser *)self cleanupRecordQueryForKey:v7];
    v7 = v8;
  }
}

- (void)cleanupRecordQueryForNetService:(id)service recordType:(unsigned __int16)type
{
  typeCopy = type;
  serviceCopy = service;
  name = [serviceCopy name];
  type = [serviceCopy type];
  domain = [serviceCopy domain];

  [(SDBonjourBrowser *)self cleanupRecordQuery:name type:type domain:domain recordType:typeCopy];
}

- (void)removeService:(id)service type:(id)type domain:(id)domain
{
  serviceCopy = service;
  typeCopy = type;
  domainCopy = domain;
  lowercaseString = [serviceCopy lowercaseString];
  v12 = [(NSMutableDictionary *)self->_servers objectForKeyedSubscript:lowercaseString];

  if (v12)
  {
    if (self->_isNetBIOS)
    {
      [(SDBonjourBrowser *)self cleanupRecordQuery:serviceCopy type:typeCopy domain:domainCopy recordType:16];
LABEL_5:
      [(NSMutableDictionary *)self->_servers removeObjectForKey:lowercaseString];
      goto LABEL_6;
    }

    if (self->_isWorkgroups)
    {
      goto LABEL_5;
    }

    if (sub_10011885C(typeCopy))
    {
      SFNodeRemoveBonjourProtocol();
      v13 = SFNodeCopyBonjourProtocols();
      if (!CFBagGetCount(v13))
      {
        if (CFEqual(typeCopy, @"_odisk._tcp."))
        {
          [(SDBonjourBrowser *)self ejectDisksIfNeeded:serviceCopy diskNames:0];
          [(SDBonjourBrowser *)self cleanupRecordQuery:serviceCopy type:typeCopy domain:domainCopy recordType:16];
        }

        else
        {
          v14 = sub_10011830C();
          if (CFEqual(typeCopy, v14))
          {
            v15 = airdrop_log();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v17 = 138412290;
              v18 = serviceCopy;
              _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Bonjour removed %@", &v17, 0xCu);
            }

            v16 = [(NSMutableDictionary *)self->_airDropRequests objectForKeyedSubscript:lowercaseString];
            if (v16)
            {
              [(SDBonjourBrowser *)self cleanupAirDropRequest:v16];
            }

            [(SDBonjourBrowser *)self cleanupRecordQuery:serviceCopy type:typeCopy domain:domainCopy recordType:16];
          }
        }

        [(SDBonjourBrowser *)self cleanupRecordQuery:serviceCopy type:@"_device-info._tcp." domain:domainCopy recordType:16];
        [(NSMutableDictionary *)self->_servers removeObjectForKey:lowercaseString];
      }

      CFRelease(v13);
    }
  }

LABEL_6:
}

- (__SFNode)copyNodeForName:(id)name
{
  nameCopy = name;
  [(SDBonjourBrowser *)self updateServerCacheIfNeeded];
  serverCache = self->_serverCache;
  lowercaseString = [nameCopy lowercaseString];

  v7 = [(NSMutableDictionary *)serverCache objectForKeyedSubscript:lowercaseString];

  if (v7)
  {
    CFRetain(v7);
  }

  return v7;
}

- (__SFNode)copyNodeForService:(id)service
{
  servers = self->_servers;
  name = [service name];
  lowercaseString = [name lowercaseString];
  v6 = [(NSMutableDictionary *)servers objectForKeyedSubscript:lowercaseString];

  if (v6)
  {
    CFRetain(v6);
  }

  return v6;
}

- (void)systemInfoChanged:(id)changed diskInfo:(__CFDictionary *)info
{
  changedCopy = changed;
  Value = CFDictionaryGetValue(info, @"adVF");
  v8 = sub_1001F06B4(0, Value);
  v9 = CFDictionaryGetValue(info, @"adDT");
  v10 = sub_1001F06B4(0, v9);
  v11 = [(SDBonjourBrowser *)self copyNodeForService:changedCopy];

  if (v11)
  {
    valuePtr = 0;
    if (v10 && !CFNumberGetValue(v10, kCFNumberCFIndexType, &valuePtr))
    {
      valuePtr = 0;
    }

    SFNodeSetSupportedMedia();
    SFNodeSetFlags();
    CFRelease(v11);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v10)
  {
    CFRelease(v10);
  }
}

- (id)colorArrayFromEcolor:(id)ecolor icolor:(id)icolor
{
  ecolorCopy = ecolor;
  icolorCopy = icolor;
  v7 = icolorCopy;
  if (ecolorCopy)
  {
    v8 = [ecolorCopy componentsSeparatedByString:{@", "}];
    if ([v8 count] == 3)
    {
      v9 = [v8 objectAtIndexedSubscript:0];
      intValue = [v9 intValue];

      v11 = [v8 objectAtIndexedSubscript:1];
      intValue2 = [v11 intValue];

      v13 = [v8 objectAtIndexedSubscript:2];
      intValue3 = [v13 intValue];

      v15 = 0;
      if (intValue <= 0xFF && intValue2 <= 0xFF && intValue3 <= 0xFF)
      {
        v16 = [NSNumber numberWithInt:intValue];
        v21[0] = v16;
        v17 = [NSNumber numberWithInt:intValue2];
        v21[1] = v17;
        v18 = [NSNumber numberWithInt:intValue3];
        v21[2] = v18;
        v15 = [NSArray arrayWithObjects:v21 count:3];
      }
    }

    else
    {
      v15 = 0;
    }

    goto LABEL_10;
  }

  if (icolorCopy)
  {
    v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [icolorCopy integerValue]);
    v20 = v8;
    v15 = [NSArray arrayWithObjects:&v20 count:1];
LABEL_10:

    goto LABEL_11;
  }

  v15 = 0;
LABEL_11:

  return v15;
}

- (void)deviceInfoChanged:(id)changed model:(id)model ecolor:(id)ecolor icolor:(id)icolor osxvers:(id)osxvers
{
  changedCopy = changed;
  modelCopy = model;
  ecolorCopy = ecolor;
  icolorCopy = icolor;
  osxversCopy = osxvers;
  v16 = [(SDBonjourBrowser *)self copyNodeForService:changedCopy];
  if (v16)
  {
    v17 = v16;
    SFNodeSetModel();
    [(SDBonjourBrowser *)self colorArrayFromEcolor:ecolorCopy icolor:icolorCopy];
    SFNodeSetColor();
    v18 = sub_1001F06B4(0, osxversCopy);
    SFNodeSetFlags();
    if (v18)
    {
      CFRelease(v18);
    }

    CFRelease(v17);
  }

  [(SDBonjourBrowser *)self cleanupRecordQueryForNetService:changedCopy recordType:16];
}

- (void)commentChanged:(id)changed comment:(id)comment
{
  changedCopy = changed;
  commentCopy = comment;
  v7 = [(SDBonjourBrowser *)self copyNodeForService:changedCopy];
  if (v7)
  {
    v8 = v7;
    SFNodeSetSecondaryName();
    CFRelease(v8);
  }

  [(SDBonjourBrowser *)self cleanupRecordQueryForNetService:changedCopy recordType:16];
}

- (void)startPictureQuery:(id)query
{
  queryCopy = query;
  if (![(SDStatusMonitor *)self->_monitor disablePictureQuery])
  {
    domain = [queryCopy domain];
    v5 = sub_1001F2B40(domain);

    name = [queryCopy name];
    type = [queryCopy type];
    [(SDBonjourBrowser *)self startRecordQuery:name type:type domain:v5 recordType:10 interface:0];

    CFRelease(v5);
  }
}

- (void)clearCacheAndNotify
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10017B2C0;
  block[3] = &unk_1008CDEA0;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)cleanupAirDropRequest:(id)request
{
  requestCopy = request;
  personID = [requestCopy personID];
  [(NSMutableDictionary *)self->_airDropRequests removeObjectForKey:personID];
  [requestCopy invalidate];
}

- (void)logAirDropDiscoveryInfoForNode:(__SFNode *)node
{
  v4 = objc_getAssociatedObject(node, @"SDAirDropPeerMetric");
  modelName = [v4 modelName];
  verifiableIdentity = [v4 verifiableIdentity];
  bOOLValue = [verifiableIdentity BOOLValue];

  bonjourPTRDiscovery = [v4 bonjourPTRDiscovery];
  [bonjourPTRDiscovery doubleValue];
  v10 = v9;

  bonjourTXTRecordDiscovery = [v4 bonjourTXTRecordDiscovery];
  [bonjourTXTRecordDiscovery doubleValue];
  v41 = v12;

  bonjourResolveComplete = [v4 bonjourResolveComplete];
  [bonjourResolveComplete doubleValue];
  v15 = v14;

  tcpConnectionComplete = [v4 tcpConnectionComplete];
  [tcpConnectionComplete doubleValue];
  v18 = v17;

  tlsHandshakeComplete = [v4 tlsHandshakeComplete];
  [tlsHandshakeComplete doubleValue];
  v21 = v20;

  identityQueryComplete = [v4 identityQueryComplete];
  [identityQueryComplete doubleValue];
  v24 = v23;

  Current = CFAbsoluteTimeGetCurrent();
  startTime = self->_startTime;
  v27 = CFAbsoluteTimeGetCurrent() - startTime;
  v28 = SFNodeCopyRealName();
  v29 = @"unverifiable";
  v42 = bOOLValue;
  if (bOOLValue)
  {
    v29 = @"verifiable";
  }

  v30 = v29;
  v31 = airdrop_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    accountID = [v4 accountID];
    *buf = 138413315;
    v44 = v30;
    v45 = 2112;
    v46 = v28;
    v47 = 2113;
    v48 = accountID;
    v49 = 2113;
    v50 = modelName;
    v51 = 1024;
    v52 = (v27 * 1000.0);
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "Discovered %@ identity of %@ accountID %{private}@ model %{private}@ in %d ms", buf, 0x30u);
  }

  v33 = SFNodeCopyServiceName();
  v34 = [(SDStatusMonitor *)self->_monitor awdlInfoForPeerWithServiceName:v33];
  v35 = [v34 objectForKeyedSubscript:@"STATION_AWDL_VERSION"];
  intValue = [v35 intValue];

  v36 = [v34 objectForKeyedSubscript:@"STATION_AWDL_PLATFORM"];
  intValue2 = [v36 intValue];

  v38 = [v34 objectForKeyedSubscript:@"STATION_RSSI"];
  intValue3 = [v38 intValue];

  sub_10008654C(self->_sessionID, self->_browserID, modelName, v42, intValue, intValue2, intValue3, v10, v41, v15, v18, v21, v24, Current - startTime - v10, v27);
}

+ (void)updateFriendRPIdentityForAccountID:(id)d withAirDropClientInfo:(id)info
{
  dCopy = d;
  infoCopy = info;
  v7 = +[SDStatusMonitor sharedMonitor];
  if ([dCopy length])
  {
    v42[0] = CNContactEmailAddressesKey;
    v42[1] = CNContactPhoneNumbersKey;
    v8 = [NSArray arrayWithObjects:v42 count:2];
    v9 = [v7 contactsWithPhoneNumberOrEmail:dCopy keys:v8];
    if ([v9 count])
    {
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v10 = v9;
      v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v11)
      {
        v12 = *v34;
        while (2)
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v34 != v12)
            {
              objc_enumerationMutation(v10);
            }

            v14 = *(*(&v33 + 1) + 8 * i);
            if ([v7 contactIsBlocked:v14])
            {
              v21 = airdrop_log();
              if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138477827;
                v39 = v14;
                _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Skipped RPIdentity update because contact %{private}@ is blocked", buf, 0xCu);
              }

              goto LABEL_37;
            }
          }

          v11 = [v10 countByEnumeratingWithState:&v33 objects:v37 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v10 = [v7 contactWithPreferredIdentifierForContacts:v10];
      v28 = [infoCopy objectForKeyedSubscript:kSFOperationReceiverDeviceIRKDataKey];
      if (v28)
      {
        v15 = [infoCopy objectForKeyedSubscript:kSFOperationReceiverEdPKDataKey];
        if (v15)
        {
          v27 = [infoCopy objectForKeyedSubscript:kSFOperationReceiverIDSDeviceIDKey];
          if (v27)
          {
            identifier = [v10 identifier];
            if (identifier)
            {
              val = objc_alloc_init(RPClient);
              v16 = objc_alloc_init(RPIdentity);
              [v16 setAccountID:dCopy];
              [v16 setContactID:identifier];
              [v16 setDeviceIRKData:v28];
              [v16 setEdPKData:v15];
              [v16 setIdsDeviceID:v27];
              v17 = [infoCopy objectForKeyedSubscript:kSFOperationSendersKnownAliasKey];
              [v16 setSendersKnownAlias:v17];

              [v16 setType:6];
              objc_initWeak(&location, val);
              v18 = airdrop_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 141558275;
                v39 = 1752392040;
                v40 = 2113;
                v41 = dCopy;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Updating RPIdentity for %{private, mask.hash}@", buf, 0x16u);
              }

              v29[0] = _NSConcreteStackBlock;
              v29[1] = 3221225472;
              v29[2] = sub_10017BD14;
              v29[3] = &unk_1008D2048;
              v19 = v16;
              v30 = v19;
              objc_copyWeak(&v31, &location);
              [val addOrUpdateIdentity:v19 completion:v29];
              objc_destroyWeak(&v31);

              objc_destroyWeak(&location);
              v20 = val;
            }

            else
            {
              v24 = airdrop_log();
              v20 = v24;
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                sub_10017DDC4();
                v20 = v24;
              }
            }

            v23 = identifier;
          }

          else
          {
            v23 = airdrop_log();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 141558275;
              v39 = 1752392040;
              v40 = 2113;
              v41 = dCopy;
              _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Didn't update RPIdentity because idsDeviceID is missing for %{private, mask.hash}@", buf, 0x16u);
            }
          }

          v22 = v27;
        }

        else
        {
          v22 = airdrop_log();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 141558275;
            v39 = 1752392040;
            v40 = 2113;
            v41 = dCopy;
            _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Didn't update RPIdentity because edPKData is missing for %{private, mask.hash}@", buf, 0x16u);
          }
        }
      }

      else
      {
        v15 = airdrop_log();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558275;
          v39 = 1752392040;
          v40 = 2113;
          v41 = dCopy;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Didn't update RPIdentity because deviceIRKData is missing for %{private, mask.hash}@", buf, 0x16u);
        }
      }
    }

    else
    {
      v10 = airdrop_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 141558275;
        v39 = 1752392040;
        v40 = 2113;
        v41 = dCopy;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to update RPIdentity because there are no contacts for %{private, mask.hash}@", buf, 0x16u);
      }
    }

LABEL_37:
  }

  else
  {
    v8 = airdrop_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10017DE38();
    }
  }
}

- (void)airDropClient:(id)client event:(int64_t)event withResults:(id)results
{
  clientCopy = client;
  resultsCopy = results;
  personID = [clientCopy personID];
  v12 = [(NSMutableDictionary *)self->_servers objectForKeyedSubscript:personID];

  if (event <= 8)
  {
    if (event != 4)
    {
      if (event == 5)
      {
        goto LABEL_26;
      }

      goto LABEL_13;
    }

LABEL_25:
    [(SDBonjourBrowser *)self cleanupAirDropRequest:clientCopy];
    goto LABEL_26;
  }

  if (event == 10)
  {
    goto LABEL_25;
  }

  if (event == 9)
  {
    if (v12)
    {
      v13 = [resultsCopy objectForKeyedSubscript:kSFOperationReceiverMediaCapabilitiesKey];
      if (v13)
      {
        SFNodeSetMediaCapabilities();
      }

      secTrustRef = [clientCopy secTrustRef];
      if (secTrustRef)
      {
        v15 = secTrustRef;
        v28 = v13;
        v16 = [resultsCopy objectForKeyedSubscript:kSFOperationReceiverRecordDataKey];
        v17 = sub_10009229C(v16, v15, v12);
        v18 = [resultsCopy objectForKeyedSubscript:kSFOperationReceiverModelNameKey];
        v19 = [resultsCopy objectForKeyedSubscript:kSFOperationReceiverComputerNameKey];
        v20 = [resultsCopy objectForKeyedSubscript:kSFOperationReceiverIDSDeviceIDKey];
        SFNodeSetModel();
        SFNodeSetComputerName();
        v26 = v20;
        SFNodeSetIDSDeviceIdentifier();
        v27 = v18;
        if (v19)
        {
          v21 = objc_getAssociatedObject(v12, @"SDAirDropPeerMetric");
          [v21 setModelName:v18];
          v22 = [NSNumber numberWithInt:v17 != 0];
          [v21 setVerifiableIdentity:v22];

          [v21 setAccountID:v17];
          [(SDBonjourBrowser *)self logAirDropDiscoveryInfoForNode:v12];
          [(NSMutableSet *)self->_discoveredPeers addObject:personID];
        }

        else
        {
          v21 = airdrop_log();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v30 = personID;
            _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Identity discovery denied for %@", buf, 0xCu);
          }
        }

        v13 = v28;
        if (v17 && (sub_100090360(v12) & 1) == 0)
        {
          [SDBonjourBrowser updateFriendRPIdentityForAccountID:v17 withAirDropClientInfo:resultsCopy];
        }

        [(SDBonjourBrowser *)self startIdentityQueryForNode:v12];
      }

      else
      {
        v16 = airdrop_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
        {
          sub_10017DEF8();
        }
      }

      nodes = [(SDBonjourBrowser *)self nodes];
      sub_100090C24(v12, nodes, self->_iconCache, [(SDBonjourBrowser *)self preferVibrantIcons]);

      [(SDBonjourBrowser *)self clearCache];
      [(SDBonjourBrowser *)self notifyClient];
    }

    goto LABEL_25;
  }

LABEL_13:
  v23 = airdrop_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    v25 = NSStringFromSelector(a2);
    *buf = 138413058;
    v30 = v25;
    v31 = 2112;
    v32 = sub_10017C210(event);
    v33 = 1024;
    eventCopy = event;
    v35 = 2112;
    v36 = resultsCopy;
    _os_log_error_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "%@: UNHANDLED EVENT %@ [%d] %@", buf, 0x26u);
  }

LABEL_26:
}

- (void)startAirDropRequestForNode:(__SFNode *)node
{
  v9 = SFNodeCopyEmailHash();
  v5 = SFNodeCopyPhoneHash();
  if (!(v9 | v5))
  {
    v6 = SFNodeCopyRealName();
    v7 = [(NSMutableDictionary *)self->_airDropRequests objectForKeyedSubscript:v6];

    if (!v7)
    {
      v8 = [[SDAirDropClient alloc] initWithPerson:node items:0 forDiscovery:1];
      [(NSMutableDictionary *)self->_airDropRequests setObject:v8 forKeyedSubscript:v6];
      [(SDAirDropClient *)v8 setDelegate:self];
      [(SDAirDropClient *)v8 activate];
    }
  }
}

- (void)cancelAirDropRequests
{
  airDropRequests = self->_airDropRequests;
  if (airDropRequests)
  {
    allValues = [(NSMutableDictionary *)airDropRequests allValues];
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v5 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v10;
      do
      {
        v8 = 0;
        do
        {
          if (*v10 != v7)
          {
            objc_enumerationMutation(allValues);
          }

          [*(*(&v9 + 1) + 8 * v8) invalidate];
          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allValues countByEnumeratingWithState:&v9 objects:v13 count:16];
      }

      while (v6);
    }

    [(NSMutableDictionary *)self->_airDropRequests removeAllObjects];
  }
}

- (void)personInfoChanged:(id)changed flags:(id)flags atag:(id)atag cname:(id)cname phash:(id)phash ehash:(id)ehash nhash:(id)nhash
{
  changedCopy = changed;
  flagsCopy = flags;
  atagCopy = atag;
  v15 = [(SDBonjourBrowser *)self copyNodeForService:changedCopy];
  if (v15)
  {
    v16 = v15;
    v17 = sub_1001F06B4(0, flagsCopy);
    if (v17)
    {
      v18 = v17;
      SFNodeSetFlags();
      CFRelease(v18);
    }

    if ([(SDStatusMonitor *)self->_monitor enableStrangers])
    {
      SFNodeSetUserName();
    }

    v19 = objc_getAssociatedObject(v16, @"SDAirDropPeerMetric");
    Current = CFAbsoluteTimeGetCurrent();
    bonjourTXTRecordDiscovery = [v19 bonjourTXTRecordDiscovery];
    [bonjourTXTRecordDiscovery doubleValue];
    v23 = [NSNumber numberWithDouble:Current - v22];

    [v19 setBonjourTXTRecordDiscovery:v23];
    v24 = airdrop_log();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      name = [changedCopy name];
      [v23 doubleValue];
      v27 = 138412546;
      v28 = name;
      v29 = 1024;
      v30 = (v26 * 1000.0);
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Bonjour discovered %@ TXT record in %d ms", &v27, 0x12u);
    }

    [(SDBonjourBrowser *)self startAirDropRequestForNode:v16];
    CFRelease(v16);
  }
}

- (void)handleIdentity:(id)identity withQueryID:(id)d emailOrPhone:(id)phone error:(id)error
{
  identityCopy = identity;
  dCopy = d;
  phoneCopy = phone;
  errorCopy = error;
  if (errorCopy)
  {
    v14 = airdrop_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_10017DF34();
    }

    CFDictionaryRemoveValue(self->_identityQueries, dCopy);
  }

  else
  {
    Value = CFDictionaryGetValue(self->_identityQueries, dCopy);
    if (Value)
    {
      v16 = Value;
      v17 = SFNodeCopyAppleID();
      if (v17)
      {
        v18 = [(SDStatusMonitor *)self->_monitor verifiedIdentityForAppleID:v17];
      }

      else
      {
        v18 = 0;
      }

      v19 = identityCopy;
      if (v18 != v19 && ([v18 isEqual:v19] & 1) == 0)
      {
        if (v19)
        {
          [(SDStatusMonitor *)self->_monitor cacheIdentity:v19];
          emailOrPhone = [v19 emailOrPhone];
          SFNodeSetAppleID();
        }

        nodes = [(SDBonjourBrowser *)self nodes];
        sub_100090C24(v16, nodes, self->_iconCache, [(SDBonjourBrowser *)self preferVibrantIcons]);

        [(SDBonjourBrowser *)self clearCacheAndNotify];
      }

      CFDictionaryRemoveValue(self->_identityQueries, dCopy);
    }
  }
}

- (void)startIdentityQueryForNode:(__SFNode *)node
{
  v5 = SFNodeCopyEmailHash();
  v6 = SFNodeCopyPhoneHash();
  if (v5 | v6)
  {
    v7 = [(SDStatusMonitor *)self->_monitor emailOrPhoneForEmailHash:v5 phoneHash:v6];
    if (v7)
    {
      v8 = [(SDStatusMonitor *)self->_monitor verifiedIdentityForAppleID:v7];
      if (v8)
      {
        SFNodeSetAppleID();
        nodes = [(SDBonjourBrowser *)self nodes];
        sub_100090C24(node, nodes, self->_iconCache, [(SDBonjourBrowser *)self preferVibrantIcons]);

        [(SDBonjourBrowser *)self clearCacheAndNotify];
      }

      else
      {
        v10 = +[NSUUID UUID];
        uUIDString = [v10 UUIDString];

        CFDictionarySetValue(self->_identityQueries, uUIDString, node);
        v12 = +[SDAppleIDAgent sharedAgent];
        v14[0] = _NSConcreteStackBlock;
        v14[1] = 3221225472;
        v14[2] = sub_10017C9B0;
        v14[3] = &unk_1008D2070;
        v14[4] = self;
        v15 = uUIDString;
        v16 = v7;
        v13 = uUIDString;
        [v12 verifiedIdentityForEmailOrPhone:v16 completion:v14];
      }
    }

    else
    {
      SFNodeSetAppleID();
    }
  }

  else
  {
    SFNodeSetAppleID();
  }
}

- (void)cancelIdentityQueries
{
  identityQueries = self->_identityQueries;
  if (identityQueries)
  {
    CFDictionaryRemoveAllValues(identityQueries);
  }
}

- (void)contactsChanged:(id)changed
{
  if (self->_startTime != 0.0)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);

    if (WeakRetained)
    {
      [(SDBonjourBrowser *)self cancelIdentityQueries];
      allValues = [(NSMutableDictionary *)self->_servers allValues];
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v6 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        v7 = v6;
        v8 = *v13;
        do
        {
          for (i = 0; i != v7; i = i + 1)
          {
            if (*v13 != v8)
            {
              objc_enumerationMutation(allValues);
            }

            v10 = *(*(&v12 + 1) + 8 * i);
            [(SDBonjourBrowser *)self startIdentityQueryForNode:v10];
            nodes = [(SDBonjourBrowser *)self nodes];
            sub_100090C24(v10, nodes, self->_iconCache, [(SDBonjourBrowser *)self preferVibrantIcons]);
          }

          v7 = [allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
        }

        while (v7);
      }

      [(SDBonjourBrowser *)self clearCacheAndNotify];
    }
  }
}

- (void)linkStateChanged:(id)changed
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "AWDL link state changed", v5, 2u);
  }

  [(SDBonjourBrowser *)self restartAfterDelay:1.0];
}

- (void)notifyClient
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained bonjourNodesDidChange:self];
}

- (void)notifyClientIfDone:(unsigned int)done
{
  doneCopy = done;
  [(SDBonjourBrowser *)self clearCache];
  if ((doneCopy & 1) == 0 || self->_isAirDrop)
  {

    [(SDBonjourBrowser *)self notifyClient];
  }
}

- (BOOL)validAirDropInterface:(unsigned int)interface
{
  if (self->_awdlIndex == interface || [(SDStatusMonitor *)self->_monitor browseAllInterfaces])
  {
    return 1;
  }

  if (interface)
  {
    return 0;
  }

  monitor = self->_monitor;

  return [(SDStatusMonitor *)monitor showMeInWormhole];
}

- (void)handleBrowseCallBack:(unsigned int)back interface:(unsigned int)interface error:(int)error name:(const char *)name type:(const char *)type domain:(const char *)domain
{
  if (error)
  {
    v9 = browser_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10017DFC8();
    }

    [(SDBonjourBrowser *)self restartAfterDelay:2.0];
  }

  else
  {
    v12 = *&interface;
    v13 = *&back;
    v18 = [NSString stringWithUTF8String:name];
    v14 = [NSString stringWithUTF8String:type];
    v15 = [NSString stringWithUTF8String:domain];
    if (v18)
    {
      v16 = v14 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = v16 || v15 == 0;
    if (!v17 && (!self->_isAirDrop || sub_100092428(v18) && [(SDBonjourBrowser *)self validAirDropInterface:v12]))
    {
      if ((v13 & 2) != 0)
      {
        [(SDBonjourBrowser *)self addService:v18 type:v14 domain:v15 interface:v12];
      }

      else
      {
        [(SDBonjourBrowser *)self removeService:v18 type:v14 domain:v15];
      }
    }

    [(SDBonjourBrowser *)self notifyClientIfDone:v13];
  }
}

- (id)odiskMountPoints:(id)points
{
  pointsCopy = points;
  v5 = objc_opt_new();
  v6 = [(SDStatusMonitor *)self->_monitor odiskMountPointsForServer:pointsCopy];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * i);
        v12 = sub_1001F24E4(v11);
        if (v12)
        {
          [v5 setObject:v11 forKeyedSubscript:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)serviceFromServiceName:(id)name
{
  v3 = _CFNetServiceCreateFromServiceName();
  if (v3)
  {
    v4 = v3;
    v5 = CFNetServiceGetName(v3);
    v6 = CFNetServiceGetType(v4);
    v7 = CFNetServiceGetDomain(v4);
    v8 = [[NSNetService alloc] initWithDomain:v7 type:v6 name:v5];
    CFRelease(v4);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)valueForKey:(id)key inTXTRecord:(const void *)record withLength:(unsigned __int16)length
{
  valueLen = 0;
  ValuePtr = TXTRecordGetValuePtr(length, record, [key UTF8String], &valueLen);
  if (ValuePtr)
  {
    v6 = ValuePtr;
    v7 = [NSString alloc];
    ValuePtr = [v7 initWithBytes:v6 length:valueLen encoding:4];
  }

  return ValuePtr;
}

- (void)processTXTRecordUpdate:(const char *)update rdlen:(unsigned __int16)rdlen rdata:(const void *)rdata
{
  rdlenCopy = rdlen;
  v8 = &NSURLAuthenticationMethodServerTrust_ptr;
  v9 = [NSString stringWithUTF8String:update];
  v10 = [(SDBonjourBrowser *)self serviceFromServiceName:v9];

  if (v10)
  {
    type = [v10 type];
    if ([type isEqualToString:@"_device-info._tcp."])
    {
      v12 = [(SDBonjourBrowser *)self valueForKey:@"model" inTXTRecord:rdata withLength:rdlenCopy];
      v13 = [(SDBonjourBrowser *)self valueForKey:@"osxvers" inTXTRecord:rdata withLength:rdlenCopy];
      v14 = [(SDBonjourBrowser *)self valueForKey:@"ecolor" inTXTRecord:rdata withLength:rdlenCopy];
      v15 = [(SDBonjourBrowser *)self valueForKey:@"icolor" inTXTRecord:rdata withLength:rdlenCopy];
      [(SDBonjourBrowser *)self deviceInfoChanged:v10 model:v12 ecolor:v14 icolor:v15 osxvers:v13];
    }

    else
    {
      if ([type isEqualToString:@"_netbios._udp."])
      {
        v16 = [(SDBonjourBrowser *)self valueForKey:@"comment" inTXTRecord:rdata withLength:rdlenCopy];
        [(SDBonjourBrowser *)self commentChanged:v10 comment:v16];

        goto LABEL_23;
      }

      if (![type isEqualToString:sub_10011830C()])
      {
        v27 = type;
        Count = TXTRecordGetCount(rdlenCopy, rdata);
        v28 = objc_opt_new();
        if (Count)
        {
          v21 = 0;
          v22 = Count;
          do
          {
            value = 0;
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            v39 = 0u;
            v40 = 0u;
            v37 = 0u;
            v38 = 0u;
            v35 = 0u;
            v36 = 0u;
            v33 = 0u;
            v34 = 0u;
            *key = 0u;
            v32 = 0u;
            valueLen = 0;
            if (!TXTRecordGetItemAtIndex(rdlenCopy, rdata, v21, 0x100u, key, &valueLen, &value))
            {
              v23 = [v8[266] stringWithUTF8String:key];
              if (v23)
              {
                v24 = sub_1001F2EBC(valueLen, value);
                if (v24)
                {
                  if ([v23 isEqual:@"sys"])
                  {
                    [(SDBonjourBrowser *)self systemInfoChanged:v10 diskInfo:v24];
                  }

                  else
                  {
                    v25 = [v24 objectForKeyedSubscript:@"adVN"];
                    if (v25)
                    {
                      [v28 addObject:v25];
                    }
                  }
                }

                v8 = &NSURLAuthenticationMethodServerTrust_ptr;
              }
            }

            ++v21;
          }

          while (v22 != v21);
        }

        name = [v10 name];
        [(SDBonjourBrowser *)self ejectDisksIfNeeded:name diskNames:v28];

        type = v27;
        goto LABEL_23;
      }

      v12 = [(SDBonjourBrowser *)self valueForKey:@"flags" inTXTRecord:rdata withLength:rdlenCopy];
      v13 = [(SDBonjourBrowser *)self valueForKey:@"atag" inTXTRecord:rdata withLength:rdlenCopy];
      v14 = [(SDBonjourBrowser *)self valueForKey:@"ehash" inTXTRecord:rdata withLength:rdlenCopy];
      v17 = [(SDBonjourBrowser *)self valueForKey:@"nhash" inTXTRecord:rdata withLength:rdlenCopy];
      v18 = [(SDBonjourBrowser *)self valueForKey:@"phash" inTXTRecord:rdata withLength:rdlenCopy];
      v19 = [(SDBonjourBrowser *)self valueForKey:@"cname" inTXTRecord:rdata withLength:rdlenCopy];
      [(SDBonjourBrowser *)self personInfoChanged:v10 flags:v12 atag:v13 cname:v19 phash:v18 ehash:v14 nhash:v17];
    }

LABEL_23:
  }
}

- (void)handleQueryCallBack:(unsigned int)back error:(int)error fullname:(const char *)fullname rrtype:(unsigned __int16)rrtype rdlen:(unsigned __int16)rdlen rdata:(const void *)rdata
{
  if (error)
  {
    v8 = browser_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_10017E038();
    }
  }

  else
  {
    v9 = *&back;
    if ((back & 2) != 0)
    {
      if (rrtype == 16)
      {
        [(SDBonjourBrowser *)self processTXTRecordUpdate:fullname rdlen:rdlen rdata:rdata];
      }

      else
      {
        v11 = browser_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          sub_10017E0A8();
        }
      }
    }

    [(SDBonjourBrowser *)self notifyClientIfDone:v9];
  }
}

- (void)queryRecordTimerCallBack:(id)back
{
  userInfo = [back userInfo];
  [(SDBonjourBrowser *)self cleanupRecordQueryForKey:userInfo];
}

- (void)restartAfterDelay:(double)delay
{
  if (self->_startCalled)
  {
    v5 = [NSDate dateWithTimeIntervalSinceNow:delay];
    [(NSTimer *)self->_restartTimer setFireDate:v5];
  }
}

- (NSString)description
{
  v19 = 0;
  NSAppendPrintF(&v19, "BonjourBrowser\n");
  v3 = v19;
  v18 = v3;
  NSAppendPrintF(&v18, "--------------\n");
  v4 = v18;

  v17 = v4;
  mode = self->_mode;
  if (mode > 2)
  {
    v6 = @"?";
  }

  else
  {
    v6 = *(&off_1008D2128 + mode);
  }

  NSAppendPrintF(&v17, "Mode:                                %@\n", v6);
  v7 = v17;

  v16 = v7;
  if (self->_proximity)
  {
    v8 = "yes";
  }

  else
  {
    v8 = "no";
  }

  NSAppendPrintF(&v16, "WirelessProx object:                 %s\n", v8);
  v9 = v16;

  proximity = self->_proximity;
  if (proximity)
  {
    v15 = v9;
    state = [(WPAWDL *)proximity state];
    if (state > 5)
    {
      v12 = "?";
    }

    else
    {
      v12 = off_1008D2140[state];
    }

    NSAppendPrintF(&v15, "WirelessProx state:                  %s\n", v12);
    v13 = v15;

    v9 = v13;
  }

  return v9;
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

- (SDBonjourBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end