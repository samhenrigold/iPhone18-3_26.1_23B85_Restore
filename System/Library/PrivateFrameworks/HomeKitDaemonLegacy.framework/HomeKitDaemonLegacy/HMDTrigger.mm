@interface HMDTrigger
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)hasNoActions;
- (BOOL)isAssociatedWithAccessory:(id)accessory;
- (BOOL)isConfigured;
- (BOOL)isOwnedByThisDevice;
- (BOOL)modelContainsTriggerFired:(id)fired;
- (BOOL)supportsDeviceWithCapabilities:(id)capabilities;
- (HMDHome)home;
- (HMDTrigger)initWithCoder:(id)coder;
- (HMDTrigger)initWithModel:(id)model home:(id)home;
- (HMDTrigger)initWithName:(id)name uuid:(id)uuid;
- (NSArray)actionSets;
- (NSDictionary)actionContext;
- (NSDictionary)bulletinContext;
- (NSString)configuredName;
- (NSString)contextID;
- (NSString)name;
- (NSString)urlString;
- (id)_initWithCoder:(id)coder;
- (id)actionSetForKey:(id)key;
- (id)actionSetMapKeys;
- (id)attributeDescriptions;
- (id)backingStoreObjects:(int64_t)objects;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)emptyModelObject;
- (id)logIdentifier;
- (id)modelObjectWithChangeType:(unint64_t)type version:(id)version;
- (id)trimmedNameFromName:(id)name configuredName:(id)configuredName error:(id *)error;
- (id)updateEventTriggerMessage:(int)message message:(id)a4 relay:(BOOL)relay;
- (void)_actionSetsUpdated:(id)updated message:(id)message;
- (void)_activate:(BOOL)_activate completionHandler:(id)handler;
- (void)_activateTriggerRequest:(id)request;
- (void)_activateWithCompletion:(id)completion;
- (void)_addActionSet:(id)set;
- (void)_encodeWithCoder:(id)coder;
- (void)_executeActionSets:(id)sets captureCurrentState:(BOOL)state completionHandler:(id)handler;
- (void)_executeActionSetsWithCompletionHandler:(id)handler;
- (void)_fillBaseObjectChangeModel:(id)model;
- (void)_forceEvaluate;
- (void)_handleActivateTriggerRequest:(id)request;
- (void)_handleAddActionSetRequest:(id)request;
- (void)_handleAddTriggerOwnedActionSetRequest:(id)request;
- (void)_handleRemoveActionSetRequest:(id)request postUpdate:(BOOL)update;
- (void)_handleRemoveTriggerOwnedActionSetRequest:(id)request postUpdate:(BOOL)update;
- (void)_handleRemoveTriggerPolicyRequest:(id)request;
- (void)_handleRenameRequest:(id)request;
- (void)_handleTriggerUpdate:(id)update message:(id)message;
- (void)_handleUpdateActionSetRequest:(id)request;
- (void)_handleUpdateTriggerPolicyRequest:(id)request;
- (void)_recentFireDateUpdated:(id)updated;
- (void)_registerForMessages;
- (void)_renameRequest:(id)request;
- (void)_transactionObjectRemoved:(id)removed message:(id)message;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)_updateActionSetRequest:(id)request postUpdate:(BOOL)update;
- (void)activateAfterResidentChangeWithCompletion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue;
- (void)confirmResident;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)executeCompleteWithError:(id)error;
- (void)invalidate;
- (void)markChangedForMessage:(id)message triggerModel:(id)model;
- (void)reEvaluate:(unint64_t)evaluate;
- (void)removeActionSet:(id)set postUpdate:(BOOL)update;
- (void)removeActionSetForKey:(id)key;
- (void)removeAllActionSets;
- (void)sendTriggerFiredNotification:(id)notification;
- (void)setActionSetForKey:(id)key value:(id)value;
- (void)setConfiguredName:(id)name;
- (void)setEnabled:(BOOL)enabled message:(id)message;
- (void)setName:(id)name;
- (void)triggerFired;
- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler;
@end

@implementation HMDTrigger

- (HMDHome)home
{
  WeakRetained = objc_loadWeakRetained(&self->_home);

  return WeakRetained;
}

- (void)_addActionSet:(id)set
{
  setCopy = set;
  uuid = [setCopy uuid];
  uUIDString = [uuid UUIDString];

  [(HMDTrigger *)self setActionSetForKey:uUIDString value:setCopy];
}

- (BOOL)supportsDeviceWithCapabilities:(id)capabilities
{
  v18 = *MEMORY[0x277D85DE8];
  capabilitiesCopy = capabilities;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  actionSets = [(HMDTrigger *)self actionSets];
  v6 = [actionSets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    v9 = 1;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(actionSets);
        }

        v11 = *(*(&v13 + 1) + 8 * i);
        if ([v11 containsShortcutActions])
        {
          v9 &= [capabilitiesCopy supportsShortcutActions];
        }

        if ([v11 containsMediaPlaybackActions])
        {
          v9 &= [capabilitiesCopy supportsMediaActions];
        }
      }

      v7 = [actionSets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  else
  {
    LOBYTE(v9) = 1;
  }

  return v9 & 1;
}

- (void)confirmResident
{
  if ([(HMDTrigger *)self isConfigured])
  {
    home = [(HMDTrigger *)self home];
    residentDeviceManager = [home residentDeviceManager];

    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __29__HMDTrigger_confirmResident__block_invoke;
    v5[3] = &unk_2797359D8;
    v5[4] = self;
    [residentDeviceManager confirmWithCompletionHandler:v5];
  }
}

void __29__HMDTrigger_confirmResident__block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = *(a1 + 32);
  v6 = HMFGetOSLogHandle();
  v7 = v6;
  if (v3)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v8;
      v15 = 2112;
      v16 = v3;
      v9 = "%{public}@Failed to confirm primary resident with error: %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&dword_2531F8000, v10, v11, v9, &v13, v12);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v13 = 138543362;
    v14 = v8;
    v9 = "%{public}@Successfully confirmed primary resident";
    v10 = v7;
    v11 = OS_LOG_TYPE_INFO;
    v12 = 12;
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v4);
}

- (id)updateEventTriggerMessage:(int)message message:(id)a4 relay:(BOOL)relay
{
  v8 = a4;
  home = [(HMDTrigger *)self home];
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __54__HMDTrigger_updateEventTriggerMessage_message_relay___block_invoke;
  aBlock[3] = &unk_2797209D0;
  v10 = v8;
  v19 = v10;
  objc_copyWeak(&v21, &location);
  v11 = home;
  v20 = v11;
  messageCopy = message;
  relayCopy = relay;
  v12 = _Block_copy(aBlock);
  if (![v11 isSharedAdmin])
  {
    goto LABEL_5;
  }

  primaryResident = [v11 primaryResident];
  v14 = primaryResident;
  if (primaryResident && ([primaryResident isReachable] & 1) != 0)
  {

LABEL_5:
    v14 = [v10 mutableCopy];
    [v14 setResponseHandler:v12];
    [v14 setRemote:{objc_msgSend(v10, "isRemote")}];
    v15 = objc_msgSend_copy(v14);
    goto LABEL_7;
  }

  v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
  v12[2](v12, v16, 0);

  v15 = 0;
LABEL_7:

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  return v15;
}

void __54__HMDTrigger_updateEventTriggerMessage_message_relay___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v7 = objc_alloc_init(HomeKitEventTriggerUpdateLogEvent);
    v8 = [*(a1 + 32) remoteSourceID];

    if (v8)
    {
      v9 = 3;
    }

    else if ([*(a1 + 40) isOwnerUser])
    {
      v9 = 1;
    }

    else
    {
      if (![*(a1 + 40) isAdminUser])
      {
        goto LABEL_11;
      }

      v9 = 2;
    }

    v11 = [(HomeKitEventTriggerUpdateLogEvent *)v7 analyticsData];
    [v11 setRequestOrigin:v9];

LABEL_11:
    v12 = *(a1 + 56);
    v13 = [(HomeKitEventTriggerUpdateLogEvent *)v7 analyticsData];
    [v13 setUpdateType:v12];

    v14 = +[HMDMetricsManager sharedLogEventSubmitter];
    [v14 submitLogEvent:v7];

    if (!v20 && *(a1 + 60) == 1 && [*(a1 + 40) isSharedAdmin])
    {
      v15 = [*(a1 + 32) mutableCopy];
      [v15 setResponseHandler:0];
      v16 = [*(a1 + 40) administratorHandler];
      v17 = [v16 operationForMessage:v15 error:0];
      if (v17)
      {
        [v16 addOperation:v17];
      }
    }

    v18 = [*(a1 + 32) responseHandler];

    if (v18)
    {
      v19 = [*(a1 + 32) responseHandler];
      (v19)[2](v19, v20, v5);
    }

    goto LABEL_19;
  }

  v10 = [*(a1 + 32) responseHandler];

  if (!v10)
  {
    goto LABEL_20;
  }

  v7 = [*(a1 + 32) responseHandler];
  (*&v7->super._endTime)(v7, v20, v5);
LABEL_19:

LABEL_20:
}

