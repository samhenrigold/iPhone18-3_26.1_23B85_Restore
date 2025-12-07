@interface RBConnectionClient
+ (id)sharedLaunchWorkloop;
+ (id)sharedTerminationWorkloop;
- (BOOL)intendToExit:(void *)exit withStatus:(void *)status error:;
- (BOOL)subscribeToProcessStateChangesWithConfiguration:error:;
- (NSString)description;
- (NSString)stateCaptureTitle;
- (RBConnectionClient)init;
- (__CFString)lookupProcessName:error:;
- (id)assertionDescriptorsWithFlattenedAttributes:(void *)attributes error:;
- (id)busyExtensionInstancesFromSet:error:;
- (id)handshakeWithRequest:(uint64_t)request;
- (id)hostProcessForInstance:(uint64_t)instance error:(uint64_t)error;
- (id)identifiersForStateCaptureSubsystemsWithError:(id *)error;
- (id)infoPlistResultForInstance:(void *)instance forKeys:(void *)keys error:;
- (id)initWithContext:(void *)context listener:(void *)listener process:(void *)process connection:;
- (id)lastExitContextForInstance:(void *)instance error:;
- (id)limitationsForInstance:(void *)instance error:;
- (id)lookupHandleForKey:(uint64_t)key error:(uint64_t)error;
- (id)lookupHandleForPredicate:error:;
- (id)lookupPortForIdentifier:error:;
- (id)preventLaunchPredicates;
- (id)subscribeToProcessDeath:(uint64_t)death error:(uint64_t)error;
- (uint64_t)_predicatesMatchOnlyAllowedProcess:(NSObject *)process;
- (uint64_t)isIdentityAnAngel:(void *)angel withError:;
- (uint64_t)processIdentifier;
- (uint64_t)processIdentity;
- (uint64_t)saveEndowment:(void *)endowment withError:;
- (void)_addStatesForUntrackedProcessesTo:(void *)to withPredicate:;
- (void)_canInvalidateAssertionWithIdentifier:(uint64_t)identifier error:(uint64_t)error;
- (void)_requestPluginHoldForProxy:(NSObject *)proxy terminate:(void *)terminate completion:;
- (void)_setReadyWithConnection:(uint64_t)connection;
- (void)_trackTargetProcessForDescriptor:(uint64_t)descriptor;
- (void)acquireAssertionForDescriptor:(void *)descriptor withReply:;
- (void)captureStateForSubsystem:withReply:;
- (void)cleanupHolds;
- (void)didInvalidateAssertions:(uint64_t)assertions;
- (void)didRemoveProcess:withState:;
- (void)didUpdateProcessStates:(uint64_t)states;
- (void)executeLaunchRequest:(uint64_t)request withEuid:(void *)euid withReply:;
- (void)executeTerminateRequest:(void *)request withReply:;
- (void)expandPredicateForContained:(uint64_t)contained;
- (void)handleMessage:(uint64_t)message;
- (void)inheritanceManager:(id)manager didChangeInheritances:(id)inheritances completion:(id)completion;
- (void)invalidate;
- (void)statesForPredicate:(void *)predicate withDescriptor:(void *)descriptor withReply:;
- (void)unsubscribeFromProcessStateChangesWithIdentifier:(uint64_t)identifier;
- (void)willExpireAssertionsSoonForProcess:(double)process expirationTime:;
- (void)willInvalidateAssertion:(uint64_t)assertion;
@end

@implementation RBConnectionClient

+ (id)sharedLaunchWorkloop
{
  objc_opt_self();
  if (sharedLaunchWorkloop_onceToken != -1)
  {
    +[RBConnectionClient sharedLaunchWorkloop];
  }

  v0 = sharedLaunchWorkloop_workloop;

  return v0;
}

- (NSString)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  processIdentifier = self->_processIdentifier;
  shortDescription = [(RBSProcessIdentity *)self->_processIdentity shortDescription];
  v7 = [v3 initWithFormat:@"<%@| %@ name:%@ entitlements:%@ inheritanceManager:%@>", v4, processIdentifier, shortDescription, self->_entitlements, self->_inheritanceManager];

  return v7;
}

- (void)invalidate
{
  v9 = *MEMORY[0x277D85DE8];
  if (result)
  {
    v2 = rbs_process_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(result + 112);
      v7 = 138543362;
      v8 = v4;
      OUTLINED_FUNCTION_21_0(&dword_262485000, v2, v3, "XPC connection invalidated: %{public}@", &v7);
    }

    os_unfair_lock_lock((result + 20));
    [*(result + 176) removeAllObjects];
    os_unfair_lock_unlock((result + 20));
    os_unfair_lock_lock((result + 16));
    [*(result + 112) setTerminating:1];
    v5 = *(result + 8);
    *(result + 8) = 0;

    [*(result + 184) invalidate];
    v6 = *(result + 184);
    *(result + 184) = 0;

    [*(result + 56) removeItem:result];
    os_unfair_lock_unlock((result + 16));
    [(RBConnectionClient *)result cleanupHolds];
  }
}

- (void)cleanupHolds
{
  v20 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v2 = [*(self + 24) assertionsForOriginator:*(self + 136)];
    v13 = 0u;
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v3 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v14;
      *&v4 = 138412290;
      v12 = v4;
      do
      {
        v7 = 0;
        do
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v2);
          }

          identifier = [*(*(&v13 + 1) + 8 * v7) identifier];
          v9 = [OUTLINED_FUNCTION_18_0() popPluginHoldForAssertion:?];

          if (v9)
          {
            v10 = rbs_assertion_log();
            if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
            {
              *buf = v12;
              v18 = v9;
              _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_INFO, "Releasing plugin hold token for dealloc %@", buf, 0xCu);
            }

            v11 = [MEMORY[0x277D3D350] managerForUser:*(self + 144)];
            [v11 releaseHold:v9];
          }

          ++v7;
        }

        while (v5 != v7);
        v5 = [v2 countByEnumeratingWithState:&v13 objects:v19 count:16];
      }

      while (v5);
    }
  }
}

+ (id)sharedTerminationWorkloop
{
  objc_opt_self();
  if (sharedTerminationWorkloop_onceToken != -1)
  {
    +[RBConnectionClient sharedTerminationWorkloop];
  }

  v0 = sharedTerminationWorkloop_workloop;

  return v0;
}

void __47__RBConnectionClient_sharedTerminationWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("RBConnectionClientTermination");
  v1 = sharedTerminationWorkloop_workloop;
  sharedTerminationWorkloop_workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedTerminationWorkloop_workloop;

  dispatch_activate(v2);
}

void __42__RBConnectionClient_sharedLaunchWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("RBConnectionClientLaunch");
  v1 = sharedLaunchWorkloop_workloop;
  sharedLaunchWorkloop_workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedLaunchWorkloop_workloop;

  dispatch_activate(v2);
}

- (RBConnectionClient)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBConnectionClient.m" lineNumber:152 description:@"-init is not allowed on RBConnectionClient"];

  return 0;
}

