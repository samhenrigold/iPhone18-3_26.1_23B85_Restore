@interface AgentController
+ (id)sharedController;
- (AgentController)init;
- (BOOL)addPolicyToFloatingAgent:(id)agent domain:(id)domain agentUUIDToUse:(id)use policyType:(int64_t)type useControlPolicySession:(BOOL)session;
- (BOOL)destroyFloatingAgent:(id)agent;
- (BOOL)extractDNRSvcParameterValues:(const char *)values buffer_size:(unint64_t)buffer_size resolverConfig:(id)config;
- (BOOL)initializeController;
- (BOOL)isControllerReady;
- (BOOL)isResolverMulticast:(id *)multicast;
- (BOOL)isResolverPrivate:(id *)private;
- (BOOL)isTCPConverterProxyEnabled:(__CFDictionary *)enabled;
- (BOOL)publishToAgent:(id)agent;
- (BOOL)registerAgent:(id)agent;
- (BOOL)spawnFloatingAgent:(Class)agent entity:(id)entity agentSubType:(unint64_t)type addPolicyOfType:(int64_t)ofType publishData:(id)data;
- (BOOL)spawnMappedFloatingAgent:(id)agent entity:(id)entity agentSubType:(unint64_t)type addPolicyOfType:(int64_t)ofType updateData:(id)data;
- (BOOL)unregisterAgent:(id)agent;
- (OS_dispatch_queue)controllerQueue;
- (const)copyConfigAgentData:(id)data uuid:(unsigned __int8)uuid[16] length:(unint64_t *)length;
- (const)copyDNSAgentData:(unsigned __int8)data[16] length:(unint64_t *)length;
- (const)copyProxyAgentData:(unsigned __int8)data[16] length:(unint64_t *)length;
- (id)createPolicySession;
- (id)dataForEncryptedResolver:(id)resolver;
- (id)dataForProxyArray:(__CFArray *)array;
- (id)dataForProxyDictionary:(__CFDictionary *)dictionary;
- (id)dataForResolver:(id *)resolver;
- (id)dataLengthSanityCheck:(id)check;
- (id)getAgentList:(id)list agentType:(unint64_t)type agentSubType:(unint64_t)subType;
- (id)getAgentWithSameDataAndSubType:(id)type data:(id)data subType:(unint64_t)subType;
- (id)getDNSDataFromCurrentConfig:(id *)config domain:(id)domain;
- (id)getProxyDataFromCurrentConfig:(__CFDictionary *)config domain:(id)domain;
- (id)sanitizeEntity:(id)entity;
- (id)sanitizeInterfaceName:(id)name;
- (int)countProxyEntriesEnabled:(__CFDictionary *)enabled;
- (int)entityInstanceNumber:(id)number;
- (resolverList)copyResolverList:(id *)list;
- (void)applyPolicies;
- (void)cleanConflictingAgentsFromList:(id)list new_list:(id)new_list agentDictionary:(id)dictionary;
- (void)deleteAgentList:(id)list list:(id)a4;
- (void)freeResolverList:(resolverList *)list;
- (void)processDNSChanges;
- (void)processDNSResolvers:(id *)resolvers;
- (void)processDefaultProxyChanges:(__CFDictionary *)changes;
- (void)processOnionResolver:(id *)resolver;
- (void)processProxyChanges;
- (void)processScopedDNSResolvers:(id *)resolvers;
- (void)processScopedProxyChanges:(__CFDictionary *)changes;
- (void)processServiceSpecificDNSResolvers:(id *)resolvers;
- (void)processServiceSpecificProxyChanges:(__CFDictionary *)changes;
- (void)processSupplementalDNSResolvers:(id *)resolvers;
- (void)processSupplementalProxyChanges:(__CFDictionary *)changes;
- (void)setControlPolicySession:(id)session;
- (void)setControllerQueue:(id)queue;
- (void)setFloatingDNSAgentList:(id)list;
- (void)setFloatingProxyAgentList:(id)list;
- (void)setFloatingProxyAgentList_TCPConverter:(id)converter;
- (void)setPolicyDB:(id)b;
- (void)setPolicySession:(id)session;
@end

@implementation AgentController

+ (id)sharedController
{
  if (qword_100081BC0 != -1)
  {
    sub_100068294();
  }

  v2 = qword_100081BB8;
  objc_sync_enter(v2);
  if ([qword_100081BB8 isControllerReady] & 1) != 0 || (objc_msgSend(qword_100081BB8, "initializeController"))
  {
    objc_sync_exit(v2);

    v3 = qword_100081BB8;
  }

  else
  {
    objc_sync_exit(v2);

    v3 = 0;
  }

  return v3;
}

- (AgentController)init
{
  v5.receiver = self;
  v5.super_class = AgentController;
  v2 = [(AgentController *)&v5 init];
  v3 = v2;
  if (v2)
  {
    [(AgentController *)v2 initializeController];
  }

  return v3;
}

- (BOOL)initializeController
{
  policySession = [(AgentController *)self policySession];

  if (policySession || ([(AgentController *)self createPolicySession], v4 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setPolicySession:v4], v4, [(AgentController *)self policySession], v5 = objc_claimAutoreleasedReturnValue(), v5, v5))
  {
    floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];

    if ((floatingProxyAgentList || (+[NSMutableDictionary dictionary](NSMutableDictionary, "dictionary"), v7 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setFloatingProxyAgentList:v7], v7, [(AgentController *)self floatingProxyAgentList], v8 = objc_claimAutoreleasedReturnValue(), v8, v8)) && (([(AgentController *)self floatingProxyAgentList_TCPConverter], v9 = objc_claimAutoreleasedReturnValue(), v9, v9) || (+[NSMutableDictionary dictionary](NSMutableDictionary, "dictionary"), v10 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setFloatingProxyAgentList_TCPConverter:v10], v10, [(AgentController *)self floatingProxyAgentList_TCPConverter], v11 = objc_claimAutoreleasedReturnValue(), v11, v11)) && (([(AgentController *)self floatingDNSAgentList], v12 = objc_claimAutoreleasedReturnValue(), v12, v12) || (+[NSMutableDictionary dictionary](NSMutableDictionary, "dictionary"), v13 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setFloatingDNSAgentList:v13], v13, [(AgentController *)self floatingDNSAgentList], v14 = objc_claimAutoreleasedReturnValue(), v14, v14)) && (([(AgentController *)self policyDB], v15 = objc_claimAutoreleasedReturnValue(), v15, v15) || (+[NSMutableDictionary dictionary], v16 = objc_claimAutoreleasedReturnValue(), [(AgentController *)self setPolicyDB:v16], v16, [(AgentController *)self policyDB], v17 = objc_claimAutoreleasedReturnValue(), v17, v17)))
    {
      controllerQueue = [(AgentController *)self controllerQueue];

      if (controllerQueue)
      {
        return 1;
      }

      v19 = dispatch_queue_create("IPMonitorAgentControllerQueue", 0);
      [(AgentController *)self setControllerQueue:v19];

      controllerQueue2 = [(AgentController *)self controllerQueue];

      if (controllerQueue2)
      {
        return 1;
      }

      v22 = "Failed to create a queue";
    }

    else
    {
      v22 = "Failed to create a dictionary";
    }
  }

  else
  {
    v22 = "Failed to create a policy session";
  }

  v23 = sub_1000035EC();
  v24 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v30, 0, sizeof(v30));
    if (_sc_log <= 0)
    {
      v25 = 2;
    }

    else
    {
      v25 = 3;
    }

    if (os_log_type_enabled(v23, v24))
    {
      v26 = v25;
    }

    else
    {
      v26 = 2;
    }

    v28 = 136315138;
    v29 = v22;
    v27 = _os_log_send_and_compose_impl(v26, 0, v30, 256, &_mh_execute_header, v23, v24, "Error occured while initializing AgentController: %s", &v28);
    __SC_log_send2();
    if (v27 != v30)
    {
      free(v27);
    }
  }

  _SC_crash();
  return 0;
}

- (id)createPolicySession
{
  v2 = objc_alloc_init(NEPolicySession);

  return v2;
}

- (BOOL)isControllerReady
{
  policySession = [(AgentController *)self policySession];
  if (policySession)
  {
    floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
    if (floatingProxyAgentList)
    {
      floatingProxyAgentList_TCPConverter = [(AgentController *)self floatingProxyAgentList_TCPConverter];
      if (floatingProxyAgentList_TCPConverter)
      {
        floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
        if (floatingDNSAgentList)
        {
          policyDB = [(AgentController *)self policyDB];
          if (policyDB)
          {
            controllerQueue = [(AgentController *)self controllerQueue];
            v9 = controllerQueue != 0;
          }

          else
          {
            v9 = 0;
          }
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)dataForProxyArray:(__CFArray *)array
{
  _SCSerialize();

  return 0;
}

- (id)dataForProxyDictionary:(__CFDictionary *)dictionary
{
  if (dictionary)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, dictionary);
    CFDictionaryRemoveValue(MutableCopy, kSCPropNetProxiesSupplementalMatchDomain);
    ProxyAgentData = SCNetworkProxiesCreateProxyAgentData();
    CFRelease(MutableCopy);
  }

  else
  {
    v5 = sub_1000035EC();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v12, 0, sizeof(v12));
      v7 = _sc_log <= 0 ? 2 : 3;
      v8 = os_log_type_enabled(v5, v6) ? v7 : 2;
      v11[0] = 0;
      v9 = _os_log_send_and_compose_impl(v8, 0, v12, 256, &_mh_execute_header, v5, v6, "Invalid domain proxy dict", v11, 2);
      __SC_log_send2();
      if (v9 != v12)
      {
        free(v9);
      }
    }

    ProxyAgentData = 0;
  }

  return ProxyAgentData;
}

- (id)getProxyDataFromCurrentConfig:(__CFDictionary *)config domain:(id)domain
{
  domainCopy = domain;
  v7 = domainCopy;
  if (!config || !domainCopy)
  {
    v16 = sub_1000035EC();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v24, 0, sizeof(v24));
      v18 = _sc_log <= 0 ? 2 : 3;
      v19 = os_log_type_enabled(v16, v17) ? v18 : 2;
      v23[0] = 0;
      v20 = _os_log_send_and_compose_impl(v19, 0, v24, 256, &_mh_execute_header, v16, v17, "Invalid proxies/domain", v23, 2);
      __SC_log_send2();
      if (v20 != v24)
      {
        free(v20);
      }
    }

    goto LABEL_20;
  }

  Value = CFDictionaryGetValue(config, kSCPropNetProxiesSupplemental);
  if (!Value || (v9 = Value, Count = CFArrayGetCount(Value), Count < 1))
  {
LABEL_20:
    v21 = 0;
    goto LABEL_21;
  }

  v11 = Count;
  v12 = 0;
  v13 = kSCPropNetProxiesSupplementalMatchDomain;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
    v15 = CFDictionaryGetValue(ValueAtIndex, v13);
    if (v15)
    {
      if (CFEqual(v15, v7))
      {
        break;
      }
    }

    if (v11 == ++v12)
    {
      goto LABEL_20;
    }
  }

  v21 = [(AgentController *)self dataForProxyDictionary:ValueAtIndex];
LABEL_21:

  return v21;
}

- (int)countProxyEntriesEnabled:(__CFDictionary *)enabled
{
  v16[0] = kSCPropNetProxiesHTTPEnable;
  v16[1] = kSCPropNetProxiesHTTPSEnable;
  v16[2] = kSCPropNetProxiesProxyAutoConfigEnable;
  v16[3] = kSCPropNetProxiesFTPEnable;
  v16[4] = kSCPropNetProxiesGopherEnable;
  v16[5] = kSCPropNetProxiesRTSPEnable;
  v16[6] = kSCPropNetProxiesSOCKSEnable;
  v16[7] = kSCPropNetProxiesTransportConverterEnable;
  v16[8] = kSCPropNetProxiesProxyAutoDiscoveryEnable;
  if (enabled)
  {
    v5 = 0;
    while (1)
    {
      LODWORD(v15[0]) = 0;
      v6 = [(AgentController *)self getIntValue:CFDictionaryGetValue(enabled valuePtr:v16[v5]), v15];
      result = v15[0];
      if (v6 && SLODWORD(v15[0]) >= 1)
      {
        break;
      }

      if (++v5 == 9)
      {
        return 0;
      }
    }
  }

  else
  {
    v9 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v15, 0, sizeof(v15));
      v11 = _sc_log <= 0 ? 2 : 3;
      v12 = os_log_type_enabled(v9, v10) ? v11 : 2;
      v14[0] = 0;
      v13 = _os_log_send_and_compose_impl(v12, 0, v15, 256, &_mh_execute_header, v9, v10, "No proxies", v14, 2);
      __SC_log_send2();
      if (v13 != v15)
      {
        free(v13);
      }
    }

    return 0;
  }

  return result;
}