- (id)emptyModelObject
{
  v2 = MEMORY[0x277CBEAD8];
  v3 = *MEMORY[0x277CBE658];
  v4 = MEMORY[0x277CCACA8];
  v5 = NSStringFromSelector(a2);
  v6 = [v4 stringWithFormat:@"You must override %@ in a subclass", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (id)backingStoreObjects:(int64_t)objects
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = MEMORY[0x277CCACA8];
  v6 = NSStringFromSelector(a2);
  v7 = [v5 stringWithFormat:@"You must override %@ in a subclass", v6];
  v8 = [v3 exceptionWithName:v4 reason:v7 userInfo:0];
  v9 = v8;

  objc_exception_throw(v8);
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(id)version
{
  versionCopy = version;
  v6 = MEMORY[0x277CBEAD8];
  v7 = *MEMORY[0x277CBE658];
  v8 = MEMORY[0x277CCACA8];
  v9 = NSStringFromSelector(a2);
  v10 = [v8 stringWithFormat:@"You must override %@ in a subclass", v9];
  v11 = [v6 exceptionWithName:v7 reason:v10 userInfo:0];
  v12 = v11;

  objc_exception_throw(v11);
}

- (void)_transactionObjectRemoved:(id)removed message:(id)message
{
  removedCopy = removed;
  messageCopy = message;
  v8 = MEMORY[0x277CBEAD8];
  v9 = *MEMORY[0x277CBE658];
  v10 = MEMORY[0x277CCACA8];
  v11 = NSStringFromSelector(a2);
  v12 = [v10 stringWithFormat:@"You must override %@ in a subclass", v11];
  v13 = [v8 exceptionWithName:v9 reason:v12 userInfo:0];
  v14 = v13;

  objc_exception_throw(v13);
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = MEMORY[0x277CBEAD8];
  v12 = *MEMORY[0x277CBE658];
  v13 = MEMORY[0x277CCACA8];
  v14 = NSStringFromSelector(a2);
  v15 = [v13 stringWithFormat:@"You must override %@ in a subclass", v14];
  v16 = [v11 exceptionWithName:v12 reason:v15 userInfo:0];
  v17 = v16;

  objc_exception_throw(v16);
}

- (void)_encodeWithCoder:(id)coder
{
  v29 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  home = [(HMDTrigger *)self home];
  [coderCopy encodeConditionalObject:home forKey:@"home"];
  name = [(HMDTrigger *)self name];
  [coderCopy encodeObject:name forKey:@"triggerName"];

  uuid = [(HMDTrigger *)self uuid];
  uUIDString = [uuid UUIDString];
  [coderCopy encodeObject:uUIDString forKey:@"triggerUUID"];

  actionSets = [(HMDTrigger *)self actionSets];
  [coderCopy encodeObject:actionSets forKey:@"triggerActionSets"];

  [coderCopy encodeBool:-[HMDTrigger active](self forKey:{"active"), @"triggerActive"}];
  configuredName = [(HMDTrigger *)self configuredName];
  [coderCopy encodeObject:configuredName forKey:*MEMORY[0x277CD1248]];

  LODWORD(configuredName) = [coderCopy hmd_isForXPCTransport];
  hmd_isForXPCTransportEntitledForSPIAccess = [coderCopy hmd_isForXPCTransportEntitledForSPIAccess];
  if (!configuredName)
  {
    actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
    [coderCopy encodeObject:actionSetUUIDs forKey:@"triggerActionSetUUIDs"];

    owningDevice = [(HMDTrigger *)self owningDevice];
    [coderCopy encodeObject:owningDevice forKey:@"HM.device"];

    owner = [(HMDTrigger *)self owner];
    [coderCopy encodeObject:owner forKey:@"HM.user"];

    policy = [(HMDTrigger *)self policy];
    [coderCopy encodeObject:policy forKey:*MEMORY[0x277CD1270]];

    goto LABEL_8;
  }

  v12 = hmd_isForXPCTransportEntitledForSPIAccess;
  v13 = [(HMDTrigger *)self shouldEncodeLastFireDate:coderCopy];
  if (!v12)
  {
    goto LABEL_5;
  }

  policy2 = [(HMDTrigger *)self policy];
  [coderCopy encodeObject:policy2 forKey:*MEMORY[0x277CD1270]];

  owningDevice2 = [(HMDTrigger *)self owningDevice];
  [coderCopy encodeObject:owningDevice2 forKey:@"HM.device"];

  owner2 = [(HMDTrigger *)self owner];

  if (owner2)
  {
    owner3 = [(HMDTrigger *)self owner];
    [coderCopy encodeObject:owner3 forKey:@"HM.user"];

LABEL_5:
    if (!v13)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
  {
    v26 = HMFGetLogIdentifier();
    v27 = 138543362;
    v28 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_ERROR, "%{public}@Owner user is not set in the trigger", &v27, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  if (v13)
  {
LABEL_8:
    mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
    [coderCopy encodeObject:mostRecentFireDate forKey:@"triggerLastFireDate"];
  }

LABEL_9:
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v4 = objc_autoreleasePoolPush();
  [(HMDTrigger *)self _encodeWithCoder:coderCopy];
  objc_autoreleasePoolPop(v4);
}

- (id)_initWithCoder:(id)coder
{
  v52[2] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerName"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerUUID"];
  v7 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v6];
  v8 = [(HMDTrigger *)self initWithName:v5 uuid:v7];
  if (v8)
  {
    v42 = v7;
    v43 = v6;
    v44 = v5;
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"home"];
    objc_storeWeak(&v8->_home, v9);

    v10 = MEMORY[0x277CBEB98];
    v52[0] = objc_opt_class();
    v52[1] = objc_opt_class();
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
    v12 = [v10 setWithArray:v11];

    v13 = MEMORY[0x277CBEB98];
    v51[0] = objc_opt_class();
    v51[1] = objc_opt_class();
    v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:2];
    v15 = [v13 setWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"triggerActionSetUUIDs"];

    v41 = v12;
    v17 = [coderCopy decodeObjectOfClasses:v12 forKey:@"triggerActionSets"];
    v45 = 0u;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v18 = [v17 countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v46;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v46 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = *(*(&v45 + 1) + 8 * i);
          uuid = [v22 uuid];
          uUIDString = [uuid UUIDString];
          [(HMDTrigger *)v8 setActionSetForKey:uUIDString value:v22];
        }

        v19 = [v17 countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v19);
    }

    if (v16)
    {
      actionSetMapKeys = [v16 mutableCopy];
      [(HMDTrigger *)v8 setActionSetUUIDs:actionSetMapKeys];
    }

    else
    {
      actionSetMapKeys = [(HMDTrigger *)v8 actionSetMapKeys];
      v26 = [actionSetMapKeys mutableCopy];
      [(HMDTrigger *)v8 setActionSetUUIDs:v26];
    }

    v7 = v42;
    v6 = v43;

    -[HMDTrigger setActive:](v8, "setActive:", [coderCopy decodeBoolForKey:@"triggerActive"]);
    v27 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"triggerLastFireDate"];
    [(HMDTrigger *)v8 setMostRecentFireDate:v27];

    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.user"];
    owner = v8->_owner;
    v8->_owner = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"HM.device"];
    owningDevice = v8->_owningDevice;
    v8->_owningDevice = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:*MEMORY[0x277CD1248]];
    hm_truncatedNameString = [v32 hm_truncatedNameString];
    configuredName = v8->_configuredName;
    v8->_configuredName = hm_truncatedNameString;

    v35 = MEMORY[0x277CBEB98];
    v49 = objc_opt_class();
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
    v37 = [v35 setWithArray:v36];

    v38 = [coderCopy decodeObjectOfClasses:v37 forKey:*MEMORY[0x277CD1270]];
    policy = v8->_policy;
    v8->_policy = v38;

    v5 = v44;
  }

  return v8;
}

- (HMDTrigger)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = objc_autoreleasePoolPush();
  v6 = [(HMDTrigger *)self _initWithCoder:coderCopy];
  objc_autoreleasePoolPop(v5);

  return v6;
}

- (void)executeCompleteWithError:(id)error
{
  v17 = *MEMORY[0x277D85DE8];
  errorCopy = error;
  policy = [(HMDTrigger *)self policy];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = policy;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543618;
      v14 = v11;
      v15 = 2112;
      v16 = errorCopy;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger is marked to be deleted after execution (finished with error: %@), removing...", &v13, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    home = [(HMDTrigger *)selfCopy home];
    [home removeTrigger:selfCopy];
  }
}

- (void)_handleTriggerUpdate:(id)update message:(id)message
{
  v84 = *MEMORY[0x277D85DE8];
  updateCopy = update;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    setProperties = [updateCopy setProperties];
    *buf = 138543874;
    v75 = v11;
    v76 = 2112;
    v77 = updateCopy;
    v78 = 2112;
    v79 = setProperties;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Handling base trigger update: %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  setProperties2 = [updateCopy setProperties];
  v14 = [setProperties2 containsObject:@"currentActionSets"];

  if (v14)
  {
    [(HMDTrigger *)selfCopy _actionSetsUpdated:updateCopy message:messageCopy];
  }

  setProperties3 = [updateCopy setProperties];
  v16 = 0x277CBE000;
  if ([setProperties3 containsObject:@"name"])
  {
  }

  else
  {
    setProperties4 = [updateCopy setProperties];
    v18 = [setProperties4 containsObject:@"configuredName"];

    if (!v18)
    {
      goto LABEL_13;
    }
  }

  name = [(HMDTrigger *)selfCopy name];
  configuredName = [(HMDTrigger *)selfCopy configuredName];
  name2 = [updateCopy name];
  [(HMDTrigger *)selfCopy setName:name2];

  configuredName2 = [updateCopy configuredName];
  [(HMDTrigger *)selfCopy setConfiguredName:configuredName2];

  v22 = objc_autoreleasePoolPush();
  v23 = selfCopy;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    v25 = HMFGetLogIdentifier();
    name3 = [(HMDTrigger *)v23 name];
    configuredName3 = [(HMDTrigger *)v23 configuredName];
    *buf = 138544386;
    v75 = v25;
    v76 = 2112;
    v77 = name;
    v78 = 2112;
    v79 = name3;
    v80 = 2112;
    v81 = configuredName;
    v82 = 2112;
    v83 = configuredName3;
    _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Parameter configured From : [%@, %@] To: [%@, %@]", buf, 0x34u);

    v16 = 0x277CBE000uLL;
  }

  objc_autoreleasePoolPop(v22);
  v28 = *(v16 + 2872);
  messagePayload = [messageCopy messagePayload];
  v30 = [v28 dictionaryWithDictionary:messagePayload];

  name4 = [(HMDTrigger *)v23 name];
  [v30 setObject:name4 forKeyedSubscript:*MEMORY[0x277CD2758]];

  configuredName4 = [(HMDTrigger *)v23 configuredName];
  [v30 setObject:configuredName4 forKeyedSubscript:*MEMORY[0x277CD1250]];

  v33 = HMDRemoteMessagePayloadKeysForTransportMetadata();
  [v30 removeObjectsForKeys:v33];

  v34 = objc_autoreleasePoolPush();
  v35 = v23;
  v36 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = HMFGetLogIdentifier();
    *buf = 138543618;
    v75 = v37;
    v76 = 2112;
    v77 = v30;
    _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@name parameter configured : payload : %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v34);
  [messageCopy respondWithPayload:v30];

