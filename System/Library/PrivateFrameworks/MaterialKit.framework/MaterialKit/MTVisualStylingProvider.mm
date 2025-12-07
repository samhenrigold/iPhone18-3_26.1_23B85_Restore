@interface MTVisualStylingProvider
+ (id)_visualStylingProviderForRecipe:(int64_t)recipe category:(int64_t)category andUserInterfaceStyle:(int64_t)style;
+ (id)_visualStylingProviderForRecipeNamed:(id)named andCategory:(int64_t)category;
+ (id)_visualStylingProviderForStyleSetNamed:(id)named inBundle:(id)bundle;
- (BOOL)_isAutomaticallyUpdatingViewOrLayer:(id)layer;
- (MTVisualStylingProvider)initWithCoreMaterialVisualStylingProvider:(id)provider;
- (id)_visualStylingForContinuallyUpdatedView:(id)view;
- (id)_visualStylingForStyle:(int64_t)style;
- (id)_visualStylingForStyleNamed:(id)named;
- (id)newAutomaticallyUpdatingViewWithStyle:(int64_t)style;
- (void)_addObserver:(id)observer;
- (void)_automaticallyUpdateViewOrLayer:(id)layer withStyleNamed:(id)named andObserverBlock:(id)block;
- (void)_removeObserver:(id)observer;
- (void)_stopAutomaticallyUpdatingViewOrLayer:(id)layer;
- (void)_updateVisualStyleOfViewOrLayer:(id)layer;
- (void)automaticallyUpdateLayer:(id)layer withStyle:(int64_t)style andObserverBlock:(id)block;
- (void)automaticallyUpdateView:(id)view withStyle:(int64_t)style andObserverBlock:(id)block;
- (void)providedStylesDidChangeForProvider:(id)provider;
@end

@implementation MTVisualStylingProvider

- (void)automaticallyUpdateView:(id)view withStyle:(int64_t)style andObserverBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  if (viewCopy && MTIsValidVisualStyle(style))
  {
    v9 = MTCoreMaterialVisualStyleForVisualStyle(style);
    [MTVisualStylingProvider _automaticallyUpdateViewOrLayer:"_automaticallyUpdateViewOrLayer:withStyleNamed:andObserverBlock:" withStyleNamed:? andObserverBlock:?];
  }
}

- (void)automaticallyUpdateLayer:(id)layer withStyle:(int64_t)style andObserverBlock:(id)block
{
  layerCopy = layer;
  blockCopy = block;
  if (layerCopy && MTIsValidVisualStyle(style))
  {
    v9 = MTCoreMaterialVisualStyleForVisualStyle(style);
    [MTVisualStylingProvider _automaticallyUpdateViewOrLayer:"_automaticallyUpdateViewOrLayer:withStyleNamed:andObserverBlock:" withStyleNamed:? andObserverBlock:?];
  }
}

- (id)newAutomaticallyUpdatingViewWithStyle:(int64_t)style
{
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  [v4 setUserInteractionEnabled:?];
  [MTVisualStylingProvider automaticallyUpdateView:"automaticallyUpdateView:withStyle:andObserverBlock:" withStyle:? andObserverBlock:?];
  return v4;
}

id __65__MTVisualStylingProvider_newAutomaticallyUpdatingViewWithStyle___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __65__MTVisualStylingProvider_newAutomaticallyUpdatingViewWithStyle___block_invoke_2;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D601D0](v6);

  return v4;
}

