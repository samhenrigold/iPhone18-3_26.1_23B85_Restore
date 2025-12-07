@interface CPLCloudKitFixUpSparseRecordTask
- (CPLCloudKitFixUpSparseRecordTask)initWithController:(id)controller tasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler;
- (void)_fetchSparseRecordsWithCompletionHandler:(id)handler;
- (void)_updateSparseRecords:(id)records currentUserRecordID:(id)d completionHandler:(id)handler;
- (void)runOperations;
@end

@implementation CPLCloudKitFixUpSparseRecordTask

- (CPLCloudKitFixUpSparseRecordTask)initWithController:(id)controller tasks:(id)tasks transportScopeMapping:(id)mapping completionHandler:(id)handler
{
  tasksCopy = tasks;
  mappingCopy = mapping;
  handlerCopy = handler;
  v19.receiver = self;
  v19.super_class = CPLCloudKitFixUpSparseRecordTask;
  v14 = [(CPLCloudKitTransportTask *)&v19 initWithController:controller];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_tasks, tasks);
    v16 = [handlerCopy copy];
    completionHandler = v15->_completionHandler;
    v15->_completionHandler = v16;

    [(CPLCloudKitTransportTask *)v15 setTransportScopeMapping:mappingCopy];
  }

  return v15;
}

