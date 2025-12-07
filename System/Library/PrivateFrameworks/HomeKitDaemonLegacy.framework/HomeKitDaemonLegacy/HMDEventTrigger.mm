@interface HMDEventTrigger
+ (BOOL)__validateRecurrences:(id)recurrences;
+ (id)logCategory;
+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver;
- (BOOL)_checkAddEventModel:(id)model message:(id)message;
- (BOOL)_isTriggerFiredNotificationEntitled;
- (BOOL)_populateTriggerModel:(id)model fromBuilderMessage:(id)message transaction:(id)transaction responsePayload:(id)payload;
- (BOOL)_validateUpdatingTriggerWithName:(id)name uuid:(id)uuid message:(id)message;
- (BOOL)addEventsFromInfo:(char)info preserveUUIDs:(void *)ds endEvent:(void *)event transaction:(void *)transaction message:(void *)message error:;
- (BOOL)addEventsFromMessage:(id)message preserveUUIDs:(BOOL)ds transaction:(id)transaction error:(id *)error;
- (BOOL)checkSharedEventTriggerActivationResidentRequirement:(id)requirement;
- (BOOL)compatible:(id)compatible user:(id)user;
- (BOOL)containsRecurrences;
- (BOOL)doesTheLocationEventTargetCurrentUser;
- (BOOL)hasUserConfirmationSession;
- (BOOL)isAuthorizedForLocation;
- (BOOL)isEventTriggerOnLocalDeviceForAccessory:(id)accessory;
- (BOOL)isEventTriggerOnRemoteGatewayForAccessory:(id)accessory;
- (BOOL)isOwnerOfHome;
- (BOOL)requiresDataVersion4;
- (BOOL)shouldActivateOnLocalDevice;
- (BOOL)shouldEncodeLastFireDate:(id)date;
- (Class)eventTriggerTypeToEventClass:(id)class;
- (HMDEventTrigger)initWithCoder:(id)coder;
- (HMDEventTrigger)initWithModel:(id)model home:(id)home message:(id)message;
- (HMDEventTrigger)initWithModel:(id)model home:(id)home message:(id)message factory:(id)factory;
- (NSArray)calendarEvents;
- (NSArray)charThresholdEvents;
- (NSArray)characteristicBaseEvents;
- (NSArray)characteristicEvents;
- (NSArray)durationEvents;
- (NSArray)endEvents;
- (NSArray)events;
- (NSArray)locationEvents;
- (NSArray)presenceEvents;
- (NSArray)recurrences;
- (NSArray)significantTimeEvents;
- (NSArray)timeEvents;
- (NSArray)triggerEvents;
- (id)_modelWithRewrittenCondition:(id)condition;
- (id)_updateEventsOnEventTrigger:(id)trigger;
- (id)backingStoreObjects:(int64_t)objects;
- (id)createEventModel:(id)model endEvent:(BOOL)event message:(id)message checkForSupport:(BOOL)support transaction:(id)transaction error:(id *)error;
- (id)didOccurEvent:(id)event causingDevice:(id)device;
- (id)dumpStateWithPrivacyLevel:(unint64_t)level;
- (id)emptyModelObject;
- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version;
- (uint64_t)updateEventsFromInfo:(void *)info existingEvents:(void *)events preserveUUIDs:(void *)ds endEvent:(void *)event transaction:(void *)transaction message:(void *)message error:(void *)error;
- (void)_activateEvents:(id)events;
- (void)_activateWithCompletion:(id)completion;
- (void)_addEventModelFromDictionary:(uint64_t)dictionary endEvent:(void *)event transaction:(void *)transaction message:(void *)message error:;
- (void)_addEventToEventTrigger:(id)trigger;
- (void)_computeActivation;
- (void)_configureDebounceTriggerActivationTimer;
- (void)_evaluationConditionUpdated:(id)updated message:(id)message;
- (void)_eventTriggerRecurrencesUpdated:(id)updated message:(id)message;
- (void)_executeOnceUpdated:(id)updated message:(id)message;
- (void)_handleAddEventModel:(id)model message:(id)message;
- (void)_handleAddEventToEventTrigger:(id)trigger;
- (void)_handleEventTriggerUpdate:(id)update message:(id)message;
- (void)_handleLocationAuthorizationChangedNotification:(id)notification;
- (void)_handleRemovalOfCharacteristic:(id)characteristic withEvents:(id)events transaction:(id)transaction;
- (void)_handleRemovalOfEvents:(id)events transaction:(id)transaction;
- (void)_handleRemoveEventModel:(id)model message:(id)message;
- (void)_handleRemoveEventsFromEventTrigger:(id)trigger relay:(BOOL)relay;
- (void)_handleUpdateEventTrigger:(id)trigger;
- (void)_handleUpdateEventTriggerCondition:(id)condition;
- (void)_handleUpdateEventTriggerExecuteOnce:(id)once;
- (void)_handleUpdateEventTriggerRecurrences:(id)recurrences;
- (void)_handleUpdateEventsOnEventTrigger:(id)trigger;
- (void)_handleUpdateOwningDevice:(id)device;
- (void)_handleUserPermissionRequest:(id)request;
- (void)_migrateEventsToRecords;
- (void)_reevaluateIfRelaunchRequired;
- (void)_registerForMessages;
- (void)_removeEvents:(id)events;
- (void)_removeEventsFromEventTrigger:(id)trigger;
- (void)_resetExecutionState;
- (void)_transactionObjectRemoved:(id)removed message:(id)message;
- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message;
- (void)_updateEventTriggerExecuteOnce:(id)once;
- (void)_updateEventTriggerRecurrences:(id)recurrences;
- (void)_updateOwningDevice:(id)device;
- (void)_userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler;
- (void)addEvent:(id)event;
- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)executionComplete:(id)complete error:(id)error;
- (void)fixupForReplacementAccessory:(id)accessory transaction:(id)transaction;
- (void)handleRemovalOfAccessory:(id)accessory transaction:(id)transaction;
- (void)handleRemovalOfService:(id)service transaction:(id)transaction;
- (void)handleRemovalOfUser:(id)user transaction:(id)transaction;
- (void)invalidate;
- (void)processEventRecords:(id)records message:(id)message;
- (void)removeEvent:(id)event;
- (void)resetExecutionState;
- (void)sendTriggerFiredNotification:(id)notification;
- (void)setRecurrences:(id)recurrences;
- (void)takeOverOwnershipOfTrigger;
- (void)timerDidFire:(id)fire;
- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler;
@end

@implementation HMDEventTrigger

- (BOOL)isOwnerOfHome
{
  home = [(HMDTrigger *)self home];
  isOwnerUser = [home isOwnerUser];

  return isOwnerUser;
}

- (BOOL)isAuthorizedForLocation
{
  v2 = +[HMDLocation sharedManager];
  v3 = [v2 locationAuthorized] == 1;

  return v3;
}

- (BOOL)containsRecurrences
{
  v16 = *MEMORY[0x277D85DE8];
  *&v14[3] = 0;
  *v14 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  recurrences = [(HMDEventTrigger *)self recurrences];
  v3 = [recurrences countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(recurrences);
        }

        v14[[*(*(&v10 + 1) + 8 * v6++) weekday] - 1] = 1;
      }

      while (v4 != v6);
      v4 = [recurrences countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v4);
  }

  v7 = 0;
  v8 = 0;
  do
  {
    v8 += v14[v7++];
  }

  while (v7 != 7);
  return (v8 - 1) < 6;
}

- (id)emptyModelObject
{
  v3 = [HMDEventTriggerModel alloc];
  uuid = [(HMDTrigger *)self uuid];
  home = [(HMDTrigger *)self home];
  uuid2 = [home uuid];
  v7 = [(HMDBackingStoreModelObject *)v3 initWithObjectChangeType:2 uuid:uuid parentUUID:uuid2];

  return v7;
}

- (id)backingStoreObjects:(int64_t)objects
{
  v19 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v6 = [(HMDEventTrigger *)self modelObjectWithChangeType:1 version:objects];
  [array addObject:v6];

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v8 = [events countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(events);
        }

        v12 = [*(*(&v14 + 1) + 8 * i) modelObjectWithChangeType:1];
        [array addObject:v12];
      }

      v9 = [events countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return array;
}

- (id)modelObjectWithChangeType:(unint64_t)type version:(int64_t)version
{
  v6 = [HMDEventTriggerModel alloc];
  uuid = [(HMDTrigger *)self uuid];
  home = [(HMDTrigger *)self home];
  uuid2 = [home uuid];
  v10 = [(HMDBackingStoreModelObject *)v6 initWithObjectChangeType:type uuid:uuid parentUUID:uuid2];

  [(HMDTrigger *)self _fillBaseObjectChangeModel:v10];
  evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];

  if (evaluationCondition)
  {
    v12 = MEMORY[0x277CCAAB0];
    evaluationCondition2 = [(HMDEventTrigger *)self evaluationCondition];
    v14 = [v12 archivedDataWithRootObject:evaluationCondition2 requiringSecureCoding:1 error:0];
    [(HMDEventTriggerModel *)v10 setEvaluationCondition:v14];
  }

  recurrences = [(HMDEventTrigger *)self recurrences];

  if (recurrences)
  {
    v16 = MEMORY[0x277CCAAB0];
    recurrences2 = [(HMDEventTrigger *)self recurrences];
    v18 = [v16 archivedDataWithRootObject:recurrences2 requiringSecureCoding:1 error:0];
    [(HMDEventTriggerModel *)v10 setRecurrences:v18];
  }

  v19 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventTrigger executeOnce](self, "executeOnce")}];
  [(HMDEventTriggerModel *)v10 setExecuteOnce:v19];

  return v10;
}

- (void)_handleEventTriggerUpdate:(id)update message:(id)message
{
  updateCopy = update;
  messageCopy = message;
  setProperties = [updateCopy setProperties];
  v8 = [setProperties containsObject:@"evaluationCondition"];

  if (v8)
  {
    evaluationCondition = [updateCopy evaluationCondition];
    v10 = [HMDPredicateUtilities decodePredicateFromData:evaluationCondition error:0];

    [(HMDEventTrigger *)self _evaluationConditionUpdated:v10 message:messageCopy];
  }

  setProperties2 = [updateCopy setProperties];
  v12 = [setProperties2 containsObject:@"recurrences"];

  if (v12)
  {
    recurrences = [updateCopy recurrences];
    decodeArrayOfDateComponents = [recurrences decodeArrayOfDateComponents];

    [(HMDEventTrigger *)self _eventTriggerRecurrencesUpdated:decodeArrayOfDateComponents message:messageCopy];
  }

  setProperties3 = [updateCopy setProperties];
  v16 = [setProperties3 containsObject:@"executeOnce"];

  if (v16)
  {
    executeOnce = [updateCopy executeOnce];
    [(HMDEventTrigger *)self _executeOnceUpdated:executeOnce message:messageCopy];
  }

  [(HMDTrigger *)self _handleTriggerUpdate:updateCopy message:messageCopy];
}

- (void)_transactionObjectRemoved:(id)removed message:(id)message
{
  v17 = *MEMORY[0x277D85DE8];
  removedCopy = removed;
  messageCopy = message;
  v8 = removedCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  if (v10)
  {
    [(HMDEventTrigger *)self _handleRemoveEventModel:v10 message:messageCopy];
  }

  else
  {
    v11 = objc_autoreleasePoolPush();
    selfCopy = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = HMFGetLogIdentifier();
      v15 = 138543362;
      v16 = v14;
      _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_ERROR, "%{public}@Failed to cast the given model object to EventModel", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v11);
  }
}

- (void)processEventRecords:(id)records message:(id)message
{
  v16 = *MEMORY[0x277D85DE8];
  recordsCopy = records;
  messageCopy = message;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v14 = 138543362;
    v15 = v11;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Saving to push the event records to cloud", &v14, 0xCu);
  }

  objc_autoreleasePoolPop(v8);
  home = [(HMDTrigger *)selfCopy home];
  name = [messageCopy name];
  [home saveWithReason:name postSyncNotification:0 objectChange:recordsCopy != 0];
}

- (void)_transactionObjectUpdated:(id)updated newValues:(id)values message:(id)message
{
  v33 = *MEMORY[0x277D85DE8];
  updatedCopy = updated;
  valuesCopy = values;
  messageCopy = message;
  v11 = valuesCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Handling event trigger update", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    [(HMDEventTrigger *)selfCopy _handleEventTriggerUpdate:v13 message:messageCopy];
  }

  else
  {
    v18 = v11;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v18;
    }

    else
    {
      v19 = 0;
    }

    v20 = v19;

    if (v20)
    {
      name = [messageCopy name];
      v22 = [name isEqualToString:@"kMigratedEventsToRecordsRequest"];

      if (v22)
      {
        [(HMDEventTrigger *)self processEventRecords:v20 message:messageCopy];
      }

      else
      {
        v27 = objc_autoreleasePoolPush();
        selfCopy2 = self;
        v29 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
        {
          v30 = HMFGetLogIdentifier();
          v31 = 138543362;
          v32 = v30;
          _os_log_impl(&dword_2531F8000, v29, OS_LOG_TYPE_INFO, "%{public}@Handling event add", &v31, 0xCu);
        }

        objc_autoreleasePoolPop(v27);
        [(HMDEventTrigger *)selfCopy2 _handleAddEventModel:v20 message:messageCopy];
      }
    }

    else
    {
      v23 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        v31 = 138543362;
        v32 = v26;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Unknown model object", &v31, 0xCu);
      }

      objc_autoreleasePoolPop(v23);
    }
  }
}

- (void)encodeWithCoder:(id)coder
{
  v30 = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v28.receiver = self;
  v28.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v28 encodeWithCoder:coderCopy];
  if ([coderCopy hmd_isForXPCTransport])
  {
    activationState = [(HMDEventTrigger *)self activationState];
    [coderCopy encodeInteger:activationState forKey:*MEMORY[0x277CD2288]];
  }

  if ([coderCopy hmd_isForNonAdminSharedUser])
  {
    array = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    presenceEvents = [(HMDEventTrigger *)self presenceEvents];
    v8 = [presenceEvents countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        v11 = 0;
        do
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(presenceEvents);
          }

          v12 = *(*(&v24 + 1) + 8 * v11);
          hmd_user = [coderCopy hmd_user];
          v14 = [v12 compatibleWithUser:hmd_user];

          if (v14)
          {
            [array addObject:v12];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [presenceEvents countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v9);
    }

    if ([array count])
    {
      v15 = objc_msgSend_copy(array);
      [coderCopy encodeObject:v15 forKey:@"HM.eventTriggerEvents"];
    }
  }

  else
  {
    array = [(HMDEventTrigger *)self events];
    [coderCopy encodeObject:array forKey:@"HM.eventTriggerEvents"];
  }

  recurrences = [(HMDEventTrigger *)self recurrences];

  if (recurrences)
  {
    recurrences2 = [(HMDEventTrigger *)self recurrences];
    [coderCopy encodeObject:recurrences2 forKey:@"HM.eventTriggerRecurrences"];
  }

  evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];

  if (evaluationCondition)
  {
    evaluationCondition2 = [(HMDEventTrigger *)self evaluationCondition];
    if ([coderCopy hmd_isForXPCTransport])
    {
      predicateUtilities = [(HMDEventTrigger *)self predicateUtilities];
      evaluationCondition3 = [(HMDEventTrigger *)self evaluationCondition];
      v22 = [predicateUtilities rewritePredicateForClient:evaluationCondition3];

      evaluationCondition2 = v22;
    }

    [coderCopy encodeObject:evaluationCondition2 forKey:@"HM.eventTriggerCondition"];
  }

  executeOnce = [(HMDEventTrigger *)self executeOnce];
  [coderCopy encodeBool:executeOnce forKey:*MEMORY[0x277CD22B8]];
  if ([coderCopy hmd_isForLocalStore])
  {
    [coderCopy encodeBool:-[HMDEventTrigger migratedEventsToRecords](self forKey:{"migratedEventsToRecords"), @"HM.migratedEventsToRecords"}];
  }
}

- (HMDEventTrigger)initWithCoder:(id)coder
{
  v40[8] = *MEMORY[0x277D85DE8];
  coderCopy = coder;
  v37.receiver = self;
  v37.super_class = HMDEventTrigger;
  v5 = [(HMDTrigger *)&v37 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = MEMORY[0x277CBEB98];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v40[4] = objc_opt_class();
    v40[5] = objc_opt_class();
    v40[6] = objc_opt_class();
    v40[7] = objc_opt_class();
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:8];
    v8 = [v6 setWithArray:v7];
    v9 = [coderCopy decodeObjectOfClasses:v8 forKey:@"HM.eventTriggerEvents"];

    v10 = [MEMORY[0x277CBEB18] arrayWithArray:v9];
    currentEvents = v5->_currentEvents;
    v5->_currentEvents = v10;

    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = v5->_currentEvents;
    v13 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v34;
      do
      {
        v16 = 0;
        do
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [*(*(&v33 + 1) + 8 * v16++) setEventTrigger:{v5, v33}];
        }

        while (v14 != v16);
        v14 = [(NSMutableArray *)v12 countByEnumeratingWithState:&v33 objects:v39 count:16];
      }

      while (v14);
    }

    v17 = +[HMDPredicateUtilities predicateCodingClasses];
    v18 = [coderCopy decodeObjectOfClasses:v17 forKey:@"HM.eventTriggerCondition"];
    evaluationCondition = v5->_evaluationCondition;
    v5->_evaluationCondition = v18;

    v20 = MEMORY[0x277CBEB98];
    v38[0] = objc_opt_class();
    v38[1] = objc_opt_class();
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    v22 = [v20 setWithArray:v21];
    v23 = [coderCopy decodeObjectOfClasses:v22 forKey:@"HM.eventTriggerRecurrences"];
    recurrences = v5->_recurrences;
    v5->_recurrences = v23;

    v5->_executeOnce = [coderCopy decodeBoolForKey:*MEMORY[0x277CD22B8]];
    v5->_migratedEventsToRecords = [coderCopy decodeBoolForKey:@"HM.migratedEventsToRecords"];
    v25 = [HMDPredicateUtilities alloc];
    home = [(HMDTrigger *)v5 home];
    name = [(HMDTrigger *)v5 name];
    v28 = [(HMDPredicateUtilities *)v25 initWithHome:home logIdentifier:name];
    predicateUtilities = v5->_predicateUtilities;
    v5->_predicateUtilities = v28;

    v5->_lock._os_unfair_lock_opaque = 0;
    v30 = objc_alloc_init(HMDEventTriggerDependencyFactory);
    dependencyFactory = v5->_dependencyFactory;
    v5->_dependencyFactory = v30;
  }

  return v5;
}

- (BOOL)hasUserConfirmationSession
{
  executionSession = [(HMDEventTrigger *)self executionSession];
  userConfirmationSession = [executionSession userConfirmationSession];
  if (userConfirmationSession)
  {
    v5 = 1;
  }

  else
  {
    userConfirmationSession2 = [(HMDEventTrigger *)self userConfirmationSession];
    v5 = userConfirmationSession2 != 0;
  }

  return v5;
}

