@interface CKDXPCConnection
- (BOOL)systemAvailabilityChanged:(unint64_t)changed;
- (CKDXPCConnection)initWithXPCConnection:(id)connection;
- (id)CKStatusReportArray;
- (id)containerProxyFromSetupInfo:(id)info containerScopedClientProxy:(id)proxy outError:(id *)error;
- (id)logicalDeviceScopedClientProxyForDeviceContext:(id)context;
- (void)CKDescribePropertiesUsing:(id)using;
- (void)dealloc;
- (void)enumerateContainersUsingBlock:(id)block;
- (void)enumerateContainersWithOptions:(unint64_t)options usingBlock:(id)block;
- (void)getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler;
- (void)getContainerScopedDaemonProxyCreatorForSetupInfo:(id)info containerScopedClientProxy:(id)proxy completionHandler:(id)handler;
- (void)getDaemonTestServerManagerProxyCreatorWithCompletionHandler:(id)handler;
- (void)getLogicalDeviceScopedClientProxyCreatorForTestDeviceReference:(id)reference synchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol:(id)protocol completionHandler:(id)handler;
- (void)getProcessScopedClientProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler;
- (void)getProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler;
- (void)getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:(id)info sessionAcquisitionClientProxy:(id)proxy completionHandler:(id)handler;
- (void)invalidate;
- (void)noteClientProcessScopedMetadata:(id)metadata;
@end

@implementation CKDXPCConnection

- (CKDXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v43.receiver = self;
  v43.super_class = CKDXPCConnection;
  v6 = [(CKDXPCConnection *)&v43 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_xpcConnection, connection);
    v10 = objc_msgSend_now(MEMORY[0x277CBEAA8], v8, v9);
    connectionDate = v7->_connectionDate;
    v7->_connectionDate = v10;

    v12 = [CKDProcessScopedClientProxy alloc];
    v14 = objc_msgSend_initWithClientConnection_(v12, v13, v7);
    processScopedClientProxy = v7->_processScopedClientProxy;
    v7->_processScopedClientProxy = v14;

    v16 = [_TtC14CloudKitDaemon35CKDAdopterProcessScopedStateManager alloc];
    v18 = objc_msgSend_initWithClientConnection_(v16, v17, v7);
    adopterProcessScopedStateManager = v7->_adopterProcessScopedStateManager;
    v7->_adopterProcessScopedStateManager = v18;

    v20 = objc_opt_new();
    logicalDeviceScopedClientProxiesByDeviceReference = v7->_logicalDeviceScopedClientProxiesByDeviceReference;
    v7->_logicalDeviceScopedClientProxiesByDeviceReference = v20;

    v24 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v22, v23);
    sharedContainers = v7->_sharedContainers;
    v7->_sharedContainers = v24;

    v28 = objc_msgSend_weakObjectsHashTable(MEMORY[0x277CCAA50], v26, v27);
    containerProxies = v7->_containerProxies;
    v7->_containerProxies = v28;

    v30 = objc_opt_new();
    unlockedSinceBootQueue = v7->_unlockedSinceBootQueue;
    v7->_unlockedSinceBootQueue = v30;

    objc_msgSend_setSuspended_(v7->_unlockedSinceBootQueue, v32, 1);
    objc_msgSend_setMaxConcurrentOperationCount_(v7->_unlockedSinceBootQueue, v33, 1);
    v34 = objc_opt_new();
    containerAvailableQueue = v7->_containerAvailableQueue;
    v7->_containerAvailableQueue = v34;

    objc_msgSend_setSuspended_(v7->_containerAvailableQueue, v36, 1);
    objc_msgSend_setMaxConcurrentOperationCount_(v7->_containerAvailableQueue, v37, 1);
    v40 = objc_msgSend_sharedMonitor(CKDSystemAvailabilityMonitor, v38, v39);
    objc_msgSend_registerWatcher_(v40, v41, v7);
  }

  return v7;
}

- (void)invalidate
{
  objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, a2, 4, &unk_28385CE80);
  objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, v3, 4, &unk_28385CEA0);
  processScopedClientProxy = self->_processScopedClientProxy;

  objc_msgSend_invalidate(processScopedClientProxy, v4, v5);
}

- (void)dealloc
{
  objc_msgSend_setSuspended_(self->_unlockedSinceBootQueue, a2, 0);
  objc_msgSend_setSuspended_(self->_containerAvailableQueue, v3, 0);
  v4.receiver = self;
  v4.super_class = CKDXPCConnection;
  [(CKDXPCConnection *)&v4 dealloc];
}

- (void)CKDescribePropertiesUsing:(id)using
{
  usingCopy = using;
  v11 = objc_msgSend_processScopedClientProxy(self, v5, v6);
  v9 = objc_msgSend_procName(v11, v7, v8);
  objc_msgSend_addProperty_value_shouldRedact_(usingCopy, v10, @"client", v9, 0);
}

