@interface SDNodeBrowser
- (BOOL)onlySupportsADisk:(id)disk;
- (SDNodeBrowser)initWithNode:(__SFNode *)node protocol:(id)protocol flags:(unint64_t)flags kind:(id)kind;
- (SDNodeBrowserDelegate)delegate;
- (SDXPCHelperConnection)helperConnection;
- (id)airDropNodes;
- (id)neighborhoodNodes;
- (id)nodesInternal:(BOOL)internal;
- (id)odiskNodes;
- (id)sharePointNodes;
- (id)sidebarNodesFromServerNodes:(id)nodes nonServerCount:(unint64_t)count addAllNode:(BOOL *)node;
- (id)workgroupChildren;
- (int)addNode:(__SFNode *)node;
- (int)removeNode:(__SFNode *)node;
- (void)addBonjourChildrenFromCache:(id)cache;
- (void)addClassroomChildrenFromCache:(id)cache;
- (void)addConnectedChildrenFromCache:(id)cache;
- (void)addFakeRangingMeasurementIfAppropriateToNodesInCache:(id)cache;
- (void)addManagedChildrenFromCache:(id)cache;
- (void)addRapportChildrenFromCache:(id)cache;
- (void)addWindowsChildrenFromCache:(id)cache;
- (void)appendAllNode:(id)node;
- (void)connectedChanged:(id)changed;
- (void)copyOverBonjourInfo:(__SFNode *)info source:(__SFNode *)source;
- (void)dealloc;
- (void)domainsChanged:(id)changed;
- (void)loadAirDrop;
- (void)loadBonjour;
- (void)loadClassroom;
- (void)loadConnected;
- (void)loadDomains;
- (void)loadManaged;
- (void)loadODisk;
- (void)loadRapport;
- (void)loadSidebarPrefsMonitor;
- (void)loadWindows;
- (void)loadWorkgroups;
- (void)managedChanged:(id)changed;
- (void)notifyClientAboutWorkgroups;
- (void)serversChanged:(id)changed;
- (void)setMode:(int64_t)mode;
- (void)sharePointBrowser:(id)browser nodesDidChangeWithError:(int)error;
- (void)sidebarPrefsChanged:(id)changed;
- (void)start;
- (void)stop;
- (void)takeActionOnServerChanged:(id)changed neighborhood:(id)neighborhood;
- (void)unloadAirDrop;
- (void)unloadBonjour;
- (void)unloadClassroom;
- (void)unloadConnected;
- (void)unloadDomains;
- (void)unloadManaged;
- (void)unloadODisk;
- (void)unloadRapport;
- (void)unloadSharePoints;
- (void)unloadSidebarPrefsMonitor;
- (void)unloadWindows;
- (void)unloadWorkgroups;
- (void)updateSelectionReasonInNodes:(id)nodes;
- (void)workgroupsChanged:(id)changed;
@end

@implementation SDNodeBrowser

- (SDNodeBrowser)initWithNode:(__SFNode *)node protocol:(id)protocol flags:(unint64_t)flags kind:(id)kind
{
  protocolCopy = protocol;
  kindCopy = kind;
  v40.receiver = self;
  v40.super_class = SDNodeBrowser;
  v12 = [(SDNodeBrowser *)&v40 init];
  v13 = v12;
  if (v12)
  {
    v12->_mode = 0;
    objc_storeStrong(&v12->_kind, kind);
    v14 = objc_alloc_init(SDNodeCoalescer);
    nodeCoalescer = v13->_nodeCoalescer;
    v13->_nodeCoalescer = v14;

    airDropDiscoveryLogger = v13->_airDropDiscoveryLogger;
    v13->_airDropDiscoveryLogger = 0;

    v13->_startTime = 0.0;
    v13->_shouldCollectNodeCoalescerMetrics = 1;
    coalescer = v13->_coalescer;
    v13->_coalescer = 0;

    connection = v13->_connection;
    v13->_connection = 0;

    objc_storeStrong(&v13->_protocol, protocol);
    odiskDomains = v13->_odiskDomains;
    v13->_odiskDomains = 0;

    airDropDomains = v13->_airDropDomains;
    v13->_airDropDomains = 0;

    bonjourDomains = v13->_bonjourDomains;
    v13->_bonjourDomains = 0;

    domainBrowser = v13->_domainBrowser;
    v13->_domainBrowser = 0;

    managedBrowser = v13->_managedBrowser;
    v13->_managedBrowser = 0;

    classroomBrowser = v13->_classroomBrowser;
    v13->_classroomBrowser = 0;

    workgroupBrowser = v13->_workgroupBrowser;
    v13->_workgroupBrowser = 0;

    connectedBrowser = v13->_connectedBrowser;
    v13->_connectedBrowser = 0;

    sharePointBrowser = v13->_sharePointBrowser;
    v13->_sharePointBrowser = 0;

    managedURLTable = v13->_managedURLTable;
    v13->_managedURLTable = 0;

    commentHashTable = v13->_commentHashTable;
    v13->_commentHashTable = 0;

    v13->_combineWorkgroups = 0;
    windowsWorkgroups = v13->_windowsWorkgroups;
    v13->_windowsWorkgroups = 0;

    originalNodes = v13->_originalNodes;
    v13->_originalNodes = 0;

    v13->_error = 0;
    objc_storeStrong(&v13->_queue, &_dispatch_main_q);
    v13->_parent = CFRetain(node);
    v32 = +[SDStatusMonitor sharedMonitor];
    monitor = v13->_monitor;
    v13->_monitor = v32;

    v34 = SFNodeCopyProtocols();
    protocols = v13->_protocols;
    v13->_protocols = v34;

    contactIdentifierMap = v13->_contactIdentifierMap;
    v13->_contactIdentifierMap = 0;

    if (IsAppleInternalBuild())
    {
      v13->_showAllKnownPeopleInMagicHead = sub_10000C1F8(@"ShowKnownInMagicHead", 0) != 0;
      v37 = objc_opt_new();
      cachedFakeMeasurements = v13->_cachedFakeMeasurements;
      v13->_cachedFakeMeasurements = v37;
    }
  }

  return v13;
}

- (void)dealloc
{
  [(SDNodeBrowser *)self stop];
  parent = self->_parent;
  if (parent)
  {
    CFRelease(parent);
  }

  v4.receiver = self;
  v4.super_class = SDNodeBrowser;
  [(SDNodeBrowser *)&v4 dealloc];
}

