@interface MSUDataAccessorDiagnostics
- (id)copyPathForPersistentData:(int)data error:(id *)error;
- (id)returnDirectoryIfExistsForPath:(id)path;
@end

@implementation MSUDataAccessorDiagnostics

- (id)returnDirectoryIfExistsForPath:(id)path
{
  pathCopy = path;
  v8 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = [defaultManager fileExistsAtPath:pathCopy isDirectory:&v8];

  if (v5 && v8 == 1)
  {
    v6 = pathCopy;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)copyPathForPersistentData:(int)data error:(id *)error
{
  v5 = *&data;
  if (data != 100 || (result = [(MSUDataAccessorDiagnostics *)self specialCaseFDRPathForDiagnostics]) == 0)
  {
    v8.receiver = self;
    v8.super_class = MSUDataAccessorDiagnostics;
    return [(MSUDataAccessor *)&v8 copyPathForPersistentData:v5 error:error];
  }

  return result;
}

@end