- (void)handleMessage:(uint64_t)message
{
  v211 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (message)
  {
    v4 = [MEMORY[0x277D47030] messageForXPCMessage:v3];
    v5 = v4;
    if (v4 && ([v4 isEmpty] & 1) == 0)
    {
      method = [v5 method];
      if (method)
      {
        v7 = method;
        reply = [v5 reply];
        payload = [reply payload];
        v187 = 0;
        v188 = &v187;
        v189 = 0x3032000000;
        v190 = __Block_byref_object_copy__2;
        v191 = __Block_byref_object_dispose__2;
        v184[0] = MEMORY[0x277D85DD0];
        v184[1] = 3221225472;
        v184[2] = __36__RBConnectionClient_handleMessage___block_invoke;
        v184[3] = &unk_279B332F8;
        v184[4] = message;
        v38 = payload;
        v185 = v38;
        v36 = reply;
        v186 = v36;
        v192 = MEMORY[0x266729AD0](v184);
        v10 = xpc_dictionary_get_remote_connection(v3);
        v183 = 0u;
        v182 = 0u;
        RBSInvalidRealAuditToken();
        xpc_connection_get_audit_token();
        memset(atoken, 0, 32);
        if (RBSRealAuditTokenValid())
        {
          *atoken = v182;
          *&atoken[16] = v183;
          v11 = audit_token_to_euid(atoken);
          *atoken = v182;
          *&atoken[16] = v183;
          v12 = audit_token_to_auid(atoken);
          if (v12 + 1 >= 2)
          {
            v13 = v12;
          }

          else
          {
            v13 = v11;
          }
        }

        else
        {
          v13 = 0;
          v11 = 0;
        }

        v210 = 0;
        memset(v209, 0, sizeof(v209));
        v208 = 0u;
        v207 = 0u;
        v206 = 0u;
        memset(&atoken[4], 0, 32);
        *atoken = 2;
        v37 = v10;
        v16 = 0;
        if (!kpersona_info() && *&atoken[8] <= 5u && ((1 << atoken[8]) & 0x26) != 0)
        {
          v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:&v209[4]];
        }

        v17 = rbs_message_log();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          v18 = *(message + 112);
          v19 = NSStringFromSelector(v7);
          *buf = 138544386;
          *&buf[4] = v18;
          *&buf[12] = 1024;
          *&buf[14] = v11;
          *&buf[18] = 1024;
          *&buf[20] = v13;
          *v204 = 2114;
          *&v204[2] = v16;
          *&v204[10] = 2114;
          *&v204[12] = v19;
          _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "PERF: Received request from %{public}@ (euid %d, auid %d) (persona %{public}@): %{public}@", buf, 0x2Cu);
        }

        if ((_os_feature_enabled_impl() & 1) == 0)
        {

          v16 = 0;
        }

        v179[0] = MEMORY[0x277D85DD0];
        v179[1] = 3221225472;
        v179[2] = __36__RBConnectionClient_handleMessage___block_invoke_32;
        v179[3] = &unk_279B33320;
        v181 = v11;
        v20 = v16;
        v180 = v20;
        v35 = MEMORY[0x266729AD0](v179);
        v176[0] = MEMORY[0x277D85DD0];
        v176[1] = 3221225472;
        v176[2] = __36__RBConnectionClient_handleMessage___block_invoke_2;
        v176[3] = &unk_279B33348;
        v178 = v13;
        v21 = v20;
        v177 = v21;
        v34 = MEMORY[0x266729AD0](v176);
        v173[0] = MEMORY[0x277D85DD0];
        v173[1] = 3221225472;
        v173[2] = __36__RBConnectionClient_handleMessage___block_invoke_3;
        v173[3] = &unk_279B33370;
        v175 = v13;
        v22 = v21;
        v174 = v22;
        v23 = MEMORY[0x266729AD0](v173);
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        *v204 = __Block_byref_object_copy__36;
        *&v204[8] = __Block_byref_object_dispose__37;
        *&v204[16] = 0;
        if (v7 == sel_handshakeWithRequest_)
        {
          activity_block[0] = MEMORY[0x277D85DD0];
          activity_block[1] = 3221225472;
          activity_block[2] = __36__RBConnectionClient_handleMessage___block_invoke_40;
          activity_block[3] = &unk_279B33398;
          v171 = buf;
          v167 = v5;
          messageCopy = message;
          v169 = v37;
          v172 = v11;
          v170 = v38;
          _os_activity_initiate(&dword_262485000, "handshakeWithRequest", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
        }

        else if (v7 == sel_lookupHandleForKey_error_)
        {
          v161[0] = MEMORY[0x277D85DD0];
          v161[1] = 3221225472;
          v161[2] = __36__RBConnectionClient_handleMessage___block_invoke_2_46;
          v161[3] = &unk_279B333C0;
          v165 = buf;
          v162 = v5;
          messageCopy2 = message;
          v164 = v38;
          _os_activity_initiate(&dword_262485000, "lookupHandleForKey", OS_ACTIVITY_FLAG_DEFAULT, v161);
        }

        else if (v7 == sel_lookupProcessName_error_)
        {
          v156[0] = MEMORY[0x277D85DD0];
          v156[1] = 3221225472;
          v156[2] = __36__RBConnectionClient_handleMessage___block_invoke_3_50;
          v156[3] = &unk_279B333C0;
          v160 = buf;
          v157 = v5;
          messageCopy3 = message;
          v159 = v38;
          _os_activity_initiate(&dword_262485000, "lookupProcessName", OS_ACTIVITY_FLAG_DEFAULT, v156);
        }

        else if (v7 == sel_lookupHandleForPredicate_error_)
        {
          v31 = rbs_message_log();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(message + 112);
            *v195 = 138544130;
            v196 = v32;
            v197 = 1024;
            v198 = v11;
            v199 = 1024;
            v200 = v13;
            v201 = 2114;
            v202 = v22;
            _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "PERF: Received lookupHandleForPredicate request from %{public}@ (euid %d, auid %d) (persona %{public}@)", v195, 0x22u);
          }

          v151[0] = MEMORY[0x277D85DD0];
          v151[1] = 3221225472;
          v151[2] = __36__RBConnectionClient_handleMessage___block_invoke_53;
          v151[3] = &unk_279B333C0;
          v155 = buf;
          v152 = v5;
          messageCopy4 = message;
          v154 = v38;
          _os_activity_initiate(&dword_262485000, "lookupHandleForPredicate", OS_ACTIVITY_FLAG_DEFAULT, v151);
        }

        else if (v7 == sel_lookupPortForIdentifier_error_)
        {
          v146[0] = MEMORY[0x277D85DD0];
          v146[1] = 3221225472;
          v146[2] = __36__RBConnectionClient_handleMessage___block_invoke_2_57;
          v146[3] = &unk_279B333C0;
          v150 = buf;
          v147 = v5;
          messageCopy5 = message;
          v149 = v38;
          _os_activity_initiate(&dword_262485000, "lookupPortForIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v146);
        }

        else if (v7 == sel_acquireAssertionWithDescriptor_error_)
        {
          v139[0] = MEMORY[0x277D85DD0];
          v139[1] = 3221225472;
          v139[2] = __36__RBConnectionClient_handleMessage___block_invoke_3_61;
          v139[3] = &unk_279B333E8;
          v140 = v5;
          v144 = buf;
          v143 = v35;
          messageCopy6 = message;
          v142 = v36;
          v145 = &v187;
          _os_activity_initiate(&dword_262485000, "acquireAssertionWithDescriptor", OS_ACTIVITY_FLAG_DEFAULT, v139);
        }

        else if (v7 == sel_async_invalidateAssertionWithIdentifier_)
        {
          v135[0] = MEMORY[0x277D85DD0];
          v135[1] = 3221225472;
          v135[2] = __36__RBConnectionClient_handleMessage___block_invoke_4;
          v135[3] = &unk_279B33410;
          v138 = buf;
          v136 = v5;
          messageCopy7 = message;
          _os_activity_initiate(&dword_262485000, "invalidateAssertionWithIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v135);
        }

        else if (v7 == sel_void_invalidateAssertionWithIdentifier_error_)
        {
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __36__RBConnectionClient_handleMessage___block_invoke_5;
          v131[3] = &unk_279B33410;
          v134 = buf;
          v132 = v5;
          messageCopy8 = message;
          _os_activity_initiate(&dword_262485000, "invalidateAssertionWithIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v131);
        }

        else if (v7 == sel_assertionDescriptorsWithFlattenedAttributes_error_)
        {
          v126[0] = MEMORY[0x277D85DD0];
          v126[1] = 3221225472;
          v126[2] = __36__RBConnectionClient_handleMessage___block_invoke_6;
          v126[3] = &unk_279B333C0;
          v130 = buf;
          v127 = v5;
          messageCopy9 = message;
          v129 = v38;
          _os_activity_initiate(&dword_262485000, "assertionDescriptorsWithFlattenedAttributes", OS_ACTIVITY_FLAG_DEFAULT, v126);
        }

        else if (v7 == sel_executeLaunchRequest_error_)
        {
          v118[0] = MEMORY[0x277D85DD0];
          v118[1] = 3221225472;
          v118[2] = __36__RBConnectionClient_handleMessage___block_invoke_7;
          v118[3] = &unk_279B33438;
          v119 = v5;
          v123 = buf;
          v122 = v34;
          messageCopy10 = message;
          v125 = v11;
          v121 = v36;
          v124 = &v187;
          _os_activity_initiate(&dword_262485000, "executeLaunchRequest", OS_ACTIVITY_FLAG_DEFAULT, v118);
        }

        else if (v7 == sel_executeTerminateRequest_identifier_error_)
        {
          v112[0] = MEMORY[0x277D85DD0];
          v112[1] = 3221225472;
          v112[2] = __36__RBConnectionClient_handleMessage___block_invoke_8;
          v112[3] = &unk_279B33460;
          v116 = buf;
          v113 = v5;
          messageCopy11 = message;
          v115 = v36;
          v117 = &v187;
          _os_activity_initiate(&dword_262485000, "executeTerminateRequest", OS_ACTIVITY_FLAG_DEFAULT, v112);
        }

        else if (v7 == sel_subscribeToProcessDeath_error_)
        {
          v107[0] = MEMORY[0x277D85DD0];
          v107[1] = 3221225472;
          v107[2] = __36__RBConnectionClient_handleMessage___block_invoke_9;
          v107[3] = &unk_279B333C0;
          v111 = buf;
          v108 = v5;
          messageCopy12 = message;
          v110 = v38;
          _os_activity_initiate(&dword_262485000, "subscribeToProcessDeath", OS_ACTIVITY_FLAG_DEFAULT, v107);
        }

        else if (v7 == sel_void_subscribeToProcessStateChangesWithConfiguration_error_)
        {
          v103[0] = MEMORY[0x277D85DD0];
          v103[1] = 3221225472;
          v103[2] = __36__RBConnectionClient_handleMessage___block_invoke_10;
          v103[3] = &unk_279B33410;
          v106 = buf;
          v104 = v5;
          messageCopy13 = message;
          _os_activity_initiate(&dword_262485000, "subscribeToProcessStateChangesWithConfiguration", OS_ACTIVITY_FLAG_DEFAULT, v103);
        }

        else if (v7 == sel_async_unsubscribeFromProcessStateChangesWithIdentifier_)
        {
          v99[0] = MEMORY[0x277D85DD0];
          v99[1] = 3221225472;
          v99[2] = __36__RBConnectionClient_handleMessage___block_invoke_11;
          v99[3] = &unk_279B33410;
          v102 = buf;
          v100 = v5;
          messageCopy14 = message;
          _os_activity_initiate(&dword_262485000, "unsubscribeFromProcessStateChangesWithIdentifier", OS_ACTIVITY_FLAG_DEFAULT, v99);
        }

        else if (v7 == sel_statesForPredicate_descriptor_error_)
        {
          v93[0] = MEMORY[0x277D85DD0];
          v93[1] = 3221225472;
          v93[2] = __36__RBConnectionClient_handleMessage___block_invoke_12;
          v93[3] = &unk_279B33460;
          v97 = buf;
          v94 = v5;
          messageCopy15 = message;
          v96 = v36;
          v98 = &v187;
          _os_activity_initiate(&dword_262485000, "statesForPredicate", OS_ACTIVITY_FLAG_DEFAULT, v93);
        }

        else if (v7 == sel_void_intendToExit_withStatus_)
        {
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __36__RBConnectionClient_handleMessage___block_invoke_13;
          v88[3] = &unk_279B33488;
          v89 = v5;
          v92 = buf;
          v91 = v23;
          messageCopy16 = message;
          _os_activity_initiate(&dword_262485000, "intendToExit", OS_ACTIVITY_FLAG_DEFAULT, v88);
        }

        else if (v7 == sel_lastExitContextForInstance_error_)
        {
          v82[0] = MEMORY[0x277D85DD0];
          v82[1] = 3221225472;
          v82[2] = __36__RBConnectionClient_handleMessage___block_invoke_14;
          v82[3] = &unk_279B334B0;
          v83 = v5;
          v87 = buf;
          v86 = v23;
          messageCopy17 = message;
          v85 = v38;
          _os_activity_initiate(&dword_262485000, "lastExitContextForInstance", OS_ACTIVITY_FLAG_DEFAULT, v82);
        }

        else if (v7 == sel_limitationsForInstance_error_)
        {
          v76[0] = MEMORY[0x277D85DD0];
          v76[1] = 3221225472;
          v76[2] = __36__RBConnectionClient_handleMessage___block_invoke_15;
          v76[3] = &unk_279B334B0;
          v77 = v5;
          v81 = buf;
          v80 = v23;
          messageCopy18 = message;
          v79 = v38;
          _os_activity_initiate(&dword_262485000, "limitationsForInstance", OS_ACTIVITY_FLAG_DEFAULT, v76);
        }

        else if (v7 == sel_hostProcessForInstance_error_)
        {
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 3221225472;
          v70[2] = __36__RBConnectionClient_handleMessage___block_invoke_16;
          v70[3] = &unk_279B334B0;
          v71 = v5;
          v75 = buf;
          v74 = v23;
          messageCopy19 = message;
          v73 = v38;
          _os_activity_initiate(&dword_262485000, "hostProcessForInstance", OS_ACTIVITY_FLAG_DEFAULT, v70);
        }

        else if (v7 == sel_infoPlistResultForInstance_forKeys_error_)
        {
          v65[0] = MEMORY[0x277D85DD0];
          v65[1] = 3221225472;
          v65[2] = __36__RBConnectionClient_handleMessage___block_invoke_17;
          v65[3] = &unk_279B333C0;
          v69 = buf;
          v66 = v5;
          messageCopy20 = message;
          v68 = v38;
          _os_activity_initiate(&dword_262485000, "infoPlistResultForInstance", OS_ACTIVITY_FLAG_DEFAULT, v65);
        }

        else if (v7 == sel_captureStateForSubsystem_error_)
        {
          v59[0] = MEMORY[0x277D85DD0];
          v59[1] = 3221225472;
          v59[2] = __36__RBConnectionClient_handleMessage___block_invoke_18;
          v59[3] = &unk_279B33460;
          v63 = buf;
          v60 = v5;
          messageCopy21 = message;
          v62 = v36;
          v64 = &v187;
          _os_activity_initiate(&dword_262485000, "captureStateForSubsystem", OS_ACTIVITY_FLAG_DEFAULT, v59);
        }

        else if (v7 == sel_identifiersForStateCaptureSubsystemsWithError_)
        {
          v56[0] = MEMORY[0x277D85DD0];
          v56[1] = 3221225472;
          v56[2] = __36__RBConnectionClient_handleMessage___block_invoke_19;
          v56[3] = &unk_279B33410;
          v56[4] = message;
          v58 = buf;
          v57 = v38;
          _os_activity_initiate(&dword_262485000, "identifiersForStateCaptureSubsystemsWithError", OS_ACTIVITY_FLAG_DEFAULT, v56);
        }

        else if (v7 == sel_busyExtensionInstancesFromSet_error_)
        {
          v51[0] = MEMORY[0x277D85DD0];
          v51[1] = 3221225472;
          v51[2] = __36__RBConnectionClient_handleMessage___block_invoke_20;
          v51[3] = &unk_279B333C0;
          v55 = buf;
          v52 = v5;
          messageCopy22 = message;
          v54 = v38;
          _os_activity_initiate(&dword_262485000, "busyExtensionInstancesFromSet", OS_ACTIVITY_FLAG_DEFAULT, v51);
        }

        else if (v7 == sel_preventLaunchPredicatesWithError_)
        {
          v49[0] = MEMORY[0x277D85DD0];
          v49[1] = 3221225472;
          v49[2] = __36__RBConnectionClient_handleMessage___block_invoke_21;
          v49[3] = &unk_279B32B80;
          v49[4] = message;
          v50 = v38;
          _os_activity_initiate(&dword_262485000, "preventLaunchPredicates", OS_ACTIVITY_FLAG_DEFAULT, v49);
        }

        else if (v7 == sel_saveEndowment_withError_)
        {
          v44[0] = MEMORY[0x277D85DD0];
          v44[1] = 3221225472;
          v44[2] = __36__RBConnectionClient_handleMessage___block_invoke_22;
          v44[3] = &unk_279B333C0;
          v48 = buf;
          v45 = v5;
          messageCopy23 = message;
          v47 = v38;
          _os_activity_initiate(&dword_262485000, "saveEndowment", OS_ACTIVITY_FLAG_DEFAULT, v44);
        }

        else if (v7 == sel_isIdentityAnAngel_withError_)
        {
          v39[0] = MEMORY[0x277D85DD0];
          v39[1] = 3221225472;
          v39[2] = __36__RBConnectionClient_handleMessage___block_invoke_23;
          v39[3] = &unk_279B333C0;
          v43 = buf;
          v40 = v5;
          messageCopy24 = message;
          v42 = v38;
          _os_activity_initiate(&dword_262485000, "isIdentityAnAngel", OS_ACTIVITY_FLAG_DEFAULT, v39);
        }

        else
        {
          v24 = rbs_connection_log();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
          {
            v25 = *(message + 112);
            v26 = NSStringFromSelector(v7);
            [(RBConnectionClient *)v25 handleMessage:v26, v195, v24];
          }

          v27 = MEMORY[0x277CCA9B8];
          v193 = *MEMORY[0x277CCA470];
          v194 = @"The server has no implementation for this message";
          v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v194 forKeys:&v193 count:1];
          v29 = [v27 errorWithDomain:*MEMORY[0x277D47098] code:501 userInfo:v28];
          v30 = *(*&buf[8] + 40);
          *(*&buf[8] + 40) = v29;
        }

        v33 = v188[5];
        if (v33)
        {
          (*(v33 + 16))(v33, *(*&buf[8] + 40));
        }

        _Block_object_dispose(buf, 8);

        _Block_object_dispose(&v187, 8);
        v15 = v36;
      }

      else
      {
        v14 = rbs_connection_log();
        v15 = v14;
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          [(RBConnectionClient *)message handleMessage:v14];
          v15 = v14;
        }
      }
    }
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 rbs_isPermanentFailure];
    v6 = rbs_connection_log();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        __36__RBConnectionClient_handleMessage___block_invoke_cold_1();
      }
    }

    else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v8 = *(*(a1 + 32) + 112);
      v10 = 138543618;
      v11 = v8;
      v12 = 2114;
      v13 = v4;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "Error handling message from %{public}@: <%{public}@>", &v10, 0x16u);
    }
  }

  v9 = *(a1 + 40);
  if (v9)
  {
    [v9 encodeObject:v4 forKey:*MEMORY[0x277D470B0]];
    [*(a1 + 48) send];
  }
}

id __36__RBConnectionClient_handleMessage___block_invoke_32(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithEuid:*(a1 + 40)];
  v4 = [v3 processIdentity];
  v5 = [v4 personaString];
  if (v5)
  {
  }

  else
  {
    v6 = *(a1 + 32);

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = v3;
    v3 = [v3 copyWithPersonaString:*(a1 + 32)];
  }

LABEL_6:

  return v3;
}

id __36__RBConnectionClient_handleMessage___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithAuid:*(a1 + 40)];
  v4 = [v3 personaString];
  if (!v4)
  {
    if (!*(a1 + 32))
    {
      goto LABEL_5;
    }

    v5 = [v3 copyWithPersonaString:?];
    v4 = v3;
    v3 = v5;
  }

LABEL_5:

  return v3;
}

id __36__RBConnectionClient_handleMessage___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = [a2 copyWithAuid:*(a1 + 40)];
  v4 = [v3 identity];
  v5 = [v4 personaString];
  if (v5)
  {
  }

  else
  {
    v6 = *(a1 + 32);

    if (!v6)
    {
      goto LABEL_6;
    }

    v4 = v3;
    v3 = [v3 copyWithPersonaString:*(a1 + 32)];
  }

LABEL_6:

  return v3;
}