- (void)_handleUserPermissionRequest:(id)request
{
  v54 = *MEMORY[0x277D85DE8];
  requestCopy = request;
  v5 = [requestCopy uuidForKey:*MEMORY[0x277CD22C0]];
  remoteSourceDevice = [requestCopy remoteSourceDevice];
  v7 = remoteSourceDevice;
  if (v5)
  {
    v8 = remoteSourceDevice == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    home = [(HMDTrigger *)self home];
    v16 = requestCopy;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
    if (isKindOfClass)
    {
      v18 = v16;
    }

    else
    {
      v18 = 0;
    }

    v14 = v18;

    if ([v16 isRemote] && v14 && objc_msgSend(v14, "restriction") != 4)
    {
      homeManager = [home homeManager];
      v20 = [homeManager homeUserFromMessage:v16 home:home];

      if (!v20 || ([(HMDEventTriggerDevice *)v20 isOwner]& 1) == 0)
      {
        v41 = objc_autoreleasePoolPush();
        selfCopy = self;
        v43 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
        {
          HMFGetLogIdentifier();
          v44 = v49 = v41;
          *buf = 138543618;
          v51 = v44;
          v52 = 2112;
          v53 = v16;
          _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Only owner may perform a user permission dialog: %@", buf, 0x16u);

          v41 = v49;
        }

        objc_autoreleasePoolPop(v41);
        responseHandler = [v16 responseHandler];

        if (!responseHandler)
        {
          goto LABEL_29;
        }

        responseHandler2 = [v16 responseHandler];
        v46 = [MEMORY[0x277CCA9B8] hmErrorWithCode:17];
        (responseHandler2)[2](responseHandler2, v46, 0);

        goto LABEL_27;
      }
    }

    v48 = v14;
    userConfirmationSession = [(HMDEventTrigger *)self userConfirmationSession];

    if (userConfirmationSession)
    {
      v22 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v24 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        v25 = HMFGetLogIdentifier();
        *buf = 138543362;
        v51 = v25;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_ERROR, "%{public}@There is already a user confirmation session in progress, replacing it", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v22);
      [(HMDEventTrigger *)selfCopy2 setUserConfirmationSession:0];
    }

    v20 = [[HMDEventTriggerDevice alloc] initWithDevice:v7 forHome:home];
    v26 = [HMDEventTriggerUserConfirmationSession alloc];
    workQueue = [(HMDTrigger *)self workQueue];
    msgDispatcher = [(HMDTrigger *)self msgDispatcher];
    v29 = [(HMDEventTriggerUserConfirmationSession *)v26 initWithSessionID:v5 eventTrigger:self workQueue:workQueue msgDispatcher:msgDispatcher requestingDevice:v20];
    [(HMDEventTrigger *)self setUserConfirmationSession:v29];

    v30 = objc_autoreleasePoolPush();
    selfCopy3 = self;
    v32 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = HMFGetLogIdentifier();
      [(HMDEventTrigger *)selfCopy3 userConfirmationSession];
      v47 = home;
      v34 = v7;
      v35 = v5;
      v37 = v36 = v20;
      *buf = 138543618;
      v51 = v33;
      v52 = 2112;
      v53 = v37;
      _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Created a user confirmation session %@", buf, 0x16u);

      v20 = v36;
      v5 = v35;
      v7 = v34;
      home = v47;
    }

    objc_autoreleasePoolPop(v30);
    userConfirmationSession2 = [(HMDEventTrigger *)selfCopy3 userConfirmationSession];
    [userConfirmationSession2 createBulletinNotification];

    responseHandler3 = [v16 responseHandler];

    if (!responseHandler3)
    {
      v14 = v48;
      goto LABEL_29;
    }

    responseHandler2 = [v16 responseHandler];
    responseHandler2[2](responseHandler2, 0, 0);
    v14 = v48;
LABEL_27:

LABEL_29:
    goto LABEL_30;
  }

  v9 = objc_autoreleasePoolPush();
  selfCopy4 = self;
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = HMFGetLogIdentifier();
    *buf = 138543362;
    v51 = v12;
    _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Did not receive execution session ID or requesting device", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v9);
  responseHandler4 = [requestCopy responseHandler];

  if (responseHandler4)
  {
    home = [requestCopy responseHandler];
    v14 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    (home)[2](home, v14, 0);
LABEL_30:
  }
}

- (void)_userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler
{
  executeCopy = execute;
  v20 = *MEMORY[0x277D85DE8];
  handlerCopy = handler;
  executionSession = [(HMDEventTrigger *)self executionSession];
  userConfirmationSession = [executionSession userConfirmationSession];

  if (userConfirmationSession)
  {
    executionSession2 = [(HMDEventTrigger *)self executionSession];
    userConfirmationSession2 = [executionSession2 userConfirmationSession];
    [userConfirmationSession2 userDidConfirmExecute:executeCopy completionHandler:handlerCopy];

LABEL_5:
    goto LABEL_6;
  }

  userConfirmationSession3 = [(HMDEventTrigger *)self userConfirmationSession];

  if (userConfirmationSession3)
  {
    executionSession2 = [(HMDEventTrigger *)self userConfirmationSession];
    [executionSession2 userDidConfirmExecute:executeCopy completionHandler:handlerCopy];
    goto LABEL_5;
  }

  v12 = objc_autoreleasePoolPush();
  selfCopy = self;
  v14 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
  {
    v15 = HMFGetLogIdentifier();
    v18 = 138543362;
    v19 = v15;
    _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@There is no confirmation timer running, ignoring the response", &v18, 0xCu);
  }

  objc_autoreleasePoolPop(v12);
  v16 = _Block_copy(handlerCopy);
  v17 = v16;
  if (v16)
  {
    (*(v16 + 2))(v16, 0);
  }

LABEL_6:
}

- (void)userDidConfirmExecute:(BOOL)execute completionHandler:(id)handler
{
  handlerCopy = handler;
  workQueue = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __59__HMDEventTrigger_userDidConfirmExecute_completionHandler___block_invoke;
  block[3] = &unk_279733DB0;
  executeCopy = execute;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(workQueue, block);
}

- (BOOL)_isTriggerFiredNotificationEntitled
{
  presenceEvents = [(HMDEventTrigger *)self presenceEvents];
  if ([presenceEvents count])
  {
    v4 = 1;
  }

  else
  {
    predicateUtilities = [(HMDEventTrigger *)self predicateUtilities];
    evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];
    v4 = [predicateUtilities containsPresenceEvents:evaluationCondition];
  }

  return v4;
}

- (void)takeOverOwnershipOfTrigger
{
  workQueue = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __45__HMDEventTrigger_takeOverOwnershipOfTrigger__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

void __45__HMDEventTrigger_takeOverOwnershipOfTrigger__block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x277D85DE8];
  v2 = +[HMDAppleAccountManager sharedManager];
  v3 = [v2 device];

  v4 = [*(a1 + 32) owningDevice];
  v5 = HMFEqualObjects();

  if (v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = *(a1 + 32);
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v9 = HMFGetLogIdentifier();
      *buf = 138543618;
      v21 = v9;
      v22 = 2112;
      v23 = v3;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_INFO, "%{public}@Owning device is correctly set to %@, not changing", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  else
  {
    v18 = @"HM.device";
    v10 = encodeRootObject();
    v19 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v19 forKeys:&v18 count:1];

    v12 = MEMORY[0x277D0F818];
    v13 = *MEMORY[0x277CD2780];
    v14 = objc_alloc(MEMORY[0x277D0F820]);
    v15 = [*(a1 + 32) uuid];
    v16 = [v14 initWithTarget:v15];
    v17 = [v12 messageWithName:v13 destination:v16 payload:v11];

    [*(a1 + 32) _handleUpdateOwningDevice:v17];
  }
}

- (void)_resetExecutionState
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    executionSession = [(HMDEventTrigger *)selfCopy executionSession];
    userConfirmationSession = [(HMDEventTrigger *)selfCopy userConfirmationSession];
    v9 = 138543874;
    v10 = v6;
    v11 = 2112;
    v12 = executionSession;
    v13 = 2112;
    v14 = userConfirmationSession;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Resetting execution sessions %@, confirmation session %@", &v9, 0x20u);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDEventTrigger *)selfCopy setExecutionSession:0];
  [(HMDEventTrigger *)selfCopy setUserConfirmationSession:0];
}

- (void)resetExecutionState
{
  workQueue = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__HMDEventTrigger_resetExecutionState__block_invoke;
  block[3] = &unk_279735D00;
  block[4] = self;
  dispatch_async(workQueue, block);
}

- (void)executionComplete:(id)complete error:(id)error
{
  completeCopy = complete;
  errorCopy = error;
  workQueue = [(HMDTrigger *)self workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMDEventTrigger_executionComplete_error___block_invoke;
  block[3] = &unk_279734960;
  block[4] = self;
  v12 = completeCopy;
  v13 = errorCopy;
  v9 = errorCopy;
  v10 = completeCopy;
  dispatch_async(workQueue, block);
}

uint64_t __43__HMDEventTrigger_executionComplete_error___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = objc_autoreleasePoolPush();
  v3 = *(a1 + 32);
  v4 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v5 = HMFGetLogIdentifier();
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v13 = 138543874;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_INFO, "%{public}@Action set execution session %@ is complete with error %@", &v13, 0x20u);
  }

  objc_autoreleasePoolPop(v2);
  [*(a1 + 32) _resetExecutionState];
  if (!*(a1 + 48) && [*(a1 + 32) executeOnce])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = *(a1 + 32);
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Trigger is marked to be executed once, deactivating", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    [*(a1 + 32) setEnabled:0 message:0];
  }

  return [*(a1 + 32) executeCompleteWithError:*(a1 + 48)];
}

- (id)didOccurEvent:(id)event causingDevice:(id)device
{
  v59 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  deviceCopy = device;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543874;
    v52 = v11;
    v53 = 2112;
    v54 = deviceCopy;
    v55 = 2112;
    v56 = eventCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Event occurred on device %@, %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  executionSession = [(HMDEventTrigger *)selfCopy executionSession];

  if (executionSession)
  {
    executionSession2 = [(HMDEventTrigger *)selfCopy executionSession];
    [executionSession2 postponeRestoreIfWaitingForEndEvent];

    if (deviceCopy)
    {
      executionSession3 = [(HMDEventTrigger *)selfCopy executionSession];
      needsUserConfirmation = [executionSession3 needsUserConfirmation];

      v16 = objc_autoreleasePoolPush();
      v17 = selfCopy;
      v18 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
      {
        v19 = HMFGetLogIdentifier();
        if (needsUserConfirmation)
        {
          v20 = &stru_286509E58;
        }

        else
        {
          v20 = @"not ";
        }

        executionSession4 = [(HMDEventTrigger *)v17 executionSession];
        *buf = 138544130;
        v52 = v19;
        v53 = 2112;
        v54 = v20;
        v55 = 2112;
        v56 = deviceCopy;
        v57 = 2112;
        v58 = executionSession4;
        _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Execution session is already in progress, %@adding occurred device %@ for asking confirmation %@", buf, 0x2Au);
      }

      objc_autoreleasePoolPop(v16);
      if (needsUserConfirmation)
      {
        executionSession5 = [(HMDEventTrigger *)v17 executionSession];
        [executionSession5 addEvent:eventCopy causingDevice:deviceCopy];

        executionSession6 = [(HMDEventTrigger *)v17 executionSession];
        goto LABEL_21;
      }
    }

    else
    {
      v44 = objc_autoreleasePoolPush();
      v45 = selfCopy;
      v46 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
      {
        v47 = HMFGetLogIdentifier();
        executionSession7 = [(HMDEventTrigger *)v45 executionSession];
        *buf = 138543618;
        v52 = v47;
        v53 = 2112;
        v54 = executionSession7;
        _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Execution session is already in progress, not executing again %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v44);
    }

    executionSession6 = 0;
  }

  else
  {
    v50 = eventCopy;
    v24 = objc_autoreleasePoolPush();
    v25 = selfCopy;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      endEvents = [(HMDEventTrigger *)v25 endEvents];
      *buf = 138543618;
      v52 = v27;
      v53 = 2112;
      v54 = endEvents;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Creating execution session with end events %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v24);
    v29 = [HMDEventTriggerExecutionSession alloc];
    predicateUtilities = [(HMDEventTrigger *)v25 predicateUtilities];
    workQueue = [(HMDTrigger *)v25 workQueue];
    actionSets = [(HMDTrigger *)v25 actionSets];
    evaluationCondition = [(HMDEventTrigger *)v25 evaluationCondition];
    recurrences = [(HMDEventTrigger *)v25 recurrences];
    endEvents2 = [(HMDEventTrigger *)v25 endEvents];
    msgDispatcher = [(HMDTrigger *)v25 msgDispatcher];
    v37 = [(HMDEventTriggerExecutionSession *)v29 initWithEventTrigger:v25 predicateUtilities:predicateUtilities triggerEvent:v50 causingDevice:deviceCopy workQueue:workQueue actionSets:actionSets evaluationCondition:evaluationCondition recurrences:recurrences endEvents:endEvents2 msgDispatcher:msgDispatcher];
    [(HMDEventTrigger *)v25 setExecutionSession:v37];

    v38 = objc_autoreleasePoolPush();
    v39 = v25;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      executionSession8 = [(HMDEventTrigger *)v39 executionSession];
      *buf = 138543618;
      v52 = v41;
      v53 = 2112;
      v54 = executionSession8;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Created action set execution session: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    executionSession9 = [(HMDEventTrigger *)v39 executionSession];
    [executionSession9 evaluateFiringTrigger];

    executionSession6 = [(HMDEventTrigger *)v39 executionSession];
    eventCopy = v50;
  }

LABEL_21:

  return executionSession6;
}

- (BOOL)isEventTriggerOnLocalDeviceForAccessory:(id)accessory
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [(HMDEventTrigger *)self computedActive]&& [(HMDEventTrigger *)self shouldActivateOnLocalDevice])
  {
    v26 = accessoryCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(HMDEventTrigger *)self characteristicBaseEvents];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          characteristic = [*(*(&v28 + 1) + 8 * i) characteristic];
          accessory = [characteristic accessory];
          identifier = [accessory identifier];
          identifier2 = [v6 identifier];
          v15 = [identifier isEqualToString:identifier2];

          if (v15)
          {
            v22 = objc_autoreleasePoolPush();
            selfCopy = self;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543618;
              v33 = v25;
              v34 = 2080;
              v35 = "[HMDEventTrigger isEventTriggerOnLocalDeviceForAccessory:]";
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run locally. [%s]", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v20 = 1;
            accessoryCopy = v26;
            goto LABEL_19;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    accessoryCopy = v26;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v19;
    v34 = 2080;
    v35 = "[HMDEventTrigger isEventTriggerOnLocalDeviceForAccessory:]";
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run on the resident. [%s]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_19:

  return v20;
}

- (BOOL)isEventTriggerOnRemoteGatewayForAccessory:(id)accessory
{
  v37 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = accessoryCopy;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6 && [(HMDEventTrigger *)self computedActive]&& ![(HMDEventTrigger *)self shouldActivateOnLocalDevice])
  {
    v26 = accessoryCopy;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(HMDEventTrigger *)self characteristicBaseEvents];
    v7 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v29;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v29 != v9)
          {
            objc_enumerationMutation(obj);
          }

          characteristic = [*(*(&v28 + 1) + 8 * i) characteristic];
          accessory = [characteristic accessory];
          identifier = [accessory identifier];
          identifier2 = [v6 identifier];
          v15 = [identifier isEqualToString:identifier2];

          if (v15)
          {
            v22 = objc_autoreleasePoolPush();
            selfCopy = self;
            v24 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
            {
              v25 = HMFGetLogIdentifier();
              *buf = 138543618;
              v33 = v25;
              v34 = 2080;
              v35 = "[HMDEventTrigger isEventTriggerOnRemoteGatewayForAccessory:]";
              _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run on the resident. [%s]", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v22);
            v20 = 1;
            accessoryCopy = v26;
            goto LABEL_19;
          }
        }

        v8 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    accessoryCopy = v26;
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    v19 = HMFGetLogIdentifier();
    *buf = 138543618;
    v33 = v19;
    v34 = 2080;
    v35 = "[HMDEventTrigger isEventTriggerOnRemoteGatewayForAccessory:]";
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Event trigger will run locally. [%s]", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v16);
  v20 = 0;
LABEL_19:

  return v20;
}

- (void)_executeOnceUpdated:(id)updated message:(id)message
{
  v10[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  -[HMDEventTrigger setExecuteOnce:](self, "setExecuteOnce:", [updated BOOLValue]);
  v9 = *MEMORY[0x277CD22B8];
  v7 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventTrigger executeOnce](self, "executeOnce")}];
  v10[0] = v7;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [messageCopy respondWithPayload:v8];
}

- (void)_updateEventTriggerExecuteOnce:(id)once
{
  v21 = *MEMORY[0x277D85DE8];
  onceCopy = once;
  if ([(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:onceCopy])
  {
    v5 = [onceCopy BOOLForKey:*MEMORY[0x277CD22B8]];
    emptyModelObject = [(HMDEventTrigger *)self emptyModelObject];
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

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v5];
    [v8 setExecuteOnce:v9];

    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [onceCopy name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [backingStore transaction:name options:v13];

    [v14 add:v8 withMessage:onceCopy];
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
      _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Execute once requires shared-trigger-activation capable homehub", &v19, 0xCu);
    }

    objc_autoreleasePoolPop(v15);
  }
}

- (void)_handleUpdateEventTriggerExecuteOnce:(id)once
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:6 message:once relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _updateEventTriggerExecuteOnce:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_updateOwningDevice:(id)device
{
  v32 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  if ([(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:deviceCopy])
  {
    v5 = [deviceCopy dataForKey:@"HM.device"];
    v27 = 0;
    v6 = [MEMORY[0x277CCAAC8] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:&v27];
    v7 = v27;
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    v11 = os_log_type_enabled(v10, OS_LOG_TYPE_INFO);
    if (v6)
    {
      if (v11)
      {
        v12 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v12;
        v30 = 2112;
        v31 = v6;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Taking over owner ship of trigger to %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      emptyModelObject = [(HMDEventTrigger *)selfCopy emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v14 = emptyModelObject;
      }

      else
      {
        v14 = 0;
      }

      v15 = v14;

      [v15 setOwningDevice:v6];
      home = [(HMDTrigger *)selfCopy home];
      backingStore = [home backingStore];
      v18 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      responseHandler2 = [backingStore transaction:@"UpdateOwningDevice" options:v18];

      [responseHandler2 add:v15 withMessage:deviceCopy];
      [responseHandler2 run];
    }

    else
    {
      if (v11)
      {
        v24 = HMFGetLogIdentifier();
        *buf = 138543618;
        v29 = v24;
        v30 = 2112;
        v31 = v7;
        _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Failed to unarchive device from device data: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
      responseHandler = [deviceCopy responseHandler];

      if (!responseHandler)
      {
        goto LABEL_17;
      }

      responseHandler2 = [deviceCopy responseHandler];
      v26 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      (responseHandler2)[2](responseHandler2, v26, 0);
    }

LABEL_17:
    goto LABEL_18;
  }

  v20 = objc_autoreleasePoolPush();
  selfCopy2 = self;
  v22 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
  {
    v23 = HMFGetLogIdentifier();
    *buf = 138543362;
    v29 = v23;
    _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Updating owning device requires shared-trigger-activation capable homehub", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v20);
LABEL_18:
}

- (void)_handleUpdateOwningDevice:(id)device
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:7 message:device relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _updateOwningDevice:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_evaluationConditionUpdated:(id)updated message:(id)message
{
  v17[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  updatedCopy = updated;
  predicateUtilities = [(HMDEventTrigger *)self predicateUtilities];
  v9 = [predicateUtilities rewritePredicateForDaemon:updatedCopy message:messageCopy];

  [(HMDEventTrigger *)self setEvaluationCondition:v9];
  evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];

  if (evaluationCondition)
  {
    v16 = *MEMORY[0x277CD2298];
    predicateUtilities2 = [(HMDEventTrigger *)self predicateUtilities];
    evaluationCondition2 = [(HMDEventTrigger *)self evaluationCondition];
    v13 = [predicateUtilities2 rewritePredicateForClient:evaluationCondition2];
    v14 = encodeRootObject();
    v17[0] = v14;
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:&v16 count:1];
  }

  else
  {
    v15 = 0;
  }

  [messageCopy respondWithPayload:v15];
}

- (void)_handleUpdateEventTriggerCondition:(id)condition
{
  v33 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  v5 = [(HMDTrigger *)self updateEventTriggerMessage:4 message:conditionCopy relay:1];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 predicateForKey:*MEMORY[0x277CD2298]];
    v8 = objc_autoreleasePoolPush();
    selfCopy = self;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      v29 = 138543618;
      v30 = v11;
      v31 = 2112;
      v32 = v7;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Updating evaluation condition for trigger %@", &v29, 0x16u);
    }

    objc_autoreleasePoolPop(v8);
    predicateUtilities = [(HMDEventTrigger *)selfCopy predicateUtilities];
    v13 = [predicateUtilities containsPresenceEvents:v7];

    if (v13 && ![(HMDEventTrigger *)selfCopy checkSharedEventTriggerActivationResidentRequirement:v6])
    {
      v25 = objc_autoreleasePoolPush();
      v26 = selfCopy;
      v27 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
      {
        v28 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v28;
        _os_log_impl(&dword_2531F8000, v27, OS_LOG_TYPE_INFO, "%{public}@Presence Event Condition requires shared-trigger-activation capable homehub", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v25);
    }

    else
    {
      emptyModelObject = [(HMDEventTrigger *)selfCopy emptyModelObject];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v15 = emptyModelObject;
      }

      else
      {
        v15 = 0;
      }

      v16 = v15;

      predicateUtilities2 = [(HMDEventTrigger *)selfCopy predicateUtilities];
      v18 = [predicateUtilities2 rewritePredicateForDaemon:v7 message:v6];

      v19 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v18 requiringSecureCoding:1 error:0];
      [v16 setEvaluationCondition:v19];

      home = [(HMDTrigger *)selfCopy home];
      backingStore = [home backingStore];
      name = [v6 name];
      v23 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v24 = [backingStore transaction:name options:v23];

      [v24 add:v16 withMessage:v6];
      [v24 run];
    }
  }
}

