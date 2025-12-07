@interface HMDNetworkRouterClientManager
+ (id)logCategory;
- (BOOL)started;
- (HMDHAPAccessory)networkRouterAccessory;
- (HMDHome)home;
- (HMDNetworkRouterClientManager)initWithNetworkRouterAccessory:(id)accessory workQueue:(id)queue firewallRuleManager:(id)manager notificationCenter:(id)center;
- (HMDNetworkRouterController)routerController;
- (NSString)description;
- (id)_transactionBlockForAccessoriesWithStaleClientIdentifier;
- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager;
- (void)__deregisterForNetworkRouterAccessoryReachable:(id)reachable;
- (void)__registerForNetworkRouterAccessoryReachable:(id)reachable;
- (void)_createClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_deregisterForChangesToManagedAccessory:(id)accessory;
- (void)_evaluateManagement;
- (void)_fetchFirewallRulesForAccessory:(id)accessory completion:(id)completion;
- (void)_getNetworkConfigurationForAccessory:(id)accessory targetProtectionMode:(int64_t)mode completion:(id)completion;
- (void)_handleRouterAccessoryReachable:(id)reachable;
- (void)_migrateAccessory:(id)accessory withConfiguration:(id)configuration clientStatus:(id)status fromCredentialType:(int64_t)type toCredentialType:(int64_t)credentialType rotate:(BOOL)rotate completion:(id)completion;
- (void)_reconcileClientConfigurationForAccessory:(id)accessory clientStatus:(id)status networkRouterUUID:(id)d clientReconfigurationAllowed:(BOOL)allowed;
- (void)_reconcileClientConfigurationForReachableAccessory:(id)accessory clientReconfigurationAllowed:(BOOL)allowed;
- (void)_registerForChangesToManagedAccessory:(id)accessory;
- (void)_registerForNetworkProtectionChangesToGroup:(id)group;
- (void)_replaceClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_replaceNetworkClientIdentifierForAccessory:(id)accessory networkClientIdentifier:(id)identifier networkRouterUUID:(id)d clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_resetStaleClientIdentifiersBeforeStart;
- (void)_start;
- (void)_startManagingAccessory:(id)accessory initialHomeSetup:(BOOL)setup;
- (void)_stop;
- (void)_unregisterForNetworkProtectionChangesToGroup:(id)group;
- (void)_updateClientConfiguration:(id)configuration forAccessory:(id)accessory protectionMode:(int64_t)mode clientStatus:(id)status skipIfFingerprintMatches:(BOOL)matches clientReconfigurationAllowed:(BOOL)allowed;
- (void)_updateClientConfigurationForAllAccessoriesWithClientReconfigurationAllowed:(BOOL)allowed;
- (void)_updateExistingClientConfiguration:(id)configuration forAccessory:(id)accessory clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed;
- (void)_updateOrCreateClientConfigurationForAccessory:(id)accessory preferReconcile:(BOOL)reconcile clientReconfigurationAllowed:(BOOL)allowed;
- (void)evaluateManagement;
- (void)handleAccessoryAdded:(id)added;
- (void)handleAccessoryConfigured:(id)configured;
- (void)handleAccessoryFirmwareVersionUpdated:(id)updated;
- (void)handleAccessoryRemoved:(id)removed;
- (void)handleFirewallRulesUpdated:(id)updated;
- (void)handleHomeNetworkProtectionChanged:(id)changed;
- (void)handleNetworkProtectionGroupActivated:(id)activated;
- (void)handleNetworkProtectionGroupDeactivated:(id)deactivated;
- (void)handleNetworkProtectionGroupProtectionChanged:(id)changed;
- (void)handleRouterAccessoryReachable:(id)reachable;
- (void)migrateAccessory:(id)accessory toCredentialType:(int64_t)type rotate:(BOOL)rotate completion:(id)completion;
- (void)replaceActiveNetworkRouterAccessory:(id)accessory;
- (void)setNetworkRouterAccessory:(id)accessory;
- (void)setStarted:(BOOL)started;
- (void)stop;
@end

@implementation HMDNetworkRouterClientManager

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  home = [(HMDNetworkRouterClientManager *)self home];
  v7 = [v3 stringWithFormat:@"<%@ %p Home = %@>", v5, self, home];;

  return v7;
}

- (id)_transactionBlockForAccessoriesWithStaleClientIdentifier
{
  v30 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v4 = [HMDBackingStoreTransactionOptions optionsWithSource:0 destination:2 mustReplay:1 mustPush:0];
  selfCopy = self;
  home = [(HMDNetworkRouterClientManager *)self home];
  backingStore = [home backingStore];
  v22 = v4;
  v23 = [backingStore transaction:@"Reset Stale Network Client Identifiers" options:v4];

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  v21 = home;
  accessories = [home accessories];
  v8 = [accessories countByEnumeratingWithState:&v25 objects:v29 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(accessories);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        networkClientIdentifier = [v12 networkClientIdentifier];
        if (networkClientIdentifier)
        {
          v14 = networkClientIdentifier;
          networkRouterAccessory = [(HMDNetworkRouterClientManager *)selfCopy networkRouterAccessory];
          uuid = [networkRouterAccessory uuid];
          networkRouterUUID = [v12 networkRouterUUID];
          v18 = [uuid isEqual:networkRouterUUID];

          if ((v18 & 1) == 0)
          {
            v19 = [v12 transactionWithObjectChangeType:2];
            [v19 setNetworkRouterUUID:0];
            [v19 setNetworkClientIdentifier:0];
            [v19 setNetworkClientProfileFingerprint:0];
            [v23 add:v19];
          }
        }
      }

      v9 = [accessories countByEnumeratingWithState:&v25 objects:v29 count:16];
    }

    while (v9);
  }

  return v23;
}

- (void)_unregisterForNetworkProtectionChangesToGroup:(id)group
{
  v15 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = groupCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Unregistering for network protection change notification to group %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy notificationCenter];
  [notificationCenter removeObserver:selfCopy name:@"HMDAccessoryNetworkProtectionGroupProtectionModeUpdated" object:groupCopy];
}

- (void)_registerForNetworkProtectionChangesToGroup:(id)group
{
  v15 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v6 = objc_autoreleasePoolPush();
  selfCopy = self;
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v11 = 138543618;
    v12 = v9;
    v13 = 2112;
    v14 = groupCopy;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Registering for network protection change notification to group %@", &v11, 0x16u);
  }

  objc_autoreleasePoolPop(v6);
  notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy notificationCenter];
  [notificationCenter addObserver:selfCopy selector:sel_handleNetworkProtectionGroupProtectionChanged_ name:@"HMDAccessoryNetworkProtectionGroupProtectionModeUpdated" object:groupCopy];
}

- (void)_deregisterForChangesToManagedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryConnectedNotification" object:accessoryCopy];

  notificationCenter2 = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter2 removeObserver:self name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:accessoryCopy];
}

- (void)_registerForChangesToManagedAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleAccessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:accessoryCopy];

  notificationCenter2 = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter2 addObserver:self selector:sel_handleAccessoryFirmwareVersionUpdated_ name:@"HMDAccessoryFirmwareVersionUpdatedNotification" object:accessoryCopy];
}

- (void)_fetchFirewallRulesForAccessory:(id)accessory completion:(id)completion
{
  v30 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  metadataIdentifier = [accessoryCopy metadataIdentifier];
  v10 = objc_autoreleasePoolPush();
  selfCopy = self;
  v12 = HMFGetOSLogHandle();
  v13 = v12;
  if (metadataIdentifier)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543874;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2112;
      v29 = metadataIdentifier;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Fetching firewall rules for accessory %@ with identifier %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v10);
    firewallRuleManager = [(HMDNetworkRouterClientManager *)selfCopy firewallRuleManager];
    v17 = [MEMORY[0x277CBEB98] setWithObject:metadataIdentifier];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __76__HMDNetworkRouterClientManager__fetchFirewallRulesForAccessory_completion___block_invoke;
    v20[3] = &unk_27972DE70;
    v21 = accessoryCopy;
    v22 = metadataIdentifier;
    v23 = completionCopy;
    [firewallRuleManager fetchRulesForAccessories:v17 completion:v20];
  }

  else
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      v19 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543618;
      v25 = v18;
      v26 = 2112;
      v27 = v19;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Unable to fetch firewall rules due to failure to derive identifier for accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __76__HMDNetworkRouterClientManager__fetchFirewallRulesForAccessory_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = logDescriptionForAccessory(*(a1 + 32));
      v11 = *(a1 + 40);
      v15 = 138544130;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      v19 = 2112;
      v20 = v11;
      v21 = 2112;
      v22 = v6;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Fetched firewall rules for accessory %@ with identifier %@ failed with error %@", &v15, 0x2Au);
    }

    objc_autoreleasePoolPop(v7);
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v12 = *(a1 + 48);
    v13 = [v5 allObjects];
    v14 = [v13 firstObject];
    (*(v12 + 16))(v12, v14);
  }
}

- (void)_getNetworkConfigurationForAccessory:(id)accessory targetProtectionMode:(int64_t)mode completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if (mode == 3)
  {
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    v12 = [HMDNetworkRouterClientConfiguration configurationForOpenProtectionWithClientIdentifier:networkClientIdentifier];

    (*(completionCopy + 2))(completionCopy, 0, v12, &unk_2866294A0, 0);
  }

  else
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __102__HMDNetworkRouterClientManager__getNetworkConfigurationForAccessory_targetProtectionMode_completion___block_invoke;
    v13[3] = &unk_27972DE48;
    modeCopy = mode;
    v14 = accessoryCopy;
    selfCopy = self;
    v16 = completionCopy;
    [(HMDNetworkRouterClientManager *)self _fetchFirewallRulesForAccessory:v14 completion:v13];
  }
}

void __102__HMDNetworkRouterClientManager__getNetworkConfigurationForAccessory_targetProtectionMode_completion___block_invoke(uint64_t a1, void *a2)
{
  v36 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 56);
  if (v5 == 1)
  {
    v28 = v3;
    v10 = [[HMDNetworkRouterHomeKitOnlyFirewallConfiguration alloc] initWithAccessory:*(a1 + 32) sourceConfiguration:v3];

    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 40);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier();
      v15 = logDescriptionForAccessory(*(a1 + 32));
      *buf = 138543874;
      v31 = v14;
      v32 = 2112;
      v33 = v10;
      v34 = 2112;
      v35 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Using firewall configuration %@ for accessory %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v11);
    v16 = [*(a1 + 32) needsAirplayAccess];
    v17 = [*(a1 + 32) networkClientIdentifier];
    v18 = [HMDNetworkRouterClientConfiguration configurationForFirewallConfiguration:v10 hapAccessory:1 airplayAccessory:v16 withClientIdentifier:v17];

    (*(*(a1 + 48) + 16))();
  }

  else if (v5)
  {
    v29 = v3;
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v22 = HMFGetLogIdentifier();
      v23 = HMAccessoryNetworkProtectionModeAsString();
      *buf = 138543618;
      v31 = v22;
      v32 = 2112;
      v33 = v23;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_ERROR, "%{public}@Unexpected target network protection mode %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    v24 = *(a1 + 48);
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:-1];
    (*(v24 + 16))(v24, v25, 0, 0, 0);
  }

  else
  {
    v6 = *(a1 + 32);
    if (v4)
    {
      v27 = v4;
      v7 = [v6 needsAirplayAccess];
      v8 = [*(a1 + 32) networkClientIdentifier];
      v9 = [HMDNetworkRouterClientConfiguration configurationForFirewallConfiguration:v27 hapAccessory:1 airplayAccessory:v7 withClientIdentifier:v8];

      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v26 = [v6 networkClientIdentifier];
      v27 = [HMDNetworkRouterClientConfiguration configurationForOpenProtectionWithClientIdentifier:v26];

      (*(*(a1 + 48) + 16))();
    }
  }
}