- (void)processSupplementalProxyChanges:(__CFDictionary *)changes
{
  if (changes)
  {
    floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
    v6 = [(AgentController *)self getAgentList:floatingProxyAgentList agentType:1 agentSubType:3];

    v95 = [[NSCountedSet alloc] initWithCapacity:0];
    v100 = +[NSMutableArray array];
    v98 = +[NSMutableArray array];
    type = changes;
    Value = CFDictionaryGetValue(changes, kSCPropNetProxiesSupplemental);
    theArray = Value;
    if (Value)
    {
      Count = CFArrayGetCount(Value);
    }

    else
    {
      Count = 0;
    }

    v101 = +[NSMutableArray array];
    v97 = Count;
    if (Count >= 1)
    {
      v19 = 0;
      v20 = kSCPropNetProxiesSupplementalMatchDomain;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v19);
        v22 = CFDictionaryGetValue(ValueAtIndex, v20);
        if (v22)
        {
          v23 = v22;
          if ([(AgentController *)self countProxyEntriesEnabled:ValueAtIndex])
          {
            [v100 addObject:v23];
          }

          else
          {
            v24 = sub_1000035EC();
            v25 = _SC_syslog_os_log_mapping();
            if (__SC_log_enabled())
            {
              v143 = 0u;
              v142 = 0u;
              v141 = 0u;
              v140 = 0u;
              v139 = 0u;
              v138 = 0u;
              v137 = 0u;
              v136 = 0u;
              v135 = 0u;
              v133 = 0u;
              v134 = 0u;
              v131 = 0u;
              v132 = 0u;
              v130 = 0u;
              v26 = _sc_log <= 0 ? 2 : 3;
              v128 = 0uLL;
              v129 = 0uLL;
              v27 = os_log_type_enabled(v24, v25) ? v26 : 2;
              v126 = 138412290;
              v127 = v23;
              LODWORD(v91) = 12;
              v28 = _os_log_send_and_compose_impl(v27, 0, &v128, 256, &_mh_execute_header, v24, v25, "Proxy settings on %@ are generic. Not recognizing as new domain", &v126, v91);
              __SC_log_send2();
              if (v28 != &v128)
              {
                free(v28);
              }
            }
          }
        }

        ++v19;
      }

      while (v97 != v19);
    }

    floatingProxyAgentList2 = [(AgentController *)self floatingProxyAgentList];
    [(AgentController *)self cleanConflictingAgentsFromList:v6 new_list:v100 agentDictionary:floatingProxyAgentList2];

    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v30 = v6;
    v31 = [v30 countByEnumeratingWithState:&v122 objects:v121 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v123;
      do
      {
        for (i = 0; i != v32; i = i + 1)
        {
          if (*v123 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v122 + 1) + 8 * i);
          if (([v100 containsObject:v35] & 1) == 0)
          {
            floatingProxyAgentList3 = [(AgentController *)self floatingProxyAgentList];
            v37 = [floatingProxyAgentList3 objectForKey:v35];

            [(AgentController *)self destroyFloatingAgent:v37];
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v122 objects:v121 count:16];
      }

      while (v32);
    }

    v119 = 0u;
    v120 = 0u;
    v117 = 0u;
    v118 = 0u;
    obj = v30;
    v38 = [obj countByEnumeratingWithState:&v117 objects:v116 count:16];
    if (v38)
    {
      v39 = v38;
      v40 = *v118;
      do
      {
        for (j = 0; j != v39; j = j + 1)
        {
          if (*v118 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v42 = *(*(&v117 + 1) + 8 * j);
          floatingProxyAgentList4 = [(AgentController *)self floatingProxyAgentList];
          v44 = [floatingProxyAgentList4 objectForKey:v42];

          if (v44)
          {
            getAgentMapping = [v44 getAgentMapping];
            v46 = getAgentMapping;
            if (getAgentMapping)
            {
              getAssociatedEntity = [getAgentMapping getAssociatedEntity];
              v48 = [(AgentController *)self getProxyDataFromCurrentConfig:type domain:getAssociatedEntity];

              if (!v48 || ([v44 getAgentData], v49 = objc_claimAutoreleasedReturnValue(), v50 = objc_msgSend(v49, "isEqual:", v48), v49, (v50 & 1) == 0))
              {
                [v101 addObject:v44];

LABEL_53:
                goto LABEL_54;
              }
            }

            else
            {
              getAssociatedEntity2 = [v44 getAssociatedEntity];
              v48 = [(AgentController *)self getProxyDataFromCurrentConfig:type domain:getAssociatedEntity2];

              getAgentData = [v44 getAgentData];
              v53 = [getAgentData isEqual:v48];

              if ((v53 & 1) == 0)
              {
                [v44 updateAgentData:v48];
                [v98 addObject:v44];
              }
            }

            [v100 removeObject:v42];
            goto LABEL_53;
          }

LABEL_54:
        }

        v39 = [obj countByEnumeratingWithState:&v117 objects:v116 count:16];
      }

      while (v39);
    }

    v114 = 0u;
    v115 = 0u;
    v112 = 0u;
    v113 = 0u;
    v18 = v101;
    v54 = [v18 countByEnumeratingWithState:&v112 objects:v111 count:16];
    v102 = v18;
    if (v54)
    {
      v55 = v54;
      v56 = *v113;
      do
      {
        for (k = 0; k != v55; k = k + 1)
        {
          if (*v113 != v56)
          {
            objc_enumerationMutation(v102);
          }

          v58 = *(*(&v112 + 1) + 8 * k);
          v59 = sub_1000035EC();
          v60 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v143 = 0u;
            v142 = 0u;
            v141 = 0u;
            v140 = 0u;
            v139 = 0u;
            v138 = 0u;
            v137 = 0u;
            v136 = 0u;
            v135 = 0u;
            v133 = 0u;
            v134 = 0u;
            v131 = 0u;
            v132 = 0u;
            v130 = 0u;
            v61 = _sc_log <= 0 ? 2 : 3;
            v128 = 0uLL;
            v129 = 0uLL;
            v62 = os_log_type_enabled(v59, v60) ? v61 : 2;
            v63 = v59;
            getAgentName = [v58 getAgentName];
            v126 = 138412290;
            v127 = getAgentName;
            LODWORD(v91) = 12;
            v65 = _os_log_send_and_compose_impl(v62, 0, &v128, 256, &_mh_execute_header, v63, v60, "Destroying agent %@ because something changed!", &v126, v91);

            __SC_log_send2();
            if (v65 != &v128)
            {
              free(v65);
            }
          }

          [(AgentController *)self destroyFloatingAgent:v58];
        }

        v18 = v102;
        v55 = [v102 countByEnumeratingWithState:&v112 objects:v111 count:16];
      }

      while (v55);
    }

    v109 = 0u;
    v110 = 0u;
    v107 = 0u;
    v108 = 0u;
    v14 = v98;
    v66 = [v14 countByEnumeratingWithState:&v107 objects:v106 count:16];
    v16 = v100;
    if (v66)
    {
      v67 = v66;
      v68 = *v108;
      do
      {
        for (m = 0; m != v67; m = m + 1)
        {
          if (*v108 != v68)
          {
            objc_enumerationMutation(v14);
          }

          [(AgentController *)self publishToAgent:*(*(&v107 + 1) + 8 * m)];
        }

        v67 = [v14 countByEnumeratingWithState:&v107 objects:v106 count:16];
      }

      while (v67);
    }

    if (v97 < 1)
    {
      v17 = v95;
      v15 = obj;
    }

    else
    {
      v70 = 0;
      v71 = kSCPropNetProxiesSupplementalMatchDomain;
      v17 = v95;
      v99 = kSCPropNetProxiesSupplementalMatchDomain;
      do
      {
        v72 = CFArrayGetValueAtIndex(theArray, v70);
        v73 = CFDictionaryGetValue(v72, v71);
        if (v73)
        {
          v74 = v73;
          v75 = [v16 indexOfObject:v73];
          if (v75 != 0x7FFFFFFFFFFFFFFFLL)
          {
            v76 = v75;
            v77 = [v17 countForObject:v74];
            if (v77)
            {
              v78 = [NSString stringWithFormat:@"%@ #%lu", v74, v77 + 1];
              v79 = [(AgentController *)self dataForProxyDictionary:v72];
              if ([(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v78 agentSubType:3 addPolicyOfType:6 publishData:v79])
              {
                floatingProxyAgentList5 = [(AgentController *)self floatingProxyAgentList];
                v94 = v78;
                v81 = [floatingProxyAgentList5 objectForKey:v78];

                v82 = sub_1000035EC();
                typea = _SC_syslog_os_log_mapping();
                if (__SC_log_enabled())
                {
                  v143 = 0u;
                  v142 = 0u;
                  v141 = 0u;
                  v140 = 0u;
                  v139 = 0u;
                  v138 = 0u;
                  v137 = 0u;
                  v136 = 0u;
                  v135 = 0u;
                  v133 = 0u;
                  v134 = 0u;
                  v131 = 0u;
                  v132 = 0u;
                  v130 = 0u;
                  v83 = v82;
                  if (_sc_log <= 0)
                  {
                    v84 = 2;
                  }

                  else
                  {
                    v84 = 3;
                  }

                  v128 = 0uLL;
                  v129 = 0uLL;
                  if (os_log_type_enabled(v83, typea))
                  {
                    v85 = v84;
                  }

                  else
                  {
                    v85 = 2;
                  }

                  v93 = v83;
                  v86 = v83;
                  getAgentName2 = [v81 getAgentName];
                  v126 = 138412290;
                  v127 = getAgentName2;
                  LODWORD(v92) = 12;
                  v88 = _os_log_send_and_compose_impl(v85, 0, &v128, 256, &_mh_execute_header, v86, typea, "Duplicate Proxy agent %@", &v126, v92);

                  __SC_log_send2();
                  if (v88 != &v128)
                  {
                    free(v88);
                  }

                  v71 = v99;
                  v16 = v100;
                  v82 = v93;
                }

                v78 = v94;
                v17 = v95;
              }
            }

            else
            {
              v79 = [(AgentController *)self dataForProxyDictionary:v72];
              floatingProxyAgentList6 = [(AgentController *)self floatingProxyAgentList];
              v90 = [(AgentController *)self getAgentWithSameDataAndSubType:floatingProxyAgentList6 data:v79 subType:3];

              if (v90)
              {
                [(AgentController *)self spawnMappedFloatingAgent:v90 entity:v74 agentSubType:3 addPolicyOfType:6 updateData:v79];
              }

              else
              {
                [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v74 agentSubType:3 addPolicyOfType:6 publishData:v79];
              }

              v17 = v95;
              v71 = v99;
            }

            [v16 removeObjectAtIndex:v76];
            [v17 addObject:v74];
          }
        }

        ++v70;
      }

      while (v97 != v70);
      v18 = v102;
      v15 = obj;
    }
  }

  else
  {
    v9 = sub_1000035EC();
    v10 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v143 = 0u;
      v142 = 0u;
      v141 = 0u;
      v140 = 0u;
      v139 = 0u;
      v138 = 0u;
      v137 = 0u;
      v136 = 0u;
      v135 = 0u;
      v133 = 0u;
      v134 = 0u;
      v131 = 0u;
      v132 = 0u;
      v129 = 0u;
      v130 = 0u;
      v128 = 0u;
      v11 = _sc_log <= 0 ? 2 : 3;
      v12 = os_log_type_enabled(v9, v10) ? v11 : 2;
      LOWORD(v126) = 0;
      v13 = _os_log_send_and_compose_impl(v12, 0, &v128, 256, &_mh_execute_header, v9, v10, "No proxy config to process", &v126, 2);
      __SC_log_send2();
      if (v13 != &v128)
      {
        free(v13);
      }
    }

    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }
}

- (void)processScopedProxyChanges:(__CFDictionary *)changes
{
  floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
  v28 = [(AgentController *)self getAgentList:floatingProxyAgentList agentType:1 agentSubType:1];

  Value = CFDictionaryGetValue(changes, kSCPropNetProxiesScoped);
  if (Value)
  {
    v7 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v9 = Count;
      v10 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(v7, v10, 0);
      v11 = 0;
      v27 = v7;
      do
      {
        v12 = v10[v11];
        v13 = [NSString stringWithFormat:@"%s%@", "@", v12];
        if ([(AgentController *)self countProxyEntriesEnabled:CFDictionaryGetValue(v7, v12)])
        {
          v14 = [v28 indexOfObject:v13];
          v15 = SCNetworkProxiesCopyMatching();
          if (v15)
          {
            v16 = v15;
            v17 = [(AgentController *)self dataForProxyArray:v15];
            CFRelease(v16);
          }

          else
          {
            v17 = 0;
          }

          if (v14 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v13 agentSubType:1 addPolicyOfType:8 publishData:v17];
            v23 = 0;
          }

          else
          {
            [v28 removeObjectAtIndex:v14];
            floatingProxyAgentList2 = [(AgentController *)self floatingProxyAgentList];
            v23 = [floatingProxyAgentList2 objectForKey:v13];

            if (v23)
            {
              [v23 updateAgentData:v17];
              if ([v23 shouldUpdateAgent])
              {
                [(AgentController *)self publishToAgent:v23];
              }
            }
          }
        }

        else
        {
          v18 = sub_1000035EC();
          v19 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            memset(&v31[2], 0, 224);
            if (_sc_log <= 0)
            {
              v20 = 2;
            }

            else
            {
              v20 = 3;
            }

            memset(v31, 0, 32);
            if (os_log_type_enabled(v18, v19))
            {
              v21 = v20;
            }

            else
            {
              v21 = 2;
            }

            v29 = 138412290;
            v30 = v12;
            LODWORD(v26) = 12;
            v22 = _os_log_send_and_compose_impl(v21, 0, v31, 256, &_mh_execute_header, v18, v19, "Proxy settings on %@ are generic. Skipping", &v29, v26);
            __SC_log_send2();
            if (v22 != v31)
            {
              free(v22);
            }

            v7 = v27;
          }

          v23 = 0;
          v17 = 0;
        }

        ++v11;
      }

      while (v9 != v11);
      free(v10);
    }
  }

  floatingProxyAgentList3 = [(AgentController *)self floatingProxyAgentList];
  [(AgentController *)self deleteAgentList:floatingProxyAgentList3 list:v28];
}

- (void)processServiceSpecificProxyChanges:(__CFDictionary *)changes
{
  floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
  v6 = [(AgentController *)self getAgentList:floatingProxyAgentList agentType:1 agentSubType:9];

  Value = CFDictionaryGetValue(changes, kSCPropNetProxiesServices);
  if (Value)
  {
    v8 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v10 = Count;
      v11 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
      CFDictionaryGetKeysAndValues(v8, v11, 0);
      v12 = 0;
      v27 = v10;
      v28 = v6;
      do
      {
        v13 = v11[v12];
        v14 = [NSString stringWithFormat:@"%s%@", "@", v13];
        if ([(AgentController *)self countProxyEntriesEnabled:CFDictionaryGetValue(v8, v13)])
        {
          v15 = CFDictionaryGetValue(v8, v13);
          if (v15)
          {
            v29 = v15;
            v16 = [(AgentController *)self dataForProxyArray:[NSArray arrayWithObjects:&v29 count:1]];
          }

          else
          {
            v16 = 0;
          }

          v23 = [v6 indexOfObject:v14];
          if (v23 == 0x7FFFFFFFFFFFFFFFLL)
          {
            [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v14 agentSubType:9 addPolicyOfType:-1 publishData:v16];
            v22 = 0;
          }

          else
          {
            [v6 removeObjectAtIndex:v23];
            floatingProxyAgentList2 = [(AgentController *)self floatingProxyAgentList];
            v22 = [floatingProxyAgentList2 objectForKey:v14];

            if (v22)
            {
              [v22 updateAgentData:v16];
              if ([v22 shouldUpdateAgent])
              {
                [(AgentController *)self publishToAgent:v22];
              }
            }

            v6 = v28;
          }
        }

        else
        {
          v17 = sub_1000035EC();
          v18 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            memset(&v32[2], 0, 224);
            if (_sc_log <= 0)
            {
              v19 = 2;
            }

            else
            {
              v19 = 3;
            }

            memset(v32, 0, 32);
            if (os_log_type_enabled(v17, v18))
            {
              v20 = v19;
            }

            else
            {
              v20 = 2;
            }

            v30 = 138412290;
            v31 = v13;
            LODWORD(v26) = 12;
            v21 = _os_log_send_and_compose_impl(v20, 0, v32, 256, &_mh_execute_header, v17, v18, "Proxy settings on %@ are generic. Skipping", &v30, v26);
            __SC_log_send2();
            if (v21 != v32)
            {
              free(v21);
            }

            v10 = v27;
            v6 = v28;
          }

          v22 = 0;
          v16 = 0;
        }

        ++v12;
      }

      while (v10 != v12);
      free(v11);
    }
  }

  floatingProxyAgentList3 = [(AgentController *)self floatingProxyAgentList];
  [(AgentController *)self deleteAgentList:floatingProxyAgentList3 list:v6];
}

- (BOOL)isTCPConverterProxyEnabled:(__CFDictionary *)enabled
{
  valuePtr = 0;
  value = 0;
  result = 0;
  if (CFDictionaryGetValueIfPresent(enabled, kSCPropNetProxiesTransportConverterEnable, &value))
  {
    v3 = value;
    TypeID = CFNumberGetTypeID();
    if (v3)
    {
      if (CFGetTypeID(v3) == TypeID && CFNumberGetValue(value, kCFNumberIntType, &valuePtr) && valuePtr)
      {
        return 1;
      }
    }
  }

  return result;
}

