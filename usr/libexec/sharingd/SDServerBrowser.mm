@interface SDServerBrowser
+ (id)sharedBrowser;
- (NSString)description;
- (SDServerBrowser)init;
- (id)airDropNodesForDomain:(id)domain;
- (id)bonjourNodesForDomain:(id)domain;
- (id)odiskNodesForDomain:(id)domain;
- (id)stringForBrowserMode:(int64_t)mode;
- (id)windowsNodesForWorkgroup:(id)workgroup;
- (void)airDropTransferRequested:(id)requested;
- (void)bonjourNodesDidChange:(id)change;
- (void)incrementTransfersCompleted;
- (void)incrementTransfersInitiated;
- (void)postNotification:(id)notification forNeighborhood:(id)neighborhood;
- (void)setBonjourBrowserMode:(int64_t)mode;
- (void)setIconData:(id)data iconHash:(id)hash forPerson:(__SFNode *)person;
- (void)startAirDropBrowsing:(id)browsing bundleID:(id)d sessionID:(id)iD helperConnection:(id)connection delayBonjour:(BOOL)bonjour;
- (void)startAirDropBrowsing:(id)browsing connection:(id)connection sessionID:(id)d;
- (void)startBrowsingDomain:(id)domain;
- (void)startBrowsingWorkgroup:(id)workgroup;
- (void)startODiskBrowsing:(id)browsing;
- (void)stopAirDropBrowsing:(id)browsing;
- (void)stopBrowsingDomain:(id)domain;
- (void)stopBrowsingWorkgroup:(id)workgroup;
- (void)stopODiskBrowsing:(id)browsing;
- (void)windowsNodesDidChange:(id)change;
@end

@implementation SDServerBrowser

+ (id)sharedBrowser
{
  if (qword_100989F50 != -1)
  {
    sub_1001430A8();
  }

  v3 = qword_100989F58;

  return v3;
}

