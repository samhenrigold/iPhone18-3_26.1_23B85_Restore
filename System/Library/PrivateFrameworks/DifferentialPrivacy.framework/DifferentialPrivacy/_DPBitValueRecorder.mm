@interface _DPBitValueRecorder
- (BOOL)record:(id)record;
- (BOOL)record:(id)record metadata:(id)metadata;
- (BOOL)recordBitVectors:(id)vectors;
- (BOOL)recordBitVectors:(id)vectors metadata:(id)metadata;
- (_DPBitValueRecorder)initWithKey:(id)key databaseDirectoryPath:(id)path readOnly:(BOOL)only;
- (id)description;
@end

@implementation _DPBitValueRecorder

- (BOOL)record:(id)record
{
  recordCopy = record;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordBitValues:recordCopy];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)recordBitVectors:(id)vectors
{
  vectorsCopy = vectors;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordBitVectors:vectorsCopy];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)record:(id)record metadata:(id)metadata
{
  recordCopy = record;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordBitValues:recordCopy metadata:metadataCopy];
  objc_autoreleasePoolPop(v8);

  return 1;
}

- (BOOL)recordBitVectors:(id)vectors metadata:(id)metadata
{
  vectorsCopy = vectors;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordBitVectors:vectorsCopy metadata:metadataCopy];
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

- (_DPBitValueRecorder)initWithKey:(id)key databaseDirectoryPath:(id)path readOnly:(BOOL)only
{
  onlyCopy = only;
  keyCopy = key;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = _DPBitValueRecorder;
  v10 = [(_DPBitValueRecorder *)&v16 init];
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