@interface SDPeopleBrowser
- (SDPeopleBrowser)init;
- (SDPeopleBrowserDiffableDelegate)diffableDelegate;
- (void)dealloc;
- (void)networkBrowser:(id)browser nodesChangedForParent:(__SFNode *)parent protocol:(id)protocol error:(int)error;
- (void)start;
- (void)stop;
@end

@implementation SDPeopleBrowser

- (SDPeopleBrowser)init
{
  v6.receiver = self;
  v6.super_class = SDPeopleBrowser;
  v2 = [(SDPeopleBrowser *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    nodes = v2->_nodes;
    v2->_nodes = v3;
  }

  return v2;
}

- (void)dealloc
{
  [(SDPeopleBrowser *)self stop];
  v3.receiver = self;
  v3.super_class = SDPeopleBrowser;
  [(SDPeopleBrowser *)&v3 dealloc];
}

- (void)start
{
  if (self->_networkBrowser)
  {
    v2 = daemon_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_1000AA734(v2);
    }
  }

  else
  {
    v4 = kSFBrowserKindAirDrop;
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1000A9D5C;
    v24[3] = &unk_1008CF110;
    v24[4] = sub_1001171C4(kSFBrowserKindAirDrop);
    v2 = objc_retainBlock(v24);
    v5 = SFNodeCreate();
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_1000A9D6C;
    v23[3] = &unk_1008CF110;
    v23[4] = v5;
    v6 = objc_retainBlock(v23);
    SFNodeAddKind();
    SFNodeAddKind();
    SFNodeAddDomain();
    if (v5)
    {
      SFNodeAddKind();
    }

    v7 = [[SDNetworkBrowser alloc] initWithKind:v4 rootNode:v5];
    networkBrowser = self->_networkBrowser;
    self->_networkBrowser = v7;

    helperConnection = [(SDPeopleBrowser *)self helperConnection];
    [(SDNetworkBrowser *)self->_networkBrowser setHelperConnection:helperConnection];

    bundleID = [(SDPeopleBrowser *)self bundleID];
    [(SDNetworkBrowser *)self->_networkBrowser setBundleID:bundleID];

    [(SDNetworkBrowser *)self->_networkBrowser setDelegate:self];
    options = [(SDPeopleBrowser *)self options];
    [(SDNetworkBrowser *)self->_networkBrowser setOptions:options];

    v12 = self->_networkBrowser;
    sessionID = [(SDPeopleBrowser *)self sessionID];
    [(SDNetworkBrowser *)v12 openNode:v5 forProtocol:sessionID flags:0];

    sessionID2 = [(SDPeopleBrowser *)self sessionID];
    v15 = [NSString stringWithFormat:@"SDPeopleBrowser for session %@", sessionID2];

    helperConnection2 = [(SDPeopleBrowser *)self helperConnection];

    if (helperConnection2)
    {
      v17 = daemon_log();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        sub_1000AA778(v17);
      }

      helperConnection3 = [(SDPeopleBrowser *)self helperConnection];
      [helperConnection3 invalidate];
    }

    v19 = [[SDXPCHelperConnection alloc] initWithQueue:0];
    [(SDPeopleBrowser *)self setHelperConnection:v19];

    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_1000A9D7C;
    v22[3] = &unk_1008CDEA0;
    v22[4] = v15;
    helperConnection4 = [(SDPeopleBrowser *)self helperConnection];
    [helperConnection4 setInvalidationHandler:v22];

    helperConnection5 = [(SDPeopleBrowser *)self helperConnection];
    [helperConnection5 activate];

    (v6[2])(v6);
    (*(v2 + 16))(v2);
  }
}

- (void)stop
{
  [(SDNetworkBrowser *)self->_networkBrowser invalidate];
  networkBrowser = self->_networkBrowser;
  self->_networkBrowser = 0;

  helperConnection = [(SDPeopleBrowser *)self helperConnection];
  [helperConnection invalidate];

  [(SDPeopleBrowser *)self setHelperConnection:0];
}

