@interface PKHeaderVerticalScrollingLayout
- (BOOL)_indexPathIsHeaderIndexPath:(id)path;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (PKHeaderVerticalScrollingLayout)init;
- (id)_customAttributesForStickyHeader:(id)header;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)_updateAdjustedHeaderHeight;
- (void)invalidateLayout;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)setUseStickyHeader:(BOOL)header;
@end

@implementation PKHeaderVerticalScrollingLayout

- (PKHeaderVerticalScrollingLayout)init
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3042000000;
  v13 = __Block_byref_object_copy__46;
  v14 = __Block_byref_object_dispose__46;
  v15 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__PKHeaderVerticalScrollingLayout_init__block_invoke;
  v9[3] = &unk_1E80139C0;
  v9[4] = &v10;
  v8.receiver = self;
  v8.super_class = PKHeaderVerticalScrollingLayout;
  v2 = [(PKHeaderVerticalScrollingLayout *)&v8 initWithSectionProvider:v9];
  v3 = v2;
  if (v2)
  {
    v2->_adjustedHeaderHeightDirty = 1;
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v3->_horizontalInset = v4;
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:0 inSection:0];
    headerIndexPath = v3->_headerIndexPath;
    v3->_headerIndexPath = v5;

    objc_storeWeak(v11 + 5, v3);
  }

  _Block_object_dispose(&v10, 8);
  objc_destroyWeak(&v15);
  return v3;
}

id __39__PKHeaderVerticalScrollingLayout_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

- (void)invalidateLayout
{
  self->_adjustedHeaderHeightDirty = 1;
  v2.receiver = self;
  v2.super_class = PKHeaderVerticalScrollingLayout;
  [(PKHeaderVerticalScrollingLayout *)&v2 invalidateLayout];
}

- (void)invalidateLayoutWithContext:(id)context
{
  self->_adjustedHeaderHeightDirty = 1;
  v3.receiver = self;
  v3.super_class = PKHeaderVerticalScrollingLayout;
  [(PKHeaderVerticalScrollingLayout *)&v3 invalidateLayoutWithContext:context];
}

- (void)_updateAdjustedHeaderHeight
{
  if (self->_adjustedHeaderHeightDirty)
  {
    self->_adjustedHeaderHeightDirty = 0;
    if (self->_useStickyHeader)
    {
      collectionView = [(PKHeaderVerticalScrollingLayout *)self collectionView];
      delegate = [collectionView delegate];
      [delegate collectionView:collectionView layout:self sizeForItemAtIndexPath:self->_headerIndexPath];
      self->_adjustedHeaderHeight = v4;
      [collectionView adjustedContentInset];
      self->_adjustedHeaderHeight = self->_adjustedHeaderHeight - v5;
    }

    else
    {
      self->_adjustedHeaderHeight = 0.0;
    }
  }
}