- (void)notifyClientAboutWorkgroups
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindPrinter])
  {

    [(SDNodeBrowser *)self notifyClient];
    return;
  }

  v3 = SFNodeCopyWorkgroups();
  workgroups = [(SDWorkgroupBrowser *)self->_workgroupBrowser workgroups];
  v5 = workgroups;
  if (v3)
  {
    Count = CFSetGetCount(v3);
    if (v5)
    {
      v7 = CFSetGetCount(v5);
      v8 = v7;
      p_combineWorkgroups = &self->_combineWorkgroups;
      combineWorkgroups = self->_combineWorkgroups;
      if (Count < 1)
      {
        Mutable = 0;
      }

      else
      {
        v27 = v7;
        __chkstk_darwin(v7);
        v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v12, v11);
        CFSetGetValues(v3, v12);
        Mutable = CFSetCreateMutable(0, 0, &kCFCopyStringSetCallBacks);
        for (i = 0; i != Count; ++i)
        {
          if (!CFSetContainsValue(v5, *&v12[8 * i]))
          {
            CFSetSetValue(Mutable, *&v12[8 * i]);
          }
        }

        v8 = v27;
      }

      goto LABEL_17;
    }

    p_combineWorkgroups = &self->_combineWorkgroups;
    combineWorkgroups = self->_combineWorkgroups;
    Mutable = CFSetCreateMutableCopy(0, 0, v3);
  }

  else
  {
    if (workgroups)
    {
      v8 = CFSetGetCount(workgroups);
      Count = 0;
      Mutable = 0;
      p_combineWorkgroups = &self->_combineWorkgroups;
      combineWorkgroups = self->_combineWorkgroups;
LABEL_17:
      SFNodeSetWorkgroups();
      CFRelease(v5);
      goto LABEL_20;
    }

    Count = 0;
    Mutable = 0;
    p_combineWorkgroups = &self->_combineWorkgroups;
    combineWorkgroups = self->_combineWorkgroups;
  }

  v15 = CFSetCreate(0, 0, 0, &kCFCopyStringSetCallBacks);
  SFNodeSetWorkgroups();
  CFRelease(v15);
  v8 = 0;
LABEL_20:
  if (v8 >= [(SDStatusMonitor *)self->_monitor workgroupThreshold])
  {
    if (v8 <= [(SDStatusMonitor *)self->_monitor workgroupThreshold])
    {
      goto LABEL_25;
    }

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  *p_combineWorkgroups = v16;
LABEL_25:
  if (!combineWorkgroups)
  {
    goto LABEL_36;
  }

  if (*p_combineWorkgroups)
  {
    v17 = Mutable;
    if (!Mutable)
    {
      goto LABEL_36;
    }
  }

  else
  {
    v17 = v3;
    if (!v3)
    {
      goto LABEL_36;
    }
  }

  v18 = CFRetain(v17);
  if (v18)
  {
    v19 = v18;
    v20 = CFSetGetCount(v18);
    if (v20)
    {
      v21 = v20;
      v26[1] = v26;
      v27 = v8;
      __chkstk_darwin(v20);
      v23 = (v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
      bzero(v23, v22);
      CFSetGetValues(v19, v23);
      if (v21 >= 1)
      {
        do
        {
          v24 = +[SDServerBrowser sharedBrowser];
          v25 = *v23++;
          [v24 stopBrowsingWorkgroup:v25];

          --v21;
        }

        while (v21);
      }

      v8 = v27;
    }

    CFRelease(v19);
  }

LABEL_36:
  if (!*p_combineWorkgroups)
  {
    goto LABEL_40;
  }

  if (v8 < 1)
  {
    if (Count < 1)
    {
      goto LABEL_41;
    }

LABEL_40:
    [(SDNodeBrowser *)self notifyClient];
    goto LABEL_41;
  }

  [(SDNodeBrowser *)self loadWindows];
LABEL_41:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v3)
  {
    CFRelease(v3);
  }
}

- (void)takeActionOnServerChanged:(id)changed neighborhood:(id)neighborhood
{
  changedCopy = changed;
  neighborhoodCopy = neighborhood;
  if ([changedCopy isEqualToString:@"com.apple.sharingd.BonjourChanged"] && (bonjourDomains = self->_bonjourDomains) != 0 || objc_msgSend(changedCopy, "isEqualToString:", @"com.apple.sharingd.WindowsChanged") && (bonjourDomains = self->_windowsWorkgroups) != 0 || objc_msgSend(changedCopy, "isEqualToString:", @"com.apple.sharingd.ODisksChanged") && (bonjourDomains = self->_odiskDomains) != 0 || objc_msgSend(changedCopy, "isEqualToString:", @"com.apple.sharingd.AirDropChanged") && (bonjourDomains = self->_airDropDomains) != 0)
  {
    if (([(NSMutableSet *)bonjourDomains containsObject:neighborhoodCopy]& 1) == 0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  if ([changedCopy isEqualToString:@"com.apple.sharingd.RapportChanged"])
  {
LABEL_10:
    [(SDNodeBrowser *)self setError:0];
    [(SDNodeBrowser *)self notifyClient];
  }

LABEL_11:
}

- (void)serversChanged:(id)changed
{
  changedCopy = changed;
  name = [changedCopy name];
  userInfo = [changedCopy userInfo];

  v6 = [userInfo objectForKeyedSubscript:@"NeighborhoodName"];
  [(SDNodeBrowser *)self takeActionOnServerChanged:name neighborhood:v6];
}

- (void)domainsChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)workgroupsChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClientAboutWorkgroups];
}

- (void)sharePointBrowser:(id)browser nodesDidChangeWithError:(int)error
{
  browserCopy = browser;
  userName = [browserCopy userName];
  [(SDNodeBrowser *)self setUserName:userName];

  connectionState = [browserCopy connectionState];
  [(SDNodeBrowser *)self setConnectionState:connectionState];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)connectedChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)managedChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)sidebarPrefsChanged:(id)changed
{
  [(SDNodeBrowser *)self setError:0];

  [(SDNodeBrowser *)self notifyClient];
}

