@interface CPLPushSessionUpdate
- (BOOL)applyToStore:(id)store error:(id *)error;
- (BOOL)discardFromStore:(id)store error:(id *)error;
- (CPLPushSessionUpdate)initWithCoder:(id)coder;
- (CPLPushSessionUpdate)initWithPushSessionTracker:(id)tracker error:(id *)error;
- (id)pendingRecordChangeForClientCacheWithLocalScopedIdentifier:(id)identifier;
- (void)encodeWithCoder:(id)coder;
@end

@implementation CPLPushSessionUpdate

- (id)pendingRecordChangeForClientCacheWithLocalScopedIdentifier:(id)identifier
{
  v20 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  if ([(NSArray *)self->_deletedRecordScopedIdentifiers containsObject:identifierCopy])
  {
    v5 = [CPLRecordChange newDeleteChangeWithScopedIdentifier:identifierCopy];
  }

  else
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_updatedRecords;
    v7 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          scopedIdentifier = [v11 scopedIdentifier];
          v13 = [scopedIdentifier isEqual:identifierCopy];

          if (v13)
          {
            v5 = v11;

            goto LABEL_13;
          }
        }

        v8 = [(NSArray *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    v5 = 0;
  }

LABEL_13:

  return v5;
}

- (BOOL)discardFromStore:(id)store error:(id *)error
{
  storeCopy = store;
  v26.receiver = self;
  v26.super_class = CPLPushSessionUpdate;
  if ([(CPLChangeSessionUpdate *)&v26 discardFromStore:storeCopy error:error])
  {
    outgoingResources = [storeCopy outgoingResources];
    v22 = 0;
    v23 = &v22;
    v24 = 0x2020000000;
    v25 = 1;
    v16 = 0;
    v17 = &v16;
    v18 = 0x3032000000;
    v19 = __Block_byref_object_copy__3256;
    v20 = __Block_byref_object_dispose__3257;
    v21 = 0;
    pushContexts = self->_pushContexts;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __47__CPLPushSessionUpdate_discardFromStore_error___block_invoke;
    v12[3] = &unk_1E861C018;
    v14 = &v22;
    v9 = outgoingResources;
    v13 = v9;
    v15 = &v16;
    [(NSDictionary *)pushContexts enumerateKeysAndObjectsUsingBlock:v12];
    v10 = *(v23 + 24);
    if (error && (v23[3] & 1) == 0)
    {
      *error = v17[5];
      v10 = *(v23 + 24);
    }

    _Block_object_dispose(&v16, 8);
    _Block_object_dispose(&v22, 8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void __47__CPLPushSessionUpdate_discardFromStore_error___block_invoke(void *a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v6 = [a3 uploadIdentifier];
  if (v6)
  {
    v7 = a1[4];
    v8 = *(a1[6] + 8);
    obj = *(v8 + 40);
    v9 = [v7 deleteResourcesToUploadWithUploadIdentifier:v6 error:&obj];
    objc_storeStrong((v8 + 40), obj);
    *(*(a1[5] + 8) + 24) = v9;
    if ((*(*(a1[5] + 8) + 24) & 1) == 0)
    {
      *a4 = 1;
    }
  }
}

- (BOOL)applyToStore:(id)store error:(id *)error
{
  v137 = *MEMORY[0x1E69E9840];
  storeCopy = store;
  v127.receiver = self;
  v127.super_class = CPLPushSessionUpdate;
  if ([(CPLChangeSessionUpdate *)&v127 applyToStore:storeCopy error:error])
  {
    statusCenter = [storeCopy statusCenter];
    idMapping = [storeCopy idMapping];
    selfCopy = self;
    if ([(NSSet *)self->_unquarantinedRecordScopedIdentifiers count])
    {
      if ((_CPLSilentLogging & 1) == 0)
      {
        v7 = __CPLPushSessionOSLogDomain();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [(NSSet *)selfCopy->_unquarantinedRecordScopedIdentifiers count];
          *buf = 134217984;
          v136 = v8;
          _os_log_impl(&dword_1DC05A000, v7, OS_LOG_TYPE_DEFAULT, "Unquarantining %lu records", buf, 0xCu);
        }
      }

      v87 = storeCopy;
      quarantinedRecords = [storeCopy quarantinedRecords];
      v123 = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v10 = selfCopy->_unquarantinedRecordScopedIdentifiers;
      v11 = [(NSSet *)v10 countByEnumeratingWithState:&v123 objects:v134 count:16];
      if (v11)
      {
        v12 = v11;
        v13 = *v124;
        while (2)
        {
          for (i = 0; i != v12; ++i)
          {
            if (*v124 != v13)
            {
              objc_enumerationMutation(v10);
            }

            v15 = *(*(&v123 + 1) + 8 * i);
            deletedScopeIdentifiers = selfCopy->_deletedScopeIdentifiers;
            scopeIdentifier = [v15 scopeIdentifier];
            LOBYTE(deletedScopeIdentifiers) = [(NSSet *)deletedScopeIdentifiers containsObject:scopeIdentifier];

            if ((deletedScopeIdentifiers & 1) == 0 && ([(NSArray *)quarantinedRecords removeQuarantinedRecordWithScopedIdentifier:v15 notify:0 error:error]& 1) == 0)
            {

              storeCopy = v87;
              goto LABEL_39;
            }
          }

          v12 = [(NSSet *)v10 countByEnumeratingWithState:&v123 objects:v134 count:16];
          if (v12)
          {
            continue;
          }

          break;
        }
      }

      storeCopy = v87;
    }

    errorCopy = error;
    v121 = 0u;
    v122 = 0u;
    v119 = 0u;
    v120 = 0u;
    v18 = selfCopy;
    quarantinedRecords = selfCopy->_deletedRecordScopedIdentifiers;
    v19 = [(NSArray *)quarantinedRecords countByEnumeratingWithState:&v119 objects:v133 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v120;
LABEL_19:
      v22 = 0;
      while (1)
      {
        if (*v120 != v21)
        {
          objc_enumerationMutation(quarantinedRecords);
        }

        v23 = *(*(&v119 + 1) + 8 * v22);
        v24 = v18->_deletedScopeIdentifiers;
        scopeIdentifier2 = [v23 scopeIdentifier];
        LOBYTE(v24) = [(NSSet *)v24 containsObject:scopeIdentifier2];

        if ((v24 & 1) == 0)
        {
          if (![idMapping addDeleteEventForRecordWithLocalScopedIdentifier:v23 direction:1 error:errorCopy])
          {
            break;
          }

          v18 = selfCopy;
          if (![statusCenter discardNotificationForRecordWithScopedIdentifier:v23 error:errorCopy])
          {
            break;
          }
        }

        if (v20 == ++v22)
        {
          v20 = [(NSArray *)quarantinedRecords countByEnumeratingWithState:&v119 objects:v133 count:16];
          if (v20)
          {
            goto LABEL_19;
          }

          goto LABEL_27;
        }
      }

LABEL_39:

      v34 = objc_alloc_init(CPLChangeBatch);
    }

    else
    {
LABEL_27:

      v117 = 0u;
      v118 = 0u;
      v115 = 0u;
      v116 = 0u;
      v26 = v18->_addedRecords;
      v27 = [(NSArray *)v26 countByEnumeratingWithState:&v115 objects:v132 count:16];
      if (v27)
      {
        v28 = v27;
        v29 = *v116;
        while (2)
        {
          for (j = 0; j != v28; ++j)
          {
            if (*v116 != v29)
            {
              objc_enumerationMutation(v26);
            }

            scopedIdentifier = [*(*(&v115 + 1) + 8 * j) scopedIdentifier];
            v32 = v18->_deletedScopeIdentifiers;
            scopeIdentifier3 = [(CPLRecordPushContext *)scopedIdentifier scopeIdentifier];
            LOBYTE(v32) = [(NSSet *)v32 containsObject:scopeIdentifier3];

            if ((v32 & 1) == 0 && ([idMapping addAddEventForRecordWithLocalScopedIdentifier:scopedIdentifier direction:1 error:errorCopy] & 1) == 0)
            {

              LODWORD(scopedIdentifier) = 0;
              goto LABEL_44;
            }
          }

          v28 = [(NSArray *)v26 countByEnumeratingWithState:&v115 objects:v132 count:16];
          if (v28)
          {
            continue;
          }

          break;
        }
      }

      LODWORD(scopedIdentifier) = 1;
LABEL_44:

      v34 = objc_alloc_init(CPLChangeBatch);
      if (!scopedIdentifier)
      {
        goto LABEL_41;
      }

      if (__CPLPushSessionAutoCancelSync == 1)
      {
        v86 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      }

      else
      {
        v86 = 0;
      }

      v88 = storeCopy;
      v89 = v34;
      pushRepository = [storeCopy pushRepository];
      v90 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v114 = 0u;
      v36 = v18->_diffBatch;
      v37 = [(CPLChangeBatch *)v36 countByEnumeratingWithState:&v111 objects:v131 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = 0;
        obj = *v112;
        while (2)
        {
          for (k = 0; k != v38; ++k)
          {
            if (*v112 != obj)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v111 + 1) + 8 * k);
            changeType = [v41 changeType];
            scopedIdentifier2 = [v41 scopedIdentifier];
            v44 = v18->_deletedScopeIdentifiers;
            scopeIdentifier4 = [scopedIdentifier2 scopeIdentifier];
            LOBYTE(v44) = [(NSSet *)v44 containsObject:scopeIdentifier4];

            if ((v44 & 1) == 0)
            {
              [(CPLChangeBatch *)v89 addRecord:v41];
              scopeIdentifier5 = [scopedIdentifier2 scopeIdentifier];
              [v90 addObject:scopeIdentifier5];

              scopedIdentifier = [(NSDictionary *)v18->_pushContexts objectForKeyedSubscript:scopedIdentifier2];
              if (!scopedIdentifier)
              {
                scopedIdentifier = [[CPLRecordPushContext alloc] initWithUploadIdentifier:0 flags:0 priority:0];
              }

              if ([(NSSet *)v18->_unquarantinedRecordScopedIdentifiers containsObject:scopedIdentifier2])
              {
                [v41 _setShouldNotTrustCloudCache:1];
              }

              if (![pushRepository storeChange:v41 pushContext:scopedIdentifier error:errorCopy])
              {

                LOBYTE(scopedIdentifier) = 0;
                storeCopy = v88;
                v34 = v89;
                goto LABEL_41;
              }

              if (__CPLPushSessionAutoCancelSync == 1 && [v41 supportsResources] && ((objc_msgSend(v41, "isDelete") & 1) != 0 || objc_msgSend(v41, "hasChangeType:", 8)))
              {
                [v86 addObject:scopedIdentifier2];
              }
            }

            v39 |= changeType;
          }

          v38 = [(CPLChangeBatch *)v36 countByEnumeratingWithState:&v111 objects:v131 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        v39 = 0;
      }

      v47 = errorCopy;
      v48 = v90;
      storeCopy = v88;
      if (__CPLPushSessionAutoCancelSync == 1 && [v86 count])
      {
        storedExtractedBatch = [pushRepository storedExtractedBatch];
        if (storedExtractedBatch)
        {
          v109 = 0u;
          v110 = 0u;
          v107 = 0u;
          v108 = 0u;
          v92 = storedExtractedBatch;
          obja = [storedExtractedBatch batch];
          v50 = [obja countByEnumeratingWithState:&v107 objects:v130 count:16];
          if (v50)
          {
            v51 = v50;
            v52 = *v108;
            while (2)
            {
              for (m = 0; m != v51; ++m)
              {
                if (*v108 != v52)
                {
                  objc_enumerationMutation(obja);
                }

                v54 = *(*(&v107 + 1) + 8 * m);
                scopedIdentifier3 = [v54 scopedIdentifier];
                v56 = selfCopy->_deletedScopeIdentifiers;
                scopeIdentifier6 = [scopedIdentifier3 scopeIdentifier];
                LOBYTE(v56) = [(NSSet *)v56 containsObject:scopeIdentifier6];

                if ((v56 & 1) == 0)
                {
                  if ([v54 supportsResources])
                  {
                    if ([v54 hasChangeType:8])
                    {
                      scopedIdentifier4 = [v54 scopedIdentifier];
                      v59 = [v86 containsObject:scopedIdentifier4];

                      if (v59)
                      {
                        if ((_CPLSilentLogging & 1) == 0)
                        {
                          v60 = __CPLPushSessionOSLogDomain();
                          if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
                          {
                            *buf = 138412290;
                            v136 = v54;
                            _os_log_impl(&dword_1DC05A000, v60, OS_LOG_TYPE_DEFAULT, "Relaunching sync session because currently uploading %@ has been overwritten", buf, 0xCu);
                          }
                        }

                        engineLibrary = [v88 engineLibrary];
                        syncManager = [engineLibrary syncManager];
                        [syncManager cancelCurrentSyncSession];

                        goto LABEL_90;
                      }
                    }
                  }
                }
              }

              v51 = [obja countByEnumeratingWithState:&v107 objects:v130 count:16];
              if (v51)
              {
                continue;
              }

              break;
            }
          }

LABEL_90:

          v47 = errorCopy;
          v48 = v90;
          storedExtractedBatch = v92;
        }
      }

      if ([v48 count])
      {
        scopes = [v88 scopes];
        v103 = 0u;
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v64 = v48;
        v65 = [v64 countByEnumeratingWithState:&v103 objects:v129 count:16];
        if (v65)
        {
          v66 = v65;
          v67 = *v104;
          while (2)
          {
            for (n = 0; n != v66; ++n)
            {
              if (*v104 != v67)
              {
                objc_enumerationMutation(v64);
              }

              v69 = [scopes scopeWithIdentifier:*(*(&v103 + 1) + 8 * n)];
              if (v69 && ([scopes setScopeHasChangesToPushToTransport:v69 changeTypes:v39 error:errorCopy] & 1) == 0)
              {

                LOBYTE(scopedIdentifier) = 0;
                storeCopy = v88;
                v34 = v89;
                goto LABEL_41;
              }
            }

            v66 = [v64 countByEnumeratingWithState:&v103 objects:v129 count:16];
            if (v66)
            {
              continue;
            }

            break;
          }
        }

        storeCopy = v88;
        v47 = errorCopy;
      }

      v70 = [[CPLSimpleMergeHelper alloc] initWithEngineStore:storeCopy];
      v34 = v89;
      v71 = [(CPLSimpleMergeHelper *)v70 mergerForBatch:v89 error:v47];
      if (v71)
      {
        v72 = v71;
        v73 = [v71 mergeConflictsWithError:v47];

        if (v73)
        {
          if (!-[CPLChangeBatch count](v89, "count") || ([storeCopy quarantinedRecords], v74 = objc_claimAutoreleasedReturnValue(), v75 = objc_msgSend(v74, "resetRejectedRecordsWithError:", v47), v74, v75))
          {
            recordWithStatusChangesToNotify = selfCopy->_recordWithStatusChangesToNotify;
            if (!recordWithStatusChangesToNotify || [CPLPushSessionTracker notifyClientOfStore:storeCopy ofStatusChanges:recordWithStatusChangesToNotify error:v47])
            {
              if ([(NSArray *)selfCopy->_revertedChanges count])
              {
                revertRecords = [storeCopy revertRecords];
                v99 = 0u;
                v100 = 0u;
                v101 = 0u;
                v102 = 0u;
                v78 = selfCopy->_revertedChanges;
                v79 = [(NSArray *)v78 countByEnumeratingWithState:&v99 objects:v128 count:16];
                if (v79)
                {
                  v80 = v79;
                  v81 = storeCopy;
                  v82 = *v100;
                  while (2)
                  {
                    for (ii = 0; ii != v80; ++ii)
                    {
                      if (*v100 != v82)
                      {
                        objc_enumerationMutation(v78);
                      }

                      v84 = *(*(&v99 + 1) + 8 * ii);
                      scopedIdentifier5 = [v84 scopedIdentifier];
                      LODWORD(v84) = [revertRecords addRecordsToRevertWithLocalScopedIdentifier:scopedIdentifier5 class:objc_msgSend(v84 error:{"recordClass"), errorCopy}];

                      if (!v84)
                      {
                        LOBYTE(scopedIdentifier) = 0;
                        goto LABEL_122;
                      }
                    }

                    v80 = [(NSArray *)v78 countByEnumeratingWithState:&v99 objects:v128 count:16];
                    if (v80)
                    {
                      continue;
                    }

                    break;
                  }

                  LOBYTE(scopedIdentifier) = 1;
LABEL_122:
                  storeCopy = v81;
                }

                else
                {
                  LOBYTE(scopedIdentifier) = 1;
                }
              }

              else
              {
                LOBYTE(scopedIdentifier) = 1;
              }

              goto LABEL_41;
            }
          }
        }
      }

      else
      {
      }
    }

    LOBYTE(scopedIdentifier) = 0;
LABEL_41:

    goto LABEL_42;
  }

  LOBYTE(scopedIdentifier) = 0;
LABEL_42:

  return scopedIdentifier;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = CPLPushSessionUpdate;
  coderCopy = coder;
  [(CPLChangeSessionUpdate *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_pushContexts forKey:{@"pc", v5.receiver, v5.super_class}];
  [coderCopy encodeObject:self->_diffBatch forKey:@"b"];
  [coderCopy encodeObject:self->_deletedScopeIdentifiers forKey:@"dsi"];
  [coderCopy encodeObject:self->_addedRecords forKey:@"n"];
  [coderCopy encodeObject:self->_updatedRecords forKey:@"u"];
  [coderCopy encodeObject:self->_deletedRecordScopedIdentifiers forKey:@"d"];
  [coderCopy encodeObject:self->_unquarantinedRecordScopedIdentifiers forKey:@"q"];
  [coderCopy encodeObject:self->_recordWithStatusChangesToNotify forKey:@"notify"];
  [coderCopy encodeObject:self->_revertedChanges forKey:@"reverted"];
}

- (CPLPushSessionUpdate)initWithCoder:(id)coder
{
  coderCopy = coder;
  v31.receiver = self;
  v31.super_class = CPLPushSessionUpdate;
  v5 = [(CPLChangeSessionUpdate *)&v31 initWithCoder:coderCopy];
  if (v5)
  {
    if (initWithCoder__onceToken != -1)
    {
      dispatch_once(&initWithCoder__onceToken, &__block_literal_global_3285);
    }

    v6 = [coderCopy decodeObjectOfClasses:initWithCoder__pushContextsClasses forKey:@"pc"];
    pushContexts = v5->_pushContexts;
    v5->_pushContexts = v6;

    if (!v5->_pushContexts)
    {
      v8 = [CPLRecordPushContext pushContextsFromStoredUploadIdentifiersInCoder:coderCopy key:@"ul"];
      v9 = v5->_pushContexts;
      v5->_pushContexts = v8;
    }

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"b"];
    diffBatch = v5->_diffBatch;
    v5->_diffBatch = v10;

    v12 = [coderCopy decodeObjectOfClasses:initWithCoder__deletedScopeIdentifiersClasses forKey:@"dsi"];
    deletedScopeIdentifiers = v5->_deletedScopeIdentifiers;
    v5->_deletedScopeIdentifiers = v12;

    v14 = [coderCopy decodeObjectOfClasses:initWithCoder__recordsClasses forKey:@"n"];
    addedRecords = v5->_addedRecords;
    v5->_addedRecords = v14;

    v16 = [coderCopy decodeObjectOfClasses:initWithCoder__recordsClasses forKey:@"u"];
    updatedRecords = v5->_updatedRecords;
    v5->_updatedRecords = v16;

    v18 = [coderCopy decodeObjectOfClasses:initWithCoder__deletedIdentifiersClasses forKey:@"d"];
    deletedRecordScopedIdentifiers = v5->_deletedRecordScopedIdentifiers;
    v5->_deletedRecordScopedIdentifiers = v18;

    v20 = [coderCopy decodeObjectOfClasses:initWithCoder__unquarantinedRecordIdentifiersClasses forKey:@"q"];
    unquarantinedRecordScopedIdentifiers = v5->_unquarantinedRecordScopedIdentifiers;
    v5->_unquarantinedRecordScopedIdentifiers = v20;

    v22 = [CPLScopedIdentifier scopedIdentifiersFromArrayOfUnknownIdentifiers:v5->_deletedRecordScopedIdentifiers];
    v23 = v5->_deletedRecordScopedIdentifiers;
    v5->_deletedRecordScopedIdentifiers = v22;

    v24 = [CPLScopedIdentifier scopedIdentifiersFromSetOfUnknownIdentifiers:v5->_unquarantinedRecordScopedIdentifiers];
    v25 = v5->_unquarantinedRecordScopedIdentifiers;
    v5->_unquarantinedRecordScopedIdentifiers = v24;

    v26 = [coderCopy decodeObjectOfClasses:initWithCoder__recordWithStatusChangesToNotifyClasses forKey:@"notify"];
    recordWithStatusChangesToNotify = v5->_recordWithStatusChangesToNotify;
    v5->_recordWithStatusChangesToNotify = v26;

    v28 = [coderCopy decodeObjectOfClasses:initWithCoder__recordsClasses forKey:@"reverted"];
    revertedChanges = v5->_revertedChanges;
    v5->_revertedChanges = v28;
  }

  return v5;
}

uint64_t __38__CPLPushSessionUpdate_initWithCoder___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1E695DFD8];
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = [v2 setWithObjects:{v3, v4, objc_opt_class(), 0}];
  v6 = initWithCoder__pushContextsClasses;
  initWithCoder__pushContextsClasses = v5;

  v7 = MEMORY[0x1E695DFD8];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [v7 setWithObjects:{v8, v9, objc_opt_class(), 0}];
  v11 = initWithCoder__deletedIdentifiersClasses;
  initWithCoder__deletedIdentifiersClasses = v10;

  v12 = MEMORY[0x1E695DFD8];
  v13 = objc_opt_class();
  v14 = [v12 setWithObjects:{v13, objc_opt_class(), 0}];
  v15 = initWithCoder__deletedScopeIdentifiersClasses;
  initWithCoder__deletedScopeIdentifiersClasses = v14;

  v16 = MEMORY[0x1E695DFD8];
  v17 = objc_opt_class();
  v18 = [v16 setWithObjects:{v17, objc_opt_class(), 0}];
  v19 = initWithCoder__recordsClasses;
  initWithCoder__recordsClasses = v18;

  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = [v20 setWithObjects:{v21, v22, objc_opt_class(), 0}];
  v24 = initWithCoder__unquarantinedRecordIdentifiersClasses;
  initWithCoder__unquarantinedRecordIdentifiersClasses = v23;

  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  v27 = objc_opt_class();
  v28 = [v25 setWithObjects:{v26, v27, objc_opt_class(), 0}];
  v29 = initWithCoder__recordWithStatusChangesToNotifyClasses;
  initWithCoder__recordWithStatusChangesToNotifyClasses = v28;

  return MEMORY[0x1EEE66BB8](v28, v29);
}

