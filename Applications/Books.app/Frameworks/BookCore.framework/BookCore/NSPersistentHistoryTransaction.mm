@interface NSPersistentHistoryTransaction
- (id)bc_changeTypeToString:(int64_t)string;
- (void)bc_getManagedObjectsWith:(id)with entityName:(id)name inserted:(id *)inserted updated:(id *)updated tombstones:(id *)tombstones;
- (void)bc_logChanges;
@end

@implementation NSPersistentHistoryTransaction

- (id)bc_changeTypeToString:(int64_t)string
{
  if (string < 3)
  {
    return off_2C9620[string];
  }

  [NSException raise:NSGenericException format:@"Unexpected NSPersistentHistoryChangeType.", v3, v4];
  return 0;
}

- (void)bc_getManagedObjectsWith:(id)with entityName:(id)name inserted:(id *)inserted updated:(id *)updated tombstones:(id *)tombstones
{
  withCopy = with;
  nameCopy = name;
  changes = [(NSPersistentHistoryTransaction *)self changes];
  v11 = [changes count];
  v51 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v13 = +[NSMutableArray array];
  v14 = BCRemoteManagedObjectIDMonitorLog(v13);
  selfCopy = self;
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    timestamp = [(NSPersistentHistoryTransaction *)self timestamp];
    v16 = [timestamp description];
    *buf = 138544130;
    v61 = v16;
    v62 = 2048;
    transactionNumber = [(NSPersistentHistoryTransaction *)self transactionNumber];
    v64 = 2048;
    v65 = v11;
    v66 = 2112;
    v67 = nameCopy;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "bc_getManagedObjectsWith %{public}@ Processing transaction#:(%lld) changeCount:%lu entityName:%@", buf, 0x2Au);
  }

  [(NSPersistentHistoryTransaction *)self bc_logChanges];
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  obj = changes;
  v50 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
  if (v50)
  {
    v46 = *v54;
    *&v17 = 138412290;
    v43 = v17;
    do
    {
      v18 = 0;
      do
      {
        v19 = withCopy;
        if (*v54 != v46)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v53 + 1) + 8 * v18);
        v21 = objc_autoreleasePoolPush();
        changedObjectID = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
        entity = [changedObjectID entity];
        name = [entity name];
        v25 = [name isEqualToString:nameCopy];

        if (!v25)
        {
          tombstone = BCRemoteManagedObjectIDMonitorLog(v26);
          if (os_log_type_enabled(tombstone, OS_LOG_TYPE_DEFAULT))
          {
            changedObjectID2 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
            changedObjectID3 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
            entity2 = [changedObjectID3 entity];
            name2 = [entity2 name];
            *buf = 138412802;
            v61 = selfCopy;
            v62 = 2112;
            transactionNumber = changedObjectID2;
            v64 = 2112;
            v65 = name2;
            _os_log_impl(&dword_0, tombstone, OS_LOG_TYPE_DEFAULT, "%@ Skipping history transaction id:%@ with entity (%@)", buf, 0x20u);
          }

          goto LABEL_21;
        }

        if ([(NSPersistentHistoryTransaction *)v20 changeType]&& [(NSPersistentHistoryTransaction *)v20 changeType]!= &dword_0 + 1)
        {
          tombstone = [(NSPersistentHistoryTransaction *)v20 tombstone];
          if (tombstone)
          {
            [v51 addObject:tombstone];
LABEL_21:
            withCopy = v19;
            goto LABEL_25;
          }

          v41 = BCRemoteManagedObjectIDMonitorLog(0);
          withCopy = v19;
          if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
          {
            *buf = v43;
            v61 = v20;
            _os_log_error_impl(&dword_0, v41, OS_LOG_TYPE_ERROR, "bc_getManagedObjectsWith Change contains deletion but no tombstone. Change: %@", buf, 0xCu);
          }
        }

        else
        {
          changedObjectID4 = [(NSPersistentHistoryTransaction *)v20 changedObjectID];
          tombstone = [v19 existingObjectWithID:changedObjectID4 error:0];

          entity3 = [tombstone entity];
          name3 = [entity3 name];
          v31 = [name3 isEqualToString:nameCopy];

          if (v31)
          {
            if ([(NSPersistentHistoryTransaction *)v20 changeType])
            {
              v33 = v12;
            }

            else
            {
              v33 = v13;
            }

            [v33 addObject:tombstone];
          }

          else
          {
            v38 = BCRemoteManagedObjectIDMonitorLog(v32);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
            {
              sub_1E5EA8(v57, v20, &v58, v38);
            }
          }

          withCopy = v19;
          [v19 refreshObject:tombstone mergeChanges:0];
        }

LABEL_25:

        [withCopy processPendingChanges];
        objc_autoreleasePoolPop(v21);
        v39 = v12;
        *updated = v12;
        v40 = v13;
        *inserted = v13;
        *tombstones = v51;
        v18 = v18 + 1;
      }

      while (v50 != v18);
      v42 = [obj countByEnumeratingWithState:&v53 objects:v59 count:16];
      v50 = v42;
    }

    while (v42);
  }
}

- (void)bc_logChanges
{
  v3 = objc_alloc_init(NSMutableArray);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  changes = [(NSPersistentHistoryTransaction *)self changes];
  v5 = [changes countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(changes);
        }

        v9 = -[NSPersistentHistoryTransaction bc_changeTypeToString:](self, "bc_changeTypeToString:", [*(*(&v12 + 1) + 8 * v8) changeType]);
        [v3 addObject:v9];

        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [changes countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = BCRemoteManagedObjectIDMonitorLog(v10);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    sub_1E5F20(self);
  }
}

@end