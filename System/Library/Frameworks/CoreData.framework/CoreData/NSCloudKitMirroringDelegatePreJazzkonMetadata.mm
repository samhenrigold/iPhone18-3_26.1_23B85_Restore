@interface NSCloudKitMirroringDelegatePreJazzkonMetadata
+ (uint64_t)allDefaultsKeys;
- (BOOL)isEqual:(id)equal;
- (NSCloudKitMirroringDelegatePreJazzkonMetadata)initWithStore:(id)store;
- (_BYTE)changeTokenForDatabaseScope:(_BYTE *)result;
- (_BYTE)changeTokenForZoneWithID:(uint64_t)d inDatabaseWithScope:;
- (__CFString)_keyForDatabaseScope:(uint64_t)scope;
- (id)_keyForZoneName:(uint64_t)name owner:(uint64_t)owner databseScope:(uint64_t)scope;
- (id)ckIdentityRecordName;
- (id)description;
- (uint64_t)hasCheckedCKIdentity;
- (uint64_t)hasInitializedDatabaseSubscription;
- (uint64_t)hasInitializedZoneSubscription;
- (uint64_t)lastHistoryToken;
- (uint64_t)load:(uint64_t)load;
- (void)dealloc;
@end

@implementation NSCloudKitMirroringDelegatePreJazzkonMetadata

+ (uint64_t)allDefaultsKeys
{
  v2[8] = *MEMORY[0x1E69E9840];
  objc_opt_self();
  v2[0] = @"NSCloudKitMirroringDelegateInitializedZoneDefaultsKey";
  v2[1] = @"NSCloudKitMirroringDelegateInitializedZoneSubscriptionDefaultsKey";
  v2[2] = @"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey";
  v2[3] = @"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey";
  v2[4] = @"PFCloudKitServerChangeTokenKey";
  v2[5] = @"NSCloudKitMirroringDelegateLastHistoryTokenKey";
  v2[6] = @"NSCloudKitMirroringDelegateServerChangeTokensKey";
  v2[7] = @"NSCloudKitMirroringDelegateInitializedDatabaseSubscriptionKey";
  return [MEMORY[0x1E695DEC8] arrayWithObjects:v2 count:8];
}

- (NSCloudKitMirroringDelegatePreJazzkonMetadata)initWithStore:(id)store
{
  v7.receiver = self;
  v7.super_class = NSCloudKitMirroringDelegatePreJazzkonMetadata;
  v4 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)&v7 init];
  v5 = v4;
  if (v4)
  {
    objc_storeWeak(&v4->_store, store);
  }

  return v5;
}

- (void)dealloc
{
  objc_storeWeak(&self->_store, 0);

  self->_ckIdentityRecordName = 0;
  self->_keyToPreviousServerChangeToken = 0;

  self->_lastHistoryToken = 0;
  v3.receiver = self;
  v3.super_class = NSCloudKitMirroringDelegatePreJazzkonMetadata;
  [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (self == equal)
  {
    return 1;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    WeakRetained = objc_loadWeakRetained(&self->_store);
    v6 = objc_loadWeakRetained(equal + 1);
    if (self->_loaded != *(equal + 16) || self->_hasInitializedZone != *(equal + 18) || self->_hasCheckedCKIdentity != *(equal + 32) || self->_hasInitializedZoneSubscription != *(equal + 19) || self->_hasInitializedDatabaseSubscription != *(equal + 20))
    {
      goto LABEL_25;
    }

    identifier = [WeakRetained identifier];
    identifier2 = [v6 identifier];
    if (identifier != identifier2)
    {
      v9 = 0;
      if (!identifier || !identifier2)
      {
        goto LABEL_26;
      }

      if (![identifier isEqualToString:identifier2])
      {
        goto LABEL_25;
      }
    }

    ckIdentityRecordName = self->_ckIdentityRecordName;
    v11 = *(equal + 3);
    if (ckIdentityRecordName != v11)
    {
      v9 = 0;
      if (!ckIdentityRecordName || !v11)
      {
        goto LABEL_26;
      }

      if (![(NSString *)ckIdentityRecordName isEqualToString:?])
      {
        goto LABEL_25;
      }
    }

    keyToPreviousServerChangeToken = self->_keyToPreviousServerChangeToken;
    v13 = *(equal + 5);
    if (keyToPreviousServerChangeToken != v13)
    {
      v9 = 0;
      if (!keyToPreviousServerChangeToken || !v13)
      {
        goto LABEL_26;
      }

      if (![(NSDictionary *)keyToPreviousServerChangeToken isEqualToDictionary:?])
      {
        goto LABEL_25;
      }
    }

    lastHistoryToken = self->_lastHistoryToken;
    if (lastHistoryToken == *(equal + 6) || [(NSPersistentHistoryToken *)lastHistoryToken isEqual:?])
    {
      v9 = 1;
    }

    else
    {
LABEL_25:
      v9 = 0;
    }

LABEL_26:

    return v9;
  }

  v16.receiver = self;
  v16.super_class = NSCloudKitMirroringDelegatePreJazzkonMetadata;
  return [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)&v16 isEqual:equal];
}