- (void)setMode:(int64_t)mode
{
  if (self->_mode != mode && [(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    self->_mode = mode;
    v5 = +[SDServerBrowser sharedBrowser];
    [v5 setBonjourBrowserMode:mode];
  }
}

- (void)loadBonjour
{
  v3 = SFNodeCopyKinds();
  if (CFSetContainsValue(v3, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v4 = SFNodeCopyDomains();
    if ([v4 count])
    {
      v19 = v4;
      allObjects = [v4 allObjects];
      if (!self->_bonjourDomains)
      {
        v6 = objc_opt_new();
        bonjourDomains = self->_bonjourDomains;
        self->_bonjourDomains = v6;
      }

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.BonjourChanged" object:0];

      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = allObjects;
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            [(NSMutableSet *)self->_bonjourDomains addObject:v14];
            v15 = +[SDServerBrowser sharedBrowser];
            [v15 startBrowsingDomain:v14];

            if ([v14 isEqual:@"local"])
            {
              v16 = +[SDServerBrowser sharedBrowser];
              [v16 setBonjourBrowserMode:self->_mode];
            }

            v17 = +[SDServerBrowser sharedBrowser];
            v18 = [v17 bonjourNodesForDomain:v14];

            if ([v18 count])
            {
              [(SDNodeBrowser *)self notifyClient];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }

      v4 = v19;
    }
  }

  CFRelease(v3);
}

- (void)loadWindows
{
  v3 = SFNodeCopyKinds();
  if (CFSetContainsValue(v3, kSFNodeKindWorkgroup))
  {
    v4 = SFNodeCopyWorkgroups();
    if ([v4 count])
    {
      allObjects = [v4 allObjects];
      if (!self->_windowsWorkgroups)
      {
        v6 = objc_opt_new();
        windowsWorkgroups = self->_windowsWorkgroups;
        self->_windowsWorkgroups = v6;
      }

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.WindowsChanged" object:0];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = allObjects;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            [(NSMutableSet *)self->_windowsWorkgroups addObject:v14, v18];
            v15 = +[SDServerBrowser sharedBrowser];
            [v15 startBrowsingWorkgroup:v14];

            v16 = +[SDServerBrowser sharedBrowser];
            v17 = [v16 windowsNodesForWorkgroup:v14];

            if ([v17 count])
            {
              [(SDNodeBrowser *)self notifyClient];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }
    }
  }

  CFRelease(v3);
}

- (void)loadDomains
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"domainsChanged:" name:@"com.apple.sharingd.DomainsChanged" object:0];

    v4 = +[SDDomainBrowser sharedBrowser];
    domainBrowser = self->_domainBrowser;
    self->_domainBrowser = v4;

    [(SDDomainBrowser *)self->_domainBrowser start];
    v6 = [(SDDomainBrowser *)self->_domainBrowser childrenForNode:self->_parent];
    if ([v6 count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }
}

- (void)loadWorkgroups
{
  if (([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork]& 1) != 0 || [(NSString *)self->_kind isEqual:kSFBrowserKindPrinter])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"workgroupsChanged:" name:@"com.apple.sharingd.WorkgroupsChanged" object:0];

    v4 = +[SDWorkgroupBrowser sharedBrowser];
    workgroupBrowser = self->_workgroupBrowser;
    self->_workgroupBrowser = v4;

    [(SDWorkgroupBrowser *)self->_workgroupBrowser start];
    nodes = [(SDWorkgroupBrowser *)self->_workgroupBrowser nodes];
    if ([nodes count])
    {
      [(SDNodeBrowser *)self notifyClientAboutWorkgroups];
    }
  }
}

- (BOOL)onlySupportsADisk:(id)disk
{
  v3 = kSFNodeProtocolAFP;
  diskCopy = disk;
  LOBYTE(v3) = [diskCopy containsObject:v3];
  v5 = [diskCopy containsObject:kSFNodeProtocolSMB];
  v6 = [diskCopy containsObject:kSFNodeProtocolADisk];

  return v6 & ((v3 | v5) ^ 1);
}

