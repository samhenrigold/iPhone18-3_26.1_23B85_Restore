@interface _ATXDeprecatedScoreInterpreter
- (NSSet)subscoreNames;
- (_ATXDeprecatedScoreInterpreter)initWithParseRoot:(id)root;
- (double)_evalVariable:(id)variable withCtx:(id)ctx;
- (id)evaluateWithInputScoreDict:(id)dict intentType:(id)type;
- (id)evaluateWithInputScores:(id)scores intentType:(id)type;
- (unint64_t)instructionCount;
- (void)_compileRoot:(id)root;
@end

@implementation _ATXDeprecatedScoreInterpreter

- (unint64_t)instructionCount
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  varPrograms = self->_varPrograms;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50___ATXDeprecatedScoreInterpreter_instructionCount__block_invoke;
  v5[3] = &unk_2785A08F8;
  v5[4] = &v6;
  [(NSDictionary *)varPrograms enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (NSSet)subscoreNames
{
  v3 = objc_alloc(MEMORY[0x277CBEB98]);
  allKeys = [(NSDictionary *)self->_varPrograms allKeys];
  v5 = [v3 initWithArray:allKeys];

  return v5;
}

- (_ATXDeprecatedScoreInterpreter)initWithParseRoot:(id)root
{
  rootCopy = root;
  v8.receiver = self;
  v8.super_class = _ATXDeprecatedScoreInterpreter;
  v5 = [(_ATXDeprecatedScoreInterpreter *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(_ATXDeprecatedScoreInterpreter *)v5 _compileRoot:rootCopy];
  }

  return v6;
}

- (void)_compileRoot:(id)root
{
  v37 = *MEMORY[0x277D85DE8];
  rootCopy = root;
  v19 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(rootCopy, "count")}];
  v18 = objc_opt_new();
  v17 = objc_opt_new();
  selfCopy = self;
  objc_initWeak(&location, self);
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v5 = rootCopy;
  v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
  if (v6)
  {
    v16 = *v32;
    do
    {
      v7 = 0;
      do
      {
        if (*v32 != v16)
        {
          objc_enumerationMutation(v5);
        }

        v8 = *(*(&v31 + 1) + 8 * v7);
        v25 = 0;
        v26 = &v25;
        v27 = 0x3042000000;
        v28 = __Block_byref_object_copy__94;
        v29 = __Block_byref_object_dispose__94;
        v30 = 0;
        aBlock[0] = MEMORY[0x277D85DD0];
        aBlock[1] = 3221225472;
        aBlock[2] = __47___ATXDeprecatedScoreInterpreter__compileRoot___block_invoke;
        aBlock[3] = &unk_2785A0A00;
        v21 = v18;
        v22 = v17;
        objc_copyWeak(&v24, &location);
        v23 = &v25;
        v9 = _Block_copy(aBlock);
        objc_storeWeak(v26 + 5, v9);
        WeakRetained = objc_loadWeakRetained(v26 + 5);
        v11 = [v5 objectForKeyedSubscript:v8];
        v12 = compiledExpressionInstructions(WeakRetained, v11);
        [v19 setObject:v12 forKeyedSubscript:v8];

        objc_destroyWeak(&v24);
        _Block_object_dispose(&v25, 8);
        objc_destroyWeak(&v30);
        ++v7;
      }

      while (v6 != v7);
      v6 = [v5 countByEnumeratingWithState:&v31 objects:v36 count:16];
    }

    while (v6);
  }

  v13 = [v19 copy];
  varPrograms = selfCopy->_varPrograms;
  selfCopy->_varPrograms = v13;

  objc_destroyWeak(&location);
}

- (double)_evalVariable:(id)variable withCtx:(id)ctx
{
  variableCopy = variable;
  ctxCopy = ctx;
  if (!variableCopy)
  {
    [_ATXDeprecatedScoreInterpreter _evalVariable:withCtx:];
  }

  v8 = [(NSDictionary *)self->_varPrograms objectForKeyedSubscript:variableCopy];
  if (!v8)
  {
    v9 = __atxlog_handle_default(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [_ATXDeprecatedScoreInterpreter _evalVariable:withCtx:];
    }

    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _evalVariable:withCtx:]"];
    [currentHandler handleFailureInFunction:v11 file:@"_ATXDeprecatedScoreInterpreter.m" lineNumber:649 description:{@"Invalid parameter not satisfying: %@", @"instructions"}];
  }

  v13 = runInstructionsAndPopResult(v8, ctxCopy);
  if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) >= 0x7FF0000000000000)
  {
    v14 = __atxlog_handle_default(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [_ATXDeprecatedScoreInterpreter _evalVariable:withCtx:];
    }
  }

  [ctxCopy[503] setScore:variableCopy forKey:v13];

  return v13;
}

- (id)evaluateWithInputScores:(id)scores intentType:(id)type
{
  v23 = *MEMORY[0x277D85DE8];
  scoresCopy = scores;
  typeCopy = type;
  v8 = [_ATXDeprecatedScoreInterpreterCtx alloc];
  v9 = [ATXScoreDict scoreDictFromDictionary:scoresCopy];
  v10 = [(_ATXDeprecatedScoreInterpreterCtx *)v8 initWithInputScores:v9 intentType:typeCopy];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v11 = self->_varPrograms;
  v12 = [(NSDictionary *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        [(_ATXDeprecatedScoreInterpreter *)self _evalVariable:*(*(&v18 + 1) + 8 * i) withCtx:v10, v18];
      }

      v13 = [(NSDictionary *)v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  toDictionary = [v10[503] toDictionary];

  return toDictionary;
}

- (id)evaluateWithInputScoreDict:(id)dict intentType:(id)type
{
  v22 = *MEMORY[0x277D85DE8];
  dictCopy = dict;
  typeCopy = type;
  v8 = [[_ATXDeprecatedScoreInterpreterCtx alloc] initWithInputScores:dictCopy intentType:typeCopy];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v9 = self->_varPrograms;
  v10 = [(NSDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v18;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v18 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(_ATXDeprecatedScoreInterpreter *)self _evalVariable:*(*(&v17 + 1) + 8 * i) withCtx:v8, v17];
      }

      v11 = [(NSDictionary *)v9 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v11);
  }

  subscores = v8->subscores;
  v15 = subscores;

  return subscores;
}

- (void)_evalVariable:withCtx:.cold.1()
{
  v7 = [MEMORY[0x277CCA890] currentHandler];
  v0 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[_ATXDeprecatedScoreInterpreter _evalVariable:withCtx:]"];
  [OUTLINED_FUNCTION_0_16(v0 v1];
}

@end