- (void)enumerateContainersUsingBlock:(id)block
{
  blockCopy = block;
  v9 = blockCopy;
  if (blockCopy)
  {
    objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, blockCopy, 0, blockCopy);
  }

  else
  {
    v7 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], 0, v6);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v7, v8, a2, self, @"CKDXPCConnection.m", 121, @"Invalid parameter not satisfying: %@", @"block");

    objc_msgSend_enumerateContainersWithOptions_usingBlock_(self, 0, 0, 0);
  }
}

- (void)enumerateContainersWithOptions:(unint64_t)options usingBlock:(id)block
{
  blockCopy = block;
  if (!blockCopy)
  {
    v28 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v7, v8);
    objc_msgSend_handleFailureInMethod_object_file_lineNumber_description_(v28, v29, a2, self, @"CKDXPCConnection.m", 126, @"Invalid parameter not satisfying: %@", @"block");
  }

  if ((options & 4) != 0)
  {
    v20 = objc_msgSend_sharedContainers(self, v7, v8);
    objc_sync_enter(v20);
    v23 = objc_msgSend_sharedContainers(self, v21, v22);
    v16 = objc_msgSend_allObjects(v23, v24, v25);

    objc_sync_exit(v20);
    v32[0] = MEMORY[0x277D85DD0];
    v32[1] = 3221225472;
    v32[2] = sub_225191E04;
    v32[3] = &unk_2785482D0;
    v17 = &v33;
    v33 = blockCopy;
    v26 = blockCopy;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v16, v27, options, v32);
  }

  else
  {
    v10 = objc_msgSend_containerProxies(self, v7, v8);
    objc_sync_enter(v10);
    v13 = objc_msgSend_containerProxies(self, v11, v12);
    v16 = objc_msgSend_allObjects(v13, v14, v15);

    objc_sync_exit(v10);
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = sub_225191E18;
    v30[3] = &unk_2785482F8;
    v17 = &v31;
    v31 = blockCopy;
    v18 = blockCopy;
    objc_msgSend_enumerateObjectsWithOptions_usingBlock_(v16, v19, options, v30);
  }
}

