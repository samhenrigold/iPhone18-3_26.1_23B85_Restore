@interface NSSQLiteIndexTrackingModel
+ (id)newModelForFrameworkVersion:(uint64_t)version;
+ (void)initialize;
+ (void)updateIndexStatistics:(uint64_t)statistics usingConnection:(void *)connection model:;
@end

@implementation NSSQLiteIndexTrackingModel

+ (void)initialize
{
  if (objc_opt_class() == self)
  {

    objc_opt_self();
  }
}

+ (id)newModelForFrameworkVersion:(uint64_t)version
{
  v1 = objc_opt_self();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__NSSQLiteIndexTrackingModel_newModelForFrameworkVersion___block_invoke;
  block[3] = &unk_1E6EC16F0;
  block[4] = v1;
  if (qword_1ED4BEBD8 != -1)
  {
    dispatch_once(&qword_1ED4BEBD8, block);
  }

  return _MergedGlobals_90;
}

uint64_t __58__NSSQLiteIndexTrackingModel_newModelForFrameworkVersion___block_invoke(uint64_t a1)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc_init(NSEntityDescription);
  v3 = objc_opt_self();
  [(NSEntityDescription *)v2 setName:NSStringFromClass(v3)];
  v7[0] = makeAttribute(@"indexName", 700);
  v7[1] = makeAttribute(@"executionCount", 300);
  v7[2] = makeAttribute(@"instructionCount", 300);
  v7[3] = makeAttribute(@"rowCount", 300);
  -[NSEntityDescription setProperties:](v2, "setProperties:", [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:4]);
  _MergedGlobals_90 = objc_alloc_init(NSManagedObjectModel);
  [_MergedGlobals_90 _setModelsReferenceIDOffset:{objc_msgSend(*(a1 + 32), "ancillaryEntityOffset")}];
  v6 = v2;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v6 count:1];
  [_MergedGlobals_90 setEntities:v4];
  return [_MergedGlobals_90 _setIsEditable:0];
}

+ (void)updateIndexStatistics:(uint64_t)statistics usingConnection:(void *)connection model:
{
  v30 = *MEMORY[0x1E69E9840];
  objc_opt_self();
  if (connection)
  {
    connection = connection[3];
  }

  v6 = objc_opt_class();
  v7 = [connection objectForKeyedSubscript:NSStringFromClass(v6)];
  v8 = v7;
  if (v7)
  {
    tableName = [v7 tableName];
    v9 = [objc_msgSend(v8[5] objectForKey:{@"executionCount", "columnName"}];
    v10 = [objc_msgSend(v8[5] objectForKey:{@"rowCount", "columnName"}];
    v11 = [objc_msgSend(v8[5] objectForKey:{@"instructionCount", "columnName"}];
    v20 = [objc_msgSend(v8[5] objectForKey:{@"indexName", "columnName"}];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    allValues = [a2 allValues];
    v13 = [allValues countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v13)
    {
      obj = allValues;
      v19 = *v25;
      do
      {
        v23 = v13;
        for (i = 0; i != v23; ++i)
        {
          if (*v25 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v15 = -[NSSQLiteStatement initWithEntity:sqlString:]([NSSQLiteStatement alloc], "initWithEntity:sqlString:", 0, objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], tableName, v9, v9, [*(*(&v24 + 1) + 8 * i) executionCount], v10, v10, objc_msgSend(*(*(&v24 + 1) + 8 * i), "rowCount"), v11, v11, objc_msgSend(*(*(&v24 + 1) + 8 * i), "instructionCount"), v20, objc_msgSend(objc_msgSend(*(*(&v24 + 1) + 8 * i), "indexName"), "uppercaseString")));
          [(NSSQLiteConnection *)statistics prepareAndExecuteSQLStatement:v15];
        }

        v13 = [obj countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v13);
    }
  }

  else
  {
    LogStream = _PFLogGetLogStream(17);
    if (os_log_type_enabled(LogStream, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18565F000, LogStream, OS_LOG_TYPE_ERROR, "CoreData: fault: Couldn't find NSSQLiteIndexStatistics entity\n", buf, 2u);
    }

    v17 = _PFLogGetLogStream(17);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      *buf = 0;
      _os_log_fault_impl(&dword_18565F000, v17, OS_LOG_TYPE_FAULT, "CoreData: Couldn't find NSSQLiteIndexStatistics entity", buf, 2u);
    }
  }
}

@end