LABEL_13:
  setProperties5 = [updateCopy setProperties];
  v39 = [setProperties5 containsObject:@"mostRecentFireDate"];

  if (v39)
  {
    mostRecentFireDate = [updateCopy mostRecentFireDate];
    [(HMDTrigger *)selfCopy _recentFireDateUpdated:mostRecentFireDate];
  }

  setProperties6 = [updateCopy setProperties];
  v42 = [setProperties6 containsObject:@"owner"];

  if (v42)
  {
    home = [(HMDTrigger *)selfCopy home];
    owner = [updateCopy owner];
    uuid = [owner uuid];
    v46 = [home userWithUUID:uuid];
    [(HMDTrigger *)selfCopy setOwner:v46];

    [messageCopy respondWithPayload:0];
  }

  setProperties7 = [updateCopy setProperties];
  v48 = [setProperties7 containsObject:@"owningDevice"];

  if (v48)
  {
    owningDevice = [updateCopy owningDevice];
    [(HMDTrigger *)selfCopy setOwningDevice:owningDevice];

    v72[0] = *MEMORY[0x277CD2768];
    uuid2 = [(HMDTrigger *)selfCopy uuid];
    uUIDString = [uuid2 UUIDString];
    v72[1] = @"HM.device";
    v73[0] = uUIDString;
    owningDevice2 = [(HMDTrigger *)selfCopy owningDevice];
    v53 = encodeRootObjectForIncomingXPCMessage(owningDevice2, 0);
    v73[1] = v53;
    v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:v72 count:2];

    [messageCopy respondWithPayload:v54];
  }

  setProperties8 = [updateCopy setProperties];
  v56 = [setProperties8 containsObject:@"active"];

  if (v56)
  {
    active = [updateCopy active];
    -[HMDTrigger setActive:](selfCopy, "setActive:", [active BOOLValue]);

    v70 = *MEMORY[0x277CD2730];
    v58 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDTrigger active](selfCopy, "active")}];
    v71 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];

    [messageCopy respondWithPayload:v59];
  }

  setProperties9 = [updateCopy setProperties];
  v61 = [setProperties9 containsObject:@"autoDelete"];

  if (v61)
  {
    autoDelete = [updateCopy autoDelete];
    bOOLValue = [autoDelete BOOLValue];

    if (bOOLValue)
    {
      v64 = objc_alloc_init(HMDTriggerDeleteAfterExecutionPolicy);
      [(HMDTrigger *)selfCopy setPolicy:v64];

      policy = [(HMDTrigger *)selfCopy policy];
      uuid3 = [policy uuid];
    }

    else
    {
      [(HMDTrigger *)selfCopy setPolicy:0];
      uuid3 = 0;
    }

    v67 = [*(v16 + 2872) dictionaryWithCapacity:1];
    if (uuid3)
    {
      uUIDString2 = [uuid3 UUIDString];
      [v67 setObject:uUIDString2 forKeyedSubscript:*MEMORY[0x277CD1288]];
    }

    [messageCopy respondWithPayload:v67];
  }

  [(HMDTrigger *)selfCopy markChangedForMessage:messageCopy triggerModel:updateCopy];
}

- (void)_fillBaseObjectChangeModel:(id)model
{
  modelCopy = model;
  name = [(HMDTrigger *)self name];
  [modelCopy setName:name];

  configuredName = [(HMDTrigger *)self configuredName];
  [modelCopy setConfiguredName:configuredName];

  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDTrigger active](self, "active")}];
  [modelCopy setActive:v7];

  actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
  v9 = objc_msgSend_copy(actionSetUUIDs);
  [modelCopy setCurrentActionSets:v9];

  mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
  [modelCopy setMostRecentFireDate:mostRecentFireDate];

  owner = [(HMDTrigger *)self owner];
  [modelCopy setOwner:owner];

  owningDevice = [(HMDTrigger *)self owningDevice];
  [modelCopy setOwningDevice:owningDevice];

  policy = [(HMDTrigger *)self policy];
  objc_opt_class();
  LOBYTE(owningDevice) = objc_opt_isKindOfClass();

  v14 = [MEMORY[0x277CCABB0] numberWithBool:owningDevice & (policy != 0)];
  [modelCopy setAutoDelete:v14];
}

- (void)_registerForMessages
{
  v29[4] = *MEMORY[0x277D85DE8];
  v23 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v23 setRoles:{objc_msgSend(v23, "roles") | 4}];
  v3 = objc_msgSend_copy(v23);
  home = [(HMDTrigger *)self home];
  v4 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  v6 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v29[0] = v6;
  v29[1] = v3;
  v29[2] = v4;
  v7 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v29[3] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:4];
  [msgDispatcher registerForMessage:@"kRenameTriggerRequestKey" receiver:self policies:v8 selector:sel__handleRenameRequest_];

  v9 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v28[0] = v9;
  v28[1] = v3;
  v28[2] = v4;
  v10 = [HMDConfigurationMessagePolicy policyWithOperationTypes:5];
  v28[3] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
  [msgDispatcher registerForMessage:@"kUpdateActionSetTriggerRequestKey" receiver:self policies:v11 selector:sel__handleUpdateActionSetRequest_];

  v12 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v27[0] = v12;
  v27[1] = v3;
  v27[2] = v4;
  v13 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v27[3] = v13;
  v14 = [MEMORY[0x277CBEA60] arrayWithObjects:v27 count:4];
  [msgDispatcher registerForMessage:@"kActivateTriggerRequestKey" receiver:self policies:v14 selector:sel__handleActivateTriggerRequest_];

  v15 = *MEMORY[0x277CD1298];
  v16 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v26[0] = v16;
  v26[1] = v3;
  v26[2] = v4;
  v17 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v26[3] = v17;
  v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:4];
  [msgDispatcher registerForMessage:v15 receiver:self policies:v18 selector:sel__handleUpdateTriggerPolicyRequest_];

  v19 = *MEMORY[0x277CD1290];
  v20 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v25[0] = v20;
  v25[1] = v3;
  v25[2] = v4;
  v21 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v25[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v25 count:4];
  [msgDispatcher registerForMessage:v19 receiver:self policies:v22 selector:sel__handleRemoveTriggerPolicyRequest_];
}

- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler
{
  v5 = MEMORY[0x277CCA9B8];
  handlerCopy = handler;
  v7 = [v5 hmErrorWithCode:22];
  (*(handler + 2))(handlerCopy, v7);
}

- (void)_executeActionSets:(id)sets captureCurrentState:(BOOL)state completionHandler:(id)handler
{
  stateCopy = state;
  v59 = *MEMORY[0x277D85DE8];
  setsCopy = sets;
  handlerCopy = handler;
  v7 = objc_autoreleasePoolPush();
  selfCopy = self;
  v9 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = HMFGetLogIdentifier();
    *buf = 138543618;
    *&buf[4] = v10;
    *&buf[12] = 2112;
    *&buf[14] = setsCopy;
    _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Executing action sets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v7);
  v11 = +[HMDLostModeManager sharedManager];
  isLost = [v11 isLost];

  if (isLost)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = selfCopy;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = HMFGetLogIdentifier();
      *buf = 138543362;
      *&buf[4] = v16;
      _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_DEFAULT, "%{public}@Not executing action sets: device is in lost mode", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v13);
    v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:10];
    handlerCopy[2](handlerCopy, v36, 0);
  }

  else
  {
    msgDispatcher = [(HMDTrigger *)selfCopy msgDispatcher];
    v18 = msgDispatcher == 0;

    if (v18)
    {
      v26 = objc_autoreleasePoolPush();
      v27 = selfCopy;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        *buf = 138543362;
        *&buf[4] = v29;
        _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_ERROR, "%{public}@Not executing action sets: trigger is unconfigured", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v26);
      v36 = [MEMORY[0x277CCA9B8] hmErrorWithCode:21];
      handlerCopy[2](handlerCopy, v36, 0);
    }

    else
    {
      v36 = [setsCopy na_filter:&__block_literal_global_67];
      if ([v36 count])
      {
        v19 = dispatch_group_create();
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x3032000000;
        v56 = __Block_byref_object_copy__544;
        v57 = __Block_byref_object_dispose__545;
        v58 = 0;
        v52[0] = 0;
        v52[1] = v52;
        v52[2] = 0x3032000000;
        v52[3] = __Block_byref_object_copy__544;
        v52[4] = __Block_byref_object_dispose__545;
        dictionary = [MEMORY[0x277CBEB38] dictionary];
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        obj = v36;
        v20 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
        if (v20)
        {
          v21 = *v49;
          do
          {
            v22 = 0;
            do
            {
              if (*v49 != v21)
              {
                objc_enumerationMutation(obj);
              }

              v23 = *(*(&v48 + 1) + 8 * v22);
              dispatch_group_enter(v19);
              v43[0] = MEMORY[0x277D85DD0];
              v43[1] = 3221225472;
              v43[2] = __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_68;
              v43[3] = &unk_2797209A8;
              v43[4] = selfCopy;
              v46 = buf;
              v24 = v19;
              v47 = v52;
              v44 = v24;
              v45 = v23;
              [v23 executeWithTriggerSource:selfCopy captureCurrentState:stateCopy completionHandler:v43];

              ++v22;
            }

            while (v20 != v22);
            v20 = [obj countByEnumeratingWithState:&v48 objects:v54 count:16];
          }

          while (v20);
        }

        workQueue = [(HMDTrigger *)selfCopy workQueue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_3;
        block[3] = &unk_27972C358;
        v40 = handlerCopy;
        v41 = buf;
        v42 = v52;
        dispatch_group_notify(v19, workQueue, block);

        _Block_object_dispose(v52, 8);
        _Block_object_dispose(buf, 8);
      }

      else
      {
        v30 = objc_autoreleasePoolPush();
        v31 = selfCopy;
        v32 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = HMFGetLogIdentifier();
          *buf = 138543362;
          *&buf[4] = v33;
          _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_ERROR, "%{public}@Not executing action sets: all action sets have an empty list of actions", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v30);
        v19 = [MEMORY[0x277CCA9B8] hmErrorWithCode:25];
        handlerCopy[2](handlerCopy, v19, 0);
      }
    }
  }
}

