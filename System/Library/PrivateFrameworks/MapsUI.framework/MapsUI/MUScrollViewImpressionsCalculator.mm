@interface MUScrollViewImpressionsCalculator
- (MUScrollViewImpressionsCalculator)initWithConfiguration:(id)configuration visibleItemsProvider:(id)provider;
- (void)logImpressions;
@end

@implementation MUScrollViewImpressionsCalculator

- (void)logImpressions
{
  v41 = *MEMORY[0x1E69E9840];
  if ([(MUImpressionsCalculator *)self isActive])
  {
    v3 = MEMORY[0x1E695DFA8];
    uiElementsByIdentifiers = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
    allKeys = [uiElementsByIdentifiers allKeys];
    v6 = [v3 setWithArray:allKeys];

    WeakRetained = objc_loadWeakRetained(&self->_visibleItemsProvider);
    visibleImpressionElements = [WeakRetained visibleImpressionElements];

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v9 = visibleImpressionElements;
    v10 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v36;
      do
      {
        v13 = 0;
        do
        {
          if (*v36 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v35 + 1) + 8 * v13);
          uiElementsByIdentifiers2 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
          elementIdentifier = [v14 elementIdentifier];
          v17 = [uiElementsByIdentifiers2 objectForKey:elementIdentifier];

          if (v17)
          {
            [v14 frame];
            [(_MUImpressionUIElement *)v17 setFrame:?];
            elementIdentifier2 = [v14 elementIdentifier];
            [v6 removeObject:elementIdentifier2];
          }

          else
          {
            v17 = objc_alloc_init(_MUImpressionUIElement);
            [v14 frame];
            [(_MUImpressionUIElement *)v17 setFrame:?];
            [(_MUImpressionUIElement *)v17 setClientElement:v14];
            elementIdentifier2 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
            elementIdentifier3 = [v14 elementIdentifier];
            [elementIdentifier2 setObject:v17 forKey:elementIdentifier3];
          }

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v11);
    }

    v30 = v9;

    date = [MEMORY[0x1E695DF00] date];
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    allObjects = [v6 allObjects];
    v22 = [allObjects countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v32;
      do
      {
        v25 = 0;
        do
        {
          if (*v32 != v24)
          {
            objc_enumerationMutation(allObjects);
          }

          v26 = *(*(&v31 + 1) + 8 * v25);
          uiElementsByIdentifiers3 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
          v28 = [uiElementsByIdentifiers3 objectForKey:v26];

          [(MUImpressionsCalculator *)self _logExitForImpressionUIElement:v28 usingExitDate:date];
          uiElementsByIdentifiers4 = [(MUImpressionsCalculator *)self uiElementsByIdentifiers];
          [uiElementsByIdentifiers4 removeObjectForKey:v26];

          ++v25;
        }

        while (v23 != v25);
        v23 = [allObjects countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v23);
    }

    [(MUImpressionsCalculator *)self _checkVisibilityForAllItemsOnDate:date];
  }
}

- (MUScrollViewImpressionsCalculator)initWithConfiguration:(id)configuration visibleItemsProvider:(id)provider
{
  providerCopy = provider;
  v10.receiver = self;
  v10.super_class = MUScrollViewImpressionsCalculator;
  v7 = [(MUImpressionsCalculator *)&v10 initWithConfiguration:configuration];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_visibleItemsProvider, providerCopy);
  }

  return v8;
}

@end