@interface AXSettingsObjectDestructionHelper
- (AXSettingsObjectDestructionHelper)initWithListenerAddress:(void *)address forSettings:(id)settings;
- (void)addPreferenceKey:(id)key;
- (void)dealloc;
@end

@implementation AXSettingsObjectDestructionHelper

- (AXSettingsObjectDestructionHelper)initWithListenerAddress:(void *)address forSettings:(id)settings
{
  settingsCopy = settings;
  v11.receiver = self;
  v11.super_class = AXSettingsObjectDestructionHelper;
  v7 = [(AXSettingsObjectDestructionHelper *)&v11 init];
  v8 = v7;
  if (v7)
  {
    v7->_listenerAddress = address;
    objc_storeWeak(&v7->_settings, settingsCopy);
    v9 = v8;
  }

  return v8;
}

- (void)addPreferenceKey:(id)key
{
  keyCopy = key;
  preferenceKeys = self->_preferenceKeys;
  v8 = keyCopy;
  if (!preferenceKeys)
  {
    v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v7 = self->_preferenceKeys;
    self->_preferenceKeys = v6;

    keyCopy = v8;
    preferenceKeys = self->_preferenceKeys;
  }

  [(NSMutableArray *)preferenceKeys addObject:keyCopy];
}

- (void)dealloc
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = self->_preferenceKeys;
  v4 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        WeakRetained = objc_loadWeakRetained(&self->_settings);
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:self->_listenerAddress];
        [WeakRetained unregisterUpdateBlockForPreferenceKey:v8 withListenerID:v10];

        ++v7;
      }

      while (v5 != v7);
      v5 = [(NSMutableArray *)v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }

  v11.receiver = self;
  v11.super_class = AXSettingsObjectDestructionHelper;
  [(AXSettingsObjectDestructionHelper *)&v11 dealloc];
}

@end