void __36__RBConnectionClient_handleMessage___block_invoke_40(uint64_t a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 64) + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v15 = *MEMORY[0x277CCA7E8];
    v16[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(*(a1 + 64) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    __36__RBConnectionClient_handleMessage___block_invoke_40_cold_1(a1, v5, &v14);
    v9 = v14;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_3_50(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 56) + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v17 = *MEMORY[0x277CCA7E8];
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v12 = [RBConnectionClient lookupProcessName:error:];
    objc_storeStrong(v8, 0);
    [*(a1 + 48) encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_53(void *a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v17 = *MEMORY[0x277CCA7E8];
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v12 = [RBConnectionClient lookupHandleForPredicate:error:];
    objc_storeStrong(v8, 0);
    [v12 fullEncode:a1[6] forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_2_57(uint64_t a1)
{
  v18[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1 + 56) + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v17 = *MEMORY[0x277CCA7E8];
    v18[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:&v17 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v12 = [RBConnectionClient lookupPortForIdentifier:error:];
    objc_storeStrong(v8, 0);
    [*(a1 + 48) encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_3_61(void *a1)
{
  v23[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = a1 + 8;
  v5 = *(a1[8] + 8);
  obj = 0;
  v6 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1[8] + 8) + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v20 = *MEMORY[0x277CCA7E8];
    v21 = v7;
    v10 = MEMORY[0x277CBEAC0];
    v11 = &v21;
    v12 = &v20;
  }

  else
  {
    v13 = [v6 target];
    if (v13)
    {
      v18 = v13;
      v14 = (*(a1[7] + 16))();

      [v6 setTarget:v14];
      [(RBConnectionClient *)a1[5] acquireAssertionForDescriptor:v6 withReply:a1[6]];
      v15 = 0;
      v4 = a1 + 9;
      goto LABEL_6;
    }

    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v22 = *MEMORY[0x277CCA470];
    v23[0] = @"missing valid target";
    v10 = MEMORY[0x277CBEAC0];
    v11 = v23;
    v12 = &v22;
  }

  v14 = [v10 dictionaryWithObjects:v11 forKeys:v12 count:1];
  v15 = [v8 errorWithDomain:v9 code:3 userInfo:v14];
LABEL_6:
  v16 = *(*v4 + 8);
  v17 = *(v16 + 40);
  *(v16 + 40) = v15;
}

void __36__RBConnectionClient_handleMessage___block_invoke_4(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = a1[5];
    v16 = 0;
    [(RBConnectionClient *)v14 invalidateAssertionWithIdentifier:v5 sync:0 error:&v16];
    v15 = v16;
    v10 = *(v6 + 40);
    *(v6 + 40) = v15;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_5(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = a1[5];
    v16 = 0;
    [(RBConnectionClient *)v14 invalidateAssertionWithIdentifier:v5 sync:1 error:&v16];
    v15 = v16;
    v10 = *(v6 + 40);
    *(v6 + 40) = v15;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_6(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    v13 = *(a1 + 40);
    v14 = [v5 BOOLValue];
    v15 = *(*(a1 + 56) + 8);
    v16 = 0;
    v9 = [(RBConnectionClient *)v13 assertionDescriptorsWithFlattenedAttributes:v14 error:&v16];
    objc_storeStrong((v15 + 40), v16);
    [*(a1 + 48) encodeObject:v9 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_7(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = a1 + 64;
  v5 = *(*(a1 + 64) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(*(a1 + 64) + 8) + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
  }

  else
  {
    v14 = [v6 context];
    v15 = [v14 identity];

    v10 = (*(*(a1 + 56) + 16))();

    v16 = [v6 context];
    [v16 setIdentity:v10];

    [(RBConnectionClient *)*(a1 + 40) executeLaunchRequest:v6 withEuid:*(a1 + 80) withReply:*(a1 + 48)];
    v11 = 0;
    v4 = a1 + 72;
  }

  v12 = *(*v4 + 8);
  v13 = *(v12 + 40);
  *(v12 + 40) = v11;
}

void __36__RBConnectionClient_handleMessage___block_invoke_8(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1[7] + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v15 = *MEMORY[0x277CCA7E8];
    v16[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    [(RBConnectionClient *)a1[5] executeTerminateRequest:v5 withReply:a1[6]];
    v13 = *(a1[8] + 8);
    v9 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_10(void *a1)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  if (v7)
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47098];
    v16 = *MEMORY[0x277CCA7E8];
    v17[0] = v7;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v11 = [v8 errorWithDomain:v9 code:3 userInfo:v10];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    [RBConnectionClient subscribeToProcessStateChangesWithConfiguration:error:];
    v14 = 0;
    v10 = *(v6 + 40);
    *(v6 + 40) = v14;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_11(void *a1)
{
  v15[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[6] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1[6] + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v14 = *MEMORY[0x277CCA7E8];
    v15[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:&v14 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(a1[6] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    -[RBConnectionClient unsubscribeFromProcessStateChangesWithIdentifier:](a1[5], [v5 unsignedLongLongValue]);
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_12(void *a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = a1[4];
  v7 = objc_opt_class();
  v8 = *(a1[7] + 8);
  v18 = 0;
  v9 = [v6 decodeArgumentWithClass:v7 atIndex:1 allowNil:1 error:&v18];
  objc_storeStrong((v8 + 40), v18);
  v10 = *(*(a1[7] + 8) + 40);
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v10;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(a1[7] + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    [(RBConnectionClient *)a1[5] statesForPredicate:v5 withDescriptor:v9 withReply:a1[6]];
    v17 = *(a1[8] + 8);
    v13 = *(v17 + 40);
    *(v17 + 40) = 0;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_13(void *a1)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(a1[6] + 16))();

  v7 = a1[4];
  v8 = objc_opt_class();
  v9 = *(a1[7] + 8);
  v22 = 0;
  v10 = [v7 decodeArgumentWithClass:v8 atIndex:1 allowNil:0 error:&v22];
  objc_storeStrong((v9 + 40), v22);
  v11 = *(a1[7] + 8);
  v12 = *(v11 + 40);
  if (v12)
  {
    v13 = MEMORY[0x277CCA9B8];
    v14 = *MEMORY[0x277D47098];
    v24 = *MEMORY[0x277CCA7E8];
    v25[0] = v12;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
    v16 = [v13 errorWithDomain:v14 code:3 userInfo:v15];
    v17 = *(a1[7] + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  else
  {
    v19 = a1[5];
    v21 = 0;
    [(RBConnectionClient *)v19 intendToExit:v6 withStatus:v10 error:&v21];
    v20 = v21;
    v15 = *(v11 + 40);
    *(v11 + 40) = v20;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_14(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(*(a1 + 56) + 16))();

  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = 0;
    v13 = [(RBConnectionClient *)v17 lastExitContextForInstance:v6 error:&v18];
    objc_storeStrong(v9, v18);
    [*(a1 + 48) encodeObject:v13 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_15(uint64_t a1)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 64) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = (*(*(a1 + 56) + 16))();

  v7 = *(*(a1 + 64) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v20 = *MEMORY[0x277CCA7E8];
    v21[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 64) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v17 = *(a1 + 40);
    v18 = 0;
    v13 = [(RBConnectionClient *)v17 limitationsForInstance:v6 error:&v18];
    objc_storeStrong(v9, v18);
    [*(a1 + 48) encodeObject:v13 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_17(uint64_t a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = *(*(a1 + 56) + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1 + 32);
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = *(*(a1 + 56) + 8);
  v23 = 0;
  v10 = [v6 decodeArgumentCollection:v7 withClass:v8 atIndex:1 allowNil:0 error:&v23];
  objc_storeStrong((v9 + 40), v23);
  v11 = *(*(a1 + 56) + 8);
  v14 = *(v11 + 40);
  v13 = (v11 + 40);
  v12 = v14;
  if (v14)
  {
    v15 = MEMORY[0x277CCA9B8];
    v16 = *MEMORY[0x277D47098];
    v25 = *MEMORY[0x277CCA7E8];
    v26[0] = v12;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:&v25 count:1];
    v18 = [v15 errorWithDomain:v16 code:3 userInfo:v17];
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v18;
  }

  else
  {
    v21 = *(a1 + 40);
    v22 = 0;
    v17 = [(RBConnectionClient *)v21 infoPlistResultForInstance:v5 forKeys:v10 error:&v22];
    objc_storeStrong(v13, v22);
    [*(a1 + 48) encodeObject:v17 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_18(void *a1)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:1 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(*(a1[7] + 8) + 40);
  if (v6)
  {
    v7 = MEMORY[0x277CCA9B8];
    v8 = *MEMORY[0x277D47098];
    v15 = *MEMORY[0x277CCA7E8];
    v16[0] = v6;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v10 = [v7 errorWithDomain:v8 code:3 userInfo:v9];
    v11 = *(a1[7] + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  else
  {
    [RBConnectionClient captureStateForSubsystem:withReply:];
    v13 = *(a1[8] + 8);
    v9 = *(v13 + 40);
    *(v13 + 40) = 0;
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_19(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = 0;
  v4 = [(RBConnectionClient *)v2 identifiersForStateCaptureSubsystemsWithError:?];
  objc_storeStrong((v3 + 40), obj);
  [*(a1 + 40) encodeObject:v4 forKey:*MEMORY[0x277D470C0]];
}

void __36__RBConnectionClient_handleMessage___block_invoke_20(uint64_t a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = *(*(a1 + 56) + 8);
  obj = 0;
  v6 = [v2 decodeArgumentCollection:v3 withClass:v4 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  v7 = *(*(a1 + 56) + 8);
  v10 = *(v7 + 40);
  v9 = (v7 + 40);
  v8 = v10;
  if (v10)
  {
    v11 = MEMORY[0x277CCA9B8];
    v12 = *MEMORY[0x277D47098];
    v18 = *MEMORY[0x277CCA7E8];
    v19[0] = v8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    v14 = [v11 errorWithDomain:v12 code:3 userInfo:v13];
    v15 = *(*(a1 + 56) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;
  }

  else
  {
    v13 = [RBConnectionClient busyExtensionInstancesFromSet:error:];
    objc_storeStrong(v9, 0);
    [*(a1 + 48) encodeObject:v13 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_21(uint64_t a1)
{
  v2 = [(RBConnectionClient *)*(a1 + 32) preventLaunchPredicates];
  [*(a1 + 40) encodeObject:v2 forKey:*MEMORY[0x277D470C0]];
}

void __36__RBConnectionClient_handleMessage___block_invoke_22(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = a1[5];
    v19 = 0;
    v17 = [(RBConnectionClient *)v16 saveEndowment:v5 withError:&v19];
    objc_storeStrong(v8, v19);
    v18 = a1[6];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    [v18 encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }
}

void __36__RBConnectionClient_handleMessage___block_invoke_23(void *a1)
{
  v22[1] = *MEMORY[0x277D85DE8];
  v2 = a1[4];
  v3 = objc_opt_class();
  v4 = *(a1[7] + 8);
  obj = 0;
  v5 = [v2 decodeArgumentWithClass:v3 atIndex:0 allowNil:0 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[7] + 8);
  v9 = *(v6 + 40);
  v8 = (v6 + 40);
  v7 = v9;
  if (v9)
  {
    v10 = MEMORY[0x277CCA9B8];
    v11 = *MEMORY[0x277D47098];
    v21 = *MEMORY[0x277CCA7E8];
    v22[0] = v7;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    v13 = [v10 errorWithDomain:v11 code:3 userInfo:v12];
    v14 = *(a1[7] + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;
  }

  else
  {
    v16 = a1[5];
    v19 = 0;
    v17 = [(RBConnectionClient *)v16 isIdentityAnAngel:v5 withError:&v19];
    objc_storeStrong(v8, v19);
    v18 = a1[6];
    v12 = [MEMORY[0x277CCABB0] numberWithBool:v17];
    [v18 encodeObject:v12 forKey:*MEMORY[0x277D470C0]];
  }
}

void __43__RBConnectionClient_handshakeWithRequest___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  os_unfair_lock_lock((*(a1 + 32) + 16));
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v28;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v28 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v27 + 1) + 8 * i);
        v13 = [v7 objectForKeyedSubscript:v12];
        v14 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v12, "unsignedIntegerValue")}];
        [*(a1 + 48) setObject:v13 forKeyedSubscript:v14];
        [*(*(a1 + 32) + 168) addObject:v13];
      }

      v9 = [v7 countByEnumeratingWithState:&v27 objects:v32 count:16];
    }

    while (v9);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 16));
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v15 = v6;
  v16 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v24;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v24 != v18)
        {
          objc_enumerationMutation(v15);
        }

        v20 = *(*(&v23 + 1) + 8 * j);
        v21 = [v15 objectForKeyedSubscript:{v20, v23}];
        v22 = [*(a1 + 40) objectAtIndexedSubscript:{objc_msgSend(v20, "unsignedIntegerValue")}];
        [*(a1 + 56) setObject:v21 forKeyedSubscript:v22];
      }

      v17 = [v15 countByEnumeratingWithState:&v23 objects:v31 count:16];
    }

    while (v17);
  }
}

void __62__RBConnectionClient_acquireAssertionForDescriptor_withReply___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [*(a1 + 32) payload];
  v4 = v3;
  if (v5)
  {
    [v3 encodeObject:v5 forKey:*MEMORY[0x277D470B0]];

    os_unfair_lock_lock((*(a1 + 48) + 16));
    [*(*(a1 + 48) + 168) removeObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 48) + 16));
  }

  else
  {
    [v3 encodeObject:*(a1 + 40) forKey:*MEMORY[0x277D470C0]];
  }

  [*(a1 + 32) send];
}

void __62__RBConnectionClient_executeLaunchRequest_withEuid_withReply___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v30 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    [*(a1 + 32) encodeObject:v12 forKey:*MEMORY[0x277D470B0]];
  }

  if (v9)
  {
    [v9 fullEncode:*(a1 + 32) forKey:*MEMORY[0x277D470C0]];
    v13 = [*(a1 + 40) context];
    v14 = [v13 attributes];
    v15 = v14;
    if (!v10)
    {
      if (![v14 count])
      {
        v10 = 0;
        goto LABEL_6;
      }

      v16 = rbs_connection_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 40);
        v18 = *(*(a1 + 48) + 112);
        v19 = [v13 identity];
        v22 = 138543874;
        v23 = v17;
        v24 = 2114;
        v25 = v18;
        v26 = 2114;
        v27 = v19;
        _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_INFO, "Re-acquiring launch assertion for request %{public}@ from %{public}@ for target: %{public}@", &v22, 0x20u);
      }

      v10 = [*(*(a1 + 48) + 72) acquireDroppedLaunchAssertion:*(a1 + 40) requestor:*(*(a1 + 48) + 112)];
      if (!v10)
      {
        goto LABEL_6;
      }
    }

    os_unfair_lock_lock((*(a1 + 48) + 16));
    [*(*(a1 + 48) + 168) addObject:v10];
    os_unfair_lock_unlock((*(a1 + 48) + 16));
    [*(a1 + 32) encodeObject:v10 forKey:*MEMORY[0x277D470A8]];
LABEL_6:
    if ([v11 count])
    {
      [*(a1 + 32) encodeDictionary:v11 forKey:*MEMORY[0x277D470B8]];
    }

LABEL_12:
    goto LABEL_13;
  }

  if (v10)
  {
    v13 = rbs_connection_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      v20 = *(a1 + 40);
      v21 = *(*(a1 + 48) + 112);
      v22 = 138544130;
      v23 = v20;
      v24 = 2114;
      v25 = v21;
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v12;
      _os_log_fault_impl(&dword_262485000, v13, OS_LOG_TYPE_FAULT, "launch request %{public}@ from %{public}@ failed but still created an assertion (%{public}@) : error=%{public}@", &v22, 0x2Au);
    }

    goto LABEL_12;
  }

LABEL_13:
  [*(a1 + 56) send];
}

void __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = [*(a1 + 32) bundleIdentifier];
      v13 = 138543618;
      v14 = v8;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_INFO, "Successfully acquired plugin hold for %{public}@: %{public}@", &v13, 0x16u);
    }

    v9 = 0;
  }

  else
  {
    v7 = objc_opt_new();
    [v7 setObject:@"Error acquiring hold on plugins" forKeyedSubscript:*MEMORY[0x277CCA470]];
    [v7 setObject:v6 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
    v9 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:5 userInfo:v7];
    v10 = [v6 code];
    v11 = rbs_connection_log();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_ERROR);
    if (v10 == 14)
    {
      if (v12)
      {
        __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_2(a1, v6, v11);
      }
    }

    else if (v12)
    {
      __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_1(a1, v6, v11);
    }
  }

  (*(*(a1 + 40) + 16))();
}

void __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke(uint64_t a1)
{
  v83 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 72) & 1) == 0 && (*(a1 + 73) & 1) == 0)
  {
    v2 = +[RBAssertionDescriptorValidatorContext context];
    [v2 setOriginatorProcess:*(*(a1 + 32) + 112)];
    v3 = [*(*(a1 + 32) + 64) entitlementManager];
    v4 = [v2 originatorProcess];
    v5 = [v3 entitlementsForProcess:v4];
    [v2 setOriginatorEntitlements:v5];

    v6 = [v2 originatorProcess];
    v7 = [v6 bundleProperties];
    [v2 setOriginatorProperties:v7];

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v8 = *(a1 + 40);
    v9 = [v8 countByEnumeratingWithState:&v72 objects:v82 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v73;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v73 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v72 + 1) + 8 * i);
          v14 = [v13 clientRestriction];
          [v2 setTargetProcess:v13];
          v15 = [*(*(a1 + 32) + 64) entitlementManager];
          v16 = [v2 targetProcess];
          v17 = [v15 entitlementsForProcess:v16];
          [v2 setTargetEntitlements:v17];

          v18 = [v2 targetProcess];
          v19 = [v18 bundleProperties];
          [v2 setTargetProperties:v19];

          v71 = 0;
          LOBYTE(v19) = [v14 allowsContext:v2 withError:&v71];
          v20 = v71;
          v21 = v20;
          if ((v19 & 1) == 0)
          {
            [*(a1 + 48) encodeBool:0 forKey:*MEMORY[0x277D470C0]];
            [*(a1 + 48) encodeObject:v21 forKey:*MEMORY[0x277D470B0]];
            [*(a1 + 56) send];

            v22 = rbs_connection_log();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "Client is not allowed to make termination request.", buf, 2u);
            }

            goto LABEL_38;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v72 objects:v82 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }
  }

  v22 = [*(a1 + 64) context];
  v23 = [*(a1 + 64) predicate];
  v24 = [v23 bundleIdentifier];
  v25 = [v23 beforeTranslocationBundlePath];
  [(RBConnectionClient *)*(a1 + 32) expandPredicateForContained:?];
  v26 = [v22 attributes];
  v27 = [v26 count];

  v28 = rbs_connection_log();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_INFO);
  if (!v27)
  {
    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v28, OS_LOG_TYPE_INFO, "No attributes, calling executeTerminateRequest directly", buf, 2u);
    }

    v45 = *(*(a1 + 32) + 40);
    v46 = *(a1 + 64);
    v68[0] = MEMORY[0x277D85DD0];
    v68[1] = 3221225472;
    v68[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_181;
    v68[3] = &unk_279B33550;
    v31 = &v69;
    v69 = *(a1 + 48);
    v32 = &v70;
    v70 = *(a1 + 56);
    [v45 executeTerminateRequest:v46 completion:v68];
    goto LABEL_37;
  }

  if (v29)
  {
    v30 = [*(a1 + 64) predicate];
    *buf = 138543362;
    v77 = v30;
    _os_log_impl(&dword_262485000, v28, OS_LOG_TYPE_INFO, "Requesting plugIn hold for %{public}@", buf, 0xCu);
  }

  v63[0] = MEMORY[0x277D85DD0];
  v63[1] = 3221225472;
  v63[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_183;
  v63[3] = &unk_279B335A0;
  v31 = &v64;
  v64 = *(a1 + 48);
  v32 = v65;
  v33 = *(a1 + 56);
  v34 = *(a1 + 32);
  v65[0] = v33;
  v65[1] = v34;
  v35 = v22;
  v66 = v35;
  v67 = *(a1 + 64);
  v36 = MEMORY[0x266729AD0](v63);
  if (!(v24 | v25))
  {
    v47 = rbs_connection_log();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v77 = v23;
      _os_log_impl(&dword_262485000, v47, OS_LOG_TYPE_DEFAULT, "skipping plugin hold for termination request without bundle ID or beforeTranslocationBundlePath %{public}@", buf, 0xCu);
    }

    v36[2](v36, 0, 0);
    v36 = 0;
LABEL_35:
    v39 = 0;
    goto LABEL_36;
  }

  v37 = MEMORY[0x277CC1E60];
  if (v25)
  {
    v38 = [MEMORY[0x277CBEBC0] fileURLWithPath:v25];
    v39 = [v37 applicationProxyForBundleURL:v38];

    v40 = [v39 bundleURL];
    if (v40)
    {
      v41 = v40;
      v62 = v24;
      [v39 bundleURL];
      v43 = v42 = v25;
      v44 = [v43 path];
      v61 = v42;
      LOBYTE(v42) = [v42 isEqual:v44];

      if ((v42 & 1) == 0)
      {
        v49 = rbs_connection_log();
        v25 = v61;
        v31 = &v64;
        if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
        {
          v59 = [v39 bundleURL];
          v60 = [v59 path];
          *buf = 138543874;
          v77 = v23;
          v78 = 2114;
          v79 = v61;
          v80 = 2114;
          v81 = v60;
          _os_log_error_impl(&dword_262485000, v49, OS_LOG_TYPE_ERROR, "beforeTranslocationBundlePath does not match LS bundleURL %{public}@ (%{public}@, %{public}@)", buf, 0x20u);
        }

        v50 = MEMORY[0x277CCACA8];
        v51 = [v39 bundleURL];
        v52 = [v51 path];
        v53 = [v50 stringWithFormat:@"beforeTranslocationBundlePath does not match LS bundleURL (%@, %@)", v61, v52];

        v54 = objc_opt_new();
        [v54 setObject:v53 forKeyedSubscript:*MEMORY[0x277CCA470]];
        v55 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:1 userInfo:v54];
        (v36)[2](v36, 0, v55);

        v36 = 0;
        v24 = v62;
        v32 = v65;
        goto LABEL_36;
      }

      v25 = v61;
      v24 = v62;
      v32 = v65;
      v31 = &v64;
    }

    else
    {
      v31 = &v64;
    }
  }

  else
  {
    v39 = [MEMORY[0x277CC1E60] applicationProxyForIdentifier:v24];
  }

  if (v36)
  {
    if (v39)
    {
      v56 = *(a1 + 32);
      v57 = [v35 shouldTerminatePlugIns];
      v58 = v56;
      v32 = v65;
      [(RBConnectionClient *)v58 _requestPluginHoldForProxy:v39 terminate:v57 completion:v36];
      goto LABEL_36;
    }

    v48 = rbs_connection_log();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v77 = v23;
      _os_log_impl(&dword_262485000, v48, OS_LOG_TYPE_DEFAULT, "skipping plugin hold for termination request, unable to get proxy %{public}@", buf, 0xCu);
    }

    v36[2](v36, 0, 0);
    goto LABEL_35;
  }