- (id)description
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_alloc(MEMORY[0x1E696AD60]);
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  if (self->_loaded)
  {
    v7 = @"loaded";
  }

  else
  {
    v7 = @"not-loaded";
  }

  v8 = [v4 initWithFormat:@"<%@: %p; %@", v6, self, v7];
  v9 = v8;
  if (self->_loaded)
  {
    [v8 appendFormat:@", changed:%d", self->_hasChanges];
    [v9 appendFormat:@", initZone:%d", self->_hasInitializedZone];
    [v9 appendFormat:@", initZoneSub:%d", self->_hasInitializedZoneSubscription];
    [v9 appendFormat:@", initDatabaseSub:%d", self->_hasInitializedDatabaseSubscription];
    [v9 appendFormat:@", identity:%@", self->_ckIdentityRecordName];
    [v9 appendFormat:@", checkedIdentity:%d", self->_hasCheckedCKIdentity];
    [v9 appendString:{@", changeTokens:"}];
    if ([(NSDictionary *)self->_keyToPreviousServerChangeToken count])
    {
      keyToPreviousServerChangeToken = self->_keyToPreviousServerChangeToken;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = __60__NSCloudKitMirroringDelegatePreJazzkonMetadata_description__block_invoke;
      v12[3] = &unk_1E6EC58D8;
      v12[4] = v9;
      [(NSDictionary *)keyToPreviousServerChangeToken enumerateKeysAndObjectsUsingBlock:v12];
    }

    else
    {
      [v9 appendString:@"empty"];
    }

    [v9 appendFormat:@"historyToken:%@", self->_lastHistoryToken];
  }

  [v9 appendString:@">"];
  objc_autoreleasePoolPop(v3);
  return v9;
}