- (void)_eventTriggerRecurrencesUpdated:(id)updated message:(id)message
{
  v12[1] = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v7 = objc_msgSend_copy(updated);
  [(HMDEventTrigger *)self setRecurrences:v7];

  recurrences = [(HMDEventTrigger *)self recurrences];
  v9 = encodeRootObject();

  if (v9)
  {
    v11 = *MEMORY[0x277CD22C8];
    v12[0] = v9;
    v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  }

  else
  {
    v10 = 0;
  }

  [messageCopy respondWithPayload:v10];
}

- (void)_updateEventTriggerRecurrences:(id)recurrences
{
  v4 = *MEMORY[0x277CD22C8];
  recurrencesCopy = recurrences;
  v16 = [recurrencesCopy arrayOfDateComponentsForKey:v4];
  if ([HMDEventTrigger __validateRecurrences:?])
  {
    emptyModelObject = [(HMDEventTrigger *)self emptyModelObject];
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

    v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v16 requiringSecureCoding:1 error:0];
    [v8 setRecurrences:v9];

    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [recurrencesCopy name];
    v13 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v14 = [backingStore transaction:name options:v13];

    [v14 add:v8 withMessage:recurrencesCopy];
    [v14 run];
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCFD28] code:3 userInfo:0];
    responseHandler = [recurrencesCopy responseHandler];

    (responseHandler)[2](responseHandler, v14, 0);
  }
}

- (void)_handleUpdateEventTriggerRecurrences:(id)recurrences
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:5 message:recurrences relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _updateEventTriggerRecurrences:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (BOOL)_populateTriggerModel:(id)model fromBuilderMessage:(id)message transaction:(id)transaction responsePayload:(id)payload
{
  v110 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  transactionCopy = transaction;
  obj = self;
  payloadCopy = payload;
  home = [(HMDTrigger *)self home];
  v86 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v99 = 0u;
  v100 = 0u;
  v101 = 0u;
  v102 = 0u;
  v79 = messageCopy;
  v11 = [messageCopy arrayForKey:*MEMORY[0x277CD2728]];
  v12 = [v11 countByEnumeratingWithState:&v99 objects:v109 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v100;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v100 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v99 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v18 = v17;

        if (!v18)
        {
          goto LABEL_25;
        }

        v19 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v18];
        if (!v19)
        {
          v18 = v16;
LABEL_25:
          v35 = objc_autoreleasePoolPush();
          v36 = obj;
          v37 = HMFGetOSLogHandle();
          v39 = v79;
          v38 = modelCopy;
          if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
          {
            v40 = HMFGetLogIdentifier();
            *buf = 138543618;
            v106 = v40;
            v107 = 2112;
            v108 = v18;
            _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_ERROR, "%{public}@Invalid ActionSet reference: '%@'", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v35);
          v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          [v79 respondWithError:v20];
          goto LABEL_57;
        }

        v20 = v19;
        v21 = [home actionSetWithUUID:v19];
        if (!v21)
        {
          v41 = objc_autoreleasePoolPush();
          v42 = obj;
          v43 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
          {
            v44 = HMFGetLogIdentifier();
            *buf = 138543618;
            v106 = v44;
            v107 = 2112;
            v108 = v20;
            _os_log_impl(&dword_2531F8000, v43, OS_LOG_TYPE_ERROR, "%{public}@Failed to resolve ActionSet reference: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v41);
          v45 = [MEMORY[0x277CCA9B8] hmErrorWithCode:2];
          v39 = v79;
          [v79 respondWithError:v45];

          v46 = 0;
          v38 = modelCopy;
          goto LABEL_58;
        }

        v22 = v21;
        uuid = [v21 uuid];
        uUIDString = [uuid UUIDString];
        [v86 addObject:uUIDString];
      }

      v13 = [v11 countByEnumeratingWithState:&v99 objects:v109 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  actionSets = [(HMDTrigger *)obj actionSets];
  v26 = [actionSets countByEnumeratingWithState:&v95 objects:v104 count:16];
  if (v26)
  {
    v27 = v26;
    v11 = 0;
    v28 = *v96;
    v29 = *MEMORY[0x277CCF1A0];
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v96 != v28)
        {
          objc_enumerationMutation(actionSets);
        }

        v31 = *(*(&v95 + 1) + 8 * j);
        type = [v31 type];
        v33 = [type isEqual:v29];

        if (v33)
        {
          v34 = v31;

          v11 = v34;
        }
      }

      v27 = [actionSets countByEnumeratingWithState:&v95 objects:v104 count:16];
    }

    while (v27);
  }

  else
  {
    v11 = 0;
  }

  v47 = *MEMORY[0x277CD2760];
  v39 = v79;
  v18 = [v79 dictionaryForKey:*MEMORY[0x277CD2760]];
  v38 = modelCopy;
  if (!v18)
  {
    goto LABEL_52;
  }

  if (v11)
  {
    v48 = [v11 modelObjectWithChangeType:2];
    [transactionCopy add:v48];

    v93 = 0;
    v94 = 0;
    LOBYTE(v48) = [(HMDActionSet *)v11 _updateActionSetFromDictionary:v18 transaction:transactionCopy response:&v94 error:&v93];
    v49 = v94;
    v20 = v93;
    if (v48)
    {
      [payloadCopy setObject:v49 forKeyedSubscript:v47];
      uuid2 = [v11 uuid];
      uUIDString2 = [uuid2 UUIDString];
      [v86 addObject:uUIDString2];
LABEL_51:

LABEL_52:
      v20 = objc_msgSend_copy(v86);
      [v38 setCurrentActionSets:v20];
      v46 = 1;
      goto LABEL_58;
    }

    v66 = objc_autoreleasePoolPush();
    v67 = obj;
    v68 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      v69 = HMFGetLogIdentifier();
      *buf = 138543362;
      v106 = v69;
      _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Failed to modify trigger-owned action set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v66);
    [v79 respondWithError:v20];
  }

  else
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    v53 = [MEMORY[0x277CCAD78] hm_deriveUUIDFromBaseUUID:uUID];
    uUIDString3 = [v53 UUIDString];

    v55 = *MEMORY[0x277CCF1A0];
    v91 = 0;
    v92 = 0;
    v77 = uUIDString3;
    v56 = [(HMDHome *)home _createActionSetWithUUID:uUID name:uUIDString3 type:v55 fromDictionary:v18 transaction:transactionCopy response:&v92 error:&v91];
    v57 = v92;
    v20 = v91;

    v78 = v57;
    if (v56)
    {
      [payloadCopy setObject:v57 forKeyedSubscript:v47];
      v76 = uUID;
      uUIDString4 = [uUID UUIDString];
      [v86 addObject:uUIDString4];

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      obja = [(HMDTrigger *)obj actionSets];
      v59 = [obja countByEnumeratingWithState:&v87 objects:v103 count:16];
      if (v59)
      {
        v60 = v59;
        v61 = *v88;
        while (2)
        {
          for (k = 0; k != v60; ++k)
          {
            if (*v88 != v61)
            {
              objc_enumerationMutation(obja);
            }

            v63 = *(*(&v87 + 1) + 8 * k);
            type2 = [v63 type];
            v65 = [type2 isEqualToString:v55];

            if (v65)
            {
              v70 = [v63 modelObjectWithChangeType:3];
              [transactionCopy add:v70];

              goto LABEL_50;
            }
          }

          v60 = [obja countByEnumeratingWithState:&v87 objects:v103 count:16];
          if (v60)
          {
            continue;
          }

          break;
        }
      }

LABEL_50:

      v39 = v79;
      v38 = modelCopy;
      uUIDString2 = v77;
      v49 = v78;
      uuid2 = v76;
      goto LABEL_51;
    }

    v71 = objc_autoreleasePoolPush();
    v72 = obj;
    v73 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      v74 = HMFGetLogIdentifier();
      *buf = 138543362;
      v106 = v74;
      _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_ERROR, "%{public}@Failed to create trigger-owned action set", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v71);
    [v79 respondWithError:v20];

    v49 = v78;
  }

LABEL_57:
  v46 = 0;
LABEL_58:

  return v46;
}

- (BOOL)_validateUpdatingTriggerWithName:(id)name uuid:(id)uuid message:(id)message
{
  v28 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  uuidCopy = uuid;
  messageCopy = message;
  if (!nameCopy)
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 20;
LABEL_9:
    v18 = [v16 hmErrorWithCode:v17];
    [messageCopy respondWithError:v18];

    v19 = 0;
    goto LABEL_10;
  }

  if (![nameCopy length])
  {
    v16 = MEMORY[0x277CCA9B8];
    v17 = 3;
    goto LABEL_9;
  }

  v11 = HMMaxLengthForNaming();
  if ([nameCopy length] > v11)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v26 = 138543362;
      v27 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@New name is longer than the pre-defined max length", &v26, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
    v16 = MEMORY[0x277CCA9B8];
    v17 = 46;
    goto LABEL_9;
  }

  home = [(HMDTrigger *)self home];
  v22 = [home triggerWithName:nameCopy];

  if (v22 && ([v22 uuid], v23 = objc_claimAutoreleasedReturnValue(), v24 = objc_msgSend(v23, "isEqual:", uuidCopy), v23, (v24 & 1) == 0))
  {
    v25 = [MEMORY[0x277CCA9B8] hmErrorWithCode:1];
    [messageCopy respondWithError:v25];

    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

LABEL_10:
  return v19;
}

- (Class)eventTriggerTypeToEventClass:(id)class
{
  classCopy = class;
  if (([classCopy isEqualToString:*MEMORY[0x277CD22D8]] & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x277CD22F8]) & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x277CD22D0]) & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x277CD2310]) & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x277CD22E0]) & 1) != 0 || (objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x277CD2308]) & 1) != 0 || objc_msgSend(classCopy, "isEqualToString:", *MEMORY[0x277CD22E8]))
  {
    v4 = objc_opt_class();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleUpdateEventTrigger:(id)trigger
{
  v73 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    messagePayload = [triggerCopy messagePayload];
    *buf = 138543874;
    v68 = v8;
    v69 = 2112;
    v70 = triggerCopy;
    v71 = 2112;
    v72 = messagePayload;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Received request to update Event Trigger %@ / %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v5);
  home = [(HMDTrigger *)selfCopy home];
  enabledResidents = [home enabledResidents];
  v12 = [enabledResidents count] == 0;

  if (!v12)
  {
    v53 = [triggerCopy stringForKey:*MEMORY[0x277CD2758]];
    v51 = [triggerCopy numberForKey:*MEMORY[0x277CD22C8]];
    [v51 unsignedIntegerValue];
    v50 = HMDaysOfTheWeekToDateComponents();
    v52 = [triggerCopy mutableCopy];
    objc_initWeak(&location, selfCopy);
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke;
    v63[3] = &unk_279733AE8;
    objc_copyWeak(&v65, &location);
    v13 = triggerCopy;
    v64 = v13;
    [v52 setResponseHandler:v63];
    name = [(HMDTrigger *)selfCopy name];
    if ([name isEqualToString:v53])
    {
    }

    else
    {
      uuid = [(HMDTrigger *)selfCopy uuid];
      v16 = [(HMDEventTrigger *)selfCopy _validateUpdatingTriggerWithName:v53 uuid:uuid message:v52];

      if (!v16)
      {
LABEL_25:

        objc_destroyWeak(&v65);
        objc_destroyWeak(&location);

        goto LABEL_26;
      }
    }

    if (v51 || [HMDEventTrigger __validateRecurrences:v50])
    {
      v17 = [HMDEventTriggerModel alloc];
      uuid2 = [(HMDTrigger *)selfCopy uuid];
      uuid3 = [home uuid];
      v20 = [(HMDBackingStoreModelObject *)v17 initWithObjectChangeType:2 uuid:uuid2 parentUUID:uuid3];

      backingStore = [home backingStore];
      name2 = [v13 name];
      v23 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v49 = [backingStore transaction:name2 options:v23];

      [(HMDEventTriggerModel *)v20 setName:v53];
      v24 = [v13 stringForKey:*MEMORY[0x277CD1250]];
      [(HMDEventTriggerModel *)v20 setConfiguredName:v24];

      v25 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277CD2730])}];
      [(HMDEventTriggerModel *)v20 setActive:v25];

      v48 = [v13 predicateForKey:*MEMORY[0x277CD2298]];
      if (v48)
      {
        predicateUtilities = [(HMDEventTrigger *)selfCopy predicateUtilities];
        v27 = [predicateUtilities rewritePredicateForDaemon:v48 message:v13];

        v28 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v27 requiringSecureCoding:1 error:0];
        [(HMDEventTriggerModel *)v20 setEvaluationCondition:v28];
      }

      else
      {
        [(HMDEventTriggerModel *)v20 setEvaluationCondition:0];
      }

      v29 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v50 requiringSecureCoding:1 error:0];
      [(HMDEventTriggerModel *)v20 setRecurrences:v29];

      v30 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277CD22B8])}];
      [(HMDEventTriggerModel *)v20 setExecuteOnce:v30];

      v31 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(v13, "BOOLForKey:", *MEMORY[0x277CD1260])}];
      [(HMDEventTriggerModel *)v20 setAutoDelete:v31];

      v32 = objc_alloc_init(MEMORY[0x277CBEB38]);
      if ([(HMDEventTrigger *)selfCopy _populateTriggerModel:v20 fromBuilderMessage:v52 transaction:v49 responsePayload:v32])
      {
        v46 = v32;
        v47 = [[HMDEventTrigger alloc] initWithModel:v20 home:home message:v13];
        v33 = [v13 arrayForKey:*MEMORY[0x277CD22B0]];
        triggerEvents = [(HMDEventTrigger *)selfCopy triggerEvents];
        v35 = [triggerEvents mutableCopy];
        v62 = 0;
        v36 = [HMDEventTrigger updateEventsFromInfo:v47 existingEvents:v33 preserveUUIDs:v35 endEvent:MEMORY[0x277CBEC28] transaction:v49 message:v13 error:&v62];
        v37 = v62;

        if (v36)
        {

          v38 = [v13 arrayForKey:*MEMORY[0x277CD22A8]];
          endEvents = [(HMDEventTrigger *)selfCopy endEvents];
          v40 = [endEvents mutableCopy];
          v61 = 0;
          v41 = [HMDEventTrigger updateEventsFromInfo:v47 existingEvents:v38 preserveUUIDs:v40 endEvent:MEMORY[0x277CBEC38] transaction:v49 message:v13 error:&v61];
          v37 = v61;

          if (v41)
          {
            [v49 add:v20];
            v54[0] = MEMORY[0x277D85DD0];
            v54[1] = 3221225472;
            v54[2] = __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke_120;
            v54[3] = &unk_2797248F0;
            v55 = v52;
            v56 = v46;
            v57 = v20;
            v58 = v48;
            v59 = home;
            v60 = selfCopy;
            [v49 run:v54];
          }

          else
          {
            [v52 respondWithError:v37];
          }
        }

        else
        {
          [v52 respondWithError:v37];
        }

        v32 = v46;
      }
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      v43 = selfCopy;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        *buf = 138543618;
        v68 = v45;
        v69 = 2112;
        v70 = v50;
        _os_log_impl(&dword_2531F8000, v44, OS_LOG_TYPE_ERROR, "%{public}@Received invalid values for recurrences: %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v42);
      v20 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      [v52 respondWithError:v20];
    }

    goto LABEL_25;
  }

  v53 = [MEMORY[0x277CCA9B8] hmErrorWithCode:91];
  [triggerCopy respondWithError:v53];
LABEL_26:
}

void __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = objc_autoreleasePoolPush();
  v9 = WeakRetained;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    v12 = 138543874;
    v13 = v11;
    v14 = 2112;
    v15 = v6;
    v16 = 2112;
    v17 = v5;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Responding to the client about update event trigger status : Payload : [%@], error : [%@]", &v12, 0x20u);
  }

  objc_autoreleasePoolPop(v8);
  [*(a1 + 32) respondWithPayload:v6 error:v5];
}