- (id)containerProxyFromSetupInfo:(id)info containerScopedClientProxy:(id)proxy outError:(id *)error
{
  v300 = *MEMORY[0x277D85DE8];
  infoCopy = info;
  proxyCopy = proxy;
  v291 = 0;
  v292 = &v291;
  v293 = 0x2020000000;
  v294 = 0;
  v285 = 0;
  v286 = &v285;
  v287 = 0x3032000000;
  v288 = sub_225073FA0;
  v289 = sub_22507355C;
  v290 = 0;
  v279 = 0;
  v280 = &v279;
  v281 = 0x3032000000;
  v282 = sub_225073FA0;
  v283 = sub_22507355C;
  v284 = 0;
  v261 = infoCopy;
  v258 = objc_msgSend_containerID(infoCopy, v7, v8);
  v256 = objc_msgSend_currentPersona(MEMORY[0x277CBC558], v9, v10);
  v13 = objc_msgSend_processScopedClientProxy(self, v11, v12);
  v16 = objc_msgSend_containerOptions(infoCopy, v14, v15);
  v262 = objc_msgSend_clientEntitlementsWithContainerOptions_(v13, v17, v16);

  v20 = objc_msgSend_containerOptions(v261, v18, v19);
  v23 = objc_msgSend_fakeEntitlements(v20, v21, v22);
  v26 = objc_msgSend_count(v23, v24, v25);

  if (v26)
  {
    if (objc_msgSend_hasAllowFakeEntitlementsEntitlement(v262, v27, v28))
    {
      v31 = objc_msgSend_containerOptions(v261, v29, v30);
      v34 = objc_msgSend_fakeEntitlements(v31, v32, v33);
      v36 = objc_msgSend_entitlementsByAddingOverlay_(v262, v35, v34);

      v262 = v36;
    }

    else
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v37 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy10 = self;
        _os_log_error_impl(&dword_22506F000, v37, OS_LOG_TYPE_ERROR, "Client Proxy %@ is not entitled to use fake entitlements.", buf, 0xCu);
      }
    }
  }

  if (MGGetProductType() != 3348380076)
  {
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_225193560;
    aBlock[3] = &unk_278548320;
    v276 = &v291;
    aBlock[4] = self;
    v272 = v258;
    v273 = v256;
    v277 = &v279;
    v274 = v261;
    v278 = &v285;
    v275 = v262;
    v40 = _Block_copy(aBlock);
    v40[2]();
  }

  v41 = objc_msgSend_applicationBundleID(v262, v38, v39);

  if (v41)
  {
    v44 = [CKDApplicationID alloc];
    v47 = objc_msgSend_applicationBundleID(v262, v45, v46);
    v50 = objc_msgSend_containerOptions(v261, v48, v49);
    v53 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v50, v51, v52);
    v56 = objc_msgSend_containerOptions(v261, v54, v55);
    v59 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v56, v57, v58);
    v62 = objc_msgSend_containerOptions(v261, v60, v61);
    v65 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v62, v63, v64);
    v68 = objc_msgSend_containerOptions(v261, v66, v67);
    v71 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v68, v69, v70);
    v259 = objc_msgSend_initWithApplicationBundleIdentifier_applicationBundleIdentifierOverrideForContainerAccess_applicationBundleIdentifierOverrideForNetworkAttribution_applicationBundleIdentifierOverrideForPushTopicGeneration_applicationBundleIdentifierOverrideForTCC_(v44, v72, v47, v53, v59, v65, v71);
  }

  else
  {
    v259 = 0;
  }

  v73 = objc_msgSend_processScopedClientProxy(self, v42, v43);
  v76 = objc_msgSend_clientSDKVersion(v73, v74, v75);
  v78 = objc_msgSend_validateEntitlementsWithSDKVersion_error_(v262, v77, v76, error);

  if ((v78 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v92 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_error_impl(&dword_22506F000, v92, OS_LOG_TYPE_ERROR, "Connection %@ has invalid client entitlements.", buf, 0xCu);
    }

LABEL_26:
    v91 = 0;
    goto LABEL_153;
  }

  v81 = objc_msgSend_currentProcess(CKDDaemonProcess, v79, v80);
  if (objc_msgSend_processType(v81, v82, v83) == 1)
  {
    hasSystemLaunchDaemonEntitlement = objc_msgSend_hasSystemLaunchDaemonEntitlement(v262, v84, v85);

    if ((hasSystemLaunchDaemonEntitlement & 1) == 0)
    {
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v89 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        selfCopy10 = self;
        _os_log_error_impl(&dword_22506F000, v89, OS_LOG_TYPE_ERROR, "Connection %@ is not allowed to use the system cloudd.", buf, 0xCu);
      }

      if (error)
      {
        objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v90, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not allowed to use the system cloudd.", self);
        *error = v91 = 0;
        goto LABEL_153;
      }

      goto LABEL_26;
    }
  }

  else
  {
  }

  v253 = objc_msgSend_accountOverrideInfo(v261, v87, v88);
  if ((*MEMORY[0x277CBC810] & 1) == 0 && v253 && (objc_msgSend_hasCustomAccountsEntitlement(v262, v93, v94) & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v197 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_error_impl(&dword_22506F000, v197, OS_LOG_TYPE_ERROR, "The application on the other end of %@ is trying to use a custom account but it doesn't have the right entitlement. Denying connection.", buf, 0xCu);
    }

    if (error)
    {
      v199 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v198, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not allowed to set custom account info", self);
LABEL_96:
      v91 = 0;
      *error = v199;
      goto LABEL_152;
    }

LABEL_107:
    v91 = 0;
    goto LABEL_152;
  }

  if (objc_msgSend_hasMasqueradingEntitlement(v262, v93, v94))
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v97 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_impl(&dword_22506F000, v97, OS_LOG_TYPE_INFO, "Giving %@ blanket access to any container", buf, 0xCu);
    }

    goto LABEL_64;
  }

  v100 = objc_msgSend_array(MEMORY[0x277CBEB18], v95, v96);
  v103 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v259, v101, v102);

  if (v103)
  {
    v106 = objc_msgSend_applicationBundleIdentifierOverrideForContainerAccess(v259, v104, v105);
    objc_msgSend_addObject_(v100, v107, v106);
  }

  v108 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v259, v104, v105);

  if (v108)
  {
    v111 = objc_msgSend_applicationBundleIdentifierOverrideForNetworkAttribution(v259, v109, v110);
    objc_msgSend_addObject_(v100, v112, v111);
  }

  v113 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v259, v109, v110);

  if (v113)
  {
    v116 = objc_msgSend_applicationBundleIdentifierOverrideForPushTopicGeneration(v259, v114, v115);
    objc_msgSend_addObject_(v100, v117, v116);
  }

  v118 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v259, v114, v115);

  if (v118)
  {
    v121 = objc_msgSend_applicationBundleIdentifierOverrideForTCC(v259, v119, v120);
    objc_msgSend_addObject_(v100, v122, v121);
  }

  v123 = objc_msgSend_clientPrefixEntitlement(v262, v119, v120);
  v269 = 0u;
  v270 = 0u;
  v267 = 0u;
  v268 = 0u;
  obj = v100;
  v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v124, &v267, v299, 16);
  if (!v127)
  {
    goto LABEL_63;
  }

  v128 = *v268;
  v129 = *MEMORY[0x277CBBF10];
  v130 = MEMORY[0x277CBC880];
  while (2)
  {
    v131 = 0;
    do
    {
      if (*v268 != v128)
      {
        objc_enumerationMutation(obj);
      }

      v132 = *(*(&v267 + 1) + 8 * v131);
      v133 = MEMORY[0x277CCACA8];
      v134 = objc_msgSend_applicationBundleID(v262, v125, v126);
      v136 = objc_msgSend_stringWithValidatedFormat_validFormatSpecifiers_error_(v133, v135, v129, @"%@", 0, v134);

      if (objc_msgSend_isEqualToString_(v136, v137, v132))
      {
        if (*v130 != -1)
        {
          dispatch_once(v130, *MEMORY[0x277CBC878]);
        }

        v140 = *MEMORY[0x277CBC830];
        if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          selfCopy10 = self;
          v141 = v140;
          v142 = "Giving %@ access to container because it's a data repair proxy";
          v143 = 12;
LABEL_60:
          _os_log_impl(&dword_22506F000, v141, OS_LOG_TYPE_INFO, v142, buf, v143);
          goto LABEL_61;
        }

        goto LABEL_61;
      }

      if (!objc_msgSend_length(v123, v138, v139))
      {
        if (*v130 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v202 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_104;
        }

        *buf = 138412546;
        selfCopy10 = self;
        v297 = 2114;
        v298 = v132;
        v203 = "Connection %@ specified bundle identifier override '%{public}@', but it has no prefix entitlement";
        goto LABEL_125;
      }

      if (!objc_msgSend_hasPrefix_(v132, v144, v123))
      {
        if (*v130 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v202 = *MEMORY[0x277CBC830];
        if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_FAULT))
        {
          goto LABEL_104;
        }

        *buf = 138412546;
        selfCopy10 = self;
        v297 = 2114;
        v298 = v132;
        v203 = "Connection %@ specified bundle identifier override '%{public}@', but it didn't match the prefix";
LABEL_125:
        _os_log_fault_impl(&dword_22506F000, v202, OS_LOG_TYPE_FAULT, v203, buf, 0x16u);
LABEL_104:

        if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v204, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not allowed to set its application bundle identifier without the %@ entitlement", self, *MEMORY[0x277CBC898]);
        }

        goto LABEL_107;
      }

      if (*v130 != -1)
      {
        dispatch_once(v130, *MEMORY[0x277CBC878]);
      }

      v145 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        selfCopy10 = self;
        v297 = 2114;
        v298 = v132;
        v141 = v145;
        v142 = "Allowing %@ to override bundle identifier '%{public}@' due to matching prefix";
        v143 = 22;
        goto LABEL_60;
      }