- (NSString)description
{
  v86 = 0;
  NSAppendPrintF(&v86, "ServerBrowser\n");
  v3 = v86;
  v85 = v3;
  NSAppendPrintF(&v85, "--------------\n");
  v4 = v85;

  v84 = v4;
  v5 = [(SDServerBrowser *)self stringForBrowserMode:self->_mode];
  NSAppendPrintF(&v84, "Mode:                                %@\n", v5);
  v6 = v84;

  if ([(NSMutableDictionary *)self->_bonjourBrowsers count])
  {
    v83 = v6;
    NSAppendPrintF(&v83, "Bonjour Browsers:\n");
    v7 = v83;

    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    obj = self->_bonjourBrowsers;
    v8 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v79 objects:v90 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v80;
      do
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v80 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v79 + 1) + 8 * i);
          v13 = [(NSMutableDictionary *)self->_bonjourBrowsers objectForKeyedSubscript:v12];
          v14 = [v13 objectForKeyedSubscript:@"Browser"];
          v78 = v7;
          NSAppendPrintF(&v78, "Domain:                              %@\n", v12);
          v15 = v78;

          v77 = v15;
          v16 = [v14 description];
          NSAppendPrintF(&v77, "%@", v16);
          v7 = v77;
        }

        v9 = [(NSMutableDictionary *)obj countByEnumeratingWithState:&v79 objects:v90 count:16];
      }

      while (v9);
    }

    v76 = v7;
    NSAppendPrintF(&v76, "\n");
    v6 = v76;
  }

  if ([(NSMutableDictionary *)self->_airDropBrowsers count])
  {
    v75 = v6;
    NSAppendPrintF(&v75, "AirDrop Browsers:\n");
    v17 = v75;

    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    obja = self->_airDropBrowsers;
    v18 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v71 objects:v89 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v72;
      do
      {
        for (j = 0; j != v19; j = j + 1)
        {
          if (*v72 != v20)
          {
            objc_enumerationMutation(obja);
          }

          v22 = *(*(&v71 + 1) + 8 * j);
          v23 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:v22];
          v24 = [v23 objectForKeyedSubscript:@"Browser"];
          v70 = v17;
          NSAppendPrintF(&v70, "Domain:                              %@\n", v22);
          v25 = v70;

          v69 = v25;
          v26 = [v24 description];
          NSAppendPrintF(&v69, "%@", v26);
          v17 = v69;
        }

        v19 = [(NSMutableDictionary *)obja countByEnumeratingWithState:&v71 objects:v89 count:16];
      }

      while (v19);
    }

    v68 = v17;
    NSAppendPrintF(&v68, "\n");
    v6 = v68;
  }

  if ([(NSMutableDictionary *)self->_windowsBrowsers count])
  {
    v67 = v6;
    NSAppendPrintF(&v67, "Windows Browsers:\n");
    v27 = v67;

    v65 = 0u;
    v66 = 0u;
    v64 = 0u;
    v63 = 0u;
    objb = self->_windowsBrowsers;
    v28 = [(NSMutableDictionary *)objb countByEnumeratingWithState:&v63 objects:v88 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v64;
      do
      {
        for (k = 0; k != v29; k = k + 1)
        {
          if (*v64 != v30)
          {
            objc_enumerationMutation(objb);
          }

          v32 = *(*(&v63 + 1) + 8 * k);
          v33 = [(NSMutableDictionary *)self->_windowsBrowsers objectForKeyedSubscript:v32];
          v34 = [v33 objectForKeyedSubscript:@"Browser"];
          v62 = v27;
          NSAppendPrintF(&v62, "Domain:                              %@\n", v32);
          v35 = v62;

          v61 = v35;
          v36 = [v34 description];
          NSAppendPrintF(&v61, "%@", v36);
          v27 = v61;
        }

        v29 = [(NSMutableDictionary *)objb countByEnumeratingWithState:&v63 objects:v88 count:16];
      }

      while (v29);
    }

    v60 = v27;
    NSAppendPrintF(&v60, "\n");
    v6 = v60;
  }

  if ([(NSMutableDictionary *)self->_odiskBrowsers count])
  {
    v59 = v6;
    NSAppendPrintF(&v59, "ODisk Browsers:\n");
    v37 = v59;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    objc = self->_odiskBrowsers;
    v38 = [(NSMutableDictionary *)objc countByEnumeratingWithState:&v55 objects:v87 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v56;
      do
      {
        for (m = 0; m != v39; m = m + 1)
        {
          if (*v56 != v40)
          {
            objc_enumerationMutation(objc);
          }

          v42 = *(*(&v55 + 1) + 8 * m);
          v43 = [(NSMutableDictionary *)self->_odiskBrowsers objectForKeyedSubscript:v42];
          v44 = [v43 objectForKeyedSubscript:@"Browser"];
          v54 = v37;
          NSAppendPrintF(&v54, "Domain:                              %@\n", v42);
          v45 = v54;

          v53 = v45;
          v46 = [v44 description];
          NSAppendPrintF(&v53, "%@", v46);
          v37 = v53;
        }

        v39 = [(NSMutableDictionary *)objc countByEnumeratingWithState:&v55 objects:v87 count:16];
      }

      while (v39);
    }

    v52 = v37;
    NSAppendPrintF(&v52, "\n");
    v6 = v52;
  }

  return v6;
}

