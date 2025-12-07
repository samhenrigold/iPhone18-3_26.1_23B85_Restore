@interface _GCUIInteractionCompatibilityManager
+ (id)sharedInstance;
- (_GCUIInteractionCompatibilityManager)init;
- (id)_init;
- (void)_installInteractionOnWindow:(id)window;
- (void)_windowDidBecomeKey:(id)key;
- (void)setEnabled:(BOOL)enabled;
@end

@implementation _GCUIInteractionCompatibilityManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_1 != -1)
  {
    +[_GCUIInteractionCompatibilityManager sharedInstance];
  }

  v3 = sharedInstance_SharedInstance;

  return v3;
}

- (_GCUIInteractionCompatibilityManager)init
{
  [(_GCUIInteractionCompatibilityManager *)self doesNotRecognizeSelector:a2];

  return 0;
}

- (void)setEnabled:(BOOL)enabled
{
  v23 = *MEMORY[0x277D85DE8];
  installedInteractions = self->_installedInteractions;
  if (enabled)
  {
    if (!installedInteractions)
    {
      v5 = objc_opt_new();
      v6 = self->_installedInteractions;
      self->_installedInteractions = v5;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:self selector:sel__windowDidBecomeKey_ name:*MEMORY[0x277D77280] object:0];

      _applicationKeyWindow = [MEMORY[0x277D75DA0] _applicationKeyWindow];
      if (_applicationKeyWindow)
      {
        [(_GCUIInteractionCompatibilityManager *)self _installInteractionOnWindow:_applicationKeyWindow];
      }

      MEMORY[0x2821F96F8]();
    }
  }

  else if (installedInteractions)
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v9 = installedInteractions;
    v10 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v19;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v19 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v18 + 1) + 8 * i);
          view = [v14 view];
          [view removeInteraction:v14];
        }

        v11 = [(NSMutableSet *)v9 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v11);
    }

    v16 = self->_installedInteractions;
    self->_installedInteractions = 0;

    defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter2 removeObserver:self name:*MEMORY[0x277D77280] object:0];
  }
}

- (void)_installInteractionOnWindow:(id)window
{
  v22 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  windowCopy = window;
  interactions = [windowCopy interactions];
  v5 = [interactions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    v9 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(interactions);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [(NSMutableSet *)self->_installedInteractions containsObject:v11];
          v13 = v11;
          if (v12)
          {
            v14 = v8;
          }

          else
          {
            v14 = v7;
          }

          if (v12)
          {
            v8 = v13;
          }

          else
          {
            v7 = v13;
          }
        }
      }

      v6 = [interactions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v6);
  }

  else
  {
    v7 = 0;
    v8 = 0;
  }

  if (!(v8 | v7))
  {
    v15 = objc_opt_new();
    [v15 setHandledEventTypes:1];
    [(NSMutableSet *)self->_installedInteractions addObject:v15];
    [windowCopy addInteraction:v15];
  }
}

- (void)_windowDidBecomeKey:(id)key
{
  v20 = *MEMORY[0x277D85DE8];
  keyCopy = key;
  object = [keyCopy object];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(_GCUIInteractionCompatibilityManager *)self _installInteractionOnWindow:object];
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = self->_installedInteractions;
    v7 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (!v7)
    {
      v9 = v6;
      goto LABEL_16;
    }

    v8 = v7;
    selfCopy = self;
    v9 = 0;
    v10 = *v16;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v15 + 1) + 8 * i);
        view = [v12 view];

        if (!view)
        {
          if (!v9)
          {
            v9 = [MEMORY[0x277CBEB58] set];
          }

          [v9 addObject:v12];
        }
      }

      v8 = [(NSMutableSet *)v6 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v8);

    if (v9)
    {
      [(NSMutableSet *)selfCopy->_installedInteractions minusSet:v9];
LABEL_16:
    }
  }
}

- (id)_init
{
  if (result)
  {
    v1.receiver = result;
    v1.super_class = _GCUIInteractionCompatibilityManager;
    return objc_msgSendSuper2(&v1, sel_init);
  }

  return result;
}

@end