- (void)loadConnected
{
  v3 = [(NSString *)self->_kind isEqual:kSFBrowserKindNetwork];
  v4 = kSFBrowserKindRemoteDisc;
  if ((v3 & 1) != 0 || ([(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc]& 1) != 0 || [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
  {
    v5 = +[NSNotificationCenter defaultCenter];
    [v5 addObserver:self selector:"connectedChanged:" name:@"com.apple.sharingd.ConnectedChanged" object:0];

    v6 = +[SDConnectedBrowser sharedBrowser];
    connectedBrowser = self->_connectedBrowser;
    self->_connectedBrowser = v6;

    [(SDConnectedBrowser *)self->_connectedBrowser start];
    v8 = [(NSString *)self->_kind isEqual:v4];
    v9 = self->_connectedBrowser;
    if (v8)
    {
      [(SDConnectedBrowser *)v9 odiskNodes];
    }

    else
    {
      [(SDConnectedBrowser *)v9 nodes];
    }
    v10 = ;
    if ([v10 count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }
}

- (void)loadManaged
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"managedChanged:" name:@"com.apple.sharingd.ManagedChanged" object:0];

    v4 = +[SDManagedBrowser sharedBrowser];
    managedBrowser = self->_managedBrowser;
    self->_managedBrowser = v4;

    [(SDManagedBrowser *)self->_managedBrowser start];
    nodes = [(SDManagedBrowser *)self->_managedBrowser nodes];
    if ([nodes count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }
}

- (void)loadODisk
{
  v3 = SFNodeCopyKinds();
  if (CFSetContainsValue(v3, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc])
  {
    v4 = SFNodeCopyDomains();
    if ([v4 count])
    {
      allObjects = [v4 allObjects];
      if (!self->_odiskDomains)
      {
        v6 = objc_opt_new();
        odiskDomains = self->_odiskDomains;
        self->_odiskDomains = v6;
      }

      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.ODisksChanged" object:0];

      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v9 = allObjects;
      v10 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v19;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v19 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v18 + 1) + 8 * i);
            [(NSMutableSet *)self->_odiskDomains addObject:v14, v18];
            v15 = +[SDServerBrowser sharedBrowser];
            [v15 startODiskBrowsing:v14];

            v16 = +[SDServerBrowser sharedBrowser];
            v17 = [v16 odiskNodesForDomain:v14];

            if ([v17 count])
            {
              [(SDNodeBrowser *)self notifyClient];
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v11);
      }
    }
  }

  CFRelease(v3);
}

- (void)loadClassroom
{
  v3 = +[MCProfileConnection sharedConnection];
  isClassroomEnabled = [v3 isClassroomEnabled];

  if (isClassroomEnabled)
  {
    v5 = SFNodeCopyKinds();
    if (CFSetContainsValue(v5, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
    {
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 addObserver:self selector:"classroomChanged:" name:@"com.apple.sharingd.ClassroomChanged" object:0];

      v7 = +[SDClassroomBrowser sharedBrowser];
      classroomBrowser = self->_classroomBrowser;
      self->_classroomBrowser = v7;

      connection = self->_connection;
      if (connection)
      {
        v10 = sub_10000C344(connection);
        [(SDClassroomBrowser *)self->_classroomBrowser setClientBundleID:v10];
      }

      [(SDClassroomBrowser *)self->_classroomBrowser start];
      nodes = [(SDClassroomBrowser *)self->_classroomBrowser nodes];
      if ([nodes count])
      {
        [(SDNodeBrowser *)self notifyClient];
      }
    }

    if (v5)
    {

      CFRelease(v5);
    }
  }
}

- (void)loadAirDrop
{
  v3 = +[MCProfileConnection sharedConnection];
  isAirDropAllowed = [v3 isAirDropAllowed];

  if (isAirDropAllowed)
  {
    v5 = SFNodeCopyKinds();
    if (CFSetContainsValue(v5, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
    {
      v6 = SFNodeCopyDomains();
      if ([v6 count])
      {
        v23 = v6;
        v24 = v5;
        allObjects = [v6 allObjects];
        if (!self->_airDropDomains)
        {
          v8 = objc_opt_new();
          airDropDomains = self->_airDropDomains;
          self->_airDropDomains = v8;
        }

        v10 = +[NSNotificationCenter defaultCenter];
        [v10 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.AirDropChanged" object:0];

        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        obj = allObjects;
        v11 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
        if (v11)
        {
          v12 = v11;
          v26 = *v28;
          do
          {
            for (i = 0; i != v12; i = i + 1)
            {
              if (*v28 != v26)
              {
                objc_enumerationMutation(obj);
              }

              v14 = *(*(&v27 + 1) + 8 * i);
              [(NSMutableSet *)self->_airDropDomains addObject:v14];
              if (self->_bundleID)
              {
                options = [(SDNodeBrowser *)self options];
                v16 = CFDictionaryGetInt64() != 0;

                v17 = +[SDServerBrowser sharedBrowser];
                bundleID = self->_bundleID;
                protocol = self->_protocol;
                helperConnection = [(SDNodeBrowser *)self helperConnection];
                [v17 startAirDropBrowsing:v14 bundleID:bundleID sessionID:protocol helperConnection:helperConnection delayBonjour:v16];
              }

              else
              {
                v17 = +[SDServerBrowser sharedBrowser];
                [v17 startAirDropBrowsing:v14 connection:self->_connection sessionID:self->_protocol];
              }

              v21 = +[SDServerBrowser sharedBrowser];
              v22 = [v21 airDropNodesForDomain:v14];

              if ([v22 count])
              {
                [(SDNodeBrowser *)self notifyClient];
              }
            }

            v12 = [obj countByEnumeratingWithState:&v27 objects:v31 count:16];
          }

          while (v12);
        }

        v6 = v23;
        v5 = v24;
      }
    }

    CFRelease(v5);
  }
}

- (void)loadSidebarPrefsMonitor
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 addObserver:self selector:"sidebarPrefsChanged:" name:@"com.apple.sharingd.FinderPrefsChanged" object:0];
  }
}

- (void)loadRapport
{
  v3 = SFNodeCopyKinds();
  if (CFSetContainsValue(v3, kSFNodeKindDomain) && [(NSString *)self->_kind isEqual:kSFNodeKindAirDrop])
  {
    v4 = +[NSNotificationCenter defaultCenter];
    [v4 addObserver:self selector:"serversChanged:" name:@"com.apple.sharingd.RapportChanged" object:0];

    v5 = +[SDRapportBrowser sharedRapportBrowser];
    rapportBrowser = self->_rapportBrowser;
    self->_rapportBrowser = v5;

    helperConnection = [(SDNodeBrowser *)self helperConnection];
    [(SDRapportBrowser *)self->_rapportBrowser setHelperConnection:helperConnection];

    [(SDRapportBrowser *)self->_rapportBrowser start];
    nodes = [(SDRapportBrowser *)self->_rapportBrowser nodes];
    if ([nodes count])
    {
      [(SDNodeBrowser *)self notifyClient];
    }
  }

  if (v3)
  {

    CFRelease(v3);
  }
}

- (id)workgroupChildren
{
  workgroupBrowser = self->_workgroupBrowser;
  if (workgroupBrowser)
  {
    if (!self->_combineWorkgroups)
    {
LABEL_5:
      workgroupBrowser = [workgroupBrowser nodes];
      goto LABEL_7;
    }

    if ([(NSString *)self->_kind isEqual:kSFBrowserKindPrinter])
    {
      workgroupBrowser = self->_workgroupBrowser;
      goto LABEL_5;
    }

    workgroupBrowser = 0;
  }

LABEL_7:

  return workgroupBrowser;
}

- (void)copyOverBonjourInfo:(__SFNode *)info source:(__SFNode *)source
{
  v4 = SFNodeCopyModel();
  SFNodeSetModel();
  v5 = SFNodeCopyColor();
  SFNodeSetColor();
  v6 = SFNodeCopySiblingNodes();
  SFNodeSetSiblingNodes();
  v7 = SFNodeCopyDomain();
  SFNodeSetDomain();
  v8 = SFNodeCopyAppleID();
  SFNodeSetAppleID();
  v9 = SFNodeCopyIconData();
  SFNodeSetIconData();
  v10 = SFNodeCopyIconHash();
  SFNodeSetIconHash();
  v11 = SFNodeCopyLastName();
  SFNodeSetLastName();
  v12 = SFNodeCopyFirstName();
  SFNodeSetFirstName();
  v13 = SFNodeCopyContactIdentifier();
  SFNodeSetContactIdentifier();
  v14 = SFNodeCopyContactIdentifiers();
  SFNodeSetContactIdentifiers();
  v15 = SFNodeCopyComputerName();
  SFNodeSetComputerName();
  v16 = SFNodeCopySecondaryName();
  SFNodeSetSecondaryName();
  v17 = SFNodeCopyTransportBundleID();
  SFNodeSetTransportBundleID();
  v18 = SFNodeCopyBonjourProtocols();
  SFNodeSetBonjourProtocols();
  v19 = SFNodeCopyRapportFlags();
  SFNodeSetRapportFlags();
  SFNodeGetSupportedMedia();

  SFNodeSetSupportedMedia();
}

- (void)addBonjourChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  v37 = kSFBrowserKindRemoteDisc;
  if (([(NSString *)self->_kind isEqual:?]& 1) != 0)
  {
    v5 = 112;
  }

  else
  {
    v6 = [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop];
    v5 = 128;
    if (v6)
    {
      v5 = 120;
    }
  }

  v7 = *(&self->super.isa + v5);
  if ([v7 count])
  {
    v8 = SFNodeCopyKinds();
    v9 = v8;
    if (!self->_commentHashTable && CFSetContainsValue(v8, kSFNodeKindWorkgroup))
    {
      v10 = objc_opt_new();
      commentHashTable = self->_commentHashTable;
      self->_commentHashTable = v10;
    }

    cf = v9;
    v32 = v7;
    [v7 allObjects];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = v47 = 0u;
    v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v38)
    {
      v35 = *v45;
      v33 = kSFBrowserKindAirDrop;
      selfCopy = self;
      do
      {
        v12 = 0;
        do
        {
          if (*v45 != v35)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v44 + 1) + 8 * v12);
          v39 = v12;
          if ([(NSString *)self->_kind isEqual:v37])
          {
            v14 = +[SDServerBrowser sharedBrowser];
            v15 = [v14 odiskNodesForDomain:v13];
          }

          else
          {
            v16 = [(NSString *)self->_kind isEqual:v33];
            v17 = +[SDServerBrowser sharedBrowser];
            v14 = v17;
            if (v16)
            {
              [v17 airDropNodesForDomain:v13];
            }

            else
            {
              [v17 bonjourNodesForDomain:v13];
            }
            v15 = ;
          }

          v18 = v15;

          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v19 = v18;
          v20 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v41;
            do
            {
              for (i = 0; i != v21; ++i)
              {
                if (*v41 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = SFNodeCopyRealName();
                lowercaseString = [v24 lowercaseString];
                v26 = [cacheCopy objectForKeyedSubscript:lowercaseString];

                if (!v26)
                {
                  Copy = SFNodeCreateCopy();
                  [cacheCopy setObject:Copy forKeyedSubscript:lowercaseString];
                  CFRelease(Copy);
                }

                v28 = SFNodeCopyKinds();
                v29 = SFNodeCopyKinds();
                v30 = SFNodeCopyDomain();
                CFRelease(v28);
                CFRelease(v30);
                CFRelease(v29);
              }

              v21 = [v19 countByEnumeratingWithState:&v40 objects:v48 count:16];
            }

            while (v21);
          }

          v12 = v39 + 1;
          self = selfCopy;
        }

        while ((v39 + 1) != v38);
        v38 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v38);
    }

    CFRelease(cf);

    v7 = v32;
  }

  if (self->_commentHashTable && ![cacheCopy count])
  {
    [(NSMutableDictionary *)self->_commentHashTable removeAllObjects];
  }
}

