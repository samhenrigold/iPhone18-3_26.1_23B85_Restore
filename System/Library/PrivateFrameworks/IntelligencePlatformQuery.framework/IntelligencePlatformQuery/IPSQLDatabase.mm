@interface IPSQLDatabase
- (BOOL)registerFunctionWithName:(id)name numArgs:(int)args function:(id)function error:(id *)error;
- (BOOL)registerFunctionWithName:(id)name numArgs:(int)args function:(id)function userData:(id)data error:(id *)error;
- (IPSQLDatabase)initWithBMSQL:(id)l databases:(id)databases sets:(id)sets useCase:(id)case error:(id *)error;
- (IPSQLDatabase)initWithStreams:(id)streams databases:(id)databases sets:(id)sets useCase:(id)case library:(id)library privileges:(id)privileges isColumnAccessLoggingEnabled:(BOOL)enabled error:(id *)self0;
- (id)executeWithQuery:(id)query error:(id *)error;
@end

@implementation IPSQLDatabase

- (IPSQLDatabase)initWithStreams:(id)streams databases:(id)databases sets:(id)sets useCase:(id)case library:(id)library privileges:(id)privileges isColumnAccessLoggingEnabled:(BOOL)enabled error:(id *)self0
{
  v15 = MEMORY[0x277CF1A88];
  privilegesCopy = privileges;
  libraryCopy = library;
  caseCopy = case;
  setsCopy = sets;
  databasesCopy = databases;
  streamsCopy = streams;
  v22 = [[v15 alloc] initWithStreams:streamsCopy library:libraryCopy privileges:privilegesCopy isColumnAccessLoggingEnabled:enabled error:error];

  v23 = [(IPSQLDatabase *)self initWithBMSQL:v22 databases:databasesCopy sets:setsCopy useCase:caseCopy error:error];
  return v23;
}

- (IPSQLDatabase)initWithBMSQL:(id)l databases:(id)databases sets:(id)sets useCase:(id)case error:(id *)error
{
  v56 = *MEMORY[0x277D85DE8];
  lCopy = l;
  databasesCopy = databases;
  setsCopy = sets;
  caseCopy = case;
  objc_storeStrong(&self->_bmsql, l);
  v39 = [(BMSQLDatabase *)self->_bmsql db];
  sqlite3_set_authorizer(v39, 0, 0);
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v15 = databasesCopy;
  v16 = [v15 countByEnumeratingWithState:&v48 objects:v55 count:16];
  obj = v15;
  if (v16)
  {
    v17 = v16;
    v18 = 0;
    v19 = *v49;
    while (2)
    {
      v20 = 0;
      v21 = v18;
      do
      {
        if (*v49 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v22 = *(*(&v48 + 1) + 8 * v20);
        bmsql = self->_bmsql;
        v47 = v21;
        v24 = [(BMSQLDatabase *)bmsql attachDatabaseWithResourceIdentifier:v22 useCase:caseCopy error:&v47];
        v18 = v47;

        if ((v24 & 1) == 0)
        {
          v25 = __biome_log_for_category();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
          {
            [IPSQLDatabase initWithBMSQL:v22 databases:v18 sets:v25 useCase:? error:?];
          }

          v26 = lCopy;
          v27 = obj;
          if (error)
          {
            v28 = v18;
            *error = v18;
          }

          selfCopy = 0;
          goto LABEL_26;
        }

        ++v20;
        v21 = v18;
      }

      while (v17 != v20);
      v15 = obj;
      v17 = [obj countByEnumeratingWithState:&v48 objects:v55 count:16];
      if (v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v18 = 0;
  }

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v38 = setsCopy;
  v30 = setsCopy;
  v31 = [v30 countByEnumeratingWithState:&v43 objects:v54 count:16];
  if (v31)
  {
    v32 = v31;
    v33 = *v44;
    do
    {
      for (i = 0; i != v32; ++i)
      {
        if (*v44 != v33)
        {
          objc_enumerationMutation(v30);
        }

        v35 = *(*(&v43 + 1) + 8 * i);
        v36 = __biome_log_for_category();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v53 = v35;
          _os_log_impl(&dword_254FFD000, v36, OS_LOG_TYPE_INFO, "IPSQL: Set (%@) is NOT attached, set support is NOT implemented!", buf, 0xCu);
        }
      }

      v32 = [v30 countByEnumeratingWithState:&v43 objects:v54 count:16];
    }

    while (v32);
  }

  sqlite3_set_authorizer(v39, MEMORY[0x277CF1B88], self->_bmsql);
  selfCopy = self;
  v26 = lCopy;
  v27 = obj;
  setsCopy = v38;
LABEL_26:

  return selfCopy;
}

- (id)executeWithQuery:(id)query error:(id *)error
{
  v5 = [(BMSQLDatabase *)self->_bmsql _executeQuery:query];
  error = [v5 error];

  if (error)
  {
    [v5 error];
    *error = v7 = 0;
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

- (BOOL)registerFunctionWithName:(id)name numArgs:(int)args function:(id)function error:(id *)error
{
  v7 = *&args;
  functionCopy = function;
  bmsql = self->_bmsql;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __65__IPSQLDatabase_registerFunctionWithName_numArgs_function_error___block_invoke;
  v14[3] = &unk_2797B65E0;
  v15 = functionCopy;
  v12 = functionCopy;
  LOBYTE(error) = [(BMSQLDatabase *)bmsql registerFunctionWithName:name numArgs:v7 function:v14 userData:0 error:error];

  return error;
}

- (BOOL)registerFunctionWithName:(id)name numArgs:(int)args function:(id)function userData:(id)data error:(id *)error
{
  v9 = *&args;
  functionCopy = function;
  bmsql = self->_bmsql;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __74__IPSQLDatabase_registerFunctionWithName_numArgs_function_userData_error___block_invoke;
  v16[3] = &unk_2797B65E0;
  v17 = functionCopy;
  v14 = functionCopy;
  LOBYTE(error) = [(BMSQLDatabase *)bmsql registerFunctionWithName:name numArgs:v9 function:v16 userData:data error:error];

  return error;
}

@end