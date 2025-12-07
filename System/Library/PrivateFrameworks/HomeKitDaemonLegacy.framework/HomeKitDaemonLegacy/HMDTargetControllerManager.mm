@interface HMDTargetControllerManager
+ (id)logCategory;
- (HMDHAPAccessory)controller;
- (HMDTargetControllerManager)init;
- (HMDTargetControllerManager)initWithTargetControllerAccessory:(id)accessory targets:(id)targets;
- (NSArray)buttonConfiguration;
- (NSArray)targetUUIDs;
- (NSMutableSet)configuredTargets;
- (id)__refreshedConfiguration:(id)configuration;
- (id)_dataForAddTargets:(id)targets outError:(id *)error;
- (id)_dataForListTargetsWithOutError:(id *)error;
- (id)_dataForRemoveTargets:(id)targets outError:(id *)error;
- (id)_dataForResetTargetsWithOutError:(id *)error;
- (id)_dataForUpdateTarget:(id)target name:(id)name buttonConfiguration:(id)configuration outError:(id *)error;
- (id)targetConfigurationMatchingAccessory:(id)accessory;
- (id)targetConfigurationMatchingIdentifier:(id)identifier;
- (int)_parseSupportedTargetConfiguration:(id)configuration;
- (unint64_t)ticksPerSecond;
- (void)__accessoryConnected:(id)connected;
- (void)__accessoryDisconnected:(id)disconnected;
- (void)__accessoryNameUpdated:(id)updated;
- (void)__accessoryRemoved:(id)removed;
- (void)__characteristicEventsReceived:(id)received;
- (void)__handleActiveIdentifierChange:(id)change forCharacteristic:(id)characteristic;
- (void)_addTargets:(id)targets;
- (void)_auditTargets:(id)targets;
- (void)_configureTargetAccessories:(id)accessories reason:(id)reason targetAccessories:(id)targetAccessories responseHandler:(id)handler;
- (void)_handleActiveIdentifierReadResponses:(id)responses;
- (void)_handleConfigureTargets:(id)targets responseHandler:(id)handler;
- (void)_listTargetsWithCompletionHandler:(id)handler;
- (void)_notifyConfigurationRefresh:(id)refresh;
- (void)_postSelectionChangeNotification:(BOOL)notification object:(id)object userInfo:(id)info;
- (void)_readSupportedConfigurationWithCompletion:(id)completion;
- (void)_refreshConfigurationWithCompletion:(id)completion;
- (void)_registerForActiveIdentifierNotifications;
- (void)_removeTargets:(id)targets;
- (void)_resetTargets;
- (void)_saveTargetUUIDs;
- (void)_updateName:(id)name buttonConfiguration:(id)configuration target:(id)target;
- (void)acknowledgeTargetControlService:(id)service active:(BOOL)active;
- (void)addConfiguredTarget:(id)target;
- (void)addTargetAccessory:(id)accessory buttonConfiguration:(id)configuration;
- (void)autoConfigureTargets;
- (void)handleConfigureTargets:(id)targets responseHandler:(id)handler;
- (void)invalidate;
- (void)refreshConfigurationWithCompletion:(id)completion;
- (void)registerForActiveIdentifierNotifications;
- (void)removeConfiguredTarget:(id)target;
- (void)removeTargetAccessory:(id)accessory;
- (void)resetConfiguredTargets;
- (void)setButtonConfiguration:(id)configuration;
- (void)setTicksPerSecond:(unint64_t)second;
- (void)updateButtonConfigurationForTarget:(id)target;
- (void)updateTargetAccessory:(id)accessory name:(id)name buttonConfiguration:(id)configuration;
- (void)updateTargets:(id)targets;
@end

@implementation HMDTargetControllerManager

- (HMDHAPAccessory)controller
{
  WeakRetained = objc_loadWeakRetained(&self->_controller);

  return WeakRetained;
}

- (void)_configureTargetAccessories:(id)accessories reason:(id)reason targetAccessories:(id)targetAccessories responseHandler:(id)handler
{
  v27 = *MEMORY[0x277D85DE8];
  accessoriesCopy = accessories;
  reasonCopy = reason;
  targetAccessoriesCopy = targetAccessories;
  handlerCopy = handler;
  controller = [(HMDTargetControllerManager *)self controller];
  v15 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v15)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v19;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Configure target accessories", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    objc_initWeak(buf, selfCopy);
    workQueue = [(HMDTargetControllerManager *)selfCopy workQueue];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __99__HMDTargetControllerManager__configureTargetAccessories_reason_targetAccessories_responseHandler___block_invoke;
    v22[3] = &unk_279734508;
    objc_copyWeak(&v24, buf);
    v23 = handlerCopy;
    [controller writeValue:accessoriesCopy toCharacteristic:v15 queue:workQueue source:1200 completion:v22];

    objc_destroyWeak(&v24);
    objc_destroyWeak(buf);
  }

  else if (handlerCopy)
  {
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    (*(handlerCopy + 2))(handlerCopy, v21, 0);
  }
}

void __99__HMDTargetControllerManager__configureTargetAccessories_reason_targetAccessories_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = v7;
  }

  else
  {
    v5 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];

    v4 = v5;
  }

  v8 = v4;
  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v8, 0);
  }
}

- (void)_handleConfigureTargets:(id)targets responseHandler:(id)handler
{
  v104[1] = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  handlerCopy = handler;
  controller = [(HMDTargetControllerManager *)self controller];
  home = [controller home];
  v10 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v10)
  {
    v11 = *MEMORY[0x277CCECD8];
    v12 = [targetsCopy objectForKey:*MEMORY[0x277CCECD8]];

    v83 = home;
    if (v12)
    {
      v13 = v11;
      v91 = 0;
      v14 = [(HMDTargetControllerManager *)self _dataForResetTargetsWithOutError:&v91];
      v15 = v91;
      goto LABEL_8;
    }

    v17 = *MEMORY[0x277CCEB40];
    v18 = [targetsCopy objectForKey:*MEMORY[0x277CCEB40]];

    if (v18)
    {
      v13 = v17;
      v90 = 0;
      v14 = [(HMDTargetControllerManager *)self _dataForListTargetsWithOutError:&v90];
      v15 = v90;
LABEL_8:
      v19 = v15;
      v20 = 0;
      if (v19)
      {
LABEL_9:
        if (handlerCopy)
        {
          handlerCopy[2](handlerCopy, v19, 0);
        }

        v21 = v19;
        goto LABEL_47;
      }

LABEL_44:
      if (v14)
      {
        [(HMDTargetControllerManager *)self _configureTargetAccessories:v14 reason:v13 targetAccessories:v20 responseHandler:handlerCopy];
      }

      v21 = 0;
      goto LABEL_47;
    }

    v22 = *MEMORY[0x277CCE7C0];
    v23 = [targetsCopy objectForKey:*MEMORY[0x277CCE7C0]];

    if (v23)
    {
      v13 = v22;
      v24 = [targetsCopy hmf_UUIDForKey:v13];
      v14 = [home accessoryWithUUID:v24];
      if (!v14)
      {
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
        v80 = v24;
        v20 = 0;
        v33 = 0;
        goto LABEL_29;
      }

      if (home)
      {
        [home uuid];
        v26 = v25 = v14;
        v27 = identifierForTargetWithUUID(v24, v26);

        v77 = v25;
        category = [v25 category];
        v72 = mapTargetCategory(category);

        v68 = [HMDTargetConfiguration alloc];
        v29 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v27];
        [v25 name];
        v30 = v80 = v24;
        buttonConfiguration = [(HMDTargetControllerManager *)self buttonConfiguration];
        v73 = [(HMDTargetConfiguration *)v68 initWithIdentifier:v29 name:v30 category:v72 buttonConfiguration:buttonConfiguration];

        v104[0] = v25;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:1];
        v103 = v73;
        v32 = [MEMORY[0x277CBEA60] arrayWithObjects:&v103 count:1];
        v89 = 0;
        v14 = [(HMDTargetControllerManager *)self _dataForAddTargets:v32 outError:&v89];
        v19 = v89;

        v33 = v77;
LABEL_29:

        v44 = v80;
        goto LABEL_43;
      }

      v45 = objc_autoreleasePoolPush();
      selfCopy = self;
      v47 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        v82 = HMFGetLogIdentifier();
        obja = [controller name];
        [controller uuid];
        v75 = v45;
        v49 = v48 = v24;
        uUIDString = [v49 UUIDString];
        *buf = 138543874;
        v96 = v82;
        v97 = 2112;
        v98 = obja;
        v99 = 2112;
        v100 = uUIDString;
        _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_ERROR, "%{public}@Attempting to configure targets for a controller %@/%@ that is not configured with a home", buf, 0x20u);

        v24 = v48;
        v45 = v75;
      }

      objc_autoreleasePoolPop(v45);
      if (handlerCopy)
      {
        v50 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        handlerCopy[2](handlerCopy, v50, 0);
      }

      goto LABEL_54;
    }

    v34 = *MEMORY[0x277CCECA8];
    v35 = [targetsCopy objectForKey:*MEMORY[0x277CCECA8]];

    if (!v35)
    {
      v13 = [targetsCopy objectForKey:v34];

      if (!v13)
      {
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        v14 = 0;
        v20 = 0;
        v21 = 0;
        if (v19)
        {
          goto LABEL_9;
        }

LABEL_47:

        home = v83;
        goto LABEL_48;
      }

      v20 = 0;
      v13 = 0;
LABEL_55:
      v21 = 0;
      v14 = 0;
      goto LABEL_47;
    }

    v13 = v34;
    v36 = [targetsCopy hmf_UUIDForKey:v13];
    v37 = [home accessoryWithUUID:v36];
    v20 = v37;
    if (v37)
    {
      if (!home)
      {
        v54 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v56 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
        {
          v79 = HMFGetLogIdentifier();
          objb = [v20 uuid];
          [objb UUIDString];
          v63 = v71 = selfCopy2;
          name = [controller name];
          [controller uuid];
          v76 = v54;
          v58 = v57 = v20;
          [v58 UUIDString];
          *buf = 138544130;
          v96 = v79;
          v97 = 2112;
          v98 = v63;
          v99 = 2112;
          v100 = name;
          v102 = v101 = 2112;
          v59 = v102;
          _os_log_impl(&dword_2531F8000, v56, OS_LOG_TYPE_ERROR, "%{public}@Attempting to remove target %@ for a controller %@/%@ that is not configured with a home", buf, 0x2Au);

          v20 = v57;
          v54 = v76;

          selfCopy2 = v71;
        }

        objc_autoreleasePoolPop(v54);
        if (handlerCopy)
        {
          v60 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
          handlerCopy[2](handlerCopy, v60, 0);
        }

LABEL_54:
        v20 = 0;
        goto LABEL_55;
      }

      v62 = v37;
      uuid = [home uuid];
      v64 = v36;
      v78 = identifierForTargetWithUUID(v36, uuid);

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      obj = [(HMDTargetControllerManager *)self configuredTargets];
      v74 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
      if (v74)
      {
        v69 = *v86;
        v81 = v13;
LABEL_21:
        v39 = 0;
        while (1)
        {
          if (*v86 != v69)
          {
            objc_enumerationMutation(obj);
          }

          v40 = *(*(&v85 + 1) + 8 * v39);
          identifier = [v40 identifier];
          v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v78];
          v43 = [identifier isEqual:v42];

          if (v43)
          {
            break;
          }

          ++v39;
          v13 = v81;
          if (v74 == v39)
          {
            v74 = [obj countByEnumeratingWithState:&v85 objects:v94 count:16];
            if (v74)
            {
              goto LABEL_21;
            }

            goto LABEL_27;
          }
        }

        v51 = v40;

        v13 = v81;
        if (!v51)
        {
          goto LABEL_40;
        }

        v93 = v62;
        v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v93 count:1];
        v92 = v51;
        v52 = [MEMORY[0x277CBEA60] arrayWithObjects:&v92 count:1];
        v84 = 0;
        [(HMDTargetControllerManager *)self _dataForRemoveTargets:v52 outError:&v84];
        v14 = v53 = v51;
        v19 = v84;

        v13 = v81;
        goto LABEL_42;
      }

LABEL_27:

LABEL_40:
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      v20 = 0;
    }

    else
    {
      v62 = 0;
      v64 = v36;
      v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    }

    v14 = 0;
LABEL_42:

    v44 = v64;
LABEL_43:

    if (v19)
    {
      goto LABEL_9;
    }

    goto LABEL_44;
  }

  if (handlerCopy)
  {
    v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v16, 0);
  }

LABEL_48:
}

- (void)handleConfigureTargets:(id)targets responseHandler:(id)handler
{
  targetsCopy = targets;
  handlerCopy = handler;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDTargetControllerManager_handleConfigureTargets_responseHandler___block_invoke;
  block[3] = &unk_2797355D0;
  block[4] = self;
  v12 = targetsCopy;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = targetsCopy;
  dispatch_async(workQueue, block);
}