- (void)_migrateAccessory:(id)accessory withConfiguration:(id)configuration clientStatus:(id)status fromCredentialType:(int64_t)type toCredentialType:(int64_t)credentialType rotate:(BOOL)rotate completion:(id)completion
{
  v97 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  configurationCopy = configuration;
  statusCopy = status;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  clientIdentifier = [configurationCopy clientIdentifier];
  value = [clientIdentifier value];

  if (credentialType == 3)
  {
    if (type != 3 || rotate)
    {
      goto LABEL_8;
    }

LABEL_7:
    completionCopy[2](completionCopy, 0);
    goto LABEL_20;
  }

  if (credentialType != 2)
  {
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
LABEL_19:
    v34 = v33;
    completionCopy[2](completionCopy, v33);

    goto LABEL_20;
  }

  if (type != 3)
  {
    goto LABEL_7;
  }

LABEL_8:
  if (([accessoryCopy supportsWiFiReconfiguration] & 1) == 0)
  {
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    goto LABEL_19;
  }

  if ([accessoryCopy isReachable])
  {
    v22 = accessoryCopy;
    v70 = completionCopy;
    rotateCopy = rotate;
    v24 = configurationCopy;
    v25 = accessoryCopy;
    v26 = value;
    v27 = statusCopy;
    v28 = v22;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    v30 = v29;
    v69 = v28;

    statusCopy = v27;
    value = v26;
    accessoryCopy = v25;
    configurationCopy = v24;
    v31 = rotateCopy;
    completionCopy = v70;
    wiFiManagementController = [v30 wiFiManagementController];

    if (wiFiManagementController)
    {
      routerController = [(HMDNetworkRouterClientManager *)self routerController];
      wiFiSSID = [routerController wiFiSSID];

      if (wiFiSSID)
      {
        if (credentialType == 2)
        {
          v68 = [HMDWiFiManagementController sharedPSKForNetworkWithSSID:wiFiSSID];
        }

        else
        {
          v43 = generateWiFiUniquePreSharedKey();
          v68 = [v43 dataUsingEncoding:1];
        }

        if (v68)
        {
          objc_initWeak(&location, self);
          networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
          uuid = [networkRouterAccessory uuid];

          if (statusCopy || credentialType != 2)
          {
            contexta = objc_autoreleasePoolPush();
            selfCopy = self;
            v56 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v56, OS_LOG_TYPE_INFO))
            {
              v64 = HMFGetLogIdentifier();
              v57 = HMAccessoryWiFiCredentialTypeAsString();
              v58 = logDescriptionForAccessory(v69);
              *buf = 138543874;
              v92 = v64;
              v93 = 2112;
              v94 = v57;
              v95 = 2112;
              v96 = v58;
              _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_INFO, "%{public}@Attempting migration to %@ credential for accessory %@", buf, 0x20u);
            }

            objc_autoreleasePoolPop(contexta);
            accessoriesInReconfiguration = [(HMDNetworkRouterClientManager *)selfCopy accessoriesInReconfiguration];
            uuid2 = [v69 uuid];
            [accessoriesInReconfiguration addObject:uuid2];

            context = objc_alloc_init(HMDNetworkRouterCredential);
            if (credentialType == 3)
            {
              [(HMDNetworkRouterCredential *)context setPsk:v68];
            }

            else
            {
              macAddress = [statusCopy macAddress];
              [(HMDNetworkRouterCredential *)context setMacAddress:macAddress];
            }

            [configurationCopy setCredential:context];
            [configurationCopy setClientIdentifier:0];
            routerController2 = [(HMDNetworkRouterClientManager *)selfCopy routerController];
            v73[0] = MEMORY[0x277D85DD0];
            v73[1] = 3221225472;
            v73[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_50;
            v73[3] = &unk_27972DE20;
            v63 = v81;
            objc_copyWeak(v81, &location);
            v74 = uuid;
            v80 = v70;
            v75 = v69;
            v81[1] = credentialType;
            v76 = wiFiManagementController;
            v77 = wiFiSSID;
            v78 = v68;
            v79 = value;
            [routerController2 addClientConfiguration:configurationCopy completion:v73];

            v53 = &v74;
            v48 = &v80;
            v49 = &v75;
            v50 = &v76;
            v52 = v78;
            v51 = &v77;
          }

          else
          {
            context = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
            v45 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:value];
            [(HMDNetworkRouterCredential *)context setClientIdentifier:v45];

            routerController3 = [(HMDNetworkRouterClientManager *)self routerController];
            v82[0] = MEMORY[0x277D85DD0];
            v82[1] = 3221225472;
            v82[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke;
            v82[3] = &unk_27972DD58;
            v63 = v88;
            objc_copyWeak(v88, &location);
            v83 = uuid;
            v87 = v70;
            v84 = v69;
            v85 = value;
            v86 = configurationCopy;
            v88[1] = type;
            v88[2] = 2;
            v89 = v31;
            v47 = routerController3;
            [routerController3 getClientStatusWithIdentifier:context completion:v82];
            v48 = &v87;
            v49 = &v84;
            v50 = &v85;
            v51 = &v86;
            v52 = v47;
            v53 = &v83;
          }

          objc_destroyWeak(v63);
          objc_destroyWeak(&location);
        }

        else
        {
          v54 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
          (v70)[2](v70, v54);
        }
      }

      else
      {
        v42 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
        (v70)[2](v70, v42);
      }
    }

    else
    {
      v41 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (v70)[2](v70, v41);
    }
  }

  else
  {
    v35 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v37 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
    {
      v38 = HMFGetLogIdentifier();
      v39 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543618;
      v92 = v38;
      v93 = 2112;
      v94 = v39;
      _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Unable to perform Wi-Fi reconfiguration for unreachable accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v35);
    v40 = [MEMORY[0x277CCA9B8] hmErrorWithCode:4];
    (completionCopy)[2](completionCopy, v40);
  }

LABEL_20:
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v8 = *(a1 + 32);
  v9 = *(a1 + 64);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2;
  v17[3] = &unk_27972DD30;
  v18 = v5;
  v10 = v9;
  v19 = v6;
  v20 = WeakRetained;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  *&v13 = *(a1 + 56);
  *(&v13 + 1) = v10;
  *&v14 = v11;
  *(&v14 + 1) = v12;
  v21 = v14;
  v22 = v13;
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  v15 = v6;
  v16 = v5;
  ContinueRouterOperationOnWorkQueue(WeakRetained, v8, v10, v17);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v8 = *(a1 + 32);
  v9 = *(a1 + 80);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2_51;
  v13[3] = &unk_27972DDF8;
  v10 = v5;
  v14 = v10;
  v15 = WeakRetained;
  v16 = *(a1 + 40);
  v23 = *(a1 + 80);
  v11 = v6;
  v12 = *(a1 + 96);
  v17 = v11;
  v24[1] = v12;
  v18 = *(a1 + 48);
  v19 = *(a1 + 56);
  v20 = *(a1 + 64);
  objc_copyWeak(v24, (a1 + 88));
  v21 = *(a1 + 32);
  v22 = *(a1 + 72);
  ContinueRouterOperationOnWorkQueue(WeakRetained, v8, v9, v13);

  objc_destroyWeak(v24);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2_51(uint64_t a1)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  if (v3)
  {
    v4 = [v2 accessoriesInReconfiguration];
    v5 = [*(a1 + 48) uuid];
    [v4 removeObject:v5];

    v6 = *(*(a1 + 104) + 16);

    v6();
  }

  else
  {
    v7 = [v2 routerController];
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_3;
    aBlock[3] = &unk_27972DDA8;
    v26 = *(a1 + 56);
    v8 = v7;
    v27 = v8;
    v9 = _Block_copy(aBlock);
    v10 = objc_alloc_init(HMDWiFiReconfigurationLogEvent);
    v11 = [*(a1 + 40) networkRouterAccessory];
    [(HMDWiFiReconfigurationLogEvent *)v10 setRouterAccessory:v11];

    [(HMDWiFiReconfigurationLogEvent *)v10 setCredentialType:*(a1 + 120)];
    v12 = *(a1 + 64);
    v13 = *(a1 + 72);
    v14 = *(a1 + 80);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_5;
    v17[3] = &unk_279731F80;
    v15 = *(a1 + 48);
    v16 = *(a1 + 120);
    v18 = v15;
    v24[1] = v16;
    v19 = *(a1 + 80);
    objc_copyWeak(v24, (a1 + 112));
    v20 = *(a1 + 88);
    v23 = *(a1 + 104);
    v21 = *(a1 + 56);
    v22 = *(a1 + 96);
    [v12 safelyReconfigureWithSSID:v13 PSK:v14 verificationCallback:v9 logEvent:v10 completion:v17];

    objc_destroyWeak(v24);
  }
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
  v5 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 32)];
  [(HMDNetworkRouterClientStatusIdentifier *)v4 setClientIdentifier:v5];

  v6 = *(a1 + 40);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_4;
  v8[3] = &unk_27972DD80;
  v9 = v3;
  v7 = v3;
  [v6 getClientStatusWithIdentifier:v4 completion:v8];
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    if (*(a1 + 88) == 3)
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = 0;
    }

    [*(a1 + 32) saveWiFiUniquePreSharedKey:v4 credentialType:?];
  }

  WeakRetained = objc_loadWeakRetained((a1 + 80));
  v6 = *(a1 + 72);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_6;
  v10[3] = &unk_27972DDD0;
  v7 = *(a1 + 48);
  v11 = *(a1 + 56);
  v12 = v3;
  v8 = *(a1 + 88);
  v13 = WeakRetained;
  v18 = v8;
  v14 = *(a1 + 32);
  v15 = *(a1 + 48);
  v16 = *(a1 + 64);
  v17 = *(a1 + 72);
  v9 = v3;
  ContinueRouterOperationOnWorkQueue(WeakRetained, v7, v6, v10);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_6(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!*(a1 + 40))
  {
    v3 = objc_autoreleasePoolPush();
    v4 = *(a1 + 48);
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = HMAccessoryWiFiCredentialTypeAsString();
      v8 = logDescriptionForAccessory(*(a1 + 56));
      v13 = 138543874;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      v17 = 2112;
      v18 = v8;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Successfully completed migration to %@ credential for accessory %@", &v13, 0x20u);
    }

    objc_autoreleasePoolPop(v3);
    [*(a1 + 56) saveNetworkClientIdentifier:*(a1 + 32) networkRouterUUID:*(a1 + 64) clearProfileFingerprint:0];
    v9 = *(a1 + 72);

    v2 = v9;
  }

  v10 = [*(a1 + 48) routerController];
  [v10 removeClientConfigurationWithClientIdentifier:v2 completion:&__block_literal_global_56_137929];

  v11 = [*(a1 + 48) accessoriesInReconfiguration];
  v12 = [*(a1 + 56) uuid];
  [v11 removeObject:v12];

  (*(*(a1 + 80) + 16))();
}