- (uint64_t)updateEventsFromInfo:(void *)info existingEvents:(void *)events preserveUUIDs:(void *)ds endEvent:(void *)event transaction:(void *)transaction message:(void *)message error:(void *)error
{
  v109 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  dsCopy = ds;
  eventCopy = event;
  infoCopy = info;
  v16 = eventCopy;
  transactionCopy = transaction;
  messageCopy = message;
  if (info)
  {
    v75 = objc_alloc_init(MEMORY[0x277CBEB18]);
    home = [info home];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v19 = eventsCopy;
    v78 = [v19 countByEnumeratingWithState:&v96 objects:v108 count:16];
    if (v78)
    {
      v79 = *v97;
      v72 = *MEMORY[0x277CD22A0];
      v77 = *MEMORY[0x277CD22F0];
      v73 = messageCopy;
      errorCopy = error;
      infoCopy2 = info;
      v71 = eventsCopy;
LABEL_4:
      v20 = 0;
      while (1)
      {
        if (*v97 != v79)
        {
          objc_enumerationMutation(v19);
        }

        v21 = *(*(&v96 + 1) + 8 * v20);
        v22 = v21;
        v23 = v16 ? [v16 BOOLValue] : objc_msgSend(v21, "hmf_BOOLForKey:", v72);
        v86 = v23;
        v24 = v22;
        objc_opt_class();
        v25 = (objc_opt_isKindOfClass() & 1) != 0 ? v24 : 0;
        v26 = v25;

        v85 = v26;
        if (!v26)
        {
          break;
        }

        v27 = [v24 hmf_stringForKey:v77];
        if (!v27)
        {
          v61 = objc_autoreleasePoolPush();
          v62 = infoCopy;
          v63 = HMFGetOSLogHandle();
          eventsCopy = v71;
          if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
          {
            v64 = HMFGetLogIdentifier();
            *buf = 138543618;
            v103 = v64;
            v104 = 2112;
            v105 = v85;
            _os_log_impl(&dword_2531F8000, v63, OS_LOG_TYPE_ERROR, "%{public}@Event must have trigger type %@", buf, 0x16u);

            error = errorCopy;
          }

          objc_autoreleasePoolPop(v61);
          v65 = 0;
          if (error)
          {
            goto LABEL_51;
          }

LABEL_52:

LABEL_53:
          v55 = 0;
          goto LABEL_59;
        }

        v83 = v27;
        v28 = [infoCopy eventTriggerTypeToEventClass:?];
        if (!v28)
        {
          v66 = objc_autoreleasePoolPush();
          v67 = infoCopy;
          v68 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            v69 = HMFGetLogIdentifier();
            *buf = 138543618;
            v103 = v69;
            v104 = 2112;
            v105 = v83;
            _os_log_impl(&dword_2531F8000, v68, OS_LOG_TYPE_ERROR, "%{public}@Invalid event trigger type: %@", buf, 0x16u);

            error = errorCopy;
          }

          objc_autoreleasePoolPop(v66);
          eventsCopy = v71;
          v65 = v83;
          if (!error)
          {
            goto LABEL_52;
          }

LABEL_51:
          *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          goto LABEL_52;
        }

        v29 = [v28 alloc];
        v95 = 0;
        v82 = v24;
        v30 = [infoCopy createEventModel:v24 endEvent:v86 message:messageCopy checkForSupport:1 transaction:transactionCopy error:&v95];
        v84 = v95;
        v31 = [v29 initWithModel:v30 home:home];
        v32 = infoCopy;
        v33 = v31;

        if (v33)
        {
          [v75 addObject:v33];
          v93 = 0u;
          v94 = 0u;
          v91 = 0u;
          v92 = 0u;
          v34 = dsCopy;
          v35 = [v34 countByEnumeratingWithState:&v91 objects:v101 count:16];
          if (v35)
          {
            v36 = v35;
            v37 = *v92;
LABEL_19:
            v38 = v16;
            v39 = 0;
            while (1)
            {
              if (*v92 != v37)
              {
                objc_enumerationMutation(v34);
              }

              v40 = *(*(&v91 + 1) + 8 * v39);
              if ([v40 isCompatibleWithEvent:v33])
              {
                break;
              }

              if (v36 == ++v39)
              {
                v36 = [v34 countByEnumeratingWithState:&v91 objects:v101 count:16];
                v16 = v38;
                if (v36)
                {
                  goto LABEL_19;
                }

                goto LABEL_25;
              }
            }

            v41 = v40;

            v16 = v38;
            if (!v41)
            {
              goto LABEL_28;
            }

            uuid = [v41 uuid];
            [v33 setUuid:uuid];

            eventTrigger = [v41 eventTrigger];
            [v33 setEventTrigger:eventTrigger];

            v44 = [v33 modelObjectWithChangeType:2];
            [transactionCopy add:v44];

            [v34 removeObject:v41];
            messageCopy = v73;
            error = errorCopy;
            v45 = v82;
          }

          else
          {
LABEL_25:

LABEL_28:
            v45 = v82;
            messageCopy = v73;
            error = errorCopy;
            [(HMDEventTrigger *)infoCopy2 _addEventModelFromDictionary:v82 endEvent:v86 transaction:transactionCopy message:v73 error:errorCopy];
          }
        }

        else
        {
          v46 = objc_autoreleasePoolPush();
          v47 = v32;
          v48 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
          {
            v49 = HMFGetLogIdentifier();
            *buf = 138543874;
            v103 = v49;
            v104 = 2112;
            v105 = v85;
            v106 = 2112;
            v107 = v84;
            _os_log_impl(&dword_2531F8000, v48, OS_LOG_TYPE_ERROR, "%{public}@Failed to deserialize action: %@ with error: %@", buf, 0x20u);

            error = errorCopy;
          }

          objc_autoreleasePoolPop(v46);
          v45 = v82;
          if (error)
          {
            *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
          }
        }

        if (!v33)
        {
          v55 = 0;
          eventsCopy = v71;
          goto LABEL_59;
        }

        ++v20;
        infoCopy = infoCopy2;
        if (v20 == v78)
        {
          eventsCopy = v71;
          v78 = [v19 countByEnumeratingWithState:&v96 objects:v108 count:16];
          if (v78)
          {
            goto LABEL_4;
          }

          goto LABEL_36;
        }
      }

      v56 = objc_autoreleasePoolPush();
      v57 = infoCopy;
      v58 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
      {
        v59 = HMFGetLogIdentifier();
        name = [v57 name];
        *buf = 138543618;
        v103 = v59;
        v104 = 2112;
        v105 = name;
        _os_log_impl(&dword_2531F8000, v58, OS_LOG_TYPE_ERROR, "%{public}@Can't update events %@; invalid serialized event", buf, 0x16u);

        error = errorCopy;
      }

      objc_autoreleasePoolPop(v56);
      eventsCopy = v71;
      if (error)
      {
        *error = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      goto LABEL_53;
    }

LABEL_36:

    v89 = 0u;
    v90 = 0u;
    v87 = 0u;
    v88 = 0u;
    v19 = dsCopy;
    v50 = [v19 countByEnumeratingWithState:&v87 objects:v100 count:16];
    if (v50)
    {
      v51 = v50;
      v52 = *v88;
      do
      {
        for (i = 0; i != v51; ++i)
        {
          if (*v88 != v52)
          {
            objc_enumerationMutation(v19);
          }

          v54 = [*(*(&v87 + 1) + 8 * i) modelObjectWithChangeType:3];
          [transactionCopy add:v54];
        }

        v51 = [v19 countByEnumeratingWithState:&v87 objects:v100 count:16];
      }

      while (v51);
    }

    v55 = 1;
LABEL_59:
  }

  else
  {
    v55 = 0;
  }

  return v55;
}

void __45__HMDEventTrigger__handleUpdateEventTrigger___block_invoke_120(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a1 + 32);

    [v3 respondWithError:a2];
  }

  else
  {
    v4 = *(a1 + 40);
    v5 = [*(a1 + 48) createPayloadWithCondition:*(a1 + 56)];
    [v4 addEntriesFromDictionary:v5];

    v6 = *(a1 + 64);
    v7 = [*(a1 + 72) triggerEvents];
    v8 = [(HMDHome *)v6 _createEventsPayload:v7];
    [*(a1 + 40) setObject:v8 forKeyedSubscript:*MEMORY[0x277CD22B0]];

    v9 = *(a1 + 64);
    v10 = [*(a1 + 72) endEvents];
    v11 = [(HMDHome *)v9 _createEventsPayload:v10];
    [*(a1 + 40) setObject:v11 forKeyedSubscript:*MEMORY[0x277CD22A8]];

    v12 = *(a1 + 32);
    v13 = objc_msgSend_copy(*(a1 + 40));
    [v12 respondWithPayload:v13];
  }
}

- (void)_addEventModelFromDictionary:(uint64_t)dictionary endEvent:(void *)event transaction:(void *)transaction message:(void *)message error:
{
  v93 = *MEMORY[0x277D85DE8];
  v11 = a2;
  eventCopy = event;
  transactionCopy = transaction;
  v88 = 0;
  v14 = [self createEventModel:v11 endEvent:dictionary message:transactionCopy checkForSupport:1 transaction:eventCopy error:&v88];
  v87 = v88;
  if (v14)
  {
    v85 = transactionCopy;
    v86 = v11;
    [eventCopy add:v14];
    v15 = v14;
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      home = [self home];
      v18 = [[HMDCharacteristicEvent alloc] initWithModel:v15 home:home];
      if (v18)
      {
        [self addEvent:v18];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home userInfo:0];
        }
      }

      else
      {
        v26 = objc_autoreleasePoolPush();
        selfCopy = self;
        v28 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
        {
          v29 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v29;
          v91 = 2112;
          v92 = v15;
          _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v26);
      }
    }

    else
    {
      v18 = 0;
    }

    v30 = v15;
    objc_opt_class();
    v31 = objc_opt_isKindOfClass();

    if (v31)
    {
      home2 = [self home];
      v33 = [[HMDLocationEvent alloc] initWithModel:v30 home:home2];

      if (v33)
      {
        [self addEvent:v33];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter2 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home2 userInfo:0];
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
          *buf = 138543618;
          v90 = v38;
          v91 = 2112;
          v92 = v30;
          _os_log_impl(&dword_2531F8000, v37, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v35);
      }
    }

    else
    {
      v33 = v18;
    }

    v39 = v30;
    objc_opt_class();
    v40 = objc_opt_isKindOfClass();

    if (v40)
    {
      home3 = [self home];
      v42 = [[HMDCalendarEvent alloc] initWithModel:v39 home:home3];

      if (v42)
      {
        [self addEvent:v42];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter3 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home3 userInfo:0];
        }
      }

      else
      {
        v44 = objc_autoreleasePoolPush();
        selfCopy3 = self;
        v46 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
        {
          v47 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v47;
          v91 = 2112;
          v92 = v39;
          _os_log_impl(&dword_2531F8000, v46, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v44);
      }
    }

    else
    {
      v42 = v33;
    }

    v48 = v39;
    objc_opt_class();
    v49 = objc_opt_isKindOfClass();

    if (v49)
    {
      home4 = [self home];
      v51 = [[HMDSignificantTimeEvent alloc] initWithModel:v48 home:home4];

      if (v51)
      {
        [self addEvent:v51];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter4 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home4 userInfo:0];
        }
      }

      else
      {
        v53 = objc_autoreleasePoolPush();
        selfCopy4 = self;
        v55 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v56;
          v91 = 2112;
          v92 = v48;
          _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v53);
      }
    }

    else
    {
      v51 = v42;
    }

    v57 = v48;
    objc_opt_class();
    v58 = objc_opt_isKindOfClass();

    if (v58)
    {
      home5 = [self home];
      v60 = [[HMDDurationEvent alloc] initWithModel:v57 home:home5];

      if (v60)
      {
        [self addEvent:v60];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter5 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home5 userInfo:0];
        }
      }

      else
      {
        v62 = objc_autoreleasePoolPush();
        selfCopy5 = self;
        v64 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v64, OS_LOG_TYPE_INFO))
        {
          v65 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v65;
          v91 = 2112;
          v92 = v57;
          _os_log_impl(&dword_2531F8000, v64, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v62);
      }
    }

    else
    {
      v60 = v51;
    }

    v66 = v57;
    objc_opt_class();
    v67 = objc_opt_isKindOfClass();

    if (v67)
    {
      home6 = [self home];
      v69 = [[HMDCharacteristicThresholdRangeEvent alloc] initWithModel:v66 home:home6];

      if (v69)
      {
        [self addEvent:v69];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter6 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home6 userInfo:0];
        }
      }

      else
      {
        v71 = objc_autoreleasePoolPush();
        selfCopy6 = self;
        v73 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_INFO))
        {
          v74 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v74;
          v91 = 2112;
          v92 = v66;
          _os_log_impl(&dword_2531F8000, v73, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v71);
      }
    }

    else
    {
      v69 = v60;
    }

    v75 = v66;
    objc_opt_class();
    v76 = objc_opt_isKindOfClass();

    if (v76)
    {
      home7 = [self home];
      v78 = [[HMDPresenceEvent alloc] initWithModel:v75 home:home7];

      if (v78)
      {
        [self addEvent:v78];
        objc_opt_class();
        v24 = v87;
        if (objc_opt_isKindOfClass())
        {
          defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
          [defaultCenter7 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home7 userInfo:0];
        }
      }

      else
      {
        v80 = objc_autoreleasePoolPush();
        selfCopy7 = self;
        v82 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v82, OS_LOG_TYPE_INFO))
        {
          v83 = HMFGetLogIdentifier();
          *buf = 138543618;
          v90 = v83;
          v91 = 2112;
          v92 = v75;
          _os_log_impl(&dword_2531F8000, v82, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v80);
        v24 = v87;
      }
    }

    else
    {
      v78 = v69;
      v24 = v87;
    }

    transactionCopy = v85;
    v11 = v86;
  }

  else
  {
    v20 = objc_autoreleasePoolPush();
    selfCopy8 = self;
    v22 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
    {
      v23 = HMFGetLogIdentifier();
      *buf = 138543618;
      v90 = v23;
      v91 = 2112;
      v92 = v11;
      _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Cannot create event model for event info %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v20);
    v24 = v87;
    if (message)
    {
      if (v87)
      {
        v25 = v87;
        *message = v87;
      }

      else
      {
        v84 = [MEMORY[0x277CCA9B8] hmErrorWithCode:20];
        *message = v84;
      }
    }
  }
}

- (id)_updateEventsOnEventTrigger:(id)trigger
{
  v104 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v69 = triggerCopy;
  if ([triggerCopy isRemote] & 1) != 0 || (-[HMDEventTrigger locationEvents](self, "locationEvents"), v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "count"), v4, triggerCopy = v69, !v5) || (objc_msgSend(v69, "isAuthorizedForLocationAccess"))
  {
    v70 = *MEMORY[0x277CD22B0];
    v6 = [triggerCopy arrayForKey:?];
    array = [MEMORY[0x277CBEB18] array];
    v7 = [v69 BOOLForKey:*MEMORY[0x277CD22A0]];
    home = [(HMDTrigger *)self home];
    backingStore = [home backingStore];
    name = [v69 name];
    v10 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
    v78 = [backingStore transaction:name options:v10];

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    obj = v6;
    v73 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
    v12 = v73 != 0;
    if (v73)
    {
      v71 = *v91;
      *&v11 = 138543362;
      v67 = v11;
LABEL_6:
      v13 = 0;
      while (1)
      {
        if (*v91 != v71)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v90 + 1) + 8 * v13);
        v89 = 0;
        v15 = [(HMDEventTrigger *)self createEventModel:v14 endEvent:v7 message:v69 checkForSupport:1 transaction:v78 error:&v89, v67];
        v75 = v89;
        if (!v15)
        {
          break;
        }

        if (![(HMDEventTrigger *)self _checkAddEventModel:v15 message:v69])
        {
          v53 = objc_autoreleasePoolPush();
          selfCopy = self;
          v55 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
          {
            v56 = HMFGetLogIdentifier();
            *buf = v67;
            v101 = v56;
            _os_log_impl(&dword_2531F8000, v55, OS_LOG_TYPE_INFO, "%{public}@Cannot update events - Incompatible home hub", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v53);
LABEL_42:

          v57 = 0;
          goto LABEL_47;
        }

        if ([home isSharedAdmin])
        {
          v16 = objc_autoreleasePoolPush();
          selfCopy2 = self;
          v18 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            v19 = HMFGetLogIdentifier();
            *buf = v67;
            v101 = v19;
            _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@shared admin is sending the request to resident.", buf, 0xCu);
          }

          objc_autoreleasePoolPop(v16);
          v20 = objc_alloc(MEMORY[0x277D0F820]);
          uuid = [(HMDTrigger *)selfCopy2 uuid];
          v22 = [v20 initWithTarget:uuid];

          v23 = MEMORY[0x277D0F818];
          v97 = v70;
          v98 = v14;
          v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v98 forKeys:&v97 count:1];
          v25 = [v23 messageWithName:@"kAddEventToEventTriggerRequestKey" qualityOfService:9 destination:v22 payload:v24];

          [array addObject:v25];
        }

        [v78 add:v15 withMessage:0];

        if (v73 == ++v13)
        {
          v73 = [obj countByEnumeratingWithState:&v90 objects:v99 count:16];
          if (v73)
          {
            goto LABEL_6;
          }

          goto LABEL_17;
        }
      }

      responseHandler = [v69 responseHandler];

      if (responseHandler)
      {
        if (!v75)
        {
          v75 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
        }

        responseHandler2 = [v69 responseHandler];
        (responseHandler2)[2](responseHandler2, v75, 0);
      }

      v15 = 0;
      goto LABEL_42;
    }

LABEL_17:

    v87 = 0u;
    v88 = 0u;
    v85 = 0u;
    v86 = 0u;
    events = [(HMDEventTrigger *)self events];
    v26 = [events countByEnumeratingWithState:&v85 objects:v96 count:16];
    if (v26)
    {
      v27 = *v86;
      v72 = *MEMORY[0x277CD2340];
      do
      {
        for (i = 0; i != v26; ++i)
        {
          if (*v86 != v27)
          {
            objc_enumerationMutation(events);
          }

          v29 = *(*(&v85 + 1) + 8 * i);
          if (v7 == [v29 isEndEvent])
          {
            v30 = objc_autoreleasePoolPush();
            selfCopy3 = self;
            v32 = HMFGetOSLogHandle();
            if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
            {
              v33 = HMFGetLogIdentifier();
              *buf = 138543618;
              v101 = v33;
              v102 = 2112;
              v103 = v29;
              _os_log_impl(&dword_2531F8000, v32, OS_LOG_TYPE_INFO, "%{public}@Deleting event %@", buf, 0x16u);
            }

            objc_autoreleasePoolPop(v30);
            v34 = [HMDEventModel alloc];
            uuid2 = [v29 uuid];
            uuid3 = [(HMDTrigger *)selfCopy3 uuid];
            v37 = [(HMDBackingStoreModelObject *)v34 initWithObjectChangeType:3 uuid:uuid2 parentUUID:uuid3];

            if ([home isSharedAdmin])
            {
              v38 = objc_autoreleasePoolPush();
              v39 = selfCopy3;
              v40 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
              {
                v41 = HMFGetLogIdentifier();
                *buf = 138543362;
                v101 = v41;
                _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_ERROR, "%{public}@Admin user : Remove event from trigger", buf, 0xCu);
              }

              objc_autoreleasePoolPop(v38);
              v42 = objc_alloc(MEMORY[0x277D0F820]);
              uuid4 = [(HMDTrigger *)v39 uuid];
              v44 = [v42 initWithTarget:uuid4];

              v45 = MEMORY[0x277D0F818];
              v94 = v72;
              uuid5 = [v29 uuid];
              uUIDString = [uuid5 UUIDString];
              v95 = uUIDString;
              v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v95 forKeys:&v94 count:1];
              v49 = [v45 messageWithName:@"kRemoveEventFromEventTriggerRequestKey" qualityOfService:9 destination:v44 payload:v48];

              [array addObject:v49];
            }

            [v78 add:v37 withMessage:0];

            v12 = 1;
          }
        }

        v26 = [events countByEnumeratingWithState:&v85 objects:v96 count:16];
      }

      while (v26);
    }

    objc_initWeak(&location, self);
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke;
    aBlock[3] = &unk_2797248C8;
    objc_copyWeak(&v82, &location);
    v83 = v7;
    v81 = v69;
    v50 = _Block_copy(aBlock);
    if (v12)
    {
      [v78 run:v50];
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543362;
        v101 = v61;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_ERROR, "%{public}@No events updated, calling the completion handler rightaway", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v58);
      v50[2](v50, 0);
    }

    v57 = objc_msgSend_copy(array);

    objc_destroyWeak(&v82);
    objc_destroyWeak(&location);
LABEL_47:
  }

  else
  {
    obj = [MEMORY[0x277CCA9B8] hmErrorWithCode:85];
    [v69 respondWithError:obj];
    v63 = objc_autoreleasePoolPush();
    selfCopy5 = self;
    v65 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_INFO))
    {
      v66 = HMFGetLogIdentifier();
      *buf = 138543618;
      v101 = v66;
      v102 = 2112;
      v103 = obj;
      _os_log_impl(&dword_2531F8000, v65, OS_LOG_TYPE_INFO, "%{public}@Client does not have authorization for location, cannot remove event. [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v63);
    v57 = 0;
  }

  return v57;
}

void __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained workQueue];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke_2;
    v13[3] = &unk_279731C38;
    v7 = v3;
    v17 = *(a1 + 48);
    v14 = v7;
    v15 = v5;
    v16 = *(a1 + 32);
    dispatch_async(v6, v13);

    v8 = v14;
LABEL_7:

    goto LABEL_8;
  }

  v9 = [*(a1 + 32) responseHandler];

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v12 = HMFGetLogIdentifier();
      *buf = 138543618;
      v19 = v12;
      v20 = 2112;
      v21 = v3;
      _os_log_impl(&dword_2531F8000, v11, OS_LOG_TYPE_ERROR, "%{public}@Could not finish the request as self is no longer valid. Replying back to client with error:[%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v10);
    v8 = [*(a1 + 32) responseHandler];
    (v8)[2](v8, v3, 0);
    goto LABEL_7;
  }

LABEL_8:
}