- (void)processDefaultProxyChanges:(__CFDictionary *)changes
{
  values = CFDictionaryCreateMutableCopy(0, 0, changes);
  CFDictionaryRemoveValue(values, kSCPropNetProxiesScoped);
  CFDictionaryRemoveValue(values, kSCPropNetProxiesServices);
  CFDictionaryRemoveValue(values, kSCPropNetProxiesSupplemental);
  v4 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
  if (CFArrayGetCount(v4) >= 1)
  {
    if ([(AgentController *)self countProxyEntriesEnabled:values])
    {
      CFRelease(values);
      v5 = [(AgentController *)self dataForProxyArray:v4];
      floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
      v7 = [floatingProxyAgentList objectForKey:@"_defaultProxy"];

      if (v7)
      {
        getAgentData = [v7 getAgentData];
        v9 = [v5 isEqual:getAgentData];

        if (v9)
        {
          goto LABEL_35;
        }

        [(AgentController *)self destroyFloatingAgent:v7];
      }

      v10 = [(AgentController *)self isGlobalProxy:values];
      if (v10)
      {
        v11 = sub_1000035EC();
        v12 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v45 = 0u;
          v46 = 0u;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v38 = 0u;
          v36 = 0u;
          v37 = 0u;
          v34 = 0u;
          v35 = 0u;
          v32 = 0u;
          v33 = 0u;
          v31 = 0u;
          v13 = _sc_log <= 0 ? 2 : 3;
          v14 = os_log_type_enabled(v11, v12) ? v13 : 2;
          v30[0] = 0;
          v15 = _os_log_send_and_compose_impl(v14, 0, &v31, 256, &_mh_execute_header, v11, v12, "Global proxy detected...", v30, 2);
          __SC_log_send2();
          if (v15 != &v31)
          {
            free(v15);
          }
        }

        v16 = 7;
        v17 = 10;
      }

      else
      {
        v16 = 0;
        v17 = 5;
      }

      if ((v10 & [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:@"_defaultProxy" agentSubType:v17 addPolicyOfType:v16 publishData:v5]) == 1 && [(AgentController *)self isTCPConverterProxyEnabled:values])
      {
        floatingProxyAgentList2 = [(AgentController *)self floatingProxyAgentList];
        v24 = [floatingProxyAgentList2 objectForKey:@"_defaultProxy"];

        if (v24)
        {
          getAgentData2 = [v24 getAgentData];
          v27 = [v5 isEqual:getAgentData2];

          if (v27)
          {
            floatingProxyAgentList_TCPConverter = [(AgentController *)self floatingProxyAgentList_TCPConverter];
            [floatingProxyAgentList_TCPConverter setObject:v24 forKey:@"_defaultProxy"];

            sub_10004EA44(1);
          }
        }

        goto LABEL_36;
      }

LABEL_35:
      v24 = v7;
LABEL_36:

      goto LABEL_37;
    }

    v18 = sub_1000035EC();
    v19 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v38 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      v20 = _sc_log <= 0 ? 2 : 3;
      v21 = os_log_type_enabled(v18, v19) ? v20 : 2;
      v30[0] = 0;
      v22 = _os_log_send_and_compose_impl(v21, 0, &v31, 256, &_mh_execute_header, v18, v19, "Proxy settings on defaultProxy are generic. Skipping", v30, 2);
      __SC_log_send2();
      if (v22 != &v31)
      {
        free(v22);
      }
    }
  }

  CFRelease(values);
  floatingProxyAgentList3 = [(AgentController *)self floatingProxyAgentList];
  v24 = [floatingProxyAgentList3 objectForKey:@"_defaultProxy"];

  if (v24)
  {
    [(AgentController *)self destroyFloatingAgent:v24];
  }

LABEL_37:

  CFRelease(v4);
}

- (void)applyPolicies
{
  controlPolicySession = [(AgentController *)self controlPolicySession];
  if (controlPolicySession)
  {
    v4 = controlPolicySession;
    controlPolicySession2 = [(AgentController *)self controlPolicySession];
    apply = [controlPolicySession2 apply];

    if ((apply & 1) == 0)
    {
      v7 = sub_1000035EC();
      v8 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        v9 = _sc_log <= 0 ? 2 : 3;
        v10 = os_log_type_enabled(v7, v8) ? v9 : 2;
        v22[0] = 0;
        v11 = _os_log_send_and_compose_impl(v10, 0, &v23, 256, &_mh_execute_header, v7, v8, "Failed to apply control policies", v22, 2);
        __SC_log_send2();
        if (v11 != &v23)
        {
          free(v11);
        }
      }
    }
  }

  policySession = [(AgentController *)self policySession];
  if (policySession)
  {
    v13 = policySession;
    policySession2 = [(AgentController *)self policySession];
    apply2 = [policySession2 apply];

    if ((apply2 & 1) == 0)
    {
      v16 = sub_1000035EC();
      v17 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v33 = 0u;
        v34 = 0u;
        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v27 = 0u;
        v28 = 0u;
        v25 = 0u;
        v26 = 0u;
        v23 = 0u;
        v24 = 0u;
        if (_sc_log <= 0)
        {
          v18 = 2;
        }

        else
        {
          v18 = 3;
        }

        if (os_log_type_enabled(v16, v17))
        {
          v19 = v18;
        }

        else
        {
          v19 = 2;
        }

        v22[0] = 0;
        LODWORD(v21) = 2;
        v20 = _os_log_send_and_compose_impl(v19, 0, &v23, 256, &_mh_execute_header, v16, v17, "Failed to apply policies", v22, v21);
        __SC_log_send2();
        if (v20 != &v23)
        {
          free(v20);
        }
      }
    }
  }
}

- (void)processProxyChanges
{
  v3 = SCDynamicStoreCopyProxiesWithOptions();
  if (v3)
  {
    v4 = v3;
    [(AgentController *)self processDefaultProxyChanges:v3];
    [(AgentController *)self processScopedProxyChanges:v4];
    [(AgentController *)self processSupplementalProxyChanges:v4];
    [(AgentController *)self processServiceSpecificProxyChanges:v4];
    [(AgentController *)self applyPolicies];

    CFRelease(v4);
  }

  else
  {
    v5 = sub_1000035EC();
    v6 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v24, 0, sizeof(v24));
      v7 = _sc_log <= 0 ? 2 : 3;
      v8 = os_log_type_enabled(v5, v6) ? v7 : 2;
      v18[0] = 0;
      v9 = _os_log_send_and_compose_impl(v8, 0, v24, 256, &_mh_execute_header, v5, v6, "No proxy information", v18, 2);
      __SC_log_send2();
      if (v9 != v24)
      {
        free(v9);
      }
    }

    floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
    v11 = [floatingProxyAgentList copy];

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = v11;
    v13 = [v12 countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v21;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v21 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v12 objectForKey:*(*(&v20 + 1) + 8 * i)];
          [(AgentController *)self destroyFloatingAgent:v17];
        }

        v14 = [v12 countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v14);

      [(AgentController *)self applyPolicies];
    }

    else
    {
    }
  }
}

- (void)freeResolverList:(resolverList *)list
{
  if (list)
  {
    if (list->var0)
    {
      free(list->var0);
    }

    var2 = list->var2;
    if (var2)
    {
      free(var2);
    }

    var4 = list->var4;
    if (var4)
    {
      free(var4);
    }

    free(list);
  }
}

- (resolverList)copyResolverList:(id *)list
{
  if (list->var0 < 1 || !*(&list->var0 + 1))
  {
    return 0;
  }

  v5 = malloc_type_calloc(1uLL, 0x30uLL, 0x1080040C09FF9A2uLL);
  if (list->var0 >= 1)
  {
    v6 = 0;
    do
    {
      v7 = *(*(&list->var0 + 1) + 8 * v6);
      v8 = [(AgentController *)self isResolverMulticast:v7];
      p_var3 = &v5->var3;
      if (v8 & 1) != 0 || (v10 = [(AgentController *)self isResolverPrivate:v7], p_var3 = &v5->var5, (v10) || !*v7 && (p_var3 = &v5->var1, *(v7 + 8) >= 1))
      {
        ++*p_var3;
      }

      ++v6;
    }

    while (v6 < list->var0);
  }

  v11 = sub_1000035EC();
  v12 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v34, 0, sizeof(v34));
    v13 = _sc_log <= 0 ? 2 : 3;
    v14 = os_log_type_enabled(v11, v12) ? v13 : 2;
    var3 = v5->var3;
    var5 = v5->var5;
    v30 = 1024;
    v31 = var3;
    v32 = 1024;
    v33 = var5;
    v17 = _os_log_send_and_compose_impl(v14, 0, v34, 256, &_mh_execute_header, v11, v12, "Resolvers: %u default, %u multicast, %u private", &v29, 20, 67109632);
    __SC_log_send2();
    if (v17 != v34)
    {
      free(v17);
    }
  }

  var1 = v5->var1;
  if (var1)
  {
    v5->var0 = malloc_type_calloc(var1, 8uLL, 0x2004093837F09uLL);
  }

  v19 = v5->var3;
  if (v19)
  {
    v5->var2 = malloc_type_calloc(v19, 8uLL, 0x2004093837F09uLL);
  }

  v20 = v5->var5;
  if (v20)
  {
    v5->var4 = malloc_type_calloc(v20, 8uLL, 0x2004093837F09uLL);
  }

  if (list->var0 >= 1)
  {
    v21 = 0;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    do
    {
      v25 = *(*(&list->var0 + 1) + 8 * v21);
      if ([(AgentController *)self isResolverMulticast:v25]&& v22 < v5->var3)
      {
        v26 = v22++;
        p_var2 = &v5->var2;
      }

      else if ([(AgentController *)self isResolverPrivate:v25]&& v23 < v5->var5)
      {
        v26 = v23++;
        p_var2 = &v5->var4;
      }

      else
      {
        if (*v25 || *(v25 + 8) < 1 || v24 >= v5->var1)
        {
          goto LABEL_42;
        }

        v26 = v24++;
        p_var2 = v5;
      }

      p_var2->var0[v26] = v25;
LABEL_42:
      ++v21;
    }

    while (v21 < list->var0);
  }

  return v5;
}

- (id)dataForResolver:(id *)resolver
{
  if (resolver)
  {
    v4 = nw_resolver_config_create();
    nw_resolver_config_set_protocol();
    nw_resolver_config_set_class();
    if (*&resolver->var3 >= 1)
    {
      v5 = 0;
      do
      {
        nw_resolver_config_add_search_domain();
        ++v5;
      }

      while (v5 < *&resolver->var3);
    }

    if (resolver->var1 >= 1)
    {
      v6 = 0;
      do
      {
        v21 = 0u;
        v22 = 0u;
        v19 = 0u;
        v20 = 0u;
        v17 = 0u;
        v18 = 0u;
        v15 = 0u;
        v16 = 0u;
        _SC_sockaddr_to_string();
        ++v6;
      }

      while (v6 < resolver->var1);
    }

    v7 = nw_resolver_config_copy_plist_data_ref();
  }

  else
  {
    v4 = sub_1000035EC();
    v8 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v9 = _sc_log <= 0 ? 2 : 3;
      v10 = os_log_type_enabled(v4, v8) ? v9 : 2;
      v14[0] = 0;
      v13 = 2;
      v11 = _os_log_send_and_compose_impl(v10, 0, &v15, 256, &_mh_execute_header, v4, v8, "Invalid dns resolver", v14, v13);
      __SC_log_send2();
      if (v11 != &v15)
      {
        free(v11);
      }
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)extractDNRSvcParameterValues:(const char *)values buffer_size:(unint64_t)buffer_size resolverConfig:(id)config
{
  configCopy = config;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_10004FECC;
  v47[3] = &unk_10007B0C8;
  v47[4] = &v48;
  v8 = objc_retainBlock(v47);
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 0;
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_1000502A0;
  v42[3] = &unk_10007B0C8;
  v42[4] = &v43;
  v36 = objc_retainBlock(v42);
  v38 = 0;
  v39 = &v38;
  v40 = 0x2020000000;
  v41 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_100050310;
  v37[3] = &unk_10007B0C8;
  v37[4] = &v38;
  v35 = objc_retainBlock(v37);
  if (buffer_size < 2)
  {
    goto LABEL_55;
  }

  v34 = configCopy;
  if (buffer_size < 4 || !values)
  {
    goto LABEL_35;
  }

  while (1)
  {
    v9 = bswap32(*(values + 1)) >> 16;
    v10 = buffer_size - 4 >= v9;
    buffer_size = buffer_size - 4 - v9;
    if (!v10)
    {
      break;
    }

    v11 = values + 4;
    v12 = bswap32(*values) >> 16;
    v13 = v8;
    if (v12 != 1)
    {
      if (v12 == 7)
      {
        v13 = v35;
      }

      else
      {
        v13 = v36;
        if (v12 != 3)
        {
          v14 = sub_1000035EC();
          v15 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v67 = 0u;
            v68 = 0u;
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            if (_sc_log <= 0)
            {
              v16 = 2;
            }

            else
            {
              v16 = 3;
            }

            v53 = 0uLL;
            v54 = 0uLL;
            if (os_log_type_enabled(v14, v15))
            {
              v17 = v16;
            }

            else
            {
              v17 = 2;
            }

            v52[0] = 0;
            LODWORD(v33) = 2;
            v18 = _os_log_send_and_compose_impl(v17, 0, &v53, 256, &_mh_execute_header, v14, v15, "Unrecognized DNR SvcParameter key. Skipping.", v52, v33);
            __SC_log_send2();
            if (v18 != &v53)
            {
              free(v18);
            }

            configCopy = v34;
          }

          goto LABEL_22;
        }
      }
    }

    (v13[2])(v13, values + 4, v9);
LABEL_22:
    values = &v11[v9];
    if (buffer_size <= 3)
    {
      goto LABEL_35;
    }
  }

  v19 = sub_1000035EC();
  v20 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    if (_sc_log <= 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    v53 = 0uLL;
    v54 = 0uLL;
    if (os_log_type_enabled(v19, v20))
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    v52[0] = 0;
    LODWORD(v33) = 2;
    v24 = _os_log_send_and_compose_impl(v23, 0, &v53, 256, &_mh_execute_header, v19, v20, "DNR SvcParameter option length value greater than actual SvcParameter bytes. Skipping.", v52, v33);
    __SC_log_send2();
    if (v24 != &v53)
    {
      free(v24);
    }

    configCopy = v34;
  }

LABEL_35:
  if (!*(v49 + 6))
  {

    configCopy = 0;
LABEL_55:
    v31 = 0;
    goto LABEL_56;
  }

  nw_resolver_config_set_protocol();
  if (*(v44 + 12))
  {
    v25 = sub_1000035EC();
    v26 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      if (_sc_log <= 0)
      {
        v27 = 2;
      }

      else
      {
        v27 = 3;
      }

      if (os_log_type_enabled(v25, v26))
      {
        v28 = v27;
      }

      else
      {
        v28 = 2;
      }

      v52[0] = 0;
      LODWORD(v33) = 2;
      v29 = _os_log_send_and_compose_impl(v28, 0, &v53, 256, &_mh_execute_header, v25, v26, "Custom port found in DNR SvcParameters", v52, v33);
      __SC_log_send2();
      if (v29 != &v53)
      {
        free(v29);
      }

      configCopy = v34;
    }

    nw_resolver_config_set_port();
  }

  if (*(v49 + 6) == 2 && v39[3])
  {
    v30 = strchr(v39[3], 123);
    if (v30)
    {
      *v30 = 0;
    }

    nw_resolver_config_set_provider_path();
  }

  v31 = 1;
LABEL_56:

  _Block_object_dispose(&v38, 8);
  _Block_object_dispose(&v43, 8);

  _Block_object_dispose(&v48, 8);
  return v31;
}

