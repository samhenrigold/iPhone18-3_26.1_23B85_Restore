@interface CCSQLiteDatabase
- (BOOL)_prepareSqliteStatement:(sqlite3_stmt *)statement usingCommand:(id)command outError:(id *)error;
- (BOOL)_validateAndBindSqliteStatementParameters:(sqlite3_stmt *)parameters usingCommand:(id)command outError:(id *)error;
- (BOOL)_validateCommand:(id)command outError:(id *)error;
- (BOOL)closeWithError:(id *)error;
- (BOOL)executeCommand:(id)command options:(unint64_t)options error:(id *)error returningRowBlock:(id)block;
- (BOOL)executeCommandString:(id)string error:(id *)error;
- (BOOL)openWithError:(id *)error;
- (CCSQLiteDatabase)init;
- (CCSQLiteDatabase)initWithPath:(id)path accessPermission:(int64_t)permission threadingMode:(int64_t)mode dataProtectionClass:(int)class databaseOptions:(int64_t)options;
- (id)_cachedOrPreparedStatementFromCommand:(id)command options:(unint64_t)options error:(id *)error;
- (id)enumerateCommand:(id)command options:(unint64_t)options;
- (int)rowsModified:(id *)modified;
@end

@implementation CCSQLiteDatabase

- (CCSQLiteDatabase)init
{
  v2 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"init unsupported" userInfo:MEMORY[0x1E695E0F8]];
  objc_exception_throw(v2);
}

- (CCSQLiteDatabase)initWithPath:(id)path accessPermission:(int64_t)permission threadingMode:(int64_t)mode dataProtectionClass:(int)class databaseOptions:(int64_t)options
{
  pathCopy = path;
  v22.receiver = self;
  v22.super_class = CCSQLiteDatabase;
  v13 = [(CCSQLiteDatabase *)&v22 init];
  if (!v13)
  {
    goto LABEL_4;
  }

  stringByStandardizingPath = [pathCopy stringByStandardizingPath];
  v15 = [stringByStandardizingPath copy];
  path = v13->_path;
  v13->_path = v15;

  if ([(NSString *)v13->_path length])
  {
    v13->_accessPermission = permission;
    v13->_threadingMode = mode;
    v13->_dataProtectionClass = class;
    v13->_databaseOptions = options;
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    cachedSQLiteStatements = v13->_cachedSQLiteStatements;
    v13->_cachedSQLiteStatements = v17;

LABEL_4:
    v19 = v13;
    goto LABEL_8;
  }

  v20 = __biome_log_for_category();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    [CCSQLiteDatabase initWithPath:v20 accessPermission:? threadingMode:? dataProtectionClass:? databaseOptions:?];
  }

  v19 = 0;
LABEL_8:

  return v19;
}

- (BOOL)openWithError:(id *)error
{
  v78[1] = *MEMORY[0x1E69E9840];
  p_handle = &self->_handle;
  if (self->_handle)
  {
    v4 = __biome_log_for_category();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      [CCSQLiteDatabase openWithError:v4];
    }

    goto LABEL_4;
  }

  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to open database at path: %@", self->_path];
  v4 = v8;
  if (!self->_path)
  {
    v16 = MEMORY[0x1E696ABC0];
    v77 = *MEMORY[0x1E696A578];
    v78[0] = v8;
    stringByDeletingLastPathComponent = [MEMORY[0x1E695DF20] dictionaryWithObjects:v78 forKeys:&v77 count:1];
    v18 = [v16 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:3 userInfo:stringByDeletingLastPathComponent];
    CCSetAndReportError(error, v18);

LABEL_39:
    goto LABEL_40;
  }

  v66 = 0;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [defaultManager fileExistsAtPath:self->_path isDirectory:&v66];

  if (!v10)
  {
    stringByDeletingLastPathComponent = [(NSString *)self->_path stringByDeletingLastPathComponent];
    defaultManager2 = [MEMORY[0x1E696AC08] defaultManager];
    v20 = [defaultManager2 fileExistsAtPath:stringByDeletingLastPathComponent isDirectory:&v66];

    if (v20)
    {
      if ((v66 & 1) == 0)
      {
        v21 = MEMORY[0x1E696ABC0];
        v22 = *MEMORY[0x1E696A578];
        v73[0] = *MEMORY[0x1E696A368];
        v73[1] = v22;
        v74[0] = stringByDeletingLastPathComponent;
        v74[1] = v4;
        v23 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v74 forKeys:v73 count:2];
        v24 = [v21 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:5 userInfo:v23];
        CCSetAndReportError(error, v24);
LABEL_38:

        goto LABEL_39;
      }
    }

    else
    {
      defaultManager3 = [MEMORY[0x1E696AC08] defaultManager];
      v65 = 0;
      v26 = [defaultManager3 createDirectoryAtPath:stringByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v65];
      v23 = v65;

      if ((v26 & 1) == 0)
      {
        v52 = MEMORY[0x1E696ABC0];
        v53 = *MEMORY[0x1E696A368];
        v72[0] = self->_path;
        v54 = *MEMORY[0x1E696AA08];
        v71[0] = v53;
        v71[1] = v54;
        v24 = _NSNullIfNilObject(v23);
        v71[2] = *MEMORY[0x1E696A578];
        v72[1] = v24;
        v72[2] = v4;
        v55 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v72 forKeys:v71 count:3];
        v56 = [v52 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:1 userInfo:v55];
        CCSetAndReportError(error, v56);

        goto LABEL_38;
      }
    }

    goto LABEL_16;
  }

  if (v66 == 1)
  {
    v11 = MEMORY[0x1E696ABC0];
    path = self->_path;
    v13 = *MEMORY[0x1E696A578];
    v75[0] = *MEMORY[0x1E696A368];
    v75[1] = v13;
    v76[0] = path;
    v76[1] = v4;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v76 forKeys:v75 count:2];
    v15 = [v11 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:4 userInfo:v14];
    CCSetAndReportError(error, v15);

