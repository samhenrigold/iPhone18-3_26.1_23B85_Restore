@interface REDuetContextQuery
- (NSSet)keyPaths;
- (REDuetContextQuery)initWithPredicate:(id)predicate remotePredicate:(id)remotePredicate name:(id)name evaluationBlock:(id)block;
- (id)_keyPathsForDevice:(id)device;
- (id)_localKeyPaths;
- (id)_localRegistrationWithCallback:(id)callback;
- (id)_remoteRegistrationForDevice:(id)device callback:(id)callback;
- (id)createRegistrationsWithCallback:(id)callback;
- (id)valueFromUserContext:(id)context;
- (void)setDevices:(id)devices;
@end

@implementation REDuetContextQuery

- (REDuetContextQuery)initWithPredicate:(id)predicate remotePredicate:(id)remotePredicate name:(id)name evaluationBlock:(id)block
{
  predicateCopy = predicate;
  remotePredicateCopy = remotePredicate;
  nameCopy = name;
  blockCopy = block;
  v25.receiver = self;
  v25.super_class = REDuetContextQuery;
  v15 = [(REDuetContextQuery *)&v25 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_predicate, predicate);
    objc_storeStrong(&v16->_remotePredicate, remotePredicate);
    uUID = [MEMORY[0x277CCAD78] UUID];
    uuid = v16->_uuid;
    v16->_uuid = uUID;

    objc_storeStrong(&v16->_name, name);
    v19 = MEMORY[0x277CBEB98];
    v20 = +[REDuetContextDevice localDevice];
    v21 = [v19 setWithObject:v20];
    [(REDuetContextQuery *)v16 setDevices:v21];

    v22 = MEMORY[0x22AABC5E0](blockCopy);
    evalBlock = v16->_evalBlock;
    v16->_evalBlock = v22;
  }

  return v16;
}

- (NSSet)keyPaths
{
  keyPaths = [(_CDContextualPredicate *)self->_predicate keyPaths];
  v3 = keyPaths;
  if (keyPaths)
  {
    v4 = keyPaths;
  }

  else
  {
    v4 = [MEMORY[0x277CBEB98] set];
  }

  v5 = v4;

  return v5;
}

- (id)_localRegistrationWithCallback:(id)callback
{
  callbackCopy = callback;
  if (callbackCopy && self->_predicate)
  {
    v5 = get_CDContextualChangeRegistrationClass();
    registrationID = [(REDuetContextQuery *)self registrationID];
    predicate = self->_predicate;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __53__REDuetContextQuery__localRegistrationWithCallback___block_invoke;
    v10[3] = &unk_2785FAD30;
    v11 = callbackCopy;
    v8 = [v5 localNonWakingRegistrationWithIdentifier:registrationID contextualPredicate:predicate callback:v10];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_remoteRegistrationForDevice:(id)device callback:(id)callback
{
  deviceCopy = device;
  callbackCopy = callback;
  if (callbackCopy && self->_remotePredicate)
  {
    v8 = get_CDContextualChangeRegistrationClass();
    registrationID = [(REDuetContextQuery *)self registrationID];
    identifier = [deviceCopy identifier];
    v11 = [registrationID stringByAppendingFormat:@".%@", identifier];
    remotePredicate = self->_remotePredicate;
    deviceType = [deviceCopy deviceType];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __60__REDuetContextQuery__remoteRegistrationForDevice_callback___block_invoke;
    v16[3] = &unk_2785FAD58;
    v17 = callbackCopy;
    v14 = [v8 registrationWithIdentifier:v11 contextualPredicate:remotePredicate deviceTypes:deviceType clientIdentifier:@"com.apple.RelevanceEngine" mustWake:0 callback:v16];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

- (id)createRegistrationsWithCallback:(id)callback
{
  v21 = *MEMORY[0x277D85DE8];
  callbackCopy = callback;
  v5 = CoreDuetContextLibraryCore(0);
  array = MEMORY[0x277CBEBF8];
  if (callbackCopy && v5)
  {
    array = [MEMORY[0x277CBEB18] array];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    devices = [(REDuetContextQuery *)self devices];
    v8 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(devices);
          }

          v12 = *(*(&v16 + 1) + 8 * i);
          identifier = [v12 identifier];

          if (identifier)
          {
            [(REDuetContextQuery *)self _remoteRegistrationForDevice:v12 callback:callbackCopy];
          }

          else
          {
            [(REDuetContextQuery *)self _localRegistrationWithCallback:callbackCopy];
          }
          v14 = ;
          if (v14)
          {
            [array addObject:v14];
          }
        }

        v9 = [devices countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }
  }

  return array;
}

- (id)_keyPathsForDevice:(id)device
{
  v29 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  keyPaths = [(REDuetContextQuery *)self keyPaths];
  v6 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(keyPaths, "count")}];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = keyPaths;
  v7 = [obj countByEnumeratingWithState:&v19 objects:v28 count:16];
  if (v7)
  {
    v8 = *v20;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v20 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v19 + 1) + 8 * i);
        v24 = 0;
        v25 = &v24;
        v26 = 0x2050000000;
        v11 = get_CDContextualKeyPathClass_softClass;
        v27 = get_CDContextualKeyPathClass_softClass;
        if (!get_CDContextualKeyPathClass_softClass)
        {
          v23[0] = MEMORY[0x277D85DD0];
          v23[1] = 3221225472;
          v23[2] = __get_CDContextualKeyPathClass_block_invoke;
          v23[3] = &unk_2785F9BC0;
          v23[4] = &v24;
          __get_CDContextualKeyPathClass_block_invoke(v23);
          v11 = v25[3];
        }

        v12 = v11;
        _Block_object_dispose(&v24, 8);
        identifier = [deviceCopy identifier];
        uUIDString = [identifier UUIDString];
        v15 = [v11 remoteKeyPathForKeyPath:v10 forDeviceID:uUIDString];
        [v6 addObject:v15];
      }

      v7 = [obj countByEnumeratingWithState:&v19 objects:v28 count:16];
    }

    while (v7);
  }

  v16 = [(REDuetContextQuery *)self _sortedKeyPaths:v6];

  return v16;
}

