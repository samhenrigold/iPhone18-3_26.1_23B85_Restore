@interface BRCDatabaseRestoreManager
- (BRCDatabaseRestoreManager)initWithUserURL:(id)l;
- (void)restoreWithCompletionBlock:(id)block;
@end

@implementation BRCDatabaseRestoreManager

- (BRCDatabaseRestoreManager)initWithUserURL:(id)l
{
  v19 = *MEMORY[0x277D85DE8];
  lCopy = l;
  v14.receiver = self;
  v14.super_class = BRCDatabaseRestoreManager;
  v6 = [(BRCDatabaseRestoreManager *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_userURL, l);
    v8 = [(NSURL *)v7->_userURL URLByAppendingPathComponent:@"Library/Application Support/CloudDocs/session/db/client.db"];
    clientDatabaseURL = v7->_clientDatabaseURL;
    v7->_clientDatabaseURL = v8;

    v10 = brc_bread_crumbs();
    v11 = brc_default_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      path = [(NSURL *)v7->_clientDatabaseURL path];
      *buf = 138412546;
      v16 = path;
      v17 = 2112;
      v18 = v10;
      _os_log_impl(&dword_223E7A000, v11, OS_LOG_TYPE_INFO, "[INFO] Initializing restore manager with %@%@", buf, 0x16u);
    }
  }

  return v7;
}

- (void)restoreWithCompletionBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  v5 = [[BRCDatabaseBackupManager alloc] initWithUserURL:self->_userURL outputUserURL:self->_userURL];
  databaseURL = [(BRCDatabaseBackupManager *)v5 databaseURL];
  v7 = [[BRCDatabaseBackupStorage alloc] initWithDatabaseURL:databaseURL];
  path = [(NSURL *)self->_userURL path];
  [(BRCDatabaseBackupStorage *)v7 populateNewColumnsWithBasePath:path];
  clientDatabaseURL = self->_clientDatabaseURL;
  v23 = 0;
  v10 = [(BRCDatabaseBackupStorage *)v7 attachDatabase:clientDatabaseURL error:&v23];
  v11 = v23;
  if (v10)
  {
    if ([(BRCDatabaseBackupStorage *)v7 updateAttachedDatabase])
    {
      v12 = [(NSURL *)self->_userURL URLByAppendingPathComponent:@"Library/Application Support/CloudDocs/" isDirectory:1];
      v22 = v11;
      v13 = BRCRecursivelyChangeOwnerAndGroupToMobile(v12, &v22);
      v14 = v22;

      if (v13)
      {

        [(BRCDatabaseBackupManager *)v5 cleanOnDisk];
        v15 = brc_bread_crumbs();
        v16 = brc_default_log();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v25 = v15;
          _os_log_impl(&dword_223E7A000, v16, OS_LOG_TYPE_INFO, "[INFO] Calling completion block with success.%@", buf, 0xCu);
        }

        blockCopy[2](blockCopy, 1, 0);
        v7 = 0;
      }

      else
      {
        (blockCopy)[2](blockCopy, 0, v14);
      }

      v11 = v14;
    }

    else
    {
      v19 = brc_bread_crumbs();
      v20 = brc_default_log();
      if (os_log_type_enabled(v20, 0x90u))
      {
        [(BRCDatabaseRestoreManager *)v7 restoreWithCompletionBlock:v19, v20];
      }

      blockCopy[2](blockCopy, 0, 0);
    }
  }

  else
  {
    v17 = brc_bread_crumbs();
    v18 = brc_default_log();
    if (os_log_type_enabled(v18, 0x90u))
    {
      path2 = [(NSURL *)self->_clientDatabaseURL path];
      *buf = 138412802;
      v25 = path2;
      v26 = 2112;
      v27 = v11;
      v28 = 2112;
      v29 = v17;
      _os_log_error_impl(&dword_223E7A000, v18, 0x90u, "[ERROR] Unable to attach db %@: %@%@", buf, 0x20u);
    }

    (blockCopy)[2](blockCopy, 0, v11);
  }
}

- (void)restoreWithCompletionBlock:(os_log_t)log .cold.1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = a2;
  _os_log_error_impl(&dword_223E7A000, log, 0x90u, "[ERROR] Failed to update attached database %@%@", &v3, 0x16u);
}

@end