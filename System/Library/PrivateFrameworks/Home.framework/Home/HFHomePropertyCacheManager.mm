@interface HFHomePropertyCacheManager
+ (id)sharedManager;
- (HFHomePropertyCacheManager)init;
- (id)cachedValuesForObject:(id)object;
- (id)valueForObject:(id)object home:(id)home key:(id)key invalidationReasons:(unint64_t)reasons recalculationBlock:(id)block;
- (id)valueForObject:(id)object key:(id)key invalidationReasons:(unint64_t)reasons recalculationBlock:(id)block;
- (void)_clearCachedValues;
- (void)_clearRoomOrderValues;
- (void)accessoryDidUpdateServices:(id)services;
- (void)home:(id)home didAddAccessory:(id)accessory;
- (void)home:(id)home didAddRoom:(id)room;
- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group;
- (void)home:(id)home didAddServiceGroup:(id)group;
- (void)home:(id)home didRemoveAccessory:(id)accessory;
- (void)home:(id)home didRemoveRoom:(id)room;
- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group;
- (void)home:(id)home didRemoveServiceGroup:(id)group;
- (void)homeDidUpdateApplicationData:(id)data;
- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home;
- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state;
- (void)keyChangedWithObject:(void *)object key:;
- (void)resetTrackingChangedKeys;
- (void)stopTrackingChangedKeys;
@end

@implementation HFHomePropertyCacheManager

+ (id)sharedManager
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HFHomePropertyCacheManager_sharedManager__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (qword_280E03488 != -1)
  {
    dispatch_once(&qword_280E03488, block);
  }

  v2 = _MergedGlobals_280;

  return v2;
}

void __43__HFHomePropertyCacheManager_sharedManager__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = _MergedGlobals_280;
  _MergedGlobals_280 = v1;
}

- (HFHomePropertyCacheManager)init
{
  v15.receiver = self;
  v15.super_class = HFHomePropertyCacheManager;
  v2 = [(HFHomePropertyCacheManager *)&v15 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEA78]);
    objectCaches = v2->_objectCaches;
    v2->_objectCaches = v3;

    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = [v5 stringWithFormat:@"%@:cache", v7];
    [(NSCache *)v2->_objectCaches setName:v8];

    [(NSCache *)v2->_objectCaches setEvictsObjectsWhenApplicationEntersBackground:0];
    v2->__testing_disableCaching = 0;
    v9 = [MEMORY[0x277CBEB58] set];
    keysForRoomOrder = v2->_keysForRoomOrder;
    v2->_keysForRoomOrder = v9;

    lock = [MEMORY[0x277D0F938] lock];
    roomOrderKeysLock = v2->_roomOrderKeysLock;
    v2->_roomOrderKeysLock = lock;

    v13 = +[HFHomeKitDispatcher sharedDispatcher];
    [v13 addHomeManagerObserver:v2];
    [v13 addHomeObserver:v2];
    [v13 addAccessoryObserver:v2];
  }

  return v2;
}

- (void)_clearCachedValues
{
  v3 = HFLogForCategory(0);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_20D9BF000, v3, OS_LOG_TYPE_DEBUG, "HFHomePropertyCacheManager: Clearing cache", v5, 2u);
  }

  objectCaches = [(HFHomePropertyCacheManager *)self objectCaches];
  [objectCaches removeAllObjects];

  [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
}

- (void)_clearRoomOrderValues
{
  roomOrderKeysLock = [(HFHomePropertyCacheManager *)self roomOrderKeysLock];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __51__HFHomePropertyCacheManager__clearRoomOrderValues__block_invoke;
  v4[3] = &unk_277DF3D38;
  v4[4] = self;
  [roomOrderKeysLock performBlock:v4];
}

void __51__HFHomePropertyCacheManager__clearRoomOrderValues__block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = HFLogForCategory(0);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_debug_impl(&dword_20D9BF000, v2, OS_LOG_TYPE_DEBUG, "HFHomePropertyCacheManager: Clearing room order cache", buf, 2u);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [*(a1 + 32) keysForRoomOrder];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = [*(a1 + 32) objectCaches];
        v10 = [v8 objectID];
        v11 = [v9 objectForKey:v10];
        v12 = [v8 key];
        [v11 removeObjectForKey:v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v5);
  }

  v13 = [*(a1 + 32) keysForRoomOrder];
  [v13 removeAllObjects];
}

- (id)valueForObject:(id)object key:(id)key invalidationReasons:(unint64_t)reasons recalculationBlock:(id)block
{
  blockCopy = block;
  keyCopy = key;
  objectCopy = object;
  v13 = objc_msgSend_home(objectCopy);
  v14 = [(HFHomePropertyCacheManager *)self valueForObject:objectCopy home:v13 key:keyCopy invalidationReasons:reasons recalculationBlock:blockCopy];

  return v14;
}

