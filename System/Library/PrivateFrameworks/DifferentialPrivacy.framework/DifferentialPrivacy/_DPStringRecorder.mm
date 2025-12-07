@interface _DPStringRecorder
- (BOOL)record:(id)record;
- (BOOL)record:(id)record metadata:(id)metadata;
- (_DPStringRecorder)initWithKey:(id)key databaseDirectoryPath:(id)path readOnly:(BOOL)only;
- (id)description;
@end

@implementation _DPStringRecorder

- (BOOL)record:(id)record
{
  recordCopy = record;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordStrings:recordCopy];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)record:(id)record metadata:(id)metadata
{
  recordCopy = record;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordStrings:recordCopy metadata:metadataCopy];
  objc_autoreleasePoolPop(v8);

  return 1;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"%@: { recorder=%@ }", v5, self->_recorder];

  return v6;
}

- (_DPStringRecorder)initWithKey:(id)key databaseDirectoryPath:(id)path readOnly:(BOOL)only
{
  onlyCopy = only;
  keyCopy = key;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = _DPStringRecorder;
  v10 = [(_DPStringRecorder *)&v16 init];
  if (v10)
  {
    if (pathCopy)
    {
      v11 = [_DPStorage storageWithDirectory:pathCopy readOnly:onlyCopy];
      v12 = [[_DPDatabaseRecorder alloc] initWithKey:keyCopy storage:v11];
      recorder = v10->_recorder;
      v10->_recorder = &v12->super;
    }

    else
    {
      v14 = [[_DPXPCRecorder alloc] initWithKey:keyCopy];
      v11 = v10->_recorder;
      v10->_recorder = &v14->super;
    }
  }

  return v10;
}

@end