- (id)targetConfigurationMatchingAccessory:(id)accessory
{
  v34 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  controller = [(HMDTargetControllerManager *)self controller];
  home = [controller home];
  if (home)
  {
    uuid = [accessoryCopy uuid];
    uuid2 = [home uuid];
    v9 = identifierForTargetWithUUID(uuid, uuid2);

    v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
    v11 = [(HMDTargetControllerManager *)self targetConfigurationMatchingIdentifier:v10];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = HMFGetLogIdentifier();
      name = [accessoryCopy name];
      uuid3 = [accessoryCopy uuid];
      uUIDString = [uuid3 UUIDString];
      [controller name];
      v17 = v23 = v12;
      uuid4 = [controller uuid];
      [uuid4 UUIDString];
      *buf = 138544386;
      v25 = v21;
      v26 = 2112;
      v27 = name;
      v28 = 2112;
      v29 = uUIDString;
      v30 = 2112;
      v31 = v17;
      v33 = v32 = 2112;
      v19 = v33;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@Attempting to lookup target %@/%@ for a controller %@/%@ that is not configured with a home", buf, 0x34u);

      v12 = v23;
    }

    objc_autoreleasePoolPop(v12);
    v11 = 0;
  }

  return v11;
}

- (id)targetConfigurationMatchingIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  [(HMDTargetControllerManager *)self configuredTargets];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v16 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        identifier = [v9 identifier];
        v11 = [identifier isEqual:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)updateTargets:(id)targets
{
  targetsCopy = targets;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __44__HMDTargetControllerManager_updateTargets___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = targetsCopy;
  v6 = targetsCopy;
  dispatch_async(workQueue, v7);
}

void __44__HMDTargetControllerManager_updateTargets___block_invoke(uint64_t a1)
{
  v98 = *MEMORY[0x277D85DE8];
  v68 = [*(a1 + 32) controller];
  v2 = [v68 home];
  v3 = [*(a1 + 32) targetUUIDs];
  v4 = [MEMORY[0x277CBEB58] setWithArray:*(a1 + 40)];
  v69 = v3;
  v5 = v3;
  v6 = a1;
  v7 = [MEMORY[0x277CBEB98] setWithArray:v5];
  [v4 minusSet:v7];

  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = v4;
  v8 = 0x277CCA000uLL;
  v70 = v2;
  v75 = v6;
  v78 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
  if (v78)
  {
    v76 = *v85;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v85 != v76)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v84 + 1) + 8 * i);
        v11 = [objc_alloc(*(v8 + 3448)) initWithUUIDString:v10];
        if (v11)
        {
          v12 = [v2 accessoryWithUUID:v11];
          if (v12)
          {
            v13 = [HMDTargetConfiguration alloc];
            v14 = [*(v6 + 32) buttonConfiguration];
            v15 = [(HMDTargetConfiguration *)v13 initWithAccessory:v12 buttonConfiguration:v14];

            v16 = objc_autoreleasePoolPush();
            v17 = *(v6 + 32);
            v18 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
            {
              HMFGetLogIdentifier();
              v19 = v72 = v16;
              v20 = [v12 name];
              v21 = [v12 uuid];
              v22 = [v21 UUIDString];
              *buf = 138543874;
              v92 = v19;
              v93 = 2112;
              v94 = v20;
              v95 = 2112;
              v96 = v22;
              _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@(Update) Adding target accessory %@/%@", buf, 0x20u);

              v2 = v70;
              v16 = v72;
            }

            objc_autoreleasePoolPop(v16);
            v23 = *(v75 + 32);
            v90 = v15;
            v24 = [MEMORY[0x277CBEA60] arrayWithObjects:&v90 count:1];
            v25 = v23;
            v6 = v75;
            [v25 _addTargets:v24];

            v8 = 0x277CCA000;
          }

          else
          {
            v30 = objc_autoreleasePoolPush();
            v31 = *(v6 + 32);
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              v92 = v33;
              v93 = 2112;
              v94 = v10;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Cannot look up target accessory from UUID %@ to add", buf, 0x16u);

              v8 = 0x277CCA000uLL;
            }

            objc_autoreleasePoolPop(v30);
          }
        }

        else
        {
          v26 = objc_autoreleasePoolPush();
          v27 = *(v6 + 32);
          v28 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
          {
            v29 = HMFGetLogIdentifier();
            *buf = 138543618;
            v92 = v29;
            v93 = 2112;
            v94 = v10;
            _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Incorrectly formatted target UUID %@ to add", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v26);
        }
      }

      v78 = [obj countByEnumeratingWithState:&v84 objects:v97 count:16];
    }

    while (v78);
  }

  v34 = [MEMORY[0x277CBEB58] setWithArray:v69];
  v35 = [MEMORY[0x277CBEB98] setWithArray:*(v6 + 40)];
  [v34 minusSet:v35];

  v36 = v75;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v73 = v34;
  v79 = [v73 countByEnumeratingWithState:&v80 objects:v89 count:16];
  if (v79)
  {
    v77 = *v81;
    while (2)
    {
      for (j = 0; j != v79; ++j)
      {
        if (*v81 != v77)
        {
          objc_enumerationMutation(v73);
        }

        v38 = *(*(&v80 + 1) + 8 * j);
        v39 = [objc_alloc(*(v8 + 3448)) initWithUUIDString:v38];
        if (v39)
        {
          v40 = v39;
          v41 = [v2 accessoryWithUUID:v39];
          if (v41)
          {
            v42 = v41;
            v43 = [*(v36 + 32) targetConfigurationMatchingAccessory:v41];
            v44 = objc_autoreleasePoolPush();
            v45 = v36;
            v46 = v44;
            v47 = *(v45 + 32);
            v48 = HMFGetOSLogHandle();
            v49 = os_log_type_enabled(v48, OS_LOG_TYPE_INFO);
            if (!v43)
            {
              if (v49)
              {
                v64 = HMFGetLogIdentifier();
                v65 = [v42 name];
                v66 = [v42 uuid];
                v67 = [v66 UUIDString];
                *buf = 138543874;
                v92 = v64;
                v93 = 2112;
                v94 = v65;
                v95 = 2112;
                v96 = v67;
                _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Attempt to remove a target %@/%@ that cannot be looked up in target controller manager", buf, 0x20u);

                v2 = v70;
              }

              objc_autoreleasePoolPop(v46);
              goto LABEL_44;
            }

            if (v49)
            {
              HMFGetLogIdentifier();
              v50 = v71 = v46;
              v51 = [v42 name];
              v52 = [v42 uuid];
              v53 = [v52 UUIDString];
              *buf = 138543874;
              v92 = v50;
              v93 = 2112;
              v94 = v51;
              v95 = 2112;
              v96 = v53;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@(Update) Removing target accessory %@/%@", buf, 0x20u);

              v2 = v70;
              v8 = 0x277CCA000;

              v46 = v71;
            }

            objc_autoreleasePoolPop(v46);
            v54 = *(v75 + 32);
            v88 = v43;
            v55 = [MEMORY[0x277CBEA60] arrayWithObjects:&v88 count:1];
            [v54 _removeTargets:v55];

            v36 = v75;
          }

          else
          {
            v60 = objc_autoreleasePoolPush();
            v61 = *(v36 + 32);
            v62 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
            {
              v63 = HMFGetLogIdentifier();
              *buf = 138543618;
              v92 = v63;
              v93 = 2112;
              v94 = v38;
              _os_log_impl(&dword_2531F8000, v62, OS_LOG_TYPE_INFO, "%{public}@Cannot look up target accessory from UUID %@ to remove", buf, 0x16u);

              v36 = v75;
            }

            objc_autoreleasePoolPop(v60);
          }
        }

        else
        {
          v56 = objc_autoreleasePoolPush();
          v57 = *(v36 + 32);
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            *buf = 138543618;
            v92 = v59;
            v93 = 2112;
            v94 = v38;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Incorrectly formatted target UUID %@ to remove", buf, 0x16u);

            v36 = v75;
          }

          objc_autoreleasePoolPop(v56);
        }
      }

      v79 = [v73 countByEnumeratingWithState:&v80 objects:v89 count:16];
      if (v79)
      {
        continue;
      }

      break;
    }
  }

LABEL_44:
}

- (void)autoConfigureTargets
{
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __50__HMDTargetControllerManager_autoConfigureTargets__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __50__HMDTargetControllerManager_autoConfigureTargets__block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D0F8D0] sharedPreferences];
  v3 = [v2 preferenceForKey:@"autoConfigureNewTargetControllers"];
  v4 = [v3 BOOLValue];

  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = *(a1 + 32);
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      v8 = HMFGetLogIdentifier();
      *buf = 138543362;
      v28 = v8;
      _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Preference set to auto-configure existing targets when new target controller is added - configuring them...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
    v9 = [*(a1 + 32) controller];
    v10 = [MEMORY[0x277CBEB18] array];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = [v9 home];
    v12 = [v11 accessories];

    v13 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v24;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v24 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v23 + 1) + 8 * i);
          if ([v17 supportsTargetControl])
          {
            v18 = [[HMDTargetConfiguration alloc] initWithAccessory:v17 buttonConfiguration:0];
            [v10 addObject:v18];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v14);
    }

    [*(a1 + 32) _addTargets:v10];
    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 32);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543618;
      v28 = v22;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Saving targetUUIDs after auto-configuration of targets - %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 32) _saveTargetUUIDs];
  }
}

- (void)_saveTargetUUIDs
{
  v21 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBEB18];
  configuredTargets = [(HMDTargetControllerManager *)self configuredTargets];
  v5 = [v3 arrayWithCapacity:{objc_msgSend(configuredTargets, "count")}];

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  configuredTargets2 = [(HMDTargetControllerManager *)self configuredTargets];
  v7 = [configuredTargets2 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(configuredTargets2);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        uuid = [v11 uuid];

        if (uuid)
        {
          uuid2 = [v11 uuid];
          uUIDString = [uuid2 UUIDString];
          [v5 addObject:uUIDString];
        }
      }

      v8 = [configuredTargets2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  controller = [(HMDTargetControllerManager *)self controller];
  [controller saveTargetUUIDs:v5];
}

- (void)__characteristicEventsReceived:(id)received
{
  v37 = *MEMORY[0x277D85DE8];
  userInfo = [received userInfo];
  v4 = [userInfo hmf_arrayForKey:*MEMORY[0x277CFE5A8]];
  selfCopy = self;
  controller = [(HMDTargetControllerManager *)self controller];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v33;
    v30 = *MEMORY[0x277CD0F10];
    v28 = *MEMORY[0x277CCF750];
    v29 = controller;
    do
    {
      v10 = 0;
      v31 = v8;
      do
      {
        if (*v33 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v32 + 1) + 8 * v10);
        serverIdentifier = [v11 serverIdentifier];
        accessoryInstanceID = [v11 accessoryInstanceID];
        v14 = [controller matchesHAPAccessoryWithServerIdentifier:serverIdentifier instanceID:accessoryInstanceID];

        if (v14)
        {
          characteristicInstanceID = [v11 characteristicInstanceID];
          v16 = [controller hmdCharacteristicForInstanceId:characteristicInstanceID];

          service = [v16 service];
          accessory = [service accessory];
          if (accessory)
          {
            type = [service type];
            if (![type isEqualToString:v30])
            {
              goto LABEL_14;
            }

            [v16 type];
            v20 = v9;
            v22 = v21 = v6;
            v23 = [v22 isEqualToString:v28];

            v6 = v21;
            v9 = v20;
            controller = v29;

            if (v23)
            {
              value = [v11 value];
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                v25 = value;
              }

              else
              {
                v25 = 0;
              }

              type = v25;

              [(HMDTargetControllerManager *)selfCopy __handleActiveIdentifierChange:type forCharacteristic:v16];
LABEL_14:
            }
          }

          v8 = v31;
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v8);
  }
}

