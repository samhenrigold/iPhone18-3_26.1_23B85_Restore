@interface HDDeleteAttachmentReferenceOperation
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDDeleteAttachmentReferenceOperation)initWithCoder:(id)coder;
- (void)_initWithReferences:(uint64_t)references cloudStatus:;
- (void)encodeWithCoder:(id)coder;
@end

@implementation HDDeleteAttachmentReferenceOperation

- (void)_initWithReferences:(uint64_t)references cloudStatus:
{
  v5 = a2;
  if (self)
  {
    v9.receiver = self;
    v9.super_class = HDDeleteAttachmentReferenceOperation;
    self = objc_msgSendSuper2(&v9, sel_init);
    if (self)
    {
      v6 = objc_msgSend_copy(v5);
      v7 = self[2];
      self[2] = v6;

      self[3] = references;
    }
  }

  return self;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v82 = *MEMORY[0x277D85DE8];
  profileCopy = profile;
  transactionCopy = transaction;
  LOBYTE(database) = 16;
  if ([(NSArray *)self->_references count])
  {
    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    selfCopy = self;
    references = self->_references;
    v71[0] = MEMORY[0x277D85DD0];
    v71[1] = 3221225472;
    v71[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke;
    v71[3] = &unk_27861B210;
    v51 = v10;
    v72 = v51;
    if (+[HDAttachmentReferenceEntity filteredNonTombstoneReferences:transaction:error:enumerationHandler:](HDAttachmentReferenceEntity, "filteredNonTombstoneReferences:transaction:error:enumerationHandler:", references, transactionCopy, error, v71) && (![v51 count] || +[HDAttachmentReferenceEntity deleteReferences:cloudStatus:transaction:error:](HDAttachmentReferenceEntity, "deleteReferences:cloudStatus:transaction:error:", v51, selfCopy->_cloudStatus, transactionCopy, error)))
    {
      v12 = [v51 hk_map:&__block_literal_global_234];
      v13 = selfCopy->_references;
      v69[0] = MEMORY[0x277D85DD0];
      v69[1] = 3221225472;
      v69[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_3;
      v69[3] = &unk_278621E60;
      v44 = v12;
      v70 = v44;
      v45 = [(NSArray *)v13 hk_filter:v69];
      if ([v45 count] && !+[HDAttachmentReferenceEntity insertTombstones:cloudStatus:transaction:error:](HDAttachmentReferenceEntity, "insertTombstones:cloudStatus:transaction:error:", v45, selfCopy->_cloudStatus, transactionCopy, error))
      {
        v38 = 0;
      }

      else
      {
        v14 = [v51 hk_mapToSet:&__block_literal_global_297_0];
        v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v16 = objc_alloc_init(MEMORY[0x277CCAA00]);
        v64[0] = MEMORY[0x277D85DD0];
        v64[1] = 3221225472;
        v64[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_5;
        v64[3] = &unk_278616D68;
        v47 = v15;
        v65 = v47;
        v17 = profileCopy;
        v66 = v17;
        v46 = v16;
        v67 = v46;
        v68 = selfCopy;
        [transactionCopy onCommit:v64 orRollback:0];
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        obj = v14;
        v52 = [obj countByEnumeratingWithState:&v60 objects:v81 count:16];
        if (v52)
        {
          v50 = *v61;
          while (2)
          {
            for (i = 0; i != v52; ++i)
            {
              if (*v61 != v50)
              {
                objc_enumerationMutation(obj);
              }

              v19 = *(*(&v60 + 1) + 8 * i);
              v56 = 0;
              v57 = &v56;
              v58 = 0x2020000000;
              v59 = 0;
              v55[0] = MEMORY[0x277D85DD0];
              v55[1] = 3221225472;
              v55[2] = __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_300;
              v55[3] = &unk_278621878;
              v55[4] = &v56;
              if (![HDAttachmentReferenceEntity enumerateReferencesForAttachmentIdentifier:v19 type:0 transaction:transactionCopy error:error enumerationHandler:v55])
              {
LABEL_30:
                LOBYTE(database) = 0;
LABEL_31:
                _Block_object_dispose(&v56, 8);
                v37 = 0;
                goto LABEL_34;
              }

              if ((v57[3] & 1) == 0)
              {
                _HKInitializeLogging();
                v20 = *MEMORY[0x277CCC280];
                if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
                {
                  uUIDString = [v19 UUIDString];
                  *buf = 138543618;
                  v74 = selfCopy;
                  v75 = 2114;
                  v76 = uUIDString;
                  _os_log_impl(&dword_228986000, v20, OS_LOG_TYPE_DEFAULT, "[database] %{public}@: No references remaining. Deleting attachment with identifier %{public}@", buf, 0x16u);
                }

                [v47 addObject:v19];
                attachmentManager = [v17 attachmentManager];
                unconfirmedFilesDirectoryURL = [attachmentManager unconfirmedFilesDirectoryURL];
                uUIDString2 = [v19 UUIDString];
                v25 = [unconfirmedFilesDirectoryURL URLByAppendingPathComponent:uUIDString2];

                attachmentManager2 = [v17 attachmentManager];
                filesDirectoryURL = [attachmentManager2 filesDirectoryURL];
                uUIDString3 = [v19 UUIDString];
                v29 = [filesDirectoryURL URLByAppendingPathComponent:uUIDString3];

                v54 = 0;
                LOBYTE(attachmentManager2) = [v46 moveItemAtURL:v29 toURL:v25 error:&v54];
                v30 = v54;
                if ((attachmentManager2 & 1) == 0)
                {
                  _HKInitializeLogging();
                  v31 = *MEMORY[0x277CCC280];
                  if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
                  {
                    path = [v29 path];
                    path2 = [v25 path];
                    *buf = 138544130;
                    v74 = selfCopy;
                    v75 = 2114;
                    v76 = path;
                    v77 = 2114;
                    v78 = path2;
                    v79 = 2114;
                    v80 = v30;
                    v43 = path2;
                    _os_log_error_impl(&dword_228986000, v31, OS_LOG_TYPE_ERROR, "[database] %{public}@: Failed to move file from %{public}@ -> %{public}@ directory with error %{public}@", buf, 0x2Au);
                  }

                  if ([v30 hk_isCocoaNoSuchFileError])
                  {
                    _HKInitializeLogging();
                    v32 = *MEMORY[0x277CCC280];
                    if (os_log_type_enabled(*MEMORY[0x277CCC280], OS_LOG_TYPE_FAULT))
                    {
                      *buf = 138543618;
                      v74 = selfCopy;
                      v75 = 2114;
                      v76 = v19;
                      _os_log_fault_impl(&dword_228986000, v32, OS_LOG_TYPE_FAULT, "[database] %{public}@: No such file error for attachment %{public}@", buf, 0x16u);
                    }
                  }

                  if (([v30 hk_isCocoaNoSuchFileError] & 1) == 0 && (objc_msgSend(v30, "hk_isCocoaFileExistsError") & 1) == 0)
                  {
                    v40 = v30;
                    v41 = v40;
                    LOBYTE(database) = v40 == 0;
                    if (v40)
                    {
                      if (error)
                      {
                        v42 = v40;
                        *error = v41;
                      }

                      else
                      {
                        _HKLogDroppedError();
                      }
                    }

                    goto LABEL_31;
                  }
                }

                v33 = HDAttachmentPredicateForAttachmentIdentifier(v19);
                database = [v17 database];
                v34 = [(HDHealthEntity *)HDAttachmentEntity deleteEntitiesWithPredicate:v33 healthDatabase:database error:error];

                if (!v34)
                {
                  goto LABEL_30;
                }
              }

              _Block_object_dispose(&v56, 8);
            }

            v52 = [obj countByEnumeratingWithState:&v60 objects:v81 count:16];
            v37 = 1;
            if (v52)
            {
              continue;
            }

            break;
          }
        }

        else
        {
          v37 = 1;
        }

LABEL_34:

        v38 = v37 | database;
      }
    }

    else
    {
      v38 = 0;
    }
  }

  else
  {
    v38 = 1;
  }

  return v38 & 1;
}

uint64_t __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  LODWORD(v2) = [v2 containsObject:v3];

  return v2 ^ 1;
}

void __77__HDDeleteAttachmentReferenceOperation_performWithProfile_transaction_error___block_invoke_5(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v23;
    v7 = MEMORY[0x277CCC280];
    *&v4 = 138543874;
    v20 = v4;
    do
    {
      v8 = 0;
      do
      {
        if (*v23 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v9 = *(*(&v22 + 1) + 8 * v8);
        v10 = [*(a1 + 40) attachmentManager];
        v11 = [v10 unconfirmedFilesDirectoryURL];
        v12 = [v9 UUIDString];
        v13 = [v11 URLByAppendingPathComponent:v12];

        v14 = *(a1 + 48);
        v21 = 0;
        LOBYTE(v11) = [v14 removeItemAtURL:v13 error:&v21];
        v15 = v21;
        if ((v11 & 1) == 0)
        {
          _HKInitializeLogging();
          v16 = *v7;
          if (os_log_type_enabled(*v7, OS_LOG_TYPE_ERROR))
          {
            v17 = *(a1 + 56);
            v18 = v16;
            v19 = [v13 path];
            *buf = v20;
            v27 = v17;
            v7 = MEMORY[0x277CCC280];
            v28 = 2114;
            v29 = v19;
            v30 = 2114;
            v31 = v15;
            _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[database] %{public}@: Failed to delete file from path %{public}@ with error %{public}@", buf, 0x20u);
          }
        }

        ++v8;
      }

      while (v5 != v8);
      v5 = [v2 countByEnumeratingWithState:&v22 objects:v32 count:16];
    }

    while (v5);
  }
}

- (HDDeleteAttachmentReferenceOperation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"delete_attachment_references"];
  v6 = [coderCopy decodeIntegerForKey:@"cloud_status"];

  if (v6)
  {
    v7 = [(HDDeleteAttachmentReferenceOperation *)self initWithSynchronizedReferences:v5];
  }

  else
  {
    v7 = [(HDDeleteAttachmentReferenceOperation *)self initWithReferences:v5];
  }

  v8 = v7;

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  v5.receiver = self;
  v5.super_class = HDDeleteAttachmentReferenceOperation;
  coderCopy = coder;
  [(HDJournalableOperation *)&v5 encodeWithCoder:coderCopy];
  [coderCopy encodeObject:self->_references forKey:{@"delete_attachment_references", v5.receiver, v5.super_class}];
  [coderCopy encodeInteger:self->_cloudStatus forKey:@"cloud_status"];
}

@end