- (void)networkBrowser:(id)browser nodesChangedForParent:(__SFNode *)parent protocol:(id)protocol error:(int)error
{
  browserCopy = browser;
  v9 = magic_head_log(browserCopy);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    sub_1000AA838(v9);
  }

  v10 = objc_opt_new();
  v11 = [browserCopy childrenForNode:parent];
  people = self->_people;
  v49 = browserCopy;
  if (people)
  {
    v13 = people;
  }

  else
  {
    v13 = objc_opt_new();
  }

  v50 = v13;
  v65 = 0u;
  v66 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = v11;
  v14 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v64;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v64 != v16)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(*(&v63 + 1) + 8 * i);
        v19 = SFNodeCopyRealName();
        lowercaseString = [v19 lowercaseString];

        v21 = [(NSMutableDictionary *)self->_nodes objectForKeyedSubscript:lowercaseString];
        if (v21)
        {
          v22 = v21;
          [v21 updateWithSFNode:v18];
        }

        else
        {
          v22 = [SFAirDropNode nodeWithSFNode:v18];
          transportBundleID = [v22 transportBundleID];

          if (!transportBundleID)
          {
            [v22 setTransportBundleID:UIActivityTypeAirDrop];
          }

          [(NSMutableDictionary *)self->_nodes setObject:v22 forKeyedSubscript:lowercaseString];
        }

        [v10 addObject:v22];
      }

      v15 = [obj countByEnumeratingWithState:&v63 objects:v73 count:16];
    }

    while (v15);
  }

  v53 = +[NSMutableArray array];
  v48 = +[NSMutableArray array];
  v52 = +[NSMutableArray array];
  v51 = +[NSMutableArray array];
  v59 = 0u;
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v24 = v50;
  v25 = [(NSArray *)v24 countByEnumeratingWithState:&v59 objects:v72 count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v60;
    do
    {
      for (j = 0; j != v26; j = j + 1)
      {
        if (*v60 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v59 + 1) + 8 * j);
        if ([v10 containsObject:v29])
        {
          [v53 addObject:v29];
        }

        else
        {
          [v52 addObject:v29];
          contactIdentifier = [v29 contactIdentifier];
          if (contactIdentifier)
          {
            [v51 addObject:contactIdentifier];
          }

          v32 = magic_head_log(v31);
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            displayName = [v29 displayName];
            nodeIdentifier = [v29 nodeIdentifier];
            *buf = 138412546;
            v69 = displayName;
            v70 = 2112;
            v71 = nodeIdentifier;
            _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Removing person %@ (%@)", buf, 0x16u);
          }
        }
      }

      v26 = [(NSArray *)v24 countByEnumeratingWithState:&v59 objects:v72 count:16];
    }

    while (v26);
  }

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v35 = v10;
  v36 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v56;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v56 != v38)
        {
          objc_enumerationMutation(v35);
        }

        v40 = *(*(&v55 + 1) + 8 * k);
        if (![(NSArray *)v24 containsObject:v40])
        {
          [v48 addObject:v40];
        }
      }

      v37 = [v35 countByEnumeratingWithState:&v55 objects:v67 count:16];
    }

    while (v37);
  }

  v41 = [v53 arrayByAddingObjectsFromArray:v48];
  v42 = [v41 sortedArrayUsingComparator:&stru_1008CF150];
  v43 = [NSPredicate predicateWithBlock:&stru_1008CF190];
  v44 = [v42 filteredArrayUsingPredicate:v43];

  v45 = self->_people;
  self->_people = v44;
  v46 = v44;

  WeakRetained = objc_loadWeakRetained(&self->_diffableDelegate);
  [WeakRetained browser:self didUpdatePeople:self->_people deletedContactIdentifiers:v51];
}

- (SDPeopleBrowserDiffableDelegate)diffableDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_diffableDelegate);

  return WeakRetained;
}

@end