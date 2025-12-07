@interface BKSInsecureDrawingAction
- (BKSInsecureDrawingAction)initWithPidToContextIdsDictionary:(id)dictionary;
- (BKSInsecureDrawingAction)initWithSecureModeViolations:(id)violations;
- (NSArray)processIds;
- (NSArray)secureModeViolations;
- (NSDictionary)pidToContextInfoDictionary;
- (id)_initWithPidToContextInfoDictionary:(id)dictionary;
- (id)keyDescriptionForSetting:(unint64_t)setting;
@end

@implementation BKSInsecureDrawingAction

- (id)keyDescriptionForSetting:(unint64_t)setting
{
  if (setting == 1)
  {
    v5 = @"pidToContextInfoDictionary";
  }

  else
  {
    v8 = v3;
    v9 = v4;
    v7.receiver = self;
    v7.super_class = BKSInsecureDrawingAction;
    v5 = [(BKSInsecureDrawingAction *)&v7 keyDescriptionForSetting:?];
  }

  return v5;
}

- (NSArray)processIds
{
  pidToContextInfoDictionary = [(BKSInsecureDrawingAction *)self pidToContextInfoDictionary];
  allKeys = [pidToContextInfoDictionary allKeys];

  return allKeys;
}

- (NSDictionary)pidToContextInfoDictionary
{
  info = [(BKSInsecureDrawingAction *)self info];
  v3 = [info objectForSetting:?];

  return v3;
}

- (NSArray)secureModeViolations
{
  v3 = objc_opt_new();
  pidToContextInfoDictionary = [(BKSInsecureDrawingAction *)self pidToContextInfoDictionary];
  v5 = v3;
  [pidToContextInfoDictionary enumerateKeysAndObjectsUsingBlock:?];

  return v5;
}

void __48__BKSInsecureDrawingAction_secureModeViolations__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [BKSSecureModeViolation alloc];
  v8 = [v6 allKeys];
  v9 = [BKSSecureModeViolation initWithProcessId:v7 contextIds:"initWithProcessId:contextIds:"];

  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  [v6 enumerateKeysAndObjectsUsingBlock:?];
  if (*(v11 + 24) == 1)
  {
    [(BKSSecureModeViolation *)v9 setLayerNamesByContext:?];
  }

  [*(a1 + 32) addObject:?];
  _Block_object_dispose(&v10, 8);
}

void *__48__BKSInsecureDrawingAction_secureModeViolations__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (id)_initWithPidToContextInfoDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"pidToContextInfoDictionary" object:? file:? lineNumber:? description:?];
  }

  v5 = objc_alloc_init(MEMORY[0x1E698E700]);
  [v5 setObject:? forSetting:?];
  v9.receiver = self;
  v9.super_class = BKSInsecureDrawingAction;
  v6 = [(BKSInsecureDrawingAction *)&v9 initWithInfo:v5 responder:0];

  return v6;
}

- (BKSInsecureDrawingAction)initWithSecureModeViolations:(id)violations
{
  violationsCopy = violations;
  if (!violationsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"secureModeViolations" object:? file:? lineNumber:? description:?];
  }

  selfCopy = self;
  v22 = objc_alloc_init(MEMORY[0x1E695DF90]);
  obj = violationsCopy;
  v23 = [obj countByEnumeratingWithState:? objects:? count:?];
  if (v23)
  {
    v21 = MEMORY[0];
    do
    {
      v5 = 0;
      do
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(obj);
        }

        v25 = v5;
        v6 = *(8 * v5);
        processId = [v6 processId];
        v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
        layerNamesByContext = [v6 layerNamesByContext];
        contextIds = [v6 contextIds];
        v10 = [contextIds countByEnumeratingWithState:? objects:? count:?];
        if (v10)
        {
          v11 = v10;
          v12 = MEMORY[0];
          do
          {
            for (i = 0; i != v11; i = (i + 1))
            {
              if (MEMORY[0] != v12)
              {
                objc_enumerationMutation(contextIds);
              }

              v14 = [layerNamesByContext objectForKeyedSubscript:?];
              if (v14)
              {
                [v7 setObject:? forKeyedSubscript:?];
              }

              else
              {
                v15 = objc_alloc_init(MEMORY[0x1E695DFD8]);
                [v7 setObject:? forKeyedSubscript:?];
              }
            }

            v11 = [contextIds countByEnumeratingWithState:? objects:? count:?];
          }

          while (v11);
        }

        [v22 setObject:? forKeyedSubscript:?];
        v5 = v25 + 1;
      }

      while ((v25 + 1) != v23);
      v23 = [obj countByEnumeratingWithState:? objects:? count:?];
    }

    while (v23);
  }

  v16 = [(BKSInsecureDrawingAction *)selfCopy _initWithPidToContextInfoDictionary:?];
  return v16;
}

- (BKSInsecureDrawingAction)initWithPidToContextIdsDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  if (!dictionaryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:@"pidToContextIdsDictionary" object:? file:? lineNumber:? description:?];
  }

  selfCopy = self;
  v5 = objc_alloc(MEMORY[0x1E695DF90]);
  [dictionaryCopy count];
  v22 = [v5 initWithCapacity:?];
  v6 = [MEMORY[0x1E695DFD8] set];
  v7 = dictionaryCopy;
  v8 = [v7 countByEnumeratingWithState:? objects:? count:?];
  if (v8)
  {
    v9 = v8;
    v21 = MEMORY[0];
    do
    {
      for (i = 0; i != v9; i = (i + 1))
      {
        if (MEMORY[0] != v21)
        {
          objc_enumerationMutation(v7);
        }

        v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v12 = [v7 objectForKeyedSubscript:?];
        v13 = [v12 countByEnumeratingWithState:? objects:? count:?];
        if (v13)
        {
          v14 = v13;
          v15 = MEMORY[0];
          do
          {
            for (j = 0; j != v14; j = (j + 1))
            {
              if (MEMORY[0] != v15)
              {
                objc_enumerationMutation(v12);
              }

              [v11 setObject:? forKeyedSubscript:?];
            }

            v14 = [v12 countByEnumeratingWithState:? objects:? count:?];
          }

          while (v14);
        }

        [v22 setObject:? forKeyedSubscript:?];
      }

      v9 = [v7 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v9);
  }

  v17 = [(BKSInsecureDrawingAction *)selfCopy _initWithPidToContextInfoDictionary:?];
  return v17;
}

@end