- (void)registerForActiveIdentifierNotifications
{
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__HMDTargetControllerManager_registerForActiveIdentifierNotifications__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)_registerForActiveIdentifierNotifications
{
  v48 = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel___characteristicEventsReceived_ name:*MEMORY[0x277CFE5A0] object:0];

  controller = [(HMDTargetControllerManager *)self controller];
  services = [controller services];
  v4 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(services, "count")}];
  v41 = 0u;
  v42 = 0u;
  *location = 0u;
  v40 = 0u;
  v5 = services;
  v6 = [v5 countByEnumeratingWithState:location objects:buf count:16];
  if (v6)
  {
    v7 = *v40;
    v8 = *MEMORY[0x277CD0F10];
    v9 = *MEMORY[0x277CCF750];
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v40 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(location[1] + i);
        type = [v11 type];
        v13 = [type isEqualToString:v8];

        if (v13)
        {
          v14 = [v11 findCharacteristicWithType:v9];
          if (v14)
          {
            [v4 addObject:v14];
          }
        }
      }

      v6 = [v5 countByEnumeratingWithState:location objects:buf count:16];
    }

    while (v6);
  }

  v15 = objc_msgSend_copy(v4);
  if ([v15 count])
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138543618;
      v45 = v19;
      v46 = 2112;
      v47 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Registering for notification on active selection characteristics: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v16);
    [controller enableNotification:1 forCharacteristics:v15 message:0 clientIdentifier:@"com.apple.HomeKitDaemon.targetControl"];
    v20 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v15, "count")}];
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v21 = v15;
    v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
    if (v22)
    {
      v23 = *v36;
      do
      {
        for (j = 0; j != v22; ++j)
        {
          if (*v36 != v23)
          {
            objc_enumerationMutation(v21);
          }

          v25 = [HMDCharacteristicRequest requestWithCharacteristic:*(*(&v35 + 1) + 8 * j)];
          [v20 addObject:v25];
        }

        v22 = [v21 countByEnumeratingWithState:&v35 objects:v43 count:16];
      }

      while (v22);
    }

    objc_initWeak(location, selfCopy);
    v26 = objc_autoreleasePoolPush();
    v27 = selfCopy;
    v28 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
    {
      v29 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v29;
      _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Refreshing the active selections on the controller", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v26);
    workQueue = [(HMDTargetControllerManager *)v27 workQueue];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __71__HMDTargetControllerManager__registerForActiveIdentifierNotifications__block_invoke;
    v33[3] = &unk_279735360;
    objc_copyWeak(&v34, location);
    [controller readCharacteristicValues:v20 source:1200 queue:workQueue completionHandler:v33];

    objc_destroyWeak(&v34);
    objc_destroyWeak(location);
  }
}

void __71__HMDTargetControllerManager__registerForActiveIdentifierNotifications__block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained _handleActiveIdentifierReadResponses:v5];
  }
}

- (void)_handleActiveIdentifierReadResponses:(id)responses
{
  v33 = *MEMORY[0x277D85DE8];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  obj = responses;
  v4 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v29;
    v24 = *MEMORY[0x277CD0F10];
    v21 = *MEMORY[0x277CCF750];
    selfCopy = self;
    v25 = *v29;
    do
    {
      v7 = 0;
      v26 = v5;
      do
      {
        if (*v29 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v28 + 1) + 8 * v7);
        request = [v8 request];
        characteristic = [request characteristic];

        service = [characteristic service];
        accessory = [service accessory];
        error = [v8 error];
        if (error)
        {
          v14 = 1;
        }

        else
        {
          v14 = accessory == 0;
        }

        if (v14)
        {
          goto LABEL_19;
        }

        error = [accessory uuid];
        controller = [(HMDTargetControllerManager *)self controller];
        uuid = [controller uuid];
        if (![error isEqual:uuid])
        {
          goto LABEL_18;
        }

        type = [service type];
        if (![type isEqualToString:v24])
        {

LABEL_18:
          v6 = v25;
          v5 = v26;
          goto LABEL_19;
        }

        type2 = [characteristic type];
        v23 = [type2 isEqualToString:v21];

        self = selfCopy;
        v6 = v25;
        v5 = v26;
        if (!v23)
        {
          goto LABEL_20;
        }

        value = [v8 value];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = value;
        }

        else
        {
          v20 = 0;
        }

        error = v20;

        self = selfCopy;
        [(HMDTargetControllerManager *)selfCopy __handleActiveIdentifierChange:error forCharacteristic:characteristic];
LABEL_19:

LABEL_20:
        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v5);
  }
}

- (void)__handleActiveIdentifierChange:(id)change forCharacteristic:(id)characteristic
{
  v33 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  accessory = [service accessory];
  if (changeCopy)
  {
    if ([changeCopy unsignedIntegerValue])
    {
      v10 = [(HMDTargetControllerManager *)self targetConfigurationMatchingIdentifier:changeCopy];
      if (!v10)
      {
        v11 = objc_autoreleasePoolPush();
        selfCopy = self;
        v13 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v21 = HMFGetLogIdentifier();
          [accessory name];
          v14 = v22 = v11;
          [service instanceID];
          *buf = 138544130;
          v26 = v21;
          v27 = 2112;
          v28 = changeCopy;
          v29 = 2112;
          v30 = v14;
          v32 = v31 = 2112;
          v15 = v32;
          _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Unable to look up target for identifier %@ while reading activeIdentifier characteristic %@/%@", buf, 0x2Au);

          v11 = v22;
        }

        objc_autoreleasePoolPop(v11);
      }

      v23 = @"activeIdentifier";
      v24 = changeCopy;
      v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
      [(HMDTargetControllerManager *)self _postSelectionChangeNotification:1 object:service userInfo:v16];
    }

    else
    {
      [(HMDTargetControllerManager *)self _postSelectionChangeNotification:0 object:service userInfo:0];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543874;
      v26 = v20;
      v27 = 2112;
      v28 = 0;
      v29 = 2112;
      v30 = characteristicCopy;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received a non-number (%@) for activeIdentifier characteristic %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
  }
}

- (void)acknowledgeTargetControlService:(id)service active:(BOOL)active
{
  serviceCopy = service;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __69__HMDTargetControllerManager_acknowledgeTargetControlService_active___block_invoke;
  block[3] = &unk_279734938;
  v10 = serviceCopy;
  selfCopy = self;
  activeCopy = active;
  v8 = serviceCopy;
  dispatch_async(workQueue, block);
}

void __69__HMDTargetControllerManager_acknowledgeTargetControlService_active___block_invoke(uint64_t a1)
{
  v50 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = MEMORY[0x277CBEB18];
  v3 = [v1 characteristics];
  v4 = [v2 arrayWithCapacity:{objc_msgSend(v3, "count")}];

  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v5 = [v1 characteristics];
  v6 = [v5 countByEnumeratingWithState:&v37 objects:buf count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v38;
    v9 = *MEMORY[0x277CCF790];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v38 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v37 + 1) + 8 * i);
        v12 = [v11 type];
        v13 = [v12 isEqualToString:v9];

        if (v13)
        {
          [v4 addObject:v11];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v37 objects:buf count:16];
    }

    while (v7);
  }

  v14 = objc_msgSend_copy(v4);
  if ([v14 count])
  {
    v15 = a1;
    v16 = [*(a1 + 40) controller];
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      if (*(a1 + 48))
      {
        v21 = @"Registering";
      }

      else
      {
        v21 = @"Deregistering";
      }

      v22 = [*(a1 + 32) accessory];
      v23 = [v22 name];
      v24 = [*(a1 + 32) instanceID];
      *buf = 138544130;
      v43 = v20;
      v44 = 2112;
      v45 = v21;
      v46 = 2112;
      v47 = v23;
      v48 = 2112;
      v49 = v24;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@%@ for notifications from event characteristics on controller service %@/%@", buf, 0x2Au);

      v15 = a1;
    }

    objc_autoreleasePoolPop(v17);
    [v16 enableNotification:*(v15 + 48) forCharacteristics:v14 message:0 clientIdentifier:@"com.apple.HomeKitDaemon.targetControl"];
    if (*(v15 + 48) == 1)
    {
      v25 = [*(v15 + 32) findCharacteristicWithType:*MEMORY[0x277CCF748]];
      if (v25)
      {
        if (*(v15 + 48))
        {
          v26 = &unk_286628258;
        }

        else
        {
          v26 = 0;
        }

        v27 = [HMDCharacteristicWriteRequest writeRequestWithCharacteristic:v25 value:v26 authorizationData:0 type:0];
        v41 = v27;
        v28 = [MEMORY[0x277CBEA60] arrayWithObjects:&v41 count:1];
        v29 = [*(v15 + 40) workQueue];
        [v16 writeCharacteristicValues:v28 source:1200 queue:v29 completionHandler:0];
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = *(v15 + 40);
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          v34 = [v16 name];
          v35 = [*(v15 + 32) instanceID];
          *buf = 138543874;
          v43 = v33;
          v44 = 2112;
          v45 = v34;
          v46 = 2112;
          v47 = v35;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Unable to look up active characteirstic in controller %@ service %@ for active selection acknowledgement", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v30);
      }
    }
  }
}

- (void)_resetTargets
{
  v24 = *MEMORY[0x277D85DE8];
  controller = [(HMDTargetControllerManager *)self controller];
  v4 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v4)
  {
    v19 = 0;
    v5 = [(HMDTargetControllerManager *)self _dataForResetTargetsWithOutError:&v19];
    v6 = v19;
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v10)
      {
        v11 = HMFGetLogIdentifier();
        *buf = 138543618;
        v21 = v11;
        v22 = 2112;
        v23 = v6;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for resetting targets - error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v7);
    }

    else
    {
      if (v10)
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v16;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Reset targets for controller", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v7);
      workQueue = [(HMDTargetControllerManager *)selfCopy workQueue];
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __43__HMDTargetControllerManager__resetTargets__block_invoke;
      v18[3] = &unk_2797359D8;
      v18[4] = selfCopy;
      [controller writeValue:v5 toCharacteristic:v4 queue:workQueue source:1200 completion:v18];
    }
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v21 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for resetting targets", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

void __43__HMDTargetControllerManager__resetTargets__block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
  if (v3)
  {
    if (v7)
    {
      v8 = HMFGetLogIdentifier();
      v10 = 138543362;
      v11 = v8;
      v9 = "%{public}@Failed to write request for resetting targets";
LABEL_6:
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, v9, &v10, 0xCu);
    }
  }

  else if (v7)
  {
    v8 = HMFGetLogIdentifier();
    v10 = 138543362;
    v11 = v8;
    v9 = "%{public}@Successfully resetting targets";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (id)_dataForResetTargetsWithOutError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  TLV8BufferInit();
  if (TLV8BufferAppend())
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = 4;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Encoding for reset target - operation %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:?];
  }

  TLV8BufferFree();
  if (error && !v5)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v5;
}

- (void)removeTargetAccessory:(id)accessory
{
  v22 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  if (accessoryCopy)
  {
    v5 = [(HMDTargetControllerManager *)self targetConfigurationMatchingAccessory:accessoryCopy];
    if (v5)
    {
      workQueue = [(HMDTargetControllerManager *)self workQueue];
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __52__HMDTargetControllerManager_removeTargetAccessory___block_invoke;
      v14[3] = &unk_2797359B0;
      v14[4] = self;
      v15 = v5;
      dispatch_async(workQueue, v14);
    }

    else
    {
      v7 = objc_autoreleasePoolPush();
      selfCopy = self;
      v9 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        v10 = HMFGetLogIdentifier();
        name = [accessoryCopy name];
        uuid = [accessoryCopy uuid];
        uUIDString = [uuid UUIDString];
        *buf = 138543874;
        v17 = v10;
        v18 = 2112;
        v19 = name;
        v20 = 2112;
        v21 = uUIDString;
        _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Attempt to remove a target %@/%@ that cannot be looked up in target controller manager", buf, 0x20u);
      }

      objc_autoreleasePoolPop(v7);
    }
  }
}

uint64_t __52__HMDTargetControllerManager_removeTargetAccessory___block_invoke(uint64_t a1)
{
  v5[1] = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v5[0] = *(a1 + 40);
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v5 count:1];
  [v2 _removeTargets:v3];

  return [*(a1 + 32) _saveTargetUUIDs];
}

