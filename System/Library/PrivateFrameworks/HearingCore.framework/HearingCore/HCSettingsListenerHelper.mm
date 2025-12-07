@interface HCSettingsListenerHelper
- (HCSettingsListenerHelper)initWithListenerAddress:(id)address andDelegate:(id)delegate;
- (void)addSelectorKey:(SEL)key;
- (void)dealloc;
@end

@implementation HCSettingsListenerHelper

- (HCSettingsListenerHelper)initWithListenerAddress:(id)address andDelegate:(id)delegate
{
  objc_initWeak(&location, address);
  delegateCopy = delegate;
  v10.receiver = self;
  v10.super_class = HCSettingsListenerHelper;
  v7 = [(HCSettingsListenerHelper *)&v10 init];
  if (v7)
  {
    v8 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v7->_listenerAddress, v8);

    objc_storeWeak(&v7->_delegate, delegateCopy);
  }

  objc_destroyWeak(&location);
  return v7;
}

- (void)addSelectorKey:(SEL)key
{
  selectorKeys = self->_selectorKeys;
  if (!selectorKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_selectorKeys;
    self->_selectorKeys = v6;

    selectorKeys = self->_selectorKeys;
  }

  v8 = NSStringFromSelector(key);
  [(NSMutableArray *)selectorKeys addObject:v8];
}

- (void)dealloc
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = self->_selectorKeys;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v10 = NSSelectorFromString(v8);
        v11 = objc_loadWeakRetained(&self->_listenerAddress);
        [WeakRetained registerUpdateBlock:0 forRetrieveSelector:v10 withListener:v11];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = HCSettingsListenerHelper;
  [(HCSettingsListenerHelper *)&v12 dealloc];
}

@end