LABEL_36:

LABEL_37:
LABEL_38:
}

uint64_t __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_181(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *MEMORY[0x277D470C0];
  v7 = a3;
  [v5 encodeBool:a2 forKey:v6];
  [*(a1 + 32) encodeObject:v7 forKey:*MEMORY[0x277D470B0]];

  v8 = *(a1 + 40);

  return [v8 send];
}

void __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_183(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  if (v5 || !a3)
  {
    v6 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(*(*(a1 + 48) + 136), "pid")}];
    v7 = [MEMORY[0x277D47008] systemTarget];
    v8 = MEMORY[0x277D46DC8];
    v9 = [*(a1 + 56) explanation];
    v10 = [*(a1 + 56) attributes];
    v11 = [v8 descriptorWithIdentifier:v6 target:v7 explanation:v9 attributes:v10];

    v12 = [RBAssertionAcquisitionContext contextForProcess:*(*(a1 + 48) + 112) withDescriptor:v11 daemonContext:*(*(a1 + 48) + 64)];
    [v12 setAcquisitionPolicy:1];
    [v12 setHoldToken:v5];
    v13 = *(a1 + 48);
    v14 = *(v13 + 24);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_2;
    v16[3] = &unk_279B33578;
    v16[4] = v13;
    v17 = v6;
    v18 = *(a1 + 64);
    v19 = *(a1 + 32);
    v20 = v5;
    v21 = *(a1 + 40);
    v15 = v6;
    [v14 acquireAssertionWithContext:v12 completion:v16];
  }

  else
  {
    [*(a1 + 32) encodeObject:a3 forKey:*MEMORY[0x277D470B0]];
    [*(a1 + 32) encodeBool:0 forKey:*MEMORY[0x277D470C0]];
    [*(a1 + 40) send];
  }
}

void __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = [MEMORY[0x277D3D350] managerForUser:*(*(a1 + 32) + 144)];
    [v4 releaseHold:*(a1 + 64)];

    [*(a1 + 56) encodeObject:v3 forKey:*MEMORY[0x277D470B0]];
    [*(a1 + 56) encodeBool:0 forKey:*MEMORY[0x277D470C0]];
  }

  else
  {
    os_unfair_lock_lock((*(a1 + 32) + 16));
    [*(*(a1 + 32) + 168) addObject:*(a1 + 40)];
    os_unfair_lock_unlock((*(a1 + 32) + 16));
    v5 = *(*(a1 + 32) + 40);
    v7 = MEMORY[0x277D85DD0];
    v8 = 3221225472;
    v9 = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_3;
    v10 = &unk_279B33550;
    v6 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = *(a1 + 40);
    [v5 executeTerminateRequest:v6 completion:&v7];
  }

  [*(a1 + 72) send];
}

uint64_t __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *MEMORY[0x277D470A8];
  v8 = a3;
  [v5 encodeObject:v6 forKey:v7];
  [*(a1 + 32) encodeObject:v8 forKey:*MEMORY[0x277D470B0]];

  v9 = *(a1 + 32);
  v10 = *MEMORY[0x277D470C0];

  return [v9 encodeBool:a2 forKey:v10];
}

- (void)_addStatesForUntrackedProcessesTo:(void *)to withPredicate:
{
  v46 = *MEMORY[0x277D85DE8];
  v5 = a2;
  toCopy = to;
  selfCopy = self;
  if (self)
  {
    v7 = [v5 count];
    processIdentifiers = [toCopy processIdentifiers];
    v9 = [processIdentifiers count];

    if (v7 >= v9)
    {
      self = v5;
    }

    else
    {
      processIdentifiers2 = [toCopy processIdentifiers];
      v11 = [processIdentifiers2 mutableCopy];

      v42 = 0u;
      v43 = 0u;
      v40 = 0u;
      v41 = 0u;
      v34 = v5;
      v12 = v5;
      v13 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v41;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v41 != v15)
            {
              objc_enumerationMutation(v12);
            }

            process = [*(*(&v40 + 1) + 8 * i) process];
            instance = [process instance];
            identifier = [instance identifier];
            [v11 removeObject:identifier];
          }

          v14 = [v12 countByEnumeratingWithState:&v40 objects:v45 count:16];
        }

        while (v14);
      }

      if ([v11 count])
      {
        v20 = [v12 mutableCopy];
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v21 = v11;
        v22 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v37;
          do
          {
            for (j = 0; j != v23; ++j)
            {
              if (*v37 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [*(*(&v36 + 1) + 8 * j) rbs_pid];
              if (RBSPIDExists())
              {
                v26 = selfCopy[5];
                processIdentifier = [toCopy processIdentifier];
                v28 = [v26 processForIdentifierWithoutStartingTracking:processIdentifier];

                if (v28)
                {
                  v29 = toCopy;
                  v30 = MEMORY[0x277D46FA8];
                  handle = [v28 handle];
                  v32 = [v30 untrackedRunningStateforProcess:handle];

                  if (!v32)
                  {
                    [RBConnectionClient _addStatesForUntrackedProcessesTo:withPredicate:];
                  }

                  [v20 addObject:v32];

                  toCopy = v29;
                }
              }
            }

            v23 = [v21 countByEnumeratingWithState:&v36 objects:v44 count:16];
          }

          while (v23);
        }

        self = [v20 copy];
      }

      else
      {
        self = v12;
      }

      v5 = v34;
    }
  }

  return self;
}

void __66__RBConnectionClient_statesForPredicate_withDescriptor_withReply___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 48) statesMatchingPredicate:*(a1 + 40)];
  [MEMORY[0x277D46FA8] setActiveStateDescriptor:*(a1 + 48)];
  v3 = [v2 count];
  v7 = [(RBConnectionClient *)*(a1 + 32) _addStatesForUntrackedProcessesTo:v2 withPredicate:*(a1 + 40)];

  if (v3 == [v7 count])
  {
    v4 = [*(a1 + 56) payload];
    [v4 encodeObject:v7 forKey:*MEMORY[0x277D470C0]];
  }

  else
  {
    v5 = [MEMORY[0x277CCACC8] currentThread];
    v4 = [v5 threadDictionary];

    [v4 setObject:MEMORY[0x277CBEC38] forKey:@"RBSProcessHandleFullEncode"];
    v6 = [*(a1 + 56) payload];
    [v6 encodeObject:v7 forKey:*MEMORY[0x277D470C0]];

    [v4 removeObjectForKey:@"RBSProcessHandleFullEncode"];
  }

  [MEMORY[0x277D46FA8] setActiveStateDescriptor:0];
  [*(a1 + 56) send];
}

void __57__RBConnectionClient_captureStateForSubsystem_withReply___block_invoke(uint64_t a1)
{
  v3 = [*(*(a1 + 32) + 56) stateForSubsystem:*(a1 + 40)];
  v2 = [*(a1 + 48) payload];
  [v2 encodeObject:v3 forKey:*MEMORY[0x277D470C0]];

  [*(a1 + 48) send];
}

- (void)inheritanceManager:(id)manager didChangeInheritances:(id)inheritances completion:(id)completion
{
  v19 = *MEMORY[0x277D85DE8];
  inheritancesCopy = inheritances;
  completionCopy = completion;
  os_unfair_lock_lock(&self->_lock);
  v9 = self->_connection;
  os_unfair_lock_unlock(&self->_lock);
  if (v9)
  {
    v10 = [MEMORY[0x277D47030] messageForMethod:sel_async_didChangeInheritances_completion_ varguments:{inheritancesCopy, 0}];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __74__RBConnectionClient_inheritanceManager_didChangeInheritances_completion___block_invoke;
    v13[3] = &unk_279B335F0;
    v14 = completionCopy;
    [v10 sendToConnection:v9 completion:v13];
  }

  else
  {
    v11 = rbs_connection_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      process = self->_process;
      *buf = 138543618;
      v16 = process;
      v17 = 2114;
      v18 = inheritancesCopy;
      _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "No connection found to send inheritance for process %{public}@ with changeSet: %{public}@", buf, 0x16u);
    }

    if (completionCopy)
    {
      completionCopy[2](completionCopy);
    }
  }
}

uint64_t __74__RBConnectionClient_inheritanceManager_didChangeInheritances_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

void __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  v3 = *(v1 + 24);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke_2;
  v4[3] = &unk_279B33618;
  v4[4] = v1;
  v5 = *(a1 + 48);
  [v3 acquireAssertionWithContext:v2 completion:v4];
}

void __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke_2(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((*(a1 + 32) + 16));
  if (a2)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 192);
    *(v4 + 192) = 0;
  }

  else
  {
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v5 = *(v6 + 192);
    *(v6 + 192) = v7;
  }

  v8 = (*(a1 + 32) + 16);

  os_unfair_lock_unlock(v8);
}

- (NSString)stateCaptureTitle
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBConnectionClient.m" lineNumber:1875 description:@"stateCaptureTitle should be unused for RBConnectionClient"];

  return 0;
}

- (id)initWithContext:(void *)context listener:(void *)listener process:(void *)process connection:
{
  v10 = a2;
  contextCopy = context;
  listenerCopy = listener;
  processCopy = process;
  if (!self)
  {
    goto LABEL_6;
  }

  if (listenerCopy)
  {
    if (v10)
    {
      goto LABEL_4;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:sel_initWithContext_listener_process_connection_ object:self file:@"RBConnectionClient.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"process"}];

    if (v10)
    {
      goto LABEL_4;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:sel_initWithContext_listener_process_connection_ object:self file:@"RBConnectionClient.m" lineNumber:158 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_4:
  v47.receiver = self;
  v47.super_class = RBConnectionClient;
  v13 = objc_msgSendSuper2(&v47, sel_init);
  self = v13;
  if (v13)
  {
    objc_storeStrong(v13 + 8, a2);
    assertionManager = [v10 assertionManager];
    v15 = self[3];
    self[3] = assertionManager;

    entitlementManager = [v10 entitlementManager];
    v17 = self[4];
    self[4] = entitlementManager;

    processManager = [v10 processManager];
    v19 = self[5];
    self[5] = processManager;

    processMonitor = [v10 processMonitor];
    v21 = self[6];
    self[6] = processMonitor;

    stateCaptureManager = [v10 stateCaptureManager];
    v23 = self[7];
    self[7] = stateCaptureManager;

    requestManager = [v10 requestManager];
    v25 = self[9];
    self[9] = requestManager;

    objc_storeStrong(self + 10, context);
    process = [v10 process];
    v27 = self[11];
    self[11] = process;

    v28 = [MEMORY[0x277CBEB58] set];
    v29 = self[21];
    self[21] = v28;

    v30 = [MEMORY[0x277CBEB58] set];
    v31 = self[22];
    self[22] = v30;

    self[2] = 0;
    v32 = self[24];
    self[24] = 0;

    *(self + 96) = 0;
    objc_storeStrong(self + 14, listener);
    handle = [listenerCopy handle];
    v34 = self[15];
    self[15] = handle;

    identity = [listenerCopy identity];
    v36 = self[16];
    self[16] = identity;

    identifier = [listenerCopy identifier];
    v38 = self[17];
    self[17] = identifier;

    *(self + 36) = 0;
    shortDescription = [listenerCopy shortDescription];
    v40 = self[13];
    self[13] = shortDescription;

    v41 = [self[4] entitlementsForProcess:self[14]];
    v42 = self[20];
    self[20] = v41;

    objc_storeStrong(self + 1, process);
    [self[7] addItem:self];
  }

LABEL_6:

  return self;
}

- (void)_setReadyWithConnection:(uint64_t)connection
{
  v5 = a2;
  if (connection)
  {
    v6 = rbs_connection_log();
    if (OUTLINED_FUNCTION_26_0(v6))
    {
      shortDescription = [*(connection + 112) shortDescription];
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    }

    os_unfair_lock_lock((connection + 16));
    if (*(connection + 96))
    {
      os_unfair_lock_unlock((connection + 16));
    }

    else
    {
      *(connection + 96) = 1;
      os_unfair_lock_unlock((connection + 16));
      v12 = *(connection + 24);
      identity = [*(connection + 120) identity];
      v14 = [v12 stateForIdentity:identity];
      inheritances = [v14 inheritances];
      allInheritances = [inheritances allInheritances];

      v17 = [[RBClientInheritanceManager alloc] initWithInheritances:allInheritances delegate:connection];
      v18 = [RBProcessMonitorObserver alloc];
      v19 = [[RBProcessMonitorObserverConnection alloc] initWithConnection:v5];
      v20 = [OUTLINED_FUNCTION_18_0() initWithMonitor:? forProcess:? connection:?];

      os_unfair_lock_lock((connection + 16));
      objc_storeStrong((connection + 8), a2);
      v21 = *(connection + 152);
      *(connection + 152) = v17;
      v22 = v17;

      v23 = *(connection + 184);
      *(connection + 184) = v20;
      v24 = v20;

      os_unfair_lock_unlock((connection + 16));
      [(RBConnectionListener *)*(connection + 80) connectionIsReady:connection];
    }
  }
}

- (id)handshakeWithRequest:(uint64_t)request
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = a2;
  requestCopy = request;
  v43 = v3;
  if (request)
  {
    v4 = v3;
    v5 = rbs_connection_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(requestCopy + 136);
      assertionDescriptors = [v4 assertionDescriptors];
      *buf = 138543618;
      v63 = v6;
      v64 = 2050;
      v65 = [assertionDescriptors count];
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Received handshake request from %{public}@ with %{public}lu assertion descriptors", buf, 0x16u);
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    savedEndowments = [v4 savedEndowments];
    v9 = [savedEndowments countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v57;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v57 != v11)
          {
            objc_enumerationMutation(savedEndowments);
          }

          [(RBConnectionClient *)requestCopy saveEndowment:0 withError:?];
        }

        v10 = [savedEndowments countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v10);
    }

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    dictionary2 = [MEMORY[0x277CBEB38] dictionary];
    array = [MEMORY[0x277CBEB18] array];
    array2 = [MEMORY[0x277CBEB18] array];
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [v4 assertionDescriptors];
    v13 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v53;
      do
      {
        for (j = 0; j != v14; ++j)
        {
          if (*v53 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v52 + 1) + 8 * j);
          identifier = [v17 identifier];
          if (identifier)
          {
            [array addObject:identifier];
            v19 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(*(requestCopy + 112), "rbs_pid")}];
            v20 = [v17 copyWithIdentifier:v19];
            v21 = *(requestCopy + 40);
            target = [v20 target];
            processIdentifier = [target processIdentifier];
            v24 = [v21 processForIdentifier:processIdentifier];

            [array2 addObject:v17];
          }

          else
          {
            v19 = rbs_assertion_log();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v63 = v17;
              _os_log_error_impl(&dword_262485000, v19, OS_LOG_TYPE_ERROR, "Handshake request contains assertion %{public}@ without old identifier", buf, 0xCu);
            }
          }
        }

        v14 = [obj countByEnumeratingWithState:&v52 objects:v60 count:16];
      }

      while (v14);
    }

    v25 = [RBAssertionBatchContext contextForProcess:*(requestCopy + 112) acquisitionCompletionPolicy:0 withDescriptorsToAcquire:array2 identifiersToInvalidate:MEMORY[0x277CBEBF8] daemonContext:*(requestCopy + 64)];
    v26 = *(requestCopy + 24);
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __43__RBConnectionClient_handshakeWithRequest___block_invoke;
    v48[3] = &unk_279B334D8;
    v48[4] = requestCopy;
    v27 = array;
    v49 = v27;
    v28 = dictionary;
    v50 = v28;
    v29 = dictionary2;
    v51 = v29;
    [v26 commitBatchWithContext:v25 completion:v48];
    v30 = rbs_connection_log();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(requestCopy + 136);
      *buf = 138543362;
      v63 = v32;
      OUTLINED_FUNCTION_21_0(&dword_262485000, v30, v31, "Handshake successful with %{public}@; sending response", buf);
    }

    assertionDescriptors2 = [v43 assertionDescriptors];
    v34 = [assertionDescriptors2 count];

    v35 = [v28 count];
    v36 = [v29 count] + v35;
    if (v36 != v34)
    {
      v37 = rbs_connection_log();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
      {
        *buf = 134218240;
        v63 = v34;
        v64 = 2048;
        v65 = v36;
        _os_log_fault_impl(&dword_262485000, v37, OS_LOG_TYPE_FAULT, "Expected %lu results; got %lu", buf, 0x16u);
      }
    }

    v38 = objc_alloc_init(MEMORY[0x277D46E80]);
    [v38 setHandle:*(requestCopy + 120)];
    [v38 setAssertionIdentifiersByOldIdentifier:v28];
    [v38 setAssertionErrorsByOldIdentifier:v29];
    managedEndpointByLaunchIdentifier = [*(requestCopy + 112) managedEndpointByLaunchIdentifier];
    [v38 setManagedEndpointByLaunchIdentifier:managedEndpointByLaunchIdentifier];
  }

  else
  {
    v38 = 0;
  }

  return v38;
}