- (void)_removeTargets:(id)targets
{
  v60 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  if ([targetsCopy count])
  {
    controller = [(HMDTargetControllerManager *)self controller];
    v6 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
    if (v6)
    {
      v50 = 0;
      v7 = [(HMDTargetControllerManager *)self _dataForRemoveTargets:targetsCopy outError:&v50];
      v41 = v50;
      if (v41)
      {
        v8 = objc_autoreleasePoolPush();
        selfCopy = self;
        v10 = HMFGetOSLogHandle();
        v11 = v41;
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543874;
          v55 = v12;
          v56 = 2112;
          v57 = targetsCopy;
          v58 = 2112;
          v59 = v41;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for removing targets %@ - error %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v8);
      }

      else
      {
        v37 = v7;
        v38 = v6;
        v39 = controller;
        v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(targetsCopy, "count")}];
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v40 = targetsCopy;
        v18 = targetsCopy;
        v19 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
        v42 = v18;
        if (v19)
        {
          v20 = v19;
          v21 = *v47;
          do
          {
            for (i = 0; i != v20; ++i)
            {
              if (*v47 != v21)
              {
                objc_enumerationMutation(v18);
              }

              v23 = *(*(&v46 + 1) + 8 * i);
              [(HMDTargetControllerManager *)self removeConfiguredTarget:v23];
              uuid = [v23 uuid];

              if (uuid)
              {
                uuid2 = [v23 uuid];
                [v17 addObject:uuid2];
              }

              else
              {
                v26 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v28 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
                {
                  v29 = HMFGetLogIdentifier();
                  *buf = 138543618;
                  v55 = v29;
                  v56 = 2112;
                  v57 = v23;
                  _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Target being removed %@ does not have a UUID", buf, 0x16u);

                  v18 = v42;
                }

                objc_autoreleasePoolPop(v26);
              }
            }

            v20 = [v18 countByEnumeratingWithState:&v46 objects:v53 count:16];
          }

          while (v20);
        }

        v51 = @"HMDTargetAccessoriesUUIDKey";
        v52 = v17;
        v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v52 forKeys:&v51 count:1];
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        controller = v39;
        [defaultCenter postNotificationName:@"HMDTargetAccessoryUnconfiguredNotificationKey" object:v39 userInfo:v30];

        v32 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v34 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
        {
          v35 = HMFGetLogIdentifier();
          *buf = 138543362;
          v55 = v35;
          _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Remove controller accessory targets", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v32);
        workQueue = [(HMDTargetControllerManager *)selfCopy3 workQueue];
        v43[0] = MEMORY[0x277D85DD0];
        v43[1] = 3221225472;
        v43[2] = __45__HMDTargetControllerManager__removeTargets___block_invoke;
        v43[3] = &unk_279734D88;
        v43[4] = selfCopy3;
        v44 = v42;
        v45 = v38;
        [v39 writeValue:v37 toCharacteristic:v45 queue:workQueue source:1200 completion:v43];

        v7 = v37;
        v6 = v38;
        targetsCopy = v40;
        v11 = 0;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v55 = v16;
        v56 = 2112;
        v57 = targetsCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for removing targets %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

void __45__HMDTargetControllerManager__removeTargets___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v18 = 138543618;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to write request for removing targets %@", &v18, 0x16u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [*(a1 + 48) value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = _parseTargetList(v11, 0);
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      v18 = 138543874;
      v19 = v16;
      v20 = 2112;
      v21 = v17;
      v22 = 2112;
      v23 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully removed targets %@ - response %@", &v18, 0x20u);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (id)_dataForRemoveTargets:(id)targets outError:(id *)error
{
  v59 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  [targetsCopy count];
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
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
  v38 = 0u;
  TLV8BufferInit();
  memset(&v37[8], 0, 336);
  TLV8BufferInit();
  v30 = 3;
  if (TLV8BufferAppend())
  {
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v23 = targetsCopy;
    errorCopy = error;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v8 = targetsCopy;
    v9 = [v8 countByEnumeratingWithState:&v26 objects:v37 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v27;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v26 + 1) + 8 * i);
          if ((v11 & 1) != 0 && TLV8BufferAppend() || ([v14 identifier], v15 = objc_claimAutoreleasedReturnValue(), v16 = objc_msgSend(v15, "unsignedIntegerValue"), v15, v25 = v16, TLV8BufferAppend()))
          {
            v7 = 0;
            v21 = 0;
            goto LABEL_18;
          }

          v17 = objc_autoreleasePoolPush();
          selfCopy = self;
          v19 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
          {
            v20 = HMFGetLogIdentifier();
            *buf = 138543874;
            v32 = v20;
            v33 = 2048;
            v34 = v30;
            v35 = 2048;
            v36 = v25;
            _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Encoding for remove target - operation %lu  identifier %lu", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v17);
          v11 = 1;
        }

        v10 = [v8 countByEnumeratingWithState:&v26 objects:v37 count:16];
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    v8 = [MEMORY[0x277CBEA90] dataWithBytes:v38 length:?];
    [v8 bytes];
    [v8 length];
    if (TLV8BufferAppend())
    {
      v7 = 0;
      targetsCopy = v23;
      error = errorCopy;
    }

    else
    {
      v21 = [MEMORY[0x277CBEA90] dataWithBytes:v37[8] length:?];
      v7 = 1;
LABEL_18:
      targetsCopy = v23;
      error = errorCopy;

      v8 = v21;
    }
  }

  TLV8BufferFree();
  TLV8BufferFree();
  if ((v7 & 1) == 0)
  {

    v8 = 0;
  }

  if (error && !v8)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v8;
}

- (void)addTargetAccessory:(id)accessory buttonConfiguration:(id)configuration
{
  accessoryCopy = accessory;
  configurationCopy = configuration;
  if (accessoryCopy)
  {
    workQueue = [(HMDTargetControllerManager *)self workQueue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__HMDTargetControllerManager_addTargetAccessory_buttonConfiguration___block_invoke;
    block[3] = &unk_279734960;
    v10 = accessoryCopy;
    v11 = configurationCopy;
    selfCopy = self;
    dispatch_async(workQueue, block);
  }
}

void __69__HMDTargetControllerManager_addTargetAccessory_buttonConfiguration___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = [HMDTargetConfiguration alloc];
  v3 = v2;
  v4 = *(a1 + 32);
  if (*(a1 + 40))
  {
    v5 = [(HMDTargetConfiguration *)v2 initWithAccessory:*(a1 + 32) buttonConfiguration:?];
  }

  else
  {
    v6 = [*(a1 + 48) buttonConfiguration];
    v5 = [(HMDTargetConfiguration *)v3 initWithAccessory:v4 buttonConfiguration:v6];
  }

  v7 = objc_autoreleasePoolPush();
  v8 = *(a1 + 48);
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    v11 = [*(a1 + 32) name];
    v18 = [*(a1 + 32) uuid];
    v12 = [v18 UUIDString];
    [(HMDTargetConfiguration *)v5 buttonConfiguration];
    v13 = v19 = v7;
    v14 = buttonConfigurationAsString(v13);
    v15 = [(HMFObject *)v5 shortDescription];
    *buf = 138544386;
    v22 = v10;
    v23 = 2112;
    v24 = v11;
    v25 = 2112;
    v26 = v12;
    v27 = 2112;
    v28 = v14;
    v29 = 2112;
    v30 = v15;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Adding target accessory %@/%@ with button configuration %@ - target configuration %@", buf, 0x34u);

    v7 = v19;
  }

  objc_autoreleasePoolPop(v7);
  v16 = *(a1 + 48);
  v20 = v5;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v20 count:1];
  [v16 _addTargets:v17];

  [*(a1 + 48) _saveTargetUUIDs];
}

- (void)_addTargets:(id)targets
{
  v71 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  if ([targetsCopy count])
  {
    controller = [(HMDTargetControllerManager *)self controller];
    v6 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
    if (v6)
    {
      v62 = 0;
      v7 = [(HMDTargetControllerManager *)self _dataForAddTargets:targetsCopy outError:&v62];
      v8 = v62;
      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        selfCopy = self;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          *buf = 138543618;
          v68 = v12;
          v69 = 2112;
          v70 = targetsCopy;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for adding targets %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v9);
      }

      else
      {
        v46 = v7;
        v47 = v6;
        v48 = controller;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        v58 = 0u;
        v17 = targetsCopy;
        v18 = [v17 countByEnumeratingWithState:&v58 objects:v66 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v59;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v59 != v20)
              {
                objc_enumerationMutation(v17);
              }

              [(HMDTargetControllerManager *)self addConfiguredTarget:*(*(&v58 + 1) + 8 * i)];
            }

            v19 = [v17 countByEnumeratingWithState:&v58 objects:v66 count:16];
          }

          while (v19);
        }

        v45 = v17;
        v49 = targetsCopy;

        configuredTargets = [(HMDTargetControllerManager *)self configuredTargets];
        v23 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configuredTargets, "count")}];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v24 = configuredTargets;
        v25 = [v24 countByEnumeratingWithState:&v54 objects:v65 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v55;
          do
          {
            v28 = 0;
            v50 = v26;
            do
            {
              if (*v55 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v29 = *(*(&v54 + 1) + 8 * v28);
              uuid = [v29 uuid];

              if (uuid)
              {
                uuid2 = [v29 uuid];
                [v23 addObject:uuid2];
              }

              else
              {
                v32 = objc_autoreleasePoolPush();
                selfCopy2 = self;
                v34 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  HMFGetLogIdentifier();
                  v35 = v27;
                  selfCopy3 = self;
                  v37 = v23;
                  v39 = v38 = v24;
                  *buf = 138543618;
                  v68 = v39;
                  v69 = 2112;
                  v70 = v29;
                  _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_ERROR, "%{public}@Target being added %@ does not have a UUID", buf, 0x16u);

                  v24 = v38;
                  v23 = v37;
                  self = selfCopy3;
                  v27 = v35;
                  v26 = v50;
                }

                objc_autoreleasePoolPop(v32);
              }

              ++v28;
            }

            while (v26 != v28);
            v26 = [v24 countByEnumeratingWithState:&v54 objects:v65 count:16];
          }

          while (v26);
        }

        v63 = @"HMDTargetAccessoriesUUIDKey";
        v64 = v23;
        v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
        v41 = [v40 mutableCopy];

        v42 = [(HMDTargetControllerManager *)self __refreshedConfiguration:0];
        [v41 addEntriesFromDictionary:v42];

        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        controller = v48;
        [defaultCenter postNotificationName:@"HMDTargetAccessoryConfiguredNotificationKey" object:v48 userInfo:v41];

        workQueue = [(HMDTargetControllerManager *)self workQueue];
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __42__HMDTargetControllerManager__addTargets___block_invoke;
        v51[3] = &unk_279734D88;
        v51[4] = self;
        v52 = v45;
        v6 = v47;
        v53 = v47;
        v7 = v46;
        [v48 writeValue:v46 toCharacteristic:v53 queue:workQueue source:1200 completion:v51];

        targetsCopy = v49;
        v8 = 0;
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v68 = v16;
        v69 = 2112;
        v70 = targetsCopy;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for adding targets %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }
}

void __42__HMDTargetControllerManager__addTargets___block_invoke(uint64_t a1, void *a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = *(a1 + 40);
      v19 = 138543874;
      v20 = v7;
      v21 = 2112;
      v22 = v8;
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to write request for adding targets %@ - error %@", &v19, 0x20u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v9 = [*(a1 + 48) value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    v12 = _parseTargetList(v11, 0);
    v13 = objc_autoreleasePoolPush();
    v14 = *(a1 + 32);
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = HMFGetLogIdentifier();
      v17 = *(a1 + 40);
      v18 = [*(a1 + 32) configuredTargets];
      v19 = 138544130;
      v20 = v16;
      v21 = 2112;
      v22 = v17;
      v23 = 2112;
      v24 = v18;
      v25 = 2112;
      v26 = v12;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Successfully added targets %@ configuredTargets %@ - response %@", &v19, 0x2Au);
    }

    objc_autoreleasePoolPop(v13);
  }
}

- (void)_postSelectionChangeNotification:(BOOL)notification object:(id)object userInfo:(id)info
{
  if (notification)
  {
    v6 = @"HMDTargetControlServiceSelectedNotificationKey";
  }

  else
  {
    v6 = @"HMDTargetControlServiceDeselectedNotificationKey";
  }

  v7 = MEMORY[0x277CCAB98];
  infoCopy = info;
  objectCopy = object;
  defaultCenter = [v7 defaultCenter];
  [defaultCenter postNotificationName:v6 object:objectCopy userInfo:infoCopy];
}

- (id)_dataForAddTargets:(id)targets outError:(id *)error
{
  v78 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  selfCopy = self;
  buttonConfiguration = [(HMDTargetControllerManager *)self buttonConfiguration];
  targetConfigurationTLVSize(targetsCopy, buttonConfiguration);

  memset(v67, 0, sizeof(v67));
  TLV8BufferInit();
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
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  TLV8BufferInit();
  v42 = 2;
  if (TLV8BufferAppend())
  {
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v9 = targetsCopy;
    v35 = [v9 countByEnumeratingWithState:&v38 objects:v45 count:16];
    if (v35)
    {
      v36 = *v39;
      v30 = targetsCopy;
      errorCopy = error;
      while (2)
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v39 != v36)
          {
            objc_enumerationMutation(v9);
          }

          v11 = *(*(&v38 + 1) + 8 * i);
          v12 = [(HMDTargetControllerManager *)selfCopy buttonConfiguration:v30];
          v13 = v11;
          v14 = v12;
          identifier = [v13 identifier];
          unsignedIntegerValue = [identifier unsignedIntegerValue];

          v44 = unsignedIntegerValue;
          if (TLV8BufferAppend() || ([v13 name], v17 = objc_claimAutoreleasedReturnValue(), v18 = objc_msgSend(v17, "UTF8String"), v17, v18) && (strlen(v18), TLV8BufferAppend()) || (v43 = objc_msgSend(v13, "category"), TLV8BufferAppend()))
          {
            buttonConfiguration2 = 0;
LABEL_22:

            v8 = 0;
            v28 = 0;
            targetsCopy = v30;
            error = errorCopy;
            goto LABEL_23;
          }

          buttonConfiguration2 = [v13 buttonConfiguration];
          if (![buttonConfiguration2 count])
          {
            v20 = v14;

            buttonConfiguration2 = v20;
          }

          if (__addButtonConfigurationTLV(v67, buttonConfiguration2))
          {
            goto LABEL_22;
          }

          v21 = objc_autoreleasePoolPush();
          v22 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            v23 = HMFGetLogIdentifier();
            v34 = v14;
            v24 = v9;
            v25 = v44;
            v32 = v43;
            buttonConfiguration3 = [v13 buttonConfiguration];
            buttonConfigurationAsString(buttonConfiguration3);
            v27 = v33 = v21;
            *buf = 138544386;
            v69 = v23;
            v70 = 2048;
            v71 = v25;
            v9 = v24;
            v14 = v34;
            v72 = 2080;
            v73 = v18;
            v74 = 2048;
            v75 = v32;
            v76 = 2112;
            v77 = v27;
            _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Adding TLVs for add target operation - identifier %lu  name %s  category %lu  buttonConfiguration: %@", buf, 0x34u);

            v21 = v33;
          }

          objc_autoreleasePoolPop(v21);
        }

        targetsCopy = v30;
        error = errorCopy;
        v35 = [v9 countByEnumeratingWithState:&v38 objects:v45 count:16];
        if (v35)
        {
          continue;
        }

        break;
      }
    }

    v9 = [MEMORY[0x277CBEA90] dataWithBytes:v67[0] length:?];
    [v9 bytes];
    [v9 length];
    if (TLV8BufferAppend())
    {
      v8 = 0;
    }

    else
    {
      v28 = [MEMORY[0x277CBEA90] dataWithBytes:v46 length:?];
      v8 = 1;
LABEL_23:

      v9 = v28;
    }
  }

  TLV8BufferFree();
  TLV8BufferFree();
  if ((v8 & 1) == 0)
  {

    v9 = 0;
  }

  if (error && !v9)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v9;
}

