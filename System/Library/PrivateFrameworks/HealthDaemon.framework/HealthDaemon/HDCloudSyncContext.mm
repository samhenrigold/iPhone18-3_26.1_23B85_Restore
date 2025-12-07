@interface HDCloudSyncContext
+ (id)contextForFastPush;
- (BOOL)isEquivalent:(id)equivalent;
- (HDCloudSyncContext)init;
- (id)description;
- (id)initForPurpose:(int64_t)purpose options:(unint64_t)options reason:(int64_t)reason backgroundTask:(id)task;
- (id)subContextByAddingOptions:(unint64_t)options;
- (id)subContextByRemovingOptions:(unint64_t)options;
@end

@implementation HDCloudSyncContext

- (HDCloudSyncContext)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)initForPurpose:(int64_t)purpose options:(unint64_t)options reason:(int64_t)reason backgroundTask:(id)task
{
  taskCopy = task;
  v19.receiver = self;
  v19.super_class = HDCloudSyncContext;
  v12 = [(HDCloudSyncContext *)&v19 init];
  if (v12)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    identifier = v12->_identifier;
    v12->_identifier = uUID;

    uUIDString = [(NSUUID *)v12->_identifier UUIDString];
    v16 = [uUIDString substringToIndex:4];
    shortIdentifier = v12->_shortIdentifier;
    v12->_shortIdentifier = v16;

    v12->_purpose = purpose;
    v12->_options = options;
    v12->_reason = reason;
    objc_storeStrong(&v12->_backgroundTask, task);
  }

  return v12;
}

+ (id)contextForFastPush
{
  v2 = objc_alloc(MEMORY[0x277CCD140]);
  v3 = [objc_alloc(MEMORY[0x277CCD0C8]) initWithPush:1 pull:0 lite:1];
  v4 = [v2 initWithChangesSyncRequest:v3];

  v5 = [[HDCloudSyncContext alloc] initForPurpose:0 options:128 reason:32];
  [v5 setSyncRequest:v4];

  return v5;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = HKCloudSyncOptionsToString();
  syncRequest = [(HDCloudSyncContext *)self syncRequest];
  v6 = [v3 stringWithFormat:@"Options: %@, \n Request: %@", v4, syncRequest];

  backgroundTask = self->_backgroundTask;
  v8 = MEMORY[0x277CCACA8];
  shortIdentifier = self->_shortIdentifier;
  v10 = HKCloudSyncReasonToString();
  v11 = v10;
  if (backgroundTask)
  {
    identifier = [(HDBackgroundSystemTask *)self->_backgroundTask identifier];
    v13 = [v8 stringWithFormat:@"<%@ %@ (%@) %@>", shortIdentifier, v11, v6, identifier];
  }

  else
  {
    v13 = [v8 stringWithFormat:@"<%@ %@ (%@)>", shortIdentifier, v10, v6];
  }

  return v13;
}

- (id)subContextByAddingOptions:(unint64_t)options
{
  v4 = [objc_alloc(objc_opt_class()) initForPurpose:self->_purpose options:self->_options | options reason:self->_reason backgroundTask:self->_backgroundTask];
  v5 = objc_msgSend_copy(self->_identifier);
  v6 = v4[1];
  v4[1] = v5;

  v7 = objc_msgSend_copy(self->_shortIdentifier);
  v8 = v4[2];
  v4[2] = v7;

  v9 = objc_msgSend_copy(self->_unitTest_syncDateOverride);
  v10 = v4[8];
  v4[8] = v9;

  v11 = objc_msgSend_copy(self->_syncRequest);
  v12 = v4[6];
  v4[6] = v11;

  return v4;
}

- (id)subContextByRemovingOptions:(unint64_t)options
{
  v4 = [objc_alloc(objc_opt_class()) initForPurpose:self->_purpose options:self->_options & ~options reason:self->_reason backgroundTask:self->_backgroundTask];
  v5 = objc_msgSend_copy(self->_identifier);
  v6 = v4[1];
  v4[1] = v5;

  v7 = objc_msgSend_copy(self->_shortIdentifier);
  v8 = v4[2];
  v4[2] = v7;

  v9 = objc_msgSend_copy(self->_unitTest_syncDateOverride);
  v10 = v4[8];
  v4[8] = v9;

  v11 = objc_msgSend_copy(self->_syncRequest);
  v12 = v4[6];
  v4[6] = v11;

  return v4;
}

- (BOOL)isEquivalent:(id)equivalent
{
  equivalentCopy = equivalent;
  v5 = equivalentCopy;
  if (*&self->_purpose == *(equivalentCopy + 24) && self->_reason == *(equivalentCopy + 5) && self->_backgroundTask == *(equivalentCopy + 7))
  {
    syncRequest = self->_syncRequest;
    if (syncRequest)
    {
      v6 = [(HKCloudSyncRequest *)syncRequest isEquivalent:v5[6]];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end