- (id)lookupHandleForKey:(uint64_t)key error:(uint64_t)error
{
  OUTLINED_FUNCTION_23_0();
  a24 = v28;
  a25 = v29;
  OUTLINED_FUNCTION_15_0();
  a15 = *MEMORY[0x277D85DE8];
  v31 = v30;
  v32 = v31;
  if (v26)
  {
    v33 = [MEMORY[0x277D46F48] handleForKey:objc_msgSend(v31 fetchIfNeeded:{"unsignedLongLongValue"), 0}];
    if (OUTLINED_FUNCTION_25_0())
    {
      if (v33)
      {
        goto LABEL_4;
      }

      v37 = rbs_general_log();
      if (OUTLINED_FUNCTION_20_0(v37))
      {
        unsignedLongLongValue = [v32 unsignedLongLongValue];
        LODWORD(a11) = 138412546;
        *(&a11 + 4) = v32;
        WORD6(a11) = 2048;
        *(&a11 + 14) = unsignedLongLongValue;
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v47, v48, v49, v50, v51, 0x16u);
      }

      OUTLINED_FUNCTION_6_1();
      [v38 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      v34 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];
    }

    else
    {
      if (v33)
      {
        v43 = [MEMORY[0x277D46FA0] predicateMatchingHandle:v33];
        a14 = v43;
        [MEMORY[0x277CBEA60] arrayWithObjects:&a14 count:1];
        objc_claimAutoreleasedReturnValue();
        v44 = OUTLINED_FUNCTION_7_1();
        v45 = [(RBConnectionClient *)v44 _predicatesMatchOnlyAllowedProcess:v27];

        if (v45)
        {
LABEL_4:
          v33;
          v34 = 0;
          if (!v25)
          {
            goto LABEL_14;
          }

          goto LABEL_13;
        }
      }

      v34 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v35 = rbs_connection_log();
      if (OUTLINED_FUNCTION_24(v35))
      {
        OUTLINED_FUNCTION_4_2();
        *(&a11 + 14) = v34;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v27, v36, "%{public}@ client not entitled to lookupHandleForKey: <%{public}@>", &a11);
      }
    }

    if (!v25)
    {
LABEL_14:

      goto LABEL_15;
    }

LABEL_13:
    v39 = v34;
    *v25 = v34;
    goto LABEL_14;
  }

LABEL_15:

  OUTLINED_FUNCTION_22_0();

  return v40;
}

- (__CFString)lookupProcessName:error:
{
  OUTLINED_FUNCTION_15_0();
  v26[11] = *MEMORY[0x277D85DE8];
  v4 = v3;
  if (v1)
  {
    bzero(buffer, 0x88uLL);
    intValue = [v4 intValue];
    if ((OUTLINED_FUNCTION_25_0() & 1) != 0 || ([MEMORY[0x277D46FA0] predicateMatchingIdentifier:v4], v15 = objc_claimAutoreleasedReturnValue(), v24 = v15, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &v24, 1), objc_claimAutoreleasedReturnValue(), v16 = OUTLINED_FUNCTION_7_1(), v17 = -[RBConnectionClient _predicatesMatchOnlyAllowedProcess:](v16, v2), v2, v15, v17))
    {
      if (proc_pidinfo(intValue, 3, 0, buffer, 136) == 136)
      {
        v6 = [objc_alloc(MEMORY[0x277CCACA8]) initWithUTF8String:v26];
        v7 = 0;
        if (!v0)
        {
          goto LABEL_10;
        }
      }

      else
      {
        v8 = rbs_assertion_log();
        if (OUTLINED_FUNCTION_20_0(v8))
        {
          OUTLINED_FUNCTION_9_0();
          _os_log_error_impl(v18, v19, v20, v21, v22, 8u);
        }

        v9 = MEMORY[0x277CCA9B8];
        v10 = *MEMORY[0x277D47088];
        v23 = *MEMORY[0x277CCA470];
        OUTLINED_FUNCTION_6_1();
        v12 = [v11 dictionaryWithObjects:v23 forKeys:@"Could not get proc_pidinfo for pid" count:?];
        v7 = [v9 errorWithDomain:v10 code:5 userInfo:v12];

        v6 = @"<unknown>";
        if (!v0)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v6 = 0;
      if (!v0)
      {
        goto LABEL_10;
      }
    }

    v13 = v7;
    *v0 = v7;
LABEL_10:

    goto LABEL_11;
  }

  v6 = 0;
LABEL_11:

  return v6;
}

- (id)lookupHandleForPredicate:error:
{
  OUTLINED_FUNCTION_16_0();
  v40[1] = *MEMORY[0x277D85DE8];
  v3 = v2;
  if (!v1)
  {
    handle = 0;
    goto LABEL_24;
  }

  if ((OUTLINED_FUNCTION_29_0() & 1) == 0)
  {
    v40[0] = v3;
    v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:1];
    v25 = [(RBConnectionClient *)v1 _predicatesMatchOnlyAllowedProcess:v4];

    if (!v25)
    {
      v7 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v26 = rbs_connection_log();
      if (OUTLINED_FUNCTION_20_0(v26))
      {
        OUTLINED_FUNCTION_4_2();
        v35 = v7;
        OUTLINED_FUNCTION_9_0();
        _os_log_error_impl(v27, v28, v29, v30, v31, 0x16u);
      }

      handle = 0;
      goto LABEL_17;
    }
  }

  v4 = [(objc_class *)v1[5].isa processesMatchingPredicate:v3];
  if (![v4 count])
  {
    v8 = MEMORY[0x277CCA9B8];
    v9 = *MEMORY[0x277D47088];
    v32 = *MEMORY[0x277CCA470];
    OUTLINED_FUNCTION_6_1();
    v11 = [v10 dictionaryWithObjects:v32 forKeys:@"Specified predicate did not match any processes" count:?];
    v7 = [v8 errorWithDomain:v9 code:3 userInfo:v11];

    anyObject = rbs_connection_log();
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_INFO))
    {
      isa = v1[13].isa;
      *buf = 138543362;
      v34 = isa;
      _os_log_impl(&dword_262485000, anyObject, OS_LOG_TYPE_INFO, "%{public}@ handle lookup could not find a matching process", buf, 0xCu);
    }

    goto LABEL_15;
  }

  if ([v4 count] != 1)
  {
    anyObject = *MEMORY[0x277D47088];
    v36 = *MEMORY[0x277CCA470];
    v37 = @"Specified predicate matched multiple processes";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v37 forKeys:&v36 count:1];
    v7 = [OUTLINED_FUNCTION_12() errorWithDomain:? code:? userInfo:?];

    v14 = rbs_connection_log();
    if (OUTLINED_FUNCTION_24(v14))
    {
      OUTLINED_FUNCTION_4_2();
      v35 = v7;
      OUTLINED_FUNCTION_11_0(&dword_262485000, anyObject, v15, "%{public}@ Error resolving process: <%{public}@>", buf);
    }

    goto LABEL_15;
  }

  anyObject = [v4 anyObject];
  if (([(objc_class *)v1[5].isa isActiveProcess:anyObject]& 1) == 0)
  {
    [anyObject rbs_pid];
    if (!RBSPIDExists())
    {
      v16 = MEMORY[0x277CCA9B8];
      v17 = *MEMORY[0x277D47088];
      v38 = *MEMORY[0x277CCA470];
      v39 = @"Process is no longer running";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v39 forKeys:&v38 count:1];
      v7 = [v16 errorWithDomain:v17 code:3 userInfo:v18];

      v19 = rbs_connection_log();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v21 = v1[13].isa;
        *buf = 138543362;
        v34 = v21;
        OUTLINED_FUNCTION_21_0(&dword_262485000, v19, v20, "%{public}@ handle requested for no longer running process", buf);
      }

LABEL_15:
      handle = 0;
      goto LABEL_16;
    }
  }

  handle = [anyObject handle];
  v7 = 0;
LABEL_16:

LABEL_17:
  if (!v7)
  {
    v22 = rbs_connection_log();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      OUTLINED_FUNCTION_4_2();
      v35 = handle;
      _os_log_debug_impl(&dword_262485000, v22, OS_LOG_TYPE_DEBUG, "%{public}@ query resolved to %{public}@", buf, 0x16u);
    }
  }

  if (v0)
  {
    v23 = v7;
    *v0 = v7;
  }

LABEL_24:

  return handle;
}

- (id)lookupPortForIdentifier:error:
{
  OUTLINED_FUNCTION_16_0();
  v13 = *MEMORY[0x277D85DE8];
  v3 = v2;
  if (v1)
  {
    if ((OUTLINED_FUNCTION_29_0() & 1) != 0 || (v4 = [*(v1 + 120) rbs_pid], v4 == objc_msgSend(v3, "rbs_pid")))
    {
      v5 = [MEMORY[0x277D46ED8] taskNameForPID:{objc_msgSend(v3, "rbs_pid")}];
      goto LABEL_11;
    }

    v6 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      OUTLINED_FUNCTION_1_7();
      v12 = v6;
      OUTLINED_FUNCTION_11_0(&dword_262485000, v7, v10, "%{public}@ client not entitled to lookupPortForIdentifier: <%{public}@>", v11);
    }

    if (v0)
    {
      v8 = v6;
      *v0 = v6;
    }
  }

  v5 = 0;
LABEL_11:

  return v5;
}

- (void)acquireAssertionForDescriptor:(void *)descriptor withReply:
{
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = a2;
  descriptorCopy = descriptor;
  if (self)
  {
    [(RBConnectionClient *)self _trackTargetProcessForDescriptor:v6];
    v8 = [MEMORY[0x277D46DD0] identifierWithClientPid:{objc_msgSend(*(self + 136), "pid")}];
    v9 = [v6 copyWithIdentifier:v8];

    if (v9)
    {
      os_unfair_lock_lock((self + 16));
      [*(self + 168) addObject:v8];
      os_unfair_lock_unlock((self + 16));
      [descriptorCopy prepareForHandoff];
      v10 = [RBAssertionAcquisitionContext contextForProcess:*(self + 112) withDescriptor:v9 daemonContext:*(self + 64)];
      v11 = *(self + 24);
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_27_0();
      v15[2] = __62__RBConnectionClient_acquireAssertionForDescriptor_withReply___block_invoke;
      v15[3] = &unk_279B332F8;
      v16 = descriptorCopy;
      v17 = v8;
      selfCopy = self;
      [v11 acquireAssertionWithContext:v10 completion:v15];
      currentContext = [MEMORY[0x277D47038] currentContext];

      if (currentContext)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:sel_acquireAssertionForDescriptor_withReply_ object:self file:@"RBConnectionClient.m" lineNumber:949 description:@"xpc message context not handled"];
      }
    }

    else
    {
      v19 = *MEMORY[0x277CCA470];
      v20[0] = @"Bad assertion descriptor";
      [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
      objc_claimAutoreleasedReturnValue();
      v10 = [OUTLINED_FUNCTION_5_1() errorWithDomain:? code:? userInfo:?];

      payload = [descriptorCopy payload];
      [payload encodeObject:v10 forKey:*MEMORY[0x277D470B0]];

      [descriptorCopy send];
    }
  }

  else
  {
    v9 = v6;
  }
}

- (id)assertionDescriptorsWithFlattenedAttributes:(void *)attributes error:
{
  if (self)
  {
    if ([self rb_hasEntitlement:@"com.apple.runningboard.listallassertions"])
    {
      v6 = [self[3] assertionDescriptorsWithFlattenedAttributes:a2];
      v7 = 0;
      if (!attributes)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v7 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.listallassertions" permanent:1];
      v6 = 0;
      if (!attributes)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v7 = v7;
    *attributes = v7;
    goto LABEL_7;
  }

  v6 = 0;
LABEL_8:

  return v6;
}

- (void)executeLaunchRequest:(uint64_t)request withEuid:(void *)euid withReply:
{
  v7 = a2;
  euidCopy = euid;
  v9 = euidCopy;
  if (self)
  {
    if (!euidCopy)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:sel_executeLaunchRequest_withEuid_withReply_ object:self file:@"RBConnectionClient.m" lineNumber:1005 description:{@"Invalid parameter not satisfying: %@", @"reply"}];
    }

    payload = [v9 payload];
    [v9 prepareForHandoff];
    v11 = self[9];
    v12 = self[14];
    v13 = self[20];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __62__RBConnectionClient_executeLaunchRequest_withEuid_withReply___block_invoke;
    v16[3] = &unk_279B33500;
    v17 = payload;
    v18 = v7;
    selfCopy = self;
    v20 = v9;
    v14 = payload;
    [v11 executeLaunchRequest:v18 euid:request requestor:v12 entitlements:v13 completion:v16];
  }
}

