@interface EMSearchableIndexUserQuery
- (EMSearchableIndexUserQuery)initWithExpression:(id)expression builder:(id)builder;
@end

@implementation EMSearchableIndexUserQuery

- (EMSearchableIndexUserQuery)initWithExpression:(id)expression builder:(id)builder
{
  v28 = *MEMORY[0x1E69E9840];
  expressionCopy = expression;
  builderCopy = builder;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke;
  aBlock[3] = &unk_1E826F970;
  v8 = expressionCopy;
  v22 = v8;
  selfCopy = self;
  v23 = selfCopy;
  v10 = _Block_copy(aBlock);
  updatedSuggestion = [v8 updatedSuggestion];
  v12 = updatedSuggestion;
  if (updatedSuggestion)
  {
    emptySuggestion = updatedSuggestion;
  }

  else
  {
    emptySuggestion = [MEMORY[0x1E6964EA8] emptySuggestion];
  }

  v14 = emptySuggestion;

  v15 = [MEMORY[0x1E6964ED0] userQueryContextWithCurrentSuggestion:v14];
  v16 = +[EMSearchableIndexQuery log];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    ef_publicDescription = [v8 ef_publicDescription];
    *buf = 138478083;
    v25 = ef_publicDescription;
    v26 = 2113;
    v27 = v15;
    _os_log_impl(&dword_1C6655000, v16, OS_LOG_TYPE_DEFAULT, "Setting user query with expression: %{private}@ context: %{private}@", buf, 0x16u);
  }

  v20.receiver = selfCopy;
  v20.super_class = EMSearchableIndexUserQuery;
  v18 = [(EMSearchableIndexQuery *)&v20 initWithExpression:v8 builder:builderCopy queryContext:v15 querySetup:v10];

  return v18;
}

id __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke(uint64_t a1, void *a2)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) searchString];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = &stru_1F45FD218;
  }

  [v3 setUserQuery:v6];

  [v3 setLowPriority:0];
  v7 = [*(a1 + 32) queryString];
  v18[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:1];
  [v3 setFilterQueries:v8];

  v9 = objc_alloc(MEMORY[0x1E6964EC8]);
  v10 = [*(a1 + 32) searchString];
  v11 = [v9 initWithUserQueryString:v10 queryContext:v3];

  v12 = [*(a1 + 40) embeddingBlock];
  if (v12)
  {
    objc_initWeak(&location, *(a1 + 40));
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke_2;
    v14[3] = &unk_1E826F948;
    objc_copyWeak(&v16, &location);
    v15 = v12;
    [v11 setAttributedQueryHandler:v14];

    objc_destroyWeak(&v16);
    objc_destroyWeak(&location);
  }

  [*(a1 + 40) setEmbeddingBlock:0];

  return v11;
}

void __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke_2(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained query];
    v7 = [v6 queryContext];
    v8 = [v7 queryEmbedding];

    v9 = +[EMSearchableIndexQuery log];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 logPrefixString];
      *buf = 138543874;
      v15 = v10;
      v16 = 1024;
      v17 = v8 != 0;
      v18 = 1024;
      v19 = [v3 isUnsafeQuery];
      _os_log_impl(&dword_1C6655000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ hasQueryEmbedding: %{BOOL}d, isUnsafeQuery: %{BOOL}d", buf, 0x18u);
    }

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__EMSearchableIndexUserQuery_initWithExpression_builder___block_invoke_486;
    v11[3] = &unk_1E826E770;
    v12 = *(a1 + 32);
    v13 = v8 != 0;
    [v5 _performClientWork:v11];
  }
}

@end