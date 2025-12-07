@interface HFMediaAccessControlEditorItemProvider
- (HFMediaAccessControlEditorItemProvider)initWithHome:(id)home;
- (HFMediaAccessControlEditorItemProvider)initWithItems:(id)items;
- (id)_buildItems;
- (id)items;
@end

@implementation HFMediaAccessControlEditorItemProvider

- (HFMediaAccessControlEditorItemProvider)initWithHome:(id)home
{
  homeCopy = home;
  _buildItems = [(HFMediaAccessControlEditorItemProvider *)self _buildItems];
  v11.receiver = self;
  v11.super_class = HFMediaAccessControlEditorItemProvider;
  v7 = [(HFStaticItemProvider *)&v11 initWithItems:_buildItems];

  if (v7)
  {
    objc_storeStrong(&v7->_home, home);
    v8 = objc_opt_new();
    itemForIdentifier = v7->_itemForIdentifier;
    v7->_itemForIdentifier = v8;
  }

  return v7;
}

- (HFMediaAccessControlEditorItemProvider)initWithItems:(id)items
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  v6 = NSStringFromSelector(sel_initWithHome_);
  [currentHandler handleFailureInMethod:a2 object:self file:@"HFMediaAccessControlEditorItemProvider.m" lineNumber:38 description:{@"%s is unavailable; use %@ instead", "-[HFMediaAccessControlEditorItemProvider initWithItems:]", v6}];

  return 0;
}

- (id)_buildItems
{
  v41[2] = *MEMORY[0x277D85DE8];
  objc_initWeak(&location, self);
  accessControlItems = [(HFMediaAccessControlEditorItemProvider *)self accessControlItems];
  v4 = accessControlItems == 0;

  if (v4)
  {
    v5 = objc_opt_new();
    v6 = 0;
    do
    {
      v7 = NSLocalizedStringFromHFMediaAccessControlClassification(v6, 0);
      v8 = [@"AccessControlItem" stringByAppendingFormat:@"_%@", v7];

      v9 = [HFStaticItem alloc];
      v37[0] = MEMORY[0x277D85DD0];
      v37[1] = 3221225472;
      v37[2] = __53__HFMediaAccessControlEditorItemProvider__buildItems__block_invoke;
      v37[3] = &unk_277E00548;
      objc_copyWeak(v39, &location);
      v39[1] = v6;
      v10 = v8;
      v38 = v10;
      v11 = [(HFStaticItem *)v9 initWithResultsBlock:v37];
      [v5 addObject:v11];
      itemForIdentifier = [(HFMediaAccessControlEditorItemProvider *)self itemForIdentifier];
      [itemForIdentifier setObject:v11 forKeyedSubscript:v10];

      objc_destroyWeak(v39);
      ++v6;
    }

    while (v6 != 3);
    [(HFMediaAccessControlEditorItemProvider *)self setAccessControlItems:v5];
  }

  passwordEnableItem = [(HFMediaAccessControlEditorItemProvider *)self passwordEnableItem];
  v14 = passwordEnableItem == 0;

  if (v14)
  {
    v15 = [HFStaticItem alloc];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __53__HFMediaAccessControlEditorItemProvider__buildItems__block_invoke_2;
    v35[3] = &unk_277DF9CA0;
    objc_copyWeak(&v36, &location);
    v16 = [(HFStaticItem *)v15 initWithResultsBlock:v35];
    [(HFMediaAccessControlEditorItemProvider *)self setPasswordEnableItem:v16];

    passwordEnableItem2 = [(HFMediaAccessControlEditorItemProvider *)self passwordEnableItem];
    itemForIdentifier2 = [(HFMediaAccessControlEditorItemProvider *)self itemForIdentifier];
    [itemForIdentifier2 setObject:passwordEnableItem2 forKeyedSubscript:@"PasswordItem"];

    objc_destroyWeak(&v36);
  }

  passwordItem = [(HFMediaAccessControlEditorItemProvider *)self passwordItem];
  v20 = passwordItem == 0;

  if (v20)
  {
    v21 = [HFStaticItem alloc];
    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __53__HFMediaAccessControlEditorItemProvider__buildItems__block_invoke_3;
    v33[3] = &unk_277DF9CA0;
    objc_copyWeak(&v34, &location);
    v22 = [(HFStaticItem *)v21 initWithResultsBlock:v33];
    [(HFMediaAccessControlEditorItemProvider *)self setPasswordItem:v22];

    passwordItem2 = [(HFMediaAccessControlEditorItemProvider *)self passwordItem];
    itemForIdentifier3 = [(HFMediaAccessControlEditorItemProvider *)self itemForIdentifier];
    [itemForIdentifier3 setObject:passwordItem2 forKeyedSubscript:@"PasswordEnableItem"];

    objc_destroyWeak(&v34);
  }

  v25 = MEMORY[0x277CBEB98];
  accessControlItems2 = [(HFMediaAccessControlEditorItemProvider *)self accessControlItems];
  passwordItem3 = [(HFMediaAccessControlEditorItemProvider *)self passwordItem];
  v41[0] = passwordItem3;
  passwordEnableItem3 = [(HFMediaAccessControlEditorItemProvider *)self passwordEnableItem];
  v41[1] = passwordEnableItem3;
  v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v41 count:2];
  v30 = [accessControlItems2 arrayByAddingObjectsFromArray:v29];
  v31 = [v25 setWithArray:v30];

  objc_destroyWeak(&location);

  return v31;
}