- (id)dataForEncryptedResolver:(id)resolver
{
  resolverCopy = resolver;
  v5 = resolverCopy;
  if (resolverCopy)
  {
    v6 = [resolverCopy objectForKeyedSubscript:kSCPropNetDNSEncryptedServerAuthenticationDomainName];
    v7 = [v5 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerServicePriority];
    v8 = [v5 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerAddresses];
    v9 = [v5 objectForKeyedSubscript:kSCPropNetDNSEncryptedServerServiceParameters];
    v10 = nw_resolver_config_create();
    nw_resolver_config_set_class();
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v11 = v8;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v23 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v25;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v25 != v14)
          {
            objc_enumerationMutation(v11);
          }

          [*(*(&v24 + 1) + 8 * i) UTF8String];
          nw_resolver_config_add_name_server();
        }

        v13 = [v11 countByEnumeratingWithState:&v24 objects:v23 count:16];
      }

      while (v13);
    }

    [v6 UTF8String];
    nw_resolver_config_set_provider_name();
    -[AgentController extractDNRSvcParameterValues:buffer_size:resolverConfig:](self, "extractDNRSvcParameterValues:buffer_size:resolverConfig:", [v9 bytes], objc_msgSend(v9, "length"), v10);
    v16 = nw_resolver_config_copy_plist_data_ref();
  }

  else
  {
    v7 = sub_1000035EC();
    v17 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v28, 0, sizeof(v28));
      v18 = _sc_log <= 0 ? 2 : 3;
      v19 = os_log_type_enabled(v7, v17) ? v18 : 2;
      v22[0] = 0;
      v20 = _os_log_send_and_compose_impl(v19, 0, v28, 256, &_mh_execute_header, v7, v17, "Invalid encrypted dns resolver", v22, 2);
      __SC_log_send2();
      if (v20 != v28)
      {
        free(v20);
      }
    }

    v6 = 0;
    v10 = 0;
    v16 = 0;
  }

  return v16;
}

- (id)getDNSDataFromCurrentConfig:(id *)config domain:(id)domain
{
  domainCopy = domain;
  v7 = domainCopy;
  if (!config || !domainCopy)
  {
    v11 = sub_1000035EC();
    v12 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v19, 0, sizeof(v19));
      v13 = _sc_log <= 0 ? 2 : 3;
      v14 = os_log_type_enabled(v11, v12) ? v13 : 2;
      v18[0] = 0;
      v15 = _os_log_send_and_compose_impl(v14, 0, v19, 256, &_mh_execute_header, v11, v12, "Invalid dns_config/domain", v18, 2);
      __SC_log_send2();
      if (v15 != v19)
      {
        free(v15);
      }
    }

    goto LABEL_22;
  }

  if (config->var0 < 1 || !*(&config->var0 + 1))
  {
LABEL_22:
    v16 = 0;
    goto LABEL_23;
  }

  v8 = 0;
  while (1)
  {
    v9 = *(*(&config->var0 + 1) + 8 * v8);
    if (!*v9 || [(AgentController *)self isResolverMulticast:*(*(&config->var0 + 1) + 8 * v8)])
    {
      goto LABEL_10;
    }

    v10 = [NSString stringWithUTF8String:*v9];
    if ([v10 isEqualToString:v7])
    {
      break;
    }

LABEL_10:
    if (++v8 >= config->var0)
    {
      goto LABEL_22;
    }
  }

  v16 = [(AgentController *)self dataForResolver:v9];

LABEL_23:

  return v16;
}

- (BOOL)isResolverMulticast:(id *)multicast
{
  var0 = multicast->var7.var0;
  if (var0)
  {
    LOBYTE(var0) = strstr(var0, "mdns") != 0;
  }

  return var0;
}

- (BOOL)isResolverPrivate:(id *)private
{
  var0 = private->var7.var0;
  if (var0)
  {
    LOBYTE(var0) = strstr(var0, "pdns") != 0;
  }

  return var0;
}

- (void)processSupplementalDNSResolvers:(id *)resolvers
{
  type = +[NSMutableArray array];
  v78 = [[NSCountedSet alloc] initWithCapacity:0];
  v5 = +[NSMutableArray array];
  v79 = +[NSMutableArray array];
  floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
  v7 = [(AgentController *)self getAgentList:floatingDNSAgentList agentType:2 agentSubType:3];

  if (*(&resolvers->var0 + 1))
  {
    if (resolvers->var0 >= 1)
    {
      v8 = 0;
      do
      {
        v9 = *(*(&resolvers->var0 + 1) + 8 * v8);
        if (*v9 && ![(AgentController *)self isResolverPrivate:*(*(&resolvers->var0 + 1) + 8 * v8)]&& ![(AgentController *)self isResolverMulticast:v9])
        {
          v10 = [NSString stringWithCString:*v9 encoding:1];
          [v5 addObject:v10];
        }

        ++v8;
      }

      while (v8 < resolvers->var0);
    }
  }

  else
  {
    resolvers->var0 = 0;
  }

  floatingDNSAgentList2 = [(AgentController *)self floatingDNSAgentList];
  [(AgentController *)self cleanConflictingAgentsFromList:v7 new_list:v5 agentDictionary:floatingDNSAgentList2];

  v122 = 0u;
  v123 = 0u;
  v120 = 0u;
  v121 = 0u;
  v12 = v7;
  v13 = [v12 countByEnumeratingWithState:&v120 objects:v119 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v121;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v121 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v120 + 1) + 8 * i);
        if (([v5 containsObject:v17] & 1) == 0)
        {
          floatingDNSAgentList3 = [(AgentController *)self floatingDNSAgentList];
          v19 = [floatingDNSAgentList3 objectForKey:v17];

          [(AgentController *)self destroyFloatingAgent:v19];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v120 objects:v119 count:16];
    }

    while (v14);
  }

  v80 = v5;
  resolversCopy = resolvers;

  v117 = 0u;
  v118 = 0u;
  v115 = 0u;
  v116 = 0u;
  obj = v12;
  v20 = [obj countByEnumeratingWithState:&v115 objects:v114 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v116;
    do
    {
      for (j = 0; j != v21; j = j + 1)
      {
        if (*v116 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v24 = *(*(&v115 + 1) + 8 * j);
        floatingDNSAgentList4 = [(AgentController *)self floatingDNSAgentList];
        v26 = [floatingDNSAgentList4 objectForKey:v24];

        if (v26)
        {
          getAgentMapping = [v26 getAgentMapping];
          v28 = getAgentMapping;
          if (getAgentMapping)
          {
            getAssociatedEntity = [getAgentMapping getAssociatedEntity];
            v30 = [(AgentController *)self getDNSDataFromCurrentConfig:resolversCopy domain:getAssociatedEntity];

            if (!v30 || ([v26 getAgentData], v31 = objc_claimAutoreleasedReturnValue(), v32 = objc_msgSend(v31, "isEqual:", v30), v31, (v32 & 1) == 0))
            {
              [type addObject:v26];

LABEL_33:
              goto LABEL_34;
            }
          }

          else
          {
            getAssociatedEntity2 = [v26 getAssociatedEntity];
            v30 = [(AgentController *)self getDNSDataFromCurrentConfig:resolversCopy domain:getAssociatedEntity2];

            getAgentData = [v26 getAgentData];
            v35 = [getAgentData isEqual:v30];

            if ((v35 & 1) == 0)
            {
              [v26 updateAgentData:v30];
              [v79 addObject:v26];
            }
          }

          [v80 removeObject:v24];
          goto LABEL_33;
        }

LABEL_34:
      }

      v21 = [obj countByEnumeratingWithState:&v115 objects:v114 count:16];
    }

    while (v21);
  }

  v112 = 0u;
  v113 = 0u;
  v110 = 0u;
  v111 = 0u;
  v81 = type;
  v36 = [v81 countByEnumeratingWithState:&v110 objects:v109 count:16];
  if (v36)
  {
    v37 = v36;
    v38 = *v111;
    do
    {
      for (k = 0; k != v37; k = k + 1)
      {
        if (*v111 != v38)
        {
          objc_enumerationMutation(v81);
        }

        v40 = *(*(&v110 + 1) + 8 * k);
        v41 = sub_1000035EC();
        v42 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v107 = 0u;
          v108 = 0u;
          v105 = 0u;
          v106 = 0u;
          v103 = 0u;
          v104 = 0u;
          v101 = 0u;
          v102 = 0u;
          v99 = 0u;
          v100 = 0u;
          v97 = 0u;
          v98 = 0u;
          v95 = 0u;
          v96 = 0u;
          LODWORD(v43) = _sc_log <= 0 ? 2 : 3;
          v93 = 0uLL;
          v94 = 0uLL;
          v43 = os_log_type_enabled(v41, v42) ? v43 : 2;
          v44 = v41;
          getAgentName = [v40 getAgentName];
          v91 = 138412290;
          v92 = getAgentName;
          LODWORD(v73) = 12;
          v46 = _os_log_send_and_compose_impl(v43, 0, &v93, 256, &_mh_execute_header, v44, v42, "Destroying agent %@ because something changed!", &v91, v73);

          __SC_log_send2();
          if (v46 != &v93)
          {
            free(v46);
          }
        }

        [(AgentController *)self destroyFloatingAgent:v40];
      }

      v37 = [v81 countByEnumeratingWithState:&v110 objects:v109 count:16];
    }

    while (v37);
  }

  v89 = 0u;
  v90 = 0u;
  v87 = 0u;
  v88 = 0u;
  v47 = v79;
  v48 = [v47 countByEnumeratingWithState:&v87 objects:v86 count:16];
  v49 = resolversCopy;
  v50 = v80;
  if (v48)
  {
    v51 = v48;
    v52 = *v88;
    do
    {
      for (m = 0; m != v51; m = m + 1)
      {
        if (*v88 != v52)
        {
          objc_enumerationMutation(v47);
        }

        [(AgentController *)self publishToAgent:*(*(&v87 + 1) + 8 * m)];
      }

      v51 = [v47 countByEnumeratingWithState:&v87 objects:v86 count:16];
    }

    while (v51);
  }

  v54 = v78;
  if (resolversCopy->var0 >= 1)
  {
    v55 = 0;
    do
    {
      v56 = *(*(&v49->var0 + 1) + 8 * v55);
      if (*v56 && ![(AgentController *)self isResolverPrivate:*(*(&v49->var0 + 1) + 8 * v55)]&& ![(AgentController *)self isResolverMulticast:v56])
      {
        v57 = [NSString stringWithUTF8String:*v56];
        v58 = [v50 indexOfObject:v57];
        if (v58 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v59 = v58;
          v60 = [v54 countForObject:v57];
          if (v60)
          {
            v61 = v60 + 1;
            v62 = [(AgentController *)self dataForResolver:v56];
            v63 = [NSString stringWithFormat:@"%@ #%lu", v57, v61];
            if ([(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v63 agentSubType:3 addPolicyOfType:6 publishData:v62])
            {
              floatingDNSAgentList5 = [(AgentController *)self floatingDNSAgentList];
              v65 = [floatingDNSAgentList5 objectForKey:v63];

              v66 = sub_1000035EC();
              typea = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v107 = 0u;
                v108 = 0u;
                v105 = 0u;
                v106 = 0u;
                v103 = 0u;
                v104 = 0u;
                v101 = 0u;
                v102 = 0u;
                v99 = 0u;
                v100 = 0u;
                v97 = 0u;
                v98 = 0u;
                v95 = 0u;
                v96 = 0u;
                if (_sc_log <= 0)
                {
                  v67 = 2;
                }

                else
                {
                  v67 = 3;
                }

                v93 = 0uLL;
                v94 = 0uLL;
                if (os_log_type_enabled(v66, typea))
                {
                  v68 = v67;
                }

                else
                {
                  v68 = 2;
                }

                v75 = v68;
                v77 = v66;
                v69 = v66;
                getAgentName2 = [v65 getAgentName];
                v91 = 138412290;
                v92 = getAgentName2;
                LODWORD(v74) = 12;
                v70 = _os_log_send_and_compose_impl(v75, 0, &v93, 256, &_mh_execute_header, v69, typea, "Duplicate DNS agent %@", &v91, v74);

                __SC_log_send2();
                if (v70 != &v93)
                {
                  free(v70);
                }

                v54 = v78;
                v66 = v77;
              }
            }
          }

          else
          {
            v62 = [(AgentController *)self dataForResolver:v56];
            floatingDNSAgentList6 = [(AgentController *)self floatingDNSAgentList];
            v72 = [(AgentController *)self getAgentWithSameDataAndSubType:floatingDNSAgentList6 data:v62 subType:3];

            if (v72)
            {
              [(AgentController *)self spawnMappedFloatingAgent:v72 entity:v57 agentSubType:3 addPolicyOfType:6 updateData:v62];
            }

            else
            {
              [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v57 agentSubType:3 addPolicyOfType:6 publishData:v62];
            }
          }

          [v80 removeObjectAtIndex:v59];
          [v54 addObject:v57];

          v57 = v62;
          v49 = resolversCopy;
        }

        v50 = v80;
      }

      ++v55;
    }

    while (v55 < v49->var0);
  }
}

