@interface PFCloudKitArchivingUtilities
- (id)encodeRecord:(void *)record error:;
- (id)newArchivedDataForSystemFieldsOfRecord:(uint64_t)record;
- (id)recordFromEncodedData:(void *)data error:;
- (void)shareFromEncodedData:(char *)data inZoneWithID:(void *)d error:;
@end

@implementation PFCloudKitArchivingUtilities

- (id)newArchivedDataForSystemFieldsOfRecord:(uint64_t)record
{
  if (!record)
  {
    return 0;
  }

  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  [a2 encodeSystemFieldsWithCoder:v3];
  encodedData = [v3 encodedData];
  [v3 finishEncoding];

  return encodedData;
}

- (id)encodeRecord:(void *)record error:
{
  v19 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v14 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:a2 requiringSecureCoding:1 error:&v14];
  if (!v6 || (v7 = [v6 compressedDataUsingAlgorithm:0 error:&v14]) == 0)
  {
    v9 = v14;
    objc_autoreleasePoolPop(v5);
    v10 = v14;
    if (v10)
    {
      if (record)
      {
        v8 = 0;
        *record = v10;
        goto LABEL_13;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitArchivingUtilities.m";
        v17 = 1024;
        v18 = 55;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v12 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v16 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitArchivingUtilities.m";
        v17 = 1024;
        v18 = 55;
        _os_log_fault_impl(&dword_18565F000, v12, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v8 = 0;
    goto LABEL_13;
  }

  v8 = v7;
  objc_autoreleasePoolPop(v5);
LABEL_13:

  return v8;
}

- (id)recordFromEncodedData:(void *)data error:
{
  v21 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v16 = 0;
  v5 = objc_autoreleasePoolPush();
  v6 = [a2 decompressedDataUsingAlgorithm:0 error:&v16];
  if (!v6 || (v7 = v6, v8 = MEMORY[0x1E696ACD0], getCloudKitCKRecordClass[0](), (v9 = [v8 unarchivedObjectOfClass:objc_opt_class() fromData:v7 error:&v16]) == 0))
  {
    v11 = v16;
    objc_autoreleasePoolPop(v5);
    v12 = v16;
    if (v12)
    {
      if (data)
      {
        v10 = 0;
        *data = v12;
        goto LABEL_13;
      }
    }

    else
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitArchivingUtilities.m";
        v19 = 1024;
        v20 = 81;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
      }

      v14 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v18 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitArchivingUtilities.m";
        v19 = 1024;
        v20 = 81;
        _os_log_fault_impl(&dword_18565F000, v14, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
      }
    }

    v10 = 0;
    goto LABEL_13;
  }

  v10 = v9;
  objc_autoreleasePoolPop(v5);
LABEL_13:

  return v10;
}

- (void)shareFromEncodedData:(char *)data inZoneWithID:(void *)d error:
{
  v35 = *MEMORY[0x1E69E9840];
  if (!self)
  {
    return 0;
  }

  v4 = a2;
  v26 = 0;
  if (a2)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [v4 decompressedDataUsingAlgorithm:0 error:&v26];
    if (!v9 || (v10 = v9, v11 = MEMORY[0x1E696ACD0], v12 = MEMORY[0x1E695DFD8], getCloudKitCKShareClass(), (v13 = [v11 _strictlyUnarchivedObjectOfClasses:objc_msgSend(v12 fromData:"setWithObject:" error:{objc_opt_class()), v10, &v26}]) == 0))
    {
      v19 = v26;
      objc_autoreleasePoolPop(v8);
      v18 = v26;
      goto LABEL_12;
    }

    v4 = v13;
    objc_autoreleasePoolPop(v8);
    if (([data isEqual:{objc_msgSend(objc_msgSend(v4, "recordID"), "zoneID")}] & 1) == 0)
    {
      LogStream = _PFLogGetLogStream(17);
      if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
      {
        recordID = [v4 recordID];
        *buf = 138412802;
        dataCopy2 = data;
        v31 = 2112;
        v32 = recordID;
        v33 = 2112;
        selfCopy2 = self;
        _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Decoded share zoneID doesn't match row: %@\n%@\n%@\n", buf, 0x20u);
      }

      v15 = _PFLogGetLogStream(17);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        recordID2 = [v4 recordID];
        *buf = 138412802;
        dataCopy2 = data;
        v31 = 2112;
        v32 = recordID2;
        v33 = 2112;
        selfCopy2 = self;
        _os_log_fault_impl(&dword_18565F000, v15, OS_LOG_TYPE_FAULT, "CoreData: Decoded share zoneID doesn't match row: %@\n%@\n%@", buf, 0x20u);
      }

      v16 = objc_alloc(MEMORY[0x1E696ABC0]);
      v17 = *MEMORY[0x1E696A250];
      v27 = *MEMORY[0x1E696A588];
      v28 = @"A fatal error has occured trying to decode sharing metadata, please file a bug with a sysdiagnose and attach the application store files if possible.";
      v18 = [v16 initWithDomain:v17 code:134060 userInfo:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v28, &v27, 1)}];
      v26 = v18;
LABEL_12:
      v20 = v18;
      if (v20)
      {
        if (d)
        {
          v4 = 0;
          *d = v20;
          goto LABEL_20;
        }
      }

      else
      {
        v21 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          dataCopy2 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitArchivingUtilities.m";
          v31 = 1024;
          LODWORD(v32) = 130;
          _os_log_error_impl(&dword_18565F000, v21, OS_LOG_TYPE_ERROR, "CoreData: fault: Illegal attempt to return an error without one in %s:%d\n", buf, 0x12u);
        }

        v22 = _PFLogGetLogStream(17);
        if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
        {
          *buf = 136315394;
          dataCopy2 = "/Library/Caches/com.apple.xbs/Sources/Persistence/PFCloudKitArchivingUtilities.m";
          v31 = 1024;
          LODWORD(v32) = 130;
          _os_log_fault_impl(&dword_18565F000, v22, OS_LOG_TYPE_FAULT, "CoreData: Illegal attempt to return an error without one in %s:%d", buf, 0x12u);
        }
      }

      v4 = 0;
    }
  }

LABEL_20:

  return v4;
}

@end