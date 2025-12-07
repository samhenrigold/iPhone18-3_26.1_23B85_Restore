@interface WFShortcutsV5CustomModificationsStep
- (BOOL)performModificationsWithContext:(id)context error:(id *)error;
@end

@implementation WFShortcutsV5CustomModificationsStep

- (BOOL)performModificationsWithContext:(id)context error:(id *)error
{
  v42 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v6 = objc_autoreleasePoolPush();
  v7 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:@"Shortcut"];
  [v7 setFetchLimit:5];
  [v7 setPropertiesToFetch:&unk_1F4A9B548];
  v38 = 0;
  v28 = v7;
  v8 = [contextCopy executeFetchRequest:v7 error:&v38];
  v9 = v38;
  if (![v8 count])
  {
LABEL_13:

    objc_autoreleasePoolPop(v6);
    if (error)
    {
      v22 = v9;
      *error = v9;
    }

    v23 = v9 == 0;
    goto LABEL_19;
  }

  v10 = [MEMORY[0x1E695D5B8] entityForName:@"ShortcutActions" inManagedObjectContext:contextCopy];
  if (v10)
  {
    v11 = v10;
    errorCopy = error;
    v27 = v6;
    do
    {
      v30 = v9;
      v12 = contextCopy;
      context = objc_autoreleasePoolPush();
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      obj = v8;
      v13 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v35;
        do
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v35 != v15)
            {
              objc_enumerationMutation(obj);
            }

            v17 = *(*(&v34 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            v19 = [objc_alloc(MEMORY[0x1E695D620]) initWithEntity:v11 insertIntoManagedObjectContext:v12];
            v20 = [v17 valueForKey:@"actionsData"];
            [v19 setValue:v20 forKey:@"data"];
            [v17 setValue:v19 forKey:@"actions"];
            [v17 setValue:0 forKey:@"actionsData"];

            objc_autoreleasePoolPop(v18);
          }

          v14 = [obj countByEnumeratingWithState:&v34 objects:v39 count:16];
        }

        while (v14);
      }

      v33 = v30;
      contextCopy = v12;
      [v12 save:&v33];
      v21 = v33;

      [v12 reset];
      [v28 setFetchOffset:{objc_msgSend(v28, "fetchOffset") + objc_msgSend(v28, "fetchLimit")}];
      v32 = v21;
      v8 = [v12 executeFetchRequest:v28 error:&v32];
      v9 = v32;

      objc_autoreleasePoolPop(context);
    }

    while ([v8 count]);

    error = errorCopy;
    v6 = v27;
    goto LABEL_13;
  }

  v24 = getWFDatabaseLogObject();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
  {
    *buf = 136315138;
    v41 = "[WFShortcutsV5CustomModificationsStep performModificationsWithContext:error:]";
    _os_log_impl(&dword_1CA256000, v24, OS_LOG_TYPE_FAULT, "%s Couldn't make a ShortcutActions entity description", buf, 0xCu);
  }

  objc_autoreleasePoolPop(v6);
  v23 = 0;
LABEL_19:

  return v23;
}

@end