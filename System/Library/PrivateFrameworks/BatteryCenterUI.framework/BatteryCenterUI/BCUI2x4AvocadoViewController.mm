@interface BCUI2x4AvocadoViewController
- (id)_newBatteryDeviceView;
- (unint64_t)_maximumNumberOfBatteryDeviceViews;
- (void)_contentSizeCategoryDidChange:(id)change;
- (void)viewWillLayoutSubviews;
@end

@implementation BCUI2x4AvocadoViewController

- (void)_contentSizeCategoryDidChange:(id)change
{
  v24 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  v22.receiver = self;
  v22.super_class = BCUI2x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v22 _contentSizeCategoryDidChange:changeCopy];
  v17 = changeCopy;
  v5 = [BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:changeCopy];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  _batteryDeviceViews = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v7 = [_batteryDeviceViews countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      v10 = 0;
      do
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(_batteryDeviceViews);
        }

        v11 = *(*(&v18 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          view = [(BCUI2x4AvocadoViewController *)self view];
          [view bounds];
          [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
          v14 = v13;

          v15 = 74 / v14;
          if (!v5)
          {
            v15 = 1.0;
          }

          [v11 setRingScale:v15];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [_batteryDeviceViews countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v8);
  }

  view2 = [(BCUI2x4AvocadoViewController *)self view];
  [view2 setNeedsLayout];
}

- (void)viewWillLayoutSubviews
{
  v55 = *MEMORY[0x1E69E9840];
  v53.receiver = self;
  v53.super_class = BCUI2x4AvocadoViewController;
  [(BCUIAvocadoViewController *)&v53 viewWillLayoutSubviews];
  [(BCUI2x4AvocadoViewController *)self _maximumNumberOfBatteryDeviceViews];
  view = [(BCUI2x4AvocadoViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
  v13 = v12;
  v58.origin.x = v5;
  v58.origin.y = v7;
  v48 = v11;
  v58.size.width = v9;
  v58.size.height = v11;
  Height = CGRectGetHeight(v58);
  _shouldReverseLayoutDirection = [view _shouldReverseLayoutDirection];
  v16 = 19.0;
  if (_shouldReverseLayoutDirection)
  {
    v59.origin.y = v7;
    v59.origin.x = v5;
    v59.size.height = v48;
    v59.size.width = v9;
    v16 = CGRectGetMaxX(v59) + -19.0 - v13;
  }

  window = [view window];
  if (window)
  {
    window2 = [view window];
    screen = [window2 screen];
    [screen scale];
    v21 = v20;
  }

  else
  {
    window2 = [MEMORY[0x1E69DCEB0] mainScreen];
    [window2 scale];
    v21 = v22;
  }

  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  _batteryDeviceViews = [(BCUIAvocadoViewController *)self _batteryDeviceViews];
  v24 = [_batteryDeviceViews countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v50;
    do
    {
      for (i = 0; i != v25; ++i)
      {
        if (*v50 != v26)
        {
          objc_enumerationMutation(_batteryDeviceViews);
        }

        v28 = *(*(&v49 + 1) + 8 * i);
        ringScale = [v28 ringScale];
        if (v32 == 1.0)
        {
          v56.height = 0.0;
          v56.width = v16;
          v57.width = Height;
          v57.height = v21;
          UIRectIntegralWithScale(ringScale, v30, v56, v13, v57, v31);
        }

        else
        {
          v47 = v21;
          UIRectCenteredYInRectScale();
        }

        v37 = v33;
        v38 = v34;
        v39 = v35;
        v40 = v36;
        [v28 setFrame:*&v47];
        v41 = v37;
        v42 = v38;
        v43 = v39;
        v44 = v40;
        if (_shouldReverseLayoutDirection)
        {
          MaxX = CGRectGetMinX(*&v41) - v13;
          v46 = -17.0;
        }

        else
        {
          MaxX = CGRectGetMaxX(*&v41);
          v46 = 17.0;
        }

        v16 = MaxX + v46;
      }

      v25 = [_batteryDeviceViews countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v25);
  }
}

- (unint64_t)_maximumNumberOfBatteryDeviceViews
{
  traitCollection = [(BCUI2x4AvocadoViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  if ([BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:preferredContentSizeCategory])
  {
    v4 = 3;
  }

  else
  {
    v4 = 4;
  }

  return v4;
}

- (id)_newBatteryDeviceView
{
  traitCollection = [(BCUI2x4AvocadoViewController *)self traitCollection];
  preferredContentSizeCategory = [traitCollection preferredContentSizeCategory];

  LODWORD(traitCollection) = [BCUIRingItemView isAX3PlusLayoutRequiredForContentSizeCategory:preferredContentSizeCategory];
  view = [(BCUI2x4AvocadoViewController *)self view];
  [view bounds];
  [BCUI2x4AvocadoViewController _columnWidthForBounds:"_columnWidthForBounds:andMaxNumViews:" andMaxNumViews:?];
  v7 = v6;

  v8 = objc_alloc_init(BCUIRingItemView);
  [(BCUIRingItemView *)v8 setRingItemViewStyle:1];
  [(BCUIRingItemView *)v8 setRingLineWidth:6.0];
  v9 = 1.0;
  if (traitCollection)
  {
    v9 = 74 / v7;
  }

  [(BCUIRingItemView *)v8 setRingScale:v9];

  return v8;
}

@end