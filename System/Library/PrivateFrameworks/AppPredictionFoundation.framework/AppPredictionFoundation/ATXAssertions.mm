@interface ATXAssertions
+ (void)assert:(BOOL)assert conditionName:(id)name withDescriptionString:(id)string;
+ (void)parameterAssert:(id)assert parameterName:(id)name descriptionString:(id)string;
@end

@implementation ATXAssertions

+ (void)parameterAssert:(id)assert parameterName:(id)name descriptionString:(id)string
{
  nameCopy = name;
  stringCopy = string;
  isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
  if (isInternalBuild)
  {
    if (!assert)
    {
      [ATXAssertions parameterAssert:a2 parameterName:self descriptionString:?];
    }
  }

  else
  {
    if (stringCopy)
    {
      v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:stringCopy arguments:&v14];
      v13 = __atxlog_handle_default(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        +[ATXAssertions parameterAssert:parameterName:descriptionString:];
      }
    }

    else
    {
      v12 = __atxlog_handle_default(isInternalBuild);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
      {
        [ATXAssertions parameterAssert:nameCopy parameterName:v12 descriptionString:?];
      }
    }
  }
}

+ (void)assert:(BOOL)assert conditionName:(id)name withDescriptionString:(id)string
{
  nameCopy = name;
  stringCopy = string;
  if (!stringCopy)
  {
    isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
    if (isInternalBuild)
    {
      goto LABEL_7;
    }

LABEL_12:
    v15 = __atxlog_handle_default(isInternalBuild);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      [ATXAssertions assert:nameCopy conditionName:v15 withDescriptionString:?];
    }

    v11 = 0;
    goto LABEL_15;
  }

  v16 = &v17;
  v11 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:stringCopy arguments:&v17];
  isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
  if ((isInternalBuild & 1) == 0)
  {
    if (v11)
    {
      v15 = __atxlog_handle_default(isInternalBuild);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
      {
        +[ATXAssertions assert:conditionName:withDescriptionString:];
      }

      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v11)
  {
    if (!assert)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      selfCopy = self;
      v15 = currentHandler;
      [currentHandler handleFailureInMethod:a2 object:selfCopy file:@"ATXAssertions.m" lineNumber:70 description:@"Condition %@ is unexpectedly false - %@", nameCopy, v11];
LABEL_15:

      goto LABEL_16;
    }

    goto LABEL_16;
  }

LABEL_7:
  if (!assert)
  {
    [(ATXAssertions *)a2 assert:self conditionName:nameCopy withDescriptionString:&v16];
    v11 = 0;
    v15 = v16;
    goto LABEL_15;
  }

  v11 = 0;
LABEL_16:
}

+ (void)parameterAssert:(uint64_t)a1 parameterName:(NSObject *)a2 descriptionString:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "%@ parameter is unexpectedly nil", &v2, 0xCu);
}

+ (void)parameterAssert:(uint64_t)a1 parameterName:(uint64_t)a2 descriptionString:.cold.3(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"ATXAssertions.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"parameter"}];
}

+ (void)assert:(uint64_t)a1 conditionName:(NSObject *)a2 withDescriptionString:.cold.2(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_fault_impl(&dword_226368000, a2, OS_LOG_TYPE_FAULT, "Condition %@ is unexpectedly false.", &v2, 0xCu);
}

+ (uint64_t)assert:(uint64_t)a3 conditionName:(void *)a4 withDescriptionString:.cold.3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = [MEMORY[0x277CCA890] currentHandler];
  *a4 = v8;
  return [v8 handleFailureInMethod:a1 object:a2 file:@"ATXAssertions.m" lineNumber:72 description:{@"Condition %@ is unexpectedly false.", a3}];
}

@end