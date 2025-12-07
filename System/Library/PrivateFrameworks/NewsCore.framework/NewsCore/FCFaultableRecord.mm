@interface FCFaultableRecord
+ (FCFaultableRecord)faultableRecordWithRecord:(uint64_t)record;
+ (id)readValueFromKeyValuePair:(id)pair;
- (FCFaultableRecord)init;
- (id)record;
- (id)recordBase;
- (void)writeToKeyValuePair:(id)pair;
- (void)writeValueToDataWriter:(id)writer;
@end

@implementation FCFaultableRecord

- (FCFaultableRecord)init
{
  v3.receiver = self;
  v3.super_class = FCFaultableRecord;
  result = [(FCFaultableRecord *)&v3 init];
  if (result)
  {
    result->_recordLock._os_unfair_lock_opaque = 0;
  }

  return result;
}

- (id)recordBase
{
  v20 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = (self + 24);
    v3 = *(self + 24);
    v4 = *(self + 32);
    v5 = *(self + 16);
    os_unfair_lock_unlock((self + 8));
    if (!v3)
    {
      if (v5)
      {
        [v5 base];
      }

      else
      {
        NTPBReadBaseFromRecordData();
      }
      v3 = ;
      os_unfair_lock_lock_with_options();
      if (*v2)
      {
        v6 = *v2;

        os_unfair_lock_unlock((self + 8));
        v3 = v6;
      }

      else
      {
        objc_storeStrong((self + 24), v3);
        os_unfair_lock_unlock((self + 8));
        if (!v3)
        {
          if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
          {
            v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"faultable record failed to load base"];
            v12 = 136315906;
            v13 = "[FCFaultableRecord recordBase]";
            v14 = 2080;
            v15 = "FCFaultableRecord.m";
            v16 = 1024;
            v17 = 103;
            v18 = 2114;
            v19 = v11;
            _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingRecordBase) : %s %s:%d %{public}@", &v12, 0x26u);
          }

          v3 = 0;
          goto LABEL_12;
        }
      }
    }

    identifier = [v3 identifier];

    if (!identifier && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
    {
      v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"faultable record loaded base without an identifier"];
      v12 = 136315906;
      v13 = "[FCFaultableRecord recordBase]";
      v14 = 2080;
      v15 = "FCFaultableRecord.m";
      v16 = 1024;
      v17 = 104;
      v18 = 2114;
      v19 = v10;
      _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: CorruptRecordBase) : %s %s:%d %{public}@", &v12, 0x26u);
    }

LABEL_12:
    v8 = v3;

    goto LABEL_13;
  }

  v8 = 0;
LABEL_13:

  return v8;
}

- (id)record
{
  v23 = *MEMORY[0x1E69E9840];
  if (self)
  {
    os_unfair_lock_lock_with_options();
    v2 = *(self + 16);
    v3 = *(self + 32);
    os_unfair_lock_unlock((self + 8));
    if (v2)
    {
      v4 = 1;
    }

    else
    {
      v4 = v3 == 0;
    }

    if (v4)
    {
      goto LABEL_20;
    }

    recordBase = [(FCFaultableRecord *)self recordBase];
    recordType = [recordBase recordType];

    switch(recordType)
    {
      case 0:
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
        {
          v14 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"unknown type in faultable record"];
          v15 = 136315906;
          v16 = "[FCFaultableRecord record]";
          v17 = 2080;
          v18 = "FCFaultableRecord.m";
          v19 = 1024;
          v20 = 129;
          v21 = 2114;
          v22 = v14;
          _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v15, 0x26u);
        }

        goto LABEL_9;
      case 1:
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 20:
        v7 = objc_opt_class();
        break;
      default:
LABEL_9:
        v7 = 0;
        break;
    }

    v8 = [[v7 alloc] initWithData:v3];
    v9 = v8;
    if (v7)
    {
      if (!v8)
      {
        v10 = FCRecordSourceLog;
        if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_FAULT))
        {
          LOWORD(v15) = 0;
          v11 = "failed to decode record from faultable record";
LABEL_25:
          _os_log_fault_impl(&dword_1B63EF000, v10, OS_LOG_TYPE_FAULT, v11, &v15, 2u);
        }
      }
    }

    else
    {
      v10 = FCRecordSourceLog;
      if (os_log_type_enabled(FCRecordSourceLog, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v15) = 0;
        v11 = "failed to find record class for faultable record";
        goto LABEL_25;
      }
    }

    os_unfair_lock_lock_with_options();
    v12 = *(self + 16);
    if (v12)
    {
      v2 = v12;
    }

    else
    {
      v2 = v9;
      v9 = *(self + 16);
      *(self + 16) = v2;
    }

    os_unfair_lock_unlock((self + 8));
LABEL_20:

    goto LABEL_21;
  }

  v2 = 0;
LABEL_21:

  return v2;
}

+ (FCFaultableRecord)faultableRecordWithRecord:(uint64_t)record
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = a2;
  objc_opt_self();
  if (!v3 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "record != nil"];
    *buf = 136315906;
    v9 = "+[FCFaultableRecord faultableRecordWithRecord:]";
    v10 = 2080;
    v11 = "FCFaultableRecord.m";
    v12 = 1024;
    v13 = 38;
    v14 = 2114;
    v15 = v7;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v4 = objc_alloc_init(FCFaultableRecord);
  v5 = v4;
  if (v4)
  {
    objc_storeStrong(&v4->_record, a2);
  }

  return v5;
}

+ (id)readValueFromKeyValuePair:(id)pair
{
  v17 = *MEMORY[0x1E69E9840];
  recordData = [pair recordData];
  v4 = recordData;
  objc_opt_self();
  if (!v4 && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Invalid parameter not satisfying %s", "recordData != nil"];
    *buf = 136315906;
    v10 = "+[FCFaultableRecord faultableRecordWithRecordData:]";
    v11 = 2080;
    v12 = "FCFaultableRecord.m";
    v13 = 1024;
    v14 = 47;
    v15 = 2114;
    v16 = v8;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v5 = objc_alloc_init(FCFaultableRecord);
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_recordData, recordData);
  }

  return v6;
}

- (void)writeToKeyValuePair:(id)pair
{
  v12 = *MEMORY[0x1E69E9840];
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    v3 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"-writeValueToDataWriter should have been used instead"];
    v4 = 136315906;
    v5 = "[FCFaultableRecord writeToKeyValuePair:]";
    v6 = 2080;
    v7 = "FCFaultableRecord.m";
    v8 = 1024;
    v9 = 272;
    v10 = 2114;
    v11 = v3;
    _os_log_error_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v4, 0x26u);
  }
}

- (void)writeValueToDataWriter:(id)writer
{
  writerCopy = writer;
  os_unfair_lock_lock_with_options();
  recordData = self->_recordData;
  v6 = self->_record;
  v7 = recordData;
  os_unfair_lock_unlock(&self->_recordLock);
  if (v7)
  {
    PBDataWriterWriteDataField();
  }

  else
  {
    PBDataWriterWriteSubmessage();
  }
}

@end