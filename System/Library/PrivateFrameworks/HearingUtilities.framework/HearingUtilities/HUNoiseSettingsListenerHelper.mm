@interface HUNoiseSettingsListenerHelper
- (HUNoiseSettingsListenerHelper)initWithListenerAddress:(id)address;
- (void)addSelectorKey:(SEL)key;
- (void)dealloc;
@end

@implementation HUNoiseSettingsListenerHelper

- (HUNoiseSettingsListenerHelper)initWithListenerAddress:(id)address
{
  objc_initWeak(&location, address);
  v7.receiver = self;
  v7.super_class = HUNoiseSettingsListenerHelper;
  v4 = [(HUNoiseSettingsListenerHelper *)&v7 init];
  if (v4)
  {
    v5 = objc_loadWeakRetained(&location);
    objc_storeWeak(&v4->_listenerAddress, v5);
  }

  objc_destroyWeak(&location);
  return v4;
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
        v9 = +[HUNoiseSettings sharedInstance];
        v10 = NSSelectorFromString(v8);
        WeakRetained = objc_loadWeakRetained(&self->_listenerAddress);
        [v9 registerUpdateBlock:0 forRetrieveSelector:v10 withListener:WeakRetained];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v12.receiver = self;
  v12.super_class = HUNoiseSettingsListenerHelper;
  [(HUNoiseSettingsListenerHelper *)&v12 dealloc];
}

@end