uint64_t __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  if (a2)
  {
    v4 = 1;
  }

  else
  {
    v4 = a3 == 0;
  }

  v5 = !v4;
  return (*(v3 + 16))(v3, v5);
}

void __136__HMDNetworkRouterClientManager__migrateAccessory_withConfiguration_clientStatus_fromCredentialType_toCredentialType_rotate_completion___block_invoke_2(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 80) + 16);

    v2();
  }

  else
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      [*(a1 + 48) _migrateAccessory:*(a1 + 56) withConfiguration:*(a1 + 72) clientStatus:v3 fromCredentialType:*(a1 + 88) toCredentialType:*(a1 + 96) rotate:*(a1 + 104) completion:*(a1 + 80)];
    }

    else
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 48);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = logDescriptionForAccessory(*(a1 + 56));
        v9 = *(a1 + 64);
        *buf = 138543874;
        v13 = v7;
        v14 = 2112;
        v15 = v8;
        v16 = 2112;
        v17 = v9;
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Router did not return client status for accessory %@ with client identifier %@ (accessory offline or not connected to router?)", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v4);
      v10 = *(a1 + 80);
      v11 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v10 + 16))(v10, v11);
    }
  }
}

- (void)_updateClientConfiguration:(id)configuration forAccessory:(id)accessory protectionMode:(int64_t)mode clientStatus:(id)status skipIfFingerprintMatches:(BOOL)matches clientReconfigurationAllowed:(BOOL)allowed
{
  configurationCopy = configuration;
  accessoryCopy = accessory;
  statusCopy = status;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke;
  v21[3] = &unk_27972DD08;
  matchesCopy = matches;
  v22 = accessoryCopy;
  selfCopy = self;
  v25 = configurationCopy;
  modeCopy = mode;
  allowedCopy = allowed;
  v24 = statusCopy;
  v18 = configurationCopy;
  v19 = statusCopy;
  v20 = accessoryCopy;
  [(HMDNetworkRouterClientManager *)self _getNetworkConfigurationForAccessory:v20 targetProtectionMode:mode completion:v21];
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v58 = *MEMORY[0x277D85DE8];
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v9 && v10)
  {
    v13 = [v11 integerValue];
    v14 = [v10 lanIdentifier];
    v15 = [v14 value];
    v36 = [v15 integerValue];

    v16 = [v10 fingerprint];
    if (*(a1 + 72) == 1 && ([*(a1 + 32) networkClientProfileFingerprint], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v16, "isEqual:", v17), v17, v18))
    {
      context = objc_autoreleasePoolPush();
      v19 = *(a1 + 40);
      v20 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        v33 = logDescriptionForAccessory(*(a1 + 32));
        v21 = HMAccessoryNetworkProtectionModeAsString();
        *buf = 138543874;
        v53 = v34;
        v54 = 2112;
        v55 = v33;
        v56 = 2112;
        v57 = v21;
        _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Skipping network configuration update for accessory %@ with mode %@ - fingerprint matches existing profile", buf, 0x20u);
      }

      objc_autoreleasePoolPop(context);
      if (v13 != [*(a1 + 32) currentNetworkProtectionMode])
      {
        v22 = *(a1 + 32);
        v23 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:v12];
        [v22 saveCurrentNetworkProtectionMode:v13 assignedLAN:v36 allowedWANHosts:v23 profileFingerprint:v16];
      }

      if (*(a1 + 73) == 1 && *(a1 + 64) != 3)
      {
        v24 = [*(a1 + 40) workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_42;
        block[3] = &unk_279734870;
        v37 = *(a1 + 32);
        v25 = v37.i64[0];
        v49 = vextq_s8(v37, v37, 8uLL);
        v50 = v10;
        v51 = *(a1 + 48);
        dispatch_async(v24, block);
      }
    }

    else
    {
      v26 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 56)];
      [v10 setClientIdentifier:v26];

      v27 = [*(a1 + 40) networkRouterAccessory];
      v28 = [v27 uuid];

      objc_initWeak(buf, *(a1 + 40));
      v29 = [*(a1 + 40) routerController];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_3;
      v38[3] = &unk_27972DCE0;
      objc_copyWeak(v46, buf);
      v30 = v28;
      v39 = v30;
      v40 = *(a1 + 32);
      v46[1] = v13;
      v46[2] = v36;
      v41 = v12;
      v42 = v16;
      v31 = *(a1 + 56);
      v47 = *(a1 + 73);
      v32 = *(a1 + 64);
      v43 = v31;
      v46[3] = v32;
      v44 = v10;
      v45 = *(a1 + 48);
      [v29 updateClientConfiguration:v44 completion:v38];

      objc_destroyWeak(v46);
      objc_destroyWeak(buf);
    }
  }
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_42(void *a1)
{
  v1 = a1[4];
  v2 = a1[5];
  v3 = a1[6];
  v4 = a1[7];
  v5 = [v3 credential];
  [v1 _migrateAccessory:v2 withConfiguration:v3 clientStatus:v4 fromCredentialType:credentialTypeForCredential(v5) toCredentialType:3 rotate:0 completion:&__block_literal_global_44_137940];
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_3(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v5 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_4;
    v15[3] = &unk_27972DCB8;
    v15[4] = v5;
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v21 = *(a1 + 96);
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    *&v11 = v9;
    *(&v11 + 1) = v10;
    *&v12 = v7;
    *(&v12 + 1) = v8;
    v16 = v12;
    v17 = v11;
    v13 = *(a1 + 64);
    v23 = *(a1 + 120);
    v14 = *(a1 + 112);
    v18 = v13;
    v22 = v14;
    v19 = *(a1 + 72);
    v20 = *(a1 + 80);
    dispatch_async(v6, v15);
  }
}

void __155__HMDNetworkRouterClientManager__updateClientConfiguration_forAccessory_protectionMode_clientStatus_skipIfFingerprintMatches_clientReconfigurationAllowed___block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    v5 = *(a1 + 96);
    v6 = *(a1 + 104);
    v7 = *(a1 + 48);
    v8 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:*(a1 + 56)];
    [v7 saveCurrentNetworkProtectionMode:v5 assignedLAN:v6 allowedWANHosts:v8 profileFingerprint:*(a1 + 64)];

    v9 = *(a1 + 48);
    v10 = +[HMDAccessoryNetworkAccessViolation noViolation];
    [v9 saveNetworkAccessViolation:v10];

    v11 = [*(a1 + 32) routerController];
    [v11 resetAccessViolationForClientIdentifier:*(a1 + 72) completion:&__block_literal_global_46_137938];

    if (*(a1 + 120) == 1 && *(a1 + 112) != 3)
    {
      v12 = *(a1 + 32);
      v13 = *(a1 + 48);
      v15 = *(a1 + 80);
      v14 = *(a1 + 88);
      v16 = [v15 credential];
      [v12 _migrateAccessory:v13 withConfiguration:v15 clientStatus:v14 fromCredentialType:credentialTypeForCredential(v16) toCredentialType:3 rotate:0 completion:&__block_literal_global_48];
    }
  }
}

- (void)_updateExistingClientConfiguration:(id)configuration forAccessory:(id)accessory clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v40 = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  accessoryCopy = accessory;
  statusCopy = status;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  ProtectionModeForAccessory = getProtectionModeForAccessory(accessoryCopy);
  v15 = accessoryCopy;
  v16 = getProtectionModeForAccessory(v15);
  if (v16 < 2)
  {

LABEL_3:
    v17 = objc_autoreleasePoolPush();
    selfCopy = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      v21 = logDescriptionForAccessory(v15);
      HMAccessoryNetworkProtectionModeAsString();
      v33 = ProtectionModeForAccessory;
      v22 = statusCopy;
      v23 = configurationCopy;
      v25 = v24 = allowedCopy;
      *buf = 138543874;
      v35 = v20;
      v36 = 2112;
      v37 = v21;
      v38 = 2112;
      v39 = v25;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Updating existing client configuration for accessory %@ to comply with target network protection mode %@", buf, 0x20u);

      allowedCopy = v24;
      configurationCopy = v23;
      statusCopy = v22;
      ProtectionModeForAccessory = v33;
    }

    objc_autoreleasePoolPop(v17);
    [(HMDNetworkRouterClientManager *)selfCopy _updateClientConfiguration:configurationCopy forAccessory:v15 protectionMode:ProtectionModeForAccessory clientStatus:statusCopy skipIfFingerprintMatches:1 clientReconfigurationAllowed:allowedCopy];
    goto LABEL_13;
  }

  if (v16 == 3)
  {
    currentNetworkProtectionMode = [v15 currentNetworkProtectionMode];

    if (currentNetworkProtectionMode != 3)
    {
      goto LABEL_3;
    }
  }

  else
  {
  }

  v27 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v29 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
  {
    v30 = HMFGetLogIdentifier();
    v31 = logDescriptionForAccessory(v15);
    v32 = HMAccessoryNetworkProtectionModeAsString();
    *buf = 138543874;
    v35 = v30;
    v36 = 2112;
    v37 = v31;
    v38 = 2112;
    v39 = v32;
    _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@No network configuration update necessary for accessory %@ with protection mode %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v27);
LABEL_13:
}

- (void)_updateOrCreateClientConfigurationForAccessory:(id)accessory preferReconcile:(BOOL)reconcile clientReconfigurationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  reconcileCopy = reconcile;
  v27 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v10 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = v11;

  networkClientIdentifier = [v12 networkClientIdentifier];
  v14 = networkClientIdentifier;
  if (!reconcileCopy)
  {
    if (networkClientIdentifier)
    {
      goto LABEL_9;
    }

    if (![v12 isReachable])
    {
      goto LABEL_12;
    }

LABEL_11:
    [(HMDNetworkRouterClientManager *)self _reconcileClientConfigurationForReachableAccessory:v12 clientReconfigurationAllowed:allowedCopy];
    goto LABEL_17;
  }

  if ([v12 isReachable])
  {
    goto LABEL_11;
  }

  if (v14)
  {
LABEL_9:
    [(HMDNetworkRouterClientManager *)self _updateExistingClientConfiguration:v14 forAccessory:v12 clientStatus:0 clientReconfigurationAllowed:allowedCopy];
    goto LABEL_17;
  }

