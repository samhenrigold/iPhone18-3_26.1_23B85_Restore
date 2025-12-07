@interface MTCoreMaterialVisualStylingProvider
+ (BOOL)canGenerateVisualStyleSetFromRecipe:(id)recipe;
+ (id)coreMaterialVisualStylingProviderForRecipe:(id)recipe andCategory:(id)category;
+ (id)coreMaterialVisualStylingProviderForStyleSetNamed:(id)named inBundle:(id)bundle;
- (BOOL)updateVisualStyleSetFromRecipe:(id)recipe andCategory:(id)category;
- (BOOL)updateVisualStyleSetGeneratedFromRecipe:(id)recipe;
- (id)description;
- (void)_notifyObserversWithBlock:(id)block;
- (void)_setVisualStyleSet:(id)set;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation MTCoreMaterialVisualStylingProvider

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    if (!observers)
    {
      v6 = [objc_alloc(MEMORY[0x1E696AE08]) initWithOptions:?];
      v7 = self->_observers;
      self->_observers = v6;

      observers = self->_observers;
    }

    observerCopy = [(NSPointerArray *)observers addPointer:?];
  }

  MEMORY[0x1EEE66BB8](observerCopy);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (observerCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v5 = 0;
        while ([(NSPointerArray *)self->_observers pointerAtIndex:?]!= observerCopy)
        {
          if (++v5 >= [(NSPointerArray *)self->_observers count])
          {
            goto LABEL_9;
          }
        }

        [(NSPointerArray *)self->_observers removePointerAtIndex:?];
      }
    }
  }

LABEL_9:
}

- (void)_setVisualStyleSet:(id)set
{
  setCopy = set;
  p_visualStyleSet = &self->_visualStyleSet;
  visualStyleSet = self->_visualStyleSet;
  if (visualStyleSet != setCopy)
  {
    v8 = setCopy;
    objc_storeStrong(p_visualStyleSet, set);
    if (v8)
    {
      if (visualStyleSet)
      {
        p_visualStyleSet = [(MTCoreMaterialVisualStylingProvider *)self _notifyObserversWithBlock:?];
      }
    }
  }

  MEMORY[0x1EEE66BB8](p_visualStyleSet);
}

void __58__MTCoreMaterialVisualStylingProvider__setVisualStyleSet___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (objc_opt_respondsToSelector())
  {
    [v4 providedStylesDidChangeForProvider:?];
  }
}

- (void)_notifyObserversWithBlock:(id)block
{
  blockCopy = block;
  if (blockCopy)
  {
    observers = self->_observers;
    if (observers)
    {
      [(NSPointerArray *)observers compact];
      if ([(NSPointerArray *)self->_observers count])
      {
        v6 = 0;
        do
        {
          objc_initWeak(&location, self);
          v7 = [(NSPointerArray *)self->_observers pointerAtIndex:?];
          v8 = objc_loadWeakRetained(&location);
          blockCopy[2](blockCopy, v8, v7);

          objc_destroyWeak(&location);
          ++v6;
        }

        while (v6 < [(NSPointerArray *)self->_observers count]);
      }
    }
  }
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  visualStyleSetName = [(MTCoreMaterialVisualStylingProvider *)self visualStyleSetName];
  v6 = [v3 stringWithFormat:v4, self, visualStyleSetName];

  return v6;
}

+ (id)coreMaterialVisualStylingProviderForRecipe:(id)recipe andCategory:(id)category
{
  v4 = 0;
  if (recipe && category)
  {
    v5 = MTSharedVisualStyleSetForRecipeAndCategory(recipe, category);
    if (v5)
    {
      v4 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
      [(MTCoreMaterialVisualStylingProvider *)v4 _setVisualStyleSet:?];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

+ (id)coreMaterialVisualStylingProviderForStyleSetNamed:(id)named inBundle:(id)bundle
{
  if (named)
  {
    v4 = MTSharedVisualStyleSetForStyleNameFromBundle(named, bundle);
    if (v4)
    {
      v5 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
      [(MTCoreMaterialVisualStylingProvider *)v5 _setVisualStyleSet:?];
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

+ (BOOL)canGenerateVisualStyleSetFromRecipe:(id)recipe
{
  v3 = MTMaterialSettingsForRecipe(recipe);
  VisualStylingDescriptionFromRecipeSettings = MTCanGenerateVisualStylingDescriptionFromRecipeSettings(v3);

  return VisualStylingDescriptionFromRecipeSettings;
}

- (BOOL)updateVisualStyleSetFromRecipe:(id)recipe andCategory:(id)category
{
  v4 = 0;
  if (recipe && category)
  {
    v6 = MTSharedVisualStyleSetForRecipeAndCategory(recipe, category);
    v4 = v6 != 0;
    if (v6)
    {
      [(MTCoreMaterialVisualStylingProvider *)self _setVisualStyleSet:?];
    }
  }

  return v4;
}

- (BOOL)updateVisualStyleSetGeneratedFromRecipe:(id)recipe
{
  recipeCopy = recipe;
  if (recipeCopy)
  {
    v5 = [MTRecipeMaterialSettings styleSetNameForStyleSetFromRecipeWithName:?];
    _visualStyleSet = [(MTCoreMaterialVisualStylingProvider *)self _visualStyleSet];
    visualStyleSetName = [_visualStyleSet visualStyleSetName];
    v8 = [visualStyleSetName isEqualToString:?];

    if ((v8 & 1) == 0)
    {
      v9 = MTSharedVisualStyleSetGeneratedFromRecipe(recipeCopy);
      [(MTCoreMaterialVisualStylingProvider *)self _setVisualStyleSet:?];
    }

    v10 = v8 ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end