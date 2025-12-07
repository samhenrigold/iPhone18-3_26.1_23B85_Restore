@interface TKSlotWatch
+ (BOOL)smartCard:(id)card mightHandleAIDFromExtension:(id)extension foundAID:(id *)d;
+ (id)supportedAIDsOfExtension:(id)extension;
+ (void)parseAIDForAttribute:(id)attribute into:(id)into;
- (TKSlotWatch)initWithName:(id)name endpoint:(id)endpoint slotType:(id)type watcher:(id)watcher;
- (void)dealloc;
- (void)getTokenIDs:(id)ds;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)remove;
- (void)startObserving;
- (void)tokenArrived;
- (void)tokenRemoved;
@end

@implementation TKSlotWatch

- (TKSlotWatch)initWithName:(id)name endpoint:(id)endpoint slotType:(id)type watcher:(id)watcher
{
  nameCopy = name;
  endpointCopy = endpoint;
  typeCopy = type;
  watcherCopy = watcher;
  v33.receiver = self;
  v33.super_class = TKSlotWatch;
  v15 = [(TKSlotWatch *)&v33 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_name, name);
    objc_storeStrong(&v16->_slotType, type);
    objc_storeStrong(&v16->_endpoint, endpoint);
    objc_storeWeak(&v16->_slotWatcher, watcherCopy);
    v16->_previousSlotState = 1;
    v17 = +[NSMutableDictionary dictionary];
    tokenConnections = v16->_tokenConnections;
    v16->_tokenConnections = v17;

    v32 = 0;
    v19 = [[TKSmartCardSlot alloc] initWithEndpoint:endpointCopy error:&v32];
    v20 = v32;
    smartCardSlot = v16->_smartCardSlot;
    v16->_smartCardSlot = v19;

    if (v16->_smartCardSlot)
    {
      nameCopy = [NSString stringWithFormat:@"slotwatch:%@", nameCopy];
      [nameCopy UTF8String];
      v24 = os_transaction_create();
      transaction = v16->_transaction;
      v16->_transaction = v24;

      nameCopy2 = [NSString stringWithFormat:@"slotwatch:%@", nameCopy];
      uTF8String = [nameCopy2 UTF8String];
      v28 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v29 = dispatch_queue_create(uTF8String, v28);
      queue = v16->_queue;
      v16->_queue = v29;
    }

    else
    {
      v28 = sub_10000B0B8(v22);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        sub_10001E98C(v20, v28);
      }

      nameCopy2 = v16;
      v16 = 0;
    }
  }

  return v16;
}

- (void)dealloc
{
  smartCardSlot = self->_smartCardSlot;
  v4 = NSStringFromSelector("state");
  [(TKSmartCardSlot *)smartCardSlot removeObserver:self forKeyPath:v4 context:0];

  v5.receiver = self;
  v5.super_class = TKSlotWatch;
  [(TKSlotWatch *)&v5 dealloc];
}

- (void)startObserving
{
  smartCardSlot = self->_smartCardSlot;
  v4 = NSStringFromSelector("state");
  [(TKSmartCardSlot *)smartCardSlot addObserver:self forKeyPath:v4 options:7 context:0];
}

- (void)remove
{
  [(TKSlotWatch *)self tokenRemoved];
  WeakRetained = objc_loadWeakRetained(&self->_slotWatcher);
  [WeakRetained removeSlotWatch:self];
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  v7 = [change objectForKey:{NSKeyValueChangeNewKey, object}];
  integerValue = [v7 integerValue];

  previousSlotState = self->_previousSlotState;
  v10 = previousSlotState;
  if (integerValue == 2)
  {
LABEL_4:
    integerValue = v10;
    if (previousSlotState == 1)
    {
LABEL_5:
      WeakRetained = objc_loadWeakRetained(&self->_slotWatcher);
      registry = [WeakRetained registry];
      [registry preloadTokens];

      integerValue = v10;
      goto LABEL_6;
    }

    goto LABEL_6;
  }

  if (integerValue == previousSlotState)
  {
    v10 = integerValue;
    goto LABEL_4;
  }

  if (!integerValue)
  {
    [(TKSlotWatch *)self remove];
    goto LABEL_6;
  }

  if (integerValue == 1)
  {
    queue = self->_queue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10000B3C0;
    v15[3] = &unk_100038710;
    v15[4] = self;
    dispatch_async(queue, v15);
    v10 = 1;
    goto LABEL_5;
  }

  if (integerValue == 4)
  {
    v13 = self->_queue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10000B3B8;
    block[3] = &unk_100038710;
    block[4] = self;
    dispatch_async(v13, block);
  }

LABEL_6:
  self->_previousSlotState = integerValue;
}