- (void)updateTargetAccessory:(id)accessory name:(id)name buttonConfiguration:(id)configuration
{
  accessoryCopy = accessory;
  nameCopy = name;
  configurationCopy = configuration;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__HMDTargetControllerManager_updateTargetAccessory_name_buttonConfiguration___block_invoke;
  v15[3] = &unk_279734870;
  v15[4] = self;
  v16 = accessoryCopy;
  v17 = nameCopy;
  v18 = configurationCopy;
  v12 = configurationCopy;
  v13 = nameCopy;
  v14 = accessoryCopy;
  dispatch_async(workQueue, v15);
}

void __77__HMDTargetControllerManager_updateTargetAccessory_name_buttonConfiguration___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) targetConfigurationMatchingAccessory:*(a1 + 40)];
  [*(a1 + 32) _updateName:*(a1 + 48) buttonConfiguration:*(a1 + 56) target:v2];
}

- (void)_updateName:(id)name buttonConfiguration:(id)configuration target:(id)target
{
  v75 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configurationCopy = configuration;
  targetCopy = target;
  if (targetCopy)
  {
    if (nameCopy || [configurationCopy count])
    {
      controller = [(HMDTargetControllerManager *)self controller];
      v12 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
      if (v12)
      {
        v54 = 0;
        v13 = [(HMDTargetControllerManager *)self _dataForUpdateTarget:targetCopy name:nameCopy buttonConfiguration:configurationCopy outError:&v54];
        v14 = v54;
        if (v14)
        {
          context = objc_autoreleasePoolPush();
          selfCopy = self;
          v16 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
          {
            HMFGetLogIdentifier();
            v17 = v42 = v12;
            [targetCopy name];
            v18 = v39 = v14;
            [targetCopy identifier];
            v19 = v43 = controller;
            buttonConfigurationAsString(configurationCopy);
            v20 = v40 = v13;
            *buf = 138544386;
            *&buf[4] = v17;
            *&buf[12] = 2112;
            *&buf[14] = v18;
            *&buf[22] = 2112;
            *&buf[24] = v19;
            *&buf[32] = 2112;
            *&buf[34] = nameCopy;
            *&buf[42] = 2112;
            *&buf[44] = v20;
            _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Failed to serialize request for updating %@/%@ with name %@  buttonConfiguration %@", buf, 0x34u);

            controller = v43;
            v14 = v39;

            v13 = v40;
            v12 = v42;
          }

          objc_autoreleasePoolPop(context);
        }

        else if ([v13 length])
        {
          v73 = 0u;
          v74 = 0u;
          v71 = 0u;
          v72 = 0u;
          v69 = 0u;
          v70 = 0u;
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
          v58 = 0u;
          memset(buf, 0, sizeof(buf));
          buttonConfigurationTLVSize(configurationCopy);
          TLV8BufferInit();
          v53 = 5;
          if (TLV8BufferAppend() || ([v13 bytes], objc_msgSend(v13, "length"), TLV8BufferAppend()))
          {
            TLV8BufferFree();
          }

          else
          {
            v41 = v13;
            v33 = v12;
            contexta = [MEMORY[0x277CBEA90] dataWithBytes:*buf length:*&buf[8]];
            TLV8BufferFree();
            v34 = objc_autoreleasePoolPush();
            selfCopy2 = self;
            v36 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
            {
              v37 = HMFGetLogIdentifier();
              *v55 = 138543362;
              v56 = v37;
              _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@Update target name or button configuration", v55, 0xCu);

              v14 = 0;
            }

            objc_autoreleasePoolPop(v34);
            workQueue = [(HMDTargetControllerManager *)selfCopy2 workQueue];
            v48[0] = MEMORY[0x277D85DD0];
            v48[1] = 3221225472;
            v48[2] = __69__HMDTargetControllerManager__updateName_buttonConfiguration_target___block_invoke;
            v48[3] = &unk_279727688;
            v48[4] = selfCopy2;
            v49 = targetCopy;
            v50 = nameCopy;
            v51 = configurationCopy;
            v52 = v33;
            [controller writeValue:contexta toCharacteristic:v52 queue:workQueue source:1200 completion:v48];

            v12 = v33;
            v13 = v41;
          }
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          name = [targetCopy name];
          [targetCopy identifier];
          v31 = contextb = v26;
          buttonConfigurationAsString(configurationCopy);
          v32 = v44 = controller;
          *buf = 138544386;
          *&buf[4] = v29;
          *&buf[12] = 2112;
          *&buf[14] = name;
          *&buf[22] = 2112;
          *&buf[24] = v31;
          *&buf[32] = 2112;
          *&buf[34] = nameCopy;
          *&buf[42] = 2112;
          *&buf[44] = v32;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Failed to look up target list characteristic for updating %@/%@ with name %@  buttonConfiguration %@", buf, 0x34u);

          v26 = contextb;
          controller = v44;

          v12 = 0;
        }

        objc_autoreleasePoolPop(v26);
      }
    }
  }

  else
  {
    v21 = objc_autoreleasePoolPush();
    selfCopy4 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = HMFGetLogIdentifier();
      v25 = buttonConfigurationAsString(configurationCopy);
      *buf = 138543874;
      *&buf[4] = v24;
      *&buf[12] = 2112;
      *&buf[14] = nameCopy;
      *&buf[22] = 2112;
      *&buf[24] = v25;
      _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@Request to update name %@  buttonConfiguration %@ for a nil target", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v21);
  }
}

void __69__HMDTargetControllerManager__updateName_buttonConfiguration_target___block_invoke(uint64_t a1, void *a2)
{
  v39 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (v3)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = *(a1 + 32);
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier();
      v8 = [*(a1 + 40) name];
      v9 = [*(a1 + 40) identifier];
      v10 = *(a1 + 48);
      v11 = buttonConfigurationAsString(*(a1 + 56));
      *buf = 138544386;
      v28 = v7;
      v29 = 2112;
      v30 = v8;
      v31 = 2112;
      v32 = v9;
      v33 = 2112;
      v34 = v10;
      v35 = 2112;
      v36 = v11;
      _os_log_impl(&dword_2531F8000, v6, OS_LOG_TYPE_INFO, "%{public}@Failed to write request for updating %@/%@ with name %@  buttonConfiguration %@", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v4);
  }

  else
  {
    v12 = [*(a1 + 64) value];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    v15 = _parseTargetList(v14, 0);
    v16 = objc_autoreleasePoolPush();
    v17 = *(a1 + 32);
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [*(a1 + 40) name];
      v21 = [*(a1 + 40) identifier];
      v26 = v14;
      v22 = v15;
      v23 = v16;
      v24 = *(a1 + 48);
      v25 = buttonConfigurationAsString(*(a1 + 56));
      *buf = 138544642;
      v28 = v19;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      v33 = 2112;
      v34 = v24;
      v16 = v23;
      v15 = v22;
      v14 = v26;
      v35 = 2112;
      v36 = v25;
      v37 = 2112;
      v38 = v15;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Successfully updated %@/%@ with name %@  buttonConfiguration %@ - response %@", buf, 0x3Eu);
    }

    objc_autoreleasePoolPop(v16);
  }
}

- (id)_dataForUpdateTarget:(id)target name:(id)name buttonConfiguration:(id)configuration outError:(id *)error
{
  v53 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  nameCopy = name;
  configurationCopy = configuration;
  v13 = configurationCopy;
  if (nameCopy || [configurationCopy count])
  {
    v36 = nameCopy;
    v14 = v13;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    configuredTargets = [(HMDTargetControllerManager *)self configuredTargets];
    v16 = [configuredTargets countByEnumeratingWithState:&v38 objects:v52 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v39;
      while (2)
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v39 != v18)
          {
            objc_enumerationMutation(configuredTargets);
          }

          v20 = *(*(&v38 + 1) + 8 * i);
          identifier = [targetCopy identifier];
          identifier2 = [v20 identifier];
          v23 = [identifier isEqual:identifier2];

          if (v23)
          {

            memset(v51, 0, 336);
            v50 = targetCopy;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v50 count:1];
            v13 = v14;
            targetConfigurationTLVSize(v25, v14);

            TLV8BufferInit();
            identifier3 = [targetCopy identifier];
            unsignedIntegerValue = [identifier3 unsignedIntegerValue];

            v37 = unsignedIntegerValue;
            if (TLV8BufferAppend())
            {
              v24 = 0;
              nameCopy = v36;
            }

            else
            {
              nameCopy = v36;
              uTF8String = [v36 UTF8String];
              if (v36 && (strlen(uTF8String), TLV8BufferAppend()) || v13 && __addButtonConfigurationTLV(v51, v13))
              {
                v24 = 0;
              }

              else
              {
                v29 = objc_autoreleasePoolPush();
                v30 = v35;
                v31 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
                {
                  v32 = HMFGetLogIdentifier();
                  v33 = buttonConfigurationAsString(v13);
                  *buf = 138544130;
                  v43 = v32;
                  v44 = 2048;
                  v45 = v37;
                  v46 = 2112;
                  v47 = v36;
                  v48 = 2112;
                  v49 = v33;
                  _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Encoding for update target - identifier %lu  updatedName %@  buttonConfiguration: %@", buf, 0x2Au);
                }

                objc_autoreleasePoolPop(v29);
                v24 = [MEMORY[0x277CBEA90] dataWithBytes:v51[0] length:v51[1]];
              }
            }

            TLV8BufferFree();
            if (error && !v24)
            {
              *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
            }

            goto LABEL_30;
          }
        }

        v17 = [configuredTargets countByEnumeratingWithState:&v38 objects:v52 count:16];
        if (v17)
        {
          continue;
        }

        break;
      }
    }

    if (error)
    {
      [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      *error = v24 = 0;
    }

    else
    {
      v24 = 0;
    }

    v13 = v14;
    nameCopy = v36;
  }

  else if (error)
  {
    [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    *error = v24 = 0;
  }

  else
  {
    v24 = 0;
  }

LABEL_30:

  return v24;
}

- (void)updateButtonConfigurationForTarget:(id)target
{
  targetCopy = target;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDTargetControllerManager_updateButtonConfigurationForTarget___block_invoke;
  v7[3] = &unk_2797359B0;
  v7[4] = self;
  v8 = targetCopy;
  v6 = targetCopy;
  dispatch_async(workQueue, v7);
}

void __65__HMDTargetControllerManager_updateButtonConfigurationForTarget___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v2 = [*(a1 + 32) configuredTargets];
  v3 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v17;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v17 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v16 + 1) + 8 * i);
        v8 = [*(a1 + 40) identifier];
        v9 = [v7 identifier];
        v10 = [v8 isEqual:v9];

        if (v10)
        {
          v11 = [*(a1 + 40) buttonConfiguration];
          [v7 setButtonConfiguration:v11];

          v12 = objc_autoreleasePoolPush();
          v13 = *(a1 + 32);
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v21 = v15;
            v22 = 2112;
            v23 = v7;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Updated the button configuration for target %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
          goto LABEL_13;
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v16 objects:v24 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:
}

