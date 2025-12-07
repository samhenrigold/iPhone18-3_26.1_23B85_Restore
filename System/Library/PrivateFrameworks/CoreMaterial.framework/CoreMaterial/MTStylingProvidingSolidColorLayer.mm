@interface MTStylingProvidingSolidColorLayer
- (id)_fillDarkStyleSet;
- (id)_fillLightStyleSet;
- (id)_strokeDarkStyleSet;
- (id)_strokeLightStyleSet;
- (id)_styleSetForCategory:(id)category;
- (id)_styleSetForCategory:(id)category styleDefinitions:(id)definitions;
- (id)_styleSetNameForCategory:(id)category;
- (id)visualStylingProviderForCategory:(id)category;
- (void)_updateVisualStylingProviderForCategory:(id)category;
- (void)_updateVisualStylingProviders;
- (void)setBackgroundColor:(CGColor *)color;
@end

@implementation MTStylingProvidingSolidColorLayer

- (id)visualStylingProviderForCategory:(id)category
{
  categoryCopy = category;
  v5 = [(NSMutableDictionary *)self->_cmStylingProviders objectForKey:?];
  if (!v5)
  {
    v5 = objc_alloc_init(MTCoreMaterialVisualStylingProvider);
    cmStylingProviders = self->_cmStylingProviders;
    if (!cmStylingProviders)
    {
      v7 = objc_opt_new();
      v8 = self->_cmStylingProviders;
      self->_cmStylingProviders = v7;

      cmStylingProviders = self->_cmStylingProviders;
    }

    [NSMutableDictionary setObject:"setObject:forKey:" forKey:?];
    [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviders];
  }

  return v5;
}

- (void)setBackgroundColor:(CGColor *)color
{
  v4.receiver = self;
  v4.super_class = MTStylingProvidingSolidColorLayer;
  [(MTStylingProvidingSolidColorLayer *)&v4 setBackgroundColor:color];
  [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviders];
}

- (void)_updateVisualStylingProviders
{
  [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviderForCategory:?];

  [(MTStylingProvidingSolidColorLayer *)self _updateVisualStylingProviderForCategory:?];
}

- (void)_updateVisualStylingProviderForCategory:(id)category
{
  cmStylingProviders = self->_cmStylingProviders;
  categoryCopy = category;
  v7 = [(NSMutableDictionary *)cmStylingProviders objectForKey:?];
  v6 = [(MTStylingProvidingSolidColorLayer *)self _styleSetForCategory:?];

  [v7 _setVisualStyleSet:?];
}

- (id)_styleSetForCategory:(id)category
{
  categoryCopy = category;
  if (!MTCGColorIsPerceivedLight([(MTStylingProvidingSolidColorLayer *)self backgroundColor]))
  {
    if (@"fill" == categoryCopy)
    {
      _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _fillLightStyleSet];
      goto LABEL_11;
    }

    if (@"stroke" == categoryCopy)
    {
      _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _strokeLightStyleSet];
      goto LABEL_11;
    }

    goto LABEL_7;
  }

  if (@"fill" == categoryCopy)
  {
    _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _fillDarkStyleSet];
    goto LABEL_11;
  }

  if (@"stroke" != categoryCopy)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_12;
  }

  _fillLightStyleSet = [(MTStylingProvidingSolidColorLayer *)self _strokeDarkStyleSet];
LABEL_11:
  v6 = _fillLightStyleSet;
LABEL_12:

  return v6;
}

- (id)_fillLightStyleSet
{
  backgroundColor = [(MTStylingProvidingSolidColorLayer *)self backgroundColor];
  v4 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusLAndWhiteTint(backgroundColor, 0.185, 0.85);
  v8 = MTStylingProvidingSolidColorLayerHighlightStyleDictionary(backgroundColor);
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v6 = [MTStylingProvidingSolidColorLayer _styleSetForCategory:"_styleSetForCategory:styleDefinitions:" styleDefinitions:?];

  return v6;
}

- (id)_strokeLightStyleSet
{
  v6 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusLAndWhiteTint([(MTStylingProvidingSolidColorLayer *)self backgroundColor], 0.48, 0.7);
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v4 = [MTStylingProvidingSolidColorLayer _styleSetForCategory:"_styleSetForCategory:styleDefinitions:" styleDefinitions:?];

  return v4;
}

- (id)_fillDarkStyleSet
{
  backgroundColor = [(MTStylingProvidingSolidColorLayer *)self backgroundColor];
  v4 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.9);
  v8 = MTStylingProvidingSolidColorLayerHighlightStyleDictionary(backgroundColor);
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v6 = [MTStylingProvidingSolidColorLayer _styleSetForCategory:"_styleSetForCategory:styleDefinitions:" styleDefinitions:?];

  return v6;
}

- (id)_strokeDarkStyleSet
{
  backgroundColor = [(MTStylingProvidingSolidColorLayer *)self backgroundColor];
  v4 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.2);
  v5 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.5);
  v9 = MTStylingProvidingSolidColorLayerStyleDictionaryForPlusDAmount(backgroundColor, 0.7);
  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:? forKeys:? count:?];
  v7 = [MTStylingProvidingSolidColorLayer _styleSetForCategory:"_styleSetForCategory:styleDefinitions:" styleDefinitions:?];

  return v7;
}

- (id)_styleSetForCategory:(id)category styleDefinitions:(id)definitions
{
  definitionsCopy = definitions;
  v6 = [(MTStylingProvidingSolidColorLayer *)self _styleSetNameForCategory:?];
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [&unk_1F3E018F8 mutableCopy];
  v9 = definitionsCopy;
  v10 = [v9 countByEnumeratingWithState:0 objects:? count:?];
  if (v10)
  {
    v11 = v10;
    v12 = MEMORY[0];
    do
    {
      for (i = 0; i != v11; i = (i + 1))
      {
        if (MEMORY[0] != v12)
        {
          objc_enumerationMutation(v9);
        }

        capitalizedString = [*(8 * i) capitalizedString];
        v15 = [v6 stringByAppendingString:?];

        [v8 setObject:? forKey:?];
        v16 = [v9 objectForKey:?];
        [v7 setObject:? forKey:?];
      }

      v11 = [v9 countByEnumeratingWithState:? objects:? count:?];
    }

    while (v11);
  }

  [v8 setObject:? forKey:?];
  v17 = [MTVisualStyleSet initWithName:"initWithName:visualStyleSetDescription:andDescendantDescriptions:" visualStyleSetDescription:? andDescendantDescriptions:?];

  return v17;
}

- (id)_styleSetNameForCategory:(id)category
{
  categoryCopy = category;
  v6 = categoryCopy;
  if (@"stroke" != categoryCopy && @"fill" != categoryCopy)
  {
    [(MTStylingProvidingSolidColorLayer *)a2 _styleSetNameForCategory:?];
  }

  v8 = [@"solidColorBackground" mutableCopy];
  v9 = v8;
  if (@"stroke" == v6 || @"fill" == v6)
  {
    [v8 appendString:?];
  }

  MTCGColorIsPerceivedLight([(MTStylingProvidingSolidColorLayer *)self backgroundColor]);
  [v9 appendString:?];

  return v9;
}

- (void)_styleSetNameForCategory:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x1E696AAA8] currentHandler];
  [v2 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

@end