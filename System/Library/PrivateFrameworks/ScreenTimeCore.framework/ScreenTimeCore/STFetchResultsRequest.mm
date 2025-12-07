@interface STFetchResultsRequest
+ (id)requestWithFetchRequest:(id)request;
- (STFetchResultsRequest)initWithEntity:(id)entity predicate:(id)predicate sortDescriptors:(id)descriptors;
- (STFetchResultsRequest)initWithFetchRequest:(id)request;
- (id)description;
@end

@implementation STFetchResultsRequest

+ (id)requestWithFetchRequest:(id)request
{
  requestCopy = request;
  v5 = [[self alloc] initWithFetchRequest:requestCopy];

  return v5;
}

- (STFetchResultsRequest)initWithFetchRequest:(id)request
{
  requestCopy = request;
  entity = [requestCopy entity];
  predicate = [requestCopy predicate];
  sortDescriptors = [requestCopy sortDescriptors];

  v8 = [(STFetchResultsRequest *)self initWithEntity:entity predicate:predicate sortDescriptors:sortDescriptors];
  return v8;
}

- (STFetchResultsRequest)initWithEntity:(id)entity predicate:(id)predicate sortDescriptors:(id)descriptors
{
  v34 = *MEMORY[0x1E69E9840];
  entityCopy = entity;
  predicateCopy = predicate;
  descriptorsCopy = descriptors;
  v31.receiver = self;
  v31.super_class = STFetchResultsRequest;
  v11 = [(STFetchResultsRequest *)&v31 init];
  if (v11)
  {
    v12 = MEMORY[0x1E695D5E0];
    name = [entityCopy name];
    v14 = [v12 fetchRequestWithEntityName:name];
    fetchRequest = v11->_fetchRequest;
    v11->_fetchRequest = v14;

    [(NSFetchRequest *)v11->_fetchRequest setPredicate:predicateCopy];
    if (descriptorsCopy)
    {
      [(NSFetchRequest *)v11->_fetchRequest setSortDescriptors:descriptorsCopy];
    }

    else
    {
      v25 = 0;
      v26 = &v25;
      v27 = 0x3032000000;
      v28 = __Block_byref_object_copy__7;
      v29 = __Block_byref_object_dispose__7;
      v30 = 0;
      attributesByName = [entityCopy attributesByName];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __66__STFetchResultsRequest_initWithEntity_predicate_sortDescriptors___block_invoke;
      v24[3] = &unk_1E7CE7690;
      v24[4] = &v25;
      [attributesByName enumerateKeysAndObjectsUsingBlock:v24];

      v17 = v26[5];
      if (!v17)
      {
        v18 = MEMORY[0x1E69E9C10];
        v19 = MEMORY[0x1E69E9C10];
        if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
        {
          name2 = [entityCopy name];
          [STFetchResultsRequest initWithEntity:name2 predicate:buf sortDescriptors:?];
        }

        v17 = v26[5];
      }

      v21 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:v17 ascending:1];
      v32 = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v32 count:1];
      [(NSFetchRequest *)v11->_fetchRequest setSortDescriptors:v22];

      _Block_object_dispose(&v25, 8);
    }
  }

  return v11;
}

void __66__STFetchResultsRequest_initWithEntity_predicate_sortDescriptors___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v8 = [a3 attributeType];
  if (v8 > 599)
  {
    if (v8 <= 799)
    {
      if (v8 == 600 || v8 == 700)
      {
        goto LABEL_17;
      }
    }

    else if (v8 == 800 || v8 == 1000 || v8 == 900)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (v8 > 299)
    {
      if (v8 != 300 && v8 != 400 && v8 != 500)
      {
        goto LABEL_18;
      }

LABEL_17:
      objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
      *a4 = 1;
      goto LABEL_18;
    }

    if (v8 == 100 || v8 == 200)
    {
      goto LABEL_17;
    }
  }

LABEL_18:
}

- (id)description
{
  fetchRequest = [(STFetchResultsRequest *)self fetchRequest];
  v4 = MEMORY[0x1E696AEC0];
  v10.receiver = self;
  v10.super_class = STFetchResultsRequest;
  v5 = [(STFetchResultsRequest *)&v10 description];
  entityName = [fetchRequest entityName];
  predicate = [fetchRequest predicate];
  v8 = [v4 stringWithFormat:@"%@ fetch %@: %@", v5, entityName, predicate];

  return v8;
}

- (void)initWithEntity:(void *)a1 predicate:(uint8_t *)buf sortDescriptors:.cold.1(void *a1, uint8_t *buf)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_fault_impl(&dword_1B831F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "no sort key found for %{pubic}@", buf, 0xCu);
}

@end