@interface FIICloudDrive
+ (pair<FINode)findUnderlyingNodes;
- (FIICloudDrive)init;
- (id)propertyAsNumber:(unsigned int)number async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (id)propertyAsString:(unsigned int)string async:(BOOL)async options:(unsigned int)options error:(id *)error;
- (unsigned)nodePermissions:(unsigned int)permissions error:(id *)error;
@end

@implementation FIICloudDrive

- (FIICloudDrive)init
{
  v13[2] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_class();
  if (v3)
  {
    objc_msgSend_findUnderlyingNodes(v3);
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  _libraries = [(FIICloudDrive *)self _libraries];
  if (_libraries)
  {
    [(FIICloudDrive *)self _documents];
  }

  v5 = MEMORY[0x1E695DFD8];
  v13[0] = v12;
  v13[1] = v11;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:2];
  v7 = [v5 setWithArray:v6];
  v10.receiver = self;
  v10.super_class = FIICloudDrive;
  v8 = [(FICompoundNode *)&v10 initWithNodes:v7 subject:v12];

  [(FIICloudDrive *)v8 set_libraries:v11];
  [(FIICloudDrive *)v8 set_documents:v12];

  return v8;
}

+ (pair<FINode)findUnderlyingNodes
{
  v3 = v2;
  v4 = +[FINode iCloudLibrariesContainer];
  v5 = +[FINode iCloudDefaultContainer];
  *v3 = v4;
  v3[1] = v5;
  result.var1 = v6;
  result.var0 = v5;
  return result;
}

- (unsigned)nodePermissions:(unsigned int)permissions error:(id *)error
{
  v5.receiver = self;
  v5.super_class = FIICloudDrive;
  return [(FICompoundNode *)&v5 nodePermissions:*&permissions error:error]& 0xFFEDDC04;
}

- (id)propertyAsNumber:(unsigned int)number async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v7 = *&options;
  asyncCopy = async;
  v9 = *&number;
  if (number == 1885895027 || number == 1819240307)
  {
    _documents = [(FIICloudDrive *)self _documents];
    fileParent = [_documents fileParent];

    v13 = [fileParent propertyAsNumber:v9 async:asyncCopy options:v7 error:error];
  }

  else
  {
    v15.receiver = self;
    v15.super_class = FIICloudDrive;
    v13 = [(FICompoundNode *)&v15 propertyAsNumber:*&number async:async options:*&options error:error];
  }

  return v13;
}

- (id)propertyAsString:(unsigned int)string async:(BOOL)async options:(unsigned int)options error:(id *)error
{
  v9 = @"🆕 iCloud Drive";
  if (string != 1684955501 && string != 1886282093)
  {
    v12 = v6;
    v13 = v7;
    v11.receiver = self;
    v11.super_class = FIICloudDrive;
    v9 = [(FICompoundNode *)&v11 propertyAsString:*&string async:async options:*&options error:error];
    v7 = v13;
  }

  return v9;
}

@end