LABEL_61:

      ++v131;
    }

    while (v127 != v131);
    v127 = objc_msgSend_countByEnumeratingWithState_objects_count_(obj, v125, &v267, v299, 16);
    if (v127)
    {
      continue;
    }

    break;
  }

LABEL_63:

LABEL_64:
  v146 = objc_msgSend_cloudServices(v262, v98, v99);
  if (objc_msgSend_containsObject_(v146, v147, *MEMORY[0x277CBC8C8]))
  {

    goto LABEL_67;
  }

  v151 = objc_msgSend_cloudServices(v262, v148, v149);
  v153 = objc_msgSend_containsObject_(v151, v152, *MEMORY[0x277CBC8C0]);

  if ((v153 & 1) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v200 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy10 = self;
      _os_log_error_impl(&dword_22506F000, v200, OS_LOG_TYPE_ERROR, "Connection %@ is not entitled to use CloudKit", buf, 0xCu);
    }

    if (error)
    {
      v199 = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v201, *MEMORY[0x277CBBF50], 8, @"Connection %@ is not entitled to use CloudKit", self);
      goto LABEL_96;
    }

    goto LABEL_107;
  }

LABEL_67:
  v154 = objc_msgSend_containerEnvironmentForContainerID_entitlements_(MEMORY[0x277CBC218], v150, v258, v262);
  v155 = objc_alloc(MEMORY[0x277CBC220]);
  v158 = objc_msgSend_containerIdentifier(v258, v156, v157);
  v160 = objc_msgSend_initWithContainerIdentifier_environment_(v155, v159, v158, v154);

  if (v259)
  {
    if (objc_msgSend_isSupported(MEMORY[0x277CBC558], v161, v162))
    {
      v163 = MEMORY[0x277CBC880];
      if (*MEMORY[0x277CBC880] != -1)
      {
        dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
      }

      v164 = MEMORY[0x277CBC830];
      v165 = *MEMORY[0x277CBC830];
      if (os_log_type_enabled(v165, OS_LOG_TYPE_DEBUG))
      {
        v228 = objc_msgSend_ckShortDescription(v256, v166, v167);
        *buf = 138412290;
        selfCopy10 = v228;
        _os_log_debug_impl(&dword_22506F000, v165, OS_LOG_TYPE_DEBUG, "Verifying current persona %@ can access container", buf, 0xCu);
      }

      v169 = (v286 + 5);
      v168 = v286[5];
      v265 = 0;
      v266 = v168;
      ProximatePersona_error = objc_msgSend_getProximatePersona_error_(MEMORY[0x277CBC558], v170, &v266, &v265);
      objc_storeStrong(v169, v266);
      v174 = v265;
      if ((ProximatePersona_error & 1) == 0)
      {
        if (*v163 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v205 = *v164;
        if (os_log_type_enabled(*v164, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          selfCopy10 = v174;
          _os_log_error_impl(&dword_22506F000, v205, OS_LOG_TYPE_ERROR, "Failed to resolve the proximate persona with error: %@", buf, 0xCu);
        }

        if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_error_format_(MEMORY[0x277CBC560], v206, *MEMORY[0x277CBBF50], 5, v174, @"Invalid persona for container");
        }

        goto LABEL_149;
      }

      v175 = objc_msgSend_containerOptions(v261, v172, v173);
      v178 = objc_msgSend_persona(v175, v176, v177);
      v179 = v178;
      if (!v178)
      {
        v179 = v286[5];
      }

      objc_storeStrong(v280 + 5, v179);

      if ((CKPersonasAreEquivalent() & 1) == 0)
      {
        if (*v163 != -1)
        {
          dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
        }

        v207 = *v164;
        if (os_log_type_enabled(v207, OS_LOG_TYPE_ERROR))
        {
          v231 = objc_msgSend_ckShortDescription(v280[5], v208, v209);
          *buf = 138412290;
          selfCopy10 = v231;
          _os_log_error_impl(&dword_22506F000, v207, OS_LOG_TYPE_ERROR, "Detected that the client did not adopt or propagate the persona %@", buf, 0xCu);
        }

        if (error)
        {
          *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v210, *MEMORY[0x277CBBF50], 5, @"Invalid persona for container");
        }

        v211 = objc_alloc(MEMORY[0x277CBC6B0]);
        v212 = objc_alloc(MEMORY[0x277CBC6C8]);
        v214 = objc_msgSend_initWithFilePath_lineNumber_(v212, v213, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/IPCMessaging/CKDXPCConnection.m", 335);
        v217 = objc_msgSend_ckShortDescription(v160, v215, v216);
        v219 = objc_msgSend_initWithSourceCodeLocation_format_(v211, v218, v214, @"Persona failed to propagate for container %@: %@", v217, v280[5]);

        v222 = objc_msgSend_processScopedClientProxy(self, v220, v221);
        objc_msgSend_handleSignificantIssue_actions_(v222, v223, v219, 3);

        goto LABEL_149;
      }

      v182 = v280[5];
      if (!v182 || (v183 = objc_msgSend_type(v182, v180, v181), (v183 - 3) < 2))
      {
        v184 = objc_msgSend_containerOptions(v261, v180, v181);
        v187 = objc_msgSend_testDeviceReferenceProtocol(v184, v185, v186);
        v189 = objc_msgSend_deviceContextForTestDeviceReference_(CKDLogicalDeviceContext, v188, v187);

        objc_msgSend_BOOLOptionForKey_(v189, v190, *MEMORY[0x277CBC110]);
        if ((CKBoolFromCKTernaryWithDefault() & 1) == 0)
        {
          v264 = v174;
          v192 = objc_msgSend_personasWithType_error_(MEMORY[0x277CBC558], v191, 1, &v264);
          v193 = v264;

          v196 = objc_msgSend_firstObject(v192, v194, v195);

          if (v196)
          {
            objc_storeStrong(v280 + 5, v196);
            v174 = v193;
            goto LABEL_135;
          }

          if (v193)
          {
            if (*v163 != -1)
            {
              dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
            }

            v229 = *v164;
            if (os_log_type_enabled(*v164, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              selfCopy10 = v193;
              _os_log_error_impl(&dword_22506F000, v229, OS_LOG_TYPE_ERROR, "Failed to fetch personal persona with error: %@", buf, 0xCu);
            }

            if (error)
            {
              *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v230, *MEMORY[0x277CBBF50], 5, @"Invalid persona for container");
            }

LABEL_148:
            v174 = v193;
LABEL_149:

LABEL_150:
            v91 = 0;
            goto LABEL_151;
          }

          v196 = 0;
          v174 = 0;
LABEL_135:
        }

        goto LABEL_136;
      }

      if (!v183)
      {
        v224 = MEMORY[0x277CBC558];
        v225 = objc_msgSend_identifier(v280[5], v180, v181);
        v189 = objc_msgSend_personaWithIdentifier_error_(v224, v226, v225, 0);

        if (v189)
        {
          v227 = v280;
          v189 = v189;
          v196 = v227[5];
          v227[5] = v189;
          goto LABEL_135;
        }

LABEL_136:
      }

      v232 = v280[5];
      if (v232)
      {
        v263 = v174;
        v233 = objc_msgSend_adopt_(v232, v180, &v263);
        v193 = v263;

        if (!v233)
        {
          if (*v163 != -1)
          {
            dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
          }

          v249 = *v164;
          if (os_log_type_enabled(*v164, OS_LOG_TYPE_ERROR))
          {
            v252 = v280[5];
            *buf = 138412546;
            selfCopy10 = v252;
            v297 = 2112;
            v298 = v193;
            _os_log_error_impl(&dword_22506F000, v249, OS_LOG_TYPE_ERROR, "Failed to adopt persona %@ with error: %@", buf, 0x16u);
          }

          if (error)
          {
            *error = objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v250, *MEMORY[0x277CBBF50], 5, @"Invalid persona for container");
          }

          goto LABEL_148;
        }

        v174 = v193;
      }
    }

    v234 = [CKDAppContainerTuple alloc];
    v236 = objc_msgSend_initWithApplicationID_containerID_persona_(v234, v235, v259, v160, v280[5]);
    v237 = [CKDContainerProxy alloc];
    v240 = objc_msgSend_containerOptions(v261, v238, v239);
    v91 = objc_msgSend_initWithAppContainerTuple_entitlements_options_distantContainer_connection_(v237, v241, v236, v262, v240, proxyCopy, self);

    v244 = objc_msgSend_containerProxies(self, v242, v243);
    objc_sync_enter(v244);
    v247 = objc_msgSend_containerProxies(self, v245, v246);
    objc_msgSend_addObject_(v247, v248, v91);

    objc_sync_exit(v244);
    *(v292 + 24) = 1;

    goto LABEL_151;
  }

  if (!error)
  {
    goto LABEL_150;
  }

  objc_msgSend_errorWithDomain_code_format_(MEMORY[0x277CBC560], v161, *MEMORY[0x277CBBF50], 8, @"Trying to initialize a container without an application ID");
  *error = v91 = 0;