- (SDServerBrowser)init
{
  v14.receiver = self;
  v14.super_class = SDServerBrowser;
  v2 = [(SDServerBrowser *)&v14 init];
  v3 = v2;
  if (v2)
  {
    v2->_mode = 0;
    v4 = objc_opt_new();
    odiskBrowsers = v3->_odiskBrowsers;
    v3->_odiskBrowsers = v4;

    v6 = objc_opt_new();
    bonjourBrowsers = v3->_bonjourBrowsers;
    v3->_bonjourBrowsers = v6;

    v8 = objc_opt_new();
    windowsBrowsers = v3->_windowsBrowsers;
    v3->_windowsBrowsers = v8;

    v10 = objc_opt_new();
    airDropBrowsers = v3->_airDropBrowsers;
    v3->_airDropBrowsers = v10;

    v12 = +[NSNotificationCenter defaultCenter];
    [v12 addObserver:v3 selector:"airDropTransferRequested:" name:@"com.apple.sharingd.AirDropTransferInitiated" object:0];
  }

  return v3;
}

- (void)postNotification:(id)notification forNeighborhood:(id)neighborhood
{
  notificationCopy = notification;
  neighborhoodCopy = neighborhood;
  v7 = neighborhoodCopy;
  if (neighborhoodCopy)
  {
    v10 = @"NeighborhoodName";
    v11 = neighborhoodCopy;
    v8 = [NSDictionary dictionaryWithObjects:&v11 forKeys:&v10 count:1];
  }

  else
  {
    v8 = 0;
  }

  v9 = +[NSNotificationCenter defaultCenter];
  [v9 postNotificationName:notificationCopy object:0 userInfo:v8];
}

- (void)airDropTransferRequested:(id)requested
{
  v4 = airdrop_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "SDServerBrowser: AirDrop transfer requested notification received", buf, 2u);
  }

  v5 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:@"local"];
  v6 = [v5 objectForKeyedSubscript:@"Browser"];
  if (([v6 startCalled] & 1) == 0)
  {
    [v6 start];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100141B1C;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)bonjourNodesDidChange:(id)change
{
  changeCopy = change;
  types = [changeCopy types];
  if ([types containsObject:@"_afpovertcp._tcp."])
  {
    v5 = @"com.apple.sharingd.BonjourChanged";
  }

  else if ([types containsObject:sub_10011830C()])
  {
    v5 = @"com.apple.sharingd.AirDropChanged";
  }

  else
  {
    if (![types containsObject:@"_odisk._tcp."])
    {
      goto LABEL_8;
    }

    v5 = @"com.apple.sharingd.ODisksChanged";
  }

  domain = [changeCopy domain];
  [(SDServerBrowser *)self postNotification:v5 forNeighborhood:domain];

LABEL_8:
}

- (void)windowsNodesDidChange:(id)change
{
  workgroup = [change workgroup];
  [(SDServerBrowser *)self postNotification:@"com.apple.sharingd.WindowsChanged" forNeighborhood:workgroup];
}

- (void)startBrowsingDomain:(id)domain
{
  domainCopy = domain;
  v5 = [(NSMutableDictionary *)self->_bonjourBrowsers objectForKeyedSubscript:domainCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectForKeyedSubscript:@"Count"];
    intValue = [v7 intValue];

    v9 = [NSNumber numberWithInt:intValue + 1];
    [v6 setObject:v9 forKeyedSubscript:@"Count"];
  }

  else
  {
    v11[0] = @"_afpovertcp._tcp.";
    v11[1] = @"_smb._tcp.";
    v11[2] = @"_rfb._tcp.";
    v11[3] = @"_adisk._tcp.";
    v9 = [NSArray arrayWithObjects:v11 count:4];
    v10 = [[SDBonjourBrowser alloc] initWithDomain:domainCopy types:v9];
    v6 = objc_opt_new();
    [v6 setObject:&off_10090BD00 forKeyedSubscript:@"Count"];
    [v6 setObject:v10 forKeyedSubscript:@"Browser"];
    [(NSMutableDictionary *)self->_bonjourBrowsers setObject:v6 forKeyedSubscript:domainCopy];
    [(SDBonjourBrowser *)v10 setDelegate:self];
    [(SDBonjourBrowser *)v10 setMode:self->_mode];
    [(SDBonjourBrowser *)v10 start];
  }
}

