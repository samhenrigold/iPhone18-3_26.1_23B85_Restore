@interface HDInsertSynchronisedAttachmentReferences
- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error;
- (HDInsertSynchronisedAttachmentReferences)initWithAttachmentReferences:(id)references;
- (HDInsertSynchronisedAttachmentReferences)initWithCoder:(id)coder;
@end

@implementation HDInsertSynchronisedAttachmentReferences

- (HDInsertSynchronisedAttachmentReferences)initWithAttachmentReferences:(id)references
{
  referencesCopy = references;
  v9.receiver = self;
  v9.super_class = HDInsertSynchronisedAttachmentReferences;
  v5 = [(HDInsertSynchronisedAttachmentReferences *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(referencesCopy);
    attachmentReferences = v5->_attachmentReferences;
    v5->_attachmentReferences = v6;
  }

  return v5;
}

- (BOOL)performWithProfile:(id)profile transaction:(id)transaction error:(id *)error
{
  v43 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  obj = self->_attachmentReferences;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v42 count:16];
  if (!v8)
  {
    v17 = 1;
    goto LABEL_28;
  }

  v9 = v8;
  selfCopy = self;
  errorCopy = error;
  v10 = *v32;
  while (2)
  {
    error = 0;
    do
    {
      if (*v32 != v10)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v31 + 1) + 8 * error);
      v30 = 0;
      v12 = [HDAttachmentReferenceEntity _insertIfDoesNotExistReference:v11 transaction:transactionCopy error:&v30];
      v13 = v30;

      if (!v12)
      {
        _HKInitializeLogging();
        v18 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v37 = selfCopy;
          v38 = 2114;
          v39 = v11;
          v40 = 2114;
          v41 = v13;
          _os_log_error_impl(&dword_228986000, v18, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to ingest reference %{public}@, %{public}@", buf, 0x20u);
        }

        v19 = v13;
        v13 = v19;
        if (v19)
        {
          if (errorCopy)
          {
            v20 = v19;
            LOBYTE(error) = 0;
            *errorCopy = v13;
          }

          else
          {
            _HKLogDroppedError();
            LOBYTE(error) = 0;
          }

          v23 = v13;
        }

        else
        {
          v23 = 0;
          LOBYTE(error) = 1;
        }

        goto LABEL_27;
      }

      v35 = v11;
      v14 = [MEMORY[0x277CBEA60] arrayWithObjects:&v35 count:1];
      v29 = 0;
      v15 = [HDAttachmentReferenceEntity setCloudStatus:1 references:v14 transaction:transactionCopy error:&v29];
      v16 = v29;

      if (!v15)
      {
        _HKInitializeLogging();
        v21 = *MEMORY[0x277CCC328];
        if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v37 = selfCopy;
          v38 = 2114;
          v39 = v11;
          v40 = 2114;
          v41 = v16;
          _os_log_error_impl(&dword_228986000, v21, OS_LOG_TYPE_ERROR, "[attachments] %{public}@: Failed to update cloud status to synchronized for reference %{public}@, %{public}@", buf, 0x20u);
        }

        v22 = v16;
        v23 = v22;
        LOBYTE(error) = v22 == 0;
        if (v22)
        {
          if (errorCopy)
          {
            v24 = v22;
            *errorCopy = v23;
          }

          else
          {
            _HKLogDroppedError();
          }
        }

LABEL_27:
        v17 = 0;
        goto LABEL_28;
      }

      error = (error + 1);
    }

    while (v9 != error);
    v9 = [(NSArray *)obj countByEnumeratingWithState:&v31 objects:v42 count:16];
    v17 = 1;
    if (v9)
    {
      continue;
    }

    break;
  }

LABEL_28:

  return (v17 | error) & 1;
}

- (HDInsertSynchronisedAttachmentReferences)initWithCoder:(id)coder
{
  v11[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CBEB98];
  coderCopy = coder;
  v11[0] = objc_opt_class();
  v11[1] = objc_opt_class();
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:2];
  v7 = [v4 setWithArray:v6];
  v8 = [coderCopy decodeObjectOfClasses:v7 forKey:@"attachment_references"];

  v9 = [(HDInsertSynchronisedAttachmentReferences *)self initWithAttachmentReferences:v8];
  return v9;
}

@end