- (void)processDNSResolvers:(id *)resolvers
{
  selfCopy = self;
  v4 = [(AgentController *)self copyResolverList:resolvers];
  if (v4)
  {
    floatingDNSAgentList = [(AgentController *)selfCopy floatingDNSAgentList];
    v65 = [(AgentController *)selfCopy getAgentList:floatingDNSAgentList agentType:2 agentSubType:5];

    floatingDNSAgentList2 = [(AgentController *)selfCopy floatingDNSAgentList];
    v68 = [(AgentController *)selfCopy getAgentList:floatingDNSAgentList2 agentType:2 agentSubType:6];

    if (v4->var1 && v4->var0)
    {
      v7 = 0;
      v57 = kSCPropNetDNSEncryptedServers;
      v58 = v4;
      while (1)
      {
        v8 = v4->var0[v7];
        if (v7)
        {
          v9 = [NSString stringWithFormat:@"_defaultDNS #%u", (v7 + 1)];
        }

        else
        {
          v9 = @"_defaultDNS";
        }

        if (*(v8 + 10))
        {
          v10 = [NSString stringWithUTF8String:?];
          v11 = [v10 componentsSeparatedByString:@" "];
          if ([v11 count] == 3)
          {
            v12 = [v11 objectAtIndexedSubscript:1];
            v13 = v12;
            if (v12)
            {
              NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v12, kSCEntNetDNS);
              v66 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
              v12 = [v66 objectForKeyedSubscript:v57];
            }

            else
            {
              NetworkServiceEntity = 0;
              v66 = 0;
            }
          }

          else
          {
            v13 = 0;
            NetworkServiceEntity = 0;
            v66 = 0;
            v12 = 0;
          }

          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          obj = v12;
          v15 = [(__CFString *)obj countByEnumeratingWithState:&v71 objects:v70 count:16];
          if (v15)
          {
            v16 = v15;
            v59 = v13;
            v60 = NetworkServiceEntity;
            v61 = v11;
            v62 = v10;
            v63 = v8;
            v64 = v7;
            v17 = 0;
            v18 = 0;
            v69 = *v72;
            while (1)
            {
              v19 = 0;
              v20 = v17;
              v21 = v18;
              do
              {
                if (*v72 != v69)
                {
                  objc_enumerationMutation(obj);
                }

                v18 = *(*(&v71 + 1) + 8 * v19);

                v22 = v9;
                v23 = [NSString stringWithFormat:@"Encrypted-%@", v9];
                v24 = [(AgentController *)selfCopy dataForEncryptedResolver:v18];
                [(AgentController *)selfCopy floatingDNSAgentList];
                v26 = v25 = selfCopy;
                v17 = [v26 objectForKey:v23];

                if (v17)
                {
                  [v68 removeObject:v23];
                  getAgentData = [v17 getAgentData];
                  v28 = [v24 isEqual:getAgentData];

                  selfCopy = v25;
                  if (v28)
                  {
                    goto LABEL_23;
                  }

                  [(AgentController *)v25 destroyFloatingAgent:v17];
                }

                [(AgentController *)v25 spawnFloatingAgent:objc_opt_class() entity:v23 agentSubType:6 addPolicyOfType:0 publishData:v24];
                selfCopy = v25;
LABEL_23:

                v19 = v19 + 1;
                v20 = v17;
                v21 = v18;
                v9 = v22;
              }

              while (v16 != v19);
              v16 = [(__CFString *)obj countByEnumeratingWithState:&v71 objects:v70 count:16];
              if (!v16)
              {

                v4 = v58;
                v13 = v59;
                v8 = v63;
                v7 = v64;
                v11 = v61;
                v10 = v62;
                NetworkServiceEntity = v60;
                break;
              }
            }
          }
        }

        v29 = [(AgentController *)selfCopy dataForResolver:v8];
        [(AgentController *)selfCopy floatingDNSAgentList];
        v31 = v30 = selfCopy;
        v32 = [v31 objectForKey:v9];

        if (!v32)
        {
          goto LABEL_30;
        }

        [v65 removeObject:v9];
        getAgentData2 = [v32 getAgentData];
        v34 = [v29 isEqual:getAgentData2];

        selfCopy = v30;
        if ((v34 & 1) == 0)
        {
          break;
        }

LABEL_31:

        if (++v7 >= v4->var1)
        {
          goto LABEL_32;
        }
      }

      [(AgentController *)v30 destroyFloatingAgent:v32];
LABEL_30:
      [(AgentController *)v30 spawnFloatingAgent:objc_opt_class() entity:v9 agentSubType:5 addPolicyOfType:0 publishData:v29];
      selfCopy = v30;
      goto LABEL_31;
    }

LABEL_32:
    floatingDNSAgentList3 = [(AgentController *)selfCopy floatingDNSAgentList];
    [(AgentController *)selfCopy deleteAgentList:floatingDNSAgentList3 list:v65];

    floatingDNSAgentList4 = [(AgentController *)selfCopy floatingDNSAgentList];
    [(AgentController *)selfCopy deleteAgentList:floatingDNSAgentList4 list:v68];

    floatingDNSAgentList5 = [(AgentController *)selfCopy floatingDNSAgentList];
    v38 = [(AgentController *)selfCopy getAgentList:floatingDNSAgentList5 agentType:2 agentSubType:7];

    if (v4->var3 && v4->var2)
    {
      v39 = 0;
      do
      {
        v40 = v4->var2[v39];
        if (v40)
        {
          if (*v40)
          {
            v41 = [NSString stringWithUTF8String:?];
            if (v41)
            {
              v42 = v41;
              [(AgentController *)selfCopy floatingDNSAgentList];
              v44 = v43 = selfCopy;
              v45 = [v44 objectForKey:v42];

              if (v45)
              {
                [v38 removeObject:v42];

                v42 = v45;
              }

              else
              {
                [(AgentController *)v43 spawnFloatingAgent:objc_opt_class() entity:v42 agentSubType:7 addPolicyOfType:6 publishData:0];
              }

              selfCopy = v43;
            }
          }
        }

        ++v39;
      }

      while (v39 < v4->var3);
    }

    floatingDNSAgentList6 = [(AgentController *)selfCopy floatingDNSAgentList];
    [(AgentController *)selfCopy deleteAgentList:floatingDNSAgentList6 list:v38];

    floatingDNSAgentList7 = [(AgentController *)selfCopy floatingDNSAgentList];
    v48 = [(AgentController *)selfCopy getAgentList:floatingDNSAgentList7 agentType:2 agentSubType:8];

    if (v4->var5 && v4->var4)
    {
      v49 = 0;
      do
      {
        v50 = v4->var4[v49];
        if (v50)
        {
          if (*v50)
          {
            v51 = [NSString stringWithUTF8String:?];
            if (v51)
            {
              v52 = v51;
              [(AgentController *)selfCopy floatingDNSAgentList];
              v54 = v53 = selfCopy;
              v55 = [v54 objectForKey:v52];

              if (v55)
              {
                [v48 removeObject:v52];

                v52 = v55;
              }

              else
              {
                [(AgentController *)v53 spawnFloatingAgent:objc_opt_class() entity:v52 agentSubType:8 addPolicyOfType:6 publishData:0];
              }

              selfCopy = v53;
            }
          }
        }

        ++v49;
      }

      while (v49 < v4->var5);
    }

    floatingDNSAgentList8 = [(AgentController *)selfCopy floatingDNSAgentList];
    [(AgentController *)selfCopy deleteAgentList:floatingDNSAgentList8 list:v48];
  }

  [(AgentController *)selfCopy freeResolverList:v4];
}

- (void)processScopedDNSResolvers:(id *)resolvers
{
  selfCopy = self;
  floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
  v6 = [(AgentController *)selfCopy getAgentList:floatingDNSAgentList agentType:2 agentSubType:1];

  floatingDNSAgentList2 = [(AgentController *)selfCopy floatingDNSAgentList];
  v8 = [(AgentController *)selfCopy getAgentList:floatingDNSAgentList2 agentType:2 agentSubType:2];

  if (SHIDWORD(resolvers->var1.var1) >= 1 && *&resolvers->var2)
  {
    v15 = 0;
    v45 = kSCPropNetDNSEncryptedServers;
    v58 = selfCopy;
    resolversCopy = resolvers;
    v47 = v6;
    do
    {
      v16 = *(*&resolvers->var2 + 8 * v15);
      v17 = sub_100038A68(*(v16 + 64), v64, v9, v10, v11, v12, v13, v14);
      if (v17)
      {
        v18 = [NSString stringWithUTF8String:v17];
        v19 = [NSString stringWithFormat:@"%s%@", "@", v18];
        if (*(v16 + 80))
        {
          v20 = [NSString stringWithUTF8String:?];
          v21 = [v20 componentsSeparatedByString:@" "];
          v55 = v18;
          if ([v21 count] == 3)
          {
            v22 = [v21 objectAtIndexedSubscript:1];
            if (v22)
            {
              v53 = v22;
              NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(kCFAllocatorDefault, kSCDynamicStoreDomainState, v22, kSCEntNetDNS);
              v52 = SCDynamicStoreCopyValue(0, NetworkServiceEntity);
              v22 = [v52 objectForKeyedSubscript:v45];
            }

            else
            {
              v53 = 0;
              NetworkServiceEntity = 0;
              v52 = 0;
            }
          }

          else
          {
            v53 = 0;
            NetworkServiceEntity = 0;
            v52 = 0;
            v22 = 0;
          }

          v62 = 0u;
          v63 = 0u;
          v60 = 0u;
          v61 = 0u;
          obj = v22;
          v27 = [(__CFString *)obj countByEnumeratingWithState:&v60 objects:v59 count:16];
          if (v27)
          {
            v28 = v27;
            v48 = v21;
            v49 = v20;
            v50 = v16;
            v51 = v15;
            v29 = v19;
            v57 = 0;
            v30 = 0;
            v31 = *v61;
            v32 = &xpc_array_set_string_ptr;
            while (1)
            {
              for (i = 0; i != v28; i = i + 1)
              {
                v34 = v30;
                if (*v61 != v31)
                {
                  objc_enumerationMutation(obj);
                }

                v30 = *(*(&v60 + 1) + 8 * i);

                v35 = [v32[103] stringWithFormat:@"Encrypted-%@", v29];
                selfCopy = v58;
                v36 = [(AgentController *)v58 dataForEncryptedResolver:v30];
                v37 = [v8 indexOfObject:v35];
                if (v37 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  [(AgentController *)v58 spawnFloatingAgent:objc_opt_class() entity:v35 agentSubType:2 addPolicyOfType:8 publishData:v36];
                  goto LABEL_26;
                }

                v38 = v8;
                [v8 removeObjectAtIndex:v37];
                floatingDNSAgentList3 = [(AgentController *)v58 floatingDNSAgentList];
                v40 = [floatingDNSAgentList3 objectForKey:v35];

                if (v40)
                {
                  [v40 updateAgentData:v36];
                  if ([v40 shouldUpdateAgent])
                  {
                    selfCopy = v58;
                    [(AgentController *)v58 publishToAgent:v40];
                    v57 = v40;
                    v8 = v38;
                    v32 = &xpc_array_set_string_ptr;
                    goto LABEL_26;
                  }

                  v57 = v40;
                }

                else
                {
                  v57 = 0;
                }

                v8 = v38;
                v32 = &xpc_array_set_string_ptr;
                selfCopy = v58;
LABEL_26:
              }

              v28 = [(__CFString *)obj countByEnumeratingWithState:&v60 objects:v59 count:16];
              if (!v28)
              {

                resolvers = resolversCopy;
                v6 = v47;
                v19 = v29;
                v16 = v50;
                v15 = v51;
                v21 = v48;
                v20 = v49;
                goto LABEL_30;
              }
            }
          }

          v57 = 0;
LABEL_30:

          v18 = v55;
        }

        else
        {
          v57 = 0;
        }

        v23 = [(AgentController *)selfCopy dataForResolver:v16];
        v41 = [v6 indexOfObject:v19];
        if (v41 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(AgentController *)selfCopy spawnFloatingAgent:objc_opt_class() entity:v19 agentSubType:1 addPolicyOfType:8 publishData:v23];
          v26 = v19;
          v24 = 0;
        }

        else
        {
          [v6 removeObjectAtIndex:v41];
          floatingDNSAgentList4 = [(AgentController *)selfCopy floatingDNSAgentList];
          v26 = v19;
          v24 = [floatingDNSAgentList4 objectForKey:v19];

          if (v24 && ([v24 updateAgentData:v23], objc_msgSend(v24, "shouldUpdateAgent")))
          {
            selfCopy = v58;
            [(AgentController *)v58 publishToAgent:v24];
          }

          else
          {
            selfCopy = v58;
          }
        }

        v25 = v57;
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v18 = 0;
        v26 = 0;
      }

      ++v15;
    }

    while (v15 < SHIDWORD(resolvers->var1.var1));
  }

  floatingDNSAgentList5 = [(AgentController *)selfCopy floatingDNSAgentList];
  [(AgentController *)selfCopy deleteAgentList:floatingDNSAgentList5 list:v6];

  floatingDNSAgentList6 = [(AgentController *)selfCopy floatingDNSAgentList];
  [(AgentController *)selfCopy deleteAgentList:floatingDNSAgentList6 list:v8];
}

- (void)processServiceSpecificDNSResolvers:(id *)resolvers
{
  floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
  v19 = [(AgentController *)self getAgentList:floatingDNSAgentList agentType:2 agentSubType:9];

  if (SLODWORD(resolvers->var4) >= 1 && *(&resolvers->var4 + 4))
  {
    v6 = 0;
    v7 = &xpc_array_set_string_ptr;
    v8 = "@";
    do
    {
      v9 = *(*(&resolvers->var4 + 4) + 8 * v6);
      v10 = *(v9 + 76);
      if (v10)
      {
        v11 = [v7[103] stringWithFormat:@"%s%u", v8, v10];
        v12 = [(AgentController *)self dataForResolver:v9];
        v13 = [v19 indexOfObject:v11];
        if (v13 == 0x7FFFFFFFFFFFFFFFLL)
        {
          [(AgentController *)self spawnFloatingAgent:objc_opt_class() entity:v11 agentSubType:9 addPolicyOfType:-1 publishData:v12];
          v14 = 0;
        }

        else
        {
          v15 = v8;
          v16 = v7;
          [v19 removeObjectAtIndex:v13];
          floatingDNSAgentList2 = [(AgentController *)self floatingDNSAgentList];
          v14 = [floatingDNSAgentList2 objectForKey:v11];

          if (v14)
          {
            [v14 updateAgentData:v12];
            if ([v14 shouldUpdateAgent])
            {
              [(AgentController *)self publishToAgent:v14];
            }
          }

          v7 = v16;
          v8 = v15;
        }
      }

      else
      {
        v12 = 0;
        v14 = 0;
        v11 = 0;
      }

      ++v6;
    }

    while (v6 < SLODWORD(resolvers->var4));
  }

  floatingDNSAgentList3 = [(AgentController *)self floatingDNSAgentList];
  [(AgentController *)self deleteAgentList:floatingDNSAgentList3 list:v19];
}

- (void)processOnionResolver:(id *)resolver
{
  if (!resolver)
  {
    goto LABEL_17;
  }

  if (resolver->var0 < 1)
  {
LABEL_6:
    if (qword_100081BC8)
    {
      return;
    }

    v6 = [NEPolicy alloc];
    v7 = +[NEPolicyResult drop];
    v8 = [NEPolicyCondition domain:@"onion"];
    v48 = v8;
    v9 = [NSArray arrayWithObjects:&v48 count:1];
    v10 = [v6 initWithOrder:500 result:v7 conditions:v9];

    if (!v10)
    {
      goto LABEL_48;
    }

    policySession = [(AgentController *)self policySession];
    qword_100081BC8 = [policySession addPolicy:v10];

    policySession2 = [(AgentController *)self policySession];
    LOBYTE(policySession) = [policySession2 apply];

    if (policySession)
    {
      v13 = sub_1000035EC();
      v14 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        if (_sc_log <= 0)
        {
          v15 = 2;
        }

        else
        {
          v15 = 3;
        }

        if (os_log_type_enabled(v13, v14))
        {
          v16 = v15;
        }

        else
        {
          v16 = 2;
        }

        v31[0] = 0;
        v17 = _os_log_send_and_compose_impl(v16, 0, &v32, 256, &_mh_execute_header, v13, v14, "Added a [.onion] drop policy", v31, 2);
LABEL_45:
        __SC_log_send2();
        if (v17 != &v32)
        {
          free(v17);
        }
      }
    }

    else
    {
      qword_100081BC8 = 0;
      v13 = sub_1000035EC();
      v28 = _SC_syslog_os_log_mapping();
      if (__SC_log_enabled())
      {
        v46 = 0u;
        v47 = 0u;
        v44 = 0u;
        v45 = 0u;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        if (_sc_log <= 0)
        {
          v29 = 2;
        }

        else
        {
          v29 = 3;
        }

        if (os_log_type_enabled(v13, v28))
        {
          v30 = v29;
        }

        else
        {
          v30 = 2;
        }

        v31[0] = 0;
        v17 = _os_log_send_and_compose_impl(v30, 0, &v32, 256, &_mh_execute_header, v13, v28, "Could not add a [.onion] drop policy", v31, 2);
        goto LABEL_45;
      }
    }

    goto LABEL_48;
  }

  v5 = 0;
  while (![(AgentController *)self isResolverOnion:*(*(&resolver->var0 + 1) + 8 * v5)])
  {
    if (++v5 >= resolver->var0)
    {
      goto LABEL_6;
    }
  }

LABEL_17:
  if (!qword_100081BC8)
  {
    return;
  }

  policySession3 = [(AgentController *)self policySession];
  [policySession3 removePolicyWithID:qword_100081BC8];

  policySession4 = [(AgentController *)self policySession];
  apply = [policySession4 apply];

  if (apply)
  {
    qword_100081BC8 = 0;
    v10 = sub_1000035EC();
    v21 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      if (_sc_log <= 0)
      {
        v22 = 2;
      }

      else
      {
        v22 = 3;
      }

      if (os_log_type_enabled(v10, v21))
      {
        v23 = v22;
      }

      else
      {
        v23 = 2;
      }

      v31[0] = 0;
      v24 = _os_log_send_and_compose_impl(v23, 0, &v32, 256, &_mh_execute_header, v10, v21, "Removed the [.onion] drop policy", v31, 2);
      goto LABEL_35;
    }
  }

  else
  {
    v10 = sub_1000035EC();
    v25 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      if (_sc_log <= 0)
      {
        v26 = 2;
      }

      else
      {
        v26 = 3;
      }

      if (os_log_type_enabled(v10, v25))
      {
        v27 = v26;
      }

      else
      {
        v27 = 2;
      }

      v31[0] = 0;
      v24 = _os_log_send_and_compose_impl(v27, 0, &v32, 256, &_mh_execute_header, v10, v25, "Could not remove the [.onion] drop policy", v31, 2);
LABEL_35:
      __SC_log_send2();
      if (v24 != &v32)
      {
        free(v24);
      }
    }
  }