- (void)providedStylesDidChangeForProvider:(id)provider
{
  [(NSMutableDictionary *)self->_styleNamesToVisualStylings removeAllObjects];
  v4 = self->_viewsAndLayersToCoreMaterialVisualStyles;
  v5 = [NSMapTable countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
  if (v5)
  {
    v6 = v5;
    v7 = MEMORY[0];
    do
    {
      for (i = 0; i != v6; i = (i + 1))
      {
        if (MEMORY[0] != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(MTVisualStylingProvider *)self _updateVisualStyleOfViewOrLayer:?];
      }

      v6 = [NSMapTable countByEnumeratingWithState:v4 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v6);
  }

  [(NSPointerArray *)self->_privateObservers compact];
  v9 = self->_privateObservers;
  v10 = [NSPointerArray countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:0];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (j = 0; j != v11; j = (j + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        [*(8 * j) providedStylesDidChangeForProvider:?];
      }

      v11 = [NSPointerArray countByEnumeratingWithState:v9 objects:"countByEnumeratingWithState:objects:count:" count:?];
    }

    while (v11);
  }
}

- (void)_automaticallyUpdateViewOrLayer:(id)layer withStyleNamed:(id)named andObserverBlock:(id)block
{
  layerCopy = layer;
  namedCopy = named;
  blockCopy = block;
  if (layerCopy)
  {
    v10 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:?];

    if (v10)
    {
      viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
      if (!viewsAndLayersToCoreMaterialVisualStyles)
      {
        weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
        v13 = self->_viewsAndLayersToCoreMaterialVisualStyles;
        self->_viewsAndLayersToCoreMaterialVisualStyles = weakToStrongObjectsMapTable;

        viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
      }

      [NSMapTable setObject:"setObject:forKey:" forKey:?];
      if (blockCopy)
      {
        viewsAndLayersToObserverBlocks = self->_viewsAndLayersToObserverBlocks;
        if (!viewsAndLayersToObserverBlocks)
        {
          weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
          v16 = self->_viewsAndLayersToObserverBlocks;
          self->_viewsAndLayersToObserverBlocks = weakToStrongObjectsMapTable2;

          viewsAndLayersToObserverBlocks = self->_viewsAndLayersToObserverBlocks;
        }

        v17 = [blockCopy copy];
        v18 = MEMORY[0x223D601D0]();
        [NSMapTable setObject:"setObject:forKey:" forKey:?];
      }

      [(MTVisualStylingProvider *)self _updateVisualStyleOfViewOrLayer:?];
    }
  }
}

- (void)_stopAutomaticallyUpdatingViewOrLayer:(id)layer
{
  if (layer)
  {
    viewsAndLayersToCoreMaterialVisualStyles = self->_viewsAndLayersToCoreMaterialVisualStyles;
    layerCopy = layer;
    [(NSMapTable *)viewsAndLayersToCoreMaterialVisualStyles removeObjectForKey:?];
    [(NSMapTable *)self->_viewsAndLayersToObserverBlocks removeObjectForKey:?];
  }
}

