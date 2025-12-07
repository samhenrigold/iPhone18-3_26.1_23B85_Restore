@interface DMCDictionaryWriter
- (BOOL)didWriteSucceed;
- (BOOL)repairAccessIfNecessaryWithError:(id *)error;
- (BOOL)write;
- (BOOL)writeData:(id)data error:(id *)error;
- (DMCDictionaryWriter)initWithDictionary:(id)dictionary path:(id)path writeOptions:(unint64_t)options;
- (DMCFileAccessRepairTool)repairTool;
- (id)createRepairTool;
- (id)serializedData;
- (void)logResultOfWrite;
- (void)logStartOfWrite;
- (void)reset;
- (void)serializeDataAndWriteToStorage;
@end

@implementation DMCDictionaryWriter

- (DMCDictionaryWriter)initWithDictionary:(id)dictionary path:(id)path writeOptions:(unint64_t)options
{
  dictionaryCopy = dictionary;
  pathCopy = path;
  v17.receiver = self;
  v17.super_class = DMCDictionaryWriter;
  v11 = [(DMCDictionaryWriter *)&v17 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_dictionary, dictionary);
    v13 = [pathCopy copy];
    path = v12->_path;
    v12->_path = v13;

    v12->_options = options;
    repairTool = v12->_repairTool;
    v12->_repairTool = 0;

    [(DMCDictionaryWriter *)v12 reset];
  }

  return v12;
}

- (void)reset
{
  serializeError = self->_serializeError;
  self->_serializeError = 0;

  writeError = self->_writeError;
  self->_writeError = 0;

  beforeWriteRepairError = self->_beforeWriteRepairError;
  self->_beforeWriteRepairError = 0;

  afterWriteRepairError = self->_afterWriteRepairError;
  self->_afterWriteRepairError = 0;
}

- (DMCFileAccessRepairTool)repairTool
{
  repairTool = self->_repairTool;
  if (!repairTool)
  {
    createRepairTool = [(DMCDictionaryWriter *)self createRepairTool];
    v5 = self->_repairTool;
    self->_repairTool = createRepairTool;

    repairTool = self->_repairTool;
  }

  return repairTool;
}

- (id)createRepairTool
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serializedData
{
  v3 = MEMORY[0x1E696AE40];
  dictionary = [(DMCDictionaryWriter *)self dictionary];
  v8 = 0;
  v5 = [v3 dataWithPropertyList:dictionary format:200 options:0 error:&v8];
  v6 = v8;

  if (!v5)
  {
    [(DMCDictionaryWriter *)self setSerializeError:v6];
  }

  return v5;
}

- (BOOL)write
{
  [(DMCDictionaryWriter *)self reset];
  [(DMCDictionaryWriter *)self logStartOfWrite];
  [(DMCDictionaryWriter *)self serializeDataAndWriteToStorage];
  [(DMCDictionaryWriter *)self logResultOfWrite];

  return [(DMCDictionaryWriter *)self didWriteSucceed];
}

- (BOOL)didWriteSucceed
{
  serializeError = [(DMCDictionaryWriter *)self serializeError];
  if (serializeError)
  {
    v4 = 0;
  }

  else
  {
    writeError = [(DMCDictionaryWriter *)self writeError];
    if (writeError)
    {
      v4 = 0;
    }

    else
    {
      afterWriteRepairError = [(DMCDictionaryWriter *)self afterWriteRepairError];
      v4 = afterWriteRepairError == 0;
    }
  }

  return v4;
}

- (void)logStartOfWrite
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = DMCLogObjects(self, a2)[3];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = v3;
    dictionary = [(DMCDictionaryWriter *)self dictionary];
    v6 = [dictionary count];
    path = [(DMCDictionaryWriter *)self path];
    v8 = 134218242;
    v9 = v6;
    v10 = 2114;
    v11 = path;
    _os_log_impl(&dword_1B1630000, v4, OS_LOG_TYPE_DEFAULT, "Attempting to write dictionary with %lu entries to path %{public}@...", &v8, 0x16u);
  }
}