LABEL_12:
  wiFiUniquePreSharedKey = [v10 wiFiUniquePreSharedKey];

  if (wiFiUniquePreSharedKey)
  {
    v16 = objc_alloc_init(HMDNetworkRouterCredential);
    wiFiUniquePreSharedKey2 = [v10 wiFiUniquePreSharedKey];
    [(HMDNetworkRouterCredential *)v16 setPsk:wiFiUniquePreSharedKey2];

    [(HMDNetworkRouterClientManager *)self _createClientConfigurationForAccessory:v10 credential:v16 clientStatus:0 clientReconfigurationAllowed:0];
  }

  else
  {
    v18 = objc_autoreleasePoolPush();
    selfCopy = self;
    v20 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
    {
      v21 = HMFGetLogIdentifier();
      v22 = logDescriptionForAccessory(v10);
      v23 = 138543618;
      v24 = v21;
      v25 = 2112;
      v26 = v22;
      _os_log_impl(&dword_2531F8000, v20, OS_LOG_TYPE_INFO, "%{public}@Unable to apply client configuration for unreachable accessory %@ with no prior client configuration and no saved PSK", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v18);
  }

LABEL_17:
}

- (void)_updateClientConfigurationForAllAccessoriesWithClientReconfigurationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v18 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  home = [(HMDNetworkRouterClientManager *)self home];
  accessories = [home accessories];

  v8 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(accessories);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (shouldManageAccessory(v12))
        {
          [(HMDNetworkRouterClientManager *)self _updateOrCreateClientConfigurationForAccessory:v12 preferReconcile:0 clientReconfigurationAllowed:allowedCopy];
        }
      }

      v9 = [accessories countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)_createClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  v34 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  credentialCopy = credential;
  statusCopy = status;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v14 = objc_autoreleasePoolPush();
  selfCopy = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    v18 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138543618;
    v31 = v17;
    v32 = 2112;
    v33 = v18;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Creating new client configuration for %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v14);
  ProtectionModeForAccessory = getProtectionModeForAccessory(accessoryCopy);
  objc_initWeak(buf, selfCopy);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke;
  v23[3] = &unk_27972DC90;
  v20 = credentialCopy;
  v24 = v20;
  v25 = selfCopy;
  objc_copyWeak(v28, buf);
  v21 = accessoryCopy;
  allowedCopy = allowed;
  v26 = v21;
  v28[1] = ProtectionModeForAccessory;
  v22 = statusCopy;
  v27 = v22;
  [(HMDNetworkRouterClientManager *)selfCopy _getNetworkConfigurationForAccessory:v21 targetProtectionMode:ProtectionModeForAccessory completion:v23];

  objc_destroyWeak(v28);
  objc_destroyWeak(buf);
}

void __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (!v9)
  {
    [v10 setClientIdentifier:0];
    [v10 setCredential:*(a1 + 32)];
    v13 = [*(a1 + 40) networkRouterAccessory];
    v14 = [v13 uuid];

    v15 = [*(a1 + 40) routerController];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_2;
    v19[3] = &unk_27972DC68;
    objc_copyWeak(v27, (a1 + 64));
    v16 = v14;
    v20 = v16;
    v21 = *(a1 + 48);
    v22 = v11;
    v23 = v10;
    v17 = v12;
    v28 = *(a1 + 80);
    v18 = *(a1 + 72);
    v24 = v17;
    v27[1] = v18;
    v25 = *(a1 + 56);
    v26 = *(a1 + 32);
    [v15 addClientConfiguration:v23 completion:v19];

    objc_destroyWeak(v27);
  }
}

void __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 88));
  v7 = WeakRetained;
  if (!a2 && WeakRetained)
  {
    v8 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_3;
    block[3] = &unk_27972DC40;
    block[4] = v7;
    v16 = *(a1 + 32);
    v17 = *(a1 + 40);
    v18 = v5;
    v9 = *(a1 + 48);
    v10 = *(a1 + 56);
    v11 = *(a1 + 64);
    v23 = *(a1 + 104);
    v22 = *(a1 + 96);
    v12 = *(a1 + 72);
    *&v13 = v11;
    *(&v13 + 1) = v12;
    *&v14 = v9;
    *(&v14 + 1) = v10;
    v19 = v14;
    v20 = v13;
    v21 = *(a1 + 80);
    dispatch_async(v8, block);
  }
}

void __125__HMDNetworkRouterClientManager__createClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 48) saveNetworkClientIdentifier:*(a1 + 56) networkRouterUUID:*(a1 + 40) clearProfileFingerprint:0];
    v5 = *(a1 + 48);
    v6 = [*(a1 + 64) integerValue];
    v7 = [*(a1 + 72) lanIdentifier];
    v8 = [v7 value];
    v9 = [v8 integerValue];
    v10 = [HMDAccessoryAllowedHost allowedHostsFromFirewallRuleConfiguration:*(a1 + 80)];
    v11 = [*(a1 + 72) fingerprint];
    [v5 saveCurrentNetworkProtectionMode:v6 assignedLAN:v9 allowedWANHosts:v10 profileFingerprint:v11];

    v12 = *(a1 + 48);
    v13 = +[HMDAccessoryNetworkAccessViolation noViolation];
    [v12 saveNetworkAccessViolation:v13];

    if (*(a1 + 112) == 1 && *(a1 + 104) != 3)
    {
      v14 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 56)];
      [*(a1 + 72) setClientIdentifier:v14];

      [*(a1 + 32) _migrateAccessory:*(a1 + 48) withConfiguration:*(a1 + 72) clientStatus:*(a1 + 88) fromCredentialType:credentialTypeForCredential(*(a1 + 96)) toCredentialType:3 rotate:0 completion:&__block_literal_global_137946];
    }
  }
}

- (void)_replaceClientConfigurationForAccessory:(id)accessory credential:(id)credential clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  v36 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  credentialCopy = credential;
  statusCopy = status;
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    v18 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138543874;
    v31 = v16;
    v32 = 2112;
    v33 = networkClientIdentifier;
    v34 = 2112;
    v35 = v18;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Replacing client configuration with identifier %@ with a new client configuration for %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v13);
  objc_initWeak(buf, selfCopy);
  routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
  networkClientIdentifier2 = [accessoryCopy networkClientIdentifier];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __126__HMDNetworkRouterClientManager__replaceClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke;
  v24[3] = &unk_27972DC18;
  objc_copyWeak(&v28, buf);
  v21 = accessoryCopy;
  v25 = v21;
  v22 = credentialCopy;
  v26 = v22;
  v23 = statusCopy;
  v27 = v23;
  allowedCopy = allowed;
  [routerController removeClientConfigurationWithClientIdentifier:networkClientIdentifier2 completion:v24];

  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);
}

void __126__HMDNetworkRouterClientManager__replaceClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __126__HMDNetworkRouterClientManager__replaceClientConfigurationForAccessory_credential_clientStatus_clientReconfigurationAllowed___block_invoke_2;
    block[3] = &unk_279731590;
    block[4] = v3;
    v6 = *(a1 + 32);
    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 64);
    dispatch_async(v4, block);
  }
}

- (void)_replaceNetworkClientIdentifierForAccessory:(id)accessory networkClientIdentifier:(id)identifier networkRouterUUID:(id)d clientStatus:(id)status clientReconfigurationAllowed:(BOOL)allowed
{
  v43 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  identifierCopy = identifier;
  dCopy = d;
  statusCopy = status;
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v18 = HMFGetLogIdentifier();
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    v20 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138544130;
    v36 = v18;
    v37 = 2112;
    v38 = networkClientIdentifier;
    v39 = 2112;
    v40 = identifierCopy;
    v41 = 2112;
    v42 = v20;
    _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Replacing saved network client identifier %@ with %@ found on router for %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v15);
  objc_initWeak(buf, selfCopy);
  routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
  networkClientIdentifier2 = [accessoryCopy networkClientIdentifier];
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke;
  v28[3] = &unk_27972DBF0;
  objc_copyWeak(&v33, buf);
  v23 = dCopy;
  v29 = v23;
  v24 = accessoryCopy;
  v30 = v24;
  v25 = identifierCopy;
  v31 = v25;
  v26 = statusCopy;
  v32 = v26;
  allowedCopy = allowed;
  [routerController removeClientConfigurationWithClientIdentifier:networkClientIdentifier2 completion:v28];

  objc_destroyWeak(&v33);
  objc_destroyWeak(buf);
}

void __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained workQueue];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke_2;
    v11[3] = &unk_27972DBC8;
    v11[4] = v3;
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 56);
    *&v9 = v7;
    *(&v9 + 1) = v8;
    *&v10 = v5;
    *(&v10 + 1) = v6;
    v12 = v10;
    v13 = v9;
    v14 = *(a1 + 72);
    dispatch_async(v4, v11);
  }
}

void __161__HMDNetworkRouterClientManager__replaceNetworkClientIdentifierForAccessory_networkClientIdentifier_networkRouterUUID_clientStatus_clientReconfigurationAllowed___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) networkRouterAccessory];
  v3 = [v2 uuid];
  v4 = [v3 isEqual:*(a1 + 40)];

  if (v4)
  {
    [*(a1 + 48) saveNetworkClientIdentifier:*(a1 + 56) networkRouterUUID:*(a1 + 40) clearProfileFingerprint:1];
    v5 = *(a1 + 32);
    v7 = *(a1 + 48);
    v6 = *(a1 + 56);
    ProtectionModeForAccessory = getProtectionModeForAccessory(v7);
    v9 = *(a1 + 64);
    v10 = *(a1 + 72);

    [v5 _updateClientConfiguration:v6 forAccessory:v7 protectionMode:ProtectionModeForAccessory clientStatus:v9 skipIfFingerprintMatches:0 clientReconfigurationAllowed:v10];
  }
}