void __47__HMDEventTrigger__updateEventsOnEventTrigger___block_invoke_2(uint64_t a1)
{
  v35 = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v2 = objc_autoreleasePoolPush();
    v3 = *(a1 + 40);
    v4 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = HMFGetLogIdentifier();
      v6 = *(a1 + 32);
      *buf = 138543618;
      v29 = v5;
      v30 = 2112;
      v31 = v6;
      _os_log_impl(&dword_2531F8000, v4, OS_LOG_TYPE_ERROR, "%{public}@Error occurred while updating events on event trigger. [%@]", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v2);
    [*(a1 + 48) respondWithError:*(a1 + 32)];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB38] dictionary];
    v8 = [MEMORY[0x277CCABB0] numberWithBool:*(a1 + 56)];
    [v7 setObject:v8 forKeyedSubscript:*MEMORY[0x277CD22A0]];

    v9 = *(a1 + 40);
    if (*(a1 + 56))
    {
      [v9 endEvents];
    }

    else
    {
      [v9 triggerEvents];
    }
    v10 = ;
    v11 = [MEMORY[0x277CBEB18] array];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v10;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        v16 = 0;
        do
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [*(*(&v24 + 1) + 8 * v16) createPayload];
          [v11 addObject:v17];

          ++v16;
        }

        while (v14 != v16);
        v14 = [v12 countByEnumeratingWithState:&v24 objects:v34 count:16];
      }

      while (v14);
    }

    v18 = objc_msgSend_copy(v11);
    [v7 setObject:v18 forKeyedSubscript:*MEMORY[0x277CD22B0]];

    v19 = objc_autoreleasePoolPush();
    v20 = *(a1 + 40);
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      v23 = [*(a1 + 48) name];
      *buf = 138543874;
      v29 = v22;
      v30 = 2112;
      v31 = v23;
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@All the events updated. Updating clients. %@ : %@]", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v19);
    [*(a1 + 48) respondWithPayload:v7];
  }
}

- (void)_handleUpdateEventsOnEventTrigger:(id)trigger
{
  v41 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = [(HMDTrigger *)self updateEventTriggerMessage:2 message:triggerCopy relay:0];
  if (v5)
  {
    v6 = [(HMDEventTrigger *)self _updateEventsOnEventTrigger:v5];
    home = [(HMDTrigger *)self home];
    if ([v6 count] && objc_msgSend(home, "isSharedAdmin"))
    {
      v30 = home;
      v31 = [triggerCopy mutableCopy];
      [v31 setResponseHandler:0];
      if ([(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:0])
      {
        v8 = objc_autoreleasePoolPush();
        selfCopy = self;
        v10 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v11 = HMFGetLogIdentifier();
          name = [triggerCopy name];
          *buf = 138543618;
          v38 = v11;
          v39 = 2112;
          v40 = name;
          _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@The resident supports shared-trigger-activation, relaying the update events message as is : %@", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v8);
        administratorHandler = [v30 administratorHandler];
        v14 = [administratorHandler operationForMessage:v31 error:0];
        if (v14)
        {
          [administratorHandler addOperation:v14];
        }
      }

      else
      {
        v34 = 0u;
        v35 = 0u;
        v32 = 0u;
        v33 = 0u;
        administratorHandler = v6;
        v15 = [administratorHandler countByEnumeratingWithState:&v32 objects:v36 count:16];
        if (v15)
        {
          v16 = v15;
          v27 = v6;
          v28 = v5;
          v29 = triggerCopy;
          v17 = *v33;
          v18 = home;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v33 != v17)
              {
                objc_enumerationMutation(administratorHandler);
              }

              v20 = *(*(&v32 + 1) + 8 * i);
              v21 = objc_autoreleasePoolPush();
              selfCopy2 = self;
              v23 = HMFGetOSLogHandle();
              if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
              {
                v24 = HMFGetLogIdentifier();
                *buf = 138543618;
                v38 = v24;
                v39 = 2112;
                v40 = v20;
                _os_log_impl(&dword_2531F8000, v23, OS_LOG_TYPE_INFO, "%{public}@The resident does not support shared-trigger-activation, relaying the message %@", buf, 0x16u);

                v18 = v30;
              }

              objc_autoreleasePoolPop(v21);
              administratorHandler2 = [v18 administratorHandler];
              v26 = [administratorHandler2 operationForMessage:v31 error:0];
              if (v26)
              {
                [administratorHandler2 addOperation:v26];
              }
            }

            v16 = [administratorHandler countByEnumeratingWithState:&v32 objects:v36 count:16];
          }

          while (v16);
          v5 = v28;
          triggerCopy = v29;
          v6 = v27;
        }
      }

      home = v30;
    }
  }
}

- (BOOL)checkSharedEventTriggerActivationResidentRequirement:(id)requirement
{
  v32 = *MEMORY[0x277D85DE8];
  requirementCopy = requirement;
  home = [(HMDTrigger *)self home];
  enabledResidents = [home enabledResidents];

  if ([enabledResidents count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = enabledResidents;
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v10 |= [*(*(&v25 + 1) + 8 * i) supportsSharedEventTriggerActivation];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v9);

      if (v10)
      {
        LOBYTE(responseHandler) = 1;
        goto LABEL_21;
      }
    }

    else
    {
    }

    v19 = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v22;
      _os_log_impl(&dword_2531F8000, v21, OS_LOG_TYPE_INFO, "%{public}@Did not find any compatible resident device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v19);
    responseHandler = [requirementCopy responseHandler];

    if (responseHandler)
    {
      v18 = 92;
      goto LABEL_20;
    }
  }

  else
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
    {
      v17 = HMFGetLogIdentifier();
      *buf = 138543362;
      v31 = v17;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_INFO, "%{public}@Did not find any resident device", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v14);
    responseHandler = [requirementCopy responseHandler];

    if (responseHandler)
    {
      v18 = 91;
LABEL_20:
      responseHandler2 = [requirementCopy responseHandler];
      responseHandler = [MEMORY[0x277CCA9B8] hmErrorWithCode:v18];
      (responseHandler2)[2](responseHandler2, responseHandler, 0);

      LOBYTE(responseHandler) = 0;
    }
  }

LABEL_21:

  return responseHandler;
}

- (BOOL)_checkAddEventModel:(id)model message:(id)message
{
  modelCopy = model;
  messageCopy = message;
  endEvent = [modelCopy endEvent];
  bOOLValue = [endEvent BOOLValue];

  v10 = (bOOLValue & 1) == 0 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0) || [(HMDEventTrigger *)self checkSharedEventTriggerActivationResidentRequirement:messageCopy];
  return v10;
}

- (BOOL)addEventsFromMessage:(id)message preserveUUIDs:(BOOL)ds transaction:(id)transaction error:(id *)error
{
  messageCopy = message;
  transactionCopy = transaction;
  v12 = [messageCopy arrayForKey:*MEMORY[0x277CD22B0]];
  v13 = [messageCopy arrayForKey:*MEMORY[0x277CD22A8]];
  if (v13)
  {
    if (![(HMDEventTrigger *)self addEventsFromInfo:v12 preserveUUIDs:ds endEvent:MEMORY[0x277CBEC28] transaction:transactionCopy message:messageCopy error:error])
    {
      v18 = 0;
      goto LABEL_7;
    }

    v14 = MEMORY[0x277CBEC38];
    selfCopy2 = self;
    v16 = v13;
    dsCopy2 = ds;
  }

  else
  {
    selfCopy2 = self;
    v16 = v12;
    dsCopy2 = ds;
    v14 = 0;
  }

  v18 = [(HMDEventTrigger *)selfCopy2 addEventsFromInfo:v16 preserveUUIDs:dsCopy2 endEvent:v14 transaction:transactionCopy message:messageCopy error:error];
LABEL_7:

  return v18;
}

- (BOOL)addEventsFromInfo:(char)info preserveUUIDs:(void *)ds endEvent:(void *)event transaction:(void *)transaction message:(void *)message error:
{
  v38 = *MEMORY[0x277D85DE8];
  obj = a2;
  dsCopy = ds;
  eventCopy = event;
  transactionCopy = transaction;
  if (self)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v34;
      v27 = *MEMORY[0x277CD22A0];
      v17 = *MEMORY[0x277CD2340];
      v28 = dsCopy;
      do
      {
        v18 = 0;
        v29 = v15;
        do
        {
          if (*v34 != v16)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v33 + 1) + 8 * v18);
          v20 = v19;
          if (dsCopy)
          {
            bOOLValue = [dsCopy BOOLValue];
          }

          else
          {
            bOOLValue = [v19 hmf_BOOLForKey:v27];
          }

          v22 = bOOLValue;
          if ((info & 1) == 0)
          {
            v23 = transactionCopy;
            v24 = [v20 objectForKeyedSubscript:v17];

            if (v24)
            {
              v25 = [v20 mutableCopy];
              [v25 setObject:0 forKeyedSubscript:v17];

              v20 = v25;
            }

            transactionCopy = v23;
            dsCopy = v28;
            v15 = v29;
          }

          [(HMDEventTrigger *)self _addEventModelFromDictionary:v20 endEvent:v22 transaction:eventCopy message:transactionCopy error:message];

          ++v18;
        }

        while (v15 != v18);
        v15 = [obj countByEnumeratingWithState:&v33 objects:v37 count:16];
      }

      while (v15);
    }
  }

  return self != 0;
}

- (void)_handleRemoveEventModel:(id)model message:(id)message
{
  v29 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  events = [(HMDEventTrigger *)self events];
  uuid = [modelCopy uuid];
  v10 = [events hmf_firstObjectWithUUID:uuid];

  v11 = objc_autoreleasePoolPush();
  selfCopy = self;
  v13 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
  {
    v14 = HMFGetLogIdentifier();
    *buf = 138543618;
    v26 = v14;
    v27 = 2112;
    v28 = v10;
    _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Removing event %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v11);
  if (v10)
  {
    v15 = v10;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = v16;

    [v17 invalidate];
    [(HMDEventTrigger *)selfCopy removeEvent:v15];
    v23 = @"kUUIDsOfEventsKey";
    uuid2 = [v15 uuid];
    uUIDString = [uuid2 UUIDString];
    v22 = uUIDString;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:&v22 count:1];
    v24 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v24 forKeys:&v23 count:1];

    [(HMDTrigger *)selfCopy markChangedForMessage:messageCopy];
    [messageCopy respondWithPayload:v21];
  }

  else
  {
    v21 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
    [messageCopy respondWithError:v21];
  }
}

- (void)_removeEventsFromEventTrigger:(id)trigger
{
  v37 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = [triggerCopy uuidForKey:*MEMORY[0x277CD2340]];
  events = [(HMDEventTrigger *)self events];
  v7 = [events hmf_firstObjectWithUUID:v5];

  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) == 0 || ([triggerCopy isAuthorizedForLocationAccess])
    {
      v8 = [HMDEventModel alloc];
      uuid = [v7 uuid];
      uuid2 = [(HMDTrigger *)self uuid];
      v11 = [(HMDBackingStoreModelObject *)v8 initWithObjectChangeType:3 uuid:uuid parentUUID:uuid2];

      home = [(HMDTrigger *)self home];
      backingStore = [home backingStore];
      name = [triggerCopy name];
      v15 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
      v16 = [backingStore transaction:name options:v15];

      [v16 add:v11 withMessage:triggerCopy];
      [v16 run];

      goto LABEL_14;
    }

    v24 = objc_autoreleasePoolPush();
    selfCopy = self;
    v26 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = HMFGetLogIdentifier();
      v31 = 138543362;
      v32 = v27;
      _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Client does have authorization for location, cannot remove event", &v31, 0xCu);
    }

    objc_autoreleasePoolPop(v24);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 85;
  }

  else
  {
    v17 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
    {
      v20 = HMFGetLogIdentifier();
      name2 = [(HMDTrigger *)selfCopy2 name];
      v31 = 138543874;
      v32 = v20;
      v33 = 2112;
      v34 = v5;
      v35 = 2112;
      v36 = name2;
      _os_log_impl(&dword_2531F8000, v19, OS_LOG_TYPE_INFO, "%{public}@Couldn't find event with UUID %@ in trigger %@", &v31, 0x20u);
    }

    objc_autoreleasePoolPop(v17);
    v22 = MEMORY[0x277CCA9B8];
    v23 = 2;
  }

  v28 = [v22 hmErrorWithCode:v23];
  responseHandler = [triggerCopy responseHandler];

  if (responseHandler)
  {
    responseHandler2 = [triggerCopy responseHandler];
    (responseHandler2)[2](responseHandler2, v28, 0);
  }

LABEL_14:
}

- (void)_handleRemoveEventsFromEventTrigger:(id)trigger relay:(BOOL)relay
{
  v5 = [(HMDTrigger *)self updateEventTriggerMessage:3 message:trigger relay:relay];
  v6 = v5;
  if (v5)
  {
    v7 = v5;
    v5 = [(HMDEventTrigger *)self _removeEventsFromEventTrigger:v5];
    v6 = v7;
  }

  MEMORY[0x2821F96F8](v5, v6);
}

- (void)_handleAddEventModel:(id)model message:(id)message
{
  v88 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  v8 = modelCopy;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v10 = 0;
  if (v8 && (isKindOfClass & 1) != 0)
  {
    home = [(HMDTrigger *)self home];
    v10 = [[HMDCharacteristicEvent alloc] initWithModel:v8 home:home];
    if (v10)
    {
      [(HMDEventTrigger *)self addEvent:v10];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home userInfo:0];
      }
    }

    else
    {
      v13 = objc_autoreleasePoolPush();
      selfCopy = self;
      v15 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v16;
        v84 = 2112;
        v85 = v8;
        _os_log_impl(&dword_2531F8000, v15, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v13);
    }
  }

  v17 = v8;
  objc_opt_class();
  v18 = objc_opt_isKindOfClass();

  if (v8 && (v18 & 1) != 0)
  {
    home2 = [(HMDTrigger *)self home];
    v20 = [[HMDLocationEvent alloc] initWithModel:v17 home:home2];

    if (v20)
    {
      [(HMDEventTrigger *)self addEvent:v20];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter2 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home2 userInfo:0];
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
        *buf = 138543618;
        v83 = v25;
        v84 = 2112;
        v85 = v17;
        _os_log_impl(&dword_2531F8000, v24, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v22);
    }
  }

  else
  {
    v20 = v10;
  }

  v26 = v17;
  objc_opt_class();
  v27 = objc_opt_isKindOfClass();

  if (v8 && (v27 & 1) != 0)
  {
    home3 = [(HMDTrigger *)self home];
    v29 = [[HMDCalendarEvent alloc] initWithModel:v26 home:home3];

    if (v29)
    {
      [(HMDEventTrigger *)self addEvent:v29];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter3 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter3 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home3 userInfo:0];
      }
    }

    else
    {
      v31 = objc_autoreleasePoolPush();
      selfCopy3 = self;
      v33 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
      {
        v34 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v34;
        v84 = 2112;
        v85 = v26;
        _os_log_impl(&dword_2531F8000, v33, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v31);
    }
  }

  else
  {
    v29 = v20;
  }

  v35 = v26;
  objc_opt_class();
  v36 = objc_opt_isKindOfClass();

  if (v8 && (v36 & 1) != 0)
  {
    home4 = [(HMDTrigger *)self home];
    v38 = [[HMDSignificantTimeEvent alloc] initWithModel:v35 home:home4];

    if (v38)
    {
      [(HMDEventTrigger *)self addEvent:v38];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter4 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter4 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home4 userInfo:0];
      }
    }

    else
    {
      v40 = objc_autoreleasePoolPush();
      selfCopy4 = self;
      v42 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_INFO))
      {
        v43 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v43;
        v84 = 2112;
        v85 = v35;
        _os_log_impl(&dword_2531F8000, v42, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v40);
    }
  }

  else
  {
    v38 = v29;
  }

  v44 = v35;
  objc_opt_class();
  v45 = objc_opt_isKindOfClass();

  if (v8 && (v45 & 1) != 0)
  {
    home5 = [(HMDTrigger *)self home];
    v47 = [[HMDDurationEvent alloc] initWithModel:v44 home:home5];

    if (v47)
    {
      [(HMDEventTrigger *)self addEvent:v47];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter5 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter5 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home5 userInfo:0];
      }
    }

    else
    {
      v49 = objc_autoreleasePoolPush();
      selfCopy5 = self;
      v51 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
      {
        v52 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v52;
        v84 = 2112;
        v85 = v44;
        _os_log_impl(&dword_2531F8000, v51, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v49);
    }
  }

  else
  {
    v47 = v38;
  }

  v53 = v44;
  objc_opt_class();
  v54 = objc_opt_isKindOfClass();

  if (v8 && (v54 & 1) != 0)
  {
    home6 = [(HMDTrigger *)self home];
    v56 = [[HMDCharacteristicThresholdRangeEvent alloc] initWithModel:v53 home:home6];

    if (v56)
    {
      [(HMDEventTrigger *)self addEvent:v56];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter6 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter6 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home6 userInfo:0];
      }
    }

    else
    {
      v58 = objc_autoreleasePoolPush();
      selfCopy6 = self;
      v60 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
      {
        v61 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v61;
        v84 = 2112;
        v85 = v53;
        _os_log_impl(&dword_2531F8000, v60, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v58);
    }
  }

  else
  {
    v56 = v47;
  }

  v62 = v53;
  objc_opt_class();
  v63 = objc_opt_isKindOfClass();

  if (v8 && (v63 & 1) != 0)
  {
    home7 = [(HMDTrigger *)self home];
    v65 = [[HMDPresenceEvent alloc] initWithModel:v62 home:home7];

    if (v65)
    {
      [(HMDEventTrigger *)self addEvent:v65];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        defaultCenter7 = [MEMORY[0x277CCAB98] defaultCenter];
        [defaultCenter7 postNotificationName:@"HMDEventTriggerCharacteristicBasedEventAddedNotification" object:home7 userInfo:0];
      }
    }

    else
    {
      v76 = objc_autoreleasePoolPush();
      selfCopy7 = self;
      v78 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_INFO))
      {
        v79 = HMFGetLogIdentifier();
        *buf = 138543618;
        v83 = v79;
        v84 = 2112;
        v85 = v62;
        _os_log_impl(&dword_2531F8000, v78, OS_LOG_TYPE_INFO, "%{public}@Failed to create event object with event model %@", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v76);
    }

    if (!v65)
    {
      goto LABEL_73;
    }
  }

  else
  {
    v65 = v56;
    if (!v56)
    {
LABEL_73:
      v75 = 0;
      goto LABEL_74;
    }
  }

  v67 = objc_autoreleasePoolPush();
  selfCopy8 = self;
  v69 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v69, OS_LOG_TYPE_DEBUG))
  {
    v70 = HMFGetLogIdentifier();
    events = [(HMDEventTrigger *)selfCopy8 events];
    *buf = 138543874;
    v83 = v70;
    v84 = 2112;
    v85 = v65;
    v86 = 2112;
    v87 = events;
    _os_log_impl(&dword_2531F8000, v69, OS_LOG_TYPE_DEBUG, "%{public}@Added new event %@ to %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v67);
  msgDispatcher = [(HMDTrigger *)selfCopy8 msgDispatcher];
  workQueue = [(HMDTrigger *)selfCopy8 workQueue];
  [(HMDPresenceEvent *)v65 configure:selfCopy8 messageDispatcher:msgDispatcher queue:workQueue delegate:selfCopy8];

  [(HMDEventTrigger *)selfCopy8 _activateWithCompletion:0];
  createPayload = [(HMDPresenceEvent *)v65 createPayload];
  v81 = createPayload;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];

  [(HMDTrigger *)selfCopy8 markChangedForMessage:messageCopy];
LABEL_74:
  [messageCopy respondWithPayload:v75];
}

