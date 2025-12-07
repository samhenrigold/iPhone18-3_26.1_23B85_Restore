@interface HDCloudSyncStateStore
- (BOOL)data:(id *)data forKey:(id)key error:(id *)error;
- (BOOL)setData:(id)data forKey:(id)key error:(id *)error;
- (HDCloudSyncStateStore)initWithData:(id)data;
- (void)unitTest_setMergedData:(id)data;
@end

@implementation HDCloudSyncStateStore

- (HDCloudSyncStateStore)initWithData:(id)data
{
  dataCopy = data;
  v9.receiver = self;
  v9.super_class = HDCloudSyncStateStore;
  v5 = [(HDCloudSyncStateStore *)&v9 init];
  if (v5)
  {
    v6 = objc_msgSend_copy(dataCopy);
    stateData = v5->_stateData;
    v5->_stateData = v6;
  }

  return v5;
}

- (BOOL)data:(id *)data forKey:(id)key error:(id *)error
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = [(NSDictionary *)self->_stateData objectForKey:key];
  v8 = v7;
  if (v7)
  {
    v14 = 0;
    v9 = [v7 decompressedDataUsingAlgorithm:0 error:&v14];
    v10 = v14;
    if (v9)
    {
      v11 = v9;
      if (!data)
      {
LABEL_5:

        goto LABEL_6;
      }
    }

    else
    {
      _HKInitializeLogging();
      v13 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        selfCopy = self;
        v17 = 2114;
        v18 = v10;
        _os_log_error_impl(&dword_228986000, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to decompress data: %{public}@", buf, 0x16u);
      }

      v11 = v8;
      if (!data)
      {
        goto LABEL_5;
      }
    }

    *data = v11;
    goto LABEL_5;
  }

LABEL_6:

  return 1;
}

- (BOOL)setData:(id)data forKey:(id)key error:(id *)error
{
  v44 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  keyCopy = key;
  mergedData = [(HDCloudSyncStateStore *)self mergedData];

  if (mergedData)
  {
    v11 = dataCopy;
    if (!self)
    {
LABEL_19:

      selfCopy = self;
      if (selfCopy)
      {
        if (error)
        {
          v31 = selfCopy;
          v19 = 0;
          *error = selfCopy;
        }

        else
        {
          _HKLogDroppedError();
          v19 = 0;
        }

        v18 = selfCopy;
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      goto LABEL_33;
    }
  }

  else
  {
    v12 = objc_alloc_init(MEMORY[0x277CBEB38]);
    mergedData = self->_mergedData;
    self->_mergedData = v12;

    v14 = dataCopy;
  }

  v15 = [dataCopy length];
  if (v15 >> 11 >= 0x19)
  {
    _HKInitializeLogging();
    v16 = *MEMORY[0x277CCC328];
    if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_ERROR))
    {
      *buf = 138543874;
      selfCopy4 = self;
      v38 = 2050;
      v39 = v15;
      v40 = 2050;
      v41 = 51200;
      _os_log_error_impl(&dword_228986000, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Record size: %{public}lu exceeds soft size limit: %{public}lu", buf, 0x20u);
    }

    if (v15 >> 11 >= 0x7D)
    {
      v26 = MEMORY[0x277CCA9B8];
      v27 = @"Individual data size limit exceeded.";
      goto LABEL_16;
    }
  }

  if ([(HDCloudSyncStateStore *)self aggregateMergedDataLength]+ v15 >= 0x300000)
  {
    v26 = MEMORY[0x277CCA9B8];
    v27 = @"Aggregate data size limit exceeded.";
LABEL_16:
    v28 = [v26 hk_error:736 description:v27];
    self = v28;
    if (v28)
    {
      v29 = v28;
    }

    goto LABEL_19;
  }

  v35 = 0;
  v17 = [dataCopy compressedDataUsingAlgorithm:0 error:&v35];
  v18 = v35;
  v19 = v17 != 0;
  _HKInitializeLogging();
  v20 = *MEMORY[0x277CCC328];
  v21 = *MEMORY[0x277CCC328];
  if (v17)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v20;
      v23 = [dataCopy length];
      v24 = [dataCopy length];
      *buf = 138544130;
      selfCopy4 = self;
      v38 = 2114;
      v39 = keyCopy;
      v40 = 2048;
      v41 = v23;
      v42 = 2048;
      v43 = v24;
      _os_log_impl(&dword_228986000, v22, OS_LOG_TYPE_DEFAULT, "[%{public}@] Compressed data for key: %{public}@ from %lu to %lu", buf, 0x2Au);
    }

    mergedData2 = [(HDCloudSyncStateStore *)self mergedData];
    [mergedData2 setObject:v17 forKeyedSubscript:keyCopy];

    -[HDCloudSyncStateStore setAggregateMergedDataLength:](self, "setAggregateMergedDataLength:", -[HDCloudSyncStateStore aggregateMergedDataLength](self, "aggregateMergedDataLength") + [v17 length]);
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy4 = self;
      v38 = 2114;
      v39 = v18;
      _os_log_error_impl(&dword_228986000, v20, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to compress data: %{public}@", buf, 0x16u);
    }

    v32 = [MEMORY[0x277CCA9B8] hk_error:740 format:@"Failed to compress data."];
    if (v32)
    {
      if (error)
      {
        v33 = v32;
        *error = v32;
      }

      else
      {
        _HKLogDroppedError();
      }
    }
  }

  selfCopy = 0;
LABEL_33:

  return v19;
}

- (void)unitTest_setMergedData:(id)data
{
  v4 = [data mutableCopy];
  mergedData = self->_mergedData;
  self->_mergedData = v4;

  MEMORY[0x2821F96F8](v4, mergedData);
}

@end