LABEL_48:
}

- (void)processDNSChanges
{
  v3 = dns_configuration_copy();
  if (v3)
  {
    [(AgentController *)self processDNSResolvers:v3];
    [(AgentController *)self processScopedDNSResolvers:v3];
    [(AgentController *)self processSupplementalDNSResolvers:v3];
    [(AgentController *)self processServiceSpecificDNSResolvers:v3];
  }

  else
  {
    v4 = sub_1000035EC();
    v5 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v23, 0, sizeof(v23));
      v6 = _sc_log <= 0 ? 2 : 3;
      v7 = os_log_type_enabled(v4, v5) ? v6 : 2;
      v17[0] = 0;
      v8 = _os_log_send_and_compose_impl(v7, 0, v23, 256, &_mh_execute_header, v4, v5, "No DNS configuration", v17, 2);
      __SC_log_send2();
      if (v8 != v23)
      {
        free(v8);
      }
    }

    floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
    v10 = [floatingDNSAgentList copy];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v11 = v10;
    v12 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v20;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v20 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [v11 objectForKey:*(*(&v19 + 1) + 8 * i)];
          [(AgentController *)self destroyFloatingAgent:v16];
        }

        v13 = [v11 countByEnumeratingWithState:&v19 objects:v18 count:16];
      }

      while (v13);
    }
  }

  [(AgentController *)self processOnionResolver:v3];
  [(AgentController *)self applyPolicies];
  if (v3)
  {
    dns_configuration_free();
  }
}

- (const)copyConfigAgentData:(id)data uuid:(unsigned __int8)uuid[16] length:(unint64_t *)length
{
  dataCopy = data;
  v8 = dataCopy;
  if (!length)
  {
    v20 = sub_1000035EC();
    v25 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
LABEL_32:

      getAgentData = 0;
      v14 = 0;
      goto LABEL_33;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *uu1 = 0u;
    v38 = 0u;
    if (_sc_log <= 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    if (os_log_type_enabled(v20, v25))
    {
      v27 = v26;
    }

    else
    {
      v27 = 2;
    }

    v24 = _os_log_send_and_compose_impl(v27, 0, uu1, 256, &_mh_execute_header, v20, v25, "Invalid parameters for copying agent data");
LABEL_30:
    v28 = v24;
    __SC_log_send2();
    if (v28 != uu1)
    {
      free(v28);
    }

    goto LABEL_32;
  }

  *length = 0;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v9 = dataCopy;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v32 count:16];
  if (!v10)
  {
LABEL_10:

LABEL_14:
    memset(out, 0, 37);
    uuid_unparse(uuid, out);
    v20 = sub_1000035EC();
    v21 = _SC_syslog_os_log_mapping();
    if (!__SC_log_enabled())
    {
      goto LABEL_32;
    }

    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    *uu1 = 0u;
    v38 = 0u;
    if (_sc_log <= 0)
    {
      v22 = 2;
    }

    else
    {
      v22 = 3;
    }

    if (os_log_type_enabled(v20, v21))
    {
      v23 = v22;
    }

    else
    {
      v23 = 2;
    }

    v24 = _os_log_send_and_compose_impl(v23, 0, uu1, 256, &_mh_execute_header, v20, v21, "Invalid config agent uuid %s specified", &v30);
    goto LABEL_30;
  }

  v11 = v10;
  v12 = *v34;
LABEL_4:
  v13 = 0;
  while (1)
  {
    if (*v34 != v12)
    {
      objc_enumerationMutation(v9);
    }

    v14 = [v9 objectForKey:*(*(&v33 + 1) + 8 * v13)];
    memset(uu1, 0, sizeof(uu1));
    getAgentUUID = [v14 getAgentUUID];
    [getAgentUUID getUUIDBytes:uu1];

    if (!uuid_compare(uu1, uuid))
    {
      break;
    }

    if (v11 == ++v13)
    {
      v11 = [v9 countByEnumeratingWithState:&v33 objects:v32 count:16];
      if (v11)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  if (!v14)
  {
    goto LABEL_14;
  }

  getAgentData = [v14 getAgentData];
  v17 = [getAgentData length];
  if (v17)
  {
    v18 = v17;
    *length = v17;
    v19 = malloc_type_malloc(v17, 0x9EFCCC3AuLL);
    memcpy(v19, [getAgentData bytes], v18);
    goto LABEL_34;
  }

LABEL_33:
  v19 = 0;
LABEL_34:

  return v19;
}

- (const)copyProxyAgentData:(unsigned __int8)data[16] length:(unint64_t *)length
{
  floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
  v8 = [(AgentController *)self copyConfigAgentData:floatingProxyAgentList uuid:data length:length];

  return v8;
}

- (const)copyDNSAgentData:(unsigned __int8)data[16] length:(unint64_t *)length
{
  floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
  v8 = [(AgentController *)self copyConfigAgentData:floatingDNSAgentList uuid:data length:length];

  return v8;
}

- (id)dataLengthSanityCheck:(id)check
{
  checkCopy = check;
  getAgentData = [checkCopy getAgentData];
  if ([getAgentData length] < 0x401)
  {
    v8 = 0;
  }

  else
  {
    v10[0] = 0;
    v10[1] = 0;
    v5 = +[NSMutableDictionary dictionary];
    getAgentUUID = [checkCopy getAgentUUID];
    [getAgentUUID getUUIDBytes:v10];
    v7 = [[NSData alloc] initWithBytes:v10 length:16];
    [v5 setValue:v7 forKey:@"OutOfBandDataUUID"];
    v8 = [NSPropertyListSerialization dataWithPropertyList:v5 format:200 options:0 error:0];
  }

  return v8;
}

- (id)sanitizeEntity:(id)entity
{
  entityCopy = entity;
  v4 = [entityCopy rangeOfString:@" #"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = entityCopy;
  }

  else
  {
    v5 = [entityCopy substringToIndex:v4];
  }

  v6 = v5;

  return v6;
}

- (id)sanitizeInterfaceName:(id)name
{
  nameCopy = name;
  v4 = [nameCopy rangeOfString:@"@"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = nameCopy;
  }

  else
  {
    v5 = [nameCopy substringFromIndex:v4 + 1];
  }

  v6 = v5;

  return v6;
}

- (int)entityInstanceNumber:(id)number
{
  numberCopy = number;
  v4 = [numberCopy rangeOfString:@" #"];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    intValue = 0;
  }

  else
  {
    v6 = [numberCopy substringFromIndex:v4 + 2];
    intValue = [v6 intValue];
  }

  return intValue;
}

- (void)cleanConflictingAgentsFromList:(id)list new_list:(id)new_list agentDictionary:(id)dictionary
{
  listCopy = list;
  new_listCopy = new_list;
  obj = listCopy;
  dictionaryCopy = dictionary;
  v68 = 0u;
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v9 = [listCopy countByEnumeratingWithState:&v68 objects:v67 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v69;
    selfCopy = self;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v69 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v68 + 1) + 8 * i);
        v14 = [(AgentController *)self sanitizeEntity:v13];
        if (([v14 isEqualToString:v13] & 1) == 0)
        {
          v15 = [dictionaryCopy objectForKey:v14];
          [(AgentController *)self destroyFloatingAgent:v15];
          v16 = [dictionaryCopy objectForKey:v13];

          [(AgentController *)self destroyFloatingAgent:v16];
          v17 = sub_1000035EC();
          v18 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            if (_sc_log <= 0)
            {
              v19 = 2;
            }

            else
            {
              v19 = 3;
            }

            v51 = 0uLL;
            v52 = 0uLL;
            v20 = os_log_type_enabled(v17, v18);
            v47 = 138412546;
            if (v20)
            {
              v21 = v19;
            }

            else
            {
              v21 = 2;
            }

            v48 = v14;
            v49 = 2112;
            v50 = v13;
            LODWORD(v35) = 22;
            v22 = _os_log_send_and_compose_impl(v21, 0, &v51, 256, &_mh_execute_header, v17, v18, "Removing conflicting domain: %@, %@", &v47, v35);
            __SC_log_send2();
            if (v22 != &v51)
            {
              free(v22);
            }

            self = selfCopy;
          }
        }
      }

      v10 = [obj countByEnumeratingWithState:&v68 objects:v67 count:16];
    }

    while (v10);
  }

  v23 = [[NSCountedSet alloc] initWithArray:new_listCopy];
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  obja = obj;
  v24 = [obja countByEnumeratingWithState:&v43 objects:v42 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v44;
    do
    {
      v27 = 0;
      v38 = v25;
      do
      {
        if (*v44 != v26)
        {
          objc_enumerationMutation(obja);
        }

        v28 = *(*(&v43 + 1) + 8 * v27);
        if ([v23 countForObject:v28] >= 2)
        {
          v29 = [dictionaryCopy objectForKey:v28];
          [(AgentController *)self destroyFloatingAgent:v29];
          v30 = sub_1000035EC();
          v31 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v65 = 0u;
            v66 = 0u;
            v63 = 0u;
            v64 = 0u;
            v61 = 0u;
            v62 = 0u;
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v55 = 0u;
            v56 = 0u;
            v53 = 0u;
            v54 = 0u;
            if (_sc_log <= 0)
            {
              v32 = 2;
            }

            else
            {
              v32 = 3;
            }

            v51 = 0uLL;
            v52 = 0uLL;
            if (os_log_type_enabled(v30, v31))
            {
              v33 = v32;
            }

            else
            {
              v33 = 2;
            }

            v47 = 138412290;
            v48 = v28;
            LODWORD(v35) = 12;
            v34 = _os_log_send_and_compose_impl(v33, 0, &v51, 256, &_mh_execute_header, v30, v31, "Removing domain %@ as it has duplicates in the current config", &v47, v35);
            __SC_log_send2();
            if (v34 != &v51)
            {
              free(v34);
            }

            v25 = v38;
          }
        }

        v27 = v27 + 1;
      }

      while (v25 != v27);
      v25 = [obja countByEnumeratingWithState:&v43 objects:v42 count:16];
    }

    while (v25);
  }
}

- (id)getAgentList:(id)list agentType:(unint64_t)type agentSubType:(unint64_t)subType
{
  listCopy = list;
  v8 = +[NSMutableArray array];
  allValues = [listCopy allValues];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = [allValues countByEnumeratingWithState:&v18 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v14 = *(*(&v18 + 1) + 8 * i);
        if ([v14 getAgentType] == type && objc_msgSend(v14, "getAgentSubType") == subType)
        {
          getAssociatedEntity = [v14 getAssociatedEntity];
          [v8 addObject:getAssociatedEntity];
        }
      }

      v11 = [allValues countByEnumeratingWithState:&v18 objects:v17 count:16];
    }

    while (v11);
  }

  return v8;
}

- (void)deleteAgentList:(id)list list:(id)a4
{
  listCopy = list;
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [listCopy objectForKey:*(*(&v14 + 1) + 8 * v11)];
        [(AgentController *)self destroyFloatingAgent:v12];

        v11 = v11 + 1;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v13 count:16];
    }

    while (v9);
  }
}

