@interface HFItemGroupItem
- (HFItemGroupItem)init;
- (HFItemGroupItem)initWithItems:(id)items;
- (id)_subclass_updateWithOptions:(id)options;
- (void)setItems:(id)items;
@end

@implementation HFItemGroupItem

- (HFItemGroupItem)init
{
  v6.receiver = self;
  v6.super_class = HFItemGroupItem;
  v2 = [(HFItemGroupItem *)&v6 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB98] set];
    items = v2->_items;
    v2->_items = v3;
  }

  return v2;
}

- (HFItemGroupItem)initWithItems:(id)items
{
  itemsCopy = items;
  v6 = [(HFItemGroupItem *)self init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_items, items);
  }

  return v7;
}

- (void)setItems:(id)items
{
  itemsCopy = items;
  if (self->_items != itemsCopy)
  {
    v6 = itemsCopy;
    objc_storeStrong(&self->_items, items);
    itemsCopy = v6;
  }
}

- (id)_subclass_updateWithOptions:(id)options
{
  optionsCopy = options;
  v5 = objc_alloc_init(MEMORY[0x277D2C900]);
  items = [(HFItemGroupItem *)self items];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke;
  v20[3] = &unk_277E027D0;
  v21 = optionsCopy;
  v7 = optionsCopy;
  v8 = [items na_map:v20];

  v9 = MEMORY[0x277D2C900];
  allObjects = [v8 allObjects];
  mainThreadScheduler = [MEMORY[0x277D2C938] mainThreadScheduler];
  v12 = [v9 combineAllFutures:allObjects ignoringErrors:1 scheduler:mainThreadScheduler];

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_2;
  v18[3] = &unk_277DF50B0;
  v18[4] = self;
  v13 = v5;
  v19 = v13;
  v14 = [v12 addCompletionBlock:v18];
  v15 = v19;
  v16 = v13;

  return v13;
}

void __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v32[3] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 1;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__27;
  v25 = __Block_byref_object_dispose__27;
  v26 = [MEMORY[0x277CBEB58] set];
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__27;
  v19 = __Block_byref_object_dispose__27;
  v20 = [MEMORY[0x277CBEB58] set];
  v7 = [*(a1 + 32) items];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_4;
  v14[3] = &unk_277E027F8;
  v14[4] = &v15;
  v14[5] = &v21;
  v14[6] = &v27;
  [v7 na_each:v14];

  v8 = v16[5];
  v31[0] = @"dependentHomeKitClasses";
  v31[1] = @"dependentHomeKitObjects";
  v9 = v22[5];
  v32[0] = v8;
  v32[1] = v9;
  v31[2] = @"hidden";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:*(v28 + 24)];
  v32[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];

  v12 = *(a1 + 40);
  v13 = [HFItemUpdateOutcome outcomeWithResults:v11];
  [v12 finishWithResult:v13];

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  _Block_object_dispose(&v27, 8);
}

void __47__HFItemGroupItem__subclass_updateWithOptions___block_invoke_4(void *a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1[4] + 8) + 40);
  v15 = v3;
  v5 = [v3 latestResults];
  v6 = [v5 objectForKeyedSubscript:@"dependentHomeKitClasses"];
  if (v6)
  {
    [v4 unionSet:v6];
  }

  else
  {
    v7 = [MEMORY[0x277CBEB98] set];
    [v4 unionSet:v7];
  }

  v8 = *(*(a1[5] + 8) + 40);
  v9 = [v15 latestResults];
  v10 = [v9 objectForKeyedSubscript:@"dependentHomeKitObjects"];
  if (v10)
  {
    [v8 unionSet:v10];
  }

  else
  {
    v11 = [MEMORY[0x277CBEB98] set];
    [v8 unionSet:v11];
  }

  v12 = [v15 latestResults];
  v13 = [v12 objectForKeyedSubscript:@"hidden"];
  v14 = [v13 BOOLValue];

  if ((v14 & 1) == 0)
  {
    *(*(a1[6] + 8) + 24) = 0;
  }
}

@end