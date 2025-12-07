@interface PFPersistentHistoryModel
@end

@implementation PFPersistentHistoryModel

void __58___PFPersistentHistoryModel__retainedTombstonesForEntity___block_invoke(void *a1, void *a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = [objc_msgSend(objc_msgSend(a1 "entityDescription")];
  if ([v5 isNSString])
  {
    v6 = [v5 componentsSeparatedByString:{@", "}];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v23;
      do
      {
        v10 = 0;
        do
        {
          if (*v23 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [a2 addObject:*(*(&v22 + 1) + 8 * v10++)];
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v22 objects:v27 count:16];
      }

      while (v8);
    }
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = [a1 attributeColumns];
  v12 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        v17 = objc_autoreleasePoolPush();
        if (v16 && v16[24] == 1 && [objc_msgSend(v16 "attributeDescription")])
        {
          [a2 addObject:{objc_msgSend(objc_msgSend(v16, "attributeDescription"), "_qualifiedName")}];
        }

        objc_autoreleasePoolPop(v17);
        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v13);
  }

  objc_autoreleasePoolPop(v4);
}

void *__57___PFPersistentHistoryModel__tombstonesColumnsForEntity___block_invoke(id *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = [objc_msgSend(objc_msgSend(objc_msgSend(a1 "entityDescription")];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v24;
    do
    {
      v8 = 0;
      do
      {
        if (*v24 != v7)
        {
          objc_enumerationMutation(v4);
        }

        if (a1)
        {
          v9 = [a1[5] objectForKey:*(*(&v23 + 1) + 8 * v8)];
        }

        else
        {
          v9 = 0;
        }

        [a2 addObject:{objc_msgSend(v9, "columnName")}];
        ++v8;
      }

      while (v6 != v8);
      v10 = [v4 countByEnumeratingWithState:&v23 objects:v28 count:16];
      v6 = v10;
    }

    while (v10);
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v11 = [objc_msgSend(objc_msgSend(a1 entityDescription];
  result = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (result)
  {
    v13 = result;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if ([v16 preservesValueInHistoryOnDeletion])
        {
          v17 = [v16 name];
          if (a1)
          {
            v18 = [a1[5] objectForKey:v17];
          }

          else
          {
            v18 = 0;
          }

          [a2 addObject:{objc_msgSend(v18, "columnName")}];
        }

        v15 = v15 + 1;
      }

      while (v13 != v15);
      result = [v11 countByEnumeratingWithState:&v19 objects:v27 count:16];
      v13 = result;
    }

    while (result);
  }

  return result;
}

@end