LABEL_151:

LABEL_152:
LABEL_153:

  _Block_object_dispose(&v279, 8);
  _Block_object_dispose(&v285, 8);

  _Block_object_dispose(&v291, 8);

  return v91;
}

- (BOOL)systemAvailabilityChanged:(unint64_t)changed
{
  changedCopy = changed;
  v89 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v7 = objc_msgSend_processScopedClientProxy(selfCopy, v5, v6);
  v10 = objc_msgSend_clientEntitlements(v7, v8, v9);
  hasAllowAccessDuringBuddyEntitlement = objc_msgSend_hasAllowAccessDuringBuddyEntitlement(v10, v11, v12);

  v16 = objc_msgSend_processScopedClientProxy(selfCopy, v14, v15);
  v19 = objc_msgSend_processBinaryName(v16, v17, v18);

  v22 = objc_msgSend_processScopedClientProxy(selfCopy, v20, v21);
  v25 = objc_msgSend_procName(v22, v23, v24);
  v26 = changedCopy | hasAllowAccessDuringBuddyEntitlement;

  if ((changedCopy | hasAllowAccessDuringBuddyEntitlement))
  {
    v29 = objc_msgSend_sharedConnectionManager(CKDXPCConnectionManager, v27, v28);
    v31 = objc_msgSend_previousProcTearDownOperations_(v29, v30, v19);
  }

  else
  {
    v31 = 0;
  }

  if ((changedCopy & 2) == 0)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v32 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 138543362;
    v82 = v25;
    v33 = "Connection from %{public}@ not active yet because device hasn't been unlocked since boot.";
LABEL_40:
    _os_log_impl(&dword_22506F000, v32, OS_LOG_TYPE_DEFAULT, v33, buf, 0xCu);
LABEL_41:
    v71 = 1;
    goto LABEL_42;
  }

  v34 = objc_msgSend_unlockedSinceBootQueue(selfCopy, v27, v28);
  isSuspended = objc_msgSend_isSuspended(v34, v35, v36);

  v38 = MEMORY[0x277CBC880];
  v39 = MEMORY[0x277CBC878];
  if (isSuspended)
  {
    if (*MEMORY[0x277CBC880] != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *MEMORY[0x277CBC878]);
    }

    v40 = *MEMORY[0x277CBC830];
    if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v82 = v25;
      _os_log_impl(&dword_22506F000, v40, OS_LOG_TYPE_INFO, "Connection from client %{public}@ is past unlock check", buf, 0xCu);
    }

    v43 = objc_msgSend_unlockedSinceBootQueue(selfCopy, v41, v42);
    objc_msgSend_setSuspended_(v43, v44, 0);
  }

  v45 = *v39;
  if ((v26 & 1) == 0)
  {
    if (*v38 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], v45);
    }

    v32 = *MEMORY[0x277CBC830];
    if (!os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_41;
    }

    *buf = 138543362;
    v82 = v25;
    v33 = "Connection from %{public}@ not active. Device is not past buddy and it lacks the entitlement to bypass.";
    goto LABEL_40;
  }

  if (*v38 != -1)
  {
    dispatch_once(MEMORY[0x277CBC880], v45);
  }

  v46 = MEMORY[0x277CBC830];
  v47 = *MEMORY[0x277CBC830];
  if (os_log_type_enabled(*MEMORY[0x277CBC830], OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v82 = v25;
    _os_log_impl(&dword_22506F000, v47, OS_LOG_TYPE_INFO, "Connection from client %{public}@ is past buddy check", buf, 0xCu);
  }

  v48 = MEMORY[0x277CCA8C8];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = sub_225193F14;
  v77[3] = &unk_278545898;
  v78 = v25;
  v79 = selfCopy;
  v50 = objc_msgSend_blockOperationWithBlock_(v48, v49, v77);
  if (objc_msgSend_count(v31, v51, v52))
  {
    if (*v38 != -1)
    {
      dispatch_once(MEMORY[0x277CBC880], *v39);
    }

    v55 = *v46;
    if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
    {
      v58 = objc_msgSend_count(v31, v56, v57);
      v61 = objc_msgSend_count(v31, v59, v60);
      v62 = @"s";
      *buf = 138413058;
      v82 = selfCopy;
      v83 = 2112;
      if (v61 == 1)
      {
        v62 = &stru_28385ED00;
      }

      v84 = v19;
      v85 = 2048;
      v86 = v58;
      v87 = 2112;
      v88 = v62;
      _os_log_impl(&dword_22506F000, v55, OS_LOG_TYPE_INFO, "Incoming client %@ connection with processBinaryName %@ is waiting resume its container available queue. We have %ld existing connection%@ tearing down", buf, 0x2Au);
    }

    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v63 = v31;
    v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v64, &v73, v80, 16);
    if (v66)
    {
      v67 = *v74;
      do
      {
        for (i = 0; i != v66; ++i)
        {
          if (*v74 != v67)
          {
            objc_enumerationMutation(v63);
          }

          objc_msgSend_addDependency_(v50, v65, *(*(&v73 + 1) + 8 * i), v73);
        }

        v66 = objc_msgSend_countByEnumeratingWithState_objects_count_(v63, v65, &v73, v80, 16);
      }

      while (v66);
    }
  }

  v69 = objc_msgSend_unlockedSinceBootQueue(selfCopy, v53, v54, v73);
  objc_msgSend_addOperation_(v69, v70, v50);

  v71 = 0;