- (void)setBonjourBrowserMode:(int64_t)mode
{
  if (self->_mode != mode)
  {
    self->_mode = mode;
    v6 = [(NSMutableDictionary *)self->_bonjourBrowsers objectForKeyedSubscript:@"local"];
    v5 = [v6 objectForKeyedSubscript:@"Browser"];
    [v5 setMode:mode];
  }
}

- (id)bonjourNodesForDomain:(id)domain
{
  v3 = [(NSMutableDictionary *)self->_bonjourBrowsers objectForKeyedSubscript:domain];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Browser"];
    nodes = [v5 nodes];
  }

  else
  {
    nodes = 0;
  }

  return nodes;
}

- (void)stopBrowsingDomain:(id)domain
{
  domainCopy = domain;
  v4 = [(NSMutableDictionary *)self->_bonjourBrowsers objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"Count"];
    v7 = [v6 intValue] - 1;

    if (v7)
    {
      v8 = [NSNumber numberWithInt:v7];
      [v5 setObject:v8 forKeyedSubscript:@"Count"];
    }

    else
    {
      v9 = [v5 objectForKeyedSubscript:@"Browser"];
      [v9 invalidate];

      v10 = [v5 objectForKeyedSubscript:@"Browser"];
      [v10 setDelegate:0];

      [(NSMutableDictionary *)self->_bonjourBrowsers removeObjectForKey:domainCopy];
    }
  }
}

- (void)startODiskBrowsing:(id)browsing
{
  browsingCopy = browsing;
  v5 = [(NSMutableDictionary *)self->_odiskBrowsers objectForKeyedSubscript:browsingCopy];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 objectForKeyedSubscript:@"Count"];
    intValue = [v7 intValue];

    v9 = [NSNumber numberWithInt:intValue + 1];
    [v6 setObject:v9 forKeyedSubscript:@"Count"];
  }

  else
  {
    v11 = @"_odisk._tcp.";
    v9 = [NSArray arrayWithObjects:&v11 count:1];
    v10 = [[SDBonjourBrowser alloc] initWithDomain:browsingCopy types:v9];
    v6 = objc_opt_new();
    [v6 setObject:&off_10090BD00 forKeyedSubscript:@"Count"];
    [v6 setObject:v10 forKeyedSubscript:@"Browser"];
    [(NSMutableDictionary *)self->_odiskBrowsers setObject:v6 forKeyedSubscript:browsingCopy];
    [(SDBonjourBrowser *)v10 setDelegate:self];
    [(SDBonjourBrowser *)v10 start];
  }
}

- (id)odiskNodesForDomain:(id)domain
{
  v3 = [(NSMutableDictionary *)self->_odiskBrowsers objectForKeyedSubscript:domain];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Browser"];
    nodes = [v5 nodes];
  }

  else
  {
    nodes = 0;
  }

  return nodes;
}

- (void)stopODiskBrowsing:(id)browsing
{
  browsingCopy = browsing;
  v4 = [(NSMutableDictionary *)self->_odiskBrowsers objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"Count"];
    v7 = [v6 intValue] - 1;

    if (v7)
    {
      v8 = [NSNumber numberWithInt:v7];
      [v5 setObject:v8 forKeyedSubscript:@"Count"];
    }

    else
    {
      v9 = [v5 objectForKeyedSubscript:@"Browser"];
      [v9 invalidate];

      v10 = [v5 objectForKeyedSubscript:@"Browser"];
      [v10 setDelegate:0];

      [(NSMutableDictionary *)self->_odiskBrowsers removeObjectForKey:browsingCopy];
    }
  }
}

