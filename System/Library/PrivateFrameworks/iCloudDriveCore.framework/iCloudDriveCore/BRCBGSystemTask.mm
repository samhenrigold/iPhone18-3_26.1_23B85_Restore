@interface BRCBGSystemTask
- (BOOL)expireTask;
- (BRCBGSystemTask)initWithBGSystemTask:(id)task;
@end

@implementation BRCBGSystemTask

- (BRCBGSystemTask)initWithBGSystemTask:(id)task
{
  taskCopy = task;
  v9.receiver = self;
  v9.super_class = BRCBGSystemTask;
  v6 = [(BRCBGSystemTask *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_task, task);
  }

  return v7;
}

- (BOOL)expireTask
{
  v17 = *MEMORY[0x277D85DE8];
  task = self->_task;
  v10 = 0;
  v4 = [(BGSystemTask *)task setTaskExpiredWithRetryAfter:&v10 error:0.0];
  v5 = v10;
  if ((v4 & 1) == 0)
  {
    v6 = brc_bread_crumbs();
    v7 = brc_default_log();
    if (os_log_type_enabled(v7, 0x90u))
    {
      identifier = [(BGSystemTask *)self->_task identifier];
      *buf = 138412802;
      v12 = identifier;
      v13 = 2112;
      v14 = v5;
      v15 = 2112;
      v16 = v6;
      _os_log_error_impl(&dword_223E7A000, v7, 0x90u, "[ERROR] Error setting task expired %@ : %@%@", buf, 0x20u);
    }
  }

  return v4;
}

@end