LABEL_40:
    v5 = 0;
    goto LABEL_41;
  }

LABEL_16:
  v27 = self->_accessPermission - 1;
  if (v27 > 2)
  {
    v28 = 0;
  }

  else
  {
    v28 = dword_1B6E0EA48[v27];
  }

  threadingMode = self->_threadingMode;
  if (threadingMode == 3)
  {
    v30 = 0x10000;
  }

  else
  {
    v30 = (threadingMode == 2) << 15;
  }

  v31 = v30 | v28;
  v32 = self->_dataProtectionClass - 1;
  if (v32 > 5)
  {
    v33 = 0;
  }

  else
  {
    v33 = dword_1B6E0EA54[v32];
  }

  v34 = sqlite3_open_v2([(NSString *)self->_path fileSystemRepresentation], p_handle, v31 | v33, 0);
  if (v34)
  {
    v35 = v34;
    v36 = sqlite3_extended_errcode(self->_handle);
    v37 = MEMORY[0x1E696ABC0];
    v38 = *MEMORY[0x1E696A368];
    v70[0] = self->_path;
    v39 = *MEMORY[0x1E696AA08];
    v69[0] = v38;
    v69[1] = v39;
    v40 = _createSQLiteAPIErrorFromResultCode(v35, v36);
    v69[2] = *MEMORY[0x1E696A578];
    v70[1] = v40;
    v70[2] = v4;
    v41 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v70 forKeys:v69 count:3];
    v42 = [v37 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v41];
    CCSetAndReportError(error, v42);

    v5 = 0;
    self->_handle = 0;
    goto LABEL_41;
  }

  if ((v10 & 1) == 0)
  {
    if ((self->_databaseOptions & 2) != 0)
    {
      v43 = sqlite3_exec(*p_handle, "PRAGMA journal_mode=WAL", 0, 0, 0);
      if (v43)
      {
        v44 = v43;
        v45 = sqlite3_extended_errcode(*p_handle);
        v46 = __biome_log_for_category();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          [(CCSQLiteDatabase *)v44 openWithError:v45];
        }
      }
    }

    if ((self->_accessPermission & 0xFFFFFFFFFFFFFFFELL) == 2)
    {
      v47 = [MEMORY[0x1E695DFF8] fileURLWithPath:self->_path];
      v48 = [MEMORY[0x1E696AD98] numberWithInt:self->_databaseOptions & 1];
      v49 = *MEMORY[0x1E695DB80];
      v64 = 0;
      v50 = [v47 setResourceValue:v48 forKey:v49 error:&v64];
      v51 = v64;

      if ((v50 & 1) == 0)
      {
        v58 = MEMORY[0x1E696ABC0];
        v59 = *MEMORY[0x1E696A368];
        v68[0] = self->_path;
        v60 = *MEMORY[0x1E696AA08];
        v67[0] = v59;
        v67[1] = v60;
        v61 = _NSNullIfNilObject(v51);
        v67[2] = *MEMORY[0x1E696A578];
        v68[1] = v61;
        v68[2] = v4;
        v62 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v68 forKeys:v67 count:3];
        v63 = [v58 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:1 userInfo:v62];
        CCSetAndReportError(error, v63);

        sqlite3_close_v2(self->_handle);
        self->_handle = 0;

        goto LABEL_40;
      }
    }
  }

  [(NSMutableDictionary *)self->_cachedSQLiteStatements removeAllObjects];