- (void)getTokenIDs:(id)ds
{
  dsCopy = ds;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_tokenConnections allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        stringRepresentation = [*(*(&v11 + 1) + 8 * v9) stringRepresentation];
        [dsCopy addObject:stringRepresentation];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  objc_sync_exit(selfCopy);
}

+ (void)parseAIDForAttribute:(id)attribute into:(id)into
{
  attributeCopy = attribute;
  intoCopy = into;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = attributeCopy;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_7;
    }

    v6 = [NSData dataFromAIDString:attributeCopy];
  }

  v7 = v6;
  if (v6)
  {
    [intoCopy addObject:v6];
  }

LABEL_7:
}

+ (id)supportedAIDsOfExtension:(id)extension
{
  attributes = [extension attributes];
  v5 = [attributes objectForKeyedSubscript:TKTokenClassDriverApplicationIDKey];

  if (v5)
  {
    v6 = +[NSMutableArray array];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v14;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v14 != v10)
            {
              objc_enumerationMutation(v7);
            }

            [self parseAIDForAttribute:*(*(&v13 + 1) + 8 * i) into:{v6, v13}];
          }

          v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v9);
      }
    }

    else
    {
      [self parseAIDForAttribute:v5 into:v6];
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BOOL)smartCard:(id)card mightHandleAIDFromExtension:(id)extension foundAID:(id *)d
{
  cardCopy = card;
  extensionCopy = extension;
  v7 = [self supportedAIDsOfExtension:?];
  v8 = v7;
  if (v7)
  {
    v39 = 0;
    v40 = &v39;
    v41 = 0x3032000000;
    v42 = sub_10000BAD8;
    v43 = sub_10000BAE8;
    v44 = 0;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    obj = v7;
    v9 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
    if (v9)
    {
      v10 = *v36;
      while (2)
      {
        for (i = 0; i != v9; i = i + 1)
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v35 + 1) + 8 * i);
          v34 = 0;
          v30[0] = _NSConcreteStackBlock;
          v30[1] = 3221225472;
          v30[2] = sub_10000BAF0;
          v30[3] = &unk_100038B48;
          v13 = cardCopy;
          v31 = v13;
          v32 = v12;
          v33 = &v39;
          v14 = [v13 inSessionWithError:&v34 executeBlock:v30];
          v15 = v34;
          v16 = v15;
          if ((v14 & 1) == 0)
          {
            v19 = sub_10000B0B8(v15);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              slot = [v13 slot];
              name = [slot name];
              *buf = 138543618;
              v46 = name;
              v47 = 2114;
              v48 = v16;
              _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Error connecting SmartCard in slot %{public}@: %{public}@", buf, 0x16u);
            }

            goto LABEL_16;
          }

          v17 = v40[5] == 0;

          if (!v17)
          {
            goto LABEL_16;
          }
        }

        v9 = [obj countByEnumeratingWithState:&v35 objects:v49 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:

    v20 = v40[5];
    v18 = v20 != 0;
    if (v20)
    {
      *d = v20;
    }

    else
    {
      v21 = sub_10000B0B8(0);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        identifier = [extensionCopy identifier];
        sub_10001EA18(identifier, buf, v21);
      }
    }

    _Block_object_dispose(&v39, 8);
  }

  else
  {
    v18 = 1;
  }

  return v18;
}

