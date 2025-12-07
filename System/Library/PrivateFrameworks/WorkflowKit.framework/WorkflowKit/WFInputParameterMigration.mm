@interface WFInputParameterMigration
- (id)findActionProvidingInputToActionAtIndex:(unint64_t)index inWorkflow:(id)workflow reachedBeginning:(BOOL *)beginning inputActionIndex:(unint64_t *)actionIndex;
- (id)findGetVariableActionProvidingInputToActionAtIndex:(int64_t)index inWorkflow:(id)workflow;
- (id)inputSourceOfAction:(id)action inActions:(id)actions;
- (void)migrateLegacyInputVariablesInParameterDictionary:(id)dictionary toVariable:(id)variable;
- (void)migrateWorkflow;
- (void)recursivelyFindDictionaryWithKey:(id)key inArray:(id)array then:(id)then;
- (void)recursivelyFindDictionaryWithKey:(id)key inDictionary:(id)dictionary then:(id)then;
- (void)recursivelyFindDictionaryWithKey:(id)key inObject:(id)object then:(id)then;
@end

@implementation WFInputParameterMigration

- (void)migrateLegacyInputVariablesInParameterDictionary:(id)dictionary toVariable:(id)variable
{
  variableCopy = variable;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke;
  v8[3] = &unk_1E8378B98;
  v8[4] = self;
  v9 = variableCopy;
  v7 = variableCopy;
  [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:@"WFSerializationType" inDictionary:dictionary then:v8];
}

void __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke(uint64_t a1, uint64_t a2)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke_2;
  v4[3] = &unk_1E8378B70;
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  [v3 recursivelyFindDictionaryWithKey:@"Type" inDictionary:a2 then:v4];
}

void __89__WFInputParameterMigration_migrateLegacyInputVariablesInParameterDictionary_toVariable___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [v3 objectForKey:@"Type"];
  isEqualToString = objc_msgSend_isEqualToString_(v4);

  if (isEqualToString)
  {
    v6 = [*(a1 + 32) serializedRepresentation];
    v7 = objc_opt_class();
    v8 = v6;
    if (v8 && (objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = getWFGeneralLogObject();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        v12 = 136315906;
        v13 = "WFEnforceClass";
        v14 = 2114;
        v15 = v8;
        v16 = 2114;
        v17 = objc_opt_class();
        v18 = 2114;
        v19 = v7;
        v11 = v17;
        _os_log_impl(&dword_1CA256000, v10, OS_LOG_TYPE_FAULT, "%s WFInputParameterMigration failed to open record with error: %{public}@", &v12, 0x2Au);
      }

      v9 = 0;
    }

    else
    {
      v9 = v8;
    }

    [v3 setDictionary:v9];
  }
}

- (void)recursivelyFindDictionaryWithKey:(id)key inArray:(id)array then:(id)then
{
  v20 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  arrayCopy = array;
  thenCopy = then;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v11 = [arrayCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v16;
    do
    {
      v14 = 0;
      do
      {
        if (*v16 != v13)
        {
          objc_enumerationMutation(arrayCopy);
        }

        [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:keyCopy inObject:*(*(&v15 + 1) + 8 * v14++) then:thenCopy];
      }

      while (v12 != v14);
      v12 = [arrayCopy countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v12);
  }
}

- (void)recursivelyFindDictionaryWithKey:(id)key inDictionary:(id)dictionary then:(id)then
{
  v23 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  dictionaryCopy = dictionary;
  thenCopy = then;
  v11 = [dictionaryCopy objectForKey:keyCopy];
  if (v11)
  {
    thenCopy[2](thenCopy, dictionaryCopy);
  }

  else
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = dictionaryCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = [v12 objectForKey:{*(*(&v18 + 1) + 8 * i), v18}];
          [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:keyCopy inObject:v17 then:thenCopy];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }
}

- (void)recursivelyFindDictionaryWithKey:(id)key inObject:(id)object then:(id)then
{
  keyCopy = key;
  objectCopy = object;
  thenCopy = then;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:keyCopy inDictionary:objectCopy then:thenCopy];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [(WFInputParameterMigration *)self recursivelyFindDictionaryWithKey:keyCopy inArray:objectCopy then:thenCopy];
    }
  }
}