- (void)_auditTargets:(id)targets
{
  v71 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  configuredTargets = [(HMDTargetControllerManager *)self configuredTargets];
  v6 = objc_msgSend_copy(configuredTargets);

  v47 = [MEMORY[0x277CBEB98] setWithArray:targetsCopy];
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543874;
    v66 = v10;
    v67 = 2112;
    v68 = targetsCopy;
    v69 = 2112;
    v70 = v6;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Read targets %@, Configured targets %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v7);
  v46 = v6;
  v11 = [v6 mutableCopy];
  [v11 intersectSet:v47];
  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  obj = v11;
  v12 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v59;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v59 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v58 + 1) + 8 * i);
        v17 = [targetsCopy objectAtIndex:{objc_msgSend(targetsCopy, "indexOfObject:", v16)}];
        name = [v16 name];
        name2 = [v17 name];
        v20 = HMFEqualObjects();

        if ((v20 & 1) == 0)
        {
          name3 = [v16 name];
          [(HMDTargetControllerManager *)selfCopy _updateName:name3 buttonConfiguration:0 target:v16];
        }
      }

      v13 = [obj countByEnumeratingWithState:&v58 objects:v64 count:16];
    }

    while (v13);
  }

  v22 = [v46 mutableCopy];
  [v22 minusSet:v47];
  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v48 = v22;
  v23 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v55;
    do
    {
      for (j = 0; j != v24; ++j)
      {
        if (*v55 != v25)
        {
          objc_enumerationMutation(v48);
        }

        v27 = *(*(&v54 + 1) + 8 * j);
        v28 = objc_autoreleasePoolPush();
        v29 = selfCopy;
        v30 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
        {
          v31 = HMFGetLogIdentifier();
          *buf = 138543618;
          v66 = v31;
          v67 = 2112;
          v68 = v27;
          _os_log_impl(&dword_2531F8000, v30, OS_LOG_TYPE_INFO, "%{public}@Target %@ not present in controller's target list - adding...", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v28);
      }

      v24 = [v48 countByEnumeratingWithState:&v54 objects:v63 count:16];
    }

    while (v24);
  }

  v45 = targetsCopy;

  allObjects = [v48 allObjects];
  [(HMDTargetControllerManager *)selfCopy _addTargets:allObjects];

  v33 = [v47 mutableCopy];
  [v33 minusSet:v46];
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v34 = v33;
  v35 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
  if (v35)
  {
    v36 = v35;
    v37 = *v51;
    do
    {
      for (k = 0; k != v36; ++k)
      {
        if (*v51 != v37)
        {
          objc_enumerationMutation(v34);
        }

        v39 = *(*(&v50 + 1) + 8 * k);
        v40 = objc_autoreleasePoolPush();
        v41 = selfCopy;
        v42 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
        {
          v43 = HMFGetLogIdentifier();
          *buf = 138543618;
          v66 = v43;
          v67 = 2112;
          v68 = v39;
          _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Target %@ present in controller's target list - removing...", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v40);
      }

      v36 = [v34 countByEnumeratingWithState:&v50 objects:v62 count:16];
    }

    while (v36);
  }

  allObjects2 = [v34 allObjects];
  [(HMDTargetControllerManager *)selfCopy _removeTargets:allObjects2];
}

- (void)_listTargetsWithCompletionHandler:(id)handler
{
  v30 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  controller = [(HMDTargetControllerManager *)self controller];
  v6 = [controller findCharacteristicType:*MEMORY[0x277CCFB38] forServiceType:*MEMORY[0x277CD0F18]];
  if (v6)
  {
    v25 = 0;
    v7 = [(HMDTargetControllerManager *)self _dataForListTargetsWithOutError:&v25];
    v8 = v25;
    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    v12 = os_log_type_enabled(v11, OS_LOG_TYPE_INFO);
    if (v8)
    {
      if (v12)
      {
        v13 = HMFGetLogIdentifier();
        *buf = 138543618;
        v27 = v13;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Unable to generate serialized data for listing targets - error %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      if (handlerCopy)
      {
        handlerCopy[2](handlerCopy, v8, 0);
      }
    }

    else
    {
      if (v12)
      {
        v18 = HMFGetLogIdentifier();
        v19 = [v6 description];
        *buf = 138543618;
        v27 = v18;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@write target list characteristic %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v9);
      objc_initWeak(buf, selfCopy);
      workQueue = [(HMDTargetControllerManager *)selfCopy workQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __64__HMDTargetControllerManager__listTargetsWithCompletionHandler___block_invoke;
      v21[3] = &unk_2797346E0;
      objc_copyWeak(&v24, buf);
      v23 = handlerCopy;
      v22 = v6;
      [controller writeValue:v7 toCharacteristic:v22 queue:workQueue source:1200 completion:v21];

      objc_destroyWeak(&v24);
      objc_destroyWeak(buf);
    }

    goto LABEL_15;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v27 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@No Target List characteristic to audit configured target accessories - skipping", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (handlerCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    handlerCopy[2](handlerCopy, v8, 0);
LABEL_15:
  }
}

void __64__HMDTargetControllerManager__listTargetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v4 = *(a1 + 40);
  if (v4)
  {
    v5 = WeakRetained == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    if (v12)
    {
      (*(v4 + 16))(v4, v12, 0);
    }

    else
    {
      v6 = [*(a1 + 32) value];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v7 = v6;
      }

      else
      {
        v7 = 0;
      }

      v8 = v7;

      v13 = 0;
      v9 = _parseTargetList(v8, &v13);

      v10 = v13;
      v11 = *(a1 + 40);
      if (v11)
      {
        (*(v11 + 16))(v11, v10, v9);
      }
    }
  }
}

- (id)_dataForListTargetsWithOutError:(id *)error
{
  v36 = *MEMORY[0x277D85DE8];
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v21 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  TLV8BufferInit();
  if (TLV8BufferAppend())
  {
    v5 = 0;
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v12 = v9;
      v13 = 2048;
      v14 = 1;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Encoding for list target - operation %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    v5 = [MEMORY[0x277CBEA90] dataWithBytes:v15 length:?];
  }

  TLV8BufferFree();
  if (error && !v5)
  {
    *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
  }

  return v5;
}

- (void)_refreshConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = dispatch_group_create();
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x3032000000;
  v26[3] = __Block_byref_object_copy__54005;
  v26[4] = __Block_byref_object_dispose__54006;
  v27 = 0;
  dispatch_group_enter(v5);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke;
  v23[3] = &unk_27972C6F8;
  v25 = v26;
  v6 = v5;
  v24 = v6;
  [(HMDTargetControllerManager *)self _readSupportedConfigurationWithCompletion:v23];
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__54005;
  v21[4] = __Block_byref_object_dispose__54006;
  v22 = 0;
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = __Block_byref_object_copy__54005;
  v19[4] = __Block_byref_object_dispose__54006;
  v20 = 0;
  dispatch_group_enter(v6);
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_2;
  v15[3] = &unk_279727638;
  v17 = v21;
  v18 = v19;
  v7 = v6;
  v16 = v7;
  [(HMDTargetControllerManager *)self _listTargetsWithCompletionHandler:v15];
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_3;
  v10[3] = &unk_279727660;
  v10[4] = self;
  v11 = completionCopy;
  v12 = v19;
  v13 = v26;
  v14 = v21;
  v9 = completionCopy;
  dispatch_group_notify(v7, workQueue, v10);

  _Block_object_dispose(v19, 8);
  _Block_object_dispose(v21, 8);

  _Block_object_dispose(v26, 8);
}

void __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_group_leave(*(a1 + 32));
}

void __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v12 = v5;

  v9 = *(*(a1 + 48) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
  v11 = v6;

  dispatch_group_leave(*(a1 + 32));
}

uint64_t __66__HMDTargetControllerManager__refreshConfigurationWithCompletion___block_invoke_3(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = [*(a1 + 32) maximumTargets];
    v7 = [*(a1 + 32) ticksPerSecond];
    v8 = [*(a1 + 32) buttonConfiguration];
    v9 = buttonConfigurationAsString(v8);
    v12 = 138544130;
    v13 = v5;
    v14 = 2048;
    v15 = v6;
    v16 = 2048;
    v17 = v7;
    v18 = 2112;
    v19 = v9;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Notifying supported configuration: Maximum Targets: %lu  Ticks Per Second: %lu  Buttons: %@", &v12, 0x2Au);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _notifyConfigurationRefresh:*(*(*(a1 + 48) + 8) + 40)];
  result = *(a1 + 40);
  if (result)
  {
    v11 = *(*(*(a1 + 56) + 8) + 40);
    if (!v11)
    {
      v11 = *(*(*(a1 + 64) + 8) + 40);
    }

    return (*(result + 16))(result, v11);
  }

  return result;
}

- (void)_readSupportedConfigurationWithCompletion:(id)completion
{
  v26[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  controller = [(HMDTargetControllerManager *)self controller];
  v6 = [controller findCharacteristicType:*MEMORY[0x277CCFAE8] forServiceType:*MEMORY[0x277CD0F18]];
  if (v6)
  {
    v7 = [HMDCharacteristicRequest requestWithCharacteristic:v6];
    v26[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];

    v9 = objc_autoreleasePoolPush();
    selfCopy = self;
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v23 = v12;
      v24 = 2048;
      v25 = [v8 count];
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Read supported configuration. size: %lu", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    objc_initWeak(buf, selfCopy);
    workQueue = [(HMDTargetControllerManager *)selfCopy workQueue];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __72__HMDTargetControllerManager__readSupportedConfigurationWithCompletion___block_invoke;
    v18[3] = &unk_279727610;
    objc_copyWeak(&v21, buf);
    v20 = completionCopy;
    v19 = v6;
    [controller readCharacteristicValues:v8 source:1200 queue:workQueue completionHandler:v18];

    objc_destroyWeak(&v21);
    objc_destroyWeak(buf);
    goto LABEL_9;
  }

  v14 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v16 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    v17 = HMFGetLogIdentifier();
    *buf = 138543362;
    v23 = v17;
    _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_ERROR, "%{public}@No Supported target Configuration characteristic to refresh the configuration for the controller", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v14);
  if (completionCopy)
  {
    v8 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (*(completionCopy + 2))(completionCopy, v8);
LABEL_9:
  }
}

void __72__HMDTargetControllerManager__readSupportedConfigurationWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v61 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if ([v3 count])
    {
      v5 = [v3 firstObject];
      v6 = [v5 request];
      v7 = [v6 characteristic];

      v8 = [v5 error];

      if (v8)
      {
        v9 = objc_autoreleasePoolPush();
        v10 = WeakRetained;
        v11 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          v12 = HMFGetLogIdentifier();
          v13 = [v5 error];
          *buf = 138543874;
          v54 = v12;
          v55 = 2112;
          v56 = v13;
          v57 = 2112;
          v58 = v7;
          _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_INFO, "%{public}@Error %@ response for reading characteristic %@", buf, 0x20u);
        }

        objc_autoreleasePoolPop(v9);
        v14 = *(a1 + 40);
        if (!v14)
        {
          goto LABEL_40;
        }

        v15 = [v5 error];
        (*(v14 + 16))(v14, v15);
      }

      else
      {
        v26 = [v7 type];
        v27 = [v26 isEqualToString:*MEMORY[0x277CCFAE8]];

        if (v27)
        {
          v28 = [v7 value];
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

          v31 = [WeakRetained _parseSupportedTargetConfiguration:v30];
          v32 = objc_autoreleasePoolPush();
          v33 = WeakRetained;
          v34 = HMFGetOSLogHandle();
          v35 = os_log_type_enabled(v34, OS_LOG_TYPE_INFO);
          if (v31)
          {
            if (v31 == -6727)
            {
              if (v35)
              {
                v36 = HMFGetLogIdentifier();
                *buf = 138543362;
                v54 = v36;
                _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@No data to parse for supported configuration", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v32);
              v37 = MEMORY[0x277CCA9B8];
              v38 = 74;
            }

            else
            {
              if (v35)
              {
                HMFGetLogIdentifier();
                v46 = v52 = v32;
                *buf = 138543618;
                v54 = v46;
                v55 = 2048;
                v56 = v31;
                _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Parsing supported configuration data failed with error %lu", buf, 0x16u);

                v32 = v52;
              }

              objc_autoreleasePoolPop(v32);
              v37 = MEMORY[0x277CCA9B8];
              v38 = 50;
            }

            v15 = [v37 hmErrorWithCode:v38];
          }

          else
          {
            if (v35)
            {
              v49 = HMFGetLogIdentifier();
              v51 = v32;
              v44 = [v33 maximumTargets];
              v48 = [v33 ticksPerSecond];
              v50 = [v33 buttonConfiguration];
              buttonConfigurationAsString(v50);
              *buf = 138544130;
              v54 = v49;
              v55 = 2048;
              v56 = v44;
              v32 = v51;
              v57 = 2048;
              v58 = v48;
              v60 = v59 = 2112;
              v45 = v60;
              _os_log_impl(&dword_2531F8000, v34, OS_LOG_TYPE_INFO, "%{public}@Refreshed supported configuration: Maximum Targets: %lu  Ticks Per Second: %lu  Buttons: %@", buf, 0x2Au);
            }

            objc_autoreleasePoolPop(v32);
            v15 = 0;
          }
        }

        else
        {
          v39 = objc_autoreleasePoolPush();
          v40 = WeakRetained;
          v41 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
          {
            v42 = HMFGetLogIdentifier();
            v43 = *(a1 + 32);
            *buf = 138543874;
            v54 = v42;
            v55 = 2112;
            v56 = v43;
            v57 = 2112;
            v58 = v7;
            _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Got unexpected response - attempting to read %@, got %@", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v39);
          v15 = [MEMORY[0x277CCA9B8] hmErrorWithCode:74];
        }

        v47 = *(a1 + 40);
        if (v47)
        {
          (*(v47 + 16))(v47, v15);
        }
      }

LABEL_40:
      goto LABEL_41;
    }

    v22 = objc_autoreleasePoolPush();
    v23 = WeakRetained;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@No responses refreshing controller configuration", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = 59;
      goto LABEL_16;
    }
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v18 = HMFGetLogIdentifier();
      *buf = 138543362;
      v54 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_ERROR, "%{public}@Accessory not found for reading supported target configuration characteristic", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v16);
    v19 = *(a1 + 40);
    if (v19)
    {
      v20 = MEMORY[0x277CCA9B8];
      v21 = 2;
LABEL_16:
      v5 = [v20 hmErrorWithCode:v21];
      (*(v19 + 16))(v19, v5);
LABEL_41:
    }
  }
}