- (void)addWindowsChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  v5 = cacheCopy;
  if (self->_windowsWorkgroups && (!self->_workgroupBrowser || self->_combineWorkgroups))
  {
    v37 = cacheCopy;
    v6 = objc_opt_new();
    selfCopy = self;
    allObjects = [(NSMutableSet *)self->_windowsWorkgroups allObjects];
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v8 = [allObjects countByEnumeratingWithState:&v44 objects:v49 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v45;
      do
      {
        v11 = 0;
        do
        {
          if (*v45 != v10)
          {
            objc_enumerationMutation(allObjects);
          }

          v12 = *(*(&v44 + 1) + 8 * v11);
          v13 = +[SDServerBrowser sharedBrowser];
          v14 = [v13 windowsNodesForWorkgroup:v12];

          if (v14)
          {
            [v6 addObjectsFromArray:v14];
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v9 = [allObjects countByEnumeratingWithState:&v44 objects:v49 count:16];
      }

      while (v9);
    }

    v33 = allObjects;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v15 = v6;
    v16 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
    v5 = v37;
    if (v16)
    {
      v17 = v16;
      v18 = *v41;
      v19 = kSFNodeKindBonjour;
      value = kSFNodeProtocolSMB;
      v35 = v15;
      v36 = *v41;
      do
      {
        v20 = 0;
        v38 = v17;
        do
        {
          if (*v41 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v21 = SFNodeCopyKinds();
          if (!CFSetContainsValue(v21, v19))
          {
            v22 = SFNodeCopyNetbiosName();
            v23 = SFNodeCopyWorkgroup();
            v24 = SFNodeCopySecondaryName();
            v25 = v24;
            if (selfCopy->_commentHashTable && v24 && CFStringGetLength(v24) && (v26 = CFDictionaryGetValue(selfCopy->_commentHashTable, v25)) != 0 && ([v5 objectForKeyedSubscript:v26], v27 = objc_claimAutoreleasedReturnValue(), v27, v27) || (objc_msgSend(v5, "objectForKeyedSubscript:", v22), v28 = objc_claimAutoreleasedReturnValue(), v28, v28))
            {
              v29 = SFNodeCopyKinds();
              v30 = SFNodeCopyProtocols();
              if (CFSetContainsValue(v29, v19) && (v50.length = CFArrayGetCount(v30), v50.location = 0, CFArrayContainsValue(v30, v50, value)))
              {
                SFNodeAddKind();
              }

              else
              {
                SFNodeSetMountPoint();
                SFNodeSetSecondaryName();
                SFNodeSetNetbiosName();
                SFNodeSetWorkgroup();
                SFNodeAddKind();
                SFNodeRemoveKind();
                SFNodeRemoveKind();
                SFNodeRemoveKind();
              }

              v18 = v36;
              CFRelease(v30);
              v15 = v35;
            }

            else
            {
              Copy = SFNodeCreateCopy();
              v32 = v5;
              v29 = Copy;
              [v32 setObject:Copy forKeyedSubscript:v22];
              v18 = v36;
            }

            CFRelease(v29);
            if (v25)
            {
              CFRelease(v25);
            }

            CFRelease(v23);
            CFRelease(v22);
            v5 = v37;
            v17 = v38;
          }

          CFRelease(v21);
          ++v20;
        }

        while (v17 != v20);
        v17 = [v15 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v17);
    }
  }
}

- (void)addClassroomChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  classroomBrowser = self->_classroomBrowser;
  if (classroomBrowser)
  {
    nodes = [(SDClassroomBrowser *)classroomBrowser nodes];
    v7 = nodes;
    if (nodes)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v8 = [nodes countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        do
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v12 = *(*(&v15 + 1) + 8 * v11);
            v13 = SFNodeCopyRealName();
            lowercaseString = [v13 lowercaseString];
            [cacheCopy setObject:v12 forKeyedSubscript:lowercaseString];

            v11 = v11 + 1;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
        }

        while (v9);
      }
    }
  }
}

- (void)addManagedChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  managedBrowser = self->_managedBrowser;
  if (managedBrowser)
  {
    nodes = [(SDManagedBrowser *)managedBrowser nodes];
    if (nodes)
    {
      managedURLTable = self->_managedURLTable;
      if (managedURLTable)
      {
        [(NSMutableDictionary *)managedURLTable removeAllObjects];
      }

      else
      {
        v8 = objc_opt_new();
        v9 = self->_managedURLTable;
        self->_managedURLTable = v8;
      }

      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v22 = nodes;
      v10 = nodes;
      v11 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v24;
        do
        {
          v14 = 0;
          do
          {
            if (*v24 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = SFNodeCopyRealName();
            lowercaseString = [v15 lowercaseString];
            if (lowercaseString)
            {
              v17 = [cacheCopy objectForKeyedSubscript:lowercaseString];

              if (v17)
              {
                v18 = SFNodeCopyURL();
                SFNodeAddKind();
                SFNodeSetURL();
                [cacheCopy setObject:v17 forKeyedSubscript:lowercaseString];
                if (v18)
                {
                  v19 = v18;
                  goto LABEL_16;
                }
              }

              else
              {
                Copy = SFNodeCreateCopy();
                [cacheCopy setObject:Copy forKeyedSubscript:lowercaseString];
                v19 = Copy;
LABEL_16:
                CFRelease(v19);
              }

              v21 = SFNodeCopyURL();
              [(NSMutableDictionary *)self->_managedURLTable setObject:lowercaseString forKeyedSubscript:v21];
            }

            ++v14;
          }

          while (v12 != v14);
          v12 = [v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
        }

        while (v12);
      }

      nodes = v22;
    }
  }
}

