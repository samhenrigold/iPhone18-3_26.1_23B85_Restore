@interface LACUserInterfaceFrontBoardAdapter
+ (id)applicationOptionsForPayloadURL:(id)l softwareUpdate:(BOOL)update;
+ (id)applicationPayloadURLForBundleID:(id)d rootControllerName:(id)name parameters:(id)parameters;
@end

@implementation LACUserInterfaceFrontBoardAdapter

+ (id)applicationPayloadURLForBundleID:(id)d rootControllerName:(id)name parameters:(id)parameters
{
  v33 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  parametersCopy = parameters;
  v10 = objc_opt_new();
  [v10 setScheme:dCopy];
  [v10 setHost:nameCopy];
  if ([parametersCopy count])
  {
    v27 = dCopy;
    v11 = objc_opt_new();
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = parametersCopy;
    v12 = parametersCopy;
    v13 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v29;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v29 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v28 + 1) + 8 * i);
          v18 = objc_alloc(MEMORY[0x1E696AF60]);
          v19 = [v12 objectForKeyedSubscript:v17];
          v20 = [v18 initWithName:v17 value:v19];

          [v11 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v14);
    }

    [v10 setQueryItems:v11];
    dCopy = v27;
    parametersCopy = v26;
  }

  v21 = [v10 URL];
  v22 = v21;
  if (v21)
  {
    v23 = v21;
  }

  else
  {
    v23 = objc_opt_new();
  }

  v24 = v23;

  return v24;
}

+ (id)applicationOptionsForPayloadURL:(id)l softwareUpdate:(BOOL)update
{
  updateCopy = update;
  v15[6] = *MEMORY[0x1E69E9840];
  lCopy = l;
  if (objc_opt_class())
  {
    v14[0] = *MEMORY[0x1E699F978];
    v6 = [MEMORY[0x1E696AD98] numberWithBool:updateCopy];
    v15[0] = v6;
    v14[1] = *MEMORY[0x1E699F988];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:updateCopy];
    v8 = *MEMORY[0x1E699F9A8];
    v15[1] = v7;
    v15[2] = MEMORY[0x1E695E118];
    v9 = *MEMORY[0x1E699F8F0];
    v14[2] = v8;
    v14[3] = v9;
    v10 = *MEMORY[0x1E699F938];
    v15[3] = MEMORY[0x1E695E110];
    v15[4] = &unk_1F26936B8;
    v11 = *MEMORY[0x1E699F968];
    v14[4] = v10;
    v14[5] = v11;
    v15[5] = lCopy;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];
  }

  else
  {
    v12 = objc_opt_new();
  }

  return v12;
}

@end