- (id)createEventModel:(id)model endEvent:(BOOL)event message:(id)message checkForSupport:(BOOL)support transaction:(id)transaction error:(id *)error
{
  supportCopy = support;
  v31 = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  transactionCopy = transaction;
  v17 = [modelCopy hmf_stringForKey:*MEMORY[0x277CD22F0]];
  home = [(HMDTrigger *)self home];
  if (event)
  {
    if ([v17 isEqualToString:*MEMORY[0x277CD22E8]])
    {
      v19 = HMDDurationEventModel;
LABEL_15:
      uuid = [(HMDTrigger *)self uuid];
      v21 = [(__objc2_class *)v19 eventModelWithDictionary:modelCopy home:home eventTriggerUUID:uuid message:messageCopy];

      goto LABEL_25;
    }
  }

  else
  {
    if ([v17 isEqualToString:*MEMORY[0x277CD22D8]])
    {
      uuid2 = [(HMDTrigger *)self uuid];
      v21 = [HMDCharacteristicEventModel eventModelWithDictionary:modelCopy home:home eventTriggerUUID:uuid2 message:messageCopy checkForSupport:supportCopy error:error];

      goto LABEL_25;
    }

    if ([v17 isEqualToString:*MEMORY[0x277CD22F8]])
    {
      if (!messageCopy || ([messageCopy isRemote] & 1) != 0 || (objc_msgSend(messageCopy, "isAuthorizedForLocationAccess") & 1) != 0)
      {
        v19 = HMDLocationEventModel;
        goto LABEL_15;
      }

      v24 = objc_autoreleasePoolPush();
      selfCopy = self;
      v26 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        v27 = HMFGetLogIdentifier();
        v29 = 138543362;
        v30 = v27;
        _os_log_impl(&dword_2531F8000, v26, OS_LOG_TYPE_INFO, "%{public}@Client does have authorization for location, cannot add event", &v29, 0xCu);
      }

      objc_autoreleasePoolPop(v24);
      if (error)
      {
        [MEMORY[0x277CCA9B8] hmErrorWithCode:85];
        *error = v21 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      if ([v17 isEqualToString:*MEMORY[0x277CD22D0]])
      {
        v19 = HMDCalendarEventModel;
        goto LABEL_15;
      }

      if ([v17 isEqualToString:*MEMORY[0x277CD2310]])
      {
        v19 = HMDSignificantTimeEventModel;
        goto LABEL_15;
      }

      if ([v17 isEqualToString:*MEMORY[0x277CD22E0]])
      {
        uuid3 = [(HMDTrigger *)self uuid];
        v21 = [HMDCharacteristicThresholdRangeEventModel eventModelWithDictionary:modelCopy home:home eventTriggerUUID:uuid3 message:messageCopy checkForSupport:supportCopy];

        goto LABEL_25;
      }

      if ([v17 isEqualToString:*MEMORY[0x277CD2308]])
      {
        v19 = HMDPresenceEventModel;
        goto LABEL_15;
      }
    }
  }

  v21 = 0;
LABEL_25:

  return v21;
}

- (void)_addEventToEventTrigger:(id)trigger
{
  v22 = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  v5 = [triggerCopy dictionaryForKey:*MEMORY[0x277CD22B0]];
  home = [(HMDTrigger *)self home];
  backingStore = [home backingStore];
  name = [triggerCopy name];
  v9 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
  v10 = [backingStore transaction:name options:v9];

  v19 = 0;
  v11 = [(HMDEventTrigger *)self createEventModel:v5 endEvent:0 message:triggerCopy checkForSupport:1 transaction:v10 error:&v19];
  v12 = v19;
  if (v11)
  {
    if ([(HMDEventTrigger *)self _checkAddEventModel:v11 message:triggerCopy])
    {
      [v10 add:v11 withMessage:triggerCopy];
      [v10 run];
    }

    else
    {
      v15 = objc_autoreleasePoolPush();
      selfCopy = self;
      v17 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        v18 = HMFGetLogIdentifier();
        *buf = 138543362;
        v21 = v18;
        _os_log_impl(&dword_2531F8000, v17, OS_LOG_TYPE_INFO, "%{public}@Cannot add event - Incompatible home hub", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v15);
    }
  }

  else
  {
    responseHandler = [triggerCopy responseHandler];

    if (responseHandler)
    {
      if (!v12)
      {
        v12 = [MEMORY[0x277CCA9B8] hmErrorWithCode:3];
      }

      responseHandler2 = [triggerCopy responseHandler];
      (responseHandler2)[2](responseHandler2, v12, 0);
    }
  }
}

- (void)_handleAddEventToEventTrigger:(id)trigger
{
  v4 = [(HMDTrigger *)self updateEventTriggerMessage:1 message:trigger relay:1];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
    v4 = [(HMDEventTrigger *)self _addEventToEventTrigger:v4];
    v5 = v6;
  }

  MEMORY[0x2821F96F8](v4, v5);
}

- (void)_handleLocationAuthorizationChangedNotification:(id)notification
{
  v20 = *MEMORY[0x277D85DE8];
  notificationCopy = notification;
  userInfo = [notificationCopy userInfo];
  v6 = [userInfo hmf_numberForKey:@"HMLocationAuthorizationKey"];

  if (v6)
  {
    [v6 integerValue];
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = HMLocationAuthorizationAsString();
      v16 = 138543618;
      v17 = v10;
      v18 = 2112;
      v19 = v11;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Latest Location Authorization is %@", &v16, 0x16u);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDEventTrigger *)selfCopy _activateWithCompletion:0];
  }

  else
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v15;
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_ERROR, "%{public}@No location authorization key in the message", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v12);
  }
}

- (void)fixupForReplacementAccessory:(id)accessory transaction:(id)transaction
{
  v41 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  v38.receiver = self;
  v38.super_class = HMDEventTrigger;
  transactionCopy = transaction;
  [(HMDTrigger *)&v38 fixupForReplacementAccessory:accessoryCopy transaction:?];
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
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    selfCopy = self;
    characteristicBaseEvents = [(HMDEventTrigger *)self characteristicBaseEvents];
    v11 = objc_msgSend_copy(characteristicBaseEvents);

    v33 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v33)
    {
      v12 = *v35;
      v29 = v11;
      v32 = *v35;
      do
      {
        for (i = 0; i != v33; ++i)
        {
          if (*v35 != v12)
          {
            objc_enumerationMutation(v11);
          }

          v14 = *(*(&v34 + 1) + 8 * i);
          characteristic = [v14 characteristic];
          service = [characteristic service];

          accessory = [service accessory];
          uuid = [accessory uuid];

          if (!uuid)
          {
            uuid = [v14 accessoryUUID];
          }

          uuid2 = [v7 uuid];
          v20 = [uuid2 isEqual:uuid];

          if (v20)
          {
            instanceID = [service instanceID];
            if (!instanceID)
            {
              instanceID = [v14 serviceID];
            }

            characteristic2 = [v14 characteristic];
            instanceID2 = [characteristic2 instanceID];

            if (!instanceID2)
            {
              instanceID2 = [v14 characteristicInstanceID];
            }

            v24 = [v9 findCharacteristic:instanceID2 forService:instanceID];
            if (v24)
            {
              [v14 replaceCharacteristic:v24];
            }

            else
            {
              v39 = v14;
              v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v39 count:1];
              v26 = v9;
              v27 = v7;
              v28 = [v25 mutableCopy];

              [(HMDEventTrigger *)selfCopy _handleRemovalOfCharacteristic:0 withEvents:v28 transaction:transactionCopy];
              v7 = v27;
              v9 = v26;
              v11 = v29;
            }

            v12 = v32;
          }
        }

        v33 = [v11 countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v33);
    }
  }
}

- (id)_modelWithRewrittenCondition:(id)condition
{
  v21 = *MEMORY[0x277D85DE8];
  conditionCopy = condition;
  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = HMFGetLogIdentifier();
    v17 = 138543618;
    v18 = v8;
    v19 = 2112;
    v20 = conditionCopy;
    _os_log_impl(&dword_2531F8000, v7, OS_LOG_TYPE_INFO, "%{public}@Updating evaluation condition for trigger %@", &v17, 0x16u);
  }

  objc_autoreleasePoolPop(v5);
  emptyModelObject = [(HMDEventTrigger *)selfCopy emptyModelObject];
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

  predicateUtilities = [(HMDEventTrigger *)selfCopy predicateUtilities];
  v13 = [predicateUtilities rewritePredicateForDaemon:conditionCopy message:0];

  if (v13)
  {
    v14 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v13 requiringSecureCoding:1 error:0];
    [v11 setEvaluationCondition:v14];

    v15 = v11;
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)handleRemovalOfUser:(id)user transaction:(id)transaction
{
  v38 = *MEMORY[0x277D85DE8];
  userCopy = user;
  transactionCopy = transaction;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    buf = 138543618;
    v35 = v11;
    v36 = 2112;
    v37 = userCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Preparing to remove references to user %@ from trigger", &buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  presenceEvents = [(HMDEventTrigger *)selfCopy presenceEvents];
  v13 = [presenceEvents countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      v16 = 0;
      do
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(presenceEvents);
        }

        [*(*(&v29 + 1) + 8 * v16++) handleRemovalOfUser:userCopy transaction:transactionCopy];
      }

      while (v14 != v16);
      v14 = [presenceEvents countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  predicateUtilities = [(HMDEventTrigger *)selfCopy predicateUtilities];
  evaluationCondition = [(HMDEventTrigger *)selfCopy evaluationCondition];
  v19 = [predicateUtilities containsPresenceEvents:evaluationCondition];

  if (v19)
  {
    v28 = 0;
    predicateUtilities2 = [(HMDEventTrigger *)selfCopy predicateUtilities];
    evaluationCondition2 = [(HMDEventTrigger *)selfCopy evaluationCondition];
    v22 = [predicateUtilities2 updatePredicate:evaluationCondition2 removedUser:userCopy conditionModified:&v28];

    if (v28 == 1)
    {
      v23 = objc_autoreleasePoolPush();
      v24 = selfCopy;
      v25 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        v26 = HMFGetLogIdentifier();
        buf = 138543618;
        v35 = v26;
        v36 = 2112;
        v37 = userCopy;
        _os_log_impl(&dword_2531F8000, v25, OS_LOG_TYPE_INFO, "%{public}@Condition has been modified following removal of user %@", &buf, 0x16u);
      }

      objc_autoreleasePoolPop(v23);
      v27 = [(HMDEventTrigger *)v24 _modelWithRewrittenCondition:v22];
      if (v27)
      {
        [transactionCopy add:v27 withMessage:0];
      }
    }
  }
}

- (void)_handleRemovalOfEvents:(id)events transaction:(id)transaction
{
  v31 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  transactionCopy = transaction;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  obj = eventsCopy;
  v7 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v23;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v22 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = objc_autoreleasePoolPush();
          selfCopy = self;
          v14 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
          {
            v15 = HMFGetLogIdentifier();
            *buf = 138543618;
            v27 = v15;
            v28 = 2112;
            v29 = v11;
            _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_INFO, "%{public}@Client does have authorization for location, cannot remove event %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v12);
        }

        else
        {
          v16 = [HMDEventModel alloc];
          uuid = [v11 uuid];
          uuid2 = [(HMDTrigger *)self uuid];
          v19 = [(HMDBackingStoreModelObject *)v16 initWithObjectChangeType:3 uuid:uuid parentUUID:uuid2];

          [transactionCopy add:v19];
        }
      }

      v8 = [obj countByEnumeratingWithState:&v22 objects:v30 count:16];
    }

    while (v8);
  }
}

- (void)_removeEvents:(id)events
{
  v28 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = events;
  v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v4)
  {
    v5 = *v22;
    v6 = *MEMORY[0x277CD2340];
    do
    {
      v7 = 0;
      do
      {
        if (*v22 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v21 + 1) + 8 * v7);
        v25 = v6;
        uuid = [v8 uuid];
        uUIDString = [uuid UUIDString];
        v26 = uUIDString;
        v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];

        v12 = MEMORY[0x277D0F818];
        v13 = objc_alloc(MEMORY[0x277D0F820]);
        uuid2 = [(HMDTrigger *)self uuid];
        v15 = [v13 initWithTarget:uuid2];
        v16 = [v12 messageWithName:@"kRemoveEventFromEventTriggerRequestKey" destination:v15 payload:v11];

        objc_initWeak(&location, self);
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __33__HMDEventTrigger__removeEvents___block_invoke;
        v18[3] = &unk_279733B98;
        objc_copyWeak(&v19, &location);
        [v16 setResponseHandler:v18];
        [(HMDEventTrigger *)self _handleRemoveEventsFromEventTrigger:v16 relay:0];
        objc_destroyWeak(&v19);
        objc_destroyWeak(&location);

        ++v7;
      }

      while (v4 != v7);
      v4 = [obj countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v4);
  }
}

void __33__HMDEventTrigger__removeEvents___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (WeakRetained)
  {
    v9 = [WeakRetained triggerEvents];
    v10 = [v9 count];

    if (!v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = v8;
      v13 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        v14 = HMFGetLogIdentifier();
        v16 = 138543362;
        v17 = v14;
        _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@There are no triggering events anymore, removing the trigger", &v16, 0xCu);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [v12 home];
      [v15 removeTrigger:v12];
    }
  }
}

- (void)_handleRemovalOfCharacteristic:(id)characteristic withEvents:(id)events transaction:(id)transaction
{
  v62 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  eventsCopy = events;
  transactionCopy = transaction;
  accessory = [characteristicCopy accessory];
  v45 = eventsCopy;
  v47 = accessory;
  if (!eventsCopy)
  {
    v43 = transactionCopy;
    v12 = MEMORY[0x277CBEB18];
    characteristicBaseEvents = [(HMDEventTrigger *)self characteristicBaseEvents];
    v45 = [v12 arrayWithCapacity:{objc_msgSend(characteristicBaseEvents, "count")}];

    v55 = 0u;
    v56 = 0u;
    v53 = 0u;
    v54 = 0u;
    selfCopy = self;
    characteristicBaseEvents2 = [(HMDEventTrigger *)self characteristicBaseEvents];
    v15 = objc_msgSend_copy(characteristicBaseEvents2);

    obj = v15;
    v16 = [v15 countByEnumeratingWithState:&v53 objects:v61 count:16];
    v17 = accessory;
    if (v16)
    {
      v18 = v16;
      v19 = *v54;
      v46 = characteristicCopy;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v54 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v53 + 1) + 8 * i);
          characteristic = [v21 characteristic];
          service = [characteristic service];
          accessory2 = [service accessory];

          uuid = [v17 uuid];
          uuid2 = [accessory2 uuid];
          if ([uuid isEqual:uuid2])
          {
            instanceID = [characteristicCopy instanceID];
            v49 = v21;
            characteristic2 = [v21 characteristic];
            [characteristic2 instanceID];
            v29 = characteristic;
            v30 = v18;
            v32 = v31 = v19;
            v50 = [instanceID isEqual:v32];

            v19 = v31;
            v18 = v30;
            characteristic = v29;

            v17 = v47;
            characteristicCopy = v46;

            if (v50)
            {
              [v45 addObject:v49];
            }
          }

          else
          {
          }
        }

        v18 = [obj countByEnumeratingWithState:&v53 objects:v61 count:16];
      }

      while (v18);
    }

    transactionCopy = v43;
    self = selfCopy;
    accessory = v17;
  }

  v52 = 0;
  predicateUtilities = [(HMDEventTrigger *)self predicateUtilities];
  evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];
  v51 = 0;
  service2 = [characteristicCopy service];
  v36 = [predicateUtilities updatePredicate:evaluationCondition currentCharacteristicInPredicate:&v51 conditionModified:&v52 removedCharacteristic:characteristicCopy underService:service2 underAccessory:accessory];
  v37 = v51;

  if (v52 == 1)
  {
    v38 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v40 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
    {
      v41 = HMFGetLogIdentifier();
      *buf = 138543618;
      v58 = v41;
      v59 = 2112;
      v60 = characteristicCopy;
      _os_log_impl(&dword_2531F8000, v40, OS_LOG_TYPE_INFO, "%{public}@Condition has been modified following removal of characteristic %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v38);
    v42 = [(HMDEventTrigger *)selfCopy2 _modelWithRewrittenCondition:v36];
    if (v42)
    {
      [transactionCopy add:v42 withMessage:0];
    }
  }

  [(HMDEventTrigger *)self _handleRemovalOfEvents:v45 transaction:transactionCopy];
}

- (void)handleRemovalOfService:(id)service transaction:(id)transaction
{
  v20 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  transactionCopy = transaction;
  v18.receiver = self;
  v18.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v18 handleRemovalOfService:serviceCopy transaction:transactionCopy];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  characteristics = [serviceCopy characteristics];
  v9 = objc_msgSend_copy(characteristics);

  v10 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(HMDEventTrigger *)self handleRemovalOfCharacteristic:*(*(&v14 + 1) + 8 * v13++) transaction:transactionCopy];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v11);
  }
}

- (void)handleRemovalOfAccessory:(id)accessory transaction:(id)transaction
{
  v23 = *MEMORY[0x277D85DE8];
  accessoryCopy = accessory;
  transactionCopy = transaction;
  v21.receiver = self;
  v21.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v21 handleRemovalOfAccessory:accessoryCopy transaction:transactionCopy];
  v8 = accessoryCopy;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  services = [v10 services];
  v12 = objc_msgSend_copy(services);

  v13 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v18;
    do
    {
      v16 = 0;
      do
      {
        if (*v18 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [(HMDEventTrigger *)self handleRemovalOfService:*(*(&v17 + 1) + 8 * v16++) transaction:transactionCopy];
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v17 objects:v22 count:16];
    }

    while (v14);
  }
}

- (void)sendTriggerFiredNotification:(id)notification
{
  notificationCopy = notification;
  locationEvents = [(HMDEventTrigger *)self locationEvents];
  v6 = [locationEvents count];

  if (v6)
  {
    [MEMORY[0x277D0F818] locationAuthorizedMessageWithName:@"kTriggerFiredNotificationKey" messagePayload:notificationCopy];
  }

  else
  {
    [MEMORY[0x277D0F818] messageWithName:@"kTriggerFiredNotificationKey" messagePayload:notificationCopy];
  }
  v9 = ;

  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  uuid = [(HMDTrigger *)self uuid];
  [msgDispatcher sendMessage:v9 target:uuid];
}

- (BOOL)shouldEncodeLastFireDate:(id)date
{
  dateCopy = date;
  locationEvents = [(HMDEventTrigger *)self locationEvents];
  v6 = [locationEvents count];

  if (v6)
  {
    hmd_isForXPCTransportAuthorizedForLocationAccess = [dateCopy hmd_isForXPCTransportAuthorizedForLocationAccess];
  }

  else
  {
    hmd_isForXPCTransportAuthorizedForLocationAccess = 1;
  }

  return hmd_isForXPCTransportAuthorizedForLocationAccess;
}

- (void)dealloc
{
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  [msgDispatcher deregisterReceiver:self];

  v4.receiver = self;
  v4.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v4 dealloc];
}

- (void)_registerForMessages
{
  v44[4] = *MEMORY[0x277D85DE8];
  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel__handleLocationAuthorizationChangedNotification_ name:@"HMLocationAuthorizationChangedNotification" object:0];

  v36.receiver = self;
  v36.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v36 _registerForMessages];
  home = [(HMDTrigger *)self home];
  v35 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v35 setRoles:{objc_msgSend(v35, "roles") | 4}];
  v4 = objc_msgSend_copy(v35);
  v5 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  msgDispatcher = [(HMDTrigger *)self msgDispatcher];
  v7 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v44[0] = v7;
  v44[1] = v4;
  v44[2] = v5;
  v8 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v44[3] = v8;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:4];
  [msgDispatcher registerForMessage:@"kUpdateEventTriggerConditionRequestKey" receiver:self policies:v9 selector:sel__handleUpdateEventTriggerCondition_];

  v10 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v43[0] = v10;
  v43[1] = v4;
  v43[2] = v5;
  v11 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v43[3] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
  [msgDispatcher registerForMessage:@"kUpdateEventTriggerRecurrencesRequestKey" receiver:self policies:v12 selector:sel__handleUpdateEventTriggerRecurrences_];

  v13 = *MEMORY[0x277CD2770];
  v14 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v42[0] = v14;
  v42[1] = v4;
  v42[2] = v5;
  v15 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v42[3] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [msgDispatcher registerForMessage:v13 receiver:self policies:v16 selector:sel__handleUpdateEventTriggerExecuteOnce_];

  v17 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v41[0] = v17;
  v41[1] = v4;
  v41[2] = v5;
  v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
  v41[3] = v18;
  v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:4];
  [msgDispatcher registerForMessage:@"kAddEventToEventTriggerRequestKey" receiver:self policies:v19 selector:sel__handleAddEventToEventTrigger_];

  v20 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v40[0] = v20;
  v40[1] = v4;
  v40[2] = v5;
  v21 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
  v40[3] = v21;
  v22 = [MEMORY[0x277CBEA60] arrayWithObjects:v40 count:4];
  [msgDispatcher registerForMessage:@"kRemoveEventFromEventTriggerRequestKey" receiver:self policies:v22 selector:sel__handleRemoveEventsFromEventTrigger_];

  v23 = [HMDXPCMessagePolicy policyWithEntitlements:1];
  v39[0] = v23;
  v39[1] = v4;
  v39[2] = v5;
  v24 = [HMDConfigurationMessagePolicy policyWithOperationTypes:6];
  v39[3] = v24;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:4];
  [msgDispatcher registerForMessage:@"kUpdateEventsToEventTriggerRequestKey" receiver:self policies:v25 selector:sel__handleUpdateEventsOnEventTrigger_];

  msgDispatcher2 = [(HMDTrigger *)self msgDispatcher];
  v27 = *MEMORY[0x277CD2330];
  v28 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
  v38[0] = v28;
  v38[1] = v5;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
  [msgDispatcher2 registerForMessage:v27 receiver:self policies:v29 selector:sel__handleUserPermissionRequest_];

  msgDispatcher3 = [(HMDTrigger *)self msgDispatcher];
  v31 = *MEMORY[0x277CD2780];
  v37[0] = v4;
  v37[1] = v5;
  v32 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
  v37[2] = v32;
  v33 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:3];
  [msgDispatcher3 registerForMessage:v31 receiver:self policies:v33 selector:sel__handleUpdateOwningDevice_];
}