- (id)valueForObject:(id)object home:(id)home key:(id)key invalidationReasons:(unint64_t)reasons recalculationBlock:(id)block
{
  reasonsCopy = reasons;
  v53 = *MEMORY[0x277D85DE8];
  objectCopy = object;
  homeCopy = home;
  keyCopy = key;
  blockCopy = block;
  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFHomePropertyCacheManager.m" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"recalculationBlock"}];
  }

  v16 = homeCopy;
  uniqueIdentifier = [homeCopy uniqueIdentifier];
  v18 = +[HFHomeKitDispatcher sharedDispatcher];
  v19 = objc_msgSend_home(v18);
  uniqueIdentifier2 = [v19 uniqueIdentifier];
  if ([uniqueIdentifier isEqual:uniqueIdentifier2])
  {
    v41 = reasonsCopy;
    _testing_disableCaching = [(HFHomePropertyCacheManager *)self _testing_disableCaching];

    if (!_testing_disableCaching)
    {
      v22 = objectCopy;
      v23 = [(HFHomePropertyCacheManager *)self cachedValuesForObject:objectCopy];
      null = [v23 objectForKey:keyCopy];
      if (!null)
      {
        v25 = HFLogForCategory(0);
        if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
        {
          *buf = 138412546;
          v46 = keyCopy;
          v47 = 2112;
          v48 = objectCopy;
          _os_log_impl(&dword_20D9BF000, v25, OS_LOG_TYPE_INFO, "HFHomePropertyCacheManager: Recalculating %@ for object %@", buf, 0x16u);
        }

        null = blockCopy[2](blockCopy);
        [(HFHomePropertyCacheManager *)self keyChangedWithObject:objectCopy key:keyCopy];
        if (!null)
        {
          null = [MEMORY[0x277CBEB68] null];
        }

        [v23 setObject:null forKey:keyCopy cost:1];
        if ((v41 & 4) != 0)
        {
          v26 = [_HFHomePropertyCacheManagerKey alloc];
          uniqueIdentifier3 = [objectCopy uniqueIdentifier];
          v28 = [(_HFHomePropertyCacheManagerKey *)v26 initWithObjectID:uniqueIdentifier3 key:keyCopy];

          roomOrderKeysLock = [(HFHomePropertyCacheManager *)self roomOrderKeysLock];
          v43[0] = MEMORY[0x277D85DD0];
          v43[1] = 3221225472;
          v43[2] = __93__HFHomePropertyCacheManager_valueForObject_home_key_invalidationReasons_recalculationBlock___block_invoke;
          v43[3] = &unk_277DF3370;
          v43[4] = self;
          v44 = v28;
          v30 = v28;
          [roomOrderKeysLock performBlock:v43];
        }
      }

      null2 = [MEMORY[0x277CBEB68] null];
      if (null == null2)
      {
        v32 = 0;
      }

      else
      {
        v32 = null;
      }

      v33 = v32;

      goto LABEL_22;
    }
  }

  else
  {
  }

  if (![(HFHomePropertyCacheManager *)self _testing_disableCaching])
  {
    v34 = HFLogForCategory(0);
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEBUG))
    {
      uniqueIdentifier4 = [homeCopy uniqueIdentifier];
      v37 = +[HFHomeKitDispatcher sharedDispatcher];
      v38 = objc_msgSend_home(v37);
      uniqueIdentifier5 = [v38 uniqueIdentifier];
      *buf = 138413058;
      v46 = objectCopy;
      v47 = 2112;
      v48 = uniqueIdentifier4;
      v49 = 2112;
      v50 = uniqueIdentifier5;
      v51 = 2112;
      v52 = keyCopy;
      _os_log_debug_impl(&dword_20D9BF000, v34, OS_LOG_TYPE_DEBUG, "HFHomePropertyCacheManager: Object %@ home (%@) is not current home (%@): recalculating %@", buf, 0x2Au);
    }
  }

  v22 = objectCopy;
  [(HFHomePropertyCacheManager *)self keyChangedWithObject:objectCopy key:keyCopy];
  v33 = blockCopy[2](blockCopy);
LABEL_22:

  return v33;
}