LABEL_42:

  objc_sync_exit(selfCopy);
  return v71;
}

- (void)noteClientProcessScopedMetadata:(id)metadata
{
  metadataCopy = metadata;
  v7 = objc_msgSend_clientSDKVersion(metadataCopy, v5, v6);
  v10 = objc_msgSend_processScopedClientProxy(self, v8, v9);
  objc_msgSend_setClientSDKVersion_(v10, v11, v7);

  v12 = objc_opt_new();
  v15 = objc_msgSend_frameworkFingerprint(metadataCopy, v13, v14);
  isLikelyEqual = objc_msgSend_isLikelyEqual_(v15, v16, v12);

  if ((isLikelyEqual & 1) == 0)
  {
    v18 = objc_alloc(MEMORY[0x277CBC6B0]);
    v19 = objc_alloc(MEMORY[0x277CBC6C8]);
    v21 = objc_msgSend_initWithFilePath_lineNumber_(v19, v20, @"/Library/Caches/com.apple.xbs/Sources/CloudKitTools/Sources/CloudKitDaemon/IPCMessaging/CKDXPCConnection.m", 481);
    v24 = objc_msgSend_frameworkFingerprint(metadataCopy, v22, v23);
    v26 = objc_msgSend_initWithSourceCodeLocation_format_(v18, v25, v21, @"Client and daemon processes have different versions of CloudKit.framework in memory: <%@> vs. <%@>", v24, v12);

    v27 = CKGetGlobalQueue();
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = sub_22519425C;
    block[3] = &unk_278545898;
    block[4] = self;
    v34 = v26;
    v28 = v26;
    dispatch_async(v27, block);

    v31 = objc_msgSend_currentHandler(MEMORY[0x277CBC6B8], v29, v30);
    objc_msgSend_handleSignificantIssue_actions_(v31, v32, v28, 4);
  }
}