- (void)prepareLayout
{
  [(PKHeaderVerticalScrollingLayout *)self _updateAdjustedHeaderHeight];
  v3.receiver = self;
  v3.super_class = PKHeaderVerticalScrollingLayout;
  [(PKHeaderVerticalScrollingLayout *)&v3 prepareLayout];
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  environmentCopy = environment;
  [(PKHeaderVerticalScrollingLayout *)self _updateAdjustedHeaderHeight];
  collectionView = [(PKHeaderVerticalScrollingLayout *)self collectionView];
  delegate = [collectionView delegate];
  dataSource = [collectionView dataSource];
  v10 = [dataSource collectionView:collectionView numberOfItemsInSection:index];

  v11 = objc_opt_respondsToSelector();
  v12 = objc_opt_respondsToSelector();
  v13 = objc_opt_respondsToSelector();
  v46 = delegate;
  v14 = objc_opt_respondsToSelector();
  if (v10 < 1)
  {
    v38 = 0;
    goto LABEL_39;
  }

  if ((v11 & 1) == 0 || (v15 = v14, ![v46 collectionView:collectionView layout:self isListSectionAtIndex:index]))
  {
    [collectionView frame];
    v20 = v19;
    [collectionView safeAreaInsets];
    v23 = v20 - v21 - v22;
    v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v25 = 0;
    v26 = 0.0;
    do
    {
      v27 = [MEMORY[0x1E696AC88] indexPathForRow:v25 inSection:index];
      [v46 collectionView:collectionView layout:self sizeForItemAtIndexPath:v27];
      adjustedHeaderHeight = v29.n128_f64[0];
      if (v23 >= v28.n128_f64[0])
      {
        v31 = v28.n128_f64[0];
      }

      else
      {
        v31 = v23;
      }

      if (self->_useStickyHeader && [(PKHeaderVerticalScrollingLayout *)self _indexPathIsHeaderIndexPath:v27])
      {
        adjustedHeaderHeight = self->_adjustedHeaderHeight;
      }

      v28.n128_f64[0] = (v23 - v31) * 0.5;
      PKFloatRoundToPixel(v28, v29);
      v32 = [MEMORY[0x1E6995570] customItemWithFrame:?];
      [v24 addObject:v32];

      v26 = v26 + adjustedHeaderHeight;
      ++v25;
    }

    while (v10 != v25);
    v33 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v34 = [MEMORY[0x1E6995558] absoluteDimension:v26];
    v35 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v33 heightDimension:v34];
    v36 = MEMORY[0x1E6995568];
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_3;
    v47[3] = &unk_1E80139E8;
    v16 = v24;
    v48 = v16;
    v37 = [v36 customGroupWithLayoutSize:v35 itemProvider:v47];
    v38 = [MEMORY[0x1E6995580] sectionWithGroup:v37];
    section = [(NSIndexPath *)self->_headerIndexPath section];
    v40 = 20.0;
    if (section == index)
    {
      titleInset = self->_titleInset;
      v40 = 0.0;
      if (titleInset <= 2)
      {
        v40 = dbl_1BE116368[titleInset];
      }
    }

    [v38 setContentInsets:{0.0, 0.0, v40, 0.0}];

    goto LABEL_38;
  }

  v16 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
  if (v12)
  {
    v17 = [v46 collectionView:collectionView layout:self hasHeaderForSectionAtIndex:index];
    if ((v13 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v17 = 0;
    if ((v13 & 1) == 0)
    {
LABEL_6:
      v18 = 0;
      if (!v17)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  v18 = [v46 collectionView:collectionView layout:self hasFooterForSectionAtIndex:index];
  if (v17)
  {
LABEL_23:
    [v16 setHeaderMode:1];
  }

LABEL_24:
  if (v18)
  {
    [v16 setFooterMode:1];
  }

  objc_initWeak(location, self);
  if (v15)
  {
    v55[0] = MEMORY[0x1E69E9820];
    v55[1] = 3221225472;
    v55[2] = __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke;
    v55[3] = &unk_1E8013B50;
    objc_copyWeak(&v56, location);
    [v16 setTrailingSwipeActionsConfigurationProvider:v55];
    objc_destroyWeak(&v56);
  }

  if (_UISolariumFeatureFlagEnabled())
  {
    v42 = 16.0;
  }

  else
  {
    v42 = 0.0;
  }

  if (objc_opt_respondsToSelector())
  {
    v49[0] = MEMORY[0x1E69E9820];
    v49[1] = 3221225472;
    v49[2] = __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2;
    v49[3] = &unk_1E801C9C8;
    objc_copyWeak(&v50, location);
    v51 = xmmword_1BE0D82B0;
    v52 = 0;
    v53 = v42;
    v54 = 2;
    [v16 setItemSeparatorHandler:v49];
    objc_destroyWeak(&v50);
  }

  else
  {
    v43 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:2];
    [v43 setTopSeparatorInsets:{0.0, 16.0, 0.0, v42}];
    [v43 setBottomSeparatorInsets:{0.0, 16.0, 0.0, v42}];
    [v16 setSeparatorConfiguration:v43];
  }

  v38 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v16 layoutEnvironment:environmentCopy];
  if (PKIsVision())
  {
    horizontalInset = 0.0;
    [v38 setContentInsetsReference:4];
  }

  else
  {
    [v38 setContentInsetsReference:2];
    horizontalInset = self->_horizontalInset;
  }

  [v38 setContentInsets:{0.0, horizontalInset, 20.0, horizontalInset}];
  objc_destroyWeak(location);
LABEL_38:

LABEL_39:

  return v38;
}

id __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained collectionView];
  v6 = [v5 delegate];

  v7 = [WeakRetained collectionView];
  v8 = [v6 collectionView:v7 layout:WeakRetained trailingSwipeActionsConfigurationForItemAtIndexPath:v3];

  return v8;
}

id __74__PKHeaderVerticalScrollingLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = [WeakRetained collectionView];
    v7 = [v6 delegate];

    v8 = [v5 collectionView];
    v9 = [v7 collectionView:v8 layout:v5 separatorInsetsForItemAtIndexPath:v3];

    if (v9)
    {
      [v9 directionalEdgeInsetsValue];
      v11 = v10;
      v13 = v12;
      v15 = v14;
      v17 = v16;
    }

    else
    {
      v11 = *(a1 + 40);
      v13 = *(a1 + 48);
      v15 = *(a1 + 56);
      v17 = *(a1 + 64);
    }

    v18 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:*(a1 + 72)];
    [v18 setTopSeparatorInsets:{v11, v13, v15, v17}];
    [v18 setBottomSeparatorInsets:{v11, v13, v15, v17}];
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  y = change.origin.y;
  v5 = [(PKHeaderVerticalScrollingLayout *)self collectionView:change.origin.x];
  v6 = v5;
  headerItemNeedsBoundsChangeAdjustment = self->_headerItemNeedsBoundsChangeAdjustment;
  if (self->_useStickyHeader)
  {
    [v5 pkui_naturalRestingBounds];
    v9 = y < v8;
  }

  else
  {
    v9 = 0;
  }

  self->_headerItemNeedsBoundsChangeAdjustment = v9;
  v10 = v9 || headerItemNeedsBoundsChangeAdjustment;

  return v10;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7.receiver = self;
  v7.super_class = PKHeaderVerticalScrollingLayout;
  v4 = [(PKHeaderVerticalScrollingLayout *)&v7 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  v8[0] = self->_headerIndexPath;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:1];
  [v4 invalidateItemsAtIndexPaths:v5];

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v11.receiver = self;
  v11.super_class = PKHeaderVerticalScrollingLayout;
  v4 = [(PKHeaderVerticalScrollingLayout *)&v11 layoutAttributesForItemAtIndexPath:path];
  v5 = v4;
  if (self->_useStickyHeader)
  {
    indexPath = [v4 indexPath];
    if ([(PKHeaderVerticalScrollingLayout *)self _indexPathIsHeaderIndexPath:indexPath])
    {
      representedElementCategory = [v5 representedElementCategory];

      if (!representedElementCategory)
      {
        v8 = [(PKHeaderVerticalScrollingLayout *)self _customAttributesForStickyHeader:v5];
        goto LABEL_7;
      }
    }

    else
    {
    }
  }

  v8 = v5;
LABEL_7:
  v9 = v8;

  return v9;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v14.receiver = self;
  v14.super_class = PKHeaderVerticalScrollingLayout;
  v4 = [(PKHeaderVerticalScrollingLayout *)&v14 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = v4;
  if (self->_useStickyHeader && (v13[0] = MEMORY[0x1E69E9820], v13[1] = 3221225472, v13[2] = __69__PKHeaderVerticalScrollingLayout_layoutAttributesForElementsInRect___block_invoke, v13[3] = &unk_1E801FD50, v13[4] = self, v6 = [v4 indexOfObjectPassingTest:v13], v6 != 0x7FFFFFFFFFFFFFFFLL))
  {
    v8 = v6;
    v9 = [v5 mutableCopy];
    v10 = [v5 objectAtIndexedSubscript:v8];
    v11 = [(PKHeaderVerticalScrollingLayout *)self _customAttributesForStickyHeader:v10];
    [v9 replaceObjectAtIndex:v8 withObject:v11];

    v7 = [v9 copy];
  }

  else
  {
    v7 = v5;
  }

  return v7;
}

BOOL __69__PKHeaderVerticalScrollingLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 indexPath];
  if ([v4 _indexPathIsHeaderIndexPath:v5])
  {
    v6 = [v3 representedElementCategory] == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)setUseStickyHeader:(BOOL)header
{
  if (self->_useStickyHeader == !header)
  {
    self->_useStickyHeader = header;
    [(PKHeaderVerticalScrollingLayout *)self invalidateLayout];
  }
}

- (id)_customAttributesForStickyHeader:(id)header
{
  headerCopy = header;
  collectionView = [(PKHeaderVerticalScrollingLayout *)self collectionView];
  [collectionView bounds];
  v7 = v6;
  [collectionView adjustedContentInset];
  v9 = v8;
  v11 = v10;
  [headerCopy frame];
  if (v7 + v9 >= 0.0)
  {
    v12 = -v9;
  }

  else
  {
    v12 = v7;
  }

  [headerCopy setFrame:{-v11, v12}];

  return headerCopy;
}

- (BOOL)_indexPathIsHeaderIndexPath:(id)path
{
  pathCopy = path;
  section = [pathCopy section];
  if (section == [(NSIndexPath *)self->_headerIndexPath section])
  {
    item = [pathCopy item];
    v7 = item == [(NSIndexPath *)self->_headerIndexPath item];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

@end