- (CPLPushSessionUpdate)initWithPushSessionTracker:(id)tracker error:(id *)error
{
  v68 = *MEMORY[0x1E69E9840];
  trackerCopy = tracker;
  resourcesToUpload = [trackerCopy resourcesToUpload];
  store = [trackerCopy store];
  outgoingResources = [store outgoingResources];

  v52 = trackerCopy;
  diffedBatch = [trackerCopy diffedBatch];
  v9 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(diffedBatch, "count")}];
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  obj = diffedBatch;
  v10 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
  if (v10)
  {
    v11 = v10;
    v50 = a2;
    errorCopy = error;
    v57 = 0;
    v12 = *v62;
    v54 = v9;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v62 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v61 + 1) + 8 * i);
        _pushContext = [v14 _pushContext];
        if (!_pushContext)
        {
          if ((_CPLSilentLogging & 1) == 0)
          {
            v47 = __CPLGenericOSLogDomain();
            if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v66 = v14;
              _os_log_impl(&dword_1DC05A000, v47, OS_LOG_TYPE_ERROR, "%@ should have a push context", buf, 0xCu);
            }
          }

          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          v49 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/Photos/workspaces/cloudphotolibrary/Engine/Storage/CPLChangeSessionUpdate.m"];
          [currentHandler handleFailureInMethod:v50 object:self file:v49 lineNumber:104 description:{@"%@ should have a push context", v14}];

          abort();
        }

        v16 = _pushContext;
        scopedIdentifier = [v14 scopedIdentifier];
        if ([v14 supportsResources] && objc_msgSend(v14, "hasChangeType:", 8))
        {
          v18 = [resourcesToUpload objectForKeyedSubscript:scopedIdentifier];
          if (v18)
          {
            isAssetChange = [v14 isAssetChange];
            pushContextAddingUploadIdentifier = [v16 pushContextAddingUploadIdentifier];

            [v14 _setPushContext:pushContextAddingUploadIdentifier];
            uploadIdentifier = [pushContextAddingUploadIdentifier uploadIdentifier];
            v60 = v57;
            LODWORD(isAssetChange) = [outgoingResources storeResourcesToUpload:v18 withUploadIdentifier:uploadIdentifier shouldCheckResources:isAssetChange error:&v60];
            v22 = v60;

            if (!isAssetChange)
            {

              if (errorCopy)
              {
                v23 = v22;
                v24 = 0;
                *errorCopy = v22;
              }

              else
              {
                v24 = 0;
              }

              v25 = v52;
              selfCopy = self;
              v9 = v54;
              goto LABEL_25;
            }

            v16 = pushContextAddingUploadIdentifier;
            v57 = v22;
            v9 = v54;
          }
        }

        [v9 setObject:v16 forKeyedSubscript:scopedIdentifier];
      }

      v11 = [obj countByEnumeratingWithState:&v61 objects:v67 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v57 = 0;
  }

  v25 = v52;
  store2 = [v52 store];
  v59.receiver = self;
  v59.super_class = CPLPushSessionUpdate;
  v27 = [(CPLChangeSessionUpdate *)&v59 initWithStore:store2];

  if (v27)
  {
    v28 = [v9 copy];
    pushContexts = v27->_pushContexts;
    v27->_pushContexts = v28;

    objc_storeStrong(&v27->_diffBatch, diffedBatch);
    deletedScopeIdentifiers = [v52 deletedScopeIdentifiers];
    deletedScopeIdentifiers = v27->_deletedScopeIdentifiers;
    v27->_deletedScopeIdentifiers = deletedScopeIdentifiers;

    addedRecords = [v52 addedRecords];
    addedRecords = v27->_addedRecords;
    v27->_addedRecords = addedRecords;

    updatedRecords = [v52 updatedRecords];
    updatedRecords = v27->_updatedRecords;
    v27->_updatedRecords = updatedRecords;

    deletedRecordScopedIdentifiers = [v52 deletedRecordScopedIdentifiers];
    deletedRecordScopedIdentifiers = v27->_deletedRecordScopedIdentifiers;
    v27->_deletedRecordScopedIdentifiers = deletedRecordScopedIdentifiers;

    unquarantinedRecordScopedIdentifiers = [v52 unquarantinedRecordScopedIdentifiers];
    unquarantinedRecordScopedIdentifiers = v27->_unquarantinedRecordScopedIdentifiers;
    v27->_unquarantinedRecordScopedIdentifiers = unquarantinedRecordScopedIdentifiers;

    recordWithStatusChangesToNotify = [v52 recordWithStatusChangesToNotify];
    recordWithStatusChangesToNotify = v27->_recordWithStatusChangesToNotify;
    v27->_recordWithStatusChangesToNotify = recordWithStatusChangesToNotify;

    revertedChanges = [v52 revertedChanges];
    revertedChanges = v27->_revertedChanges;
    v27->_revertedChanges = revertedChanges;

    if (![(NSArray *)v27->_revertedChanges count])
    {
      v44 = v27->_revertedChanges;
      v27->_revertedChanges = 0;
    }
  }

  selfCopy = v27;
  v24 = selfCopy;
  v22 = v57;
LABEL_25:

  return v24;
}

@end