- (void)_reconcileClientConfigurationForAccessory:(id)accessory clientStatus:(id)status networkRouterUUID:(id)d clientReconfigurationAllowed:(BOOL)allowed
{
  allowedCopy = allowed;
  v50 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  statusCopy = status;
  dCopy = d;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  macAddress = [statusCopy macAddress];

  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (macAddress)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = logDescriptionForAccessory(accessoryCopy);
      *buf = 138543618;
      v45 = v19;
      v46 = 2112;
      v47 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Reconciling client configuration for accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v15);
    networkClientIdentifier = [accessoryCopy networkClientIdentifier];
    clientIdentifier = [statusCopy clientIdentifier];

    if (networkClientIdentifier)
    {
      clientIdentifier2 = [statusCopy clientIdentifier];
      v24 = clientIdentifier2;
      if (clientIdentifier)
      {
        value = [clientIdentifier2 value];
        v26 = [networkClientIdentifier isEqualToNumber:value];

        if (v26)
        {
          [(HMDNetworkRouterClientManager *)selfCopy _updateExistingClientConfiguration:networkClientIdentifier forAccessory:accessoryCopy clientStatus:statusCopy clientReconfigurationAllowed:allowedCopy];
LABEL_22:

          goto LABEL_23;
        }

        clientIdentifier3 = [statusCopy clientIdentifier];
        value2 = [clientIdentifier3 value];
        [(HMDNetworkRouterClientManager *)selfCopy _replaceNetworkClientIdentifierForAccessory:accessoryCopy networkClientIdentifier:value2 networkRouterUUID:dCopy clientStatus:statusCopy clientReconfigurationAllowed:allowedCopy];

LABEL_19:
        goto LABEL_22;
      }

      if (!v24)
      {
        macAddress2 = [statusCopy macAddress];
        v40 = networkRouterCredentialForAccessory(accessoryCopy, macAddress2);

        [(HMDNetworkRouterClientManager *)selfCopy _replaceClientConfigurationForAccessory:accessoryCopy credential:v40 clientStatus:statusCopy clientReconfigurationAllowed:allowedCopy];
        goto LABEL_21;
      }
    }

    else if (clientIdentifier)
    {
      networkRouterAccessory = [(HMDNetworkRouterClientManager *)selfCopy networkRouterAccessory];
      uuid = [networkRouterAccessory uuid];
      v31 = [uuid isEqual:dCopy];

      if (!v31)
      {
        goto LABEL_22;
      }

      clientIdentifier4 = [statusCopy clientIdentifier];
      clientIdentifier3 = [clientIdentifier4 value];

      v34 = objc_autoreleasePoolPush();
      v35 = selfCopy;
      v36 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        v37 = HMFGetLogIdentifier();
        logDescriptionForAccessory(accessoryCopy);
        v38 = v43 = v34;
        *buf = 138543874;
        v45 = v37;
        v46 = 2112;
        v47 = clientIdentifier3;
        v48 = 2112;
        v49 = v38;
        _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Saving found network client identifier %@ for %@", buf, 0x20u);

        v34 = v43;
      }

      objc_autoreleasePoolPop(v34);
      [accessoryCopy saveNetworkClientIdentifier:clientIdentifier3 networkRouterUUID:dCopy clearProfileFingerprint:1];
      [(HMDNetworkRouterClientManager *)v35 _updateClientConfiguration:clientIdentifier3 forAccessory:accessoryCopy protectionMode:getProtectionModeForAccessory(accessoryCopy) clientStatus:statusCopy skipIfFingerprintMatches:0 clientReconfigurationAllowed:allowedCopy];
      goto LABEL_19;
    }

    macAddress3 = [statusCopy macAddress];
    v40 = networkRouterCredentialForAccessory(accessoryCopy, macAddress3);

    [(HMDNetworkRouterClientManager *)selfCopy _createClientConfigurationForAccessory:accessoryCopy credential:v40 clientStatus:statusCopy clientReconfigurationAllowed:allowedCopy];
LABEL_21:

    goto LABEL_22;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    v27 = HMFGetLogIdentifier();
    v28 = logDescriptionForAccessory(accessoryCopy);
    *buf = 138543618;
    v45 = v27;
    v46 = 2112;
    v47 = v28;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Router failed to report MAC address for accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
LABEL_23:
}

- (void)_reconcileClientConfigurationForReachableAccessory:(id)accessory clientReconfigurationAllowed:(BOOL)allowed
{
  v55 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v8 = accessoryCopy;
  primaryIPServer = [v8 primaryIPServer];
  peerAddress = [primaryIPServer peerAddress];

  if (peerAddress)
  {
    v46 = 0;
    v11 = [HMDNetworkRouterIPAddress ipAddressFromNetAddress:peerAddress error:&v46];
    v12 = v46;
    if (v12)
    {
      v13 = objc_autoreleasePoolPush();
      v14 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v15 = HMFGetLogIdentifier();
        v16 = logDescriptionForAccessory(v8);
        *buf = 138544130;
        v48 = v15;
        v49 = 2112;
        v50 = peerAddress;
        v51 = 2112;
        v52 = v16;
        v53 = 2112;
        v54 = v12;
        _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Unable to get translate IP address %@ for accessory %@ because of %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = logDescriptionForAccessory(v8);
      *buf = 138543618;
      v48 = v19;
      v49 = 2112;
      v50 = v20;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Unable to get IP address for accessory %@ because we don't have a connection", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    v11 = 0;
  }

  v21 = [v11 v4];
  if (v21)
  {

LABEL_13:
    v24 = objc_alloc_init(HMDNetworkRouterClientStatusIdentifier);
    [(HMDNetworkRouterClientStatusIdentifier *)v24 setIpAddress:v11];
    v25 = objc_autoreleasePoolPush();
    selfCopy = self;
    v27 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v28 = HMFGetLogIdentifier();
      v29 = logDescriptionForAccessory(v8);
      *buf = 138543874;
      v48 = v28;
      v49 = 2112;
      v50 = v29;
      v51 = 2112;
      v52 = v24;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Querying the router for the status of accessory %@ with %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v25);
    objc_initWeak(buf, selfCopy);
    networkRouterAccessory = [(HMDNetworkRouterClientManager *)selfCopy networkRouterAccessory];
    uuid = [networkRouterAccessory uuid];

    routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 3221225472;
    v40[2] = __113__HMDNetworkRouterClientManager__reconcileClientConfigurationForReachableAccessory_clientReconfigurationAllowed___block_invoke;
    v40[3] = &unk_27972DBA0;
    objc_copyWeak(&v44, buf);
    v41 = v8;
    v33 = v24;
    v42 = v33;
    v34 = uuid;
    v43 = v34;
    allowedCopy = allowed;
    [routerController getClientStatusWithIdentifier:v33 completion:v40];

    objc_destroyWeak(&v44);
    objc_destroyWeak(buf);

    goto LABEL_16;
  }

  accessoryCopy = [v11 accessoryCopy];
  v23 = accessoryCopy == 0;

  if (!v23)
  {
    goto LABEL_13;
  }

  v35 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v37 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
  {
    v38 = HMFGetLogIdentifier();
    v39 = logDescriptionForAccessory(v8);
    *buf = 138543618;
    v48 = v38;
    v49 = 2112;
    v50 = v39;
    _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Failed to extract any IP address for accessory %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v35);
LABEL_16:
}

void __113__HMDNetworkRouterClientManager__reconcileClientConfigurationForReachableAccessory_clientReconfigurationAllowed___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    if (v5)
    {
      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
LABEL_6:

        objc_autoreleasePoolPop(v9);
        goto LABEL_9;
      }

      v12 = HMFGetLogIdentifier();
      v13 = logDescriptionForAccessory(*(a1 + 32));
      v14 = *(a1 + 40);
      *buf = 138544130;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v14;
      v32 = 2112;
      v33 = v5;
      v15 = "%{public}@Failed to get client status of accessory %@ with %@: %@";
      v16 = v11;
      v17 = OS_LOG_TYPE_ERROR;
      v18 = 42;
    }

    else
    {
      if (v6)
      {
        v19 = [WeakRetained workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __113__HMDNetworkRouterClientManager__reconcileClientConfigurationForReachableAccessory_clientReconfigurationAllowed___block_invoke_38;
        block[3] = &unk_279731590;
        block[4] = v8;
        v22 = *(a1 + 32);
        v23 = v6;
        v24 = *(a1 + 48);
        v25 = *(a1 + 64);
        dispatch_async(v19, block);

        goto LABEL_9;
      }

      v9 = objc_autoreleasePoolPush();
      v10 = v8;
      v11 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        goto LABEL_6;
      }

      v12 = HMFGetLogIdentifier();
      v13 = logDescriptionForAccessory(*(a1 + 32));
      v20 = *(a1 + 40);
      *buf = 138543874;
      v27 = v12;
      v28 = 2112;
      v29 = v13;
      v30 = 2112;
      v31 = v20;
      v15 = "%{public}@Router did not return client status for accessory %@ with %@ (accessory offline or not connected to router?)";
      v16 = v11;
      v17 = OS_LOG_TYPE_INFO;
      v18 = 32;
    }

    _os_log_impl(&dword_2531F8000, v16, v17, v15, buf, v18);

    goto LABEL_6;
  }

LABEL_9:
}

- (void)_startManagingAccessory:(id)accessory initialHomeSetup:(BOOL)setup
{
  v19 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  v7 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    selfCopy = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = HMFGetLogIdentifier();
      v14 = logDescriptionForAccessory(v9);
      v15 = 138543618;
      v16 = v13;
      v17 = 2112;
      v18 = v14;
      _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Managing accessory %@ as a Network Router client", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    [(HMDNetworkRouterClientManager *)selfCopy _registerForChangesToManagedAccessory:v9];
    [(HMDNetworkRouterClientManager *)selfCopy _updateOrCreateClientConfigurationForAccessory:v9 preferReconcile:1 clientReconfigurationAllowed:0];
  }
}

- (void)handleFirewallRulesUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__HMDNetworkRouterClientManager_handleFirewallRulesUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __60__HMDNetworkRouterClientManager_handleFirewallRulesUpdated___block_invoke(uint64_t a1)
{
  v39 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) home];
  v3 = [v2 protectionMode];
  v4 = objc_autoreleasePoolPush();
  v27 = a1;
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  v26 = v2;
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v9 = [v2 name];
      v10 = [*(v27 + 40) userInfo];
      *buf = 138543874;
      v34 = v8;
      v35 = 2112;
      v36 = v9;
      v37 = 2112;
      v38 = v10;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Handling firewall rules update notification for home %@: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
    v11 = [*(v27 + 40) userInfo];
    v12 = [v11 hmf_setForKey:@"HMDNotificationNetworkRouterFirewallRulesUpdatedAccessoriesKey"];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v13 = [v2 accessories];
    v14 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v29;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v29 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v28 + 1) + 8 * i);
          if ([v18 supportsNetworkProtection])
          {
            v19 = [v18 metadataIdentifier];
            if (v19)
            {
              v20 = [HMDNetworkRouterFirewallRuleAccessoryIdentifier alloc];
              v21 = [v19 productGroup];
              v22 = [v19 productNumber];
              v23 = [(HMDNetworkRouterFirewallRuleAccessoryIdentifier *)v20 initWithProductGroup:v21 productNumber:v22 firmwareVersion:0];

              if (![v12 count] || objc_msgSend(v12, "containsObject:", v23))
              {
                [*(v27 + 32) _updateOrCreateClientConfigurationForAccessory:v18 preferReconcile:0 clientReconfigurationAllowed:0];
              }
            }
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v15);
    }
  }

  else
  {
    if (v7)
    {
      v24 = HMFGetLogIdentifier();
      v25 = [v26 name];
      *buf = 138543618;
      v34 = v24;
      v35 = 2112;
      v36 = v25;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Ignoring firewall rules update since network protection is disabled for home %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }
}

- (void)handleHomeNetworkProtectionChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__HMDNetworkRouterClientManager_handleHomeNetworkProtectionChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __68__HMDNetworkRouterClientManager_handleHomeNetworkProtectionChanged___block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4)
    {
      v5 = [*(a1 + 32) networkRouterAccessory];
      v6 = objc_autoreleasePoolPush();
      v7 = *(a1 + 32);
      v8 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = HMFGetLogIdentifier();
        v10 = [v4 name];
        [v4 protectionMode];
        v11 = HMNetworkProtectionModeAsString();
        v12 = [v5 shortDescription];
        v13 = 138544130;
        v14 = v9;
        v15 = 2112;
        v16 = v10;
        v17 = 2112;
        v18 = v11;
        v19 = 2112;
        v20 = v12;
        _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Network protection for home %@ changed to %@. Network router Accessory: %@", &v13, 0x2Au);
      }

      objc_autoreleasePoolPop(v6);
      if ([v5 isReachable])
      {
        [*(a1 + 32) _updateClientConfigurationForAllAccessoriesWithClientReconfigurationAllowed:1];
      }
    }
  }
}