- (uint64_t)hasInitializedZoneSubscription
{
  if (self)
  {
    if ((*(self + 16) & 1) == 0)
    {
      v18 = v6;
      v19 = v5;
      v20 = v4;
      v21 = v3;
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D930];
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = NSStringFromSelector(sel_hasInitializedZoneSubscription);
      v17 = [v12 exceptionWithName:v13 reason:objc_msgSend_stringWithFormat_(v14 userInfo:{v15, v16, v7, v18, v19, v20, v21, v2, v8, v9), 0}];
      objc_exception_throw(v17);
    }

    v10 = *(self + 19);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (uint64_t)hasInitializedDatabaseSubscription
{
  if (self)
  {
    if ((*(self + 16) & 1) == 0)
    {
      v18 = v6;
      v19 = v5;
      v20 = v4;
      v21 = v3;
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D930];
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = NSStringFromSelector(sel_hasInitializedDatabaseSubscription);
      v17 = [v12 exceptionWithName:v13 reason:objc_msgSend_stringWithFormat_(v14 userInfo:{v15, v16, v7, v18, v19, v20, v21, v2, v8, v9), 0}];
      objc_exception_throw(v17);
    }

    v10 = *(self + 20);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (id)ckIdentityRecordName
{
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      v3 = MEMORY[0x1E695DF30];
      v4 = *MEMORY[0x1E695D930];
      v5 = MEMORY[0x1E696AEC0];
      v6 = objc_opt_class();
      v7 = NSStringFromSelector(sel_ckIdentityRecordName);
      v8 = [v3 exceptionWithName:v4 reason:objc_msgSend_stringWithFormat_(v5 userInfo:{v6, v7), 0}];
      objc_exception_throw(v8);
    }

    v2 = *(result + 3);

    return v2;
  }

  return result;
}

- (uint64_t)hasCheckedCKIdentity
{
  if (self)
  {
    if ((*(self + 16) & 1) == 0)
    {
      v18 = v6;
      v19 = v5;
      v20 = v4;
      v21 = v3;
      v12 = MEMORY[0x1E695DF30];
      v13 = *MEMORY[0x1E695D930];
      v14 = MEMORY[0x1E696AEC0];
      v15 = objc_opt_class();
      v16 = NSStringFromSelector(sel_hasCheckedCKIdentity);
      v17 = [v12 exceptionWithName:v13 reason:objc_msgSend_stringWithFormat_(v14 userInfo:{v15, v16, v7, v18, v19, v20, v21, v2, v8, v9), 0}];
      objc_exception_throw(v17);
    }

    v10 = *(self + 32);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

- (_BYTE)changeTokenForZoneWithID:(uint64_t)d inDatabaseWithScope:
{
  if (result)
  {
    if ((result[16] & 1) == 0)
    {
      v5 = MEMORY[0x1E695DF30];
      v6 = *MEMORY[0x1E695D930];
      v7 = MEMORY[0x1E696AEC0];
      v8 = objc_opt_class();
      v9 = NSStringFromSelector(sel_changeTokenForZoneWithID_inDatabaseWithScope_);
      v10 = [v5 exceptionWithName:v6 reason:objc_msgSend_stringWithFormat_(v7 userInfo:{v8, v9), 0}];
      objc_exception_throw(v10);
    }

    v3 = *(result + 5);
    v4 = -[NSCloudKitMirroringDelegatePreJazzkonMetadata _keyForZoneName:owner:databseScope:]([a2 zoneName], objc_msgSend(a2, "ownerName"), d);

    return [v3 objectForKey:v4];
  }

  return result;
}

- (id)_keyForZoneName:(uint64_t)name owner:(uint64_t)owner databseScope:(uint64_t)scope
{
  v6 = objc_alloc(MEMORY[0x1E696AD60]);
  v8 = [v6 initWithString:{-[NSCloudKitMirroringDelegatePreJazzkonMetadata _keyForDatabaseScope:](scope, v7)}];
  [v8 appendFormat:@".%@.%@", name, owner];
  v9 = [v8 copy];

  return v9;
}

- (_BYTE)changeTokenForDatabaseScope:(_BYTE *)result
{
  if (result)
  {
    if ((result[16] & 1) == 0)
    {
      v4 = MEMORY[0x1E695DF30];
      v5 = *MEMORY[0x1E695D930];
      v6 = MEMORY[0x1E696AEC0];
      v7 = objc_opt_class();
      v8 = NSStringFromSelector(sel_changeTokenForDatabaseScope_);
      v9 = [v4 exceptionWithName:v5 reason:objc_msgSend_stringWithFormat_(v6 userInfo:{v7, v8), 0}];
      objc_exception_throw(v9);
    }

    v2 = *(result + 5);
    v3 = [(NSCloudKitMirroringDelegatePreJazzkonMetadata *)a2 _keyForDatabaseScope:a2];

    return [v2 objectForKey:v3];
  }

  return result;
}

- (__CFString)_keyForDatabaseScope:(uint64_t)scope
{
  if ((scope - 1) >= 3)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0] userInfo:{a2, @"Unknown database scope: %lu", scope), 0}];
    objc_exception_throw(v3);
  }

  return off_1E6EC58F8[scope - 1];
}