LABEL_4:
  v5 = 1;
LABEL_41:

  return v5;
}

- (BOOL)closeWithError:(id *)error
{
  v18[3] = *MEMORY[0x1E69E9840];
  if (!self->_handle)
  {
    return 1;
  }

  [(NSMutableDictionary *)self->_cachedSQLiteStatements removeAllObjects];
  v5 = sqlite3_close_v2(self->_handle);
  v6 = v5 == 0;
  if (v5)
  {
    v7 = v5;
    v8 = sqlite3_extended_errcode(self->_handle);
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Failed to close database at path: %@", self->_path];
    v10 = MEMORY[0x1E696ABC0];
    v11 = *MEMORY[0x1E696A368];
    v18[0] = self->_path;
    v12 = *MEMORY[0x1E696AA08];
    v17[0] = v11;
    v17[1] = v12;
    v13 = _createSQLiteAPIErrorFromResultCode(v7, v8);
    v17[2] = *MEMORY[0x1E696A578];
    v18[1] = v13;
    v18[2] = v9;
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:3];
    v15 = [v10 errorWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v14];
    CCSetAndReportError(error, v15);
  }

  self->_handle = 0;
  return v6;
}

- (BOOL)_validateCommand:(id)command outError:(id *)error
{
  v29[2] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  v7 = commandCopy;
  if (!self->_handle)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v9 = MEMORY[0x1E696AEC0];
    v10 = _errorDescriptionForCommand(commandCopy);
    v11 = [v9 stringWithFormat:@"Database is not open. %@", v10];

    v12 = objc_alloc(MEMORY[0x1E696ABC0]);
    path = self->_path;
    v14 = *MEMORY[0x1E696A578];
    v28[0] = *MEMORY[0x1E696A368];
    v28[1] = v14;
    v29[0] = path;
    v29[1] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:v28 count:2];
    v16 = v12;
    v17 = 6;
LABEL_11:
    *error = [v16 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:v17 userInfo:v15];

    LOBYTE(error) = 0;
    goto LABEL_12;
  }

  if (!commandCopy)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v11 = _errorDescriptionForCommand(0);
    v18 = objc_alloc(MEMORY[0x1E696ABC0]);
    v19 = self->_path;
    v20 = *MEMORY[0x1E696A578];
    v26[0] = *MEMORY[0x1E696A368];
    v26[1] = v20;
    v27[0] = v19;
    v27[1] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v27 forKeys:v26 count:2];
    v16 = v18;
    v17 = 7;
    goto LABEL_11;
  }

  commandString = [commandCopy commandString];

  if (!commandString)
  {
    if (!error)
    {
      goto LABEL_12;
    }

    v11 = _errorDescriptionForCommand(v7);
    v21 = objc_alloc(MEMORY[0x1E696ABC0]);
    v22 = self->_path;
    v24[0] = *MEMORY[0x1E696A368];
    v24[1] = @"command";
    v25[0] = v22;
    v25[1] = v7;
    v24[2] = *MEMORY[0x1E696A578];
    v25[2] = v11;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:v24 count:3];
    v16 = v21;
    v17 = 8;
    goto LABEL_11;
  }

  LOBYTE(error) = 1;
LABEL_12:

  return error;
}

- (BOOL)_prepareSqliteStatement:(sqlite3_stmt *)statement usingCommand:(id)command outError:(id *)error
{
  v20[4] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  handle = self->_handle;
  commandString = [commandCopy commandString];
  v11 = sqlite3_prepare_v2(handle, [commandString UTF8String], 0x80000000, statement, 0);

  if (v11)
  {
    v12 = sqlite3_extended_errcode(self->_handle);
    if (statement)
    {
      sqlite3_finalize(*statement);
    }

    if (error)
    {
      v13 = _errorDescriptionForCommand(commandCopy);
      v14 = objc_alloc(MEMORY[0x1E696ABC0]);
      path = self->_path;
      v19[0] = *MEMORY[0x1E696A368];
      v19[1] = @"command";
      v20[0] = path;
      v20[1] = commandCopy;
      v19[2] = *MEMORY[0x1E696AA08];
      v16 = _createSQLiteAPIErrorFromResultCode(v11, v12);
      v19[3] = *MEMORY[0x1E696A578];
      v20[2] = v16;
      v20[3] = v13;
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:4];
      *error = [v14 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v17];
    }
  }

  return v11 == 0;
}