- (void)handleNetworkProtectionGroupProtectionChanged:(id)changed
{
  changedCopy = changed;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__HMDNetworkRouterClientManager_handleNetworkProtectionGroupProtectionChanged___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(workQueue, v7);
}

void __79__HMDNetworkRouterClientManager_handleNetworkProtectionGroupProtectionChanged___block_invoke(uint64_t a1)
{
  v42 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:*MEMORY[0x277CCEC10]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [*(a1 + 40) userInfo];
    v7 = [v6 objectForKey:*MEMORY[0x277CCEBF0]];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    v9 = v8;

    if (v5)
    {
      v10 = v9 == 0;
    }

    else
    {
      v10 = 1;
    }

    if (!v10)
    {
      v11 = [*(a1 + 32) home];
      v12 = [v11 protectionMode];
      v13 = objc_autoreleasePoolPush();
      v14 = *(a1 + 32);
      v15 = HMFGetOSLogHandle();
      v16 = os_log_type_enabled(v15, OS_LOG_TYPE_INFO);
      if (v12 == 1)
      {
        if (v16)
        {
          v17 = HMFGetLogIdentifier();
          [v9 integerValue];
          v18 = HMAccessoryNetworkProtectionModeAsString();
          *buf = 138543874;
          v34 = v17;
          v35 = 2112;
          v36 = v18;
          v37 = 2112;
          v38 = v5;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Updating accessory network configurations because protection mode changed to %@ for network protection group %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v13);
        v19 = [v11 networkProtectionGroupRegistry];
        v20 = [v19 accessoriesForGroupWithUUID:v5];

        v31 = 0u;
        v32 = 0u;
        v29 = 0u;
        v30 = 0u;
        v21 = v20;
        v22 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
        if (v22)
        {
          v23 = v22;
          v24 = *v30;
          do
          {
            v25 = 0;
            do
            {
              if (*v30 != v24)
              {
                objc_enumerationMutation(v21);
              }

              [*(a1 + 32) _updateOrCreateClientConfigurationForAccessory:*(*(&v29 + 1) + 8 * v25++) preferReconcile:0 clientReconfigurationAllowed:{1, v29}];
            }

            while (v23 != v25);
            v23 = [v21 countByEnumeratingWithState:&v29 objects:v41 count:16];
          }

          while (v23);
        }
      }

      else
      {
        if (v16)
        {
          v26 = HMFGetLogIdentifier();
          [v9 integerValue];
          v27 = HMAccessoryNetworkProtectionModeAsString();
          v28 = HMNetworkProtectionModeAsString();
          *buf = 138544130;
          v34 = v26;
          v35 = 2112;
          v36 = v27;
          v37 = 2112;
          v38 = v5;
          v39 = 2112;
          v40 = v28;
          _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Ignoring protection mode change to %@ for network protection group %@ because home network protection is %@", buf, 0x2Au);
        }

        objc_autoreleasePoolPop(v13);
      }
    }
  }
}

- (void)handleNetworkProtectionGroupDeactivated:(id)deactivated
{
  deactivatedCopy = deactivated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __73__HMDNetworkRouterClientManager_handleNetworkProtectionGroupDeactivated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = deactivatedCopy;
  selfCopy = self;
  v6 = deactivatedCopy;
  dispatch_async(workQueue, v7);
}

void __73__HMDNetworkRouterClientManager_handleNetworkProtectionGroupDeactivated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277CCEBE0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) _unregisterForNetworkProtectionChangesToGroup:v6];
    v5 = v6;
  }
}

- (void)handleNetworkProtectionGroupActivated:(id)activated
{
  activatedCopy = activated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDNetworkRouterClientManager_handleNetworkProtectionGroupActivated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = activatedCopy;
  selfCopy = self;
  v6 = activatedCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDNetworkRouterClientManager_handleNetworkProtectionGroupActivated___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) userInfo];
  v3 = [v2 objectForKey:*MEMORY[0x277CCEBE0]];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v6 = v4;

  v5 = v6;
  if (v6)
  {
    [*(a1 + 40) _registerForNetworkProtectionChangesToGroup:v6];
    v5 = v6;
  }
}

- (void)handleAccessoryConfigured:(id)configured
{
  configuredCopy = configured;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __59__HMDNetworkRouterClientManager_handleAccessoryConfigured___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = configuredCopy;
  v6 = configuredCopy;
  dispatch_async(workQueue, v7);
}

void __59__HMDNetworkRouterClientManager_handleAccessoryConfigured___block_invoke(uint64_t a1)
{
  v17 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4)
    {
      v5 = [*(a1 + 32) accessoriesInReconfiguration];
      v6 = [v4 uuid];
      v7 = [v5 containsObject:v6];

      if (v7)
      {
        v8 = objc_autoreleasePoolPush();
        v9 = *(a1 + 32);
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          v11 = HMFGetLogIdentifier();
          v12 = logDescriptionForAccessory(v4);
          v13 = 138543618;
          v14 = v11;
          v15 = 2112;
          v16 = v12;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_DEBUG, "%{public}@Not reconciling client configuration for accessory %@ -- currently being reconfigured", &v13, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        [*(a1 + 32) _reconcileClientConfigurationForReachableAccessory:v4 clientReconfigurationAllowed:0];
      }
    }
  }
}

- (void)handleAccessoryFirmwareVersionUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__HMDNetworkRouterClientManager_handleAccessoryFirmwareVersionUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __71__HMDNetworkRouterClientManager_handleAccessoryFirmwareVersionUpdated___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v4 = v3;

    if (v4 && [v4 supportsNetworkProtection])
    {
      v5 = objc_autoreleasePoolPush();
      v6 = *(a1 + 32);
      v7 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = HMFGetLogIdentifier();
        v9 = logDescriptionForAccessory(v4);
        v10 = 138543618;
        v11 = v8;
        v12 = 2112;
        v13 = v9;
        _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Handling firmware version update for accessory %@", &v10, 0x16u);
      }

      objc_autoreleasePoolPop(v5);
      [*(a1 + 32) _updateOrCreateClientConfigurationForAccessory:v4 preferReconcile:0 clientReconfigurationAllowed:1];
    }
  }
}

- (void)handleAccessoryRemoved:(id)removed
{
  removedCopy = removed;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = removedCopy;
  v6 = removedCopy;
  dispatch_async(workQueue, v7);
}

void __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke(uint64_t a1)
{
  v37 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:@"HMDAccessoryNotificationKey"];

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    v5 = v4;

    v6 = [*(a1 + 32) networkRouterAccessory];
    v7 = HMFEqualObjects();

    if (v7)
    {
      v8 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = HMFGetLogIdentifier();
        v12 = logDescriptionForAccessory(v5);
        *buf = 138543618;
        v32 = v11;
        v33 = 2112;
        v34 = v12;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Stopping client manager due to removal of currently active network router accessory %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      [*(a1 + 32) _stop];
    }

    else
    {
      v13 = [v5 networkClientIdentifier];

      v14 = objc_autoreleasePoolPush();
      v15 = *(a1 + 32);
      v16 = HMFGetOSLogHandle();
      v17 = os_log_type_enabled(v16, OS_LOG_TYPE_INFO);
      if (v13)
      {
        if (v17)
        {
          v18 = HMFGetLogIdentifier();
          v19 = [v5 networkClientIdentifier];
          v20 = logDescriptionForAccessory(v5);
          *buf = 138543874;
          v32 = v18;
          v33 = 2112;
          v34 = v19;
          v35 = 2112;
          v36 = v20;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Removing client configuration with identifier %@ from router for removed accessory %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v14);
        v21 = [*(a1 + 32) routerController];
        v22 = [v5 networkClientIdentifier];
        v25 = MEMORY[0x277D85DD0];
        v26 = 3221225472;
        v27 = __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke_31;
        v28 = &unk_2797358C8;
        v29 = *(a1 + 32);
        v30 = v5;
        [v21 removeClientConfigurationWithClientIdentifier:v22 completion:&v25];
      }

      else
      {
        if (v17)
        {
          v23 = HMFGetLogIdentifier();
          v24 = logDescriptionForAccessory(v5);
          *buf = 138543618;
          v32 = v23;
          v33 = 2112;
          v34 = v24;
          _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No saved client identifier on removed accessory %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v14);
      }

      [*(a1 + 32) _deregisterForChangesToManagedAccessory:{v5, v25, v26, v27, v28, v29}];
    }
  }
}

void __56__HMDNetworkRouterClientManager_handleAccessoryRemoved___block_invoke_31(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v7 = HMFGetLogIdentifier();
    v8 = [*(a1 + 40) networkClientIdentifier];
    v9 = 138543874;
    v10 = v7;
    v11 = 2112;
    v12 = v8;
    v13 = 2112;
    v14 = v3;
    _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Remove client configuration with identifier %@ completed with error %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
}

- (void)handleAccessoryAdded:(id)added
{
  addedCopy = added;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDNetworkRouterClientManager_handleAccessoryAdded___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = addedCopy;
  v6 = addedCopy;
  dispatch_async(workQueue, v7);
}

void __54__HMDNetworkRouterClientManager_handleAccessoryAdded___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) userInfo];
    v3 = [v2 objectForKey:@"HMDNotificationAddedAccessoryKey"];

    if ([v3 supportsNetworkProtection])
    {
      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = HMFGetLogIdentifier();
        v8 = logDescriptionForAccessory(v3);
        v14 = 138543618;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        v9 = "%{public}@Will manage new accessory %@ because it supports network protection";
LABEL_8:
        _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, v9, &v14, 0x16u);
      }
    }

    else
    {
      v10 = [v3 wiFiUniquePreSharedKey];

      v4 = objc_autoreleasePoolPush();
      v5 = *(a1 + 32);
      v6 = HMFGetOSLogHandle();
      v11 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
      if (!v10)
      {
        if (v11)
        {
          v12 = HMFGetLogIdentifier();
          v13 = logDescriptionForAccessory(v3);
          v14 = 138543618;
          v15 = v12;
          v16 = 2112;
          v17 = v13;
          _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Will not manage new accessory %@", &v14, 0x16u);
        }

        objc_autoreleasePoolPop(v4);
        goto LABEL_10;
      }

      if (v11)
      {
        v7 = HMFGetLogIdentifier();
        v8 = logDescriptionForAccessory(v3);
        v14 = 138543618;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        v9 = "%{public}@Will manage new accessory %@ because it has a per-accessory credential";
        goto LABEL_8;
      }
    }

    objc_autoreleasePoolPop(v4);
    [*(a1 + 32) _startManagingAccessory:v3 initialHomeSetup:0];
