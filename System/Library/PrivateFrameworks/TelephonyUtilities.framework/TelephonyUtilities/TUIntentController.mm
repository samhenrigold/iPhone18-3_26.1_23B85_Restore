@interface TUIntentController
+ (id)tu_INPersonHandleForTUHandle:(id)handle label:(id)label;
+ (id)tu_INPersonsFromHandle:(id)handle contacts:(id)contacts;
+ (int64_t)tu_INPersonHandleTypeForTUHandleType:(int64_t)type;
- (TUIntentController)initWithContactProvider:(id)provider;
- (id)personsByHandleForHandles:(id)handles;
- (id)startCallIntentByHandleForHandles:(id)handles capability:(int64_t)capability destinationType:(int64_t)type;
@end

@implementation TUIntentController

- (TUIntentController)initWithContactProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = TUIntentController;
  v6 = [(TUIntentController *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contactProvider, provider);
  }

  return v7;
}

- (id)personsByHandleForHandles:(id)handles
{
  v30[3] = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v6 = *MEMORY[0x1E695C330];
  v30[0] = *MEMORY[0x1E695C258];
  v30[1] = v6;
  descriptorForUsedKeys = [MEMORY[0x1E696ADF0] descriptorForUsedKeys];
  v30[2] = descriptorForUsedKeys;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:3];

  contactProvider = [(TUIntentController *)self contactProvider];
  v28 = 0;
  v23 = v8;
  v10 = [contactProvider tu_contactsByHandleForHandles:handlesCopy keyDescriptors:v8 error:&v28];
  v22 = v28;

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v11 = handlesCopy;
  v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = objc_opt_class();
        v18 = [v10 objectForKeyedSubscript:{v16, v22}];
        v19 = [v17 tu_INPersonsFromHandle:v16 contacts:v18];
        [v5 setObject:v19 forKeyedSubscript:v16];
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v13);
  }

  v20 = [v5 copy];

  return v20;
}

- (id)startCallIntentByHandleForHandles:(id)handles capability:(int64_t)capability destinationType:(int64_t)type
{
  v32 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(handlesCopy, "count")}];
  v9 = [(TUIntentController *)self personsByHandleForHandles:handlesCopy];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = handlesCopy;
  v10 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
  if (v10)
  {
    v11 = *v23;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v23 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = *(*(&v22 + 1) + 8 * i);
        v14 = [v9 objectForKeyedSubscript:v13];
        v27 = 0;
        v28 = &v27;
        v29 = 0x2050000000;
        v15 = getINStartCallIntentClass_softClass;
        v30 = getINStartCallIntentClass_softClass;
        if (!getINStartCallIntentClass_softClass)
        {
          v26[0] = MEMORY[0x1E69E9820];
          v26[1] = 3221225472;
          v26[2] = __getINStartCallIntentClass_block_invoke;
          v26[3] = &unk_1E7424CD8;
          v26[4] = &v27;
          __getINStartCallIntentClass_block_invoke(v26);
          v15 = v28[3];
        }

        v16 = v15;
        _Block_object_dispose(&v27, 8);
        v17 = [[v15 alloc] initWithCallRecordFilter:0 callRecordToCallBack:0 audioRoute:0 destinationType:type contacts:v14 callCapability:capability];
        if (v17)
        {
          [v21 setObject:v17 forKeyedSubscript:v13];
        }
      }

      v10 = [obj countByEnumeratingWithState:&v22 objects:v31 count:16];
    }

    while (v10);
  }

  v18 = [v21 copy];

  return v18;
}

+ (int64_t)tu_INPersonHandleTypeForTUHandleType:(int64_t)type
{
  if (type == 3)
  {
    return 1;
  }

  else
  {
    return 2 * (type == 2);
  }
}