- (void)keyChangedWithObject:(void *)object key:
{
  v18 = a2;
  objectCopy = object;
  if (self)
  {
    changedKeys = [self changedKeys];
    if (changedKeys)
    {
      v7 = changedKeys;
      v8 = +[HFUtilities isInternalTest];

      if (v8)
      {
        changedKeys2 = [self changedKeys];
        uniqueIdentifier = [v18 uniqueIdentifier];
        v11 = [changedKeys2 objectForKeyedSubscript:uniqueIdentifier];
        v12 = [v11 mutableCopy];
        v13 = v12;
        if (v12)
        {
          v14 = v12;
        }

        else
        {
          v14 = [MEMORY[0x277CBEB58] set];
        }

        v15 = v14;

        [v15 addObject:objectCopy];
        changedKeys3 = [self changedKeys];
        uniqueIdentifier2 = [v18 uniqueIdentifier];
        [changedKeys3 setObject:v15 forKey:uniqueIdentifier2];
      }
    }
  }
}

void __93__HFHomePropertyCacheManager_valueForObject_home_key_invalidationReasons_recalculationBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) keysForRoomOrder];
  [v2 addObject:*(a1 + 40)];
}

- (id)cachedValuesForObject:(id)object
{
  objectCopy = object;
  objectCaches = [(HFHomePropertyCacheManager *)self objectCaches];
  uniqueIdentifier = [objectCopy uniqueIdentifier];
  v7 = [objectCaches objectForKey:uniqueIdentifier];

  if (!v7)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA78]);
    v8 = MEMORY[0x277CCACA8];
    objectCaches2 = [(HFHomePropertyCacheManager *)self objectCaches];
    name = [objectCaches2 name];
    uniqueIdentifier2 = [objectCopy uniqueIdentifier];
    v12 = [v8 stringWithFormat:@"%@(%@)", name, uniqueIdentifier2];
    [v7 setName:v12];

    objectCaches3 = [(HFHomePropertyCacheManager *)self objectCaches];
    uniqueIdentifier3 = [objectCopy uniqueIdentifier];
    [objectCaches3 setObject:v7 forKey:uniqueIdentifier3 cost:1];
  }

  return v7;
}

- (void)accessoryDidUpdateServices:(id)services
{
  v4 = objc_msgSend_home(services, a2);
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = objc_msgSend_home(v5);

  if (v4 == v6)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)home didAddAccessory:(id)accessory
{
  v5 = objc_msgSend_home(accessory, a2, home);
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = objc_msgSend_home(v6);

  if (v5 == v7)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)home didRemoveAccessory:(id)accessory
{
  v5 = objc_msgSend_home(accessory, a2, home);
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = objc_msgSend_home(v6);

  if (v5 == v7)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)home:(id)home didAddServiceGroup:(id)group
{
  homeCopy = home;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = objc_msgSend_home(v6);

  if (v7 == homeCopy)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)home didRemoveServiceGroup:(id)group
{
  homeCopy = home;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = objc_msgSend_home(v6);

  if (v7 == homeCopy)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)home:(id)home didAddService:(id)service toServiceGroup:(id)group
{
  homeCopy = home;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = objc_msgSend_home(v7);

  if (v8 == homeCopy)
  {

    [(HFHomePropertyCacheManager *)self _clearCachedValues];
  }
}

- (void)home:(id)home didRemoveService:(id)service fromServiceGroup:(id)group
{
  homeCopy = home;
  v7 = +[HFHomeKitDispatcher sharedDispatcher];
  v8 = objc_msgSend_home(v7);

  if (v8 == homeCopy)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)home:(id)home didAddRoom:(id)room
{
  homeCopy = home;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = objc_msgSend_home(v6);

  if (v7 == homeCopy)
  {

    [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
  }
}

- (void)home:(id)home didRemoveRoom:(id)room
{
  homeCopy = home;
  v6 = +[HFHomeKitDispatcher sharedDispatcher];
  v7 = objc_msgSend_home(v6);

  if (v7 == homeCopy)
  {

    [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
  }
}

- (void)homeDidUpdateApplicationData:(id)data
{
  dataCopy = data;
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = objc_msgSend_home(v5);

  if (v6 == dataCopy)
  {

    [(HFHomePropertyCacheManager *)self _clearRoomOrderValues];
  }
}

- (void)homeKitDispatcher:(id)dispatcher manager:(id)manager didChangeHome:(id)home
{
  [(HFHomePropertyCacheManager *)self _clearCachedValues:dispatcher];

  +[HFAccessoryLikeObject _invalidateObjectMap];
}

- (void)homeManager:(id)manager didUpdateHH2State:(BOOL)state
{
  if (state)
  {
    [(HFHomePropertyCacheManager *)self _clearCachedValues];

    +[HFAccessoryLikeObject _invalidateObjectMap];
  }
}

- (void)stopTrackingChangedKeys
{
  changedKeys = self->_changedKeys;
  self->_changedKeys = 0;
}

- (void)resetTrackingChangedKeys
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  changedKeys = self->_changedKeys;
  self->_changedKeys = dictionary;
}

@end