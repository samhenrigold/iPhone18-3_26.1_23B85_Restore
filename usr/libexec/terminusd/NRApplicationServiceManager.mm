@interface NRApplicationServiceManager
- (NRApplicationServiceManager)init;
- (id)description;
@end

@implementation NRApplicationServiceManager

- (id)description
{
  v3 = objc_alloc_init(NSMutableString);
  [v3 appendFormat:@"\nName: NRApplicationServiceManager"];
  [v3 appendFormat:@"\nlisten: %@", self->_asNameToListenRequest];
  [v3 appendFormat:@"\nbrowse: %@", self->_asNameToBrowseRequests];
  [v3 appendFormat:@"\nresolve: %@", self->_asNameToResolveRequests];
  [v3 appendFormat:@"\nincoming: %@", self->_asNamesToIncomingResolveRequestEndpoint];
  [v3 appendFormat:@"\nflows: %@", self->_flows];
  v14 = v3;
  [v3 appendFormat:@"\nclients: %@", self->_asClients];
  v4 = objc_alloc_init(NSMutableDictionary);
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = self->_asNameToResolveRequests;
  v6 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v16;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v16 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = sub_1001196E0(self, v10);
        if ([v11 count])
        {
          v12 = +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", [v11 count]);
          [v4 setObject:v12 forKeyedSubscript:v10];
        }
      }

      v7 = [(NSMutableDictionary *)v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v7);
  }

  [v14 appendFormat:@"\nresolver keys: %@", v4];

  return v14;
}