+ (id)tu_INPersonHandleForTUHandle:(id)handle label:(id)label
{
  handleCopy = handle;
  labelCopy = label;
  v8 = [self tu_INPersonHandleTypeForTUHandleType:{objc_msgSend(handleCopy, "type")}];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2050000000;
  v9 = getINPersonHandleClass_softClass;
  v20 = getINPersonHandleClass_softClass;
  if (!getINPersonHandleClass_softClass)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __getINPersonHandleClass_block_invoke;
    v16[3] = &unk_1E7424CD8;
    v16[4] = &v17;
    __getINPersonHandleClass_block_invoke(v16);
    v9 = v18[3];
  }

  v10 = v9;
  _Block_object_dispose(&v17, 8);
  v11 = [v9 alloc];
  normalizedValue = [handleCopy normalizedValue];
  if (normalizedValue)
  {
    v13 = [v11 initWithValue:normalizedValue type:v8 label:labelCopy];
  }

  else
  {
    value = [handleCopy value];
    v13 = [v11 initWithValue:value type:v8 label:labelCopy];
  }

  return v13;
}

+ (id)tu_INPersonsFromHandle:(id)handle contacts:(id)contacts
{
  v45 = *MEMORY[0x1E69E9840];
  handleCopy = handle;
  contactsCopy = contacts;
  if (contactsCopy)
  {
    v7 = contactsCopy;
    v29 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(contactsCopy, "count", contactsCopy)}];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v7;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
    if (v8)
    {
      v30 = *v32;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v31 + 1) + 8 * i);
          v11 = [v10 tu_labeledValueForHandle:handleCopy];
          v12 = v11;
          if (v11)
          {
            v13 = v11;
            v40 = 0;
            v41 = &v40;
            v42 = 0x2020000000;
            v14 = getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr;
            v43 = getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr;
            if (!getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr)
            {
              v35 = MEMORY[0x1E69E9820];
              v36 = 3221225472;
              v37 = __getINPersonHandleLabelForCNLabeledValueSymbolLoc_block_invoke;
              v38 = &unk_1E7424CD8;
              v39 = &v40;
              v15 = IntentsLibrary();
              v16 = dlsym(v15, "INPersonHandleLabelForCNLabeledValue");
              *(v39[1] + 24) = v16;
              getINPersonHandleLabelForCNLabeledValueSymbolLoc_ptr = *(v39[1] + 24);
              v14 = v41[3];
            }

            _Block_object_dispose(&v40, 8);
            if (!v14)
            {
              +[TUIntentController tu_INPersonsFromHandle:contacts:];
            }

            v17 = v14(v13);
          }

          else
          {
            v17 = 0;
          }

          v18 = [objc_opt_class() tu_INPersonHandleForTUHandle:handleCopy label:v17];
          if (v10)
          {
            v19 = [MEMORY[0x1E696ADF0] componentsForContact:v10];
          }

          else
          {
            v19 = 0;
          }

          v20 = objc_alloc(getINPersonClass());
          identifier = [v10 identifier];
          v22 = [v20 initWithPersonHandle:v18 nameComponents:v19 displayName:0 image:0 contactIdentifier:identifier customIdentifier:0];

          if (v22)
          {
            [v29 addObject:v22];
          }
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v44 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v23 = [objc_opt_class() tu_INPersonHandleForTUHandle:handleCopy label:{0, 0}];
    v24 = [objc_alloc(getINPersonClass()) initWithPersonHandle:v23 nameComponents:0 displayName:0 image:0 contactIdentifier:0 customIdentifier:0];
    if (v24)
    {
      v29 = [MEMORY[0x1E695DF70] arrayWithObject:v24];
    }

    else
    {
      v29 = 0;
    }
  }

  v25 = [v29 copy];

  return v25;
}

+ (void)tu_INPersonsFromHandle:contacts:.cold.1()
{
  v0 = [MEMORY[0x1E696AAA8] currentHandler];
  v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"INPersonHandleLabel _INPersonHandleLabelForCNLabeledValue(CNLabeledValue *__strong)"];
  [v0 handleFailureInFunction:v1 file:@"TUIntentController.m" lineNumber:24 description:{@"%s", dlerror()}];

  __break(1u);
}

@end