@interface MTStylingProvidingSolidColorView
- (id)visualStylingProviderForCategory:(int64_t)category;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation MTStylingProvidingSolidColorView

- (void)setHighlighted:(BOOL)highlighted
{
  if (self->_highlighted != highlighted)
  {
    self->_highlighted = highlighted;
    highlightView = self->_highlightView;
    if (!highlightView)
    {
      v5 = objc_alloc(MEMORY[0x277D75D18]);
      [(MTStylingProvidingSolidColorView *)self bounds];
      v6 = [v5 initWithFrame:?];
      v7 = self->_highlightView;
      self->_highlightView = v6;

      [(UIView *)self->_highlightView setUserInteractionEnabled:?];
      [(UIView *)self->_highlightView setAutoresizingMask:?];
      [MEMORY[0x277D75D18] performWithoutAnimation:?];
      highlightView = self->_highlightView;
    }

    [(UIView *)highlightView setAlpha:?];
  }
}

void __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke(uint64_t a1)
{
  v6 = [*(a1 + 32) layer];
  [v6 cornerRadius];
  if (v2 > 0.0)
  {
    v3 = [*(*(a1 + 32) + 408) layer];
    [v6 cornerRadius];
    [v3 setCornerRadius:?];
    v4 = [v6 cornerCurve];
    [v3 setCornerCurve:?];
  }

  [*(a1 + 32) insertSubview:? atIndex:?];
  v5 = [*(a1 + 32) visualStylingProviderForCategory:?];
  [v5 automaticallyUpdateView:? withStyle:? andObserverBlock:?];

  [*(*(a1 + 32) + 408) setAlpha:?];
}

id __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  [a3 alpha];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__MTStylingProvidingSolidColorView_setHighlighted___block_invoke_3;
  v6[3] = &__block_descriptor_40_e36_v24__0__MTVisualStylingProvider_8_16l;
  v6[4] = v3;
  v4 = MEMORY[0x223D601D0](v6);

  return v4;
}

- (id)visualStylingProviderForCategory:(int64_t)category
{
  stylingProviders = self->_stylingProviders;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:?];
  v7 = [(NSMutableDictionary *)stylingProviders objectForKey:?];

  if (!v7)
  {
    _stylingProvidingSolidColorLayer = [(MTStylingProvidingSolidColorView *)self _stylingProvidingSolidColorLayer];
    v9 = MTCoreMaterialVisualStyleCategoryForVisualStyleCategory(category);
    v10 = [_stylingProvidingSolidColorLayer visualStylingProviderForCategory:?];

    v7 = [[MTVisualStylingProvider alloc] initWithCoreMaterialVisualStylingProvider:?];
    v11 = self->_stylingProviders;
    if (!v11)
    {
      v12 = objc_opt_new();
      v13 = self->_stylingProviders;
      self->_stylingProviders = v12;

      v11 = self->_stylingProviders;
    }

    v14 = [MEMORY[0x277CCABB0] numberWithInteger:?];
    [NSMutableDictionary setObject:v11 forKey:"setObject:forKey:"];
  }

  return v7;
}

@end