- (void)addConnectedChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  if (self->_connectedBrowser)
  {
    if ([(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc])
    {
      odiskNodes = [(SDConnectedBrowser *)self->_connectedBrowser odiskNodes];
      if (!odiskNodes)
      {
LABEL_46:

        goto LABEL_47;
      }
    }

    else
    {
      v6 = [(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop];
      connectedBrowser = self->_connectedBrowser;
      if (v6)
      {
        odiskNodes = [(SDConnectedBrowser *)connectedBrowser airDropNodes];
        if (!odiskNodes)
        {
          goto LABEL_46;
        }
      }

      else
      {
        odiskNodes = [(SDConnectedBrowser *)connectedBrowser nodes];
        if (!odiskNodes)
        {
          goto LABEL_46;
        }
      }
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v24 = odiskNodes;
    obj = odiskNodes;
    v33 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
    if (!v33)
    {
      goto LABEL_45;
    }

    v32 = *v37;
    value = kSFNodeKindRecent;
    v34 = kSFNodeKindConnected;
    v25 = kSFNodeKindBonjour;
    v26 = cacheCopy;
    selfCopy = self;
LABEL_11:
    v8 = 0;
    while (1)
    {
      if (*v37 != v32)
      {
        objc_enumerationMutation(obj);
      }

      v9 = SFNodeCopyURL();
      v10 = SFNodeCopyKinds();
      v11 = CFSetContainsValue(v10, value);
      v12 = CFSetContainsValue(v10, v34);
      v13 = SFNodeCopyRealName();
      managedURLTable = self->_managedURLTable;
      if (managedURLTable)
      {
        v15 = [(NSMutableDictionary *)managedURLTable objectForKeyedSubscript:v9];
        if (v15)
        {
          break;
        }
      }

      lowercaseString = [v13 lowercaseString];
      if (lowercaseString)
      {
        goto LABEL_18;
      }

LABEL_41:
      CFRelease(v9);
      CFRelease(v10);

      if (v33 == ++v8)
      {
        v23 = [obj countByEnumeratingWithState:&v36 objects:v40 count:16];
        v33 = v23;
        if (!v23)
        {
LABEL_45:

          odiskNodes = v24;
          goto LABEL_46;
        }

        goto LABEL_11;
      }
    }

    lowercaseString = v15;
LABEL_18:
    v17 = [cacheCopy objectForKeyedSubscript:lowercaseString];

    if (v11)
    {
      v18 = sub_1001F2E78(v9);
      if (v17)
      {
        if (v18)
        {
          v19 = CFURLCopyScheme(v9);
          theSet = SFNodeCopyKinds();
          v20 = SFNodeCopyProtocols();
          v21 = v20;
          if (v19)
          {
            range = CFArrayGetCount(v20);
            if (!CFSetContainsValue(theSet, v25))
            {
              CFRelease(v19);
              CFRelease(v21);
              CFRelease(theSet);
              cacheCopy = v26;
LABEL_40:
              self = selfCopy;
              goto LABEL_41;
            }

            v41.location = 0;
            v41.length = range;
            rangea = CFArrayContainsValue(v21, v41, v19);
            CFRelease(v19);
            CFRelease(v21);
            CFRelease(theSet);
            cacheCopy = v26;
            if (!rangea)
            {
              goto LABEL_40;
            }
          }

          else
          {
            CFRelease(v20);
            CFRelease(theSet);
            cacheCopy = v26;
          }
        }

LABEL_33:
        SFNodeSetURL();
        SFNodeSetRealName();
        if (v11)
        {
          SFNodeAddKind();
        }

        else
        {
          SFNodeRemoveKind();
        }

        if (v12)
        {
          SFNodeAddKind();
        }

        else
        {
          SFNodeRemoveKind();
        }

        [cacheCopy setObject:v17 forKeyedSubscript:lowercaseString];
        goto LABEL_40;
      }
    }

    else
    {
      if (v17)
      {
        if (!v12)
        {
          goto LABEL_40;
        }

        goto LABEL_33;
      }

      LOBYTE(v18) = 1;
    }

    if (v12 || (v18 & 1) == 0)
    {
      Copy = SFNodeCreateCopy();
      [cacheCopy setObject:Copy forKeyedSubscript:lowercaseString];
      CFRelease(Copy);
    }

    goto LABEL_40;
  }

LABEL_47:
}

- (void)addRapportChildrenFromCache:(id)cache
{
  cacheCopy = cache;
  nodes = [(SDRapportBrowser *)self->_rapportBrowser nodes];
  v6 = nodes;
  if (nodes)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v7 = [nodes countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        v10 = 0;
        do
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * v10);
          v12 = SFNodeCopyRealName();
          lowercaseString = [v12 lowercaseString];
          [cacheCopy setObject:v11 forKeyedSubscript:lowercaseString];

          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }
  }
}

- (void)addFakeRangingMeasurementIfAppropriateToNodesInCache:(id)cache
{
  if (self->_showAllKnownPeopleInMagicHead)
  {
    v5[5] = v3;
    v5[6] = v4;
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001D9D20;
    v5[3] = &unk_1008D3658;
    v5[4] = self;
    [cache enumerateKeysAndObjectsUsingBlock:v5];
  }
}