void __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_68(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [*(a1 + 32) workQueue];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_2;
  v14[3] = &unk_27972D2F0;
  v8 = *(a1 + 56);
  v15 = v5;
  v19 = v8;
  v9 = *(a1 + 40);
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v16 = v9;
  v17 = v11;
  v20 = v10;
  v18 = v6;
  v12 = v6;
  v13 = v5;
  dispatch_async(v7, v14);
}

void __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    objc_storeStrong((*(*(a1 + 64) + 8) + 40), v2);
  }

  dispatch_group_leave(*(a1 + 40));
  v3 = *(*(*(a1 + 72) + 8) + 40);
  v4 = *(a1 + 56);
  v5 = [*(a1 + 48) uuid];
  [v3 setObject:v4 forKeyedSubscript:v5];
}

BOOL __71__HMDTrigger__executeActionSets_captureCurrentState_completionHandler___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 actions];
  v3 = [v2 count] != 0;

  return v3;
}

- (void)_executeActionSetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  actionSets = [(HMDTrigger *)self actionSets];
  [(HMDTrigger *)self _executeActionSets:actionSets captureCurrentState:0 completionHandler:handlerCopy];
}

- (void)_handleRemoveTriggerPolicyRequest:(id)request
{
  v21 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  policy = [(HMDTrigger *)self policy];

  if (policy)
  {
    emptyModelObject = [(HMDTrigger *)self emptyModelObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = emptyModelObject;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [MEMORY[0x277CCABB0] numberWithBool:0];
    [v8 setAutoDelete:v9];

    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [backingStore transaction:name options:v13];

    [v14 add:v8 withMessage:requestCopy];
    [v14 run];
  }

  else
  {
    v15 = objc_autoreleasePoolPush();
    selfCopy = self;
    v17 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = HMFGetLogIdentifier();
      v19 = 138543362;
      v20 = v18;
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Policy already removed", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    [requestCopy respondWithSuccess];
  }
}

- (void)_handleUpdateTriggerPolicyRequest:(id)request
{
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  home = [(HMDTrigger *)self home];
  if (home)
  {
    v6 = [requestCopy dictionaryForKey:*MEMORY[0x277CD1278]];
    v25 = 0;
    v7 = [v6 hmf_BOOLForKey:*MEMORY[0x277CD1260] isPresent:&v25];
    if (v25)
    {
      v8 = v7;
      emptyModelObject = [(HMDTrigger *)self emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = emptyModelObject;
      }

      else
      {
        v10 = 0;
      }

      v11 = v10;

      v12 = [MEMORY[0x277CCABB0] numberWithBool:v8];
      [v11 setAutoDelete:v12];

      backingStore = [home backingStore];
      name = [requestCopy name];
      v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v16 = [backingStore transaction:name options:v15];

      [v16 add:v11 withMessage:requestCopy];
      [v16 run];
    }

    else
    {
      v21 = objc_autoreleasePoolPush();
      selfCopy = self;
      v23 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543362;
        v27 = v24;
        _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_ERROR, "%{public}@Invalid payload for update policy request", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v21);
      v16 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
      [requestCopy respondWithError:v16];
    }
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543362;
      v27 = v20;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_ERROR, "%{public}@Trigger not associated to a home", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v17);
    v6 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestCopy respondWithError:v6];
  }
}

- (void)_activateTriggerRequest:(id)request
{
  requestCopy = request;
  home = [(HMDTrigger *)self home];
  if (home)
  {
    v5 = [requestCopy numberForKey:*MEMORY[0x277CD2730]];
    if (v5)
    {
      responseHandler2 = v5;
      -[HMDTrigger setEnabled:message:](self, "setEnabled:message:", [v5 BOOLValue], requestCopy);
    }

    else
    {
      v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
      responseHandler = [requestCopy responseHandler];
      (responseHandler)[2](responseHandler, v8, 0);

      responseHandler2 = 0;
    }
  }

  else
  {
    responseHandler2 = [requestCopy responseHandler];
    v7 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    (responseHandler2)[2](responseHandler2, v7, 0);
  }
}

- (void)_handleActivateTriggerRequest:(id)request
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:10 message:request relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDTrigger *)self _activateTriggerRequest:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_actionSetsUpdated:(id)updated message:(id)message
{
  v109 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  messageCopy = message;
  v7 = MEMORY[0x277CBEB58];
  v73 = updatedCopy;
  currentActionSets = [updatedCopy currentActionSets];
  v9 = [v7 setWithArray:currentActionSets];

  v10 = MEMORY[0x277CBEB58];
  actionSetMapKeys = [(HMDTrigger *)self actionSetMapKeys];
  v12 = [v10 setWithArray:actionSetMapKeys];

  v74 = v12;
  v75 = v9;
  [v9 minusSet:v12];
  v13 = objc_autoreleasePoolPush();
  selfCopy = self;
  v15 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
  {
    v16 = HMFGetLogIdentifier();
    *buf = 138543618;
    v106 = v16;
    v107 = 2112;
    v108 = v9;
    _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@addedActionSets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v13);
  v17 = MEMORY[0x277CBEB98];
  currentActionSets2 = [v73 currentActionSets];
  v19 = [v17 setWithArray:currentActionSets2];
  v20 = v74;
  [v74 minusSet:v19];

  v21 = objc_autoreleasePoolPush();
  v22 = selfCopy;
  v23 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
  {
    v24 = HMFGetLogIdentifier();
    *buf = 138543618;
    v106 = v24;
    v107 = 2112;
    v108 = v74;
    _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@removedActionSets: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v21);
  v89 = v22;
  if ([v75 count])
  {
    home = [(HMDTrigger *)v22 home];
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v26 = v75;
    v88 = [v26 countByEnumeratingWithState:&v95 objects:v104 count:16];
    if (v88)
    {
      v77 = 0;
      v86 = *v96;
      v84 = *MEMORY[0x277CD2728];
      v82 = *MEMORY[0x277CD2040];
      v80 = *MEMORY[0x277CD2720];
      v78 = *MEMORY[0x277CD2738];
      obj = v26;
      do
      {
        v27 = 0;
        do
        {
          if (*v96 != v86)
          {
            objc_enumerationMutation(obj);
          }

          v28 = *(*(&v95 + 1) + 8 * v27);
          v29 = objc_autoreleasePoolPush();
          v30 = v22;
          v31 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            v32 = HMFGetLogIdentifier();
            *buf = 138543618;
            v106 = v32;
            v107 = 2112;
            v108 = v28;
            _os_log_impl(&dword_2531F8000, v31, OS_LOG_TYPE_INFO, "%{public}@Action set %@ has been added", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v29);
          v33 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v28];
          v34 = [home actionSetWithUUID:v33];
          if (v34 || ([home triggerOwnedActionSetWithUUID:v33], (v34 = objc_claimAutoreleasedReturnValue()) != 0))
          {
            v35 = v34;
            if (([v34 containsShortcutActions] & 1) != 0 || objc_msgSend(v35, "containsMediaPlaybackActions"))
            {
              v77 = 1;
            }

            [(HMDTrigger *)v30 setActionSetForKey:v28 value:v35];
            actionSetUUIDs = [(HMDTrigger *)v30 actionSetUUIDs];
            v37 = [actionSetUUIDs containsObject:v28];

            if ((v37 & 1) == 0)
            {
              actionSetUUIDs2 = [(HMDTrigger *)v30 actionSetUUIDs];
              [actionSetUUIDs2 addObject:v28];
            }

            v103[0] = v28;
            v102[0] = v84;
            v102[1] = v82;
            name = [v35 name];
            v103[1] = name;
            v102[2] = v80;
            type = [v35 type];
            v102[3] = v78;
            v103[2] = type;
            v103[3] = MEMORY[0x277CBEC38];
            v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:4];

            v42 = objc_autoreleasePoolPush();
            v43 = v30;
            v44 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v44, OS_LOG_TYPE_INFO))
            {
              v45 = HMFGetLogIdentifier();
              *buf = 138543362;
              v106 = v45;
              _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_INFO, "%{public}@Responding to clients that actionSet has been added to the trigger.", buf, 0xCu);

              v22 = v89;
            }

            objc_autoreleasePoolPop(v42);
            [messageCopy respondWithPayload:v41];
          }

          else
          {
            v46 = objc_autoreleasePoolPush();
            v47 = v30;
            v48 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
            {
              v49 = HMFGetLogIdentifier();
              *buf = 138543618;
              v106 = v49;
              v107 = 2112;
              v108 = v28;
              _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_INFO, "%{public}@Action set %@ could not be found", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v46);
          }

          ++v27;
        }

        while (v88 != v27);
        v50 = [obj countByEnumeratingWithState:&v95 objects:v104 count:16];
        v88 = v50;
      }

      while (v50);

      if (v77)
      {
        [(HMDTrigger *)v30 confirmResident];
      }
    }

    else
    {
    }

    v20 = v74;
  }

  if ([v20 count])
  {
    v93 = 0u;
    v94 = 0u;
    v91 = 0u;
    v92 = 0u;
    v79 = v20;
    v51 = [v79 countByEnumeratingWithState:&v91 objects:v101 count:16];
    if (v51)
    {
      v52 = v51;
      v53 = *v92;
      v85 = *MEMORY[0x277CD2040];
      v87 = *MEMORY[0x277CD2728];
      v81 = *MEMORY[0x277CD2738];
      v83 = *MEMORY[0x277CD2720];
      do
      {
        for (i = 0; i != v52; ++i)
        {
          if (*v92 != v53)
          {
            objc_enumerationMutation(v79);
          }

          v55 = *(*(&v91 + 1) + 8 * i);
          v56 = objc_autoreleasePoolPush();
          v57 = v22;
          v58 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v58, OS_LOG_TYPE_INFO))
          {
            v59 = HMFGetLogIdentifier();
            *buf = 138543618;
            v106 = v59;
            v107 = 2112;
            v108 = v55;
            _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_INFO, "%{public}@Action set %@ has been deleted", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v56);
          v60 = [(HMDTrigger *)v57 actionSetForKey:v55];
          if (v60)
          {
            [(HMDTrigger *)v57 removeActionSetForKey:v55];
            actionSetUUIDs3 = [(HMDTrigger *)v57 actionSetUUIDs];
            [actionSetUUIDs3 removeObject:v55];

            v100[0] = v55;
            v99[0] = v87;
            v99[1] = v85;
            name2 = [v60 name];
            v100[1] = name2;
            v99[2] = v83;
            type2 = [v60 type];
            v99[3] = v81;
            v100[2] = type2;
            v100[3] = MEMORY[0x277CBEC28];
            v64 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v100 forKeys:v99 count:4];

            v65 = objc_autoreleasePoolPush();
            v66 = v57;
            v67 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_INFO))
            {
              v68 = HMFGetLogIdentifier();
              *buf = 138543362;
              v106 = v68;
              _os_log_impl(&dword_2531F8000, v67, OS_LOG_TYPE_INFO, "%{public}@Notifying clients that actionSet has been removed from the trigger.", buf, 0xCu);
            }

            objc_autoreleasePoolPop(v65);
            [messageCopy respondWithPayload:v64];

            v22 = v89;
          }

          else
          {
            v69 = objc_autoreleasePoolPush();
            v70 = v57;
            v71 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_INFO))
            {
              v72 = HMFGetLogIdentifier();
              *buf = 138543618;
              v106 = v72;
              v107 = 2112;
              v108 = v55;
              _os_log_impl(&dword_2531F8000, v71, OS_LOG_TYPE_INFO, "%{public}@Action set %@ could not be found", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v69);
          }
        }

        v52 = [v79 countByEnumeratingWithState:&v91 objects:v101 count:16];
      }

      while (v52);
    }

    v20 = v74;
  }
}