- (void)logResultOfWrite
{
  v31 = *MEMORY[0x1E69E9840];
  serializeError = [(DMCDictionaryWriter *)self serializeError];

  if (serializeError)
  {
    v6 = DMCLogObjects(v4, v5)[3];
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v7 = v6;
    path = [(DMCDictionaryWriter *)self path];
    serializeError2 = [(DMCDictionaryWriter *)self serializeError];
    v25 = 138543618;
    v26 = path;
    v27 = 2114;
    v28 = serializeError2;
    v10 = "Dictionary could not be written to %{public}@, could not serialize data: %{public}@";
    goto LABEL_4;
  }

  beforeWriteRepairError = [(DMCDictionaryWriter *)self beforeWriteRepairError];

  writeError = [(DMCDictionaryWriter *)self writeError];

  if (beforeWriteRepairError)
  {
    v15 = DMCLogObjects(v13, v14)[3];
    v16 = os_log_type_enabled(v15, OS_LOG_TYPE_ERROR);
    if (writeError)
    {
      if (!v16)
      {
        return;
      }

      v7 = v15;
      path = [(DMCDictionaryWriter *)self path];
      beforeWriteRepairError2 = [(DMCDictionaryWriter *)self beforeWriteRepairError];
      writeError2 = [(DMCDictionaryWriter *)self writeError];
      v25 = 138543874;
      v26 = path;
      v27 = 2114;
      v28 = beforeWriteRepairError2;
      v29 = 2114;
      options = writeError2;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "Dictionary could not be written to %{public}@, file could not be repaired before writing: %{public}@ and could not write data: %{public}@", &v25, 0x20u);

LABEL_12:
      goto LABEL_13;
    }

    if (v16)
    {
      v7 = v15;
      path = [(DMCDictionaryWriter *)self path];
      serializeError2 = [(DMCDictionaryWriter *)self beforeWriteRepairError];
      v25 = 138543618;
      v26 = path;
      v27 = 2114;
      v28 = serializeError2;
      v10 = "Dictionary successfully written to %{public}@, but there was a problem repairing the file before writing: %{public}@";
LABEL_4:
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, v10, &v25, 0x16u);

LABEL_13:
LABEL_14:
    }
  }

  else
  {
    if (writeError)
    {
      v19 = DMCLogObjects(v13, v14)[3];
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        return;
      }

      v7 = v19;
      path = [(DMCDictionaryWriter *)self path];
      beforeWriteRepairError2 = [(DMCDictionaryWriter *)self writeError];
      v25 = 138543874;
      v26 = path;
      v27 = 2114;
      v28 = beforeWriteRepairError2;
      v29 = 2048;
      options = [(DMCDictionaryWriter *)self options];
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_ERROR, "Dictionary could not be written to %{public}@, could not write data: %{public}@. Write Options: %lu", &v25, 0x20u);
      goto LABEL_12;
    }

    afterWriteRepairError = [(DMCDictionaryWriter *)self afterWriteRepairError];

    v23 = DMCLogObjects(v21, v22)[3];
    if (afterWriteRepairError)
    {
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v7 = v23;
        path = [(DMCDictionaryWriter *)self path];
        serializeError2 = [(DMCDictionaryWriter *)self afterWriteRepairError];
        v25 = 138543618;
        v26 = path;
        v27 = 2114;
        v28 = serializeError2;
        v10 = "Dictionary successfully written to %{public}@, could not make file readable after write: %{public}@";
        goto LABEL_4;
      }
    }

    else if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v23;
      path2 = [(DMCDictionaryWriter *)self path];
      v25 = 138543362;
      v26 = path2;
      _os_log_impl(&dword_1B1630000, v7, OS_LOG_TYPE_DEFAULT, "Dictionary successfully written to %{public}@", &v25, 0xCu);

      goto LABEL_14;
    }
  }
}

- (void)serializeDataAndWriteToStorage
{
  serializedData = [(DMCDictionaryWriter *)self serializedData];
  if (serializedData)
  {
    v12 = 0;
    v4 = [(DMCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v12];
    v5 = v12;
    if (!v4)
    {
      [(DMCDictionaryWriter *)self setBeforeWriteRepairError:v5];
    }

    v11 = 0;
    v6 = [(DMCDictionaryWriter *)self writeData:serializedData error:&v11];
    v7 = v11;
    if (v6)
    {
      v10 = 0;
      v8 = [(DMCDictionaryWriter *)self repairAccessIfNecessaryWithError:&v10];
      v9 = v10;
      if (!v8)
      {
        [(DMCDictionaryWriter *)self setAfterWriteRepairError:v9];
      }
    }

    else
    {
      [(DMCDictionaryWriter *)self setWriteError:v7];
    }
  }
}

- (BOOL)writeData:(id)data error:(id *)error
{
  dataCopy = data;
  path = [(DMCDictionaryWriter *)self path];
  v12 = 0;
  v8 = [dataCopy DMCAtomicWriteToPath:path writeOptions:-[DMCDictionaryWriter options](self error:{"options"), &v12}];

  v9 = v12;
  if (error && (v8 & 1) == 0)
  {
    v10 = v9;
    *error = v9;
  }

  return v8;
}

- (BOOL)repairAccessIfNecessaryWithError:(id *)error
{
  repairTool = [(DMCDictionaryWriter *)self repairTool];
  path = [(DMCDictionaryWriter *)self path];
  v7 = [repairTool fileNeedsRepairAtPath:path];

  if (!v7)
  {
    return 1;
  }

  repairTool2 = [(DMCDictionaryWriter *)self repairTool];
  path2 = [(DMCDictionaryWriter *)self path];
  v14 = 0;
  v10 = [repairTool2 repairFileAtPath:path2 error:&v14];
  v11 = v14;

  if (error && (v10 & 1) == 0)
  {
    v12 = v11;
    *error = v11;
  }

  return v10;
}

@end