- (id)findGetVariableActionProvidingInputToActionAtIndex:(int64_t)index inWorkflow:(id)workflow
{
  workflowCopy = workflow;
  v7 = workflowCopy;
  v8 = 0;
  if (index && index != 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = index - 1;
    actions = [workflowCopy actions];
    v11 = [actions objectAtIndex:index - 1];

    identifier = [v11 identifier];
    isEqualToString = objc_msgSend_isEqualToString_(identifier);

    if (isEqualToString)
    {
      v8 = v11;
    }

    else if ([v11 inputPassthrough])
    {
      v14 = [(WFInputParameterMigration *)self findActionProvidingInputToActionAtIndex:v9 inWorkflow:v7 reachedBeginning:0 inputActionIndex:0];
      identifier2 = [v14 identifier];
      v16 = objc_msgSend_isEqualToString_(identifier2);

      v8 = 0;
      if (v16)
      {
        v8 = v14;
      }
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (id)findActionProvidingInputToActionAtIndex:(unint64_t)index inWorkflow:(id)workflow reachedBeginning:(BOOL *)beginning inputActionIndex:(unint64_t *)actionIndex
{
  workflowCopy = workflow;
  v9 = objc_alloc(MEMORY[0x1E695DFB8]);
  actions = [workflowCopy actions];
  v11 = [v9 initWithArray:actions];

  v12 = [v11 objectAtIndex:index];
  v13 = objc_opt_new();
  while (1)
  {
    v14 = objc_autoreleasePoolPush();
    v15 = [v11 indexOfObject:v12];
    if (v15 == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_13;
    }

    v16 = v15;
    if (!v15)
    {
      if (beginning)
      {
        v17 = 0;
        *beginning = 1;
        goto LABEL_14;
      }

      goto LABEL_13;
    }

    if ([v13 containsObject:v12])
    {
      goto LABEL_13;
    }

    [v13 addObject:v12];
    v17 = [(WFInputParameterMigration *)self inputSourceOfAction:v12 inActions:v11];
    if (!v17 || (v18 = [v11 indexOfObject:v17], v18 == v16 - 1) && (objc_msgSend(v12, "legacyBehaviorIgnoresOutputFromAction:inWorkflow:", v17, workflowCopy) & 1) != 0)
    {

LABEL_13:
      v17 = 0;
      goto LABEL_14;
    }

    v19 = [[WFInputMigrationUUIDProvider alloc] initWithAction:v17 atPosition:v18];
    v20 = [v17 outputVariableWithVariableProvider:v12 UUIDProvider:v19];

    if (v20)
    {
      break;
    }

    objc_autoreleasePoolPop(v14);
    v12 = v17;
  }

  if (actionIndex)
  {
    *actionIndex = v18;
  }

LABEL_14:
  objc_autoreleasePoolPop(v14);

  return v17;
}

- (id)inputSourceOfAction:(id)action inActions:(id)actions
{
  actionCopy = action;
  actionsCopy = actions;
  v7 = [actionsCopy indexOfObject:actionCopy];
  v8 = 0;
  if (!v7)
  {
    goto LABEL_22;
  }

  v9 = v7;
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_22;
  }

  v10 = actionCopy;
  if (!v10 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
  {

    v10 = 0;
    goto LABEL_20;
  }

  if ([v10 mode] != 1)
  {
LABEL_20:
    v8 = [actionsCopy objectAtIndex:v9 - 1];
    goto LABEL_21;
  }

  while (1)
  {
    v11 = [actionsCopy objectAtIndex:v9];
    if (v11)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v12 = v11;
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v12 = 0;
    }

    v8 = v12;

    if ([v8 mode])
    {
      goto LABEL_18;
    }

    groupingIdentifier = [v8 groupingIdentifier];
    groupingIdentifier2 = [v10 groupingIdentifier];
    v15 = groupingIdentifier;
    v16 = groupingIdentifier2;
    v17 = v16;
    if (v15 == v16)
    {
      break;
    }

    if (v15 && v16)
    {
      isEqualToString = objc_msgSend_isEqualToString_(v15);

      if (isEqualToString)
      {
        goto LABEL_21;
      }
    }

    else
    {
    }

LABEL_18:
    --v9;
  }

LABEL_21:
LABEL_22:

  return v8;
}

- (void)migrateWorkflow
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = [WFWorkflowFile alloc];
  workflow = [(WFWorkflowMigration *)self workflow];
  v5 = [(WFWorkflowFile *)v3 initWithDictionary:workflow name:@"Migrating Workflow" performMigration:0];

  v40 = 0;
  v6 = [(WFWorkflowFile *)v5 recordRepresentationWithError:&v40];
  v7 = v40;
  if (v6)
  {
    v39 = v7;
    v8 = [[WFWorkflow alloc] initWithRecord:v6 reference:0 storageProvider:0 migrateIfNecessary:0 environment:0 error:&v39];
    v9 = v39;

    if (v8)
    {
      v30 = v9;
      v32 = v6;
      v33 = v5;
      v10 = objc_alloc_init(MEMORY[0x1E696AD50]);
      actions = [(WFWorkflow *)v8 actions];
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __44__WFInputParameterMigration_migrateWorkflow__block_invoke;
      v34[3] = &unk_1E837F848;
      v12 = actions;
      v35 = v12;
      selfCopy = self;
      v31 = v8;
      v37 = v8;
      v29 = v10;
      v38 = v29;
      [(WFWorkflow *)v37 performBatchOperation:v34];
      v13 = objc_alloc_init(MEMORY[0x1E696AD50]);
      if ([v12 count])
      {
        v14 = 0;
        do
        {
          v15 = [v12 objectAtIndex:v14];
          actions2 = [(WFWorkflowMigration *)self actions];
          v17 = [actions2 objectAtIndex:v14];

          actionIdentifierKey = [(WFWorkflowMigration *)self actionIdentifierKey];
          v19 = [v17 objectForKey:actionIdentifierKey];

          actionParametersKey = [(WFWorkflowMigration *)self actionParametersKey];
          v21 = [v17 objectForKey:actionParametersKey];

          uUID = [v15 UUID];

          if (uUID)
          {
            uUID2 = [v15 UUID];
            [v21 setObject:uUID2 forKey:@"UUID"];
          }

          if (objc_msgSend_isEqualToString_(v19))
          {
            [v13 addIndex:v14];
          }

          ++v14;
        }

        while (v14 < [v12 count]);
      }

      [v13 removeIndexes:v29];
      if ([v13 count])
      {
        actions3 = [(WFWorkflowMigration *)self actions];
        [actions3 removeObjectsAtIndexes:v13];
      }

      [(WFWorkflowMigration *)self finish];

      v6 = v32;
      v5 = v33;
      v9 = v30;
      v8 = v31;
    }

    else
    {
      v27 = getWFWorkflowMigrationLogObject();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        localizedDescription = [v9 localizedDescription];
        *buf = 136315394;
        v42 = "[WFInputParameterMigration migrateWorkflow]";
        v43 = 2114;
        v44 = localizedDescription;
        _os_log_impl(&dword_1CA256000, v27, OS_LOG_TYPE_FAULT, "%s WFInputParameterMigration failed to open workflow with error: %{public}@", buf, 0x16u);
      }

      [(WFWorkflowMigration *)self finish];
    }

    v7 = v9;
  }

  else
  {
    v25 = getWFWorkflowMigrationLogObject();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
    {
      localizedDescription2 = [v7 localizedDescription];
      *buf = 136315394;
      v42 = "[WFInputParameterMigration migrateWorkflow]";
      v43 = 2114;
      v44 = localizedDescription2;
      _os_log_impl(&dword_1CA256000, v25, OS_LOG_TYPE_FAULT, "%s WFInputParameterMigration failed to open record with error: %{public}@", buf, 0x16u);
    }

    [(WFWorkflowMigration *)self finish];
  }
}