- (void)_updateActionSetRequest:(id)request postUpdate:(BOOL)update
{
  updateCopy = update;
  requestCopy = request;
  v6 = [requestCopy numberForKey:*MEMORY[0x277CD2738]];
  if (v6)
  {
    home = [(HMDTrigger *)self home];
    if (home)
    {
      v8 = home;
      responseHandler2 = [requestCopy stringForKey:*MEMORY[0x277CD2720]];
      v10 = [responseHandler2 isEqualToString:*MEMORY[0x277CCF1A0]];
      bOOLValue = [v6 BOOLValue];
      if (v10)
      {
        if ([requestCopy isEntitledForSPIAccess] & 1) != 0 || (objc_msgSend(requestCopy, "isRemote"))
        {
          if (bOOLValue)
          {
            [(HMDTrigger *)self _handleAddTriggerOwnedActionSetRequest:requestCopy];
          }

          else
          {
            [(HMDTrigger *)self _handleRemoveTriggerOwnedActionSetRequest:requestCopy postUpdate:updateCopy];
          }
        }

        else
        {
          responseHandler = [requestCopy responseHandler];
          v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
          (responseHandler)[2](responseHandler, v14, 0);
        }
      }

      else if (bOOLValue)
      {
        [(HMDTrigger *)self _handleAddActionSetRequest:requestCopy];
      }

      else
      {
        [(HMDTrigger *)self _handleRemoveActionSetRequest:requestCopy postUpdate:updateCopy];
      }
    }

    else
    {
      responseHandler2 = [requestCopy responseHandler];
      v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
      (responseHandler2)[2](responseHandler2, v12, 0);

      v8 = 0;
    }
  }

  else
  {
    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:20 userInfo:0];
    responseHandler2 = [requestCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v8, 0);
  }
}

- (void)_handleUpdateActionSetRequest:(id)request
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:9 message:request relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDTrigger *)self _updateActionSetRequest:v4 postUpdate:1];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_handleRemoveTriggerOwnedActionSetRequest:(id)request postUpdate:(BOOL)update
{
  updateCopy = update;
  v29 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy uuidForKey:*MEMORY[0x277CD2728]];
  if (v7)
  {
    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v11 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v12 = [backingStore transaction:name options:v11];

    v13 = [HMDActionSetModel alloc];
    uuid = [home uuid];
    v15 = [(HMDBackingStoreModelObject *)v13 initWithObjectChangeType:3 uuid:v7 parentUUID:uuid];

    [v12 add:v15 withMessage:0];
    if (updateCopy)
    {
      emptyModelObject = [(HMDTrigger *)self emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v17 = emptyModelObject;
      }

      else
      {
        v17 = 0;
      }

      v18 = v17;

      actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
      uUIDString = [v7 UUIDString];
      [actionSetUUIDs removeObject:uUIDString];

      actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
      v22 = objc_msgSend_copy(actionSetUUIDs2);
      [v18 setCurrentActionSets:v22];

      [v12 add:v18 withMessage:requestCopy];
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v27 = 138543362;
        v28 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Remove of trigger owned action set, not posting event trigger update model as requested", &v27, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }

    [v12 run];
  }

  else
  {
    home = [requestCopy responseHandler];
    v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (home)[2](home, v12, 0);
  }
}

- (void)_handleRemoveActionSetRequest:(id)request postUpdate:(BOOL)update
{
  updateCopy = update;
  v28 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v7 = [requestCopy uuidForKey:*MEMORY[0x277CD2728]];
  if (v7)
  {
    if (updateCopy)
    {
      emptyModelObject = [(HMDTrigger *)self emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v9 = emptyModelObject;
      }

      else
      {
        v9 = 0;
      }

      v10 = v9;

      actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
      uUIDString = [v7 UUIDString];
      [actionSetUUIDs removeObject:uUIDString];

      actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
      v14 = objc_msgSend_copy(actionSetUUIDs2);
      [v10 setCurrentActionSets:v14];

      home = [(HMDTrigger *)self home];
      backingStore = [home backingStore];
      name = [requestCopy name];
      v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v19 = [backingStore transaction:name options:v18];

      [v19 add:v10 withMessage:requestCopy];
      [v19 run];
    }

    else
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
      {
        v25 = HMFGetLogIdentifier();
        v26 = 138543362;
        v27 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Remove of trigger action set, not posting event trigger update model as requested", &v26, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    responseHandler = [requestCopy responseHandler];
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (responseHandler)[2](responseHandler, v21, 0);
  }
}

- (void)_handleAddTriggerOwnedActionSetRequest:(id)request
{
  v30 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD0B10]];
  if (v5)
  {
    home = [(HMDTrigger *)self home];
    v7 = [HMDActionSetModel alloc];
    uuid = [home uuid];
    v9 = [(HMDBackingStoreModelObject *)v7 initWithObjectChangeType:1 uuid:v5 parentUUID:uuid];

    v10 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:v5];
    uUIDString = [v10 UUIDString];
    [(HMDActionSetModel *)v9 setName:uUIDString];

    [(HMDActionSetModel *)v9 setType:*MEMORY[0x277CCF1A0]];
    emptyModelObject = [(HMDTrigger *)self emptyModelObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v13 = emptyModelObject;
    }

    else
    {
      v13 = 0;
    }

    v14 = v13;

    actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
    uUIDString2 = [v5 UUIDString];
    [actionSetUUIDs addObject:uUIDString2];

    actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
    v18 = objc_msgSend_copy(actionSetUUIDs2);
    [v14 setCurrentActionSets:v18];

    backingStore = [home backingStore];
    name = [requestCopy name];
    v21 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v22 = [backingStore transaction:name options:v21];

    [v22 add:v9 withMessage:0];
    [v22 add:v14 withMessage:requestCopy];

    [v22 run];
    goto LABEL_10;
  }

  v23 = objc_autoreleasePoolPush();
  selfCopy = self;
  v25 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    v26 = HMFGetLogIdentifier();
    v28 = 138543362;
    v29 = v26;
    _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ActionSetUUID not set.", &v28, 0xCu);
  }

  objc_autoreleasePoolPop(v23);
  responseHandler = [requestCopy responseHandler];

  if (responseHandler)
  {
    home = [requestCopy responseHandler];
    v9 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (home)[2](home, v9, 0);
LABEL_10:
  }
}

- (void)_handleAddActionSetRequest:(id)request
{
  requestCopy = request;
  v4 = [requestCopy uuidForKey:*MEMORY[0x277CD2728]];
  if (v4)
  {
    emptyModelObject = [(HMDTrigger *)self emptyModelObject];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v6 = emptyModelObject;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;

    actionSetUUIDs = [(HMDTrigger *)self actionSetUUIDs];
    uUIDString = [v4 UUIDString];
    [actionSetUUIDs addObject:uUIDString];

    actionSetUUIDs2 = [(HMDTrigger *)self actionSetUUIDs];
    v11 = objc_msgSend_copy(actionSetUUIDs2);
    [v7 setCurrentActionSets:v11];

    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [requestCopy name];
    v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    responseHandler = [backingStore transaction:name options:v15];

    [responseHandler add:v7 withMessage:requestCopy];
    [responseHandler run];
  }

  else
  {
    responseHandler = [requestCopy responseHandler];
    v17 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
    (responseHandler)[2](responseHandler, v17, 0);
  }
}