- (void)refreshConfigurationWithCompletion:(id)completion
{
  completionCopy = completion;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __65__HMDTargetControllerManager_refreshConfigurationWithCompletion___block_invoke;
  v7[3] = &unk_279735738;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(workQueue, v7);
}

- (void)_notifyConfigurationRefresh:(id)refresh
{
  refreshCopy = refresh;
  [(HMDTargetControllerManager *)self _auditTargets:refreshCopy];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  controller = [(HMDTargetControllerManager *)self controller];
  v6 = [(HMDTargetControllerManager *)self __refreshedConfiguration:refreshCopy];

  [defaultCenter postNotificationName:@"HMDTargetControllerAccessoryConfigurationUpdatedNotificationKey" object:controller userInfo:v6];
}

- (id)__refreshedConfiguration:(id)configuration
{
  v20[3] = *MEMORY[0x277D85DE8];
  configurationCopy = configuration;
  if ([(HMDTargetControllerManager *)self configurationRefreshed])
  {
    if (configurationCopy)
    {
      v19[0] = @"ticksPerSecond";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDTargetControllerManager ticksPerSecond](self, "ticksPerSecond")}];
      v20[0] = v5;
      v19[1] = @"buttonConfiguration";
      buttonConfiguration = [(HMDTargetControllerManager *)self buttonConfiguration];
      v7 = buttonConfiguration;
      v8 = MEMORY[0x277CBEBF8];
      if (buttonConfiguration)
      {
        v8 = buttonConfiguration;
      }

      v19[2] = @"targetConfiguration";
      v20[1] = v8;
      v20[2] = configurationCopy;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v20;
      v11 = v19;
      v12 = 3;
    }

    else
    {
      v17[0] = @"ticksPerSecond";
      v5 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{-[HMDTargetControllerManager ticksPerSecond](self, "ticksPerSecond")}];
      v17[1] = @"buttonConfiguration";
      v18[0] = v5;
      buttonConfiguration2 = [(HMDTargetControllerManager *)self buttonConfiguration];
      v7 = buttonConfiguration2;
      v15 = MEMORY[0x277CBEBF8];
      if (buttonConfiguration2)
      {
        v15 = buttonConfiguration2;
      }

      v18[1] = v15;
      v9 = MEMORY[0x277CBEAC0];
      v10 = v18;
      v11 = v17;
      v12 = 2;
    }

    v13 = [v9 dictionaryWithObjects:v10 forKeys:v11 count:v12];
  }

  else
  {
    v13 = MEMORY[0x277CBEC10];
  }

  return v13;
}

- (int)_parseSupportedTargetConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v25 = 0;
  if (![configurationCopy length])
  {
    v10 = -6727;
    goto LABEL_29;
  }

  selfCopy = self;
  [configurationCopy bytes];
  [configurationCopy length];
  v5 = 0;
  v6 = 0;
  v24 = 0;
  v22 = 0;
  v23 = 0;
  v7 = 16;
  v8 = 1000;
  v21 = 0;
  while (1)
  {
    while (1)
    {
      while (1)
      {
        if (TLV8GetNext())
        {
          v14 = v6;
          goto LABEL_25;
        }

        if (v24 > 2u)
        {
          break;
        }

        if (v24 == 1)
        {
          UInt64 = TLV8GetUInt64();
          v10 = v25;
          if (v25)
          {
            goto LABEL_28;
          }

          v7 = UInt64;
        }

        else if (v24 == 2)
        {
          v9 = TLV8GetUInt64();
          if (v9 <= 0x3E8)
          {
            v8 = 1000;
          }

          else
          {
            v8 = v9;
          }

          goto LABEL_13;
        }
      }

      if (v24 == 3)
      {
        break;
      }

      if (v24 == 4)
      {
        v5 = TLV8GetUInt64() == 1;
LABEL_13:
        v10 = v25;
        if (v25)
        {
          goto LABEL_28;
        }
      }
    }

    v20 = 0;
    v12 = TLV8GetOrCopyCoalesced();
    v25 = v12;
    if (v12)
    {
      v10 = v12;
      goto LABEL_28;
    }

    v13 = [MEMORY[0x277CBEA90] dataWithBytes:? length:?];
    v19 = 0;
    v14 = _parseTargetButtonConfiguration(v13, &v19);
    v15 = v19;

    if (v20)
    {
      free(v20);
      v20 = 0;
    }

    if (v15)
    {
      break;
    }

    v6 = v14;
  }

  v25 = -6742;

LABEL_25:
  v10 = v25;
  if (!v25)
  {
    [(HMDTargetControllerManager *)selfCopy setMaximumTargets:v7];
    [(HMDTargetControllerManager *)selfCopy setTicksPerSecond:v8];
    [(HMDTargetControllerManager *)selfCopy setButtonConfiguration:v14];
    controller = [(HMDTargetControllerManager *)selfCopy controller];
    [controller saveHardwareSupport:v5];

    [(HMDTargetControllerManager *)selfCopy setConfigurationRefreshed:1];
    v10 = v25;
  }

  v6 = v14;
LABEL_28:

LABEL_29:
  return v10;
}

- (void)__accessoryRemoved:(id)removed
{
  removedCopy = removed;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__HMDTargetControllerManager___accessoryRemoved___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = removedCopy;
  selfCopy = self;
  v6 = removedCopy;
  dispatch_async(workQueue, v7);
}

void __49__HMDTargetControllerManager___accessoryRemoved___block_invoke(uint64_t a1)
{
  v80 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) userInfo];
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

  v6 = objc_autoreleasePoolPush();
  v7 = *(a1 + 40);
  v8 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
  {
    v9 = HMFGetLogIdentifier();
    v10 = [v5 name];
    v11 = [v5 uuid];
    v12 = [v11 UUIDString];
    *buf = 138543874;
    v71 = v9;
    v72 = 2112;
    v73 = v10;
    v74 = 2112;
    v75 = v12;
    _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Received notification that an accessory %@/%@ has been removed from the home", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v6);
  v13 = [*(a1 + 40) controller];
  v14 = [v13 uuid];
  v15 = [v5 uuid];
  v16 = [v14 isEqual:v15];

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = *(a1 + 40);
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v71 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Received notification that controller has been removed from the home - invalidating...", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    [*(a1 + 40) invalidate];
  }

  else if ([v5 supportsTargetControl])
  {
    v21 = [v13 home];
    if (v21)
    {
      v58 = v13;
      v22 = [v5 uuid];
      v61 = v21;
      v23 = [v21 uuid];
      v24 = identifierForTargetWithUUID(v22, v23);

      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      obj = [*(a1 + 40) configuredTargets];
      v25 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
      if (v25)
      {
        v26 = v25;
        v27 = *v65;
        while (2)
        {
          for (i = 0; i != v26; ++i)
          {
            if (*v65 != v27)
            {
              objc_enumerationMutation(obj);
            }

            v29 = *(*(&v64 + 1) + 8 * i);
            v30 = [v29 identifier];
            v31 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v24];
            v32 = [v30 isEqual:v31];

            if (v32)
            {
              v40 = objc_autoreleasePoolPush();
              v41 = *(a1 + 40);
              v42 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
              {
                v43 = HMFGetLogIdentifier();
                v44 = [v5 name];
                v45 = [v5 uuid];
                v46 = [v45 UUIDString];
                *buf = 138543874;
                v71 = v43;
                v72 = 2112;
                v73 = v44;
                v74 = 2112;
                v75 = v46;
                _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Received notification that target accessory %@/%@ has been removed", buf, 0x20u);
              }

              objc_autoreleasePoolPop(v40);
              v47 = *(a1 + 40);
              v68 = v29;
              v48 = [MEMORY[0x277CBEA60] arrayWithObjects:&v68 count:1];
              [v47 _removeTargets:v48];

              [*(a1 + 40) _saveTargetUUIDs];
              goto LABEL_27;
            }
          }

          v26 = [obj countByEnumeratingWithState:&v64 objects:v69 count:16];
          if (v26)
          {
            continue;
          }

          break;
        }
      }

LABEL_27:

      v13 = v58;
      v21 = v61;
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      v50 = *(a1 + 40);
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        v52 = [v5 name];
        v60 = [v5 uuid];
        v53 = [v60 UUIDString];
        [v13 name];
        v54 = obja = v49;
        v55 = [v13 uuid];
        v56 = [v55 UUIDString];
        *buf = 138544386;
        v71 = v59;
        v72 = 2112;
        v73 = v52;
        v74 = 2112;
        v75 = v53;
        v76 = 2112;
        v77 = v54;
        v78 = 2112;
        v79 = v56;
        v57 = v56;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_ERROR, "%{public}@Attempting to process accessory %@/%@ removal for a controller %@/%@ that is not configured with a home", buf, 0x34u);

        v49 = obja;
      }

      objc_autoreleasePoolPop(v49);
    }
  }

  else
  {
    v33 = objc_autoreleasePoolPush();
    v34 = *(a1 + 40);
    v35 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
    {
      v36 = HMFGetLogIdentifier();
      v37 = [v5 name];
      v38 = [v5 uuid];
      v39 = [v38 UUIDString];
      *buf = 138543874;
      v71 = v36;
      v72 = 2112;
      v73 = v37;
      v74 = 2112;
      v75 = v39;
      _os_log_impl(&dword_2531F8000, v35, OS_LOG_TYPE_INFO, "%{public}@Removed accessory %@/%@ does not support target control - ignoring", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v33);
  }
}

- (void)__accessoryNameUpdated:(id)updated
{
  updatedCopy = updated;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__HMDTargetControllerManager___accessoryNameUpdated___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(workQueue, v7);
}

void __53__HMDTargetControllerManager___accessoryNameUpdated___block_invoke(uint64_t a1)
{
  v76 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    *buf = 138543874;
    v68 = v8;
    v69 = 2112;
    v70 = v9;
    v71 = 2112;
    v72 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received notification that the name of an accessory %@/%@ has been updated", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  if ([v4 supportsTargetControl])
  {
    v12 = [*(a1 + 40) controller];
    v13 = [v12 home];

    if (v13)
    {
      v14 = [v4 uuid];
      v61 = v13;
      v15 = [v13 uuid];
      v16 = identifierForTargetWithUUID(v14, v15);

      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v17 = [*(a1 + 40) configuredTargets];
      v18 = [v17 countByEnumeratingWithState:&v63 objects:v75 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v64;
        v60 = a1;
        while (2)
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v64 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v63 + 1) + 8 * i);
            v23 = [v22 identifier];
            v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v16];
            v25 = [v23 isEqual:v24];

            if (v25)
            {
              v26 = objc_autoreleasePoolPush();
              v27 = v60;
              v28 = *(v60 + 40);
              v29 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
              {
                v30 = HMFGetLogIdentifier();
                v31 = [v4 uuid];
                v32 = [v31 UUIDString];
                [v4 name];
                v34 = v33 = v26;
                *buf = 138543874;
                v68 = v30;
                v69 = 2112;
                v70 = v32;
                v71 = 2112;
                v72 = v34;
                _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Received notification that the name of target accessory %@ has been updated to %@", buf, 0x20u);

                v26 = v33;
                v27 = v60;
              }

              objc_autoreleasePoolPop(v26);
              v35 = [v22 name];
              v36 = [v4 name];
              v37 = HMFEqualObjects();

              if ((v37 & 1) == 0)
              {
                v38 = objc_autoreleasePoolPush();
                v39 = *(v27 + 40);
                v40 = HMFGetOSLogHandle();
                if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
                {
                  v57 = HMFGetLogIdentifier();
                  v41 = [v22 name];
                  v58 = [v4 uuid];
                  v59 = v38;
                  v42 = [v58 UUIDString];
                  v43 = [v4 name];
                  *buf = 138544130;
                  v68 = v57;
                  v69 = 2112;
                  v70 = v41;
                  v71 = 2112;
                  v72 = v42;
                  v44 = v42;
                  v73 = 2112;
                  v74 = v43;
                  _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Updating the name of target accessory %@/%@ to %@", buf, 0x2Au);

                  v38 = v59;
                }

                objc_autoreleasePoolPop(v38);
                v45 = [v4 name];
                [v22 setName:v45];

                v46 = *(v27 + 40);
                v47 = [v4 name];
                [v46 _updateName:v47 buttonConfiguration:0 target:v22];
              }

              goto LABEL_23;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v63 objects:v75 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:

      v13 = v61;
    }

    else
    {
      v48 = objc_autoreleasePoolPush();
      v49 = *(a1 + 40);
      v50 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
      {
        v51 = HMFGetLogIdentifier();
        v52 = [*(a1 + 40) controller];
        v53 = [v52 name];
        v54 = [*(a1 + 40) controller];
        v55 = [v54 uuid];
        [v55 UUIDString];
        v56 = v62 = v48;
        *buf = 138543874;
        v68 = v51;
        v69 = 2112;
        v70 = v53;
        v71 = 2112;
        v72 = v56;
        _os_log_impl(&dword_2531F8000, v50, OS_LOG_TYPE_ERROR, "%{public}@Attempting to process accessory name update with a controller %@/%@ that is not configured with a home", buf, 0x20u);

        v48 = v62;
      }

      objc_autoreleasePoolPop(v48);
    }
  }
}