- (BOOL)_validateAndBindSqliteStatementParameters:(sqlite3_stmt *)parameters usingCommand:(id)command outError:(id *)error
{
  v41 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  parameters = [commandCopy parameters];
  v10 = [parameters count];
  v11 = sqlite3_bind_parameter_count(parameters);
  if ((v11 & 0x80000000) == 0 && v11 != v10)
  {
    if (error)
    {
      v12 = _errorDescriptionForCommand(commandCopy);
      v13 = objc_alloc(MEMORY[0x1E696ABC0]);
      path = self->_path;
      v34[0] = *MEMORY[0x1E696A368];
      v34[1] = @"command";
      v35[0] = path;
      v35[1] = commandCopy;
      v34[2] = *MEMORY[0x1E696A578];
      v35[2] = v12;
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:3];
      *error = [v13 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:9 userInfo:v15];
      goto LABEL_31;
    }

    goto LABEL_33;
  }

  if (!v10)
  {
LABEL_28:
    LOBYTE(error) = 1;
    goto LABEL_33;
  }

  v16 = 0;
  while (1)
  {
    v12 = [parameters objectAtIndex:{v16++, v30}];
    databaseValue_type = [v12 databaseValue_type];
    if (databaseValue_type <= 2)
    {
      break;
    }

    switch(databaseValue_type)
    {
      case 3:
        v19 = sqlite3_bind_int64(parameters, v16, [v12 databaseValue_integerRepresentation]);
        goto LABEL_25;
      case 4:
        v19 = sqlite3_bind_null(parameters, v16);
        goto LABEL_25;
      case 5:
        v19 = sqlite3_bind_text(parameters, v16, [v12 databaseValue_textRepresentation], -1, 0);
        goto LABEL_25;
    }

LABEL_20:

LABEL_27:
    if (v10 == v16)
    {
      goto LABEL_28;
    }
  }

  if (databaseValue_type)
  {
    if (databaseValue_type == 1)
    {
      *buf = 0;
      v23 = [v12 databaseValue_blobRepresentationWithLength:buf];
      if (*buf)
      {
        v19 = sqlite3_bind_blob64(parameters, v16, v23, *buf, 0);
      }

      else
      {
        v19 = sqlite3_bind_zeroblob(parameters, v16, 0);
      }

      goto LABEL_25;
    }

    if (databaseValue_type == 2)
    {
      [v12 databaseValue_doubleRepresentation];
      v19 = sqlite3_bind_double(parameters, v16, v18);
LABEL_25:
      v21 = v19;
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v20 = [v12 description];
  v21 = sqlite3_bind_text(parameters, v16, [v20 UTF8String], -1, 0);

  v22 = __biome_log_for_category();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v31 = [MEMORY[0x1E696AD98] numberWithInt:v16];
    v30 = [MEMORY[0x1E696AD98] numberWithInteger:0];
    *buf = 138412802;
    *&buf[4] = v12;
    v37 = 2112;
    v38 = v31;
    v39 = 2112;
    v40 = v30;
    _os_log_error_impl(&dword_1B6DB2000, v22, OS_LOG_TYPE_ERROR, "Bind parameter: %@ with unspecified type (sqlite_parameter_index: %@, valueType: %@)", buf, 0x20u);
  }

LABEL_26:
  if (!v21)
  {
    goto LABEL_27;
  }

  if (error)
  {
    v24 = sqlite3_extended_errcode(self->_handle);
    v15 = _errorDescriptionForCommand(commandCopy);
    v25 = objc_alloc(MEMORY[0x1E696ABC0]);
    v26 = self->_path;
    v32[0] = *MEMORY[0x1E696A368];
    v32[1] = @"command";
    v33[0] = v26;
    v33[1] = commandCopy;
    v32[2] = *MEMORY[0x1E696AA08];
    v27 = _createSQLiteAPIErrorFromResultCode(v21, v24);
    v32[3] = *MEMORY[0x1E696A578];
    v33[2] = v27;
    v33[3] = v15;
    v28 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:4];
    *error = [v25 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:2 userInfo:v28];

LABEL_31:
  }

  LOBYTE(error) = 0;