- (id)trimmedNameFromName:(id)name configuredName:(id)configuredName error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  configuredNameCopy = configuredName;
  home = [(HMDTrigger *)self home];
  homeManager = [home homeManager];
  nameValidator = [homeManager nameValidator];
  v13 = [nameValidator nameByTrimmingDisallowedCharactersFromName:nameCopy];

  v14 = [v13 length];
  v15 = objc_autoreleasePoolPush();
  selfCopy = self;
  v17 = HMFGetOSLogHandle();
  v18 = v17;
  if (!v14)
  {
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v31 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v31;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_ERROR, "%{public}@Trimmed name is now empty", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
    if (error)
    {
      v29 = MEMORY[0x277CCA9B8];
      v30 = 20;
      goto LABEL_14;
    }

    goto LABEL_20;
  }

  if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v45 = v19;
    v46 = 2112;
    v47 = v13;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Processing new trigger name after trimming invalid characters: '%@'", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v15);
  name = [(HMDTrigger *)selfCopy name];
  v21 = [name isEqualToString:v13];

  if (v21)
  {
    configuredName = [(HMDTrigger *)selfCopy configuredName];
    v23 = [configuredName isEqualToString:configuredNameCopy];

    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    v27 = v26;
    if (v23)
    {
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = HMFGetLogIdentifier();
        *buf = 138543362;
        v45 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_ERROR, "%{public}@Cannot rename the trigger as new trigger name & configured names are same.", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      if (error)
      {
        v29 = MEMORY[0x277CCA9B8];
        v30 = 48;
LABEL_14:
        [v29 hmErrorWithCode:v30];
        *error = v32 = 0;
        goto LABEL_27;
      }

LABEL_20:
      v32 = 0;
      goto LABEL_27;
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543362;
      v45 = v41;
      _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Allowing rename request as current name and new trimmed name are the same but current configured name and new configured name are different", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v32 = v13;
  }

  else
  {
    name2 = [(HMDTrigger *)selfCopy name];
    v34 = [home replaceName:name2 withNewName:v13];

    if (v34)
    {
      v35 = objc_autoreleasePoolPush();
      v36 = selfCopy;
      v37 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
      {
        v38 = HMFGetLogIdentifier();
        [(HMDTrigger *)v36 name];
        v39 = v43 = v35;
        *buf = 138544130;
        v45 = v38;
        v46 = 2112;
        v47 = v39;
        v48 = 2112;
        v49 = v13;
        v50 = 2112;
        v51 = v34;
        _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Cannot rename the trigger from '%@' to '%@': %@", buf, 0x2Au);

        v35 = v43;
      }

      objc_autoreleasePoolPop(v35);
      if (error)
      {
        v40 = v34;
        v32 = 0;
        *error = v34;
      }

      else
      {
        v32 = 0;
      }
    }

    else
    {
      v32 = v13;
    }
  }

LABEL_27:

  return v32;
}

- (void)_renameRequest:(id)request
{
  v46 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy stringForKey:*MEMORY[0x277CD2758]];
  v6 = v5;
  if (!v5 || ![v5 length])
  {
    v12 = MEMORY[0x277CCA9B8];
    v13 = 20;
LABEL_8:
    v14 = [v12 hmErrorWithCode:v13];
    [requestCopy respondWithError:v14];
    goto LABEL_9;
  }

  v7 = HMMaxLengthForNaming();
  if ([v6 length] > v7)
  {
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v37 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    v12 = MEMORY[0x277CCA9B8];
    v13 = 46;
    goto LABEL_8;
  }

  v14 = [requestCopy stringForKey:*MEMORY[0x277CD1250]];
  home = [(HMDTrigger *)self home];
  if (home)
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      name = [(HMDTrigger *)selfCopy2 name];
      configuredName = [(HMDTrigger *)selfCopy2 configuredName];
      *buf = 138544386;
      v37 = v19;
      v38 = 2112;
      v39 = name;
      v40 = 2112;
      v41 = v6;
      v42 = 2112;
      v43 = configuredName;
      v44 = 2112;
      v45 = v14;
      _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Rename request received: '%@' -> '%@', '%@' -> '%@'", buf, 0x34u);
    }

    objc_autoreleasePoolPop(v16);
    v35 = 0;
    v22 = [(HMDTrigger *)selfCopy2 trimmedNameFromName:v6 configuredName:v14 error:&v35];
    v23 = v35;
    if (v22)
    {
      emptyModelObject = [(HMDTrigger *)selfCopy2 emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v25 = emptyModelObject;
      }

      else
      {
        v25 = 0;
      }

      v26 = v25;

      [v26 setName:v22];
      [v26 setConfiguredName:v14];
      backingStore = [home backingStore];
      name2 = [requestCopy name];
      v29 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      [backingStore transaction:name2 options:v29];
      v34 = home;
      v30 = v14;
      v32 = v31 = v23;

      [v32 add:v26 withMessage:requestCopy];
      [v32 run];

      v23 = v31;
      v14 = v30;
      home = v34;
    }

    else
    {
      [requestCopy respondWithError:v23];
    }
  }

  else
  {
    v33 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
    [requestCopy respondWithError:v33];
  }

LABEL_9:
}

- (void)_handleRenameRequest:(id)request
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:8 message:request relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDTrigger *)self _renameRequest:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_activate:(BOOL)_activate completionHandler:(id)handler
{
  _activateCopy = _activate;
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  if (_activateCopy)
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    actionSets = [(HMDTrigger *)self actionSets];
    v8 = [actionSets countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(actionSets);
          }

          actions = [*(*(&v15 + 1) + 8 * i) actions];
          v10 += [actions count];
        }

        v9 = [actionSets countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);

      if (v10)
      {
        goto LABEL_10;
      }
    }

    else
    {
    }

    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:25 userInfo:0];
    handlerCopy[2](handlerCopy, v14);

    goto LABEL_14;
  }

LABEL_10:
  if (handlerCopy)
  {
    handlerCopy[2](handlerCopy, 0);
  }

LABEL_14:
}

- (void)markChangedForMessage:(id)message triggerModel:(id)model
{
  v19 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  modelCopy = model;
  home = [(HMDTrigger *)self home];
  transactionResult = [messageCopy transactionResult];
  if ([home isOwnerUser])
  {
    [transactionResult markChanged];
  }

  else if ([home isAdminUser])
  {
    [transactionResult markLocalChanged];
  }

  v10 = [(HMDTrigger *)self modelContainsTriggerFired:modelCopy];
  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  v14 = os_log_type_enabled(v13, OS_LOG_TYPE_INFO);
  if (v10)
  {
    if (v14)
    {
      v15 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v15;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Not re-activating the trigger after applying the trigger model since it only contains mostRecentFireDate", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }

  else
  {
    if (v14)
    {
      v16 = HMFGetLogIdentifier();
      v17 = 138543362;
      v18 = v16;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Activating the trigger after applying the trigger model", &v17, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
    [(HMDTrigger *)selfCopy activateWithCompletion:0];
  }
}

- (BOOL)modelContainsTriggerFired:(id)fired
{
  firedCopy = fired;
  setProperties = [firedCopy setProperties];
  if ([setProperties count] == 1)
  {
    setProperties2 = [firedCopy setProperties];
    v6 = [setProperties2 containsObject:@"mostRecentFireDate"];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)activateAfterResidentChangeWithCompletion:(id)completion
{
  v11 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Re-evaluating trigger after resident change", &v9, 0xCu);
  }

  objc_autoreleasePoolPop(v5);
  [(HMDTrigger *)selfCopy activateWithCompletion:completionCopy];
}

- (void)_activateWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v5 = v3;
    v4 = [MEMORY[0x277CCA9B8] hmErrorWithCode:48];
    v5[2](v5, v4);

    v3 = v5;
  }
}

- (void)activateWithCompletion:(id)completion
{
  v14 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(HMDTrigger *)self isConfigured])
  {
    workQueue = [(HMDTrigger *)self workQueue];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __37__HMDTrigger_activateWithCompletion___block_invoke;
    v10[3] = &unk_279735738;
    v10[4] = self;
    v11 = completionCopy;
    dispatch_async(workQueue, v10);
  }

  else
  {
    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543362;
      v13 = v9;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Work queue is not configured, cannot activate", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v6);
  }
}

- (BOOL)isConfigured
{
  workQueue = [(HMDTrigger *)self workQueue];
  v3 = workQueue != 0;

  return v3;
}

- (BOOL)isOwnedByThisDevice
{
  owner = [(HMDTrigger *)self owner];
  if ([owner isCurrentUser])
  {
    owningDevice = [(HMDTrigger *)self owningDevice];
    if (owningDevice)
    {
      owningDevice2 = [(HMDTrigger *)self owningDevice];
      isCurrentDevice = [owningDevice2 isCurrentDevice];
    }

    else
    {
      isCurrentDevice = 1;
    }
  }

  else
  {
    isCurrentDevice = 0;
  }

  return isCurrentDevice;
}

- (void)invalidate
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    *buf = 138543362;
    v19 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Invalidating trigger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  actionSets = [(HMDTrigger *)selfCopy actionSets];
  v8 = [actionSets countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      v11 = 0;
      do
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(actionSets);
        }

        [(HMDTrigger *)selfCopy removeActionSet:*(*(&v13 + 1) + 8 * v11++) postUpdate:0];
      }

      while (v9 != v11);
      v9 = [actionSets countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v9);
  }

  [(HMDTrigger *)selfCopy removeAllActionSets];
  actionSetUUIDs = [(HMDTrigger *)selfCopy actionSetUUIDs];
  [actionSetUUIDs removeAllObjects];

  [(HMDTrigger *)selfCopy setMsgDispatcher:0];
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue
{
  configureCopy = configure;
  dispatcherCopy = dispatcher;
  queueCopy = queue;
  home = [(HMDTrigger *)self home];

  if (home != configureCopy)
  {
    [(HMDTrigger *)self setHome:configureCopy];
    owner = [(HMDTrigger *)self owner];
    uuid = [owner uuid];
    v13 = [configureCopy userWithUUID:uuid];
    [(HMDTrigger *)self setOwner:v13];
  }

  [(HMDTrigger *)self setMsgDispatcher:dispatcherCopy];
  [(HMDTrigger *)self setWorkQueue:queueCopy];

  [(HMDTrigger *)self _registerForMessages];
  residentDeviceManager = [configureCopy residentDeviceManager];
  [residentDeviceManager addDataSource:self];
}

- (BOOL)isAssociatedWithAccessory:(id)accessory
{
  v15 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  actionSets = [(HMDTrigger *)self actionSets];
  v6 = [actionSets countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = *v11;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(actionSets);
        }

        if ([*(*(&v10 + 1) + 8 * i) isAssociatedWithAccessory:accessoryCopy])
        {
          LOBYTE(v6) = 1;
          goto LABEL_11;
        }
      }

      v6 = [actionSets countByEnumeratingWithState:&v10 objects:v14 count:16];
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

- (void)sendTriggerFiredNotification:(id)notification
{
  notificationCopy = notification;
  if ([(HMDTrigger *)self _isTriggerFiredNotificationEntitled])
  {
    [MEMORY[0x277D0F818] entitledMessageWithName:@"kTriggerFiredNotificationKey" messagePayload:notificationCopy];
  }

  else
  {
    [MEMORY[0x277D0F818] messageWithName:@"kTriggerFiredNotificationKey" messagePayload:notificationCopy];
  }
  v7 = ;

  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  uuid = [(HMDTrigger *)self uuid];
  [msgDispatcher sendMessage:v7 target:uuid];
}