- (void)getContainerScopedDaemonProxyCreatorForSetupInfo:(id)info containerScopedClientProxy:(id)proxy completionHandler:(id)handler
{
  infoCopy = info;
  proxyCopy = proxy;
  handlerCopy = handler;
  v13 = objc_msgSend_containerAvailableQueue(self, v11, v12);
  v16 = objc_msgSend_containerOptions(infoCopy, v14, v15);
  isCloudCoreSession = objc_msgSend_isCloudCoreSession(v16, v17, v18);

  if (isCloudCoreSession)
  {
    v22 = objc_msgSend_unlockedSinceBootQueue(self, v20, v21);

    v13 = v22;
  }

  objc_initWeak(&location, self);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = sub_22519443C;
  v27[3] = &unk_278545808;
  objc_copyWeak(&v31, &location);
  v23 = infoCopy;
  v28 = v23;
  v24 = proxyCopy;
  v29 = v24;
  v25 = handlerCopy;
  v30 = v25;
  objc_msgSend_addOperationWithBlock_(v13, v26, v27);

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (void)getLogicalDeviceScopedDaemonProxyCreatorForTestDeviceReferenceProtocol:(id)protocol completionHandler:(id)handler
{
  protocolCopy = protocol;
  handlerCopy = handler;
  v10 = objc_msgSend_unlockedSinceBootQueue(self, v8, v9);
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = sub_2251945C4;
  v14[3] = &unk_278546550;
  v15 = protocolCopy;
  v16 = handlerCopy;
  v11 = handlerCopy;
  v12 = protocolCopy;
  objc_msgSend_addOperationWithBlock_(v10, v13, v14);
}

- (void)getProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_unlockedSinceBootQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_2251946E8;
  v10[3] = &unk_2785456A0;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getAdopterProcessScopedDaemonProxyCreatorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_unlockedSinceBootQueue(self, v5, v6);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = sub_225194800;
  v10[3] = &unk_2785456C8;
  v10[4] = self;
  v11 = handlerCopy;
  v8 = handlerCopy;
  objc_msgSend_addOperationWithBlock_(v7, v9, v10);
}

- (void)getDaemonTestServerManagerProxyCreatorWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = objc_msgSend_currentProcess(CKDDaemonProcess, v5, v6);
  v10 = objc_msgSend_processType(v7, v8, v9);

  if (v10 == 2)
  {
    v13 = objc_msgSend_unlockedSinceBootQueue(self, v11, v12);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = sub_22519494C;
    v15[3] = &unk_2785456A0;
    v16 = handlerCopy;
    objc_msgSend_addOperationWithBlock_(v13, v14, v15);
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 0);
  }
}

