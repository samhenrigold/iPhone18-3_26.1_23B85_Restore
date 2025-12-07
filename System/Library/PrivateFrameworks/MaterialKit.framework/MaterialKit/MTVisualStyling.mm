@interface MTVisualStyling
- (MTVisualStyling)initWithCoreMaterialVisualStyling:(id)styling;
- (UIColor)color;
- (id)_layerConfig;
- (id)visualEffect;
- (void)applyToView:(id)view withColorBlock:(id)block;
@end

@implementation MTVisualStyling

- (UIColor)color
{
  tintColorName = [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling tintColorName];
  if (![tintColorName length] || !NSSelectorFromString(tintColorName) || (objc_opt_respondsToSelector() & 1) == 0)
  {
    goto LABEL_7;
  }

  v4 = [MEMORY[0x277D75348] performSelector:?];
  if ([(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling tintColorUIStyle]>= 1)
  {
    v5 = [MEMORY[0x277D75C80] traitCollectionWithUserInterfaceStyle:?];
    v6 = [v4 resolvedColorWithTraitCollection:?];

    v4 = v6;
  }

  if (!v4)
  {
LABEL_7:
    v7 = MEMORY[0x277D75348];
    [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling tintColor];
    v4 = [v7 colorWithCGColor:?];
  }

  return v4;
}

- (void)applyToView:(id)view withColorBlock:(id)block
{
  viewCopy = view;
  blockCopy = block;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __68__MTVisualStyling_VisualStylingSupport__applyToView_withColorBlock___block_invoke;
  v12[3] = &unk_27835D4C8;
  v14 = &v15;
  v8 = blockCopy;
  v12[4] = self;
  v13 = v8;
  v9 = MEMORY[0x223D601D0](v12);
  _coreMaterialVisualStyling = [(MTVisualStyling *)self _coreMaterialVisualStyling];
  layer = [viewCopy layer];
  [_coreMaterialVisualStyling _applyToLayer:? withColorBlock:?];

  if ((v16[3] & 1) == 0)
  {
    v9[2](v9, 0);
  }

  _Block_object_dispose(&v15, 8);
}

void __68__MTVisualStyling_VisualStylingSupport__applyToView_withColorBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  *(*(*(a1 + 48) + 8) + 24) = 1;
  if (*(a1 + 40))
  {
    v4 = [*(a1 + 32) color];
    v5 = v4;
    if (!a2 || v4)
    {
      v6 = v4;
    }

    else
    {
      v6 = [MEMORY[0x277D75348] colorWithCGColor:?];
    }

    v8 = v6;

    v7 = v8;
    if (v8)
    {
      (*(*(a1 + 40) + 16))();
      v7 = v8;
    }
  }
}

- (MTVisualStyling)initWithCoreMaterialVisualStyling:(id)styling
{
  stylingCopy = styling;
  v9.receiver = self;
  v9.super_class = MTVisualStyling;
  v6 = [(MTVisualStyling *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_coreMaterialVisualStyling, styling);
  }

  return v7;
}

- (id)_layerConfig
{
  [MTCoreMaterialVisualStyling _getCompositingFilter:"_getCompositingFilter:tintColor:" tintColor:?];
  v3 = 0;
  if (v3 == 0)
  {
    [MTCoreMaterialVisualStyling _getFilterType:"_getFilterType:vibrantColor:tintColor:inputReversed:" vibrantColor:? tintColor:? inputReversed:?];
    v5 = 0;
    v6 = 0;
  }

  else
  {
    v4 = MEMORY[0x277D763D8];
    v5 = [MEMORY[0x277D75348] colorWithCGColor:?];
    v6 = [v4 layerWithTintColor:? filterType:?];
  }

  return v6;
}

- (id)visualEffect
{
  _composedFilter = [(MTCoreMaterialVisualStyling *)self->_coreMaterialVisualStyling _composedFilter];
  type = [_composedFilter type];
  v5 = [type isEqualToString:?];

  if (v5)
  {
    v6 = [_composedFilter valueForKey:?];
    if (v6)
    {
      v7 = MEMORY[0x277D75D00];
      [&v10 CAColorMatrixValue];
      [(MTVisualStyling *)self alpha];
      v8 = [v7 _vibrantEffectWithCAColorMatrix:? alpha:?];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = [[_MTVisualStylingVibrancyEffect alloc] initWithVisualStyling:?];
  }

  return v8;
}

@end