- (void)_recentFireDateUpdated:(id)updated
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (updated)
  {
    [(HMDTrigger *)self setMostRecentFireDate:?];
    v9 = *MEMORY[0x277CD2748];
    v7 = *MEMORY[0x277CD2750];
    mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
    v8 = mostRecentFireDate;
    v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v8 forKeys:&v7 count:1];
    v10[0] = v5;
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

    [(HMDTrigger *)self sendTriggerFiredNotification:v6];
  }
}

- (void)triggerFired
{
  emptyModelObject = [(HMDTrigger *)self emptyModelObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = emptyModelObject;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  date = [MEMORY[0x277CBEAA8] date];
  [v5 setMostRecentFireDate:date];

  home = [(HMDTrigger *)self home];
  backingStore = [home backingStore];
  v9 = +[HMDBackingStoreTransactionOptions defaultLocalOptions];
  v10 = [backingStore transaction:@"kTriggerFiredNotificationKey" options:v9];

  [v10 add:v5 withMessage:0];
  [v10 run];
}

- (void)reEvaluate:(unint64_t)evaluate
{
  v14 = *MEMORY[0x277D85DE8];
  if (![(HMDTrigger *)self isConfigured])
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      v11 = "%{public}@Cannot re-evaluate trigger, work queue has not been configured yet";
LABEL_12:
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, v11, &v12, 0xCu);
    }

LABEL_13:

    objc_autoreleasePoolPop(v7);
    return;
  }

  home = [(HMDTrigger *)self home];
  isOwnerUser = [home isOwnerUser];

  if ((isOwnerUser & 1) == 0)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v12 = 138543362;
      v13 = v10;
      v11 = "%{public}@Cannot re-evaluate trigger, not a owner user";
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  if (evaluate == 1)
  {

    [(HMDTrigger *)self _forceEvaluate];
  }

  else if (!evaluate)
  {

    [(HMDTrigger *)self _checkForNoActions];
  }
}

- (void)removeActionSet:(id)set postUpdate:(BOOL)update
{
  updateCopy = update;
  v32 = *MEMORY[0x277D85DE8];
  setCopy = set;
  home = [(HMDTrigger *)self home];
  isOwnerUser = [home isOwnerUser];

  if (isOwnerUser)
  {
    actionSets = [(HMDTrigger *)self actionSets];
    v10 = [actionSets containsObject:setCopy];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      selfCopy = self;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v14;
        v30 = 2112;
        v31 = setCopy;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Action set %@ has been removed from home, cleaning the trigger", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = MEMORY[0x277D0F848];
      v16 = *MEMORY[0x277CD2738];
      v27[0] = MEMORY[0x277CBEC28];
      uuid = [setCopy uuid];
      uUIDString = [uuid UUIDString];
      v27[1] = uUIDString;
      v26[2] = *MEMORY[0x277CD2720];
      type = [setCopy type];
      v27[2] = type;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
      v21 = [v15 messageWithName:@"kUpdateActionSetTriggerRequestKey" messagePayload:v20];

      [v21 setRemote:1];
      [(HMDTrigger *)selfCopy _updateActionSetRequest:v21 postUpdate:updateCopy];
    }
  }

  else
  {
    v22 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v24 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = HMFGetLogIdentifier();
      *buf = 138543362;
      v29 = v25;
      _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Not the owner of this home, cannot clean up the action set reference", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v22);
  }
}

- (void)_forceEvaluate
{
  v9 = *MEMORY[0x277D85DE8];
  if ([(HMDTrigger *)self active])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      v7 = 138543362;
      v8 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Trigger is active. Hence force evaluating", &v7, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    [(HMDTrigger *)selfCopy _activateWithCompletion:0];
  }
}

- (BOOL)hasNoActions
{
  v16 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  actionSets = [(HMDTrigger *)self actionSets];
  v3 = [actionSets countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(actionSets);
        }

        actions = [*(*(&v11 + 1) + 8 * i) actions];
        v8 = [actions count];

        if (v8)
        {
          v9 = 0;
          goto LABEL_11;
        }
      }

      v4 = [actionSets countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v9 = 1;
LABEL_11:

  return v9;
}

- (void)setEnabled:(BOOL)enabled message:(id)message
{
  enabledCopy = enabled;
  messageCopy = message;
  emptyModelObject = [(HMDTrigger *)self emptyModelObject];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = emptyModelObject;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  v10 = [MEMORY[0x277CCABB0] numberWithBool:enabledCopy];
  [v9 setActive:v10];

  home = [(HMDTrigger *)self home];
  backingStore = [home backingStore];
  v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v14 = [backingStore transaction:@"setEnabled" options:v13];

  [v14 add:v9 withMessage:messageCopy];
  [v14 run];
}

- (NSArray)actionSets
{
  os_unfair_lock_lock_with_options();
  actionSetMappings = [(HMDTrigger *)self actionSetMappings];
  allValues = [actionSetMappings allValues];

  os_unfair_lock_unlock(&self->_lock);

  return allValues;
}

- (id)actionSetMapKeys
{
  os_unfair_lock_lock_with_options();
  actionSetMappings = [(HMDTrigger *)self actionSetMappings];
  allKeys = [actionSetMappings allKeys];

  os_unfair_lock_unlock(&self->_lock);

  return allKeys;
}

- (void)removeAllActionSets
{
  os_unfair_lock_lock_with_options();
  actionSetMappings = [(HMDTrigger *)self actionSetMappings];
  [actionSetMappings removeAllObjects];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeActionSetForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    v6 = keyCopy;
    os_unfair_lock_lock_with_options();
    actionSetMappings = [(HMDTrigger *)self actionSetMappings];
    [actionSetMappings removeObjectForKey:v6];

    os_unfair_lock_unlock(&self->_lock);
    keyCopy = v6;
  }
}

- (id)actionSetForKey:(id)key
{
  keyCopy = key;
  if (keyCopy)
  {
    os_unfair_lock_lock_with_options();
    actionSetMappings = [(HMDTrigger *)self actionSetMappings];
    v6 = [actionSetMappings objectForKey:keyCopy];

    os_unfair_lock_unlock(&self->_lock);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setActionSetForKey:(id)key value:(id)value
{
  keyCopy = key;
  valueCopy = value;
  if (keyCopy && valueCopy)
  {
    os_unfair_lock_lock_with_options();
    actionSetMappings = [(HMDTrigger *)self actionSetMappings];
    [actionSetMappings setObject:valueCopy forKey:keyCopy];

    os_unfair_lock_unlock(&self->_lock);
  }
}

- (void)setConfiguredName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  configuredName = self->_configuredName;
  self->_configuredName = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)configuredName
{
  os_unfair_lock_lock_with_options();
  v3 = self->_configuredName;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)setName:(id)name
{
  nameCopy = name;
  os_unfair_lock_lock_with_options();
  hm_truncatedNameString = [nameCopy hm_truncatedNameString];
  name = self->_name;
  self->_name = hm_truncatedNameString;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)name
{
  os_unfair_lock_lock_with_options();
  v3 = self->_name;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v45 = *MEMORY[0x277D85DE8];
  v36 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
  v4 = MEMORY[0x277CCACA8];
  name = [(HMDTrigger *)self name];
  configuredName = [(HMDTrigger *)self configuredName];
  uuid = [(HMDTrigger *)self uuid];
  uUIDString = [uuid UUIDString];
  [(HMDTrigger *)self active];
  v9 = HMFBooleanToString();
  [(HMDTrigger *)self shouldActivateOnLocalDevice];
  v10 = HMFBooleanToString();
  mostRecentFireDate = [(HMDTrigger *)self mostRecentFireDate];
  policy = [(HMDTrigger *)self policy];
  v13 = [v4 stringWithFormat:@"name: %@, configuredName: %@, uuid: %@, enabled: %@, activeOnLocalDevice: %@, lastFireDate: %@, Policy: %@", name, configuredName, uUIDString, v9, v10, mostRecentFireDate, policy];

  v14 = v36;
  v35 = v13;
  [v36 setObject:v13 forKeyedSubscript:*MEMORY[0x277D0F170]];
  actionSets = [(HMDTrigger *)self actionSets];
  v16 = [actionSets count];

  if (v16)
  {
    v17 = MEMORY[0x277CBEB18];
    actionSets2 = [(HMDTrigger *)self actionSets];
    v39 = [v17 arrayWithCapacity:{objc_msgSend(actionSets2, "count")}];

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    obj = [(HMDTrigger *)self actionSets];
    v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v41;
      v22 = *MEMORY[0x277CCF1A0];
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v41 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v40 + 1) + 8 * i);
          type = [v24 type];
          v26 = [type isEqualToString:v22];

          if (v26)
          {
            name2 = [v24 dumpStateWithPrivacyLevel:level];
            [v39 addObject:name2];
          }

          else
          {
            v28 = MEMORY[0x277CCACA8];
            name2 = [v24 name];
            type2 = [v24 type];
            uuid2 = [v24 uuid];
            uUIDString2 = [uuid2 UUIDString];
            actions = [v24 actions];
            v33 = [v28 stringWithFormat:@"name: %@, type: %@, uuid: %@, numActions: %ld", name2, type2, uUIDString2, objc_msgSend(actions, "count")];
            [v39 addObject:v33];
          }
        }

        v20 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v20);
    }

    v14 = v36;
    [v36 setObject:v39 forKeyedSubscript:*MEMORY[0x277D0F048]];
  }

  return v14;
}