- (id)_localKeyPaths
{
  keyPaths = [(REDuetContextQuery *)self keyPaths];
  allObjects = [keyPaths allObjects];
  v5 = [(REDuetContextQuery *)self _sortedKeyPaths:allObjects];

  return v5;
}

uint64_t __38__REDuetContextQuery__sortedKeyPaths___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 key];
  v6 = [v4 key];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)setDevices:(id)devices
{
  v24 = *MEMORY[0x277D85DE8];
  devicesCopy = devices;
  devices = self->_devices;
  if (devices != devicesCopy && ([(NSSet *)devices isEqual:devicesCopy]& 1) == 0)
  {
    v6 = [(NSSet *)devicesCopy copy];
    v7 = self->_devices;
    self->_devices = v6;

    array = [MEMORY[0x277CBEB18] array];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = self->_devices;
    v10 = [(NSSet *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v20;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v20 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v19 + 1) + 8 * i);
          identifier = [v14 identifier];

          if (identifier)
          {
            _localKeyPaths = [(REDuetContextQuery *)self _keyPathsForDevice:v14];
            [array addObject:_localKeyPaths];
          }

          else
          {
            _localKeyPaths = [(REDuetContextQuery *)self _localKeyPaths];
            [array insertObject:_localKeyPaths atIndex:0];
          }
        }

        v11 = [(NSSet *)v9 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v11);
    }

    v17 = [array copy];
    searchKeyPaths = self->_searchKeyPaths;
    self->_searchKeyPaths = v17;
  }
}

- (id)valueFromUserContext:(id)context
{
  v48 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  if (self->_evalBlock)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    keyPaths = [(REDuetContextQuery *)self keyPaths];
    v7 = [keyPaths countByEnumeratingWithState:&v41 objects:v47 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v42;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v42 != v9)
          {
            objc_enumerationMutation(keyPaths);
          }

          v11 = *(*(&v41 + 1) + 8 * i);
          v12 = [v11 key];
          [dictionary setObject:v11 forKeyedSubscript:v12];
        }

        v8 = [keyPaths countByEnumeratingWithState:&v41 objects:v47 count:16];
      }

      while (v8);
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = self->_searchKeyPaths;
    v31 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v46 count:16];
    if (v31)
    {
      selfCopy = self;
      v30 = *v38;
      while (1)
      {
        v13 = 0;
LABEL_12:
        if (*v38 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v32 = v13;
        v14 = *(*(&v37 + 1) + 8 * v13);
        v15 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v14, "count")}];
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v16 = v14;
        v17 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
        if (!v17)
        {
          break;
        }

        v18 = v17;
        v19 = *v34;
LABEL_16:
        v20 = 0;
        while (1)
        {
          if (*v34 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v33 + 1) + 8 * v20);
          v22 = [contextCopy objectForContextualKeyPath:v21];
          if (!v22)
          {
            break;
          }

          v23 = v22;
          v24 = [v21 key];
          v25 = [dictionary objectForKeyedSubscript:v24];

          if (v25)
          {
            [v15 setObject:v23 forKeyedSubscript:v25];
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v33 objects:v45 count:16];
            if (v18)
            {
              goto LABEL_16;
            }

            goto LABEL_28;
          }
        }

        v13 = v32 + 1;
        if (v32 + 1 != v31)
        {
          goto LABEL_12;
        }

        v26 = 0;
        v31 = [(NSArray *)obj countByEnumeratingWithState:&v37 objects:v46 count:16];
        if (!v31)
        {
          goto LABEL_31;
        }
      }

LABEL_28:

      v26 = (*(selfCopy->_evalBlock + 2))();
    }

    else
    {
      v26 = 0;
    }

LABEL_31:
  }

  else
  {
    v26 = 0;
  }

  return v26;
}

@end