LABEL_33:

  return error;
}

- (id)_cachedOrPreparedStatementFromCommand:(id)command options:(unint64_t)options error:(id *)error
{
  optionsCopy = options;
  commandCopy = command;
  v24 = 0;
  v9 = 0;
  if ([(CCSQLiteDatabase *)self _validateCommand:commandCopy outError:error])
  {
    if ((optionsCopy & 2) != 0)
    {
      cachedSQLiteStatements = self->_cachedSQLiteStatements;
      commandString = [commandCopy commandString];
      v12 = [(NSMutableDictionary *)cachedSQLiteStatements objectForKey:commandString];

      if (v12)
      {
        stmt = [v12 stmt];
        if (!stmt || (v14 = stmt, sqlite3_reset(stmt)) || (v15 = sqlite3_clear_bindings(v14), v16 = v12, v15))
        {
          v16 = 0;
          v14 = 0;
        }

        v24 = v14;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v17 = v16;

      if (v14)
      {
        v18 = 0;
        goto LABEL_15;
      }
    }

    else
    {
      v17 = 0;
    }

    if (![(CCSQLiteDatabase *)self _prepareSqliteStatement:&v24 usingCommand:commandCopy outError:error])
    {
      v9 = 0;
      v18 = 0;
LABEL_25:

      goto LABEL_26;
    }

    v19 = [CCSQLitePreparedStatement alloc];
    v18 = [(CCSQLitePreparedStatement *)v19 initWithStmt:v24];
    v14 = v24;
LABEL_15:
    if ([(CCSQLiteDatabase *)self _validateAndBindSqliteStatementParameters:v14 usingCommand:commandCopy outError:error])
    {
      if ((optionsCopy & 2) != 0 && v18)
      {
        v20 = self->_cachedSQLiteStatements;
        commandString2 = [commandCopy commandString];
        [(NSMutableDictionary *)v20 setObject:v18 forKey:commandString2];
      }

      if (v18)
      {
        v22 = v18;
      }

      else
      {
        v22 = v17;
      }

      v9 = v22;
    }

    else
    {
      v9 = 0;
    }

    goto LABEL_25;
  }

LABEL_26:

  return v9;
}

- (id)enumerateCommand:(id)command options:(unint64_t)options
{
  v11 = 0;
  commandCopy = command;
  v7 = [(CCSQLiteDatabase *)self _cachedOrPreparedStatementFromCommand:commandCopy options:options error:&v11];
  v8 = v11;
  v9 = [[CCDatabaseEnumerationResult alloc] initWithStatement:v7 database:self command:commandCopy error:v8];

  return v9;
}

- (BOOL)executeCommand:(id)command options:(unint64_t)options error:(id *)error returningRowBlock:(id)block
{
  blockCopy = block;
  v11 = [(CCSQLiteDatabase *)self enumerateCommand:command options:options];
  nextRow = [v11 nextRow];
  error = [v11 error];

  if (error)
  {
    error2 = [v11 error];
    CCSetError(error, error2);
  }

  else if (blockCopy)
  {
    blockCopy[2](blockCopy, nextRow);
  }

  return error == 0;
}

- (BOOL)executeCommandString:(id)string error:(id *)error
{
  stringCopy = string;
  v7 = [[CCDatabaseCommand alloc] initWithCommandString:stringCopy parameters:0];

  LOBYTE(error) = [(CCSQLiteDatabase *)self executeCommand:v7 options:0 error:error returningRowBlock:0];
  return error;
}

- (int)rowsModified:(id *)modified
{
  v10[1] = *MEMORY[0x1E69E9840];
  handle = self->_handle;
  if (handle)
  {

    return sqlite3_changes(handle);
  }

  else
  {
    v6 = objc_alloc(MEMORY[0x1E696ABC0]);
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"Invalid sqlite handle.";
    v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v8 = [v6 initWithDomain:@"com.apple.CascadeSets.CCDatabase" code:6 userInfo:v7];

    CCSetError(modified, v8);
    return -1;
  }
}

- (void)openWithError:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithInt:a1];
  v4 = [MEMORY[0x1E696AD98] numberWithInt:a2];
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_3(&dword_1B6DB2000, v5, v6, "Failed to enable WAL journal_mode with errorCode: %@, extendedCode: %@", v7, v8, v9, v10);
}

@end