- (id)attributeDescriptions
{
  v35[9] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  name = [(HMDTrigger *)self name];
  v33 = [v3 initWithName:@"NM" value:name];
  v35[0] = v33;
  v4 = objc_alloc(MEMORY[0x277D0F778]);
  configuredName = [(HMDTrigger *)self configuredName];
  v31 = [v4 initWithName:@"CN" value:configuredName];
  v35[1] = v31;
  v5 = objc_alloc(MEMORY[0x277D0F778]);
  uuid = [(HMDTrigger *)self uuid];
  v29 = [v5 initWithName:@"UUID" value:uuid];
  v35[2] = v29;
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDTrigger *)self active];
  v28 = HMFBooleanToString();
  v27 = [v6 initWithName:@"ACT" value:v28];
  v35[3] = v27;
  v7 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDTrigger *)self shouldActivateOnLocalDevice];
  v26 = HMFBooleanToString();
  v25 = [v7 initWithName:@"AOLD" value:v26];
  v35[4] = v25;
  v8 = objc_alloc(MEMORY[0x277D0F778]);
  owningDevice = [(HMDTrigger *)self owningDevice];
  identifier = [owningDevice identifier];
  v10 = [v8 initWithName:@"DE" value:identifier];
  v35[5] = v10;
  v11 = objc_alloc(MEMORY[0x277D0F778]);
  owner = [(HMDTrigger *)self owner];
  userID = [owner userID];
  defaultFormatter = [MEMORY[0x277D0F8D8] defaultFormatter];
  v15 = [v11 initWithName:@"USR" value:userID options:2 formatter:defaultFormatter];
  v35[6] = v15;
  v16 = objc_alloc(MEMORY[0x277D0F778]);
  actionSets = [(HMDTrigger *)self actionSets];
  v18 = [v16 initWithName:@"AS" value:actionSets];
  v35[7] = v18;
  v19 = objc_alloc(MEMORY[0x277D0F778]);
  policy = [(HMDTrigger *)self policy];
  v21 = [v19 initWithName:@"PO" value:policy];
  v35[8] = v21;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v35 count:9];

  return v23;
}

- (void)dealloc
{
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDTrigger;
  [(HMDTrigger *)&v4 dealloc];
}

- (id)logIdentifier
{
  if (isInternalBuild())
  {
    v3 = MEMORY[0x277CCACA8];
    name = [(HMDTrigger *)self name];
    uuid = [(HMDTrigger *)self uuid];
    uUIDString = [uuid UUIDString];
    uUIDString2 = [v3 stringWithFormat:@"%@/%@", name, uUIDString];
  }

  else
  {
    name = [(HMDTrigger *)self uuid];
    uUIDString2 = [name UUIDString];
  }

  return uUIDString2;
}

- (HMDTrigger)initWithModel:(id)model home:(id)home
{
  modelCopy = model;
  homeCopy = home;
  name = [modelCopy name];
  uuid = [modelCopy uuid];
  v10 = [(HMDTrigger *)self initWithName:name uuid:uuid];

  if (v10)
  {
    objc_storeWeak(&v10->_home, homeCopy);
    configuredName = [modelCopy configuredName];
    hm_truncatedNameString = [configuredName hm_truncatedNameString];
    configuredName = v10->_configuredName;
    v10->_configuredName = hm_truncatedNameString;

    active = [modelCopy active];
    v10->_active = [active BOOLValue];

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    actionSetMappings = v10->_actionSetMappings;
    v10->_actionSetMappings = dictionary;

    mostRecentFireDate = [modelCopy mostRecentFireDate];
    mostRecentFireDate = v10->_mostRecentFireDate;
    v10->_mostRecentFireDate = mostRecentFireDate;

    owner = [modelCopy owner];
    uuid2 = [owner uuid];

    if (uuid2)
    {
      owner2 = [modelCopy owner];
      uuid3 = [owner2 uuid];
      v23 = [homeCopy userWithUUID:uuid3];
      owner = v10->_owner;
      v10->_owner = v23;
    }

    owningDevice = [modelCopy owningDevice];
    owningDevice = v10->_owningDevice;
    v10->_owningDevice = owningDevice;

    autoDelete = [modelCopy autoDelete];
    bOOLValue = [autoDelete BOOLValue];
    if (bOOLValue)
    {
      v29 = objc_alloc_init(HMDTriggerDeleteAfterExecutionPolicy);
    }

    else
    {
      v29 = 0;
    }

    objc_storeStrong(&v10->_policy, v29);
    if (bOOLValue)
    {
    }

    [(HMDTrigger *)v10 _actionSetsUpdated:modelCopy message:0];
  }

  return v10;
}

- (HMDTrigger)initWithName:(id)name uuid:(id)uuid
{
  nameCopy = name;
  uuidCopy = uuid;
  v8 = uuidCopy;
  selfCopy = 0;
  if (nameCopy && uuidCopy)
  {
    v19.receiver = self;
    v19.super_class = HMDTrigger;
    v10 = [(HMDTrigger *)&v19 init];
    if (v10)
    {
      hm_truncatedNameString = [nameCopy hm_truncatedNameString];
      v12 = objc_msgSend_copy(hm_truncatedNameString);
      name = v10->_name;
      v10->_name = v12;

      objc_storeStrong(&v10->_uuid, uuid);
      v10->_active = 0;
      array = [MEMORY[0x277CBEB18] array];
      actionSetUUIDs = v10->_actionSetUUIDs;
      v10->_actionSetUUIDs = array;

      dictionary = [MEMORY[0x277CBEB38] dictionary];
      actionSetMappings = v10->_actionSetMappings;
      v10->_actionSetMappings = dictionary;

      v10->_lock._os_unfair_lock_opaque = 0;
    }

    self = v10;
    selfCopy = self;
  }

  return selfCopy;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v41[5] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  v38 = receiverCopy;
  if (objc_opt_isKindOfClass())
  {
    v7 = receiverCopy;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  home = [v8 home];

  v10 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v10 setRoles:{objc_msgSend(v10, "roles") | 4}];
  v37 = v10;
  v11 = objc_msgSend_copy(v10);
  v12 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  v13 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v41[0] = v13;
  v14 = objc_opt_new();
  v41[1] = v14;
  v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v41[2] = v15;
  v41[3] = v11;
  v41[4] = v12;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:5];

  v16 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v40[0] = v16;
  v17 = objc_opt_new();
  v40[1] = v17;
  v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v40[2] = v18;
  v40[3] = v11;
  v40[4] = v12;
  v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:5];

  v19 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v39[0] = v19;
  v20 = v12;
  v21 = objc_opt_new();
  v39[1] = v21;
  v22 = [HMDConfigurationMessagePolicy policyWithOperationTypes:5];
  v39[2] = v22;
  v39[3] = v11;
  v39[4] = v12;
  v23 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:5];

  name = [messageCopy name];
  LODWORD(v22) = HMFEqualObjects();

  name2 = [messageCopy name];
  if (v22)
  {
    v26 = v34;
    v27 = HMFCreateMessageBinding();
    v28 = v36;
LABEL_10:

    goto LABEL_11;
  }

  v26 = v34;
  v29 = HMFEqualObjects();

  name2 = [messageCopy name];
  v28 = v36;
  if (v29 || (v30 = HMFEqualObjects(), name2, [messageCopy name], name2 = objc_claimAutoreleasedReturnValue(), v30) || (v31 = HMFEqualObjects(), name2, objc_msgSend(messageCopy, "name"), name2 = objc_claimAutoreleasedReturnValue(), v31))
  {
LABEL_9:
    v27 = HMFCreateMessageBinding();
    goto LABEL_10;
  }

  v33 = HMFEqualObjects();

  if (v33)
  {
    name2 = [messageCopy name];
    goto LABEL_9;
  }

  v27 = 0;
LABEL_11:

  return v27;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t0_604 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t0_604, &__block_literal_global_605);
  }

  v3 = logCategory__hmf_once_v1_606;

  return v3;
}

uint64_t __25__HMDTrigger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v1_606;
  logCategory__hmf_once_v1_606 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (NSDictionary)bulletinContext
{
  v18[7] = *MEMORY[0x277D85DE8];
  home = [(HMDTrigger *)self home];
  v17[0] = @"home";
  contextID = [home contextID];
  v18[0] = contextID;
  v17[1] = @"trigger";
  contextID2 = [(HMDTrigger *)self contextID];
  v18[1] = contextID2;
  v17[2] = *MEMORY[0x277CCF328];
  contextSPIUniqueIdentifier = [home contextSPIUniqueIdentifier];
  uUIDString = [contextSPIUniqueIdentifier UUIDString];
  v18[2] = uUIDString;
  v17[3] = *MEMORY[0x277CCF348];
  contextSPIUniqueIdentifier2 = [(HMDTrigger *)self contextSPIUniqueIdentifier];
  uUIDString2 = [contextSPIUniqueIdentifier2 UUIDString];
  v18[3] = uUIDString2;
  v17[4] = *MEMORY[0x277CCF350];
  name = [(HMDTrigger *)self name];
  v18[4] = name;
  v17[5] = @"home.uuid.internal";
  uuid = [home uuid];
  uUIDString3 = [uuid UUIDString];
  v18[5] = uUIDString3;
  v17[6] = @"trigger.uuid.internal";
  uuid2 = [(HMDTrigger *)self uuid];
  uUIDString4 = [uuid2 UUIDString];
  v18[6] = uUIDString4;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:7];

  return v12;
}

- (NSDictionary)actionContext
{
  v16[4] = *MEMORY[0x277D85DE8];
  v15[0] = @"itemType";
  v15[1] = @"identifier";
  v16[0] = @"TRIGGER";
  v16[1] = @"trigger_execute";
  v15[2] = @"title";
  v2 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_YES");
  v15[3] = @"shouldDismiss";
  v3 = MEMORY[0x277CBEC38];
  v16[2] = v2;
  v16[3] = MEMORY[0x277CBEC38];
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:4];

  v13[0] = @"itemType";
  v13[1] = @"identifier";
  v14[0] = @"TRIGGER";
  v14[1] = @"trigger_doNotExecute";
  v13[2] = @"title";
  v5 = HMDLocalizedStringForKey(@"CONFIRM_EXECUTE_SECURE_TRIGGER_ACTION_NO");
  v13[3] = @"shouldDismiss";
  v14[2] = v5;
  v14[3] = v3;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];

  v10[1] = v6;
  v11[0] = @"buttonCategory";
  v11[1] = @"bulletinActionButtonDescription";
  v12[0] = &unk_286627430;
  v10[0] = v4;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:2];
  v12[1] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];

  return v8;
}

- (NSString)contextID
{
  uuid = [(HMDTrigger *)self uuid];
  uUIDString = [uuid UUIDString];

  return uUIDString;
}

- (NSString)urlString
{
  uuid = [(HMDTrigger *)self uuid];
  v3 = hm_assistantIdentifier();

  return v3;
}

@end