LABEL_10:
  }
}

- (void)_handleRouterAccessoryReachable:(id)reachable
{
  v28 = *MEMORY[0x277D85DE8];
  reachableCopy = reachable;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDNetworkRouterClientManager *)self home];
  isActiveNetworkRouterInitialSetupNeeded = [home isActiveNetworkRouterInitialSetupNeeded];
  managedNetworkEnabled = [(HMDNetworkRouterClientManager *)self managedNetworkEnabled];
  v9 = objc_autoreleasePoolPush();
  selfCopy = self;
  v11 = HMFGetOSLogHandle();
  v12 = managedNetworkEnabled & (isActiveNetworkRouterInitialSetupNeeded ^ 1);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v13 = HMFGetLogIdentifier();
    v14 = HMFBooleanToString();
    v15 = logDescriptionForAccessory(reachableCopy);
    *buf = 138543874;
    v23 = v13;
    v24 = 2112;
    v25 = v14;
    v26 = 2112;
    v27 = v15;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Managed network enabled assume to be %@ for network router accessory %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v9);
  if (v12)
  {
    [(HMDNetworkRouterClientManager *)selfCopy _updateClientConfigurationForAllAccessoriesWithClientReconfigurationAllowed:0];
  }

  else
  {
    objc_initWeak(buf, selfCopy);
    routerController = [(HMDNetworkRouterClientManager *)selfCopy routerController];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke;
    v17[3] = &unk_27972DB78;
    objc_copyWeak(&v20, buf);
    v18 = reachableCopy;
    v21 = isActiveNetworkRouterInitialSetupNeeded;
    v19 = home;
    [routerController writeManagedNetworkEnable:1 completion:v17];

    objc_destroyWeak(&v20);
    objc_destroyWeak(buf);
  }
}

void __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = WeakRetained;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = logDescriptionForAccessory(*(a1 + 32));
      *buf = 138543874;
      v15 = v8;
      v16 = 2112;
      v17 = v9;
      v18 = 2112;
      v19 = v3;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Managed network enable for network router accessory %@ completed with error: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v5);
    v10 = [v6 workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke_30;
    block[3] = &unk_279734938;
    block[4] = v6;
    v13 = *(a1 + 56);
    v12 = *(a1 + 40);
    dispatch_async(v10, block);
  }
}

void __65__HMDNetworkRouterClientManager__handleRouterAccessoryReachable___block_invoke_30(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setManagedNetworkEnabled:1];
  if (*(a1 + 48) == 1)
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 32);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
    {
      v5 = HMFGetLogIdentifier();
      *buf = 138543362;
      v19 = v5;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Initial Home-level protection setup is required", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 40) setActiveNetworkRouterInitialSetupNeeded:0];
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = [*(a1 + 32) home];
  v7 = [v6 accessories];

  v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v13 + 1) + 8 * i);
        if (shouldManageAccessory(v12))
        {
          [*(a1 + 32) _startManagingAccessory:v12 initialHomeSetup:*(a1 + 48)];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }
}

- (void)handleRouterAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__HMDNetworkRouterClientManager_handleRouterAccessoryReachable___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = reachableCopy;
  v6 = reachableCopy;
  dispatch_async(workQueue, v7);
}

void __64__HMDNetworkRouterClientManager_handleRouterAccessoryReachable___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) object];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }

    v5 = v3;

    v4 = v5;
    if (v5)
    {
      [*(a1 + 32) _handleRouterAccessoryReachable:v5];
      v4 = v5;
    }
  }
}

- (void)_stop
{
  v19 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterClientManager *)self started])
  {
    networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
    v5 = objc_autoreleasePoolPush();
    selfCopy = self;
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      v9 = logDescriptionForAccessory(networkRouterAccessory);
      v15 = 138543618;
      v16 = v8;
      v17 = 2112;
      v18 = v9;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Stopping network router client manager - active network router accessory %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy notificationCenter];
    [notificationCenter removeObserver:selfCopy];

    [(HMDNetworkRouterClientManager *)selfCopy setStarted:0];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_DEBUG, "%{public}@Client manager is already stopped", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)_start
{
  v47 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  [(HMDNetworkRouterClientManager *)self setStartPending:0];
  if ([(HMDNetworkRouterClientManager *)self started])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v44 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Client manager is already started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      v13 = logDescriptionForAccessory(networkRouterAccessory);
      *buf = 138543618;
      v44 = v12;
      v45 = 2112;
      v46 = v13;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Starting network router client manager with network router accessory %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    [(HMDNetworkRouterClientManager *)selfCopy2 __registerForNetworkRouterAccessoryReachable:networkRouterAccessory];
    home = [(HMDNetworkRouterClientManager *)selfCopy2 home];
    if (home)
    {
      notificationCenter = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter addObserver:selfCopy2 selector:sel_handleAccessoryAdded_ name:@"HMDNotificationHomeAddedAccessory" object:home];

      notificationCenter2 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter2 addObserver:selfCopy2 selector:sel_handleAccessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:home];

      notificationCenter3 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter3 addObserver:selfCopy2 selector:sel_handleHomeNetworkProtectionChanged_ name:@"HMDHomeNetworkProtectionUpdatedNotificationKey" object:home];

      notificationCenter4 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      [notificationCenter4 addObserver:selfCopy2 selector:sel_handleFirewallRulesUpdated_ name:@"HMDNotificationNetworkRouterFirewallRulesUpdated" object:0];

      notificationCenter5 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      networkProtectionGroupRegistry = [home networkProtectionGroupRegistry];
      [notificationCenter5 addObserver:selfCopy2 selector:sel_handleNetworkProtectionGroupActivated_ name:@"HMDAccessoryNetworkProtectionGroupProtectionModeActivated" object:networkProtectionGroupRegistry];

      notificationCenter6 = [(HMDNetworkRouterClientManager *)selfCopy2 notificationCenter];
      networkProtectionGroupRegistry2 = [home networkProtectionGroupRegistry];
      [notificationCenter6 addObserver:selfCopy2 selector:sel_handleNetworkProtectionGroupDeactivated_ name:@"HMDAccessoryNetworkProtectionGroupProtectionModeDeactivated" object:networkProtectionGroupRegistry2];

      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      networkProtectionGroupRegistry3 = [home networkProtectionGroupRegistry];
      activeGroups = [networkProtectionGroupRegistry3 activeGroups];

      v25 = [activeGroups countByEnumeratingWithState:&v38 objects:v42 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v39;
        do
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v39 != v27)
            {
              objc_enumerationMutation(activeGroups);
            }

            [(HMDNetworkRouterClientManager *)selfCopy2 _registerForNetworkProtectionChangesToGroup:*(*(&v38 + 1) + 8 * i)];
          }

          v26 = [activeGroups countByEnumeratingWithState:&v38 objects:v42 count:16];
        }

        while (v26);
      }

      if ([networkRouterAccessory isReachable])
      {
        [(HMDNetworkRouterClientManager *)selfCopy2 _handleRouterAccessoryReachable:networkRouterAccessory];
      }

      else
      {
        v33 = objc_autoreleasePoolPush();
        v34 = selfCopy2;
        v35 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
        {
          v36 = HMFGetLogIdentifier();
          shortDescription = [networkRouterAccessory shortDescription];
          *buf = 138543618;
          v44 = v36;
          v45 = 2112;
          v46 = shortDescription;
          _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Network router: %@ is not reachable, waiting until it is", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v33);
      }

      [(HMDNetworkRouterClientManager *)selfCopy2 setStarted:1];
    }

    else
    {
      v29 = objc_autoreleasePoolPush();
      v30 = selfCopy2;
      v31 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
      {
        v32 = HMFGetLogIdentifier();
        *buf = 138543362;
        v44 = v32;
        _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@No home to register for notifications on", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v29);
    }
  }
}

- (void)_resetStaleClientIdentifiersBeforeStart
{
  v24 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  if ([(HMDNetworkRouterClientManager *)self started])
  {
    v4 = objc_autoreleasePoolPush();
    selfCopy = self;
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v7 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v7;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_DEBUG, "%{public}@Client manager is already started", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    staleClientIdentifiersResetInProgress = [(HMDNetworkRouterClientManager *)self staleClientIdentifiersResetInProgress];
    v9 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v11 = HMFGetOSLogHandle();
    v12 = v11;
    if (staleClientIdentifiersResetInProgress)
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v13;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Stale network client identifiers reset is already in progress", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v9);
    }

    else
    {
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        home = [(HMDNetworkRouterClientManager *)selfCopy2 home];
        name = [home name];
        *buf = 138543618;
        v21 = v14;
        v22 = 2112;
        v23 = name;
        _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_INFO, "%{public}@Resetting stale network client identifiers for accessories in the home %@ before starting", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      [(HMDNetworkRouterClientManager *)selfCopy2 setStaleClientIdentifiersResetNeeded:0];
      [(HMDNetworkRouterClientManager *)selfCopy2 setStaleClientIdentifiersResetInProgress:1];
      [(HMDNetworkRouterClientManager *)selfCopy2 setStartPending:1];
      objc_initWeak(buf, selfCopy2);
      _transactionBlockForAccessoriesWithStaleClientIdentifier = [(HMDNetworkRouterClientManager *)selfCopy2 _transactionBlockForAccessoriesWithStaleClientIdentifier];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke;
      v18[3] = &unk_279734708;
      objc_copyWeak(&v19, buf);
      [_transactionBlockForAccessoriesWithStaleClientIdentifier run:v18];
      objc_destroyWeak(&v19);

      objc_destroyWeak(buf);
    }
  }
}

void __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke_2;
    block[3] = &unk_279735D00;
    block[4] = v2;
    dispatch_async(v3, block);
  }
}

void *__72__HMDNetworkRouterClientManager__resetStaleClientIdentifiersBeforeStart__block_invoke_2(uint64_t a1)
{
  v21 = *MEMORY[0x277D85DE8];
  [*(a1 + 32) setStaleClientIdentifiersResetInProgress:0];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) home];
    v7 = [v6 name];
    [*(a1 + 32) staleClientIdentifiersResetNeeded];
    v8 = HMFBooleanToString();
    [*(a1 + 32) startPending];
    v9 = HMFBooleanToString();
    v13 = 138544130;
    v14 = v5;
    v15 = 2112;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    v19 = 2112;
    v20 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Resetting stale network client identifiers completed for home %@, staleClientIdentifiersResetNeeded = %@, startPending = %@", &v13, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  v10 = [*(a1 + 32) staleClientIdentifiersResetNeeded];
  v11 = *(a1 + 32);
  if (v10)
  {
    return [v11 _resetStaleClientIdentifiersBeforeStart];
  }

  result = [v11 startPending];
  if (result)
  {
    return [*(a1 + 32) _start];
  }

  return result;
}