- (void)_fetchSparseRecordsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v5 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_tasks, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = self->_tasks;
  v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v16;
    do
    {
      v10 = 0;
      do
      {
        if (*v16 != v9)
        {
          objc_enumerationMutation(v6);
        }

        privateCloudScopedIdentifier = [*(*(&v15 + 1) + 8 * v10) privateCloudScopedIdentifier];
        [v5 addObject:privateCloudScopedIdentifier];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100074464;
  v13[3] = &unk_100275698;
  v14 = handlerCopy;
  v12 = handlerCopy;
  [(CPLCloudKitTransportTask *)self fetchRecordWithScopedIdentifiers:v5 completionHandler:v13];
}

- (void)_updateSparseRecords:(id)records currentUserRecordID:(id)d completionHandler:(id)handler
{
  recordsCopy = records;
  dCopy = d;
  handlerCopy = handler;
  v79 = 0;
  LOBYTE(handler) = [(CPLCloudKitTransportTask *)self shouldRunOperationsWithError:&v79];
  v11 = v79;
  v12 = v11;
  if ((handler & 1) == 0)
  {
    handlerCopy[2](handlerCopy, v11);
    goto LABEL_48;
  }

  v62 = a2;
  v63 = v11;
  v64 = handlerCopy;
  v66 = [[NSMutableArray alloc] initWithCapacity:{-[NSArray count](self->_tasks, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v61 = 272;
  obj = self->_tasks;
  v13 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v88 count:16];
  selfCopy = self;
  if (!v13)
  {
    goto LABEL_41;
  }

  v15 = v13;
  v16 = *v76;
  v65 = recordsCopy;
  selfCopy2 = self;
  do
  {
    for (i = 0; i != v15; i = i + 1)
    {
      if (*v76 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = *(*(&v75 + 1) + 8 * i);
      privateCloudScopedIdentifier = [v18 privateCloudScopedIdentifier];
      v20 = [recordsCopy objectForKeyedSubscript:privateCloudScopedIdentifier];

      if (!v20)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_39;
        }

        v23 = sub_1000038DC(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          privateCloudScopedIdentifier2 = [v18 privateCloudScopedIdentifier];
          sharedCloudScopedIdentifier = [v18 sharedCloudScopedIdentifier];
          realCloudScopedIdentifier = [v18 realCloudScopedIdentifier];
          *buf = 138412802;
          v81 = privateCloudScopedIdentifier2;
          v82 = 2112;
          v83 = sharedCloudScopedIdentifier;
          v84 = 2112;
          v85 = realCloudScopedIdentifier;
          v27 = v23;
          v28 = "Sparse record %@ can't be found anymore. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
LABEL_15:
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 0x20u);
        }

LABEL_16:

        goto LABEL_39;
      }

      cpl_inExpunged = [v20 cpl_inExpunged];
      if (cpl_inExpunged)
      {
        if (_CPLSilentLogging)
        {
          goto LABEL_39;
        }

        v23 = sub_1000038DC(cpl_inExpunged);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          privateCloudScopedIdentifier2 = [v18 privateCloudScopedIdentifier];
          sharedCloudScopedIdentifier = [v18 sharedCloudScopedIdentifier];
          realCloudScopedIdentifier = [v18 realCloudScopedIdentifier];
          *buf = 138412802;
          v81 = privateCloudScopedIdentifier2;
          v82 = 2112;
          v83 = sharedCloudScopedIdentifier;
          v84 = 2112;
          v85 = realCloudScopedIdentifier;
          v27 = v23;
          v28 = "Sparse record %@ is expunged. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
          goto LABEL_15;
        }

        goto LABEL_16;
      }

      v74 = 0;
      v29 = [v20 cpl_sharingRecordScopedIdentifierWithScopeProvider:selfCopy currentUserRecordID:dCopy isSparseRecord:&v74];
      v30 = v29;
      if (v74)
      {
        if (v29)
        {
          sharedCloudScopedIdentifier2 = [v18 sharedCloudScopedIdentifier];
          v32 = [v30 isEqual:sharedCloudScopedIdentifier2];

          if (v32)
          {
            if ((_CPLSilentLogging & 1) == 0)
            {
              v34 = sub_1000038DC(v33);
              if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
              {
                privateCloudScopedIdentifier3 = [v18 privateCloudScopedIdentifier];
                sharedCloudScopedIdentifier3 = [v18 sharedCloudScopedIdentifier];
                realCloudScopedIdentifier2 = [v18 realCloudScopedIdentifier];
                *buf = 138412802;
                v81 = privateCloudScopedIdentifier3;
                v82 = 2112;
                v83 = sharedCloudScopedIdentifier3;
                v84 = 2112;
                v85 = realCloudScopedIdentifier2;
                _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Will fix sparse record %@'s sharing record scoped identifier (%@ -> %@)", buf, 0x20u);
              }
            }

            realCloudScopedIdentifier3 = [v18 realCloudScopedIdentifier];
            scopeIdentifier = [realCloudScopedIdentifier3 scopeIdentifier];
            v40 = [(CPLCloudKitTransportTask *)selfCopy2 cloudKitScopeForScopeIdentifier:scopeIdentifier];

            if (!v40)
            {
              sub_1001A4958(v18, v62, selfCopy2);
            }

            realCloudScopedIdentifier4 = [v18 realCloudScopedIdentifier];
            identifier = [realCloudScopedIdentifier4 identifier];
            v43 = [v40 recordIDWithRecordName:identifier];

            [v20 cpl_updatePrivateRecordSharedToRecordWithID:v43 currentUserRecordID:dCopy setSparseRecordFlag:0 force:0];
            [v66 addObject:v20];

            recordsCopy = v65;
            goto LABEL_36;
          }

          selfCopy = selfCopy2;
          if ((_CPLSilentLogging & 1) == 0)
          {
            v40 = sub_1000038DC(v33);
            if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
            {
              privateCloudScopedIdentifier4 = [v18 privateCloudScopedIdentifier];
              sharedCloudScopedIdentifier4 = [v18 sharedCloudScopedIdentifier];
              realCloudScopedIdentifier5 = [v18 realCloudScopedIdentifier];
              *buf = 138413058;
              v81 = privateCloudScopedIdentifier4;
              v82 = 2112;
              v83 = v30;
              v84 = 2112;
              v85 = sharedCloudScopedIdentifier4;
              v86 = 2112;
              v87 = realCloudScopedIdentifier5;
              v50 = v40;
              v51 = "Record %@ is sparse but has already been fixed to point to %@. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
              v52 = 42;
              goto LABEL_35;
            }

            goto LABEL_37;
          }
        }

        else if ((_CPLSilentLogging & 1) == 0)
        {
          v40 = sub_1000038DC(0);
          if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
          {
            privateCloudScopedIdentifier4 = [v18 privateCloudScopedIdentifier];
            sharedCloudScopedIdentifier4 = [v18 sharedCloudScopedIdentifier];
            realCloudScopedIdentifier5 = [v18 realCloudScopedIdentifier];
            *buf = 138412802;
            v81 = privateCloudScopedIdentifier4;
            v82 = 2112;
            v83 = sharedCloudScopedIdentifier4;
            v84 = 2112;
            v85 = realCloudScopedIdentifier5;
            v50 = v40;
            v51 = "Record %@ is sparse but pointing to an unknown sharing zone. No need to fix-up its sharing record scoped identifier (%@ -> %@)";
            v52 = 32;
LABEL_35:
            _os_log_impl(&_mh_execute_header, v50, OS_LOG_TYPE_DEFAULT, v51, buf, v52);

LABEL_36:
            selfCopy = selfCopy2;
          }

LABEL_37:
        }
      }

      else if ((_CPLSilentLogging & 1) == 0)
      {
        v40 = sub_1000038DC(v29);
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          privateCloudScopedIdentifier5 = [v18 privateCloudScopedIdentifier];
          sharedCloudScopedIdentifier5 = [v18 sharedCloudScopedIdentifier];
          realCloudScopedIdentifier6 = [v18 realCloudScopedIdentifier];
          *buf = 138412802;
          v81 = privateCloudScopedIdentifier5;
          v82 = 2112;
          v83 = sharedCloudScopedIdentifier5;
          v84 = 2112;
          v85 = realCloudScopedIdentifier6;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Record %@ is not sparse anymore. No need to fix-up its sharing record scoped identifier (%@ -> %@)", buf, 0x20u);

          selfCopy = selfCopy2;
        }

        goto LABEL_37;
      }

LABEL_39:
    }

    v15 = [(NSArray *)obj countByEnumeratingWithState:&v75 objects:v88 count:16];
  }

  while (v15);