- (void)_migrateEventsToRecords
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    [(HMDEventTrigger *)selfCopy migratedEventsToRecords];
    v7 = HMFBooleanToString();
    *buf = 138543618;
    v34 = v6;
    v35 = 2112;
    v36 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Events migration %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if (![(HMDEventTrigger *)selfCopy migratedEventsToRecords])
  {
    v8 = objc_autoreleasePoolPush();
    v9 = selfCopy;
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v11 = HMFGetLogIdentifier();
      *buf = 138543362;
      v34 = v11;
      _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@The events haven't been migrated, generating transactions for each event present", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v8);
    characteristicEvents = [(HMDEventTrigger *)v9 characteristicEvents];
    v13 = [characteristicEvents mutableCopy];

    locationEvents = [(HMDEventTrigger *)v9 locationEvents];
    [v13 addObjectsFromArray:locationEvents];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = v13;
    v15 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v15)
    {
      v16 = v15;
      v27 = *v29;
      do
      {
        v17 = 0;
        do
        {
          if (*v29 != v27)
          {
            objc_enumerationMutation(obj);
          }

          v18 = [*(*(&v28 + 1) + 8 * v17) modelObjectWithChangeType:1];
          v19 = [MEMORY[0x277D0F818] messageWithName:@"kMigratedEventsToRecordsRequest" messagePayload:0];
          [(HMDTrigger *)v9 home];
          v21 = v20 = v9;
          backingStore = [v21 backingStore];
          name = [v19 name];
          v24 = +[HMDBackingStoreTransactionOptions defaultXPCOptions];
          v25 = [backingStore transaction:name options:v24];

          v9 = v20;
          [v25 add:v18 withMessage:v19];
          [v25 run];

          ++v17;
        }

        while (v16 != v17);
        v16 = [obj countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v16);
    }

    [(HMDEventTrigger *)v9 setMigratedEventsToRecords:1];
  }
}

- (void)timerDidFire:(id)fire
{
  v13 = *MEMORY[0x277D85DE8];
  fireCopy = fire;
  workQueue = [(HMDTrigger *)self workQueue];
  dispatch_assert_queue_V2(workQueue);

  debounceTriggerActivationTimer = [(HMDEventTrigger *)self debounceTriggerActivationTimer];

  if (debounceTriggerActivationTimer == fireCopy)
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier();
      v11 = 138543362;
      v12 = v10;
      _os_log_impl(&dword_2531F8000, v9, OS_LOG_TYPE_INFO, "%{public}@Debounce Timer expired: Going to activate the trigger", &v11, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
    [(HMDEventTrigger *)selfCopy _computeActivation];
    [(HMDEventTrigger *)selfCopy _activateEvents:0];
  }
}

- (void)configure:(id)configure messageDispatcher:(id)dispatcher queue:(id)queue
{
  v20 = *MEMORY[0x277D85DE8];
  v18.receiver = self;
  v18.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v18 configure:configure messageDispatcher:dispatcher queue:queue];
  [(HMDEventTrigger *)self _configureDebounceTriggerActivationTimer];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v7 = [events countByEnumeratingWithState:&v14 objects:v19 count:16];
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
          objc_enumerationMutation(events);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        msgDispatcher = [(HMDTrigger *)self msgDispatcher];
        workQueue = [(HMDTrigger *)self workQueue];
        [v11 configure:self messageDispatcher:msgDispatcher queue:workQueue delegate:self];

        ++v10;
      }

      while (v8 != v10);
      v8 = [events countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v8);
  }

  [(HMDEventTrigger *)self _activateWithCompletion:0];
  [(HMDEventTrigger *)self _migrateEventsToRecords];
}

- (void)_configureDebounceTriggerActivationTimer
{
  v19 = *MEMORY[0x277D85DE8];
  dependencyFactory = self->_dependencyFactory;
  if (!dependencyFactory)
  {
    v4 = objc_alloc_init(HMDEventTriggerDependencyFactory);
    v5 = self->_dependencyFactory;
    self->_dependencyFactory = v4;

    v6 = objc_autoreleasePoolPush();
    selfCopy = self;
    v8 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = HMFGetLogIdentifier();
      v10 = self->_dependencyFactory;
      v15 = 138543618;
      v16 = v9;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_2531F8000, v8, OS_LOG_TYPE_ERROR, "%{public}@Missing dependency factory, reinitializing %@", &v15, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
    dependencyFactory = self->_dependencyFactory;
  }

  v11 = [(HMDEventTriggerDependencyFactory *)dependencyFactory createTimerWithTimeInterval:0 options:7.0];
  [(HMDEventTrigger *)self setDebounceTriggerActivationTimer:v11];

  debounceTriggerActivationTimer = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
  [debounceTriggerActivationTimer setDelegate:self];

  workQueue = [(HMDTrigger *)self workQueue];
  debounceTriggerActivationTimer2 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
  [debounceTriggerActivationTimer2 setDelegateQueue:workQueue];
}

- (void)_reevaluateIfRelaunchRequired
{
  v27 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  events = [(HMDEventTrigger *)self events];
  v4 = [events countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = 0;
    v8 = *v19;
    *&v5 = 138543618;
    v17 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(events);
        }

        v10 = *(*(&v18 + 1) + 8 * i);
        if ([v10 isActive])
        {
          v11 = objc_autoreleasePoolPush();
          selfCopy = self;
          v13 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            v14 = HMFGetLogIdentifier();
            *buf = v17;
            v23 = v14;
            v24 = 2112;
            v25 = v10;
            _os_log_impl(&dword_2531F8000, v13, OS_LOG_TYPE_INFO, "%{public}@Registering for relaunch on behalf of event: %@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v11);
          v7 = 1;
        }
      }

      v6 = [events countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
  }

  launchHandler = [(HMDEventTriggerDependencyFactory *)self->_dependencyFactory launchHandler];
  uuid = [(HMDTrigger *)self uuid];
  if (v7)
  {
    [launchHandler registerRelaunchClientWithUUID:uuid];
  }

  else
  {
    [launchHandler deregisterRelaunchClientWithUUID:uuid];
  }
}

- (void)_activateWithCompletion:(id)completion
{
  v22 = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  if ([(HMDTrigger *)self isConfigured])
  {
    if (completionCopy)
    {
      [(HMDEventTrigger *)self _computeActivation];
      [(HMDEventTrigger *)self _activateEvents:completionCopy];
    }

    else
    {
      debounceTriggerActivationTimer = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
      v8 = debounceTriggerActivationTimer;
      if (!debounceTriggerActivationTimer || ([debounceTriggerActivationTimer timeInterval], v9 != 7.0))
      {
        [(HMDEventTrigger *)self _configureDebounceTriggerActivationTimer];
        v10 = objc_autoreleasePoolPush();
        selfCopy = self;
        v12 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          v13 = HMFGetLogIdentifier();
          debounceTriggerActivationTimer2 = [(HMDEventTrigger *)selfCopy debounceTriggerActivationTimer];
          v16 = 138543874;
          v17 = v13;
          v18 = 2112;
          v19 = v8;
          v20 = 2112;
          v21 = debounceTriggerActivationTimer2;
          _os_log_impl(&dword_2531F8000, v12, OS_LOG_TYPE_ERROR, "%{public}@Reinitialized debounce timer from %@ to %@", &v16, 0x20u);
        }

        objc_autoreleasePoolPop(v10);
      }

      debounceTriggerActivationTimer3 = [(HMDEventTrigger *)self debounceTriggerActivationTimer];
      [debounceTriggerActivationTimer3 resume];
    }
  }

  else
  {
    v5 = _Block_copy(completionCopy);
    if (v5)
    {
      v6 = [MEMORY[0x277CCA9B8] hmPrivateErrorWithCode:2012];
      v5[2](v5, v6);
    }
  }
}

- (void)_activateEvents:(id)events
{
  v64 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  group = dispatch_group_create();
  computedActive = [(HMDEventTrigger *)self computedActive];
  v4 = objc_autoreleasePoolPush();
  val = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = HMDEventTriggerActivationTypeAsString([(HMDEventTrigger *)val activationType]);
    [(HMDEventTrigger *)val activationState];
    v8 = HMEventTriggerActivationStateAsString();
    *buf = 138543874;
    v59 = v6;
    v60 = 2114;
    v61 = v7;
    v62 = 2114;
    v63 = v8;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Attempting to activate with activation type %{public}@, state %{public}@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v4);
  array = [MEMORY[0x277CBEB18] array];
  if (computedActive)
  {
    evaluationCondition = [(HMDEventTrigger *)val evaluationCondition];
    if (!evaluationCondition)
    {
      v24 = 0;
LABEL_11:

      goto LABEL_12;
    }

    v10 = MEMORY[0x277CCAC30];
    v11 = evaluationCondition;
    v12 = [v10 predicateWithValue:1];
    predicateFormat = [v11 predicateFormat];

    predicateFormat2 = [v12 predicateFormat];
    v15 = [predicateFormat isEqualToString:predicateFormat2];

    if ((v15 & 1) == 0)
    {
      home = [(HMDTrigger *)val home];
      homeLocationHandler = [home homeLocationHandler];
      location = [homeLocationHandler location];
      v19 = location == 0;

      if (v19)
      {
        v20 = objc_autoreleasePoolPush();
        v21 = val;
        v22 = HMFGetOSLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          v23 = HMFGetLogIdentifier();
          *buf = 138543362;
          v59 = v23;
          _os_log_impl(&dword_2531F8000, v22, OS_LOG_TYPE_INFO, "%{public}@Home location is not known, cannot activate the trigger", buf, 0xCu);
        }

        objc_autoreleasePoolPop(v20);
        v24 = [MEMORY[0x277CCA9B8] hmErrorWithCode:84];
        [array addObject:v24];
        goto LABEL_11;
      }
    }
  }

LABEL_12:
  if (![array count])
  {
    dispatch_group_enter(group);
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __35__HMDEventTrigger__activateEvents___block_invoke;
    v54[3] = &unk_279734D88;
    v54[4] = val;
    v25 = array;
    v55 = v25;
    v26 = group;
    v56 = v26;
    [(HMDTrigger *)val _activate:computedActive completionHandler:v54];
    v52 = 0u;
    v53 = 0u;
    v51 = 0u;
    v50 = 0u;
    obj = [(HMDEventTrigger *)val triggerEvents];
    v27 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
    if (v27)
    {
      v28 = *v51;
      v29 = MEMORY[0x277D85DD0];
      do
      {
        for (i = 0; i != v27; ++i)
        {
          if (*v51 != v28)
          {
            objc_enumerationMutation(obj);
          }

          v31 = *(*(&v50 + 1) + 8 * i);
          dispatch_group_enter(v26);
          activationType = [(HMDEventTrigger *)val activationType];
          v47[0] = v29;
          v47[1] = 3221225472;
          v47[2] = __35__HMDEventTrigger__activateEvents___block_invoke_3;
          v47[3] = &unk_279734D88;
          v47[4] = val;
          v48 = v25;
          v49 = v26;
          [v31 _activate:activationType completionHandler:v47];
        }

        v27 = [obj countByEnumeratingWithState:&v50 objects:v57 count:16];
      }

      while (v27);
    }
  }

  objc_initWeak(buf, val);
  workQueue = [(HMDTrigger *)val workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDEventTrigger__activateEvents___block_invoke_5;
  block[3] = &unk_279731D50;
  objc_copyWeak(&v45, buf);
  v46 = computedActive;
  v43 = array;
  v44 = eventsCopy;
  v34 = eventsCopy;
  v35 = array;
  dispatch_group_notify(group, workQueue, block);

  objc_destroyWeak(&v45);
  objc_destroyWeak(buf);
}

void __35__HMDEventTrigger__activateEvents___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDEventTrigger__activateEvents___block_invoke_2;
  block[3] = &unk_279734960;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __35__HMDEventTrigger__activateEvents___block_invoke_3(id *a1, void *a2)
{
  v3 = a2;
  v4 = [a1[4] workQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__HMDEventTrigger__activateEvents___block_invoke_4;
  block[3] = &unk_279734960;
  v7 = v3;
  v8 = a1[5];
  v9 = a1[6];
  v5 = v3;
  dispatch_async(v4, block);
}

void __35__HMDEventTrigger__activateEvents___block_invoke_5(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = objc_autoreleasePoolPush();
  v4 = WeakRetained;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    v7 = *(a1 + 32);
    v12 = 138543618;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Completed activation with errors: %@", &v12, 0x16u);
  }

  objc_autoreleasePoolPop(v3);
  if ([*(a1 + 32) count])
  {
    v8 = [*(a1 + 32) objectAtIndex:0];
  }

  else
  {
    [v4 _reevaluateIfRelaunchRequired];
    v8 = 0;
  }

  if (!*(a1 + 56) || ([v4 triggerEvents], v9 = objc_claimAutoreleasedReturnValue(), v10 = objc_msgSend(v9, "count"), v9, !v10))
  {
    [v4 setExecutionSession:0];
  }

  v11 = *(a1 + 40);
  if (v11)
  {
    (*(v11 + 16))(v11, v8);
  }
}

void __35__HMDEventTrigger__activateEvents___block_invoke_4(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

void __35__HMDEventTrigger__activateEvents___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 32))
  {
    [*(a1 + 40) addObject:?];
  }

  v2 = *(a1 + 48);

  dispatch_group_leave(v2);
}

- (void)_computeActivation
{
  v92 = *MEMORY[0x277D85DE8];
  characteristicEvents = [(HMDEventTrigger *)self characteristicEvents];
  v4 = [characteristicEvents count];

  locationEvents = [(HMDEventTrigger *)self locationEvents];
  v6 = [locationEvents count];

  calendarEvents = [(HMDEventTrigger *)self calendarEvents];
  v69 = [calendarEvents count];

  significantTimeEvents = [(HMDEventTrigger *)self significantTimeEvents];
  v68 = [significantTimeEvents count];

  presenceEvents = [(HMDEventTrigger *)self presenceEvents];
  v67 = [presenceEvents count];

  charThresholdEvents = [(HMDEventTrigger *)self charThresholdEvents];
  v66 = [charThresholdEvents count];

  endEvents = [(HMDEventTrigger *)self endEvents];
  v65 = [endEvents count];

  home = [(HMDTrigger *)self home];
  primaryResident = [home primaryResident];
  device = [primaryResident device];
  owningDevice = [(HMDTrigger *)self owningDevice];
  isCurrentDeviceConfirmedPrimaryResident = [home isCurrentDeviceConfirmedPrimaryResident];
  isThisDeviceDesignatedFMFDevice = [(HMDEventTrigger *)self isThisDeviceDesignatedFMFDevice];
  [(HMDEventTrigger *)self isOwnerOfHome];
  doesTheLocationEventTargetCurrentUser = (v6 == 0) & isCurrentDeviceConfirmedPrimaryResident;
  v70 = primaryResident;
  if (v6 && isThisDeviceDesignatedFMFDevice)
  {
    doesTheLocationEventTargetCurrentUser = [(HMDEventTrigger *)self doesTheLocationEventTargetCurrentUser];
  }

  v16 = objc_autoreleasePoolPush();
  selfCopy = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
  {
    HMFGetLogIdentifier();
    v19 = v64 = v6;
    v20 = HMFBooleanToString();
    HMFBooleanToString();
    v63 = v4;
    v21 = isCurrentDeviceConfirmedPrimaryResident;
    v23 = v22 = home;
    v24 = HMFBooleanToString();
    v25 = HMFBooleanToString();
    *buf = 138544898;
    v77 = v19;
    v78 = 2112;
    v79 = device;
    v80 = 2112;
    v81 = v20;
    v82 = 2112;
    v83 = v23;
    v84 = 2112;
    v85 = owningDevice;
    v86 = 2112;
    v87 = v24;
    v88 = 2112;
    v89 = v25;
    _os_log_impl(&dword_2531F8000, v18, OS_LOG_TYPE_INFO, "%{public}@Resident %@, this-device-is-resident: %@, this-device-owns-trigger: %@, owning-device: %@, FMF device: %@, Owner of home: %@", buf, 0x48u);

    home = v22;
    isCurrentDeviceConfirmedPrimaryResident = v21;
    v4 = v63;

    v6 = v64;
  }

  objc_autoreleasePoolPop(v16);
  v26 = objc_autoreleasePoolPush();
  v27 = selfCopy;
  v28 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v28, OS_LOG_TYPE_INFO))
  {
    v29 = HMFGetLogIdentifier();
    *buf = 138545154;
    v77 = v29;
    v78 = 2048;
    v79 = v4;
    v80 = 2048;
    v81 = v6;
    v82 = 2048;
    v83 = v69;
    v84 = 2048;
    v85 = v68;
    v86 = 2048;
    v87 = v67;
    v88 = 2048;
    v89 = v66;
    v90 = 2048;
    v91 = v65;
    _os_log_impl(&dword_2531F8000, v28, OS_LOG_TYPE_INFO, "%{public}@char: %tu, location: %tu, calendar: %tu, significant: %tu, presence: %tu, char-threshold: %tu, end: %tu", buf, 0x52u);
  }

  objc_autoreleasePoolPop(v26);
  hasNoActions = [(HMDTrigger *)v27 hasNoActions];
  v31 = v70;
  if ([(HMDTrigger *)v27 active]&& !hasNoActions)
  {
    if (v6 && ![(HMDEventTrigger *)v27 isAuthorizedForLocation])
    {
      v32 = 0;
      v33 = 3;
      goto LABEL_41;
    }

    if (([v70 supportsSharedEventTriggerActivation] & 1) == 0 && -[HMDEventTrigger requiresDataVersion4](v27, "requiresDataVersion4"))
    {
      v32 = 0;
      if (device)
      {
        v33 = 2;
      }

      else
      {
        v33 = 1;
      }

      goto LABEL_41;
    }

    if ([v70 supportsSharedEventTriggerActivation])
    {
      if (v6)
      {
        if (isCurrentDeviceConfirmedPrimaryResident)
        {
          if (doesTheLocationEventTargetCurrentUser)
          {
            v32 = 3;
          }

          else
          {
            v32 = 2;
          }
        }

        else
        {
          v32 = doesTheLocationEventTargetCurrentUser;
        }

        goto LABEL_40;
      }

      v38 = (isCurrentDeviceConfirmedPrimaryResident & 1) == 0;
LABEL_34:
      if (v38)
      {
        v32 = 0;
      }

      else
      {
        v32 = 3;
      }

      goto LABEL_40;
    }

    if ([(HMDEventTrigger *)v27 requiresDataVersion4])
    {
      v32 = 0;
    }

    else
    {
      if (v6)
      {
        v38 = doesTheLocationEventTargetCurrentUser == 0;
        goto LABEL_34;
      }

      if ((isCurrentDeviceConfirmedPrimaryResident & 1) == 0)
      {
        v38 = (doesTheLocationEventTargetCurrentUser & (device == 0)) == 0;
        goto LABEL_34;
      }

      v32 = 3;
    }

LABEL_40:
    v33 = 4;
    goto LABEL_41;
  }

  if (hasNoActions)
  {
    v34 = objc_autoreleasePoolPush();
    v35 = v27;
    v36 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
    {
      v37 = HMFGetLogIdentifier();
      *buf = 138543362;
      v77 = v37;
      _os_log_impl(&dword_2531F8000, v36, OS_LOG_TYPE_INFO, "%{public}@The trigger is disabled as there are no actions associated with this trigger.", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v34);
  }

  v33 = 0;
  v32 = 0;
LABEL_41:
  v39 = objc_autoreleasePoolPush();
  v40 = v27;
  v41 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
  {
    v42 = HMFGetLogIdentifier();
    v43 = HMEventTriggerActivationStateAsString();
    v44 = HMDEventTriggerActivationTypeAsString(v32);
    *buf = 138543874;
    v77 = v42;
    v78 = 2112;
    v79 = v43;
    v80 = 2112;
    v81 = v44;
    _os_log_impl(&dword_2531F8000, v41, OS_LOG_TYPE_INFO, "%{public}@Computed activation flags state:%@ type: %@", buf, 0x20u);
  }

  objc_autoreleasePoolPop(v39);
  if ([(HMDEventTrigger *)v40 activationType]!= v32)
  {
    v45 = objc_autoreleasePoolPush();
    v46 = v40;
    v47 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_INFO))
    {
      v48 = HMFGetLogIdentifier();
      v49 = HMDEventTriggerActivationTypeAsString([(HMDEventTrigger *)v46 activationType]);
      HMDEventTriggerActivationTypeAsString(v32);
      v51 = v50 = home;
      *buf = 138543874;
      v77 = v48;
      v78 = 2112;
      v79 = v49;
      v80 = 2112;
      v81 = v51;
      _os_log_impl(&dword_2531F8000, v47, OS_LOG_TYPE_INFO, "%{public}@Updating activation type from %@ to %@", buf, 0x20u);

      home = v50;
      v31 = v70;
    }

    objc_autoreleasePoolPop(v45);
    [(HMDEventTrigger *)v46 setActivationType:v32];
  }

  if ([(HMDEventTrigger *)v40 activationState]!= v33)
  {
    v52 = objc_autoreleasePoolPush();
    v53 = v40;
    v54 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v54, OS_LOG_TYPE_INFO))
    {
      v55 = HMFGetLogIdentifier();
      [(HMDEventTrigger *)v53 activationState];
      v56 = HMEventTriggerActivationStateAsString();
      v57 = HMEventTriggerActivationStateAsString();
      *buf = 138543874;
      v77 = v55;
      v78 = 2112;
      v79 = v56;
      v80 = 2112;
      v81 = v57;
      _os_log_impl(&dword_2531F8000, v54, OS_LOG_TYPE_INFO, "%{public}@Updating activation state from %@ to %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v52);
    [(HMDEventTrigger *)v53 setActivationState:v33];
    v74 = *MEMORY[0x277CD2288];
    v58 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v33];
    v75 = v58;
    v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v75 forKeys:&v74 count:1];

    v60 = [MEMORY[0x277D0F818] messageWithName:*MEMORY[0x277CD2290] identifier:0 messagePayload:v59];
    msgDispatcher = [(HMDTrigger *)v53 msgDispatcher];
    uuid = [(HMDTrigger *)v53 uuid];
    [msgDispatcher sendMessage:v60 target:uuid];
  }
}