- (BOOL)_isAutomaticallyUpdatingViewOrLayer:(id)layer
{
  layerCopy = layer;
  if (layerCopy)
  {
    v5 = self->_viewsAndLayersToCoreMaterialVisualStyles;
    v6 = [NSMapTable countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:0];
    if (v6)
    {
      v7 = MEMORY[0];
      while (2)
      {
        for (i = 0; i != v6; i = (i + 1))
        {
          if (MEMORY[0] != v7)
          {
            objc_enumerationMutation(v5);
          }

          if (*(8 * i) == layerCopy)
          {
            LOBYTE(v6) = 1;
            goto LABEL_12;
          }
        }

        v6 = [NSMapTable countByEnumeratingWithState:v5 objects:"countByEnumeratingWithState:objects:count:" count:?];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)_updateVisualStyleOfViewOrLayer:(id)layer
{
  layerCopy = layer;
  v4 = [(NSMapTable *)self->_viewsAndLayersToCoreMaterialVisualStyles objectForKey:?];
  if (!v4)
  {
    goto LABEL_13;
  }

  v5 = [(NSMapTable *)self->_viewsAndLayersToObserverBlocks objectForKey:?];
  v6 = v5;
  if (v5)
  {
    v7 = (*(v5 + 16))(v5, self, layerCopy);
  }

  else
  {
    v7 = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:?];
    [layerCopy mt_replaceVisualStyling:?];
LABEL_9:

    goto LABEL_10;
  }

  if (objc_opt_respondsToSelector())
  {
    v8 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:?];
    [layerCopy mt_replaceAllVisualStylingWithStyling:?];
    goto LABEL_9;
  }

LABEL_10:
  if (v7)
  {
    (v7)[2](v7, self, layerCopy);
  }

LABEL_13:
}

+ (id)_visualStylingProviderForRecipe:(int64_t)recipe category:(int64_t)category andUserInterfaceStyle:(int64_t)style
{
  if (recipe)
  {
    v6 = MTCoreMaterialRecipeForMaterialRecipeAndUserInterfaceStyle(recipe, style);
    v7 = [self _visualStylingProviderForRecipeNamed:? andCategory:?];
LABEL_5:
    v8 = v7;

    goto LABEL_6;
  }

  if (category == 3)
  {
    v6 = MTCoreMaterialPlatformColorsStyleNameForUserInterfaceStyle(style);
    v7 = [self _visualStylingProviderForStyleSetNamed:? inBundle:?];
    goto LABEL_5;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

+ (id)_visualStylingProviderForRecipeNamed:(id)named andCategory:(int64_t)category
{
  namedCopy = named;
  if (namedCopy)
  {
    v7 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
    if (v7)
    {
      v8 = [MEMORY[0x277CFFF98] coreMaterialVisualStylingProviderForRecipe:? andCategory:?];
      if (v8)
      {
        v9 = [[self alloc] initWithCoreMaterialVisualStylingProvider:?];
      }

      else
      {
        v9 = 0;
      }
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (id)_visualStylingProviderForStyleSetNamed:(id)named inBundle:(id)bundle
{
  if (named)
  {
    v5 = [MEMORY[0x277CFFF98] coreMaterialVisualStylingProviderForStyleSetNamed:? inBundle:?];
    if (v5)
    {
      v6 = [[self alloc] initWithCoreMaterialVisualStylingProvider:?];
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_visualStylingForStyle:(int64_t)style
{
  v4 = MTCoreMaterialVisualStyleForVisualStyle(style);
  if (v4)
  {
    v5 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:?];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_visualStylingForStyleNamed:(id)named
{
  namedCopy = named;
  if (namedCopy)
  {
    v5 = [(NSMutableDictionary *)self->_styleNamesToVisualStylings objectForKey:?];
    if (!v5)
    {
      v6 = [(MTCoreMaterialVisualStylingProvider *)self->_coreMaterialVisualStylingProvider visualStylingForStyle:?];
      if (v6)
      {
        v5 = [objc_alloc(objc_msgSend(objc_opt_class() "_visualStylingClass"))];
        styleNamesToVisualStylings = self->_styleNamesToVisualStylings;
        if (!styleNamesToVisualStylings)
        {
          v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
          v9 = self->_styleNamesToVisualStylings;
          self->_styleNamesToVisualStylings = v8;

          styleNamesToVisualStylings = self->_styleNamesToVisualStylings;
        }

        [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
      }

      else
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_visualStylingForContinuallyUpdatedView:(id)view
{
  if (view)
  {
    v4 = [(NSMapTable *)self->_viewsAndLayersToCoreMaterialVisualStyles objectForKey:?];
    if (v4)
    {
      v5 = [(MTVisualStylingProvider *)self _visualStylingForStyleNamed:?];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_addObserver:(id)observer
{
  observerCopy = observer;
  v5 = observerCopy;
  if (observerCopy)
  {
    privateObservers = self->_privateObservers;
    v9 = v5;
    if (!privateObservers)
    {
      v7 = [objc_alloc(MEMORY[0x277CCAC18]) initWithOptions:?];
      v8 = self->_privateObservers;
      self->_privateObservers = v7;

      privateObservers = self->_privateObservers;
    }

    observerCopy = [(NSPointerArray *)privateObservers addPointer:?];
    v5 = v9;
  }

  MEMORY[0x2821F96F8](observerCopy, v5);
}

- (void)_removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    privateObservers = self->_privateObservers;
    if (privateObservers)
    {
      [(NSPointerArray *)privateObservers compact];
      if ([(NSPointerArray *)self->_privateObservers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_privateObservers pointerAtIndex:?]!= observerCopy)
        {
          if (++v5 >= [(NSPointerArray *)self->_privateObservers count])
          {
            goto LABEL_9;
          }
        }

        [(NSPointerArray *)self->_privateObservers removePointerAtIndex:?];
      }
    }
  }

LABEL_9:
}

- (MTVisualStylingProvider)initWithCoreMaterialVisualStylingProvider:(id)provider
{
  providerCopy = provider;
  if (!providerCopy)
  {
    [(MTVisualStylingProvider(Internal) *)a2 initWithCoreMaterialVisualStylingProvider:?];
  }

  v10.receiver = self;
  v10.super_class = MTVisualStylingProvider;
  v7 = [(MTVisualStylingProvider *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_coreMaterialVisualStylingProvider, provider);
    [(MTCoreMaterialVisualStylingProvider *)v8->_coreMaterialVisualStylingProvider addObserver:?];
  }

  return v8;
}

@end