- (void)_evaluateManagement
{
  v25 = *MEMORY[0x277D85DE8];
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  home = [(HMDNetworkRouterClientManager *)self home];
  [home isResidentSupported];
  isCurrentDevicePrimaryResident = [home isCurrentDevicePrimaryResident];
  primaryNetworkRouterManagingDeviceUUID = [home primaryNetworkRouterManagingDeviceUUID];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = HMFBooleanToString();
    v12 = HMFBooleanToString();
    [(HMDNetworkRouterClientManager *)selfCopy started];
    v13 = HMFBooleanToString();
    v15 = 138544386;
    v16 = v10;
    v17 = 2112;
    v18 = v11;
    v19 = 2112;
    v20 = v12;
    v21 = 2112;
    v22 = v13;
    v23 = 2112;
    v24 = primaryNetworkRouterManagingDeviceUUID;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Evaluating network router management responsibility. Resident Available: %@, Current Device Primary Resident: %@, Current Device Management Active: %@, Primary Managing Device: %@", &v15, 0x34u);
  }

  objc_autoreleasePoolPop(v7);
  if (primaryNetworkRouterManagingDeviceUUID)
  {
    v14 = 0;
  }

  else
  {
    v14 = isCurrentDevicePrimaryResident;
  }

  if (v14 == 1)
  {
    [(HMDNetworkRouterClientManager *)selfCopy _resetStaleClientIdentifiersBeforeStart];
  }

  else
  {
    [(HMDNetworkRouterClientManager *)selfCopy setStartPending:0];
    [(HMDNetworkRouterClientManager *)selfCopy _stop];
  }
}

- (void)__deregisterForNetworkRouterAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter removeObserver:self name:@"HMDAccessoryIsReachableNotification" object:reachableCopy];
}

- (void)__registerForNetworkRouterAccessoryReachable:(id)reachable
{
  reachableCopy = reachable;
  notificationCenter = [(HMDNetworkRouterClientManager *)self notificationCenter];
  [notificationCenter addObserver:self selector:sel_handleRouterAccessoryReachable_ name:@"HMDAccessoryIsReachableNotification" object:reachableCopy];
}

- (HMDHome)home
{
  networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
  home = [networkRouterAccessory home];

  return home;
}

- (void)setNetworkRouterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  os_unfair_lock_lock_with_options();
  objc_storeWeak(&self->_networkRouterAccessory, accessoryCopy);

  os_unfair_lock_unlock(&self->_lock);
}

- (void)setStarted:(BOOL)started
{
  os_unfair_lock_lock_with_options();
  self->_started = started;

  os_unfair_lock_unlock(&self->_lock);
}

- (id)watchedAccessoryIdentifiersForFirewallRuleManager:(id)manager
{
  v22 = *MEMORY[0x277D85DE8];
  managerCopy = manager;
  firewallRuleManager = [(HMDNetworkRouterClientManager *)self firewallRuleManager];

  if (firewallRuleManager == managerCopy)
  {
    v7 = [MEMORY[0x277CBEB58] set];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    home = [(HMDNetworkRouterClientManager *)self home];
    accessories = [home accessories];

    v10 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v18;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v18 != v12)
          {
            objc_enumerationMutation(accessories);
          }

          v14 = *(*(&v17 + 1) + 8 * i);
          if ([v14 supportsNetworkProtection])
          {
            metadataIdentifier = [v14 metadataIdentifier];
            if (metadataIdentifier)
            {
              [v7 addObject:metadataIdentifier];
            }
          }
        }

        v11 = [accessories countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v11);
    }

    v6 = objc_msgSend_copy(v7);
  }

  else
  {
    v6 = [MEMORY[0x277CBEB98] set];
  }

  return v6;
}

- (HMDNetworkRouterController)routerController
{
  networkRouterAccessory = [(HMDNetworkRouterClientManager *)self networkRouterAccessory];
  networkRouterController = [networkRouterAccessory networkRouterController];

  return networkRouterController;
}

- (void)migrateAccessory:(id)accessory toCredentialType:(int64_t)type rotate:(BOOL)rotate completion:(id)completion
{
  accessoryCopy = accessory;
  completionCopy = completion;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke;
  block[3] = &unk_27972DB50;
  block[4] = self;
  v16 = accessoryCopy;
  v17 = completionCopy;
  typeCopy = type;
  rotateCopy = rotate;
  v13 = accessoryCopy;
  v14 = completionCopy;
  dispatch_async(workQueue, block);
}

void __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) started])
  {
    v2 = [*(a1 + 40) networkClientIdentifier];
    if (v2)
    {
      ProtectionModeForAccessory = getProtectionModeForAccessory(*(a1 + 40));
      v4 = *(a1 + 32);
      v5 = *(a1 + 40);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_11;
      v21[3] = &unk_27972DB28;
      v6 = *(a1 + 48);
      v7 = *(a1 + 32);
      v24 = v6;
      v21[4] = v7;
      v22 = v2;
      v8 = *(a1 + 40);
      v9 = *(a1 + 56);
      v23 = v8;
      v25 = v9;
      v26 = *(a1 + 64);
      [v4 _getNetworkConfigurationForAccessory:v5 targetProtectionMode:ProtectionModeForAccessory completion:v21];

      v10 = v24;
    }

    else
    {
      v16 = objc_autoreleasePoolPush();
      v17 = *(a1 + 32);
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        v19 = HMFGetLogIdentifier();
        *buf = 138543362;
        v28 = v19;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Migration not possible, accessory has no existing client profile", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v16);
      v20 = *(a1 + 48);
      v10 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
      (*(v20 + 16))(v20, v10);
    }
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    v12 = *(a1 + 32);
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Migration not possible, client manager is not running", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    v15 = *(a1 + 48);
    v2 = [MEMORY[0x277CCA9B8] hmErrorWithCode:52];
    (*(v15 + 16))(v15, v2);
  }
}

void __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_11(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v6 = [*(a1 + 32) workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_2;
    block[3] = &unk_27972DB00;
    v14 = v5;
    *&v7 = *(a1 + 40);
    *(&v7 + 1) = *(a1 + 32);
    v12 = v7;
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    v17 = *(a1 + 64);
    v18 = *(a1 + 72);
    v10 = v9;
    *&v11 = v8;
    *(&v11 + 1) = v10;
    v15 = v12;
    v16 = v11;
    dispatch_async(v6, block);
  }
}

uint64_t __85__HMDNetworkRouterClientManager_migrateAccessory_toCredentialType_rotate_completion___block_invoke_2(uint64_t a1)
{
  v2 = [objc_alloc(MEMORY[0x277CFEC98]) initWithValue:*(a1 + 40)];
  [*(a1 + 32) setClientIdentifier:v2];

  return [*(a1 + 48) _migrateAccessory:*(a1 + 56) withConfiguration:*(a1 + 32) clientStatus:0 fromCredentialType:objc_msgSend(*(a1 + 56) toCredentialType:"wiFiCredentialType") rotate:*(a1 + 72) completion:{*(a1 + 80), *(a1 + 64)}];
}

- (void)replaceActiveNetworkRouterAccessory:(id)accessory
{
  accessoryCopy = accessory;
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __69__HMDNetworkRouterClientManager_replaceActiveNetworkRouterAccessory___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = accessoryCopy;
  v6 = accessoryCopy;
  dispatch_async(workQueue, v7);
}

void __69__HMDNetworkRouterClientManager_replaceActiveNetworkRouterAccessory___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) networkRouterAccessory];
  if (HMFEqualObjects())
  {
    [*(a1 + 32) _evaluateManagement];
  }

  else
  {
    if (*(a1 + 40))
    {
      [*(a1 + 32) _stop];
      [*(a1 + 32) setNetworkRouterAccessory:*(a1 + 40)];
      [*(a1 + 32) setManagedNetworkEnabled:0];
      if ([*(a1 + 32) staleClientIdentifiersResetInProgress])
      {
        [*(a1 + 32) setStaleClientIdentifiersResetNeeded:1];
      }

      [*(a1 + 32) _evaluateManagement];
      v3 = objc_autoreleasePoolPush();
      v4 = *(a1 + 32);
      v5 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
      {
        v6 = HMFGetLogIdentifier();
        v7 = logDescriptionForAccessory(*(a1 + 40));
        v8 = logDescriptionForAccessory(v2);
        v12 = 138543874;
        v13 = v6;
        v14 = 2112;
        v15 = v7;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Activated network router accessory %@ - previous active network router accessory was %@", &v12, 0x20u);
      }
    }

    else
    {
      v3 = objc_autoreleasePoolPush();
      v9 = *(a1 + 32);
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = 138543362;
        v13 = v11;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@Attempt to activate a nil network router accessory", &v12, 0xCu);
      }
    }

    objc_autoreleasePoolPop(v3);
  }
}

- (void)stop
{
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__HMDNetworkRouterClientManager_stop__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)evaluateManagement
{
  workQueue = [(HMDNetworkRouterClientManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __51__HMDNetworkRouterClientManager_evaluateManagement__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (BOOL)started
{
  os_unfair_lock_lock_with_options();
  started = self->_started;
  os_unfair_lock_unlock(&self->_lock);
  return started;
}

- (HMDHAPAccessory)networkRouterAccessory
{
  os_unfair_lock_lock_with_options();
  WeakRetained = objc_loadWeakRetained(&self->_networkRouterAccessory);
  os_unfair_lock_unlock(&self->_lock);

  return WeakRetained;
}

- (HMDNetworkRouterClientManager)initWithNetworkRouterAccessory:(id)accessory workQueue:(id)queue firewallRuleManager:(id)manager notificationCenter:(id)center
{
  v32 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  queueCopy = queue;
  managerCopy = manager;
  centerCopy = center;
  v27.receiver = self;
  v27.super_class = HMDNetworkRouterClientManager;
  v14 = [(HMDNetworkRouterClientManager *)&v27 init];
  if (v14)
  {
    networkRouterController = [accessoryCopy networkRouterController];

    if (!networkRouterController)
    {
      v22 = 0;
      goto LABEL_8;
    }

    context = objc_autoreleasePoolPush();
    v16 = v14;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v18 = v24 = managerCopy;
      logDescriptionForAccessory(accessoryCopy);
      v19 = v25 = queueCopy;
      *buf = 138543618;
      v29 = v18;
      v30 = 2112;
      v31 = v19;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_DEBUG, "%{public}@Initializing with network router accessory %@", buf, 0x16u);

      queueCopy = v25;
      managerCopy = v24;
    }

    objc_autoreleasePoolPop(context);
    objc_storeWeak(&v16->_networkRouterAccessory, accessoryCopy);
    objc_storeStrong(&v16->_workQueue, queue);
    objc_storeStrong(&v16->_notificationCenter, center);
    objc_storeStrong(&v16->_firewallRuleManager, manager);
    *&v16->_started = 0x10000;
    v16->_startPending = 0;
    v20 = [MEMORY[0x277CBEB58] set];
    accessoriesInReconfiguration = v16->_accessoriesInReconfiguration;
    v16->_accessoriesInReconfiguration = v20;
  }

  v22 = v14;
LABEL_8:

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t79 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t79, &__block_literal_global_78);
  }

  v3 = logCategory__hmf_once_v80;

  return v3;
}

uint64_t __44__HMDNetworkRouterClientManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v80;
  logCategory__hmf_once_v80 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end