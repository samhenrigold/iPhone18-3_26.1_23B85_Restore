@interface CNContactStore(TUHandle)
- (id)tu_contactsByHandleForHandles:()TUHandle keyDescriptors:error:;
@end

@implementation CNContactStore(TUHandle)

- (id)tu_contactsByHandleForHandles:()TUHandle keyDescriptors:error:
{
  v63 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v55 = 0u;
  v56 = 0u;
  v57 = 0u;
  v58 = 0u;
  obj = v6;
  v41 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
  if (v41)
  {
    v39 = *v56;
    do
    {
      for (i = 0; i != v41; ++i)
      {
        if (*v56 != v39)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v55 + 1) + 8 * i);
        v10 = [MEMORY[0x1E695CD58] tu_contactHandlesForHandle:v9];
        v51 = 0u;
        v52 = 0u;
        v53 = 0u;
        v54 = 0u;
        v11 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v52;
          do
          {
            for (j = 0; j != v12; ++j)
            {
              if (*v52 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v51 + 1) + 8 * j);
              v16 = [v7 objectForKeyedSubscript:v15];
              if (v16)
              {
                v17 = v16;
                [v16 addObject:v9];
              }

              else
              {
                v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithObjects:{v9, 0}];
                [v7 setObject:v17 forKeyedSubscript:v15];
              }
            }

            v12 = [v10 countByEnumeratingWithState:&v51 objects:v61 count:16];
          }

          while (v12);
        }
      }

      v41 = [obj countByEnumeratingWithState:&v55 objects:v62 count:16];
    }

    while (v41);
  }

  allKeys = [v7 allKeys];
  v19 = [self tu_contactsByContactHandleForContactHandles:allKeys keyDescriptors:v33 error:a5];

  if (v19)
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    v50 = 0u;
    allKeys2 = [v19 allKeys];
    v40 = [allKeys2 countByEnumeratingWithState:&v47 objects:v60 count:16];
    if (v40)
    {
      v38 = *v48;
      do
      {
        v21 = 0;
        do
        {
          if (*v48 != v38)
          {
            objc_enumerationMutation(allKeys2);
          }

          v42 = v21;
          v22 = *(*(&v47 + 1) + 8 * v21);
          v23 = [v7 objectForKeyedSubscript:v22];
          v24 = v23;
          if (v23)
          {
            v45 = 0u;
            v46 = 0u;
            v43 = 0u;
            v44 = 0u;
            v25 = [v23 countByEnumeratingWithState:&v43 objects:v59 count:16];
            if (v25)
            {
              v26 = v25;
              v27 = *v44;
              do
              {
                for (k = 0; k != v26; ++k)
                {
                  if (*v44 != v27)
                  {
                    objc_enumerationMutation(v24);
                  }

                  v29 = *(*(&v43 + 1) + 8 * k);
                  v30 = [v19 objectForKeyedSubscript:v22];
                  [v20 setObject:v30 forKeyedSubscript:v29];
                }

                v26 = [v24 countByEnumeratingWithState:&v43 objects:v59 count:16];
              }

              while (v26);
            }
          }

          v21 = v42 + 1;
        }

        while (v42 + 1 != v40);
        v40 = [allKeys2 countByEnumeratingWithState:&v47 objects:v60 count:16];
      }

      while (v40);
    }
  }

  else
  {
    v20 = 0;
  }

  v31 = [v20 copy];

  return v31;
}

@end