- (void)startAirDropBrowsing:(id)browsing bundleID:(id)d sessionID:(id)iD helperConnection:(id)connection delayBonjour:(BOOL)bonjour
{
  browsingCopy = browsing;
  dCopy = d;
  iDCopy = iD;
  connectionCopy = connection;
  v16 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:browsingCopy];
  if (v16)
  {
    v17 = v16;
    v18 = [v16 objectForKeyedSubscript:@"Count"];
    intValue = [v18 intValue];

    v20 = [NSNumber numberWithInt:intValue + 1];
    [v17 setObject:v20 forKeyedSubscript:@"Count"];
  }

  else
  {
    v26 = sub_10011830C();
    v21 = [NSArray arrayWithObjects:&v26 count:1];
    v22 = [[SDBonjourBrowser alloc] initWithDomain:browsingCopy types:v21];
    [(SDBonjourBrowser *)v22 setHelperConnection:connectionCopy];
    v17 = objc_opt_new();
    [v17 setObject:&off_10090BD00 forKeyedSubscript:@"Count"];
    [v17 setObject:v22 forKeyedSubscript:@"Browser"];
    [(NSMutableDictionary *)self->_airDropBrowsers setObject:v17 forKeyedSubscript:browsingCopy];
    [(SDBonjourBrowser *)v22 setBundleID:dCopy];
    [(SDBonjourBrowser *)v22 setSessionID:iDCopy];
    [(SDBonjourBrowser *)v22 setDelegate:self];
    if (bonjour)
    {
      v23 = airdrop_log();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        *v24 = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Delayed Bonjour browsing requested", v24, 2u);
      }
    }

    else
    {
      [(SDBonjourBrowser *)v22 start];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001425F4;
      block[3] = &unk_1008CDEA0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)startAirDropBrowsing:(id)browsing connection:(id)connection sessionID:(id)d
{
  browsingCopy = browsing;
  connectionCopy = connection;
  dCopy = d;
  v11 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:browsingCopy];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 objectForKeyedSubscript:@"Count"];
    intValue = [v13 intValue];

    v15 = [NSNumber numberWithInt:intValue + 1];
    [v12 setObject:v15 forKeyedSubscript:@"Count"];

    v16 = [v12 objectForKeyedSubscript:@"Browser"];
    if (([v16 startCalled] & 1) == 0)
    {
      [v16 start];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1001428B8;
      v18[3] = &unk_1008CDEA0;
      v18[4] = self;
      dispatch_async(&_dispatch_main_q, v18);
    }
  }

  else
  {
    v20 = sub_10011830C();
    v16 = [NSArray arrayWithObjects:&v20 count:1];
    v17 = [[SDBonjourBrowser alloc] initWithDomain:browsingCopy types:v16];
    v12 = objc_opt_new();
    [v12 setObject:&off_10090BD00 forKeyedSubscript:@"Count"];
    [v12 setObject:v17 forKeyedSubscript:@"Browser"];
    [(NSMutableDictionary *)self->_airDropBrowsers setObject:v12 forKeyedSubscript:browsingCopy];
    [(SDBonjourBrowser *)v17 setXpcConnection:connectionCopy];
    [(SDBonjourBrowser *)v17 setSessionID:dCopy];
    [(SDBonjourBrowser *)v17 setDelegate:self];
    [(SDBonjourBrowser *)v17 start];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001428A4;
    block[3] = &unk_1008CDEA0;
    block[4] = self;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)setIconData:(id)data iconHash:(id)hash forPerson:(__SFNode *)person
{
  dataCopy = data;
  hashCopy = hash;
  v9 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:@"local"];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 objectForKeyedSubscript:@"Browser"];
    [v11 setIconData:dataCopy iconHash:hashCopy forPerson:person];
  }
}

- (void)incrementTransfersInitiated
{
  v2 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:@"local"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"Browser"];
    [v4 setTransfersInitiated:[v4 transfersInitiated]+ 1];
  }

  else
  {
    v4 = browser_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_1001430BC(v4);
    }
  }
}

