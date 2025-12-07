@interface LSPlugInQueryWithUnits
- (LSPlugInQueryWithUnits)initWithCoder:(id)coder;
- (LSPlugInQueryWithUnits)initWithPlugInUnits:(id)units forDatabaseWithUUID:(id)d;
- (void)_enumerateWithXPCConnection:(id)connection block:(id)block;
- (void)encodeWithCoder:(id)coder;
@end

@implementation LSPlugInQueryWithUnits

- (LSPlugInQueryWithUnits)initWithPlugInUnits:(id)units forDatabaseWithUUID:(id)d
{
  unitsCopy = units;
  dCopy = d;
  v12.receiver = self;
  v12.super_class = LSPlugInQueryWithUnits;
  _init = [(LSPlugInQuery *)&v12 _init];
  if (_init)
  {
    v9 = [unitsCopy copy];
    pluginUnits = _init->_pluginUnits;
    _init->_pluginUnits = v9;

    objc_storeStrong(&_init->_dbUUID, d);
  }

  return _init;
}

- (LSPlugInQueryWithUnits)initWithCoder:(id)coder
{
  coderCopy = coder;
  v11.receiver = self;
  v11.super_class = LSPlugInQueryWithUnits;
  v5 = [(LSPlugInQuery *)&v11 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy ls_decodeArrayWithValuesOfClass:objc_opt_class() forKey:@"pluginUnits"];
    pluginUnits = v5->_pluginUnits;
    v5->_pluginUnits = v6;

    v8 = [coderCopy ls_decodeObjectOfClass:objc_opt_class() forKey:@"dbUUID"];
    dbUUID = v5->_dbUUID;
    v5->_dbUUID = v8;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  pluginUnits = self->_pluginUnits;
  coderCopy = coder;
  [coderCopy encodeObject:pluginUnits forKey:@"pluginUnits"];
  [coderCopy encodeObject:self->_dbUUID forKey:@"dbUUID"];
}

- (void)_enumerateWithXPCConnection:(id)connection block:(id)block
{
  v25[1] = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  blockCopy = block;
  v20 = 0;
  v21 = 0;
  inited = _LSContextInitReturningError(&v21, &v20);
  v9 = v20;
  if (inited)
  {
    v10 = _LSDatabaseGetCacheGUID(v21);
    v11 = [v10 isEqual:self->_dbUUID];

    if (v11)
    {
      v12 = [MEMORY[0x1E695DFD8] setWithArray:self->_pluginUnits];
      v13 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      [(_LSDatabase *)v21 store];
      [(_LSDatabase *)v21 schema];
      v14 = v12;
      v15 = v13;
      _CSStoreEnumerateUnits();
      if ([v15 isEqual:v14])
      {
        if ([v15 count])
        {
          [(LSPlugInQuery *)self sort:0 pluginIDs:v14 andYield:blockCopy context:&v21];
        }
      }

      else
      {
        v16 = [v14 mutableCopy];
        v17 = _LSDefaultLog([v16 minusSet:v15]);
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          [LSPlugInQueryWithUnits _enumerateWithXPCConnection:v16 block:v17];
        }

        v24 = *MEMORY[0x1E696A278];
        v25[0] = @"specified plugin units were not available";
        v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v19 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 114, v18, "[LSPlugInQueryWithUnits _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryAll.m", 141);

        blockCopy[2](blockCopy, 0, v19);
        v9 = v19;
      }
    }

    else
    {
      v22 = *MEMORY[0x1E696A278];
      v23 = @"DB UUID mismatch";
      v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v23 forKeys:&v22 count:1];
      v15 = _LSMakeNSErrorImpl(@"LSApplicationWorkspaceErrorDomain", 114, v14, "[LSPlugInQueryWithUnits _enumerateWithXPCConnection:block:]", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Workspace/LSPlugInQueryAll.m", 147);
      blockCopy[2](blockCopy, 0, v15);
    }

    _LSContextDestroy(&v21);
  }

  else
  {
    blockCopy[2](blockCopy, 0, v9);
  }
}

void __60__LSPlugInQueryWithUnits__enumerateWithXPCConnection_block___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = *(a1 + 40);
    v7 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a2];
    [v6 addObject:v7];
  }
}

- (void)_enumerateWithXPCConnection:(uint64_t)a1 block:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_18162D000, a2, OS_LOG_TYPE_ERROR, "LSPlugInQueryWithUnits: missing units %@", &v2, 0xCu);
}

@end