- (void)executeTerminateRequest:(void *)request withReply:
{
  v69 = *MEMORY[0x277D85DE8];
  v5 = a2;
  requestCopy = request;
  if (self)
  {
    v7 = rbs_connection_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = requestCopy;
      v9 = *(self + 104);
      targetsAllManagedProcesses = [v5 targetsAllManagedProcesses];
      if (targetsAllManagedProcesses)
      {
        predicate = @"All Managed Processes";
      }

      else
      {
        predicate = [v5 predicate];
      }

      context = [v5 context];
      *buf = 138543874;
      v64 = v9;
      v65 = 2114;
      v66 = predicate;
      v67 = 2114;
      v68 = context;
      _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "Received termination request from %{public}@ on %{public}@ with context %{public}@", buf, 0x20u);
      if ((targetsAllManagedProcesses & 1) == 0)
      {
      }

      requestCopy = v8;
    }

    predicate2 = [v5 predicate];
    processIdentifiers = [predicate2 processIdentifiers];

    v49 = processIdentifiers;
    v50 = objc_opt_new();
    if (processIdentifiers)
    {
      v60 = 0u;
      v61 = 0u;
      v58 = 0u;
      v59 = 0u;
      v15 = processIdentifiers;
      v16 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
      if (v16)
      {
        v17 = v16;
        v47 = requestCopy;
        v48 = v5;
        v18 = *v59;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v59 != v18)
            {
              objc_enumerationMutation(v15);
            }

            v20 = *(*(&v58 + 1) + 8 * i);
            v21 = [*(self + 40) processForIdentifier:{v20, v47, v48}];
            v22 = [MEMORY[0x277D46F48] handleForIdentifier:v20 error:0];
            if (![v22 isXPCService])
            {

              v28 = 0;
              v29 = 0;
              goto LABEL_22;
            }

            v23 = [*(self + 40) processForIdentifierWithoutStartingTracking:v20];
            if (v23)
            {
              [v50 addObject:v23];
            }

            rbs_pid = [*(self + 112) rbs_pid];
            hostProcess = [v23 hostProcess];
            rbs_pid2 = [hostProcess rbs_pid];

            clientRestriction = [v23 clientRestriction];
          }

          v17 = [v15 countByEnumeratingWithState:&v58 objects:v62 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }

        v28 = clientRestriction != 0;
        v29 = rbs_pid == rbs_pid2;
LABEL_22:
        requestCopy = v47;
        v5 = v48;
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      LODWORD(processIdentifiers) = v28 ^ v29;
    }

    payload = [requestCopy payload];
    if ([v5 targetsAllManagedProcesses])
    {
      if ([self rb_hasEntitlement:@"com.apple.runningboard.terminatemanagedprocesses"])
      {
        v31 = 1;
LABEL_29:
        [requestCopy prepareForHandoff];
        currentContext = [MEMORY[0x277D47038] currentContext];
        +[RBConnectionClient sharedTerminationWorkloop];
        v35 = v34 = v5;
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __56__RBConnectionClient_executeTerminateRequest_withReply___block_invoke;
        v51[3] = &unk_279B335C8;
        v56 = v31;
        v57 = processIdentifiers;
        v51[4] = self;
        v36 = v50;
        v52 = v50;
        v53 = payload;
        v54 = requestCopy;
        v55 = v34;
        [currentContext handoffToQueue:v35 block:v51];

        v5 = v34;
        v37 = v49;
LABEL_37:

        goto LABEL_38;
      }

      v38 = rbs_connection_log();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_28_0(&dword_262485000, v39, v40, "Rejecting request because the client is not entitled");
      }

      [payload encodeBool:0 forKey:*MEMORY[0x277D470C0]];
      v41 = MEMORY[0x277CCA9B8];
      v42 = @"com.apple.runningboard.terminatemanagedprocesses";
    }

    else
    {
      v32 = [self rb_hasEntitlementDomain:4];
      v31 = v32;
      if ((processIdentifiers | v32))
      {
        goto LABEL_29;
      }

      v43 = rbs_connection_log();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        OUTLINED_FUNCTION_28_0(&dword_262485000, v44, v45, "Rejecting request because the client is not entitled");
      }

      [payload encodeBool:0 forKey:*MEMORY[0x277D470C0]];
      v41 = MEMORY[0x277CCA9B8];
      v42 = @"com.apple.runningboard.terminateprocess";
    }

    v46 = [v41 rbs_errorClientNotEntitled:v42 permanent:1];
    [payload encodeObject:v46 forKey:*MEMORY[0x277D470B0]];

    [requestCopy send];
    v37 = v49;
    v36 = v50;
    goto LABEL_37;
  }

LABEL_38:
}

- (id)subscribeToProcessDeath:(uint64_t)death error:(uint64_t)error
{
  OUTLINED_FUNCTION_23_0();
  a24 = v28;
  a25 = v29;
  OUTLINED_FUNCTION_15_0();
  a15 = *MEMORY[0x277D85DE8];
  v31 = v30;
  if (v26)
  {
    v32 = [*(v26 + 40) processForIdentifier:v31];
    if ((OUTLINED_FUNCTION_25_0() & 1) != 0 || ([MEMORY[0x277D46FA0] predicateMatchingIdentifier:v31], v40 = objc_claimAutoreleasedReturnValue(), a14 = v40, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &a14, 1), objc_claimAutoreleasedReturnValue(), v41 = OUTLINED_FUNCTION_7_1(), v42 = -[RBConnectionClient _predicatesMatchOnlyAllowedProcess:](v41, v27), v27, v40, v42))
    {
      if (!v31)
      {
        v34 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:1 userInfo:0];
        goto LABEL_10;
      }

      if (v32)
      {
        os_unfair_lock_lock((v26 + 16));
        v33 = [*(v26 + 40) isActiveProcess:v32];
        os_unfair_lock_unlock((v26 + 16));
        if (v33)
        {
          os_unfair_lock_lock((v26 + 20));
          [*(v26 + 176) addObject:v32];
          os_unfair_lock_unlock((v26 + 20));
        }

        else
        {
          [v32 lastExitContext];
          objc_claimAutoreleasedReturnValue();
        }

        v34 = 0;
        if (!v25)
        {
          goto LABEL_12;
        }

        goto LABEL_11;
      }

      a12 = *MEMORY[0x277CCA470];
      a13 = @"No such process";
      OUTLINED_FUNCTION_13_0();
      [v35 dictionaryWithObjects:? forKeys:? count:?];
      objc_claimAutoreleasedReturnValue();
      v34 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];
    }

    else
    {
      v34 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v43 = rbs_connection_log();
      if (OUTLINED_FUNCTION_24(v43))
      {
        OUTLINED_FUNCTION_1_7();
        *(&a10 + 6) = v34;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v27, v44, "%{public}@ client not entitled to subscribeToProcessDeath: <%{public}@>", &a9);
      }
    }

LABEL_10:
    if (!v25)
    {
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    v36 = v34;
    *v25 = v34;
    goto LABEL_12;
  }

LABEL_13:

  OUTLINED_FUNCTION_22_0();

  return v37;
}

- (BOOL)subscribeToProcessStateChangesWithConfiguration:error:
{
  OUTLINED_FUNCTION_16_0();
  v14 = *MEMORY[0x277D85DE8];
  v3 = v2;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_9;
  }

  if ((OUTLINED_FUNCTION_29_0() & 1) == 0)
  {
    predicates = [v3 predicates];
    v9 = [(RBConnectionClient *)v1 _predicatesMatchOnlyAllowedProcess:predicates];

    if (!v9)
    {
      v4 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v10 = rbs_connection_log();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_7();
        v13 = v4;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v10, v11, "%{public}@ client not entitled to subscribeToProcessStateChangesWithConfiguration: <%{public}@>", v12);
      }

      if (!v0)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  if (v3)
  {
    os_unfair_lock_lock((v1 + 16));
    [*(v1 + 184) addConfiguration:v3];
    os_unfair_lock_unlock((v1 + 16));
    v4 = 0;
    if (!v0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D47088] code:1 userInfo:0];
  if (v0)
  {
LABEL_7:
    v5 = v4;
    *v0 = v4;
  }

LABEL_8:
  v6 = v4 == 0;

LABEL_9:
  return v6;
}

- (void)unsubscribeFromProcessStateChangesWithIdentifier:(uint64_t)identifier
{
  if (identifier)
  {
    os_unfair_lock_lock((identifier + 16));
    [*(identifier + 184) removeConfigurationWithIdentifier:a2];

    os_unfair_lock_unlock((identifier + 16));
  }
}

- (void)statesForPredicate:(void *)predicate withDescriptor:(void *)descriptor withReply:
{
  v26[1] = *MEMORY[0x277D85DE8];
  v7 = a2;
  predicateCopy = predicate;
  descriptorCopy = descriptor;
  if (self)
  {
    if ((-[NSObject rb_hasEntitlementDomain:](self, "rb_hasEntitlementDomain:", 1) & 1) != 0 || (v26[0] = v7, [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1], v12 = objc_claimAutoreleasedReturnValue(), v13 = -[RBConnectionClient _predicatesMatchOnlyAllowedProcess:](self, v12), v12, v13))
    {
      [descriptorCopy prepareForHandoff];
      currentContext = [MEMORY[0x277D47038] currentContext];
      monitorSerializationQueue = [(objc_class *)self[6].isa monitorSerializationQueue];
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_27_0();
      v18[2] = __66__RBConnectionClient_statesForPredicate_withDescriptor_withReply___block_invoke;
      v18[3] = &unk_279B331B8;
      v18[4] = self;
      v19 = v7;
      v20 = predicateCopy;
      v21 = descriptorCopy;
      [currentContext handoffToQueue:monitorSerializationQueue block:v18];
    }

    else
    {
      currentContext = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v14 = rbs_connection_log();
      if (OUTLINED_FUNCTION_24(v14))
      {
        isa = self[13].isa;
        v22 = 138543618;
        v23 = isa;
        v24 = 2114;
        v25 = currentContext;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v13, v15, "%{public}@ client not entitled to get statesForPredicate: <%{public}@>", &v22);
      }

      payload = [descriptorCopy payload];
      [payload encodeObject:currentContext forKey:*MEMORY[0x277D470B0]];

      [descriptorCopy send];
    }
  }
}

- (BOOL)intendToExit:(void *)exit withStatus:(void *)status error:
{
  exitCopy = exit;
  if (!self)
  {
    v18 = 0;
    goto LABEL_8;
  }

  v9 = [self[5] processForInstance:a2];
  if (v9)
  {
    v10 = rbs_process_log();
    if (OUTLINED_FUNCTION_26_0(v10))
    {
      OUTLINED_FUNCTION_17_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
    }

    [v9 setIntendedExitStatus:exitCopy];
    v16 = 0;
    if (!status)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v21 = *MEMORY[0x277CCA470];
    OUTLINED_FUNCTION_6_1();
    [v20 dictionaryWithObjects:v21 forKeys:@"No process found" count:?];
    objc_claimAutoreleasedReturnValue();
    v16 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];

    if (!status)
    {
      goto LABEL_7;
    }
  }

  v17 = v16;
  *status = v16;
LABEL_7:
  v18 = v16 == 0;

LABEL_8:
  return v18;
}

- (id)lastExitContextForInstance:(void *)instance error:
{
  selfCopy = self;
  v18 = *MEMORY[0x277D85DE8];
  if (self)
  {
    v5 = [self[5] processForInstance:a2];
    if (OUTLINED_FUNCTION_25_0())
    {
      if (v5)
      {
        selfCopy = [v5 lastExitContext];
        v6 = 0;
        if (!instance)
        {
          goto LABEL_11;
        }

        goto LABEL_10;
      }

      v9 = MEMORY[0x277CCA9B8];
      v10 = *MEMORY[0x277D47088];
      v16 = *MEMORY[0x277CCA470];
      v17 = @"No process found";
      OUTLINED_FUNCTION_10_0();
      v7 = [v11 dictionaryWithObjects:? forKeys:? count:?];
      v6 = [v9 errorWithDomain:v10 code:3 userInfo:v7];
    }

    else
    {
      v6 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:1];
      v7 = rbs_connection_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        OUTLINED_FUNCTION_1_7();
        v15 = v6;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v7, v8, "%{public}@ client not entitled to get lastExitContextForInstance: <%{public}@>", v14);
      }
    }

    selfCopy = 0;
    if (!instance)
    {
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v12 = v6;
    *instance = v6;
    goto LABEL_11;
  }

LABEL_12:

  return selfCopy;
}

- (id)limitationsForInstance:(void *)instance error:
{
  v6 = a2;
  if (!self)
  {
    goto LABEL_13;
  }

  if (([self rb_hasEntitlementDomain:1] & 1) == 0)
  {
    v7 = [self[17] pid];
    if (v7 != [v6 rbs_pid])
    {
      v8 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v10 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v10))
      {
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_8_0(&dword_262485000, v13, v14, "%{public}@ client not entitled to get limitationsForInstance: <%{public}@>", v15, v16, v17, v18);
      }

      goto LABEL_9;
    }
  }

  v7 = [self[5] processForInstance:v6];
  if (!v7)
  {
    OUTLINED_FUNCTION_10_0();
    [v9 dictionaryWithObjects:? forKeys:? count:?];
    objc_claimAutoreleasedReturnValue();
    v8 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];

LABEL_9:
    self = 0;
    goto LABEL_10;
  }

  self = [self[3] limitationsForInstance:v6];
  v8 = 0;
LABEL_10:

  if (instance)
  {
    v11 = v8;
    *instance = v8;
  }

LABEL_13:

  return self;
}

- (id)hostProcessForInstance:(uint64_t)instance error:(uint64_t)error
{
  OUTLINED_FUNCTION_23_0();
  a25 = v29;
  a26 = v30;
  OUTLINED_FUNCTION_15_0();
  a16 = *MEMORY[0x277D85DE8];
  v32 = v31;
  if (v27)
  {
    if ((OUTLINED_FUNCTION_25_0() & 1) != 0 || (v42 = MEMORY[0x277D46FA0], [v32 identifier], v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v42, "predicateMatchingIdentifier:", v43), v34 = objc_claimAutoreleasedReturnValue(), a15 = v34, objc_msgSend(MEMORY[0x277CBEA60], "arrayWithObjects:count:", &a15, 1), objc_claimAutoreleasedReturnValue(), v44 = OUTLINED_FUNCTION_7_1(), v45 = -[RBConnectionClient _predicatesMatchOnlyAllowedProcess:](v44, v28), v28, v34, v43, v45))
    {
      v33 = [*(v27 + 40) processForInstance:v32];
      v34 = v33;
      if (v33)
      {
        hostProcess = [v33 hostProcess];
        v28 = hostProcess;
        if (hostProcess)
        {
          [hostProcess handle];
          objc_claimAutoreleasedReturnValue();
        }

        v37 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_13_0();
        [v36 dictionaryWithObjects:? forKeys:? count:?];
        objc_claimAutoreleasedReturnValue();
        v37 = [OUTLINED_FUNCTION_3_1() errorWithDomain:? code:? userInfo:?];
      }
    }

    else
    {
      v37 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v46 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v46))
      {
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_8_0(&dword_262485000, v47, v48, "%{public}@ client not entitled to get hostProcessForInstance: <%{public}@>", v49, v50, v51, v52);
      }
    }

    if (v26)
    {
      v38 = v37;
      *v26 = v37;
    }
  }

  OUTLINED_FUNCTION_22_0();

  return v39;
}