- (void)updateSelectionReasonInNodes:(id)nodes
{
  nodesCopy = nodes;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [nodesCopy countByEnumeratingWithState:&v31 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v32;
    v8 = 200.0;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v32 != v7)
        {
          objc_enumerationMutation(nodesCopy);
        }

        v10 = SFNodeCopyRealName();
        v11 = sub_1001EAE00();
        v12 = magic_head_log(v11);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412546;
          v37 = v11;
          v38 = 2112;
          v39 = v10;
          _os_log_debug_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEBUG, "Evaluating %@ for %@", buf, 0x16u);
        }

        if (([v11 flags] & 2) != 0)
        {
          [v11 horizontalAngle];
          v14 = v13;
          [v11 horizontalAngle];
          v16 = v14 >= 0.0 ? v15 : -v15;
          if (v16 < v8)
          {
            v17 = v10;

            v8 = v16;
            v6 = v17;
          }
        }
      }

      v5 = [nodesCopy countByEnumeratingWithState:&v31 objects:v40 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v18 = nodesCopy;
  v19 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
  if (v19)
  {
    v20 = v19;
    v21 = *v28;
    do
    {
      for (j = 0; j != v20; ++j)
      {
        if (*v28 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v23 = SFNodeCopyRealName();
        v24 = v6;
        v25 = v23;
        v26 = v25;
        if (v24 == v25)
        {
        }

        else
        {
          if ((v6 != 0) != (v25 == 0))
          {
            [v24 isEqual:v25];
          }

          else
          {
          }
        }

        SFNodeSetSelectionReason();
      }

      v20 = [v18 countByEnumeratingWithState:&v27 objects:v35 count:16];
    }

    while (v20);
  }
}

- (id)sidebarNodesFromServerNodes:(id)nodes nonServerCount:(unint64_t)count addAllNode:(BOOL *)node
{
  nodesCopy = nodes;
  v9 = objc_opt_new();
  connectedEnabled = [(SDStatusMonitor *)self->_monitor connectedEnabled];
  bonjourEnabled = [(SDStatusMonitor *)self->_monitor bonjourEnabled];
  v11 = [nodesCopy count];
  if (v11)
  {
    selfCopy = self;
    v34 = v9;
    countCopy = count;
    nodeCopy = node;
    v12 = objc_opt_new();
    v39 = objc_opt_new();
    v33 = objc_opt_new();
    v13 = objc_opt_new();
    v36 = nodesCopy;
    v14 = [nodesCopy mutableCopy];
    [v14 sortUsingComparator:&stru_1008D3698];
    v15 = 0;
    v16 = kSFNodeKindConnected;
    v17 = kSFNodeKindManaged;
    value = kSFNodeKindRecent;
    do
    {
      v18 = [v14 objectAtIndexedSubscript:v15];

      v19 = SFNodeCopyKinds();
      v20 = v19;
      if (connectedEnabled && (v21 = CFSetContainsValue(v19, v16), v22 = v13, v21) || (v23 = CFSetContainsValue(v20, v17), v22 = v12, v23) || bonjourEnabled && (v24 = CFSetContainsValue(v20, value), v22 = v39, v24))
      {
        [v22 addObject:v18];
      }

      CFRelease(v20);
      ++v15;
    }

    while (v11 != v15);
    v25 = [v12 count];
    v26 = [v13 count];
    v27 = [v39 count];
    sidebarMaxCount = [(SDStatusMonitor *)selfCopy->_monitor sidebarMaxCount];
    if (v27 >= sidebarMaxCount - (v25 + v26))
    {
      v29 = sidebarMaxCount - (v25 + v26);
    }

    else
    {
      v29 = v27;
    }

    if (v29)
    {
      v30 = [v39 subarrayWithRange:0];
      [v33 addObjectsFromArray:v30];
    }

    [v33 sortUsingComparator:&stru_1008D36B8];
    v9 = v34;
    [v34 addObjectsFromArray:v13];
    [v34 addObjectsFromArray:v12];
    [v34 addObjectsFromArray:v33];

    nodesCopy = v36;
    node = nodeCopy;
    count = countCopy;
  }

  *node = ((v11 | count) != 0) & (connectedEnabled | bonjourEnabled);

  return v9;
}

- (id)neighborhoodNodes
{
  v3 = objc_opt_new();
  domainChildren = [(SDNodeBrowser *)self domainChildren];
  [v3 addObjectsFromArray:domainChildren];

  workgroupChildren = [(SDNodeBrowser *)self workgroupChildren];
  [v3 addObjectsFromArray:workgroupChildren];

  return v3;
}

- (id)sharePointNodes
{
  v3 = [(NSString *)self->_kind isEqual:kSFBrowserKindPrinter];
  sharePointBrowser = self->_sharePointBrowser;
  if (v3)
  {
    [(SDSharePointBrowser *)sharePointBrowser printerNodes];
  }

  else
  {
    [(SDSharePointBrowser *)sharePointBrowser fileNodes];
  }
  v5 = ;

  return v5;
}

- (id)odiskNodes
{
  v3 = objc_opt_new();
  [(SDNodeBrowser *)self addBonjourChildrenFromCache:v3];
  [(SDNodeBrowser *)self addConnectedChildrenFromCache:v3];
  allValues = [v3 allValues];

  return allValues;
}

- (id)airDropNodes
{
  v3 = objc_opt_new();
  [(SDNodeBrowser *)self addBonjourChildrenFromCache:v3];
  [(SDNodeBrowser *)self addConnectedChildrenFromCache:v3];
  [(SDNodeBrowser *)self addClassroomChildrenFromCache:v3];
  [(SDNodeBrowser *)self addRapportChildrenFromCache:v3];
  [(SDNodeBrowser *)self addFakeRangingMeasurementIfAppropriateToNodesInCache:v3];
  nodeCoalescer = self->_nodeCoalescer;
  allValues = [v3 allValues];
  v6 = [(SDNodeCoalescer *)nodeCoalescer coalescedNodesForNewAvailableNodes:allValues];

  [(SDAirDropDiscoveryLogger *)self->_airDropDiscoveryLogger updateWithAirDropNodes:v6];
  [(SDNodeBrowser *)self updateSelectionReasonInNodes:v6];

  return v6;
}

- (void)unloadBonjour
{
  bonjourDomains = self->_bonjourDomains;
  if (bonjourDomains)
  {
    allObjects = [(NSMutableSet *)bonjourDomains allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopBrowsingDomain:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.BonjourChanged" object:0];

    v12 = self->_bonjourDomains;
    self->_bonjourDomains = 0;
  }
}

- (void)unloadWindows
{
  windowsWorkgroups = self->_windowsWorkgroups;
  if (windowsWorkgroups)
  {
    allObjects = [(NSMutableSet *)windowsWorkgroups allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopBrowsingWorkgroup:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.WindowsChanged" object:0];

    v12 = self->_windowsWorkgroups;
    self->_windowsWorkgroups = 0;
  }
}

- (void)unloadDomains
{
  if (self->_domainBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.DomainsChanged" object:0];

    [(SDDomainBrowser *)self->_domainBrowser stop];
    domainBrowser = self->_domainBrowser;
    self->_domainBrowser = 0;
  }
}

- (void)unloadWorkgroups
{
  if (self->_workgroupBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.WorkgroupsChanged" object:0];

    [(SDWorkgroupBrowser *)self->_workgroupBrowser stop];
    workgroupBrowser = self->_workgroupBrowser;
    self->_workgroupBrowser = 0;
  }
}

- (void)unloadSharePoints
{
  sharePointBrowser = self->_sharePointBrowser;
  if (sharePointBrowser)
  {
    [(SDSharePointBrowser *)sharePointBrowser setDelegate:0];
    [(SDSharePointBrowser *)self->_sharePointBrowser stop];
    v4 = self->_sharePointBrowser;
    self->_sharePointBrowser = 0;
  }
}

- (void)unloadConnected
{
  if (self->_connectedBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ConnectedChanged" object:0];

    [(SDConnectedBrowser *)self->_connectedBrowser stop];
    connectedBrowser = self->_connectedBrowser;
    self->_connectedBrowser = 0;
  }
}

- (void)unloadManaged
{
  if (self->_managedBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ManagedChanged" object:0];

    [(SDManagedBrowser *)self->_managedBrowser stop];
    managedBrowser = self->_managedBrowser;
    self->_managedBrowser = 0;
  }
}

- (void)unloadClassroom
{
  if (self->_classroomBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.ClassroomChanged" object:0];

    [(SDClassroomBrowser *)self->_classroomBrowser stop];
    classroomBrowser = self->_classroomBrowser;
    self->_classroomBrowser = 0;
  }
}

- (void)unloadODisk
{
  odiskDomains = self->_odiskDomains;
  if (odiskDomains)
  {
    allObjects = [(NSMutableSet *)odiskDomains allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopODiskBrowsing:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.ODisksChanged" object:0];

    v12 = self->_odiskDomains;
    self->_odiskDomains = 0;
  }
}

- (void)unloadAirDrop
{
  airDropDomains = self->_airDropDomains;
  if (airDropDomains)
  {
    allObjects = [(NSMutableSet *)airDropDomains allObjects];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v5 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v14;
      do
      {
        v8 = 0;
        do
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(allObjects);
          }

          v9 = *(*(&v13 + 1) + 8 * v8);
          v10 = +[SDServerBrowser sharedBrowser];
          [v10 stopAirDropBrowsing:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v6 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v6);
    }

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self name:@"com.apple.sharingd.AirDropChanged" object:0];

    v12 = self->_airDropDomains;
    self->_airDropDomains = 0;
  }
}

- (void)unloadSidebarPrefsMonitor
{
  if ([(NSString *)self->_kind isEqual:kSFBrowserKindNetwork])
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.FinderPrefsChanged" object:0];
  }
}

- (void)unloadRapport
{
  if (self->_rapportBrowser)
  {
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 removeObserver:self name:@"com.apple.sharingd.RapportChanged" object:0];

    [(SDRapportBrowser *)self->_rapportBrowser stop];
    rapportBrowser = self->_rapportBrowser;
    self->_rapportBrowser = 0;
  }
}