- (BOOL)doesTheLocationEventTargetCurrentUser
{
  locationEvents = [(HMDEventTrigger *)self locationEvents];
  v3 = [locationEvents na_allObjectsPassTest:&__block_literal_global_57];

  return v3;
}

- (BOOL)shouldActivateOnLocalDevice
{
  activationType = [(HMDEventTrigger *)self activationType];
  v5.receiver = self;
  v5.super_class = HMDEventTrigger;
  result = [(HMDTrigger *)&v5 shouldActivateOnLocalDevice];
  if (activationType - 1 >= 3)
  {
    return 0;
  }

  return result;
}

- (BOOL)compatible:(id)compatible user:(id)user
{
  v26 = *MEMORY[0x277D85DE8];
  compatibleCopy = compatible;
  userCopy = user;
  v8 = objc_autoreleasePoolPush();
  selfCopy = self;
  v10 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
  {
    v11 = HMFGetLogIdentifier();
    *buf = 138543618;
    v23 = v11;
    v24 = 2112;
    v25 = userCopy;
    _os_log_impl(&dword_2531F8000, v10, OS_LOG_TYPE_INFO, "%{public}@Checking if the username %@ is compatible", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v8);
  if (-[HMDEventTrigger requiresDataVersion4](selfCopy, "requiresDataVersion4") && [compatibleCopy containsObject:&unk_286627C88])
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    presenceEvents = [(HMDEventTrigger *)selfCopy presenceEvents];
    v13 = [presenceEvents countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      while (2)
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(presenceEvents);
          }

          if ([*(*(&v17 + 1) + 8 * i) compatibleWithUser:userCopy])
          {
            LOBYTE(v13) = 1;
            goto LABEL_16;
          }
        }

        v13 = [presenceEvents countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v13)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  else
  {
    LOBYTE(v13) = 0;
  }

  return v13;
}

- (BOOL)requiresDataVersion4
{
  v24 = *MEMORY[0x277D85DE8];
  v21.receiver = self;
  v21.super_class = HMDEventTrigger;
  if ([(HMDTrigger *)&v21 requiresDataVersion4])
  {
    return 1;
  }

  if ([(HMDEventTrigger *)self executeOnce])
  {
    v3 = objc_autoreleasePoolPush();
    selfCopy = self;
    v5 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      v6 = HMFGetLogIdentifier();
      *buf = 138543362;
      v23 = v6;
      _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Contains execute once/policy, requires data version 4", buf, 0xCu);
    }

    objc_autoreleasePoolPop(v3);
    return 1;
  }

  calendarEvents = [(HMDEventTrigger *)self calendarEvents];
  v10 = [calendarEvents count];

  significantTimeEvents = [(HMDEventTrigger *)self significantTimeEvents];
  v12 = [significantTimeEvents count];

  presenceEvents = [(HMDEventTrigger *)self presenceEvents];
  v14 = [presenceEvents count];

  charThresholdEvents = [(HMDEventTrigger *)self charThresholdEvents];
  v16 = [charThresholdEvents count];

  endEvents = [(HMDEventTrigger *)self endEvents];
  v18 = [endEvents count];

  v7 = 1;
  if (!v10 && !v12 && !v14 && !v18 && !v16)
  {
    predicateUtilities = [(HMDEventTrigger *)self predicateUtilities];
    evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];
    v7 = [predicateUtilities containsPresenceEvents:evaluationCondition];
  }

  return v7;
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
    *buf = 138543362;
    v9 = v6;
    _os_log_impl(&dword_2531F8000, v5, OS_LOG_TYPE_INFO, "%{public}@Deactivating the trigger", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v3);
  [(HMDTrigger *)selfCopy setActive:0];
  [(HMDEventTrigger *)selfCopy _activateWithCompletion:0];
  v7.receiver = selfCopy;
  v7.super_class = HMDEventTrigger;
  [(HMDTrigger *)&v7 invalidate];
}

- (void)setRecurrences:(id)recurrences
{
  recurrencesCopy = recurrences;
  os_unfair_lock_lock_with_options();
  recurrences = self->_recurrences;
  self->_recurrences = recurrencesCopy;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)recurrences
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_recurrences);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (NSArray)presenceEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  triggerEvents = [(HMDEventTrigger *)self triggerEvents];
  v5 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(triggerEvents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)charThresholdEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)durationEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)timeEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  triggerEvents = [(HMDEventTrigger *)self triggerEvents];
  v5 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(triggerEvents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)significantTimeEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  triggerEvents = [(HMDEventTrigger *)self triggerEvents];
  v5 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(triggerEvents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)calendarEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  triggerEvents = [(HMDEventTrigger *)self triggerEvents];
  v5 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(triggerEvents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)locationEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  triggerEvents = [(HMDEventTrigger *)self triggerEvents];
  v5 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(triggerEvents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)characteristicBaseEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)characteristicEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  triggerEvents = [(HMDEventTrigger *)self triggerEvents];
  v5 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(triggerEvents);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [array addObject:v9];
        }
      }

      v6 = [triggerEvents countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)endEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 isEndEvent])
        {
          [array addObject:v9];
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (NSArray)triggerEvents
{
  v17 = *MEMORY[0x277D85DE8];
  array = [MEMORY[0x277CBEB18] array];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  events = [(HMDEventTrigger *)self events];
  v5 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(events);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([v9 isEndEvent] & 1) == 0)
        {
          [array addObject:v9];
        }
      }

      v6 = [events countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v10 = objc_msgSend_copy(array);

  return v10;
}

- (void)removeEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  [(NSMutableArray *)self->_currentEvents removeObject:eventCopy];
  os_unfair_lock_unlock(&self->_lock);
}

- (void)addEvent:(id)event
{
  eventCopy = event;
  os_unfair_lock_lock_with_options();
  if (([(NSMutableArray *)self->_currentEvents containsObject:eventCopy]& 1) == 0)
  {
    [(NSMutableArray *)self->_currentEvents addObject:eventCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (NSArray)events
{
  os_unfair_lock_lock_with_options();
  v3 = objc_msgSend_copy(self->_currentEvents);
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (id)dumpStateWithPrivacyLevel:(unint64_t)level
{
  v32 = *MEMORY[0x277D85DE8];
  v30.receiver = self;
  v30.super_class = HMDEventTrigger;
  v5 = [(HMDTrigger *)&v30 dumpStateWithPrivacyLevel:?];
  v6 = [v5 mutableCopy];

  events = [(HMDEventTrigger *)self events];
  if ([events count])
  {
    v8 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(events, "count")}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    events2 = [(HMDEventTrigger *)self events];
    v10 = [events2 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v27;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(events2);
          }

          v14 = [*(*(&v26 + 1) + 8 * i) dumpStateWithPrivacyLevel:level];
          [v8 addObject:v14];
        }

        v11 = [events2 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v11);
    }

    [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277D0F098]];
  }

  evaluationCondition = [(HMDEventTrigger *)self evaluationCondition];

  if (evaluationCondition)
  {
    evaluationCondition2 = [(HMDEventTrigger *)self evaluationCondition];
    v17 = [evaluationCondition2 description];
    [v6 setObject:v17 forKeyedSubscript:*MEMORY[0x277D0F120]];
  }

  recurrences = [(HMDEventTrigger *)self recurrences];

  if (recurrences)
  {
    recurrences2 = [(HMDEventTrigger *)self recurrences];
    v20 = [recurrences2 description];
    [v6 setObject:v20 forKeyedSubscript:*MEMORY[0x277D0F128]];
  }

  v21 = [MEMORY[0x277CCABB0] numberWithBool:{-[HMDEventTrigger executeOnce](self, "executeOnce")}];
  [v6 setObject:v21 forKeyedSubscript:*MEMORY[0x277D0F0A0]];

  executionSession = [(HMDEventTrigger *)self executionSession];

  if (executionSession)
  {
    executionSession2 = [(HMDEventTrigger *)self executionSession];
    v24 = [executionSession2 dumpStateWithPrivacyLevel:level];
    [v6 setObject:v24 forKeyedSubscript:*MEMORY[0x277D0F0A8]];
  }

  return v6;
}

- (HMDEventTrigger)initWithModel:(id)model home:(id)home message:(id)message
{
  messageCopy = message;
  homeCopy = home;
  modelCopy = model;
  v11 = objc_alloc_init(HMDEventTriggerDependencyFactory);
  v12 = [(HMDEventTrigger *)self initWithModel:modelCopy home:homeCopy message:messageCopy factory:v11];

  return v12;
}

- (HMDEventTrigger)initWithModel:(id)model home:(id)home message:(id)message factory:(id)factory
{
  v44[2] = *MEMORY[0x277D85DE8];
  modelCopy = model;
  messageCopy = message;
  factoryCopy = factory;
  v43.receiver = self;
  v43.super_class = HMDEventTrigger;
  v13 = [(HMDTrigger *)&v43 initWithModel:modelCopy home:home];
  if (v13)
  {
    v14 = [HMDPredicateUtilities alloc];
    home = [(HMDTrigger *)v13 home];
    name = [(HMDTrigger *)v13 name];
    v17 = [(HMDPredicateUtilities *)v14 initWithHome:home logIdentifier:name];
    predicateUtilities = v13->_predicateUtilities;
    v13->_predicateUtilities = v17;

    array = [MEMORY[0x277CBEB18] array];
    currentEvents = v13->_currentEvents;
    v13->_currentEvents = array;

    executeOnce = [modelCopy executeOnce];
    v13->_executeOnce = [executeOnce BOOLValue];

    v13->_migratedEventsToRecords = 1;
    evaluationCondition = [modelCopy evaluationCondition];
    v23 = [HMDPredicateUtilities decodePredicateFromData:evaluationCondition error:0];

    predicateUtilities = [(HMDEventTrigger *)v13 predicateUtilities];
    v25 = [predicateUtilities rewritePredicateForDaemon:v23 message:messageCopy];
    evaluationCondition = v13->_evaluationCondition;
    v13->_evaluationCondition = v25;

    v27 = MEMORY[0x277CCAAC8];
    v28 = MEMORY[0x277CBEB98];
    v44[0] = objc_opt_class();
    v44[1] = objc_opt_class();
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v44 count:2];
    v30 = [v28 setWithArray:v29];
    recurrences = [modelCopy recurrences];
    v32 = [v27 unarchivedObjectOfClasses:v30 fromData:recurrences error:0];

    v33 = v32;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v34 = v33;
    }

    else
    {
      v34 = 0;
    }

    v35 = v34;

    recurrences = v13->_recurrences;
    v13->_recurrences = v35;

    active = [(HMDTrigger *)v13 active];
    v38 = 3;
    if (!active)
    {
      v38 = 0;
    }

    v13->_activationType = v38;
    active2 = [(HMDTrigger *)v13 active];
    v40 = 4;
    if (!active2)
    {
      v40 = 0;
    }

    v13->_activationState = v40;
    v13->_lock._os_unfair_lock_opaque = 0;
    objc_storeStrong(&v13->_dependencyFactory, obj);
  }

  return v13;
}

+ (BOOL)__validateRecurrences:(id)recurrences
{
  v17 = *MEMORY[0x277D85DE8];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  recurrencesCopy = recurrences;
  v4 = [recurrencesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(recurrencesCopy);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (![v8 weekday])
        {
          LOBYTE(v10) = 0;
          goto LABEL_15;
        }

        v9 = objc_alloc_init(MEMORY[0x277CBEAB8]);
        if ([v8 weekday] != 0x7FFFFFFFFFFFFFFFLL)
        {
          [v9 setWeekday:{objc_msgSend(v8, "weekday")}];
        }

        v10 = [v8 isEqual:v9];

        if (!v10)
        {
          goto LABEL_15;
        }
      }

      v5 = [recurrencesCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      LOBYTE(v10) = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    LOBYTE(v10) = 1;
  }

LABEL_15:

  return v10;
}

+ (id)messageBindingForDispatcher:(id)dispatcher message:(id)message receiver:(id)receiver
{
  v70[5] = *MEMORY[0x277D85DE8];
  dispatcherCopy = dispatcher;
  messageCopy = message;
  receiverCopy = receiver;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v10 = receiverCopy;
  }

  else
  {
    v10 = 0;
  }

  v60 = v10;
  home = [v60 home];
  v12 = +[(HMDRemoteMessagePolicy *)HMDMutableRemoteMessagePolicy];
  [v12 setRoles:{objc_msgSend(v12, "roles") | 4}];
  v13 = objc_msgSend_copy(v12);
  v14 = [HMDUserMessagePolicy userMessagePolicyWithHome:home userPrivilege:4 remoteAccessRequired:0];
  name = [messageCopy name];
  v16 = HMFEqualObjects();

  if (v16)
  {
    v17 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v70[0] = v17;
    v70[1] = v13;
    v70[2] = v14;
    v18 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v70[3] = v18;
    v19 = objc_opt_new();
    v70[4] = v19;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v70 count:5];

    name2 = [messageCopy name];
LABEL_6:
    v22 = HMFCreateMessageBinding();

LABEL_18:
    v50 = dispatcherCopy;
    goto LABEL_19;
  }

  name3 = [messageCopy name];
  v24 = HMFEqualObjects();

  if (v24)
  {
    v25 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v69[0] = v25;
    v69[1] = v13;
    v69[2] = v14;
    v26 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v69[3] = v26;
    v27 = objc_opt_new();
    v69[4] = v27;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v69 count:5];

    name4 = [messageCopy name];
LABEL_17:
    v22 = HMFCreateMessageBinding();

    goto LABEL_18;
  }

  name5 = [messageCopy name];
  v31 = HMFEqualObjects();

  if (v31)
  {
    v32 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v68[0] = v32;
    v68[1] = v13;
    v68[2] = v14;
    v33 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v68[3] = v33;
    v34 = objc_opt_new();
    v68[4] = v34;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:5];

    name4 = [messageCopy name];
    goto LABEL_17;
  }

  name6 = [messageCopy name];
  v36 = HMFEqualObjects();

  if (v36)
  {
    v37 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v67[0] = v37;
    v67[1] = v13;
    v67[2] = v14;
    v38 = [HMDConfigurationMessagePolicy policyWithOperationTypes:1];
    v67[3] = v38;
    v39 = objc_opt_new();
    v67[4] = v39;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:5];

    name4 = [messageCopy name];
    goto LABEL_17;
  }

  name7 = [messageCopy name];
  v41 = HMFEqualObjects();

  if (v41)
  {
    v42 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v66[0] = v42;
    v66[1] = v13;
    v66[2] = v14;
    v43 = [HMDConfigurationMessagePolicy policyWithOperationTypes:4];
    v66[3] = v43;
    v44 = objc_opt_new();
    v66[4] = v44;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v66 count:5];

    name4 = [messageCopy name];
    goto LABEL_17;
  }

  name8 = [messageCopy name];
  v46 = HMFEqualObjects();

  if (v46)
  {
    v47 = [HMDXPCMessagePolicy policyWithEntitlements:1];
    v65[0] = v47;
    v65[1] = v13;
    v65[2] = v14;
    v48 = [HMDConfigurationMessagePolicy policyWithOperationTypes:6];
    v65[3] = v48;
    v49 = objc_opt_new();
    v65[4] = v49;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v65 count:5];

    name4 = [messageCopy name];
    goto LABEL_17;
  }

  name9 = [messageCopy name];
  v53 = HMFEqualObjects();

  if (v53)
  {
    v54 = +[HMDRemoteMessagePolicy defaultSecurePolicy];
    v64[0] = v54;
    v64[1] = v14;
    v20 = [MEMORY[0x277CBEA60] arrayWithObjects:v64 count:2];

    name2 = [messageCopy name];
    goto LABEL_6;
  }

  name10 = [messageCopy name];
  v56 = HMFEqualObjects();

  if (v56)
  {
    v57 = [HMDXPCMessagePolicy policyWithEntitlements:5];
    v63[0] = v57;
    v63[1] = v13;
    v63[2] = v14;
    v58 = objc_opt_new();
    v63[3] = v58;
    v59 = [HMDConfigurationMessagePolicy policyWithOperationTypes:2];
    v63[4] = v59;
    v28 = [MEMORY[0x277CBEA60] arrayWithObjects:v63 count:5];

    name4 = [messageCopy name];
    goto LABEL_17;
  }

  v62.receiver = self;
  v62.super_class = &OBJC_METACLASS___HMDEventTrigger;
  v50 = dispatcherCopy;
  v22 = objc_msgSendSuper2(&v62, sel_messageBindingForDispatcher_message_receiver_, dispatcherCopy, messageCopy, receiverCopy);
LABEL_19:

  return v22;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t1_31660 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t1_31660, &__block_literal_global_31661);
  }

  v3 = logCategory__hmf_once_v2_31662;

  return v3;
}

uint64_t __30__HMDEventTrigger_logCategory__block_invoke()
{
  v0 = HMFCreateOSLogHandle();
  v1 = logCategory__hmf_once_v2_31662;
  logCategory__hmf_once_v2_31662 = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

@end