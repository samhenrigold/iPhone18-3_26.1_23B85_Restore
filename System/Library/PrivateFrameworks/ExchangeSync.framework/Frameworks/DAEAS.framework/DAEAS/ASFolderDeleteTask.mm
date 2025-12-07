@interface ASFolderDeleteTask
- (ASFolderDeleteTask)initWithFolder:(id)folder previousSyncKey:(id)key completionBlock:(id)block;
- (int64_t)taskStatusForExchangeStatus:(int)status;
- (void)_appendRequestBodyFolderDataToWBXMLData:(id)data;
@end

@implementation ASFolderDeleteTask

- (ASFolderDeleteTask)initWithFolder:(id)folder previousSyncKey:(id)key completionBlock:(id)block
{
  v6.receiver = self;
  v6.super_class = ASFolderDeleteTask;
  result = [(ASFolderLocalUpdateTask *)&v6 initWithFolder:folder previousSyncKey:key completionBlock:block];
  if (result)
  {
    result->super._requestType = 20;
    result->super._commandCode = 11;
  }

  return result;
}

- (void)_appendRequestBodyFolderDataToWBXMLData:(id)data
{
  folder = self->super._folder;
  dataCopy = data;
  serverID = [(ASFolder *)folder serverID];
  [dataCopy appendTag:8 withStringContent:serverID];
}

- (int64_t)taskStatusForExchangeStatus:(int)status
{
  v13 = *MEMORY[0x277D85DE8];
  if (status < 0xC && ((0xFDBu >> status) & 1) != 0)
  {
    return qword_24A14DEC8[status];
  }

  v5 = DALoggingwithCategory();
  v6 = *(MEMORY[0x277D03988] + 3);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = 138412546;
    v10 = v8;
    v11 = 1024;
    statusCopy = status;
    _os_log_impl(&dword_24A0AC000, v5, v6, "%@: Unknown status code (%d)", &v9, 0x12u);
  }

  return 10;
}

@end