- (id)infoPlistResultForInstance:(void *)instance forKeys:(void *)keys error:
{
  v32[1] = *MEMORY[0x277D85DE8];
  v8 = a2;
  instanceCopy = instance;
  if (!self)
  {
    v15 = 0;
    goto LABEL_23;
  }

  if (([self rb_hasEntitlementDomain:1]& 1) == 0)
  {
    [v8 identifier];
    objc_claimAutoreleasedReturnValue();
    v11 = [OUTLINED_FUNCTION_7_1() predicateMatchingIdentifier:v4];
    v32[0] = v11;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    v19 = [(RBConnectionClient *)self _predicatesMatchOnlyAllowedProcess:v18];

    if (!v19)
    {
      v17 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:0];
      v20 = rbs_connection_log();
      if (OUTLINED_FUNCTION_20_0(v20))
      {
        OUTLINED_FUNCTION_1_7();
        v25 = v17;
        OUTLINED_FUNCTION_11_0(&dword_262485000, v11, v21, "%{public}@ client not entitled to get infoPlistResultForInstance: <%{public}@>", v24);
      }

      goto LABEL_10;
    }
  }

  if (!v8 || ![instanceCopy count])
  {
    v26 = *MEMORY[0x277CCA470];
    v27 = @"Invalid instance or keys";
    OUTLINED_FUNCTION_13_0();
    v11 = [v16 dictionaryWithObjects:? forKeys:? count:?];
    v17 = [OUTLINED_FUNCTION_12() errorWithDomain:? code:? userInfo:?];
LABEL_10:
    v15 = 0;
    goto LABEL_20;
  }

  v10 = [(objc_class *)self[5].isa processForInstance:v8];
  v11 = v10;
  if (v10)
  {
    handle = [v10 handle];
    bundle = [handle bundle];

    if (bundle)
    {
      v14 = [bundle bundleInfoValuesForKeys:instanceCopy];
      if ([v14 count])
      {
        v15 = objc_alloc_init(MEMORY[0x277D46F68]);
        [v15 setValue:v14];
      }

      else
      {
        v15 = 0;
      }

      v17 = 0;
    }

    else
    {
      v30 = *MEMORY[0x277CCA470];
      v31 = @"No bundle found";
      v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v31 forKeys:&v30 count:1];
      v17 = [OUTLINED_FUNCTION_18_0() errorWithDomain:? code:? userInfo:?];
      v15 = 0;
    }
  }

  else
  {
    v28 = *MEMORY[0x277CCA470];
    v29 = @"No process found";
    bundle = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
    v17 = [OUTLINED_FUNCTION_18_0() errorWithDomain:? code:? userInfo:?];
    v15 = 0;
  }

LABEL_20:
  if (keys)
  {
    v22 = v17;
    *keys = v17;
  }

LABEL_23:

  return v15;
}

- (void)captureStateForSubsystem:withReply:
{
  OUTLINED_FUNCTION_15_0();
  v22 = *MEMORY[0x277D85DE8];
  v4 = v3;
  v5 = v0;
  if (v1)
  {
    if ([v1 rb_hasEntitlement:@"com.apple.runningboard.statecapture"])
    {
      [v5 prepareForHandoff];
      currentContext = [MEMORY[0x277D47038] currentContext];
      v7 = rbs_connection_log();
      if (OUTLINED_FUNCTION_30_0(v7))
      {
        v20 = 138412290;
        v21 = currentContext;
        OUTLINED_FUNCTION_21_0(&dword_262485000, v2, v8, "In captureState with xpcContext %@", &v20);
      }

      v9 = dispatch_get_global_queue(17, 0);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __57__RBConnectionClient_captureStateForSubsystem_withReply___block_invoke;
      v17[3] = &unk_279B329D0;
      v17[4] = v1;
      v18 = v4;
      v19 = v5;
      [currentContext handoffToQueue:v9 block:v17];
    }

    else
    {
      v10 = rbs_connection_log();
      if (OUTLINED_FUNCTION_26_0(v10))
      {
        LOWORD(v20) = 0;
        OUTLINED_FUNCTION_17_0();
        _os_log_impl(v11, v12, v13, v14, v15, 2u);
      }

      currentContext = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.statecapture" permanent:1];
      payload = [v5 payload];
      [payload encodeObject:currentContext forKey:*MEMORY[0x277D470B0]];

      [v5 send];
    }
  }
}

- (id)identifiersForStateCaptureSubsystemsWithError:(id *)error
{
  if (error)
  {
    if ([error rb_hasEntitlement:@"com.apple.runningboard.statecapture"])
    {
      identifiers = [error[7] identifiers];
      v5 = 0;
      if (!a2)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v5 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.statecapture" permanent:1];
      identifiers = 0;
      if (!a2)
      {
LABEL_7:

        goto LABEL_8;
      }
    }

    v5 = v5;
    *a2 = v5;
    goto LABEL_7;
  }

  identifiers = 0;
LABEL_8:

  return identifiers;
}

- (id)busyExtensionInstancesFromSet:error:
{
  OUTLINED_FUNCTION_16_0();
  v3 = v2;
  if (v1)
  {
    if (([v1[14] isPlatformBinary] & 1) != 0 || objc_msgSend(v1, "rb_hasEntitlement:", @"com.apple.runningboard.statecapture"))
    {
      v1 = [v1[5] busyExtensionInstancesFromSet:v3];
    }

    else if (v0)
    {
      [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.statecapture" permanent:1];
      *v0 = v1 = 0;
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

- (id)preventLaunchPredicates
{
  selfCopy = self;
  if (self)
  {
    if (([self rb_hasEntitlementDomain:1] & 1) == 0)
    {
      v3 = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:1];
      v4 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v4))
      {
        OUTLINED_FUNCTION_1_7();
        OUTLINED_FUNCTION_8_0(&dword_262485000, v7, v8, "%{public}@ client not entitled to preventLaunchPredicates: <%{public}@>", v9, v10, v11, v12);
      }
    }

    systemState = [selfCopy[3] systemState];
    selfCopy = [systemState preventLaunchPredicates];
  }

  return selfCopy;
}

- (uint64_t)saveEndowment:(void *)endowment withError:
{
  v6 = a2;
  if (self)
  {
    if ([*(self + 24) addSavedEndowment:v6 forProcess:*(self + 112)])
    {
      self = 1;
    }

    else
    {
      if (endowment)
      {
        OUTLINED_FUNCTION_10_0();
        [v7 dictionaryWithObjects:? forKeys:? count:?];
        objc_claimAutoreleasedReturnValue();
        *endowment = [OUTLINED_FUNCTION_5_1() errorWithDomain:? code:? userInfo:?];
      }

      v8 = rbs_connection_log();
      if (OUTLINED_FUNCTION_39(v8))
      {
        v10 = *(self + 104);
        v11 = [v6 key];
        *v18 = 138543618;
        *&v18[4] = v10;
        *&v18[12] = 2114;
        *&v18[14] = v11;
        OUTLINED_FUNCTION_8_0(&dword_262485000, v12, v13, "%{public}@ client tried to save endowment twice for key: <%{public}@>", v14, v15, v16, v17, *v18, *&v18[8], *&v18[16]);
      }

      self = 0;
    }
  }

  return self;
}

- (uint64_t)isIdentityAnAngel:(void *)angel withError:
{
  v5 = a2;
  if (self)
  {
    if (OUTLINED_FUNCTION_29_0())
    {
      consistentLaunchdJobLabel = [v5 consistentLaunchdJobLabel];
      if (consistentLaunchdJobLabel)
      {
        v7 = [RBLaunchdProperties propertiesForLabel:consistentLaunchdJobLabel error:angel];
        self = [v7 isAngel];

LABEL_11:
        goto LABEL_12;
      }

      if (angel)
      {
        v18 = *MEMORY[0x277CCA470];
        OUTLINED_FUNCTION_6_1();
        v10 = [v9 dictionaryWithObjects:v18 forKeys:@"Information request not supported for this identity" count:?];
        *angel = [OUTLINED_FUNCTION_12() errorWithDomain:? code:? userInfo:?];
      }

      v11 = rbs_connection_log();
      if (!OUTLINED_FUNCTION_20_0(v11))
      {
LABEL_10:

        self = 0;
        goto LABEL_11;
      }
    }

    else
    {
      consistentLaunchdJobLabel = [MEMORY[0x277CCA9B8] rbs_errorClientNotEntitled:@"com.apple.runningboard.process-state" permanent:1];
      v8 = rbs_connection_log();
      if (!OUTLINED_FUNCTION_20_0(v8))
      {
        goto LABEL_10;
      }
    }

    OUTLINED_FUNCTION_4_2();
    OUTLINED_FUNCTION_9_0();
    _os_log_error_impl(v13, v14, v15, v16, v17, 0x16u);
    goto LABEL_10;
  }

LABEL_12:

  return self;
}

- (uint64_t)_predicatesMatchOnlyAllowedProcess:(NSObject *)process
{
  v104 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (process)
  {
    array = [MEMORY[0x277CBEB18] array];
    hostProcess = [(objc_class *)process[14].isa hostProcess];
    if (hostProcess)
    {
      v6 = hostProcess;
      do
      {
        handle = [v6 handle];
        [array addObject:handle];

        hostProcess2 = [v6 hostProcess];

        v6 = hostProcess2;
      }

      while (hostProcess2);
    }

    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    obj = v3;
    v9 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
    if (v9)
    {
      v10 = v9;
      v85 = v3;
      v11 = *v95;
      v86 = *v95;
      processCopy = process;
      while (2)
      {
        v12 = 0;
        v88 = v10;
        do
        {
          if (*v95 != v11)
          {
            objc_enumerationMutation(obj);
          }

          v13 = *(*(&v94 + 1) + 8 * v12);
          processIdentifier = [v13 processIdentifier];
          rbs_pid = [processIdentifier rbs_pid];
          rbs_pid2 = [(objc_class *)process[14].isa rbs_pid];

          if (rbs_pid == rbs_pid2)
          {
            v17 = rbs_general_log();
            v18 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
            if (v18)
            {
              OUTLINED_FUNCTION_2_5(v18, v19, v20, v21, v22, v23, v24, v25, v26, v84, v85, v86, processCopy, v88, obj, v27);
              _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching self %{public}@ for process %{public}@", v28, 0x16u);
            }
          }

          else
          {
            v92 = 0u;
            v93 = 0u;
            v90 = 0u;
            v91 = 0u;
            v29 = array;
            v30 = array;
            v31 = [v30 countByEnumeratingWithState:&v90 objects:v98 count:16];
            if (v31)
            {
              v32 = v31;
              v33 = *v91;
              while (2)
              {
                for (i = 0; i != v32; ++i)
                {
                  if (*v91 != v33)
                  {
                    objc_enumerationMutation(v30);
                  }

                  v35 = *(*(&v90 + 1) + 8 * i);
                  processIdentifier2 = [v13 processIdentifier];
                  rbs_pid3 = [processIdentifier2 rbs_pid];
                  LODWORD(v35) = [v35 pid];

                  if (rbs_pid3 == v35)
                  {

                    v17 = rbs_general_log();
                    v55 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
                    if (v55)
                    {
                      process = processCopy;
                      OUTLINED_FUNCTION_2_5(v55, v56, v57, v58, v59, v60, v61, v62, v63, v84, v85, v86, processCopy, v88, obj, v64);
                      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching hosting %{public}@ for process %{public}@", v65, 0x16u);
                      array = v29;
                    }

                    else
                    {
                      array = v29;
                      process = processCopy;
                    }

                    v10 = v88;
                    v11 = v86;
                    goto LABEL_40;
                  }
                }

                v32 = [v30 countByEnumeratingWithState:&v90 objects:v98 count:16];
                if (v32)
                {
                  continue;
                }

                break;
              }
            }

            process = processCopy;
            processIdentifier3 = [v13 processIdentifier];
            v17 = [OUTLINED_FUNCTION_18_0() processForIdentifierWithoutStartingTracking:?];

            v39 = rbs_general_log();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_INFO))
            {
              *buf = 138543618;
              v100 = v13;
              v101 = 2114;
              v102 = v17;
              _os_log_impl(&dword_262485000, v39, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess for predicate %{public}@ resolved target to %{public}@", buf, 0x16u);
            }

            rbs_pid4 = [(objc_class *)processCopy[14].isa rbs_pid];
            hostProcess3 = [v17 hostProcess];
            rbs_pid5 = [hostProcess3 rbs_pid];

            if (rbs_pid4 == rbs_pid5)
            {
              v43 = rbs_general_log();
              v44 = os_log_type_enabled(v43, OS_LOG_TYPE_INFO);
              array = v29;
              v11 = v86;
              if (v44)
              {
                OUTLINED_FUNCTION_2_5(v44, v45, v46, v47, v48, v49, v50, v51, v52, v84, v85, v86, processCopy, v88, obj, v53);
                _os_log_impl(&dword_262485000, v43, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching hosted %{public}@ for process %{public}@", v54, 0x16u);
              }

              v10 = v88;
            }

            else
            {
              v66 = [(objc_class *)processCopy[4].isa entitlementsForProcess:v17];
              array = v29;
              v11 = v86;
              if ([v66 rb_hasEntitlementDomain:64])
              {
                bundleIdentifier = rbs_general_log();
                v68 = os_log_type_enabled(bundleIdentifier, OS_LOG_TYPE_INFO);
                v10 = v88;
                if (v68)
                {
                  OUTLINED_FUNCTION_2_5(v68, v69, v70, v71, v72, v73, v74, v75, v76, v84, v85, v86, processCopy, v88, obj, v77);
                  _os_log_impl(&dword_262485000, bundleIdentifier, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching trusted target %{public}@ for process %{public}@", v78, 0x16u);
                }
              }

              else
              {
                bundleIdentifier = [v13 bundleIdentifier];
                v10 = v88;
                if (([bundleIdentifier isEqualToString:@"com.apple.dt.XcodePreviews"]& 1) == 0 && ![bundleIdentifier isEqualToString:@"com.apple.PreviewShell"])
                {
                  v81 = rbs_general_log();
                  if (OUTLINED_FUNCTION_30_0(v81))
                  {
                    isa = processCopy[14].isa;
                    *buf = 138543618;
                    v100 = v13;
                    v101 = 2114;
                    v102 = isa;
                    _os_log_impl(&dword_262485000, processCopy, OS_LOG_TYPE_DEFAULT, "_predicatesMatchOnlyAllowedProcess denying predicate %{public}@ for process %{public}@", buf, 0x16u);
                  }

                  v80 = 0;
                  goto LABEL_47;
                }

                v79 = rbs_general_log();
                if (os_log_type_enabled(v79, OS_LOG_TYPE_INFO))
                {
                  *buf = 138543618;
                  v100 = bundleIdentifier;
                  v101 = 2114;
                  v102 = v13;
                  _os_log_impl(&dword_262485000, v79, OS_LOG_TYPE_INFO, "_predicatesMatchOnlyAllowedProcess allowing predicate matching %{public}@ (%{public}@)", buf, 0x16u);
                }
              }
            }
          }

LABEL_40:

          ++v12;
        }

        while (v12 != v10);
        v10 = [obj countByEnumeratingWithState:&v94 objects:v103 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }

      v80 = 1;
LABEL_47:
      v3 = v85;
    }

    else
    {
      v80 = 1;
    }
  }

  else
  {
    v80 = 0;
  }

  return v80;
}

- (void)_trackTargetProcessForDescriptor:(uint64_t)descriptor
{
  if (descriptor)
  {
    target = [a2 target];
    processIdentifier = [target processIdentifier];

    v4 = processIdentifier;
    if (processIdentifier)
    {
      v5 = [*(descriptor + 40) processForIdentifier:processIdentifier];
      v4 = processIdentifier;
    }
  }
}

- (void)_canInvalidateAssertionWithIdentifier:(uint64_t)identifier error:(uint64_t)error
{
  OUTLINED_FUNCTION_23_0();
  a24 = v27;
  a25 = v28;
  OUTLINED_FUNCTION_16_0();
  a15 = *MEMORY[0x277D85DE8];
  v30 = v29;
  v31 = v30;
  if (!v26)
  {
    goto LABEL_13;
  }

  if (v30)
  {
    clientPid = [v30 clientPid];
    v33 = [v26[17] pid];
    v34 = [v26 rb_hasEntitlement:@"com.apple.runningboard.invalidateanyassertion"];
    v35 = 0;
    if (clientPid == v33 || (v34 & 1) != 0)
    {
      goto LABEL_10;
    }

    v36 = rbs_assertion_log();
    if (OUTLINED_FUNCTION_20_0(v36))
    {
      v44 = v26[17];
      clientPid2 = [v31 clientPid];
      LODWORD(buf) = 138543618;
      *(&buf + 4) = v44;
      WORD6(buf) = 1024;
      *(&buf + 14) = clientPid2;
      _os_log_error_impl(&dword_262485000, 0, OS_LOG_TYPE_ERROR, "Ignoring assertion invalidation request from %{public}@ because the assertion client identifier (%d) does not match", &buf, 0x12u);
    }

    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277D47088];
    a11 = *MEMORY[0x277CCA470];
    a12 = @"Specified assertion identifier is not owned by the client";
    v39 = MEMORY[0x277CBEAC0];
    v40 = &a12;
    v41 = &a11;
  }

  else
  {
    v37 = MEMORY[0x277CCA9B8];
    v38 = *MEMORY[0x277D47088];
    a9 = *MEMORY[0x277CCA470];
    a10 = @"No assertion identifier specified";
    v39 = MEMORY[0x277CBEAC0];
    v40 = &a10;
    v41 = &a9;
  }

  v42 = [v39 dictionaryWithObjects:v40 forKeys:v41 count:1];
  v35 = [v37 errorWithDomain:v38 code:1 userInfo:v42];

LABEL_10:
  if (v25)
  {
    v43 = v35;
    *v25 = v35;
  }

LABEL_13:
  OUTLINED_FUNCTION_22_0();
}

- (void)_requestPluginHoldForProxy:(NSObject *)proxy terminate:(void *)terminate completion:
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = a2;
  terminateCopy = terminate;
  if (self)
  {
    OUTLINED_FUNCTION_0_2();
    OUTLINED_FUNCTION_27_0();
    v25[2] = __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke;
    v25[3] = &unk_279B33528;
    v9 = v7;
    v26 = v9;
    v27 = terminateCopy;
    v10 = MEMORY[0x266729AD0](v25);
    appState = [v9 appState];
    isInstalled = [appState isInstalled];

    if (isInstalled)
    {
      bundleURL = [v9 bundleURL];
      if (bundleURL)
      {
        v14 = [MEMORY[0x277D3D350] managerForUser:*(self + 144)];
        v15 = v14;
        if (proxy)
        {
          [v14 terminatePlugInsInApplication:bundleURL options:0 result:v10];
        }

        else
        {
          [v14 holdPlugInsInApplication:bundleURL result:v10];
        }
      }

      else
      {
        v21 = rbs_connection_log();
        if (OUTLINED_FUNCTION_24(v21))
        {
          bundleIdentifier = [v9 bundleIdentifier];
          *buf = 138543362;
          v29 = bundleIdentifier;
          _os_log_error_impl(&dword_262485000, proxy, OS_LOG_TYPE_ERROR, "Could not get bundle URL for bundle %{public}@", buf, 0xCu);
        }

        v22 = OUTLINED_FUNCTION_14_0();
        v23(v22);
      }
    }

    else
    {
      v16 = rbs_connection_log();
      if (OUTLINED_FUNCTION_30_0(v16))
      {
        bundleIdentifier2 = [v9 bundleIdentifier];
        *buf = 138543362;
        v29 = bundleIdentifier2;
        OUTLINED_FUNCTION_21_0(&dword_262485000, appState, v18, "skipping plugin hold for uninstalled proxy %{public}@", buf);
      }

      v19 = OUTLINED_FUNCTION_14_0();
      v20(v19);
    }
  }
}

- (void)expandPredicateForContained:(uint64_t)contained
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (contained)
  {
    predicate = [v3 predicate];
    bundleIdentifier = [predicate bundleIdentifier];
    context = [v4 context];
    attributes = [context attributes];

    if (!bundleIdentifier)
    {
      v14 = rbs_connection_log();
      if (OUTLINED_FUNCTION_30_0(v14))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, context, OS_LOG_TYPE_DEFAULT, "Termination predicate not expanded because complex predicate", buf, 2u);
      }

      goto LABEL_28;
    }

    if (!attributes)
    {
      context = 0;
      predicate2 = 0;
      v12 = 0;
      goto LABEL_15;
    }

    if ([attributes count] == 1)
    {
      context = [attributes firstObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = context;
      }

      else
      {
        v9 = 0;
      }

      predicate2 = v9;

      if (predicate2)
      {
        predicate2 = [predicate2 predicate];
        bundleIdentifier2 = [predicate2 bundleIdentifier];
        v12 = bundleIdentifier2;
        if (bundleIdentifier2)
        {
          v13 = context;
          if (([bundleIdentifier2 isEqual:bundleIdentifier] & 1) == 0)
          {
            goto LABEL_25;
          }

LABEL_15:
          v15 = RBSContainedExtensionBundleIDs();
          if ([v15 count] != 1)
          {
            v24 = [MEMORY[0x277D46FA0] predicateMatchingBundleIdentifiers:v15];
            v16 = rbs_connection_log();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
            {
              predicate3 = [v4 predicate];
              *buf = 138412546;
              v27 = predicate3;
              v28 = 2112;
              v29 = v24;
              _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_DEFAULT, "expanding termination predicate from %@ to %@", buf, 0x16u);
            }

            [v4 setPredicate:v24];
            if (attributes)
            {
              v18 = MEMORY[0x277D46F00];
              allow = [context allow];
              v19 = [v18 limitationWithPredicate:v24 andException:allow];
              v25 = v19;
              v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v25 count:1];

              context2 = [v4 context];
              [context2 setAttributes:v20];
            }
          }

          goto LABEL_28;
        }

        v13 = context;
