@interface _DPFloatValueRecorder
- (BOOL)recordFloatVectors:(id)vectors;
- (BOOL)recordFloatVectors:(id)vectors metadata:(id)metadata;
- (_DPFloatValueRecorder)initWithKey:(id)key databaseDirectoryPath:(id)path readOnly:(BOOL)only;
- (id)description;
@end

@implementation _DPFloatValueRecorder

- (BOOL)recordFloatVectors:(id)vectors
{
  vectorsCopy = vectors;
  v5 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordFloatVectors:vectorsCopy];
  objc_autoreleasePoolPop(v5);

  return 1;
}

- (BOOL)recordFloatVectors:(id)vectors metadata:(id)metadata
{
  vectorsCopy = vectors;
  metadataCopy = metadata;
  v8 = objc_autoreleasePoolPush();
  [(_DPDataRecorder *)self->_recorder recordFloatVectors:vectorsCopy metadata:metadataCopy];
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

- (_DPFloatValueRecorder)initWithKey:(id)key databaseDirectoryPath:(id)path readOnly:(BOOL)only
{
  onlyCopy = only;
  keyCopy = key;
  pathCopy = path;
  v16.receiver = self;
  v16.super_class = _DPFloatValueRecorder;
  v10 = [(_DPFloatValueRecorder *)&v16 init];
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