- (id)logicalDeviceScopedClientProxyForDeviceContext:(id)context
{
  v38[2] = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v7 = objc_msgSend_testDeviceReference(contextCopy, v5, v6);
  v10 = objc_msgSend_deviceID(v7, v8, v9);
  v13 = v10;
  v14 = @"NO_DEVICE_ID";
  if (v10)
  {
    v14 = v10;
  }

  v38[0] = v14;
  v15 = objc_msgSend_testDeviceReference(contextCopy, v11, v12);
  v18 = objc_msgSend_serverReferenceProtocol(v15, v16, v17);
  v22 = objc_msgSend_dataDirectory(v18, v19, v20);
  v23 = v22;
  if (!v22)
  {
    v23 = objc_msgSend_fileURLWithPath_(MEMORY[0x277CBEBC0], v21, @"/dev/null");
  }

  v38[1] = v23;
  v24 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v21, v38, 2);
  if (!v22)
  {
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v28 = objc_msgSend_logicalDeviceScopedClientProxiesByDeviceReference(selfCopy, v26, v27);
  v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, v24);

  if (!v30)
  {
    v31 = [CKDLogicalDeviceScopedClientProxy alloc];
    v30 = objc_msgSend_initWithClientConnection_deviceContext_(v31, v32, selfCopy, contextCopy);
    v35 = objc_msgSend_logicalDeviceScopedClientProxiesByDeviceReference(selfCopy, v33, v34);
    objc_msgSend_setObject_forKeyedSubscript_(v35, v36, v30, v24);
  }

  objc_sync_exit(selfCopy);

  return v30;
}

- (void)getProcessScopedClientProxyCreatorSynchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_225194D34;
  aBlock[3] = &unk_278548238;
  v7 = handlerCopy;
  v15 = v7;
  v8 = _Block_copy(aBlock);
  v9 = sub_225194D4C(self, synchronousCopy, v8);
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = sub_225194EB0;
  v12[3] = &unk_278548348;
  v13 = v7;
  v10 = v7;
  objc_msgSend_getProcessScopedClientProxyCreatorWithCompletionHandler_(v9, v11, v12);
}

- (void)getSessionAcquisitionDaemonProxyCreatorForSessionAcquisitionSetupInfo:(id)info sessionAcquisitionClientProxy:(id)proxy completionHandler:(id)handler
{
  handlerCopy = handler;
  proxyCopy = proxy;
  infoCopy = info;
  v11 = [_TtC14CloudKitDaemon18CKDSessionAcquirer alloc];
  v15 = 0;
  v13 = objc_msgSend_initWithSessionAcquisitionSetupInfo_sessionAcquisitionClientProxy_clientConnection_error_(v11, v12, infoCopy, proxyCopy, self, &v15);

  v14 = v15;
  handlerCopy[2](handlerCopy, v13, v14);
}

- (void)getLogicalDeviceScopedClientProxyCreatorForTestDeviceReference:(id)reference synchronous:(BOOL)synchronous completionHandler:(id)handler
{
  synchronousCopy = synchronous;
  handlerCopy = handler;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = sub_2251950C0;
  aBlock[3] = &unk_278548238;
  v9 = handlerCopy;
  v18 = v9;
  referenceCopy = reference;
  v11 = _Block_copy(aBlock);
  v12 = sub_225194D4C(self, synchronousCopy, v11);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = sub_2251950D8;
  v15[3] = &unk_278548370;
  v16 = v9;
  v13 = v9;
  objc_msgSend_getLogicalDeviceScopedClientProxyCreatorForTestDeviceReferenceProtocol_completionHandler_(v12, v14, referenceCopy, v15);
}

- (id)CKStatusReportArray
{
  v32 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v4 = MEMORY[0x277CCACA8];
  v7 = objc_msgSend_connectionDate(self, v5, v6);
  v9 = objc_msgSend_stringWithFormat_(v4, v8, @"\n connected since: %@", v7);
  objc_msgSend_addObject_(v3, v10, v9);

  objc_msgSend_addObject_(v3, v11, @"------ Containers -------");
  v14 = objc_msgSend_containerProxies(self, v12, v13);
  objc_sync_enter(v14);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v17 = objc_msgSend_containerProxies(self, v15, v16);
  v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v18, &v27, v31, 16);
  if (v21)
  {
    v22 = *v28;
    do
    {
      for (i = 0; i != v21; ++i)
      {
        if (*v28 != v22)
        {
          objc_enumerationMutation(v17);
        }

        v24 = objc_msgSend_CKStatusReportArray(*(*(&v27 + 1) + 8 * i), v19, v20);
        objc_msgSend_addObject_(v3, v25, v24);
      }

      v21 = objc_msgSend_countByEnumeratingWithState_objects_count_(v17, v19, &v27, v31, 16);
    }

    while (v21);
  }

  objc_sync_exit(v14);

  return v3;
}

@end