void *__44__WFInputParameterMigration_migrateWorkflow__block_invoke(id *a1)
{
  v1 = a1;
  v58 = *MEMORY[0x1E69E9840];
  result = [a1[4] count];
  if (result)
  {
    v3 = 0;
    v42 = *MEMORY[0x1E69E1458];
    v39 = sel_initWithVariable_;
    v40 = v1;
    v4 = &off_1E836E000;
    while (1)
    {
      v5 = objc_autoreleasePoolPush();
      v6 = [v1[4] objectAtIndex:v3];
      v7 = [v6 identifier];
      isEqualToString = objc_msgSend_isEqualToString_(v7);

      if (isEqualToString)
      {
        v48 = objc_opt_class();
        v9 = @"WFInput";
      }

      else
      {
        v10 = [v6 inputParameter];
        v9 = [v10 keyForSerialization];
        v48 = [v10 stateClass];
      }

      v11 = [v1[5] actions];
      v12 = [v11 objectAtIndex:v3];

      v13 = [v1[5] actionParametersKey];
      v49 = v12;
      v50 = [v12 objectForKey:v13];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) != 0 && [v6 inputPassthrough] && !v9)
      {
        v14 = [v1[5] findGetVariableActionProvidingInputToActionAtIndex:v3 inWorkflow:v1[6]];
        if (v14)
        {
          [v1[7] addIndex:{objc_msgSend(v1[4], "indexOfObject:", v14)}];
        }
      }

      v56 = 0;
      v55 = 0;
      v15 = [v1[5] findActionProvidingInputToActionAtIndex:v3 inWorkflow:v1[6] reachedBeginning:&v56 inputActionIndex:&v55];
      if (v15)
      {
        v16 = objc_alloc(v4[175]);
        v17 = [v16 initWithAction:v15 atPosition:v55];
        v18 = [v15 outputVariableWithVariableProvider:v6 UUIDProvider:v17];
      }

      else
      {
        v18 = 0;
      }

      if (v56 == 1)
      {
        break;
      }

LABEL_21:
      if (v18)
      {
        v47 = v5;
        if (v9 && v48)
        {
          v23 = [v50 objectForKeyedSubscript:v9];

          if ([v6 inputRequired])
          {
            if (!v23)
            {
              goto LABEL_40;
            }

LABEL_46:
            [v1[5] migrateLegacyInputVariablesInParameterDictionary:v50 toVariable:v18];
            v5 = v47;
            goto LABEL_47;
          }

          v41 = v23;
          v44 = v15;
          v46 = v9;
          v53 = 0u;
          v54 = 0u;
          v51 = 0u;
          v52 = 0u;
          v29 = [v6 containedVariables];
          v30 = [v29 countByEnumeratingWithState:&v51 objects:v57 count:16];
          if (v30)
          {
            v31 = v30;
            v32 = *v52;
            while (2)
            {
              for (i = 0; i != v31; ++i)
              {
                if (*v52 != v32)
                {
                  objc_enumerationMutation(v29);
                }

                v34 = [*(*(&v51 + 1) + 8 * i) UUID];
                v35 = [(WFVariable *)v18 UUID];
                v36 = objc_msgSend_isEqualToString_(v34);

                if (v36)
                {

                  v1 = v40;
                  v4 = &off_1E836E000;
                  v15 = v44;
                  v9 = v46;
                  goto LABEL_46;
                }
              }

              v31 = [v29 countByEnumeratingWithState:&v51 objects:v57 count:16];
              if (v31)
              {
                continue;
              }

              break;
            }
          }

          v1 = v40;
          v4 = &off_1E836E000;
          v15 = v44;
          v9 = v46;
          if (v41)
          {
            goto LABEL_46;
          }

LABEL_40:
          if ([(objc_class *)v48 instancesRespondToSelector:v39])
          {
            v37 = v15;
            v38 = [[v48 alloc] initWithVariable:v18];
            v24 = [v38 serializedRepresentation];

            v15 = v37;
          }

          else
          {
            v24 = 0;
          }

          [v50 setObject:v24 forKeyedSubscript:v9];
        }

        else
        {
          v24 = [v15 identifier];
          if (objc_msgSend_isEqualToString_(v24) && ![v6 inputPassthrough])
          {
            [v6 inputTypes];
            v25 = v4;
            v27 = v26 = v15;
            v28 = [v27 count];

            v15 = v26;
            v4 = v25;

            if (v28)
            {
              [v1[7] addIndex:{objc_msgSend(v1[4], "indexOfObject:", v15)}];
            }

            goto LABEL_46;
          }
        }

        goto LABEL_46;
      }

LABEL_47:

      objc_autoreleasePoolPop(v5);
      ++v3;
      result = [v1[4] count];
      if (v3 >= result)
      {
        return result;
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = [v1[6] workflowTypes];
      if (![v19 containsObject:v42])
      {
LABEL_20:

        goto LABEL_21;
      }

      [v1[6] effectiveInputClasses];
      v45 = v9;
      v21 = v20 = v5;
      v22 = [v6 inputContentClasses];
      v43 = [v6 canHandleInputOfContentClasses:v21 withSupportedClasses:v22 includingCoercedTypes:1];

      v4 = &off_1E836E000;
      v5 = v20;
      v9 = v45;

      if (!v43)
      {
        goto LABEL_21;
      }
    }

    v19 = v18;
    v18 = [[WFShortcutInputVariable alloc] initWithVariableProvider:v6 aggrandizements:0];
    goto LABEL_20;
  }

  return result;
}

@end