- (uint64_t)lastHistoryToken
{
  if (result)
  {
    if ((*(result + 16) & 1) == 0)
    {
      v16 = v6;
      v17 = v5;
      v18 = v4;
      v19 = v3;
      v10 = MEMORY[0x1E695DF30];
      v11 = *MEMORY[0x1E695D930];
      v12 = MEMORY[0x1E696AEC0];
      v13 = objc_opt_class();
      v14 = NSStringFromSelector(sel_lastHistoryToken);
      v15 = [v10 exceptionWithName:v11 reason:objc_msgSend_stringWithFormat_(v12 userInfo:{v13, v14, v7, v16, v17, v18, v19, v2, v8, v9), 0}];
      objc_exception_throw(v15);
    }

    return *(result + 48);
  }

  return result;
}

- (uint64_t)load:(uint64_t)load
{
  v50 = *MEMORY[0x1E69E9840];
  if (!load)
  {
    return 0;
  }

  if ((*(load + 16) & 1) == 0)
  {
    Weak = objc_loadWeak((load + 8));
    persistentStoreCoordinator = [Weak persistentStoreCoordinator];
    v5 = objc_autoreleasePoolPush();
    v43 = Weak;
    metadata = [Weak metadata];
    *(load + 18) = [objc_msgSend(metadata objectForKey:{@"NSCloudKitMirroringDelegateInitializedZoneDefaultsKey", "BOOLValue"}];
    *(load + 19) = [objc_msgSend(metadata objectForKey:{@"NSCloudKitMirroringDelegateInitializedZoneSubscriptionDefaultsKey", "BOOLValue"}];
    *(load + 20) = [objc_msgSend(metadata objectForKey:{@"NSCloudKitMirroringDelegateInitializedDatabaseSubscriptionKey", "BOOLValue"}];
    *(load + 24) = [metadata objectForKey:@"NSCloudKitMirroringDelegateCKIdentityRecordNameDefaultsKey"];
    *(load + 32) = [objc_msgSend(metadata objectForKey:{@"NSCloudKitMirroringDelegateCheckedCKIdentityDefaultsKey", "BOOLValue"}];
    v7 = [metadata objectForKey:@"PFCloudKitServerChangeTokenKey"];
    v8 = v7;
    v9 = 0x1E696A000uLL;
    if (v7)
    {
      *buf = 0;
      v10 = MEMORY[0x1E696ACD0];
      getCloudKitCKServerChangeTokenClass(v7);
      v11 = [v10 unarchivedObjectOfClass:objc_opt_class() fromData:v8 error:buf];
      if (v11 || [*buf code] == 4865 && (v12 = objc_msgSend(*buf, "domain"), (objc_msgSend(v12, "isEqualToString:", *MEMORY[0x1E696A250]) & 1) != 0))
      {
        v45 = 0;
        v46 = 1;
      }

      else
      {
        v13 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"PFCloudKitServerChangeTokenKey", v43);
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v14 setObject:v13 forKey:*MEMORY[0x1E696A588]];
        if (*buf)
        {
          [v14 setObject:*buf forKey:*MEMORY[0x1E696AA08]];
        }

        v15 = objc_alloc(MEMORY[0x1E696ABC0]);
        v16 = [v15 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v14];

        v45 = v16;
        v46 = 0;
      }
    }

    else
    {
      v11 = 0;
      v45 = 0;
      v46 = 1;
    }

    v17 = [metadata objectForKey:@"NSCloudKitMirroringDelegateServerChangeTokensKey"];
    if (v17)
    {
      v18 = v5;
      *buf = 0;
      v19 = MEMORY[0x1E696ACD0];
      v20 = MEMORY[0x1E695DFD8];
      v21 = objc_opt_class();
      v22 = objc_opt_class();
      (getCloudKitCKServerChangeTokenClass)();
      v23 = [v19 unarchivedObjectOfClasses:objc_msgSend(v20 fromData:"setWithObjects:" error:{v21, v22, objc_opt_class(), 0), v17, buf}];
      if (v23)
      {
        *(load + 40) = v23;
        v5 = v18;
      }

      else
      {
        v26 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"NSCloudKitMirroringDelegateServerChangeTokensKey", v43);
        v27 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v5 = v18;
        [v27 setObject:v26 forKey:*MEMORY[0x1E696A588]];
        if (*buf)
        {
          [v27 setObject:*buf forKey:*MEMORY[0x1E696AA08]];
        }

        v28 = objc_alloc(MEMORY[0x1E696ABC0]);
        v45 = [v28 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v27];

        v46 = 0;
      }

      v9 = 0x1E696A000;
    }

    else
    {
      if (v11)
      {
        CloudKitCKCurrentUserDefaultName = getCloudKitCKCurrentUserDefaultName();
        v25 = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v11, -[NSCloudKitMirroringDelegatePreJazzkonMetadata _keyForZoneName:owner:databseScope:](@"com.apple.coredata.cloudkit.zone", CloudKitCKCurrentUserDefaultName, 2), 0}];
      }

      else
      {
        v25 = objc_alloc_init(MEMORY[0x1E695DF20]);
      }

      *(load + 40) = v25;
    }

    v29 = [metadata objectForKey:@"NSCloudKitMirroringDelegateLastHistoryTokenKey"];
    if (v29)
    {
      *buf = 0;
      v30 = *(v9 + 3280);
      v31 = v46;
      v32 = v45;
      v33 = [v30 unarchivedObjectOfClass:objc_opt_class() fromData:v29 error:buf];
      if (v33)
      {
        *(load + 48) = v33;
      }

      else
      {
        v34 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], @"NSCloudKitMirroringDelegateLastHistoryTokenKey", v43);
        v35 = objc_alloc_init(MEMORY[0x1E695DF90]);
        [v35 setObject:v34 forKey:*MEMORY[0x1E696A588]];
        if (*buf)
        {
          [v35 setObject:*buf forKey:*MEMORY[0x1E696AA08]];
        }

        v36 = objc_alloc(MEMORY[0x1E696ABC0]);
        v32 = [v36 initWithDomain:*MEMORY[0x1E696A250] code:134402 userInfo:v35];

        v31 = 0;
      }
    }

    else
    {
      v31 = v46;
      v32 = v45;
    }

    objc_autoreleasePoolPop(v5);
    if (v32)
    {
      v37 = v31;
    }

    else
    {
      v37 = 1;
    }

    if (v37)
    {
      v38 = 0;
    }

    else
    {
      v38 = v32;
    }

    if (v31)
    {
      v3 = 1;
      *(load + 16) = 1;
LABEL_48:

      return v3;
    }

    if (v38)
    {
      if (a2)
      {
        v3 = 0;
        *a2 = v38;
        goto LABEL_48;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegatePreJazzkonMetadata.m";
        v48 = 1024;
        v49 = 461;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v40 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        *&buf[4] = "/Library/Caches/com.apple.xbs/Sources/Persistence/NSCloudKitMirroringDelegatePreJazzkonMetadata.m";
        v48 = 1024;
        v49 = 461;
        _os_log_fault_impl(&dword_18565F000, v40, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v3 = 0;
    goto LABEL_48;
  }

  return 1;
}

@end