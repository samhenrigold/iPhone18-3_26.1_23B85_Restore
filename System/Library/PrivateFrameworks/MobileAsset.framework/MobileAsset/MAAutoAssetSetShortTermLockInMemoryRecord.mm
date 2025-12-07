@interface MAAutoAssetSetShortTermLockInMemoryRecord
- (BOOL)isCurrentlyValid;
- (MAAutoAssetSetShortTermLockInMemoryRecord)initWithPathAndSetStatus:(id)status setStatus:(id)setStatus;
- (id)summary;
@end

@implementation MAAutoAssetSetShortTermLockInMemoryRecord

- (BOOL)isCurrentlyValid
{
  v22 = *MEMORY[0x1E69E9840];
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  lockerFileRealPath = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self lockerFileRealPath];
  v17 = 0;
  v5 = [defaultManager attributesOfItemAtPath:lockerFileRealPath error:&v17];
  v6 = v17;

  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      summary = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self summary];
      *buf = 138412546;
      v19 = summary;
      v20 = 2114;
      v21 = v6;
      v10 = "[MAAutoAssetSetShortTermLockInMemoryRecord]: Failed to read lockFileAttributes for %@ Error:%{public}@";
      v11 = v8;
      v12 = 22;
LABEL_11:
      _os_log_impl(&dword_197AD5000, v11, OS_LOG_TYPE_ERROR, v10, buf, v12);

      goto LABEL_12;
    }

    goto LABEL_12;
  }

  v13 = [v5 objectForKey:*MEMORY[0x1E696A350]];
  if (!v13)
  {
    v8 = _MAClientLog(@"Auto");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      summary = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self summary];
      *buf = 138543362;
      v19 = summary;
      v10 = "[MAAutoAssetSetShortTermLockInMemoryRecord]: Unable to determine modification date for lock file tracked by %{public}@";
      v11 = v8;
      v12 = 12;
      goto LABEL_11;
    }

LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  v8 = v13;
  recordDate = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self recordDate];
  v15 = [v8 compare:recordDate]== -1;

LABEL_13:
  return v15;
}

- (MAAutoAssetSetShortTermLockInMemoryRecord)initWithPathAndSetStatus:(id)status setStatus:(id)setStatus
{
  statusCopy = status;
  setStatusCopy = setStatus;
  v14.receiver = self;
  v14.super_class = MAAutoAssetSetShortTermLockInMemoryRecord;
  v9 = [(MAAutoAssetSetShortTermLockInMemoryRecord *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_lockerFileRealPath, status);
    objc_storeStrong(&v10->_setStatus, setStatus);
    date = [MEMORY[0x1E695DF00] date];
    recordDate = v10->_recordDate;
    v10->_recordDate = date;
  }

  return v10;
}

- (id)summary
{
  v3 = MEMORY[0x1E696AEC0];
  lockerFileRealPath = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self lockerFileRealPath];
  recordDate = [(MAAutoAssetSetShortTermLockInMemoryRecord *)self recordDate];
  v6 = [recordDate description];
  v7 = [v3 stringWithFormat:@"LockerFilePath: %@ RecordCreatedDate: %@", lockerFileRealPath, v6];

  return v7;
}

@end