LABEL_41:

  if ([v66 count])
  {
    [*(&selfCopy->super.super.isa + v61) firstObject];
    v54 = v53 = selfCopy;
    privateCloudScopedIdentifier6 = [v54 privateCloudScopedIdentifier];
    scopeIdentifier2 = [privateCloudScopedIdentifier6 scopeIdentifier];

    handlerCopy = v64;
    if (!scopeIdentifier2)
    {
      sub_1001A4B64(v62, v53);
    }

    v57 = [(CPLCloudKitTransportTask *)v53 cloudKitScopeForScopeIdentifier:scopeIdentifier2];
    v58 = v53;
    if (!v57)
    {
      sub_1001A4AA0(v62, v53);
    }

    v59 = v57;
    v60 = [[CKModifyRecordsOperation alloc] initWithRecordsToSave:v66 recordIDsToDelete:&__NSArray0__struct];
    [v60 setSavePolicy:0];
    v70[0] = _NSConcreteStackBlock;
    v70[1] = 3221225472;
    v70[2] = sub_100074D0C;
    v70[3] = &unk_100275998;
    v70[4] = v58;
    v73 = v62;
    v71 = v66;
    v72 = v64;
    [v60 setModifyRecordsCompletionBlock:v70];
    [(CPLCloudKitTransportTask *)v58 launchOperation:v60 type:CPLCloudKitOperationTypeForScope(v59) withContext:0];
  }

  else
  {
    handlerCopy = v64;
    v64[2](v64, 0);
  }

  v12 = v63;
LABEL_48:
}

- (void)runOperations
{
  if ([(NSArray *)self->_tasks count])
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100075078;
    v4[3] = &unk_100274018;
    v4[4] = self;
    [(CPLCloudKitTransportTask *)self getUserRecordIDFetchIfNecessaryWithCompletionHandler:v4];
  }

  else
  {
    v3 = *(self->_completionHandler + 2);

    v3();
  }
}

@end