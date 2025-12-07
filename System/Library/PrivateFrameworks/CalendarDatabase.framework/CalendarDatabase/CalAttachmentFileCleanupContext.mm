@interface CalAttachmentFileCleanupContext
- (CalAttachmentFileCleanupContext)initWithExternalID:(id)d storeUUID:(id)iD database:(CalDatabase *)database;
- (CalAttachmentFileCleanupContext)initWithStore:(void *)store;
- (id)description;
- (void)addAttachmentToDelete:(id)delete;
- (void)cleanup;
- (void)markStoreAsDeleted;
@end

@implementation CalAttachmentFileCleanupContext

- (CalAttachmentFileCleanupContext)initWithStore:(void *)store
{
  v9.receiver = self;
  v9.super_class = CalAttachmentFileCleanupContext;
  v4 = [(CalAttachmentFileCleanupContext *)&v9 init];
  if (v4)
  {
    v5 = CalCopyDatabaseForRecord(store);
    v6 = _CalAttachmentFileCopyAttachmentContainerForStore(store, v5);
    storeAttachmentContainer = v4->_storeAttachmentContainer;
    v4->_storeAttachmentContainer = v6;

    if (v5)
    {
      CFRelease(v5);
    }
  }

  return v4;
}

- (CalAttachmentFileCleanupContext)initWithExternalID:(id)d storeUUID:(id)iD database:(CalDatabase *)database
{
  dCopy = d;
  iDCopy = iD;
  v14.receiver = self;
  v14.super_class = CalAttachmentFileCleanupContext;
  v10 = [(CalAttachmentFileCleanupContext *)&v14 init];
  if (v10)
  {
    v11 = _CalAttachmentFileCopyAttachmentContainerForStoreProperties(dCopy, iDCopy, database);
    storeAttachmentContainer = v10->_storeAttachmentContainer;
    v10->_storeAttachmentContainer = v11;
  }

  return v10;
}

- (void)addAttachmentToDelete:(id)delete
{
  deleteCopy = delete;
  v5 = deleteCopy;
  if (!self->_deleteEntireContainer)
  {
    attachmentUUIDsToDelete = self->_attachmentUUIDsToDelete;
    v9 = v5;
    if (!attachmentUUIDsToDelete)
    {
      v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v8 = self->_attachmentUUIDsToDelete;
      self->_attachmentUUIDsToDelete = v7;

      attachmentUUIDsToDelete = self->_attachmentUUIDsToDelete;
    }

    deleteCopy = [(NSMutableArray *)attachmentUUIDsToDelete addObject:v9];
    v5 = v9;
  }

  MEMORY[0x1EEE66BB8](deleteCopy, v5);
}

- (void)markStoreAsDeleted
{
  self->_deleteEntireContainer = 1;
  attachmentUUIDsToDelete = self->_attachmentUUIDsToDelete;
  self->_attachmentUUIDsToDelete = 0;
  MEMORY[0x1EEE66BB8](self, attachmentUUIDsToDelete);
}

- (void)cleanup
{
  v40 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v4 = defaultManager;
  if (!self->_deleteEntireContainer)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    obj = self->_attachmentUUIDsToDelete;
    v13 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
    if (!v13)
    {
      goto LABEL_22;
    }

    v15 = v13;
    v16 = *v31;
    *&v14 = 138412546;
    v27 = v14;
LABEL_7:
    v17 = 0;
    while (1)
    {
      if (*v31 != v16)
      {
        objc_enumerationMutation(obj);
      }

      v18 = [(NSURL *)self->_storeAttachmentContainer URLByAppendingPathComponent:*(*(&v30 + 1) + 8 * v17), v27];
      v29 = 0;
      v19 = [v4 removeItemAtURL:v18 error:&v29];
      v20 = v29;
      v21 = CDBLogHandle;
      if (v19)
      {
        if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v37 = v18;
          v22 = v21;
          v23 = OS_LOG_TYPE_DEFAULT;
          v24 = "Deleted attachment at path %@";
          v25 = 12;
LABEL_15:
          _os_log_impl(&dword_1DEBB1000, v22, v23, v24, buf, v25);
        }
      }

      else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
      {
        *buf = v27;
        v37 = v18;
        v38 = 2112;
        v39 = v20;
        v22 = v21;
        v23 = OS_LOG_TYPE_ERROR;
        v24 = "Failed to delete attachment at path %@: %@";
        v25 = 22;
        goto LABEL_15;
      }

      if (v15 == ++v17)
      {
        v15 = [(NSMutableArray *)obj countByEnumeratingWithState:&v30 objects:v35 count:16];
        if (!v15)
        {
          goto LABEL_22;
        }

        goto LABEL_7;
      }
    }
  }

  storeAttachmentContainer = self->_storeAttachmentContainer;
  v34 = 0;
  v6 = [defaultManager removeItemAtURL:storeAttachmentContainer error:&v34];
  obj = v34;
  v7 = CDBLogHandle;
  if (v6)
  {
    if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_DEFAULT))
    {
      v8 = self->_storeAttachmentContainer;
      *buf = 138412290;
      v37 = v8;
      v9 = "Deleted attachments for deleted store at path %@";
      v10 = v7;
      v11 = OS_LOG_TYPE_DEFAULT;
      v12 = 12;
LABEL_21:
      _os_log_impl(&dword_1DEBB1000, v10, v11, v9, buf, v12);
    }
  }

  else if (os_log_type_enabled(CDBLogHandle, OS_LOG_TYPE_ERROR))
  {
    v26 = self->_storeAttachmentContainer;
    *buf = 138412546;
    v37 = v26;
    v38 = 2112;
    v39 = obj;
    v9 = "Failed to delete attachments for deleted store at path %@: %@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_21;
  }

LABEL_22:
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = CalAttachmentFileCleanupContext;
  v4 = [(CalAttachmentFileCleanupContext *)&v9 description];
  storeAttachmentContainer = self->_storeAttachmentContainer;
  v6 = [MEMORY[0x1E696AD98] numberWithBool:self->_deleteEntireContainer];
  v7 = [v3 stringWithFormat:@"[%@], _storeAttachmentContainer: [%@], _deleteEntireContainer: [%@], _attachmentUUIDsToDelete: [%@]", v4, storeAttachmentContainer, v6, self->_attachmentUUIDsToDelete];

  return v7;
}

@end