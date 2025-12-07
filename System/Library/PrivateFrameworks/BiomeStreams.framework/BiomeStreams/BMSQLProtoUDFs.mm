@interface BMSQLProtoUDFs
+ (void)_addEventClass:(Class)class toProtoRegistry:(id)registry;
+ (void)registerProtoUDFsWithDatabase:(id)database eventClasses:(id)classes error:(id *)error;
@end

@implementation BMSQLProtoUDFs

+ (void)_addEventClass:(Class)class toProtoRegistry:(id)registry
{
  v21 = *MEMORY[0x1E69E9840];
  registryCopy = registry;
  v7 = NSStringFromClass(class);
  v8 = [registryCopy objectForKeyedSubscript:v7];

  if (!v8)
  {
    protoFields = [(objc_class *)class protoFields];
    [registryCopy setObject:protoFields forKeyedSubscript:v7];

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    protoFields2 = [(objc_class *)class protoFields];
    v11 = [protoFields2 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v17;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v17 != v13)
          {
            objc_enumerationMutation(protoFields2);
          }

          v15 = *(*(&v16 + 1) + 8 * i);
          if ([v15 subMessageClass])
          {
            [self _addEventClass:objc_msgSend(v15 toProtoRegistry:{"subMessageClass"), registryCopy}];
          }
        }

        v12 = [protoFields2 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v12);
    }
  }
}

+ (void)registerProtoUDFsWithDatabase:(id)database eventClasses:(id)classes error:(id *)error
{
  v28 = *MEMORY[0x1E69E9840];
  databaseCopy = database;
  classesCopy = classes;
  v10 = objc_opt_new();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v11 = classesCopy;
  v12 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v24;
    do
    {
      v15 = 0;
      do
      {
        if (*v24 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [self _addEventClass:*(*(&v23 + 1) + 8 * v15++) toProtoRegistry:{v10, v23}];
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v23 objects:v27 count:16];
    }

    while (v13);
  }

  [databaseCopy registerFunctionWithName:@"biome_extract" numArgs:3 function:&__block_literal_global_2 userData:v10 error:error];
  v16 = bm_sqlite3_malloc(8);
  if (v16)
  {
    v17 = v16;
    objc_storeStrong(v16, v10);
    module_v2 = sqlite3_create_module_v2([databaseCopy db], "biome_each", &biome_each_module, v17, biome_each_vtab_destroy);
    if (error)
    {
      v19 = module_v2;
      if (module_v2)
      {
        v20 = [databaseCopy db];
        v21 = "Unable to create biome_each module";
        v22 = v19;
LABEL_14:
        *error = BMSQLDatabaseError(v22, v20, v21);
      }
    }
  }

  else if (error)
  {
    v20 = [databaseCopy db];
    v21 = "Unable to alloc memory for biome_each_vtab_metadata";
    v22 = 7;
    goto LABEL_14;
  }
}

id __67__BMSQLProtoUDFs_registerProtoUDFsWithDatabase_eventClasses_error___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v6 = a2;
  v7 = a3;
  v8 = [v6 objectAtIndexedSubscript:0];
  v9 = [MEMORY[0x1E695DFB0] null];

  if (v8 == v9)
  {
    v32 = 0;
    goto LABEL_23;
  }

  v10 = [v6 objectAtIndexedSubscript:1];
  v11 = [MEMORY[0x1E695DFB0] null];

  if (v10 == v11)
  {
    v33 = MEMORY[0x1E696ABC0];
    v50 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"biome_extract(): eventClassName is null"];
    v51 = v17;
    v34 = MEMORY[0x1E695DF20];
    v35 = &v51;
    v36 = &v50;
  }

  else
  {
    v12 = [v6 objectAtIndexedSubscript:2];
    v13 = [MEMORY[0x1E695DFB0] null];

    if (v12 != v13)
    {
      v14 = [v6 objectAtIndexedSubscript:0];
      v15 = [v6 objectAtIndexedSubscript:1];
      v16 = [v6 objectAtIndexedSubscript:2];
      v17 = v14;
      v18 = v15;
      v19 = BMFieldPathFromKeyPath(v16, v18, v7);
      v46 = v19;
      if (v19)
      {
        v20 = v19;
        v43 = v16;
        v44 = v18;
        v42 = a4;
        v45 = v7;
        v21 = v17;
        v53 = 0u;
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v22 = v20;
        v23 = [v22 countByEnumeratingWithState:&v53 objects:v52 count:16];
        if (v23)
        {
          v24 = v23;
          v25 = *v54;
          while (2)
          {
            v26 = 0;
            v27 = v21;
            do
            {
              if (*v54 != v25)
              {
                objc_enumerationMutation(v22);
              }

              v28 = *(*(&v53 + 1) + 8 * v26);
              v29 = [v28 number];
              v30 = [v28 type];
              v47 = 0;
              v21 = [_TtC12BiomeStreams23BMPoirotSchematizerShim searchValueIn:v27 withFieldNumber:v29 typeRawValue:v30 error:&v47];
              v31 = v47;

              if (v31)
              {
                v37 = v31;
                *v42 = v31;

                v32 = 0;
                goto LABEL_19;
              }

              ++v26;
              v27 = v21;
            }

            while (v24 != v26);
            v24 = [v22 countByEnumeratingWithState:&v53 objects:v52 count:16];
            if (v24)
            {
              continue;
            }

            break;
          }
        }

        v21 = v21;
        v32 = v21;
LABEL_19:
        v7 = v45;
        v38 = v43;
        v18 = v44;
      }

      else
      {
        v39 = MEMORY[0x1E696ABC0];
        *&v53 = *MEMORY[0x1E696A578];
        v21 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Field path is not valid: %@; eventClass: %@", v16, v18];
        v52[0] = v21;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v52 forKeys:&v53 count:1];
        v40 = v38 = v16;
        *a4 = [v39 errorWithDomain:@"BMSQLDatabaseErrorDomain" code:0 userInfo:v40];

        v32 = 0;
      }

      goto LABEL_22;
    }

    v33 = MEMORY[0x1E696ABC0];
    v48 = *MEMORY[0x1E696A578];
    v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"biome_extract(): key path is null"];
    v49 = v17;
    v34 = MEMORY[0x1E695DF20];
    v35 = &v49;
    v36 = &v48;
  }

  v18 = [v34 dictionaryWithObjects:v35 forKeys:v36 count:1];
  [v33 errorWithDomain:@"BMSQLDatabaseErrorDomain" code:0 userInfo:v18];
  *a4 = v32 = 0;
LABEL_22:

LABEL_23:

  return v32;
}

@end