- (NRApplicationServiceManager)init
{
  v85.receiver = self;
  v85.super_class = NRApplicationServiceManager;
  v6 = [(NRApplicationServiceManager *)&v85 init];
  if (!v6)
  {
    v75 = sub_100119370();
    IsLevelEnabled = _NRLogIsLevelEnabled();

    v40 = "[NRApplicationServiceManager init]";
    if (IsLevelEnabled)
    {
      v77 = sub_100119370();
      _NRLogWithArgs(v77, 16, "%s%.30s:%-4d ABORTING: [super init] failed", ", "[NRApplicationServiceManager init]"", 371);
    }

    v78 = _os_log_pack_size();
    v39 = &v81 - ((__chkstk_darwin() + 15) & 0xFFFFFFFFFFFFFFF0);
    v79 = __error();
    v80 = _os_log_pack_fill(v39, v78, *v79, &_mh_execute_header, "%{public}s [super init] failed");
    *v80 = 136446210;
    *(v80 + 4) = "[NRApplicationServiceManager init]";
    sub_100119370();
    _NRLogAbortWithPack();
    goto LABEL_38;
  }

  v7 = v6;
  v8 = sub_100003490();
  queue = v7->_queue;
  v7->_queue = v8;

  v10 = objc_alloc_init(NSMutableDictionary);
  asNameToListenRequest = v7->_asNameToListenRequest;
  v7->_asNameToListenRequest = v10;

  v12 = objc_alloc_init(NSMutableDictionary);
  asNameToBrowseRequests = v7->_asNameToBrowseRequests;
  v7->_asNameToBrowseRequests = v12;

  v14 = objc_alloc_init(NSMutableDictionary);
  asNameToResolveRequests = v7->_asNameToResolveRequests;
  v7->_asNameToResolveRequests = v14;

  v16 = objc_alloc_init(NSMutableDictionary);
  asNamesToIncomingResolveRequestEndpoint = v7->_asNamesToIncomingResolveRequestEndpoint;
  v7->_asNamesToIncomingResolveRequestEndpoint = v16;

  v18 = objc_alloc_init(NSMutableArray);
  flows = v7->_flows;
  v7->_flows = v18;

  v20 = objc_alloc_init(NSMutableArray);
  asClients = v7->_asClients;
  v7->_asClients = v20;

  v22 = objc_opt_class();
  v23 = NSStringFromClass(v22);
  policyIdentifier = v7->_policyIdentifier;
  v7->_policyIdentifier = v23;

  v25 = nw_agent_create();
  v115 = 0;
  v116 = 0;
  nw_agent_get_uuid();
  v26 = [[NSUUID alloc] initWithUUIDBytes:&v115];
  resolverAgentUUID = v7->_resolverAgentUUID;
  v7->_resolverAgentUUID = v26;

  v90 = _NSConcreteStackBlock;
  v91 = 3221225472;
  v84 = &v92;
  v92 = sub_10011BAC4;
  v93 = &unk_1001FBDD8;
  v94 = v7;
  *&v86 = _NSConcreteStackBlock;
  *(&v86 + 1) = 3221225472;
  v83 = &v87;
  *&v87 = sub_10011BE74;
  *(&v87 + 1) = &unk_1001FBE00;
  *&v88 = v7;
  nw_agent_set_browse_handlers();
  v109 = v7;
  v110 = _NSConcreteStackBlock;
  v111 = 3221225472;
  v112 = sub_10011C3D4;
  v113 = &unk_1001FBDD8;
  v114 = v7;
  v105 = _NSConcreteStackBlock;
  v106 = 3221225472;
  v107 = sub_10011C9A8;
  v108 = &unk_1001FBE00;
  nw_agent_add_resolve_handlers();
  v28 = _os_feature_enabled_impl();
  v7->_resolverHasCompleteOnConnect = v28;
  if (v28)
  {
    nw_agent_set_resolve_flags();
    if (v7->_resolverHasCompleteOnConnect)
    {
      v100 = _NSConcreteStackBlock;
      v101 = 3221225472;
      v102 = sub_10011CDC0;
      v103 = &unk_1001FBE28;
      v104 = v7;
      v95 = _NSConcreteStackBlock;
      v96 = 3221225472;
      v97 = sub_10011D0BC;
      v98 = &unk_1001FBE00;
      v99 = v7;
      nw_agent_set_assert_handlers();
    }
  }

  nw_agent_change_state();
  resolverAgent = v7->_resolverAgent;
  v7->_resolverAgent = v25;
  v30 = v25;

  v31 = nw_agent_create();
  v115 = 0;
  v116 = 0;
  nw_agent_get_uuid();
  v32 = [[NSUUID alloc] initWithUUIDBytes:&v115];
  listenerAgentUUID = v7->_listenerAgentUUID;
  v7->_listenerAgentUUID = v32;

  v109 = v7;
  v110 = _NSConcreteStackBlock;
  v111 = 3221225472;
  v112 = sub_10011A590;
  v113 = &unk_1001FBDD8;
  v114 = v7;
  v105 = _NSConcreteStackBlock;
  v106 = 3221225472;
  v107 = sub_10011A8B4;
  v108 = &unk_1001FBE00;
  nw_agent_set_browse_handlers();
  nw_agent_change_state();
  listenerAgent = v7->_listenerAgent;
  v7->_listenerAgent = v31;
  v82 = v31;

  v35 = nw_agent_create();
  v95 = 0;
  v96 = 0;
  nw_agent_get_uuid();
  v36 = [[NSUUID alloc] initWithUUIDBytes:&v95];
  incomingFlowAgentUUID = v7->_incomingFlowAgentUUID;
  v7->_incomingFlowAgentUUID = v36;

  v90 = _NSConcreteStackBlock;
  v91 = 3221225472;
  v92 = sub_10011ACD8;
  v93 = &unk_1001FBE28;
  v94 = v7;
  *&v86 = _NSConcreteStackBlock;
  *(&v86 + 1) = 3221225472;
  *&v87 = sub_10011AD4C;
  *(&v87 + 1) = &unk_1001FBE00;
  *&v88 = v7;
  nw_agent_set_assert_handlers();
  nw_agent_change_state();
  incomingFlowAgent = v7->_incomingFlowAgent;
  v7->_incomingFlowAgent = v35;
  v84 = v35;

  v3 = &dispatch_group_enter_ptr;
  v2 = v7;
  v39 = [NEPolicyResult netAgentUUID:v7->_incomingFlowAgentUUID];
  v40 = [NEPolicyCondition requiredAgentDomain:@"com.apple.networkrelay" agentType:@"ASListener"];
  v4 = +[NEPolicyCondition isInbound];
  v41 = [NEPolicy alloc];
  v42 = +[NEPolicyCondition allInterfaces];
  v100 = v42;
  v101 = v40;
  v102 = v4;
  v43 = [NSArray arrayWithObjects:&v100 count:3];
  v5 = [v41 initWithOrder:10 result:v39 conditions:v43];

  objc_opt_self();
  if (qword_100229410 != -1)
  {
LABEL_38:
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v44 = qword_100229408;
  v45 = v2;
  v46 = sub_100159E00(v44, v2->_policyIdentifier, v5);

  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v47 = qword_100229408;
  sub_10015A52C(v47);

  v48 = v2->_resolverAgentUUID;
  if (v48)
  {
  }

  else if (!v2->_listenerAgentUUID)
  {
    goto LABEL_26;
  }

  v49 = objc_alloc_init(NSMutableArray);
  if (v2->_resolverAgentUUID)
  {
    v50 = [v3[328] removeNetworkAgentUUID:?];
    [v49 addObject:v50];
  }

  if (v2->_listenerAgentUUID)
  {
    v51 = [v3[328] removeNetworkAgentUUID:?];
    [v49 addObject:v51];
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v52 = v49;
  v53 = [v52 countByEnumeratingWithState:&v86 objects:&v90 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v87;
    do
    {
      for (i = 0; i != v54; i = i + 1)
      {
        if (*v87 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v86 + 1) + 8 * i);
        v58 = [NEPolicy alloc];
        v59 = +[NEPolicyCondition allInterfaces];
        v105 = v59;
        v60 = [NSArray arrayWithObjects:&v105 count:1];
        v61 = [v58 initWithOrder:20 result:v57 conditions:v60];

        objc_opt_self();
        if (qword_100229410 != -1)
        {
          dispatch_once(&qword_100229410, &stru_1001FCD98);
        }

        v45 = v2;
        v62 = qword_100229408;
        v63 = sub_100159E00(v62, v2->_policyIdentifier, v61);
      }

      v54 = [v52 countByEnumeratingWithState:&v86 objects:&v90 count:16];
    }

    while (v54);
  }

  v3 = &dispatch_group_enter_ptr;
LABEL_26:
  v64 = v45->_resolverAgentUUID;
  if (v64)
  {
  }

  else if (!v45->_listenerAgentUUID)
  {
    goto LABEL_32;
  }

  v65 = [v3[328] skipWithOrder:21];
  v66 = [NEPolicyCondition customEntitlement:@"com.apple.private.application-service-browse"];
  v67 = [NEPolicy alloc];
  v68 = +[NEPolicyCondition allInterfaces];
  v110 = v68;
  v111 = v66;
  v69 = [NSArray arrayWithObjects:&v110 count:2];
  v70 = [v67 initWithOrder:15 result:v65 conditions:v69];

  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v71 = qword_100229408;
  v72 = sub_100159E00(v71, v45->_policyIdentifier, v70);

LABEL_32:
  objc_opt_self();
  if (qword_100229410 != -1)
  {
    dispatch_once(&qword_100229410, &stru_1001FCD98);
  }

  v73 = qword_100229408;
  sub_10015A52C(v73);

  return v45;
}

@end