- (id)getAgentWithSameDataAndSubType:(id)type data:(id)data subType:(unint64_t)subType
{
  typeCopy = type;
  dataCopy = data;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = typeCopy;
  v10 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v21;
LABEL_3:
    v13 = 0;
    while (1)
    {
      if (*v21 != v12)
      {
        objc_enumerationMutation(v9);
      }

      v14 = [v9 objectForKey:*(*(&v20 + 1) + 8 * v13)];
      getAgentData = [v14 getAgentData];
      v16 = [getAgentData isEqual:dataCopy];

      if (v16)
      {
        if ([v14 getAgentSubType] == subType)
        {
          getRegistrationObject = [v14 getRegistrationObject];

          if (getRegistrationObject)
          {
            break;
          }
        }
      }

      if (v11 == ++v13)
      {
        v11 = [v9 countByEnumeratingWithState:&v20 objects:v19 count:16];
        if (v11)
        {
          goto LABEL_3;
        }

        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14;
}

- (BOOL)addPolicyToFloatingAgent:(id)agent domain:(id)domain agentUUIDToUse:(id)use policyType:(int64_t)type useControlPolicySession:(BOOL)session
{
  sessionCopy = session;
  agentCopy = agent;
  useCopy = use;
  domainCopy = domain;
  v15 = agentCopy;
  getAgentType = [agentCopy getAgentType];
  v17 = getAgentType;
  if (getAgentType == 2)
  {
    v18 = 0;
  }

  else
  {
    v18 = 5000;
  }

  if (getAgentType == 2)
  {
    v19 = 5000;
  }

  else
  {
    v19 = 0;
  }

  v113 = [(AgentController *)self entityInstanceNumber:domainCopy];
  v116 = [(AgentController *)self sanitizeEntity:domainCopy];

  if (type > 6)
  {
    if (type != 7)
    {
      if (type != 8)
      {
        goto LABEL_14;
      }

      v111 = v18 | 0x64;
      v22 = [(AgentController *)self sanitizeInterfaceName:v116];

      v20 = [NEPolicyCondition scopedInterface:v22];
      v21 = 250;
      v116 = v22;
LABEL_26:
      v112 = useCopy;
      v30 = [NEPolicyResult netAgentUUID:useCopy];
      v31 = [NEPolicy alloc];
      v32 = v31;
      v115 = v20;
      if (v20)
      {
        v121 = v20;
        v33 = [NSArray arrayWithObjects:&v121 count:1];
        v34 = [v32 initWithOrder:v111 + v113 result:v30 conditions:v33];

        if (v34)
        {
LABEL_28:
          if (sessionCopy)
          {
            controlPolicySession = [(AgentController *)self controlPolicySession];

            if (!controlPolicySession)
            {
              createPolicySession = [(AgentController *)self createPolicySession];
              [(AgentController *)self setControlPolicySession:createPolicySession];

              controlPolicySession2 = [(AgentController *)self controlPolicySession];

              if (!controlPolicySession2)
              {
                v84 = sub_1000035EC();
                v85 = _SC_syslog_os_log_mapping();
                v29 = v15;
                if (__SC_log_enabled())
                {
                  v136 = 0u;
                  v137 = 0u;
                  v134 = 0u;
                  v135 = 0u;
                  v132 = 0u;
                  v133 = 0u;
                  v130 = 0u;
                  v131 = 0u;
                  v128 = 0u;
                  v129 = 0u;
                  v126 = 0u;
                  v127 = 0u;
                  v124 = 0u;
                  v125 = 0u;
                  v122 = 0u;
                  v123 = 0u;
                  LODWORD(v86) = _sc_log <= 0 ? 2 : 3;
                  v86 = os_log_type_enabled(v84, v85) ? v86 : 2;
                  v87 = v84;
                  getAgentName = [v15 getAgentName];
                  v119 = 138412290;
                  v120 = getAgentName;
                  v89 = _os_log_send_and_compose_impl(v86, 0, &v122, 256, &_mh_execute_header, v87, v85, "Could not create a control policy session for agent %@", &v119, 12);

                  __SC_log_send2();
                  if (v89 != &v122)
                  {
                    free(v89);
                  }
                }

                v62 = 0;
                goto LABEL_110;
              }

              controlPolicySession3 = [(AgentController *)self controlPolicySession];
              [controlPolicySession3 setPriority:100];
            }

            controlPolicySession4 = [(AgentController *)self controlPolicySession];
          }

          else
          {
            controlPolicySession4 = [(AgentController *)self policySession];
          }

          v46 = controlPolicySession4;
          [v15 setPreferredPolicySession:controlPolicySession4];

          preferredPolicySession = [v15 preferredPolicySession];
          v47 = [preferredPolicySession addPolicy:v34];
          if (v47)
          {
            v48 = v47;
            v49 = [NEPolicyResult skipWithOrder:v19];

            v50 = [NEPolicy alloc];
            v51 = v50;
            v109 = v49;
            if (v115)
            {
              v118 = v115;
              v52 = [NSArray arrayWithObjects:&v118 count:1];
              v53 = v49;
              v54 = v52;
              v55 = [v51 initWithOrder:(v18 + v21) result:v53 conditions:v52];

              v34 = v54;
            }

            else
            {
              v55 = [v50 initWithOrder:(v18 + v21) result:v49 conditions:0];
            }

            v29 = v15;
            if (!v55)
            {
              v71 = sub_1000035EC();
              v72 = _SC_syslog_os_log_mapping();
              useCopy = v112;
              v23 = v115;
              if (__SC_log_enabled())
              {
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                if (_sc_log <= 0)
                {
                  LODWORD(v73) = 2;
                }

                else
                {
                  LODWORD(v73) = 3;
                }

                if (os_log_type_enabled(v71, v72))
                {
                  v73 = v73;
                }

                else
                {
                  v73 = 2;
                }

                v74 = v71;
                getAgentName2 = [v15 getAgentName];
                v119 = 138412290;
                v120 = getAgentName2;
                v76 = _os_log_send_and_compose_impl(v73, 0, &v122, 256, &_mh_execute_header, v74, v72, "Could not create a policy for agent %@", &v119, 12);

                __SC_log_send2();
                if (v76 != &v122)
                {
                  free(v76);
                }

                v23 = v115;
              }

              goto LABEL_132;
            }

            v63 = [preferredPolicySession addPolicy:v55];
            useCopy = v112;
            v23 = v115;
            if (!v63)
            {
              v77 = sub_1000035EC();
              v78 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                if (_sc_log <= 0)
                {
                  LODWORD(v79) = 2;
                }

                else
                {
                  LODWORD(v79) = 3;
                }

                if (os_log_type_enabled(v77, v78))
                {
                  v79 = v79;
                }

                else
                {
                  v79 = 2;
                }

                v80 = v77;
                getAgentName3 = [v15 getAgentName];
                v119 = 138412290;
                v120 = getAgentName3;
                v82 = _os_log_send_and_compose_impl(v79, 0, &v122, 256, &_mh_execute_header, v80, v78, "Could not add a skip policy for agent %@", &v119, 12);

                __SC_log_send2();
                if (v82 != &v122)
                {
                  free(v82);
                }

                useCopy = v112;
                v23 = v115;
              }

              goto LABEL_132;
            }

            v64 = v63;
            if (v17 != 1)
            {
              v83 = 0;
LABEL_105:
              policyDB = [(AgentController *)self policyDB];
              getAgentName4 = [v29 getAgentName];
              v93 = [policyDB objectForKey:getAgentName4];

              if (!v93)
              {
                v93 = +[NSMutableArray array];
              }

              v94 = [NSNumber numberWithUnsignedInteger:v48];
              [v93 addObject:v94];

              v95 = [NSNumber numberWithUnsignedInteger:v64];
              [v93 addObject:v95];

              if (v83)
              {
                v96 = [NSNumber numberWithUnsignedInteger:v83];
                [v93 addObject:v96];
              }

              policyDB2 = [(AgentController *)self policyDB];
              getAgentName5 = [v29 getAgentName];
              [policyDB2 setObject:v93 forKey:getAgentName5];

              v62 = 1;
LABEL_110:
              useCopy = v112;
              v23 = v115;
              goto LABEL_134;
            }

            v65 = [NSString stringWithUTF8String:nw_proxy_config_get_agent_domain()];
            v108 = [NSString stringWithUTF8String:nw_proxy_config_get_system_privacy_proxy_agent_type()];
            v66 = [NEPolicyResult removeNetworkAgentDomain:v65 agentType:?];
            v67 = [NEPolicy alloc];
            v68 = v67;
            if (v115)
            {
              v117 = v115;
              v69 = [NSArray arrayWithObjects:&v117 count:1];
              v70 = [v68 initWithOrder:v111 + v113 result:v66 conditions:v69];

              v55 = v69;
            }

            else
            {
              v70 = [v67 initWithOrder:v111 + v113 result:v66 conditions:0];
            }

            if (v70)
            {
              v90 = [preferredPolicySession addPolicy:v70];
              if (v90)
              {
                v83 = v90;

                v55 = v70;
                goto LABEL_105;
              }

              v99 = sub_1000035EC();
              v104 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v114 = v65;
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                if (_sc_log <= 0)
                {
                  LODWORD(v105) = 2;
                }

                else
                {
                  LODWORD(v105) = 3;
                }

                if (os_log_type_enabled(v99, v104))
                {
                  v105 = v105;
                }

                else
                {
                  v105 = 2;
                }

                v99 = v99;
                getAgentName6 = [v29 getAgentName];
                v119 = 138412290;
                v120 = getAgentName6;
                v103 = _os_log_send_and_compose_impl(v105, 0, &v122, 256, &_mh_execute_header, v99, v104, "Could not add a privacy proxy removal policy for agent %@", &v119, 12);
LABEL_127:
                v106 = v103;

                __SC_log_send2();
                useCopy = v112;
                if (v106 != &v122)
                {
                  free(v106);
                }

                v65 = v114;
                v23 = v115;
                goto LABEL_131;
              }
            }

            else
            {
              v99 = sub_1000035EC();
              v100 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v114 = v65;
                v136 = 0u;
                v137 = 0u;
                v134 = 0u;
                v135 = 0u;
                v132 = 0u;
                v133 = 0u;
                v130 = 0u;
                v131 = 0u;
                v128 = 0u;
                v129 = 0u;
                v126 = 0u;
                v127 = 0u;
                v124 = 0u;
                v125 = 0u;
                v122 = 0u;
                v123 = 0u;
                if (_sc_log <= 0)
                {
                  LODWORD(v101) = 2;
                }

                else
                {
                  LODWORD(v101) = 3;
                }

                if (os_log_type_enabled(v99, v100))
                {
                  v101 = v101;
                }

                else
                {
                  v101 = 2;
                }

                v99 = v99;
                getAgentName6 = [v29 getAgentName];
                v119 = 138412290;
                v120 = getAgentName6;
                v103 = _os_log_send_and_compose_impl(v101, 0, &v122, 256, &_mh_execute_header, v99, v100, "Could not create a policy for agent %@", &v119, 12);
                goto LABEL_127;
              }
            }

            useCopy = v112;
            v23 = v115;
LABEL_131:

LABEL_132:
LABEL_133:
            v62 = 0;
            goto LABEL_134;
          }

          v56 = sub_1000035EC();
          v57 = _SC_syslog_os_log_mapping();
          v29 = v15;
          v23 = v115;
          if (__SC_log_enabled())
          {
            v136 = 0u;
            v137 = 0u;
            v134 = 0u;
            v135 = 0u;
            v132 = 0u;
            v133 = 0u;
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v126 = 0u;
            v127 = 0u;
            v124 = 0u;
            v125 = 0u;
            v122 = 0u;
            v123 = 0u;
            if (_sc_log <= 0)
            {
              LODWORD(v58) = 2;
            }

            else
            {
              LODWORD(v58) = 3;
            }

            if (os_log_type_enabled(v56, v57))
            {
              v58 = v58;
            }

            else
            {
              v58 = 2;
            }

            v59 = v56;
            getAgentName7 = [v15 getAgentName];
            v119 = 138412290;
            v120 = getAgentName7;
            v61 = _os_log_send_and_compose_impl(v58, 0, &v122, 256, &_mh_execute_header, v59, v57, "Could not add a netagent policy for agent %@", &v119, 12);

            __SC_log_send2();
            if (v61 != &v122)
            {
              free(v61);
            }

            v23 = v115;
          }

          goto LABEL_60;
        }
      }

      else
      {
        v34 = [v31 initWithOrder:v111 + v113 result:v30 conditions:0];
        if (v34)
        {
          goto LABEL_28;
        }
      }

      v40 = sub_1000035EC();
      v41 = _SC_syslog_os_log_mapping();
      v29 = v15;
      v23 = v115;
      if (__SC_log_enabled())
      {
        v136 = 0u;
        v137 = 0u;
        v134 = 0u;
        v135 = 0u;
        v132 = 0u;
        v133 = 0u;
        v130 = 0u;
        v131 = 0u;
        v128 = 0u;
        v129 = 0u;
        v126 = 0u;
        v127 = 0u;
        v124 = 0u;
        v125 = 0u;
        v122 = 0u;
        v123 = 0u;
        if (_sc_log <= 0)
        {
          LODWORD(v42) = 2;
        }

        else
        {
          LODWORD(v42) = 3;
        }

        if (os_log_type_enabled(v40, v41))
        {
          v42 = v42;
        }

        else
        {
          v42 = 2;
        }

        v43 = v40;
        getAgentName8 = [v15 getAgentName];
        v119 = 138412290;
        v120 = getAgentName8;
        v45 = _os_log_send_and_compose_impl(v42, 0, &v122, 256, &_mh_execute_header, v43, v41, "Could not create a policy for agent %@", &v119, 12);

        __SC_log_send2();
        if (v45 != &v122)
        {
          free(v45);
        }

        v23 = v115;
      }

LABEL_60:
      v62 = 0;
      useCopy = v112;
      goto LABEL_134;
    }

    v111 = v18 + 1000;
    v20 = +[NEPolicyCondition allInterfaces];
LABEL_25:
    v21 = 1250;
    goto LABEL_26;
  }

  if (!type)
  {
    v20 = 0;
    v111 = v18 + 1000;
    goto LABEL_25;
  }

  if (type == 6)
  {
    v111 = v18 + 500;
    v20 = [NEPolicyCondition domain:v116];
    v21 = 750;
    goto LABEL_26;
  }

LABEL_14:
  v23 = sub_1000035EC();
  v24 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v136 = 0u;
    v137 = 0u;
    v134 = 0u;
    v135 = 0u;
    v132 = 0u;
    v133 = 0u;
    v130 = 0u;
    v131 = 0u;
    v128 = 0u;
    v129 = 0u;
    v126 = 0u;
    v127 = 0u;
    v124 = 0u;
    v125 = 0u;
    v122 = 0u;
    v123 = 0u;
    v25 = v23;
    if (_sc_log <= 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    if (os_log_type_enabled(v25, v24))
    {
      v27 = v26;
    }

    else
    {
      v27 = 2;
    }

    v23 = v25;
    LOWORD(v119) = 0;
    v28 = _os_log_send_and_compose_impl(v27, 0, &v122, 256, &_mh_execute_header, v25, v24, "Invalid policy condition specified", &v119, 2);
    __SC_log_send2();
    v29 = v15;
    if (v28 != &v122)
    {
      free(v28);
    }

    goto LABEL_133;
  }

  v62 = 0;
  v29 = v15;
LABEL_134:

  return v62;
}

- (BOOL)spawnFloatingAgent:(Class)agent entity:(id)entity agentSubType:(unint64_t)type addPolicyOfType:(int64_t)ofType publishData:(id)data
{
  entityCopy = entity;
  dataCopy = data;
  v14 = +[NSMutableDictionary dictionary];
  [v14 setValue:entityCopy forKey:@"EntityName"];
  v15 = [NSNumber numberWithUnsignedInteger:type];
  [v14 setValue:v15 forKey:@"AgentSubType"];

  v16 = [[agent alloc] initWithParameters:v14];
  if (![(AgentController *)self registerAgent:v16])
  {
    goto LABEL_20;
  }

  if (dataCopy)
  {
    [v16 updateAgentData:dataCopy];
    [(AgentController *)self publishToAgent:v16];
  }

  if ((ofType & 0x8000000000000000) == 0)
  {
    agentUUID = [v16 agentUUID];
    v18 = [(AgentController *)self addPolicyToFloatingAgent:v16 domain:entityCopy agentUUIDToUse:agentUUID policyType:ofType useControlPolicySession:type == 10];

    if ((v18 & 1) == 0)
    {
      [(AgentController *)self unregisterAgent:v16];
LABEL_20:
      v25 = 0;
      goto LABEL_21;
    }
  }

  v19 = sub_1000035EC();
  v20 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    memset(v29, 0, sizeof(v29));
    v21 = _sc_log <= 0 ? 2 : 3;
    v22 = os_log_type_enabled(v19, v20) ? v21 : 2;
    v27 = 138412290;
    v28 = entityCopy;
    v23 = _os_log_send_and_compose_impl(v22, 0, v29, 256, &_mh_execute_header, v19, v20, "Spawning floating agent for %@", &v27, 12);
    __SC_log_send2();
    if (v23 != v29)
    {
      free(v23);
    }
  }

  if ([v16 getAgentType] == 1)
  {
    [(AgentController *)self floatingProxyAgentList];
  }

  else
  {
    [(AgentController *)self floatingDNSAgentList];
  }
  v24 = ;
  [v24 setObject:v16 forKey:entityCopy];

  v25 = 1;
LABEL_21:

  return v25;
}

- (BOOL)spawnMappedFloatingAgent:(id)agent entity:(id)entity agentSubType:(unint64_t)type addPolicyOfType:(int64_t)ofType updateData:(id)data
{
  agentCopy = agent;
  entityCopy = entity;
  dataCopy = data;
  v15 = +[NSMutableDictionary dictionary];
  [v15 setValue:entityCopy forKey:@"EntityName"];
  v16 = [NSNumber numberWithUnsignedInteger:type];
  [v15 setValue:v16 forKey:@"AgentSubType"];

  v17 = [objc_alloc(objc_opt_class()) initWithParameters:v15];
  v18 = v17;
  if (dataCopy)
  {
    [v17 updateAgentData:dataCopy];
  }

  agentUUID = [agentCopy agentUUID];
  v20 = [(AgentController *)self addPolicyToFloatingAgent:v18 domain:entityCopy agentUUIDToUse:agentUUID policyType:ofType useControlPolicySession:type == 10];

  if (v20)
  {
    if ([agentCopy getAgentType] == 1)
    {
      [(AgentController *)self floatingProxyAgentList];
    }

    else
    {
      [(AgentController *)self floatingDNSAgentList];
    }
    v21 = ;
    [v21 setObject:v18 forKey:entityCopy];

    [v18 setAgentMapping:agentCopy];
    v22 = sub_1000035EC();
    v23 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = v20;
      v32 = dataCopy;
      memset(v37, 0, sizeof(v37));
      if (_sc_log <= 0)
      {
        v24 = 2;
      }

      else
      {
        v24 = 3;
      }

      if (os_log_type_enabled(v22, v23))
      {
        v25 = v24;
      }

      else
      {
        v25 = 2;
      }

      v26 = v22;
      getAgentName = [v18 getAgentName];
      getAgentName2 = [agentCopy getAgentName];
      v33 = 138412546;
      v34 = getAgentName;
      v35 = 2112;
      v36 = getAgentName2;
      v29 = _os_log_send_and_compose_impl(v25, 0, v37, 256, &_mh_execute_header, v26, v23, "Mapped floating agent %@ to %@", &v33, 22);

      __SC_log_send2();
      if (v29 != v37)
      {
        free(v29);
      }

      dataCopy = v32;
      LOBYTE(v20) = v31;
    }
  }

  return v20;
}