id __53__HFMediaAccessControlEditorItemProvider__buildItems__block_invoke(uint64_t a1)
{
  v19[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = *(a1 + 48);
  v4 = objc_msgSend_home(WeakRetained);
  v5 = [v4 hf_accessControlDescriptor];
  v6 = v3 == [v5 access];

  v7 = MEMORY[0x277D2C900];
  v18[0] = @"title";
  v8 = NSLocalizedStringFromHFMediaAccessControlClassification(*(a1 + 48), 0);
  v9 = *(a1 + 32);
  v19[0] = v8;
  v19[1] = v9;
  v18[1] = @"HFAccessControlItemIdentifier";
  v18[2] = @"selected";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6];
  v19[2] = v10;
  v18[3] = @"HFAccessControlValueResultKey";
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:*(a1 + 48)];
  v19[3] = v11;
  v18[4] = @"dependentHomeKitObjects";
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_msgSend_home(WeakRetained);
  v14 = [v12 setWithObject:v13];
  v19[4] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:5];
  v16 = [v7 futureWithResult:v15];

  return v16;
}

id __53__HFMediaAccessControlEditorItemProvider__buildItems__block_invoke_2(uint64_t a1)
{
  v23[7] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_msgSend_home(WeakRetained);
  v3 = [v2 hf_accessControlDescriptor];
  v4 = [v3 accessSupportsPassword];

  v19 = MEMORY[0x277D2C900];
  v22[0] = @"title";
  v21 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessControlRequirePasswordTitle", @"HFMediaAccessControlRequirePasswordTitle", 1);
  v23[0] = v21;
  v23[1] = @"HFMediaAccessControlRequirePasswordTitle";
  v22[1] = @"titleLocalizationKey";
  v22[2] = @"hidden";
  v20 = [MEMORY[0x277CCABB0] numberWithBool:v4 ^ 1u];
  v23[2] = v20;
  v22[3] = @"selected";
  v5 = MEMORY[0x277CCABB0];
  v18 = objc_msgSend_home(WeakRetained);
  v6 = [v18 hf_accessControlDescriptor];
  v7 = [v5 numberWithBool:{objc_msgSend(v6, "accessRequiresPassword")}];
  v23[3] = v7;
  v23[4] = @"PasswordItem";
  v22[4] = @"HFAccessControlItemIdentifier";
  v22[5] = @"HFAccessControlValueResultKey";
  v8 = MEMORY[0x277CCABB0];
  v9 = objc_msgSend_home(WeakRetained);
  v10 = [v9 hf_accessControlDescriptor];
  v11 = [v8 numberWithBool:{objc_msgSend(v10, "accessRequiresPassword")}];
  v23[5] = v11;
  v22[6] = @"dependentHomeKitObjects";
  v12 = MEMORY[0x277CBEB98];
  v13 = objc_msgSend_home(WeakRetained);
  v14 = [v12 setWithObject:v13];
  v23[6] = v14;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:7];
  v16 = [v19 futureWithResult:v15];

  return v16;
}

id __53__HFMediaAccessControlEditorItemProvider__buildItems__block_invoke_3(uint64_t a1)
{
  v23[5] = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = objc_msgSend_home(WeakRetained);
  v3 = [v2 hf_accessControlDescriptor];
  v4 = [v3 accessSupportsPassword];

  v5 = objc_msgSend_home(WeakRetained);
  v6 = [v5 hf_accessControlDescriptor];
  v7 = [v6 accessRequiresPassword];

  LODWORD(v6) = v4 & v7;
  v8 = MEMORY[0x277D2C900];
  v22[0] = @"title";
  v9 = _HFLocalizedStringWithDefaultValue(@"HFMediaAccessControlPasswordTitle", @"HFMediaAccessControlPasswordTitle", 1);
  v23[0] = v9;
  v22[1] = @"hidden";
  v10 = [MEMORY[0x277CCABB0] numberWithBool:v6 ^ 1];
  v23[1] = v10;
  v23[2] = @"PasswordEnableItem";
  v22[2] = @"HFAccessControlItemIdentifier";
  v22[3] = @"HFAccessControlValueResultKey";
  v11 = objc_msgSend_home(WeakRetained);
  v12 = [v11 hf_accessControlDescriptor];
  v13 = [v12 accessPassword];
  v14 = v13;
  v15 = &stru_2824B1A78;
  if (v13)
  {
    v15 = v13;
  }

  v23[3] = v15;
  v22[4] = @"dependentHomeKitObjects";
  v16 = MEMORY[0x277CBEB98];
  v17 = objc_msgSend_home(WeakRetained);
  v18 = [v16 setWithObject:v17];
  v23[4] = v18;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:5];
  v20 = [v8 futureWithResult:v19];

  return v20;
}

- (id)items
{
  v3 = MEMORY[0x277CBEB58];
  accessControlItems = [(HFMediaAccessControlEditorItemProvider *)self accessControlItems];
  v5 = [v3 setWithArray:accessControlItems];

  passwordItem = [(HFMediaAccessControlEditorItemProvider *)self passwordItem];
  [v5 na_safeAddObject:passwordItem];

  passwordEnableItem = [(HFMediaAccessControlEditorItemProvider *)self passwordEnableItem];
  [v5 na_safeAddObject:passwordEnableItem];

  return v5;
}

@end