LABEL_25:
        v22 = rbs_connection_log();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_262485000, v22, OS_LOG_TYPE_DEFAULT, "Termination preventLaunch attribute not expanded because it didn't match Termination Predicate", buf, 2u);
        }

LABEL_28:
        goto LABEL_29;
      }

      v13 = 0;
    }

    else
    {
      context = 0;
      v13 = 0;
      predicate2 = 0;
    }

    v12 = 0;
    goto LABEL_25;
  }

LABEL_29:
}

- (void)didUpdateProcessStates:(uint64_t)states
{
  v11 = *MEMORY[0x277D85DE8];
  if (states)
  {
    v3 = [a2 processStateChangeForIdentity:*(states + 128)];
    v4 = v3;
    if (v3)
    {
      updatedState = [v3 updatedState];
      inheritances = [updatedState inheritances];
      allInheritances = [inheritances allInheritances];

      v8 = rbs_state_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        OUTLINED_FUNCTION_1_7();
        v10 = allInheritances;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "Process: %{public}@ has changes in inheritances: %{public}@", v9, 0x16u);
      }

      [*(states + 152) setInheritances:allInheritances];
    }
  }
}

- (void)willExpireAssertionsSoonForProcess:(double)process expirationTime:
{
  v47 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (self && *(self + 112) == v6)
  {
    os_unfair_lock_lock((self + 16));
    v8 = *(self + 8);
    if (*(self + 192))
    {
      if ([*(self + 24) hasAssertionWithIdentifier:?])
      {
        os_unfair_lock_unlock((self + 16));
LABEL_17:

        goto LABEL_18;
      }

      v9 = *(self + 192);
      *(self + 192) = 0;
    }

    os_unfair_lock_unlock((self + 16));
    if (!v8)
    {
      goto LABEL_17;
    }

    RBSMachAbsoluteTime();
    v11 = v10;
    v12 = process - v10 + -0.1;
    if ([v7 isSuspended])
    {
      v13 = rbs_connection_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        *buf = 138544130;
        v40 = v7;
        v41 = 2050;
        v42 = v12;
        v43 = 2050;
        processCopy = process;
        v45 = 2050;
        v46 = v11;
        _os_log_fault_impl(&dword_262485000, v13, OS_LOG_TYPE_FAULT, "%{public}@ Suspension Warning for already suspened process (d:%{public}fs xt:%{public}fs n:%{public}fs)", buf, 0x2Au);
      }
    }

    else
    {
      if (v12 <= 0.0)
      {
LABEL_16:
        v34 = [MEMORY[0x277D47030] messageForMethod:sel_async_willExpireAssertionsSoon varguments:0];
        [v34 sendToConnection:v8];

        goto LABEL_17;
      }

      v14 = rbs_connection_log();
      if (OUTLINED_FUNCTION_26_0(v14))
      {
        v15 = *(self + 136);
        *buf = 138543618;
        v40 = v15;
        v41 = 2050;
        v42 = v12;
        OUTLINED_FUNCTION_17_0();
        _os_log_impl(v16, v17, v18, v19, v20, 0x16u);
      }

      v21 = MEMORY[0x277D46DD0];
      v13 = *(self + 88);
      v22 = [v21 identifierWithClientPid:{-[NSObject rbs_pid](v13, "rbs_pid")}];
      v23 = [MEMORY[0x277D47008] targetWithPid:{objc_msgSend(*(self + 112), "rbs_pid")}];
      grantUserInitiated = [MEMORY[0x277D46DF0] grantUserInitiated];
      v38[0] = grantUserInitiated;
      v25 = [MEMORY[0x277D46E48] attributeWithDuration:103 warningDuration:1 startPolicy:v12 endPolicy:0.0];
      v38[1] = v25;
      v26 = [MEMORY[0x277D46FD0] withReason:10101];
      v38[2] = v26;
      v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:3];

      v28 = [MEMORY[0x277D46DC8] descriptorWithIdentifier:v22 target:v23 explanation:@"Will expire assertions soon" attributes:v27];
      v29 = [RBAssertionAcquisitionContext contextForProcess:v13 withDescriptor:v28 daemonContext:*(self + 64)];
      v30 = MEMORY[0x277D47028];
      OUTLINED_FUNCTION_0_2();
      OUTLINED_FUNCTION_27_0();
      v35[2] = __72__RBConnectionClient_willExpireAssertionsSoonForProcess_expirationTime___block_invoke;
      v35[3] = &unk_279B329D0;
      v35[4] = self;
      v36 = v31;
      v37 = v22;
      v32 = v22;
      v33 = v29;
      [v30 performBackgroundWorkWithServiceClass:25 block:v35];
    }

    goto LABEL_16;
  }

LABEL_18:
}

- (void)willInvalidateAssertion:(uint64_t)assertion
{
  v3 = a2;
  if (assertion)
  {
    v4 = *(assertion + 136);
    v11 = v3;
    originator = [v3 originator];
    identifier = [originator identifier];
    LODWORD(v4) = [v4 isEqual:identifier];

    v3 = v11;
    if (v4)
    {
      os_unfair_lock_lock((assertion + 16));
      v7 = *(assertion + 8);
      os_unfair_lock_unlock((assertion + 16));
      if (v7)
      {
        v8 = MEMORY[0x277D47030];
        identifier2 = [v11 identifier];
        v10 = [v8 messageForMethod:sel_async_assertionWillInvalidate_ varguments:{identifier2, 0}];
        [v10 sendToConnection:v7];
      }

      v3 = v11;
    }
  }
}

- (void)didInvalidateAssertions:(uint64_t)assertions
{
  v40 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (assertions)
  {
    v28 = [MEMORY[0x277CBEB58] set];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v27 = v3;
    v4 = v3;
    v5 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v30;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v30 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v29 + 1) + 8 * i);
          originator = [v9 originator];
          identifier = [originator identifier];

          if ([*(assertions + 136) isEqual:identifier])
          {
            identifier2 = [v9 identifier];
            os_unfair_lock_lock((assertions + 16));
            v13 = [*(assertions + 168) containsObject:identifier2];
            [*(assertions + 168) removeObject:identifier2];
            os_unfair_lock_unlock((assertions + 16));
            v14 = [*(assertions + 24) popPluginHoldForAssertion:identifier2];
            if (v14)
            {
              v15 = rbs_assertion_log();
              if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
              {
                *buf = 138412290;
                v36 = v14;
                _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_INFO, "Releasing plugin hold token %@", buf, 0xCu);
              }

              v16 = [MEMORY[0x277D3D350] managerForUser:*(assertions + 144)];
              [v16 releaseHold:v14];
            }

            if (v13)
            {
              [v28 addObject:identifier2];
            }
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v29 objects:v39 count:16];
      }

      while (v6);
    }

    v17 = [v28 count];
    if (v17)
    {
      v18 = v17;
      os_unfair_lock_lock((assertions + 16));
      v19 = *(assertions + 8);
      os_unfair_lock_unlock((assertions + 16));
      if (v19)
      {
        v20 = rbs_assertion_log();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEBUG))
        {
          v26 = *(assertions + 136);
          *buf = 138543618;
          v36 = v26;
          v37 = 2048;
          v38 = v18;
          _os_log_debug_impl(&dword_262485000, v20, OS_LOG_TYPE_DEBUG, "Notifying client %{public}@ of %lu invalidated assertions", buf, 0x16u);
        }

        v21 = MEMORY[0x277CCA9B8];
        v22 = *MEMORY[0x277D47050];
        v33 = *MEMORY[0x277CCA470];
        v34 = @"Assertions were invalidated";
        v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v34 forKeys:&v33 count:1];
        v24 = [v21 errorWithDomain:v22 code:1 userInfo:v23];

        v25 = [MEMORY[0x277D47030] messageForMethod:sel_async_assertionsDidInvalidate_withError_ varguments:{v28, v24, 0}];
        [v25 sendToConnection:v19];
      }
    }

    v3 = v27;
  }
}

- (void)didRemoveProcess:withState:
{
  OUTLINED_FUNCTION_23_0();
  v2 = v1;
  v4 = v3;
  if (v2)
  {
    os_unfair_lock_lock((v2 + 20));
    if ([*(v2 + 176) containsObject:v4])
    {
      [*(v2 + 176) removeObject:v4];
      v5 = *(v2 + 8);
      os_unfair_lock_unlock((v2 + 20));
      if (v5)
      {
        v6 = rbs_process_log();
        if (OUTLINED_FUNCTION_26_0(v6))
        {
          lastExitContext = [v4 lastExitContext];
          OUTLINED_FUNCTION_17_0();
          _os_log_impl(v7, v8, v9, v10, v11, 0x20u);
        }

        v12 = MEMORY[0x277D47030];
        identifier = [v4 identifier];
        lastExitContext2 = [v4 lastExitContext];
        v14 = [v12 messageForMethod:sel_async_processDidExit_withContext_ varguments:identifier];

        [v14 sendToConnection:v5];
      }
    }

    else
    {
      os_unfair_lock_unlock((v2 + 20));
      v5 = 0;
    }

    os_unfair_lock_lock((v2 + 16));
    [*(v2 + 184) didObserveProcessExit:v4];
    os_unfair_lock_unlock((v2 + 16));
  }

  OUTLINED_FUNCTION_22_0();
}

- (uint64_t)processIdentifier
{
  if (result)
  {
    return *(result + 136);
  }

  return result;
}

- (uint64_t)processIdentity
{
  if (result)
  {
    return *(result + 128);
  }

  return result;
}

- (void)handleMessage:(uint8_t *)buf .cold.1(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_262485000, log, OS_LOG_TYPE_FAULT, "Dropping message from %{public}@: The server is missing an implementation for %{public}@", buf, 0x16u);
}

- (void)handleMessage:(uint64_t)a1 .cold.2(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 112);
  v3 = 138543362;
  v4 = v2;
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Dropping message from %{public}@ that does not conform to expectations", &v3, 0xCu);
}

void __36__RBConnectionClient_handleMessage___block_invoke_cold_1()
{
  v4 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_7();
  v3 = v0;
  OUTLINED_FUNCTION_11_0(&dword_262485000, v1, v1, "Error handling message from %{public}@: <%{public}@>", v2);
}

uint64_t __36__RBConnectionClient_handleMessage___block_invoke_40_cold_1(uint64_t a1, void *a2, uint64_t *a3)
{
  [(RBConnectionClient *)*(a1 + 40) _setReadyWithConnection:?];
  [a2 setEuid:*(a1 + 72)];
  v6 = [(RBConnectionClient *)*(a1 + 40) handshakeWithRequest:a2];
  *a3 = v6;
  return [*(a1 + 56) encodeObject:v6 forKey:*MEMORY[0x277D470C0]];
}

void __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) bundleIdentifier];
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_11_0(&dword_262485000, a3, v5, "Ignoring unexpected error acquiring hold on plugins for %{public}@: %{public}@", v6);
}

void __70__RBConnectionClient__requestPluginHoldForProxy_terminate_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [*(a1 + 32) bundleIdentifier];
  OUTLINED_FUNCTION_19_0();
  OUTLINED_FUNCTION_11_0(&dword_262485000, a3, v5, "Error acquiring hold on plugins for %{public}@: %{public}@", v6);
}

@end