@interface NTFeedTransformationIncrementalPersonalizedDiversifiedLimit
- (NTFeedTransformationIncrementalPersonalizedDiversifiedLimit)init;
- (NTFeedTransformationIncrementalPersonalizedDiversifiedLimit)initWithFunctionProvider:(id)provider limit:(unint64_t)limit priorFeedItems:(id)items;
- (id)transformFeedItems:(id)items;
@end

@implementation NTFeedTransformationIncrementalPersonalizedDiversifiedLimit

- (NTFeedTransformationIncrementalPersonalizedDiversifiedLimit)init
{
  v16 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    v2 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Do not call method"];
    *buf = 136315906;
    v9 = "[NTFeedTransformationIncrementalPersonalizedDiversifiedLimit init]";
    v10 = 2080;
    v11 = "NTFeedTransformationIncrementalPersonalizedDiversifiedLimit.m";
    v12 = 1024;
    v13 = 25;
    v14 = 2114;
    v15 = v2;
    _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", buf, 0x26u);
  }

  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE658];
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[NTFeedTransformationIncrementalPersonalizedDiversifiedLimit init]"];
  v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];
  v7 = v6;

  objc_exception_throw(v6);
}

- (NTFeedTransformationIncrementalPersonalizedDiversifiedLimit)initWithFunctionProvider:(id)provider limit:(unint64_t)limit priorFeedItems:(id)items
{
  providerCopy = provider;
  itemsCopy = items;
  if (!providerCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationIncrementalPersonalizedDiversifiedLimit initWithFunctionProvider:limit:priorFeedItems:];
    if (itemsCopy)
    {
      goto LABEL_6;
    }
  }

  else if (itemsCopy)
  {
    goto LABEL_6;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationIncrementalPersonalizedDiversifiedLimit initWithFunctionProvider:limit:priorFeedItems:];
  }

LABEL_6:
  v17.receiver = self;
  v17.super_class = NTFeedTransformationIncrementalPersonalizedDiversifiedLimit;
  v10 = [(NTFeedTransformationIncrementalPersonalizedDiversifiedLimit *)&v17 init];
  if (v10)
  {
    v11 = [itemsCopy copy];
    priorFeedItems = v10->_priorFeedItems;
    v10->_priorFeedItems = v11;

    v13 = [itemsCopy count];
    limit = [MEMORY[0x277D31030] transformationWithFunctionProvider:providerCopy limit:v13 + limit];
    privateLimitTransformation = v10->_privateLimitTransformation;
    v10->_privateLimitTransformation = limit;
  }

  return v10;
}

- (id)transformFeedItems:(id)items
{
  itemsCopy = items;
  if (!itemsCopy && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationIncrementalPersonalizedDiversifiedLimit transformFeedItems:];
  }

  priorFeedItems = [(NTFeedTransformationIncrementalPersonalizedDiversifiedLimit *)self priorFeedItems];
  v6 = [MEMORY[0x277CBEA60] fc_arrayByAddingObjectsFromArray:itemsCopy toArray:priorFeedItems];
  privateLimitTransformation = [(NTFeedTransformationIncrementalPersonalizedDiversifiedLimit *)self privateLimitTransformation];
  v8 = [privateLimitTransformation transformFeedItems:v6];

  if (([v8 fc_containsObjectsAtFront:priorFeedItems] & 1) == 0 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    [NTFeedTransformationIncrementalPersonalizedDiversifiedLimit transformFeedItems:];
  }

  v9 = [v8 fc_arrayByRemovingObjectsInArray:priorFeedItems];

  return v9;
}

- (void)initWithFunctionProvider:limit:priorFeedItems:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "functionProvider"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)initWithFunctionProvider:limit:priorFeedItems:.cold.2()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "priorFeedItems"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)transformFeedItems:.cold.1()
{
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Invalid parameter not satisfying %s", "feedItems"];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_3(&dword_25BF21000, MEMORY[0x277D86220], v1, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", v2, v3, v4, v5, v6, v7);
}

- (void)transformFeedItems:.cold.2()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"private transformation must return the prior items at the start of the array"];
  v1 = 136315906;
  v2 = "[NTFeedTransformationIncrementalPersonalizedDiversifiedLimit transformFeedItems:]";
  v3 = 2080;
  v4 = "NTFeedTransformationIncrementalPersonalizedDiversifiedLimit.m";
  v5 = 1024;
  v6 = 57;
  v7 = 2114;
  v8 = v0;
  _os_log_error_impl(&dword_25BF21000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "*** Assertion failure (Identifier: catch-all) : %s %s:%d %{public}@", &v1, 0x26u);
}

@end