- (void)start
{
  if (!self->_coalescer)
  {
    objc_initWeak(&location, self);
    v3 = objc_opt_new();
    coalescer = self->_coalescer;
    self->_coalescer = v3;

    [(CUCoalescer *)self->_coalescer setDispatchQueue:self->_queue];
    [(CUCoalescer *)self->_coalescer setMaxDelay:0.05];
    [(CUCoalescer *)self->_coalescer setMinDelay:0.02];
    v9 = _NSConcreteStackBlock;
    v10 = 3221225472;
    v11 = sub_1001DB370;
    v12 = &unk_1008CDD98;
    objc_copyWeak(&v13, &location);
    [(CUCoalescer *)self->_coalescer setActionHandler:&v9];
    if (SFNodeIsNeighborhood())
    {
      [(SDNodeBrowser *)self loadBonjour:v9];
      [(SDNodeBrowser *)self loadWindows];
      [(SDNodeBrowser *)self loadDomains];
    }

    else if (SFNodeIsServer())
    {
      [(SDNodeBrowser *)self loadSharePoints:v9];
    }

    if (SFNodeIsRoot())
    {
      [(SDNodeBrowser *)self loadWorkgroups];
      [(SDNodeBrowser *)self loadConnected];
      [(SDNodeBrowser *)self loadManaged];
      [(SDNodeBrowser *)self loadClassroom];
      [(SDNodeBrowser *)self loadODisk];
      [(SDNodeBrowser *)self loadRapport];
      [(SDNodeBrowser *)self loadAirDrop];
      [(SDNodeBrowser *)self loadSidebarPrefsMonitor];
    }

    [(CUCoalescer *)self->_coalescer trigger:v9];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  if (!self->_airDropDiscoveryLogger)
  {
    v5 = objc_alloc_init(SDAirDropDiscoveryLogger);
    airDropDiscoveryLogger = self->_airDropDiscoveryLogger;
    self->_airDropDiscoveryLogger = v5;

    v7 = [(NSDictionary *)self->_options objectForKeyedSubscript:kSFBrowserOptionsShouldDisableDiscoveryMetricsKey];
    bOOLValueSafe = [v7 BOOLValueSafe];

    if (bOOLValueSafe)
    {
      self->_shouldCollectNodeCoalescerMetrics = 0;
    }

    self->_startTime = CFAbsoluteTimeGetCurrent();
  }
}

- (void)stop
{
  if (self->_coalescer)
  {
    [(SDNodeBrowser *)self unloadBonjour];
    [(SDNodeBrowser *)self unloadWindows];
    [(SDNodeBrowser *)self unloadDomains];
    [(SDNodeBrowser *)self unloadSharePoints];
    [(SDNodeBrowser *)self unloadWorkgroups];
    [(SDNodeBrowser *)self unloadConnected];
    [(SDNodeBrowser *)self unloadManaged];
    [(SDNodeBrowser *)self unloadClassroom];
    [(SDNodeBrowser *)self unloadODisk];
    [(SDNodeBrowser *)self unloadAirDrop];
    [(SDNodeBrowser *)self unloadRapport];
    if (SFNodeIsRoot())
    {
      [(SDNodeBrowser *)self unloadSidebarPrefsMonitor];
    }

    SFNodeSetConnectionState();
    [(CUCoalescer *)self->_coalescer invalidate];
    coalescer = self->_coalescer;
    self->_coalescer = 0;
  }

  airDropDiscoveryLogger = self->_airDropDiscoveryLogger;
  if (airDropDiscoveryLogger)
  {
    if (self->_shouldCollectNodeCoalescerMetrics)
    {
      [(SDAirDropDiscoveryLogger *)airDropDiscoveryLogger logMetricsWithSessionTime:CFAbsoluteTimeGetCurrent() - self->_startTime];
      airDropDiscoveryLogger = self->_airDropDiscoveryLogger;
    }

    self->_airDropDiscoveryLogger = 0;

    self->_startTime = 0.0;
  }
}

- (void)appendAllNode:(id)node
{
  nodeCopy = node;
  if (!qword_10098A178)
  {
    v3 = sub_1001171C4(@"All...");
    qword_10098A178 = SFNodeCreate();
    SFNodeAddKind();
    if (v3)
    {
      CFRelease(v3);
    }
  }

  [nodeCopy addObject:qword_10098A178];
}

- (id)nodesInternal:(BOOL)internal
{
  internalCopy = internal;
  v15 = 0;
  neighborhoodNodes = [(SDNodeBrowser *)self neighborhoodNodes];
  v6 = [neighborhoodNodes count];
  v7 = objc_opt_new();
  if (SFNodeIsRoot())
  {
    v8 = internalCopy;
  }

  else
  {
    v8 = 0;
  }

  if ([(NSString *)self->_kind isEqual:kSFBrowserKindRemoteDisc])
  {
    odiskNodes = [(SDNodeBrowser *)self odiskNodes];
LABEL_8:
    v10 = odiskNodes;
    [v7 addObjectsFromArray:odiskNodes];
    goto LABEL_12;
  }

  if ([(NSString *)self->_kind isEqual:kSFBrowserKindAirDrop])
  {
    odiskNodes = [(SDNodeBrowser *)self airDropNodes];
    goto LABEL_8;
  }

  v10 = objc_opt_new();
  [(SDNodeBrowser *)self addBonjourChildrenFromCache:v10];
  [(SDNodeBrowser *)self addWindowsChildrenFromCache:v10];
  [(SDNodeBrowser *)self addManagedChildrenFromCache:v10];
  [(SDNodeBrowser *)self addConnectedChildrenFromCache:v10];
  allValues = [v10 allValues];
  if (v8)
  {
    v12 = [(SDNodeBrowser *)self sidebarNodesFromServerNodes:allValues nonServerCount:v6 addAllNode:&v15];

    allValues = v12;
  }

  [v7 addObjectsFromArray:allValues];

LABEL_12:
  if (self->_sharePointBrowser)
  {
    sharePointNodes = [(SDNodeBrowser *)self sharePointNodes];
    [v7 addObjectsFromArray:sharePointNodes];
  }

  if (v8)
  {
    if (v15 == 1 && [(SDStatusMonitor *)self->_monitor allEnabled])
    {
      [(SDNodeBrowser *)self appendAllNode:v7];
    }
  }

  else if (v6)
  {
    [v7 addObjectsFromArray:neighborhoodNodes];
  }

  return v7;
}

- (int)addNode:(__SFNode *)node
{
  connectedBrowser = self->_connectedBrowser;
  if (connectedBrowser)
  {
    return [(SDConnectedBrowser *)connectedBrowser addNode:node];
  }

  else
  {
    return -1;
  }
}

- (int)removeNode:(__SFNode *)node
{
  v5 = SFNodeCopyKinds();
  if (!v5)
  {
    return -1;
  }

  v6 = v5;
  if (CFSetContainsValue(v5, kSFNodeKindPerson) || (connectedBrowser = self->_connectedBrowser) == 0)
  {
    v7 = -1;
  }

  else
  {
    v7 = [(SDConnectedBrowser *)connectedBrowser removeNode:node];
  }

  CFRelease(v6);
  return v7;
}

- (SDXPCHelperConnection)helperConnection
{
  WeakRetained = objc_loadWeakRetained(&self->_helperConnection);

  return WeakRetained;
}

- (SDNodeBrowserDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end