- (void)incrementTransfersCompleted
{
  v2 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:@"local"];
  v3 = v2;
  if (v2)
  {
    v4 = [v2 objectForKeyedSubscript:@"Browser"];
    [v4 setTransfersCompleted:[v4 transfersCompleted]+ 1];
  }

  else
  {
    v4 = browser_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "incrementTransfersCompleted: No AirDrop browsers are running", v5, 2u);
    }
  }
}

- (id)airDropNodesForDomain:(id)domain
{
  v3 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:domain];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Browser"];
    nodes = [v5 nodes];
  }

  else
  {
    nodes = 0;
  }

  return nodes;
}

- (void)stopAirDropBrowsing:(id)browsing
{
  browsingCopy = browsing;
  v5 = [(NSMutableDictionary *)self->_airDropBrowsers objectForKeyedSubscript:browsingCopy];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 objectForKeyedSubscript:@"Count"];
    v8 = [v7 intValue] - 1;

    if (v8)
    {
      v9 = [NSNumber numberWithInt:v8];
      [v6 setObject:v9 forKeyedSubscript:@"Count"];
    }

    else
    {
      v10 = [v6 objectForKeyedSubscript:@"Browser"];
      [v10 invalidate];

      v11 = [v6 objectForKeyedSubscript:@"Browser"];
      [v11 setDelegate:0];

      [(NSMutableDictionary *)self->_airDropBrowsers removeObjectForKey:browsingCopy];
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_100142CD0;
      block[3] = &unk_1008CDEA0;
      block[4] = self;
      dispatch_async(&_dispatch_main_q, block);
    }
  }
}

- (void)startBrowsingWorkgroup:(id)workgroup
{
  workgroupCopy = workgroup;
  v4 = [(NSMutableDictionary *)self->_windowsBrowsers objectForKeyedSubscript:?];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 objectForKeyedSubscript:@"Count"];
    intValue = [v6 intValue];

    v8 = [NSNumber numberWithInt:intValue + 1];
    [v5 setObject:v8 forKeyedSubscript:@"Count"];
  }

  else
  {
    v8 = [[SDWindowsBrowser alloc] initWithWorkgroup:workgroupCopy];
    v5 = objc_opt_new();
    [v5 setObject:&off_10090BD00 forKeyedSubscript:@"Count"];
    [v5 setObject:v8 forKeyedSubscript:@"Browser"];
    [(NSMutableDictionary *)self->_windowsBrowsers setObject:v5 forKeyedSubscript:workgroupCopy];
    [(SDWindowsBrowser *)v8 setDelegate:self];
    [(SDWindowsBrowser *)v8 start];
  }
}

- (id)windowsNodesForWorkgroup:(id)workgroup
{
  v3 = [(NSMutableDictionary *)self->_windowsBrowsers objectForKeyedSubscript:workgroup];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 objectForKeyedSubscript:@"Browser"];
    nodes = [v5 nodes];
  }

  else
  {
    nodes = 0;
  }

  return nodes;
}

- (void)stopBrowsingWorkgroup:(id)workgroup
{
  workgroupCopy = workgroup;
  v4 = [(NSMutableDictionary *)self->_windowsBrowsers objectForKeyedSubscript:?];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 objectForKeyedSubscript:@"Count"];
    v7 = [v6 intValue] - 1;

    if (v7)
    {
      v8 = [NSNumber numberWithInt:v7];
      [v5 setObject:v8 forKeyedSubscript:@"Count"];
    }

    else
    {
      v8 = [v5 objectForKeyedSubscript:@"Browser"];
      [v8 stop];
      [v8 setDelegate:0];
      [(NSMutableDictionary *)self->_windowsBrowsers removeObjectForKey:workgroupCopy];
    }
  }
}

- (id)stringForBrowserMode:(int64_t)mode
{
  modeCopy = mode;
  if (mode < 3)
  {
    return off_1008D1690[mode];
  }

  v5 = browser_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = modeCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Unrecognized browser mode %d", v6, 8u);
  }

  return 0;
}

@end