- (void)tokenArrived
{
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v51 = _os_activity_create(&_mh_execute_header, "token inserted", &_os_activity_current, OS_ACTIVITY_FLAG_DEFAULT);
  os_activity_scope_enter(v51, &state);
  v3 = sub_10000B0B8(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EA68(self, v3, v4);
  }

  makeSmartCard = [(TKSmartCardSlot *)self->_smartCardSlot makeSmartCard];
  WeakRetained = objc_loadWeakRetained(&self->_slotWatcher);
  registry = [WeakRetained registry];

  v6 = objc_loadWeakRetained(&self->_slotWatcher);
  registry2 = [v6 registry];
  v53 = [registry2 beginTransaction:@"tokenArrived"];

  tokenExtensions = [v53 tokenExtensions];
  v63 = [&__NSArray0__struct mutableCopy];
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  allValues = [tokenExtensions allValues];
  v9 = [allValues countByEnumeratingWithState:&v70 objects:v84 count:16];
  if (v9)
  {
    v10 = *v71;
    v11 = TKTokenTypeKey;
    v61 = TKTokenClassDriverProprietaryCardUsage;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v71 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v13 = *(*(&v70 + 1) + 8 * i);
        attributes = [v13 attributes];
        v15 = [attributes objectForKeyedSubscript:v11];
        v16 = [v15 isEqual:@"smartcard"];

        if (v16)
        {
          attributes2 = [v13 attributes];
          v18 = [attributes2 objectForKeyedSubscript:v61];
          v19 = [v18 isEqual:&__kCFBooleanTrue];

          if (v19)
          {
            [v63 insertObject:v13 atIndex:0];
          }

          else
          {
            [v63 addObject:v13];
          }
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v70 objects:v84 count:16];
    }

    while (v9);
  }

  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v20 = v63;
  v21 = [v20 countByEnumeratingWithState:&v66 objects:v83 count:16];
  v22 = 0;
  if (v21)
  {
    v56 = *v67;
    v55 = TKTokenClassDriverProprietaryCardUsage;
    v54 = v20;
    do
    {
      v57 = v21;
      for (j = 0; j != v57; j = j + 1)
      {
        if (*v67 != v56)
        {
          objc_enumerationMutation(v20);
        }

        v24 = *(*(&v66 + 1) + 8 * j);
        v25 = objc_opt_class();
        v65 = 0;
        v26 = [v25 smartCard:makeSmartCard mightHandleAIDFromExtension:v24 foundAID:&v65];
        v64 = v65;
        if (v26)
        {
          attributes3 = [v24 attributes];
          v28 = [attributes3 objectForKeyedSubscript:v55];
          v29 = [v28 isEqual:&__kCFBooleanTrue];

          driverCache = [registry driverCache];
          v62 = [driverCache hostTokenDriverFromExtension:v24];

          v31 = [[TKHostTokenConnection alloc] initWithDriver:v62 slot:self->_endpoint AID:v64 proprietaryCardUsage:v29 registry:registry error:0];
          if (v31)
          {
            selfCopy = self;
            objc_sync_enter(selfCopy);
            tokenConnections = self->_tokenConnections;
            token = [(TKHostTokenConnection *)v31 token];
            tokenID = [token tokenID];
            [(NSMutableDictionary *)tokenConnections setObject:v31 forKey:tokenID];

            v37 = sub_10000B0B8(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
            {
              name = self->_name;
              identifier = [v24 identifier];
              token2 = [(TKHostTokenConnection *)v31 token];
              tokenID2 = [token2 tokenID];
              v42 = [NSNumber numberWithBool:v29];
              *buf = 138544130;
              v76 = name;
              v77 = 2114;
              v78 = identifier;
              v79 = 2114;
              v80 = tokenID2;
              v81 = 2112;
              v82 = v42;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_INFO, "%{public}@: %{public}@ is handling %{public}@ with proprietary card usage %@", buf, 0x2Au);

              v20 = v54;
            }

            objc_sync_exit(selfCopy);
            if (v29)
            {

              v22 = 1;
              goto LABEL_34;
            }

LABEL_26:
            v22 = 1;
          }

          else
          {
            if (v22)
            {
              goto LABEL_26;
            }

            v43 = sub_10000B0B8(0);
            if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v24 identifier];
              v45 = self->_name;
              *buf = 138543618;
              v76 = identifier2;
              v77 = 2114;
              v78 = v45;
              _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ cannot handle token in slot %{public}@", buf, 0x16u);
            }

            v22 = 0;
          }
        }
      }

      v21 = [v20 countByEnumeratingWithState:&v66 objects:v83 count:16];
    }

    while (v21);
  }

LABEL_34:

  commit = [v53 commit];
  if ((v22 & 1) == 0)
  {
    v47 = sub_10000B0B8(commit);
    if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
    {
      v48 = [(TKSmartCardSlot *)self->_smartCardSlot ATR];
      v49 = [(TKSmartCardSlot *)self->_smartCardSlot ATR];
      bytes = [v49 bytes];
      *buf = 138543618;
      v76 = v48;
      v77 = 2114;
      v78 = bytes;
      _os_log_error_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "No token driver found for card %{public}@ (ATR: %{public}@)", buf, 0x16u);
    }
  }

  os_activity_scope_leave(&state);
}

- (void)tokenRemoved
{
  v3 = sub_10000B0B8(self);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    sub_10001EADC(self, v3, v4);
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  allKeys = [(NSMutableDictionary *)selfCopy->_tokenConnections allKeys];
  v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(allKeys);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        WeakRetained = objc_loadWeakRetained(&selfCopy->_slotWatcher);
        registry = [WeakRetained registry];
        [registry removeTokenWithTokenID:v10];

        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [allKeys countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  [(NSMutableDictionary *)selfCopy->_tokenConnections removeAllObjects];
  objc_sync_exit(selfCopy);
}

@end