- (BOOL)publishToAgent:(id)agent
{
  agentCopy = agent;
  v5 = [(AgentController *)self dataLengthSanityCheck:agentCopy];
  if (v5)
  {
    getAgentData = [agentCopy getAgentData];
    v7 = [getAgentData copy];

    [agentCopy updateAgentData:v5];
    v8 = sub_1000035EC();
    v9 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v52 = 0u;
      v53 = 0u;
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      LODWORD(v10) = _sc_log <= 0 ? 2 : 3;
      v10 = os_log_type_enabled(v8, v9) ? v10 : 2;
      v11 = v8;
      getAgentName = [agentCopy getAgentName];
      *v35 = 138412546;
      *&v35[4] = getAgentName;
      v36 = 2048;
      v37 = [v7 length];
      v13 = _os_log_send_and_compose_impl(v10, 0, &v38, 256, &_mh_execute_header, v11, v9, "Data too large for %@ (%lu bytes)!", v35, 22);

      __SC_log_send2();
      if (v13 != &v38)
      {
        free(v13);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = [agentCopy valueForKey:@"registrationObject"];
  v15 = sub_1000035EC();
  v16 = _SC_syslog_os_log_mapping();
  v17 = __SC_log_enabled();
  if (!v14)
  {
    if (!v17)
    {
      goto LABEL_44;
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    if (_sc_log <= 0)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }

    if (os_log_type_enabled(v15, v16))
    {
      v27 = v26;
    }

    else
    {
      v27 = 2;
    }

    *v35 = 0;
    LODWORD(v34) = 2;
    v28 = _os_log_send_and_compose_impl(v27, 0, &v38, 256, &_mh_execute_header, v15, v16, "Config Agent not registered. Cannot Update", v35, v34, *v35);
    goto LABEL_42;
  }

  if (v17)
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v18 = _sc_log <= 0 ? 2 : 3;
    v19 = os_log_type_enabled(v15, v16) ? v18 : 2;
    v20 = v15;
    getAgentName2 = [agentCopy getAgentName];
    getAgentData2 = [agentCopy getAgentData];
    v23 = [getAgentData2 length];
    *v35 = 138412546;
    *&v35[4] = getAgentName2;
    v36 = 2048;
    v37 = v23;
    LODWORD(v34) = 22;
    v24 = _os_log_send_and_compose_impl(v19, 0, &v38, 256, &_mh_execute_header, v20, v16, "Publishing data to agent %@ (%lu bytes)", v35, v34);

    __SC_log_send2();
    if (v24 != &v38)
    {
      free(v24);
    }
  }

  if ([v14 updateNetworkAgent:agentCopy])
  {
    v25 = 1;
    if (!v7)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  v15 = sub_1000035EC();
  v29 = _SC_syslog_os_log_mapping();
  if (__SC_log_enabled())
  {
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    if (_sc_log <= 0)
    {
      v30 = 2;
    }

    else
    {
      v30 = 3;
    }

    if (os_log_type_enabled(v15, v29))
    {
      v31 = v30;
    }

    else
    {
      v31 = 2;
    }

    *v35 = 0;
    LODWORD(v34) = 2;
    v28 = _os_log_send_and_compose_impl(v31, 0, &v38, 256, &_mh_execute_header, v15, v29, "Could not update config agent", v35, v34, *v35);
LABEL_42:
    v32 = v28;
    __SC_log_send2();
    if (v32 != &v38)
    {
      free(v32);
    }
  }

LABEL_44:

  v25 = 0;
  if (v7)
  {
LABEL_45:
    [agentCopy updateAgentData:v7];
  }

LABEL_46:

  return v25;
}

- (BOOL)destroyFloatingAgent:(id)agent
{
  agentCopy = agent;
  v5 = agentCopy;
  if (agentCopy)
  {
    getAssociatedEntity = [agentCopy getAssociatedEntity];
    policyDB = [(AgentController *)self policyDB];
    getAgentName = [v5 getAgentName];
    v9 = [policyDB objectForKey:getAgentName];

    if (v9)
    {
      selfCopy = self;
      v64 = getAssociatedEntity;
      preferredPolicySession = [v5 preferredPolicySession];
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v63 = v9;
      obj = v9;
      v11 = [obj countByEnumeratingWithState:&v91 objects:v90 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v92;
        v66 = *v92;
        do
        {
          v14 = 0;
          v67 = v12;
          do
          {
            if (*v92 != v13)
            {
              objc_enumerationMutation(obj);
            }

            unsignedIntegerValue = [*(*(&v91 + 1) + 8 * v14) unsignedIntegerValue];
            if (([preferredPolicySession removePolicyWithID:unsignedIntegerValue] & 1) == 0)
            {
              v16 = sub_1000035EC();
              v17 = _SC_syslog_os_log_mapping();
              if (__SC_log_enabled())
              {
                v88 = 0u;
                v89 = 0u;
                v86 = 0u;
                v87 = 0u;
                v84 = 0u;
                v85 = 0u;
                v82 = 0u;
                v83 = 0u;
                v80 = 0u;
                v81 = 0u;
                v78 = 0u;
                v79 = 0u;
                v76 = 0u;
                v77 = 0u;
                if (_sc_log <= 0)
                {
                  v18 = 2;
                }

                else
                {
                  v18 = 3;
                }

                v74 = 0uLL;
                v75 = 0uLL;
                if (os_log_type_enabled(v16, v17))
                {
                  v19 = v18;
                }

                else
                {
                  v19 = 2;
                }

                v20 = v16;
                v21 = preferredPolicySession;
                v22 = [preferredPolicySession policyWithID:unsignedIntegerValue];
                v23 = v5;
                getAgentName2 = [v5 getAgentName];
                v70 = 138412546;
                v71 = v22;
                v72 = 2112;
                v73 = getAgentName2;
                LODWORD(v61) = 22;
                v25 = _os_log_send_and_compose_impl(v19, 0, &v74, 256, &_mh_execute_header, v20, v17, "Could not remove policy %@ for agent %@", &v70, v61);

                __SC_log_send2();
                if (v25 != &v74)
                {
                  free(v25);
                }

                v5 = v23;
                preferredPolicySession = v21;
                v13 = v66;
                v12 = v67;
              }
            }

            v14 = v14 + 1;
          }

          while (v12 != v14);
          v12 = [obj countByEnumeratingWithState:&v91 objects:v90 count:16];
        }

        while (v12);
      }

      self = selfCopy;
      policyDB2 = [(AgentController *)selfCopy policyDB];
      getAgentName3 = [v5 getAgentName];
      [policyDB2 removeObjectForKey:getAgentName3];

      v9 = v63;
      getAssociatedEntity = v64;
    }

    v28 = sub_1000035EC();
    v29 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v88 = 0u;
      v89 = 0u;
      v86 = 0u;
      v87 = 0u;
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v30 = _sc_log <= 0 ? 2 : 3;
      v74 = 0uLL;
      v75 = 0uLL;
      v31 = os_log_type_enabled(v28, v29) ? v30 : 2;
      v70 = 138412290;
      v71 = getAssociatedEntity;
      LODWORD(v61) = 12;
      v32 = _os_log_send_and_compose_impl(v31, 0, &v74, 256, &_mh_execute_header, v28, v29, "Destroying floating agent for %@", &v70, v61);
      __SC_log_send2();
      if (v32 != &v74)
      {
        free(v32);
      }
    }

    if ([v5 getAgentType] == 1)
    {
      floatingProxyAgentList = [(AgentController *)self floatingProxyAgentList];
      [floatingProxyAgentList removeObjectForKey:getAssociatedEntity];

      floatingProxyAgentList_TCPConverter = [(AgentController *)self floatingProxyAgentList_TCPConverter];
      [floatingProxyAgentList_TCPConverter removeObjectForKey:getAssociatedEntity];

      floatingProxyAgentList_TCPConverter2 = [(AgentController *)self floatingProxyAgentList_TCPConverter];
      v36 = [floatingProxyAgentList_TCPConverter2 count];

      if (!v36)
      {
        sub_10004EA44(0);
      }
    }

    else
    {
      floatingDNSAgentList = [(AgentController *)self floatingDNSAgentList];
      getAssociatedEntity2 = [v5 getAssociatedEntity];
      [floatingDNSAgentList removeObjectForKey:getAssociatedEntity2];
    }

    getRegistrationObject = [v5 getRegistrationObject];

    if (getRegistrationObject)
    {
      [(AgentController *)self unregisterAgent:v5];
    }

    controlPolicySession = [(AgentController *)self controlPolicySession];

    if (controlPolicySession)
    {
      floatingProxyAgentList2 = [(AgentController *)self floatingProxyAgentList];
      v42 = [(AgentController *)self getAgentList:floatingProxyAgentList2 agentType:1 agentSubType:10];

      floatingDNSAgentList2 = [(AgentController *)self floatingDNSAgentList];
      selfCopy2 = self;
      v45 = [(AgentController *)self getAgentList:floatingDNSAgentList2 agentType:2 agentSubType:10];

      if (![v42 count] && !objc_msgSend(v45, "count"))
      {
        controlPolicySession2 = [(AgentController *)selfCopy2 controlPolicySession];
        removeAllPolicies = [controlPolicySession2 removeAllPolicies];

        if ((removeAllPolicies & 1) == 0)
        {
          v65 = getAssociatedEntity;
          v48 = sub_1000035EC();
          v49 = _SC_syslog_os_log_mapping();
          if (__SC_log_enabled())
          {
            v88 = 0u;
            v89 = 0u;
            v86 = 0u;
            v87 = 0u;
            v84 = 0u;
            v85 = 0u;
            v82 = 0u;
            v83 = 0u;
            v80 = 0u;
            v81 = 0u;
            v78 = 0u;
            v79 = 0u;
            v76 = 0u;
            v77 = 0u;
            if (_sc_log <= 0)
            {
              v50 = 2;
            }

            else
            {
              v50 = 3;
            }

            v74 = 0uLL;
            v75 = 0uLL;
            if (os_log_type_enabled(v48, v49))
            {
              v51 = v50;
            }

            else
            {
              v51 = 2;
            }

            v52 = v48;
            obja = v5;
            getAgentName4 = [v5 getAgentName];
            v70 = 138412290;
            v71 = getAgentName4;
            LODWORD(v61) = 12;
            v54 = _os_log_send_and_compose_impl(v51, 0, &v74, 256, &_mh_execute_header, v52, v49, "Could not remove policies for agent %@", &v70, v61);

            __SC_log_send2();
            if (v54 != &v74)
            {
              free(v54);
            }

            v5 = obja;
          }

          getAssociatedEntity = v65;
        }

        [(AgentController *)selfCopy2 setControlPolicySession:0];
        v55 = sub_1000035EC();
        v56 = _SC_syslog_os_log_mapping();
        if (__SC_log_enabled())
        {
          v88 = 0u;
          v89 = 0u;
          v86 = 0u;
          v87 = 0u;
          v84 = 0u;
          v85 = 0u;
          v82 = 0u;
          v83 = 0u;
          v80 = 0u;
          v81 = 0u;
          v78 = 0u;
          v79 = 0u;
          v76 = 0u;
          v77 = 0u;
          if (_sc_log <= 0)
          {
            v57 = 2;
          }

          else
          {
            v57 = 3;
          }

          v74 = 0uLL;
          v75 = 0uLL;
          if (os_log_type_enabled(v55, v56))
          {
            v58 = v57;
          }

          else
          {
            v58 = 2;
          }

          LOWORD(v70) = 0;
          LODWORD(v61) = 2;
          v59 = _os_log_send_and_compose_impl(v58, 0, &v74, 256, &_mh_execute_header, v55, v56, "Closed control policy session", &v70, v61);
          __SC_log_send2();
          if (v59 != &v74)
          {
            free(v59);
          }
        }
      }
    }
  }

  return v5 != 0;
}

- (BOOL)registerAgent:(id)agent
{
  agentCopy = agent;
  v4 = [[NWNetworkAgentRegistration alloc] initWithNetworkAgentClass:objc_opt_class()];
  v5 = [v4 registerNetworkAgent:agentCopy];
  if (v5)
  {
    [agentCopy addAgentRegistrationObject:v4];
  }

  else
  {
    v6 = sub_1000035EC();
    v7 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      memset(v13, 0, sizeof(v13));
      if (_sc_log <= 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (os_log_type_enabled(v6, v7))
      {
        v9 = v8;
      }

      else
      {
        v9 = 2;
      }

      v12[0] = 0;
      v10 = _os_log_send_and_compose_impl(v9, 0, v13, 256, &_mh_execute_header, v6, v7, "Could not register config agent", v12, 2);
      __SC_log_send2();
      if (v10 != v13)
      {
        free(v10);
      }
    }
  }

  return v5;
}

- (BOOL)unregisterAgent:(id)agent
{
  v3 = [agent valueForKey:@"registrationObject"];
  v4 = v3;
  if (!v3)
  {
    v6 = sub_1000035EC();
    v7 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      if (_sc_log <= 0)
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }

      if (os_log_type_enabled(v6, v7))
      {
        v9 = v8;
      }

      else
      {
        v9 = 2;
      }

      LOWORD(v16[0]) = 0;
      v10 = _os_log_send_and_compose_impl(v9, 0, &v17, 256, &_mh_execute_header, v6, v7, "Config Agent not registered. Cannot unregister", v16, 2, v16[0]);
      goto LABEL_20;
    }

LABEL_22:

    v5 = 0;
    goto LABEL_23;
  }

  if (([v3 unregisterNetworkAgent] & 1) == 0)
  {
    v6 = sub_1000035EC();
    v11 = _SC_syslog_os_log_mapping();
    if (__SC_log_enabled())
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      if (_sc_log <= 0)
      {
        v12 = 2;
      }

      else
      {
        v12 = 3;
      }

      if (os_log_type_enabled(v6, v11))
      {
        v13 = v12;
      }

      else
      {
        v13 = 2;
      }

      LOWORD(v16[0]) = 0;
      v10 = _os_log_send_and_compose_impl(v13, 0, &v17, 256, &_mh_execute_header, v6, v11, "Could not unregister config agent", v16, 2, v16[0]);
LABEL_20:
      v14 = v10;
      __SC_log_send2();
      if (v14 != &v17)
      {
        free(v14);
      }

      goto LABEL_22;
    }

    goto LABEL_22;
  }

  v5 = 1;
LABEL_23:

  return v5;
}

- (OS_dispatch_queue)controllerQueue
{

  return objc_getProperty(self, a2, 8, 1);
}

- (void)setControllerQueue:(id)queue
{

  objc_setProperty_atomic(self, a2, queue, 8);
}

- (void)setFloatingProxyAgentList:(id)list
{
  p_floatingProxyAgentList = &self->_floatingProxyAgentList;

  objc_storeStrong(p_floatingProxyAgentList, list);
}

- (void)setFloatingProxyAgentList_TCPConverter:(id)converter
{
  p_floatingProxyAgentList_TCPConverter = &self->_floatingProxyAgentList_TCPConverter;

  objc_storeStrong(p_floatingProxyAgentList_TCPConverter, converter);
}

- (void)setFloatingDNSAgentList:(id)list
{
  p_floatingDNSAgentList = &self->_floatingDNSAgentList;

  objc_storeStrong(p_floatingDNSAgentList, list);
}

- (void)setPolicyDB:(id)b
{
  p_policyDB = &self->_policyDB;

  objc_storeStrong(p_policyDB, b);
}

- (void)setPolicySession:(id)session
{
  p_policySession = &self->_policySession;

  objc_storeStrong(p_policySession, session);
}

- (void)setControlPolicySession:(id)session
{
  p_controlPolicySession = &self->_controlPolicySession;

  objc_storeStrong(p_controlPolicySession, session);
}

@end