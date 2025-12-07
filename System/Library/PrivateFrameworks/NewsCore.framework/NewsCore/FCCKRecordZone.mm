@interface FCCKRecordZone
- (id)description;
- (id)initWithDatabase:(void *)database delegate:(void *)delegate recordZoneID:;
- (void)fetchChangesWithChangeToken:(void *)token desiredKeys:(char)keys fetchAllChanges:(uint64_t)changes qualityOfService:(void *)service completion:;
@end

@implementation FCCKRecordZone

- (id)initWithDatabase:(void *)database delegate:(void *)delegate recordZoneID:
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = a2;
  databaseCopy = database;
  delegateCopy = delegate;
  if (!self)
  {
    goto LABEL_12;
  }

  if (!v8 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "database != nil"];
    *buf = 136315906;
    v17 = "[FCCKRecordZone initWithDatabase:delegate:recordZoneID:]";
    v18 = 2080;
    v19 = "FCCKRecordZone.m";
    v20 = 1024;
    v21 = 42;
    v22 = 2114;
    v23 = v13;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);

    if (!delegateCopy)
    {
LABEL_5:
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordZoneID != nil"];
        *buf = 136315906;
        v17 = "[FCCKRecordZone initWithDatabase:delegate:recordZoneID:]";
        v18 = 2080;
        v19 = "FCCKRecordZone.m";
        v20 = 1024;
        v21 = 43;
        v22 = 2114;
        v23 = v14;
        _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
      }
    }
  }

  else if (!delegateCopy)
  {
    goto LABEL_5;
  }

  v15.receiver = self;
  v15.super_class = FCCKRecordZone;
  v11 = objc_msgSendSuper2(&v15, sel_init);
  self = v11;
  if (v11)
  {
    if (v8 && delegateCopy)
    {
      objc_storeStrong(v11 + 3, a2);
      objc_storeWeak(self + 4, databaseCopy);
      objc_storeStrong(self + 2, delegate);
    }

    else
    {

      self = 0;
    }
  }

LABEL_12:

  return self;
}

uint64_t __46__FCCKRecordZone_performActionWithRecordZone___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return (*(*(a1 + 40) + 16))();
  }

  v4 = *(a1 + 32);
  if (v4)
  {
    *(v4 + 8) = 1;
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    if (v6)
    {
      v7 = *(v6 + 16);
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
    v5 = *(a1 + 40);
  }

  return (*(v5 + 16))(v5, v7, 0);
}

- (void)fetchChangesWithChangeToken:(void *)token desiredKeys:(char)keys fetchAllChanges:(uint64_t)changes qualityOfService:(void *)service completion:
{
  v32 = *MEMORY[0x1E69E9840];
  v11 = a2;
  tokenCopy = token;
  serviceCopy = service;
  v14 = serviceCopy;
  if (self)
  {
    if (serviceCopy)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v21 = __102__FCCKRecordZone_fetchChangesWithChangeToken_desiredKeys_fetchAllChanges_qualityOfService_completion___block_invoke;
      v22 = &unk_1E7C387A0;
      selfCopy = self;
      v24 = v11;
      keysCopy = keys;
      v25 = tokenCopy;
      changesCopy = changes;
      v26 = v14;
      v15 = v20;
      v16 = v15;
      if (*(self + 8))
      {
        (v21)(v15, *(self + 16), 0);
      }

      else
      {
        WeakRetained = objc_loadWeakRetained((self + 32));
        v19 = *(self + 16);
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 3221225472;
        *&buf[16] = __46__FCCKRecordZone_performActionWithRecordZone___block_invoke;
        *&v30 = &unk_1E7C38750;
        *(&v30 + 1) = self;
        v31 = v16;
        [WeakRetained ensureRecordZoneExistsWithID:v19 completionHandler:buf];
      }
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "completion != nil"];
      *buf = 136315906;
      *&buf[4] = "[FCCKRecordZone fetchChangesWithChangeToken:desiredKeys:fetchAllChanges:qualityOfService:completion:]";
      *&buf[12] = 2080;
      *&buf[14] = "FCCKRecordZone.m";
      *&buf[22] = 1024;
      LODWORD(v30) = 96;
      WORD2(v30) = 2114;
      *(&v30 + 6) = v17;
      _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
    }
  }
}

void __102__FCCKRecordZone_fetchChangesWithChangeToken_desiredKeys_fetchAllChanges_qualityOfService_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(a1 + 32);
    if (v4)
    {
      v5 = *(v4 + 24);
    }

    else
    {
      v5 = 0;
    }

    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a1 + 72);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __102__FCCKRecordZone_fetchChangesWithChangeToken_desiredKeys_fetchAllChanges_qualityOfService_completion___block_invoke_2;
    v11[3] = &unk_1E7C38778;
    v9 = *(a1 + 64);
    v12 = *(a1 + 56);
    [v5 fetchChangesForRecordZoneID:a2 changeToken:v6 desiredKeys:v7 fetchAllChanges:v8 qualityOfService:v9 completionHandler:v11];
  }

  else
  {
    v10 = *(*(a1 + 56) + 16);

    v10();
  }
}

- (id)description
{
  v3 = [FCDescription descriptionWithObject:self];
  if (self)
  {
    recordZoneID = self->_recordZoneID;
  }

  else
  {
    recordZoneID = 0;
  }

  zoneName = [(CKRecordZoneID *)recordZoneID zoneName];
  [v3 addField:@"recordZoneName" value:zoneName];

  descriptionString = [v3 descriptionString];

  return descriptionString;
}

@end