- (void)__accessoryConnected:(id)connected
{
  connectedCopy = connected;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__HMDTargetControllerManager___accessoryConnected___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = connectedCopy;
  selfCopy = self;
  v6 = connectedCopy;
  dispatch_async(workQueue, v7);
}

void __51__HMDTargetControllerManager___accessoryConnected___block_invoke(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    *buf = 138543874;
    v27 = v8;
    v28 = 2112;
    v29 = v9;
    v30 = 2112;
    v31 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Connected to accessory %@/%@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [*(a1 + 40) controller];
    v16 = [v15 uuid];
    v17 = [v14 uuid];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Connected to controller - refreshing the supported target configuration and auditing the list of targets", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      objc_initWeak(buf, *(a1 + 40));
      v23 = *(a1 + 40);
      v24[0] = MEMORY[0x277D85DD0];
      v24[1] = 3221225472;
      v24[2] = __51__HMDTargetControllerManager___accessoryConnected___block_invoke_59;
      v24[3] = &unk_279734708;
      objc_copyWeak(&v25, buf);
      [v23 _refreshConfigurationWithCompletion:v24];
      objc_destroyWeak(&v25);
      objc_destroyWeak(buf);
    }
  }
}

void __51__HMDTargetControllerManager___accessoryConnected___block_invoke_59(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3 && WeakRetained)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = v5;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      v10 = 138543618;
      v11 = v9;
      v12 = 2112;
      v13 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Failed to refresh the supported target configuration - error %@", &v10, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (void)__accessoryDisconnected:(id)disconnected
{
  disconnectedCopy = disconnected;
  workQueue = [(HMDTargetControllerManager *)self workQueue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__HMDTargetControllerManager___accessoryDisconnected___block_invoke;
  v7[3] = &unk_2797359B0;
  v8 = disconnectedCopy;
  selfCopy = self;
  v6 = disconnectedCopy;
  dispatch_async(workQueue, v7);
}

void __54__HMDTargetControllerManager___accessoryDisconnected___block_invoke(uint64_t a1)
{
  v29 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) object];
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

  v5 = objc_autoreleasePoolPush();
  v6 = *(a1 + 40);
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = [v4 name];
    v10 = [v4 uuid];
    v11 = [v10 UUIDString];
    v23 = 138543874;
    v24 = v8;
    v25 = 2112;
    v26 = v9;
    v27 = 2112;
    v28 = v11;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Disconnected from accessory %@/%@", &v23, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  v12 = v4;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13;

  if (v14)
  {
    v15 = [*(a1 + 40) controller];
    v16 = [v15 uuid];
    v17 = [v14 uuid];
    v18 = [v16 isEqual:v17];

    if (v18)
    {
      v19 = objc_autoreleasePoolPush();
      v20 = *(a1 + 40);
      v21 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        v22 = HMFGetLogIdentifier();
        v23 = 138543362;
        v24 = v22;
        _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Disconnected from controller - marking configuation as stale", &v23, 0xCu);
      }

      objc_autoreleasePoolPop(v19);
      [*(a1 + 40) setConfigurationRefreshed:0];
    }
  }
}

- (void)setButtonConfiguration:(id)configuration
{
  configurationCopy = configuration;
  os_unfair_lock_lock_with_options();
  buttonConfiguration = self->_buttonConfiguration;
  self->_buttonConfiguration = configurationCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)buttonConfiguration
{
  os_unfair_lock_lock_with_options();
  v3 = self->_buttonConfiguration;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setTicksPerSecond:(unint64_t)second
{
  os_unfair_lock_lock_with_options();
  self->_ticksPerSecond = second;

  os_unfair_lock_unlock(&self->_lock);
}

- (unint64_t)ticksPerSecond
{
  os_unfair_lock_lock_with_options();
  ticksPerSecond = self->_ticksPerSecond;
  os_unfair_lock_unlock(&self->_lock);
  return ticksPerSecond;
}

- (NSArray)targetUUIDs
{
  v35 = *MEMORY[0x277D85DE8];
  configuredTargets = [(HMDTargetControllerManager *)self configuredTargets];
  v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(configuredTargets, "count")}];
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = configuredTargets;
  v4 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v25;
    *&v5 = 138543874;
    v21 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v25 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v24 + 1) + 8 * i);
        uuid = [v9 uuid];

        if (uuid)
        {
          uuid2 = [v9 uuid];
          uUIDString = [uuid2 UUIDString];
          [v3 addObject:uUIDString];
        }

        else
        {
          v13 = objc_autoreleasePoolPush();
          selfCopy = self;
          v15 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
          {
            v16 = HMFGetLogIdentifier();
            name = [v9 name];
            identifier = [v9 identifier];
            *buf = v21;
            v29 = v16;
            v30 = 2112;
            v31 = name;
            v32 = 2112;
            v33 = identifier;
            _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Target %@/%@ does not have a UUID", buf, 0x20u);
          }

          objc_autoreleasePoolPop(v13);
        }
      }

      v6 = [obj countByEnumeratingWithState:&v24 objects:v34 count:16];
    }

    while (v6);
  }

  v19 = objc_msgSend_copy(v3);

  return v19;
}

- (void)resetConfiguredTargets
{
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_configuredTargets removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeConfiguredTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_configuredTargets removeObject:targetCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addConfiguredTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_lock_with_options();
  [(NSMutableSet *)self->_configuredTargets addObject:targetCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (NSMutableSet)configuredTargets
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_configuredTargets);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)invalidate
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v8 = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating target controller manager", &v8, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:selfCopy];
}

- (HMDTargetControllerManager)initWithTargetControllerAccessory:(id)accessory targets:(id)targets
{
  v89 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  targetsCopy = targets;
  v77.receiver = self;
  v77.super_class = HMDTargetControllerManager;
  v8 = [(HMDTargetControllerManager *)&v77 init];
  if (!v8)
  {
    goto LABEL_25;
  }

  v9 = HMDispatchQueueNameString();
  uTF8String = [v9 UTF8String];
  dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v11 = v68 = v8;
  v12 = dispatch_queue_create(uTF8String, v11);
  workQueue = v68->_workQueue;
  v68->_workQueue = v12;

  p_isa = &v68->super.super.isa;
  objc_storeWeak(&v68->_controller, accessoryCopy);
  v68->_configurationRefreshed = 0;
  v68->_maximumTargets = 16;
  v68->_ticksPerSecond = 1000;
  buttonConfiguration = v68->_buttonConfiguration;
  v68->_buttonConfiguration = MEMORY[0x277CBEBF8];

  v16 = [MEMORY[0x277CBEB58] set];
  configuredTargets = v68->_configuredTargets;
  v68->_configuredTargets = v16;

  v18 = 0x277CCA000;
  v67 = accessoryCopy;
  if (![targetsCopy count])
  {
    goto LABEL_22;
  }

  v19 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(targetsCopy, "count")}];
  v73 = 0u;
  v74 = 0u;
  v75 = 0u;
  v76 = 0u;
  v63 = targetsCopy;
  v20 = targetsCopy;
  v21 = v19;
  obj = v20;
  v72 = [v20 countByEnumeratingWithState:&v73 objects:v88 count:16];
  if (!v72)
  {
    goto LABEL_21;
  }

  v71 = *v74;
  v69 = v19;
  do
  {
    v22 = 0;
    do
    {
      if (*v74 != v71)
      {
        objc_enumerationMutation(obj);
      }

      v23 = *(*(&v73 + 1) + 8 * v22);
      v24 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v23];
      home = [accessoryCopy home];
      [v21 addObject:v24];
      v26 = [home accessoryWithUUID:v24];
      if (v26)
      {
        v27 = [[HMDTargetConfiguration alloc] initWithAccessory:v26 buttonConfiguration:0];
LABEL_14:
        [p_isa[3] addObject:v27];

        goto LABEL_15;
      }

      if (home)
      {
        uuid = [home uuid];
        v29 = identifierForTargetWithUUID(v24, uuid);

        v30 = objc_autoreleasePoolPush();
        v31 = p_isa;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543874;
          v81 = v33;
          v82 = 2112;
          v83 = v23;
          v84 = 2048;
          v85 = v29;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Unable to look up the target with UUID %@ - adding with identifier %lu", buf, 0x20u);

          accessoryCopy = v67;
        }

        objc_autoreleasePoolPop(v30);
        v34 = [HMDTargetConfiguration alloc];
        v35 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v29];
        v27 = [(HMDTargetConfiguration *)v34 initWithIdentifier:v35 name:0 category:0 buttonConfiguration:0];

        p_isa = &v68->super.super.isa;
        v21 = v69;
        goto LABEL_14;
      }

      v36 = objc_autoreleasePoolPush();
      v37 = p_isa;
      v38 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        v65 = HMFGetLogIdentifier();
        uUIDString = [v24 UUIDString];
        v40 = accessoryCopy;
        v41 = uUIDString;
        name = [v40 name];
        uuid2 = [v67 uuid];
        [uuid2 UUIDString];
        v43 = v66 = v36;
        *buf = 138544130;
        v81 = v65;
        v82 = 2112;
        v83 = v41;
        v84 = 2112;
        v85 = name;
        v86 = 2112;
        v87 = v43;
        _os_log_impl(&dword_2531F8000, v38, OS_LOG_TYPE_ERROR, "%{public}@Attempting to initialize target with UUID %@ for a controller %@/%@ that is not configured with a home", buf, 0x2Au);

        v36 = v66;
        accessoryCopy = v67;
        p_isa = &v68->super.super.isa;
      }

      objc_autoreleasePoolPop(v36);
      v21 = v69;
LABEL_15:

      ++v22;
    }

    while (v72 != v22);
    v44 = [obj countByEnumeratingWithState:&v73 objects:v88 count:16];
    v72 = v44;
  }

  while (v44);
LABEL_21:

  v78 = @"HMDTargetAccessoriesUUIDKey";
  v79 = v21;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
  v18 = 0x277CCA000uLL;
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter postNotificationName:@"HMDTargetAccessoryConfiguredNotificationKey" object:accessoryCopy userInfo:v45];

  targetsCopy = v63;
LABEL_22:
  v47 = MEMORY[0x277CCACA8];
  name2 = [accessoryCopy name];
  uuid3 = [accessoryCopy uuid];
  uUIDString2 = [uuid3 UUIDString];
  v51 = [v47 stringWithFormat:@"%@/%@", name2, uUIDString2];
  logID = v68->_logID;
  v68->_logID = v51;

  v8 = v68;
  v53 = objc_autoreleasePoolPush();
  v54 = v68;
  v55 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
  {
    v56 = HMFGetLogIdentifier();
    v57 = v68->_configuredTargets;
    *buf = 138543618;
    v81 = v56;
    v82 = 2112;
    v83 = v57;
    _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Initializing target controller manager with targets %@", buf, 0x16u);

    v8 = v68;
  }

  objc_autoreleasePoolPop(v53);
  defaultCenter2 = [*(v18 + 2968) defaultCenter];
  [defaultCenter2 addObserver:v54 selector:sel___accessoryNameUpdated_ name:@"HMDAccessoryNameUpdatedNotification" object:0];

  defaultCenter3 = [*(v18 + 2968) defaultCenter];
  [defaultCenter3 addObserver:v54 selector:sel___accessoryConfigured_ name:@"HMDAccessoryConnectedNotification" object:0];

  defaultCenter4 = [*(v18 + 2968) defaultCenter];
  [defaultCenter4 addObserver:v54 selector:sel___accessoryUnconfigured_ name:@"HMDAccessoryDisconnectedNotification" object:0];

  defaultCenter5 = [*(v18 + 2968) defaultCenter];
  [defaultCenter5 addObserver:v54 selector:sel___accessoryRemoved_ name:@"HMDHomeAccessoryRemovedNotification" object:0];

  accessoryCopy = v67;
LABEL_25:

  return v8;
}

- (HMDTargetControllerManager)init
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"%@ is unavailable", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t6_54056 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t6_54056, &__block_literal_global_54057);
  }

  v3 = logCategory__hmf_once_v7_54058;

  return v3;
}

uint64_t __41__HMDTargetControllerManager_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v7_54058;
  logCategory__hmf_once_v7_54058 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end