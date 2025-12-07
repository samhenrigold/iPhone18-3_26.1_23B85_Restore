@interface HFMultipleTransformItemProvider
- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)provider;
- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)provider multipleTransformationBlock:(id)block;
- (id)_subclass_transformItem:(id)item;
- (id)copyWithZone:(_NSZone *)zone;
- (id)invalidationReasons;
- (id)reloadItems;
@end

@implementation HFMultipleTransformItemProvider

- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)provider
{
  providerCopy = provider;
  v12.receiver = self;
  v12.super_class = HFMultipleTransformItemProvider;
  v6 = [(HFItemProvider *)&v12 init];
  if (v6)
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    transformedItems = v6->_transformedItems;
    v6->_transformedItems = dictionary;

    v9 = [MEMORY[0x277CBEB58] set];
    allItems = v6->_allItems;
    v6->_allItems = v9;

    objc_storeStrong(&v6->_sourceProvider, provider);
  }

  return v6;
}

- (HFMultipleTransformItemProvider)initWithSourceProvider:(id)provider multipleTransformationBlock:(id)block
{
  blockCopy = block;
  v7 = [(HFMultipleTransformItemProvider *)self initWithSourceProvider:provider];
  if (v7)
  {
    v8 = _Block_copy(blockCopy);
    transformationBlock = v7->_transformationBlock;
    v7->_transformationBlock = v8;
  }

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());
  sourceProvider = [(HFMultipleTransformItemProvider *)self sourceProvider];
  transformationBlock = [(HFMultipleTransformItemProvider *)self transformationBlock];
  v7 = [v4 initWithSourceProvider:sourceProvider multipleTransformationBlock:transformationBlock];

  return v7;
}

- (id)reloadItems
{
  sourceProvider = [(HFMultipleTransformItemProvider *)self sourceProvider];
  reloadItems = [sourceProvider reloadItems];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke;
  v7[3] = &unk_277DF6960;
  v7[4] = self;
  v5 = [reloadItems flatMap:v7];

  return v5;
}

id __46__HFMultipleTransformItemProvider_reloadItems__block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 addedItems];
  v5 = [v4 count];

  if (v5)
  {
    v6 = MEMORY[0x277CBEB58];
    v7 = [v3 addedItems];
    v8 = [v6 setWithCapacity:{objc_msgSend(v7, "count")}];

    v9 = [v3 addedItems];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_2;
    v48[3] = &unk_277DFB148;
    v48[4] = *(a1 + 32);
    v49 = v8;
    v10 = v8;
    [v9 na_each:v48];

    [v3 setAddedItems:v10];
  }

  v11 = [v3 existingItems];
  v12 = [v11 count];

  if (v12)
  {
    v13 = MEMORY[0x277CBEB58];
    v14 = [v3 existingItems];
    v15 = [v13 setWithCapacity:{objc_msgSend(v14, "count")}];

    v16 = [v3 existingItems];
    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_3;
    v45[3] = &unk_277DFB148;
    v17 = *(a1 + 32);
    v46 = v15;
    v47 = v17;
    v18 = v15;
    [v16 na_each:v45];

    [v3 setExistingItems:v18];
  }

  v19 = [v3 removedItems];
  v20 = [v19 count];

  if (v20)
  {
    v21 = MEMORY[0x277CBEB58];
    v22 = [v3 removedItems];
    v23 = [v21 setWithCapacity:{objc_msgSend(v22, "count")}];

    v24 = [v3 removedItems];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_4;
    v42[3] = &unk_277DFB148;
    v25 = *(a1 + 32);
    v43 = v23;
    v44 = v25;
    v26 = v23;
    [v24 na_each:v42];

    [v3 setRemovedItems:v26];
  }

  v27 = [*(a1 + 32) allItems];
  [v27 removeAllObjects];

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v28 = [*(a1 + 32) transformedItems];
  v29 = [v28 objectEnumerator];

  v30 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v30)
  {
    v31 = v30;
    v32 = *v39;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v39 != v32)
        {
          objc_enumerationMutation(v29);
        }

        v34 = *(*(&v38 + 1) + 8 * i);
        v35 = [*(a1 + 32) allItems];
        [v35 unionSet:v34];
      }

      v31 = [v29 countByEnumeratingWithState:&v38 objects:v50 count:16];
    }

    while (v31);
  }

  v36 = [MEMORY[0x277D2C900] futureWithResult:v3];

  return v36;
}

void __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v7 = [v3 _subclass_transformItem:v4];
  v5 = [*(a1 + 32) transformedItems];
  v6 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];

  [v5 setObject:v7 forKeyedSubscript:v6];
  [*(a1 + 40) unionSet:v7];
}

void __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v7 = [v3 transformedItems];
  v5 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:v4];

  v6 = [v7 objectForKeyedSubscript:v5];
  [v2 unionSet:v6];
}

void __46__HFMultipleTransformItemProvider_reloadItems__block_invoke_4(uint64_t a1, uint64_t a2)
{
  v7 = [MEMORY[0x277CCAE60] valueWithNonretainedObject:a2];
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) transformedItems];
  v5 = [v4 objectForKeyedSubscript:v7];
  [v3 unionSet:v5];

  v6 = [*(a1 + 40) transformedItems];
  [v6 removeObjectForKey:v7];
}

- (id)_subclass_transformItem:(id)item
{
  itemCopy = item;
  transformationBlock = [(HFMultipleTransformItemProvider *)self transformationBlock];

  if (!transformationBlock)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HFMultipleTransformItemProvider.m" lineNumber:98 description:{@"Invalid parameter not satisfying: %@", @"self.transformationBlock"}];
  }

  transformationBlock2 = [(HFMultipleTransformItemProvider *)self transformationBlock];
  v8 = (transformationBlock2)[2](transformationBlock2, itemCopy);

  return v8;
}

- (id)invalidationReasons
{
  v8.receiver = self;
  v8.super_class = HFMultipleTransformItemProvider;
  invalidationReasons = [(HFItemProvider *)&v8 invalidationReasons];
  sourceProvider = [(HFMultipleTransformItemProvider *)self sourceProvider];
  invalidationReasons2 = [sourceProvider invalidationReasons];
  v6 = [invalidationReasons setByAddingObjectsFromSet:invalidationReasons2];

  return v6;
}

@end