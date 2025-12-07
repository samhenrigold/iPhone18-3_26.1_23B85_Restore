@interface PKDashboardPassFlowLayout
+ (double)topMarginInFirstSection;
- (BOOL)_indexPathIsPassGroupIndexPath:(id)path;
- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change;
- (CGSize)collectionViewContentSize;
- (PKDashboardPassFlowLayout)init;
- (id)_modifiedLayoutAttributes:(id)attributes;
- (id)invalidationContextForBoundsChange:(CGRect)change;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
- (void)_adjustItems:(id)items withLateralMove:(double)move;
- (void)hideContent;
- (void)invalidateLayoutWithContext:(id)context;
- (void)prepareLayout;
- (void)revealContentAnimated:(BOOL)animated;
@end

@implementation PKDashboardPassFlowLayout

+ (double)topMarginInFirstSection
{
  v2 = PKUIGetMinScreenWidthType();
  result = 12.0;
  if (!v2)
  {
    return 8.0;
  }

  return result;
}

- (PKDashboardPassFlowLayout)init
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3042000000;
  v11 = __Block_byref_object_copy__37;
  v12 = __Block_byref_object_dispose__37;
  v13 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__PKDashboardPassFlowLayout_init__block_invoke;
  v7[3] = &unk_1E80139C0;
  v7[4] = &v8;
  v6.receiver = self;
  v6.super_class = PKDashboardPassFlowLayout;
  v2 = [(PKDashboardPassFlowLayout *)&v6 initWithSectionProvider:v7];
  if (v2)
  {
    objc_storeWeak(v9 + 5, v2);
    +[PKDashboardCollectionViewCell defaultHorizontalInset];
    v2->_horizontalInset = v3;
    [objc_opt_class() topMarginInFirstSection];
    v2->_topMarginInFirstSection = v4;
  }

  _Block_object_dispose(&v8, 8);
  objc_destroyWeak(&v13);
  return v2;
}

id __33__PKDashboardPassFlowLayout_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

- (void)invalidateLayoutWithContext:(id)context
{
  v9.receiver = self;
  v9.super_class = PKDashboardPassFlowLayout;
  contextCopy = context;
  [(PKDashboardPassFlowLayout *)&v9 invalidateLayoutWithContext:contextCopy];
  invalidatedItemIndexPaths = [contextCopy invalidatedItemIndexPaths];

  if ([invalidatedItemIndexPaths count] == 1)
  {
    firstObject = [invalidatedItemIndexPaths firstObject];
    _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
    v8 = PKEqualObjects();

    if (v8)
    {
      self->_preventLayoutComputation = 1;
    }
  }
}

- (void)prepareLayout
{
  if (self->_preventLayoutComputation)
  {
    self->_preventLayoutComputation = 0;
  }

  else
  {
    collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
    delegate = [collectionView delegate];
    v5 = delegate;
    if (collectionView)
    {
      if (delegate)
      {
        _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
        [v5 collectionView:collectionView layout:self sizeForItemAtIndexPath:_indexPathForPassGroup];
        self->_passCellSize.width = v7;
        self->_passCellSize.height = v8;

        v9.receiver = self;
        v9.super_class = PKDashboardPassFlowLayout;
        [(PKDashboardPassFlowLayout *)&v9 prepareLayout];
      }
    }
  }
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  v93 = *MEMORY[0x1E69E9840];
  environmentCopy = environment;
  collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
  delegate = [collectionView delegate];
  [collectionView frame];
  v8 = v7;
  v9 = objc_opt_respondsToSelector();
  v10 = objc_opt_respondsToSelector();
  v11 = objc_opt_respondsToSelector();
  v72 = objc_opt_respondsToSelector();
  v12 = objc_opt_respondsToSelector();
  v77 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v75 = objc_alloc_init(MEMORY[0x1E695DF70]);
  dataSource = [collectionView dataSource];
  v14 = [dataSource collectionView:collectionView numberOfItemsInSection:index];

  if (v14 < 1)
  {
    v68 = 0;
    goto LABEL_63;
  }

  _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
  section = [_indexPathForPassGroup section];
  topMarginInFirstSection = 0.0;
  if (section == index)
  {
    topMarginInFirstSection = self->_topMarginInFirstSection;
  }

  v73 = topMarginInFirstSection;

  if ((v10 & 1) != 0 && [delegate collectionView:collectionView layout:self isListSectionAtIndex:index])
  {
    v18 = [objc_alloc(MEMORY[0x1E69DC7E0]) initWithAppearance:2];
    clearColor = [MEMORY[0x1E69DC888] clearColor];
    [v18 setBackgroundColor:clearColor];

    if (v11)
    {
      v20 = [delegate collectionView:collectionView layout:self hasHeaderForSectionAtIndex:index];
    }

    else
    {
      v20 = 0;
    }

    if (v72)
    {
      v69 = [delegate collectionView:collectionView layout:self hasFooterForSectionAtIndex:index];
      if (!v20)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v69 = 0;
      if (!v20)
      {
LABEL_54:
        if (v69)
        {
          [v18 setFooterMode:1];
        }

        objc_initWeak(&location, self);
        if (v12)
        {
          v89[0] = MEMORY[0x1E69E9820];
          v89[1] = 3221225472;
          v89[2] = __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke;
          v89[3] = &unk_1E8013B50;
          objc_copyWeak(&v90, &location);
          [v18 setTrailingSwipeActionsConfigurationProvider:v89];
          objc_destroyWeak(&v90);
        }

        if (objc_opt_respondsToSelector())
        {
          v84[0] = MEMORY[0x1E69E9820];
          v84[1] = 3221225472;
          v84[2] = __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2;
          v84[3] = &unk_1E801C9C8;
          objc_copyWeak(&v85, &location);
          v86 = xmmword_1BE0D82B0;
          v87 = xmmword_1BE0D82B0;
          v88 = 2;
          [v18 setItemSeparatorHandler:v84];
          objc_destroyWeak(&v85);
        }

        else
        {
          v70 = [objc_alloc(MEMORY[0x1E69DCC38]) initWithListAppearance:2];
          [v70 setTopSeparatorInsets:{0.0, 16.0, 0.0, 16.0}];
          [v70 setBottomSeparatorInsets:{0.0, 16.0, 0.0, 16.0}];
          [v18 setSeparatorConfiguration:v70];
        }

        v68 = [MEMORY[0x1E6995580] sectionWithListConfiguration:v18 layoutEnvironment:environmentCopy];
        [v68 setContentInsets:{v73, self->_horizontalInset, 20.0, self->_horizontalInset}];
        objc_destroyWeak(&location);
        goto LABEL_62;
      }
    }

    [v18 setHeaderMode:1];
    goto LABEL_54;
  }

  [collectionView safeAreaInsets];
  v21 = 0;
  v22 = 0;
  v25 = v8 - v23 - v24;
  v26 = *(MEMORY[0x1E695F060] + 8);
  v27 = 0.0;
  v28 = 0.0;
  v29 = 0.0;
  v30 = 0.0;
  do
  {
    v31 = [MEMORY[0x1E696AC88] indexPathForRow:v22 inSection:index];
    [delegate collectionView:collectionView layout:self sizeForItemAtIndexPath:v31];
    v33 = v32;
    v35 = v34;
    if (v9)
    {
      v36 = [delegate itemIsStackableInCollectionView:collectionView atIndexPath:v31];
      v37 = [delegate itemIsIndependentInCollectionView:collectionView atIndexPath:v31];
      if (v36)
      {
        v40 = 0;
        if (v21)
        {
          v29 = v29 + 8.0;
        }

        else
        {
          v29 = 0.0;
        }

        v21 = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v37 = [delegate itemIsIndependentInCollectionView:collectionView atIndexPath:v31];
    }

    v38.n128_f64[0] = v25 - v28;
    v41 = v28 + v30;
    if (v21)
    {
      v29 = 0.0;
    }

    else
    {
      v41 = v28;
    }

    if (v38.n128_f64[0] >= v33)
    {
      if (v41 == 0.0)
      {
        v28 = v41;
      }

      else
      {
        v28 = v41 + 8.0;
      }

      v40 = 1;
      v21 = 0;
    }

    else
    {
      v28 = 0.0;
      v42 = v26 + 0.0;
      if (v29 > 0.0)
      {
        v42 = v29;
      }

      v43 = v27 + v42;
      if (v37)
      {
        v27 = v43 + 8.0;
      }

      else
      {
        v27 = v43;
      }

      v39.n128_u64[0] = 0.5;
      v38.n128_f64[0] = v38.n128_f64[0] * 0.5;
      PKFloatRoundToPixel(v38, v39);
      [(PKDashboardPassFlowLayout *)self _adjustItems:v77 withLateralMove:?];
      [v77 removeAllObjects];
      v21 = 0;
      v40 = 1;
    }

LABEL_30:
    v44 = [MEMORY[0x1E69DC858] layoutAttributesForCellWithIndexPath:v31];
    [v44 setSize:{v33, v35}];
    [v44 setFrame:{v28, v27 + v29, v33, v35}];
    [v44 setZIndex:{-[PKDashboardPassFlowLayout _indexPathIsPassGroupIndexPath:](self, "_indexPathIsPassGroupIndexPath:", v31)}];
    [v75 addObject:v44];
    [v77 addObject:v44];
    if (v40)
    {
      v28 = v33 + v28;
    }

    else
    {
      v29 = v35 + v29;
      v30 = v33;
    }

    ++v22;
    v26 = v35;
  }

  while (v14 != v22);
  if ([v77 count])
  {
    v46.n128_u64[0] = 0.5;
    v45.n128_f64[0] = (v25 - v28) * 0.5;
    PKFloatRoundToPixel(v45, v46);
    v48 = v47;
    v49 = [v77 copy];
    [(PKDashboardPassFlowLayout *)self _adjustItems:v49 withLateralMove:v48];

    [v77 removeAllObjects];
  }

  if (v29 <= 0.0)
  {
    v50 = v35;
  }

  else
  {
    v50 = v29;
  }

  v51 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v75, "count")}];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v52 = v75;
  v53 = [v52 countByEnumeratingWithState:&v80 objects:v92 count:16];
  if (v53)
  {
    v54 = *v81;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v81 != v54)
        {
          objc_enumerationMutation(v52);
        }

        v56 = *(*(&v80 + 1) + 8 * i);
        v57 = MEMORY[0x1E6995570];
        [v56 frame];
        v62 = [v57 customItemWithFrame:objc_msgSend(v56 zIndex:{"zIndex"), v58, v59, v60, v61}];
        [v51 addObject:v62];
      }

      v53 = [v52 countByEnumeratingWithState:&v80 objects:v92 count:16];
    }

    while (v53);
  }

  v18 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
  v63 = [MEMORY[0x1E6995558] absoluteDimension:v27 + v50];
  v64 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v18 heightDimension:v63];
  v65 = MEMORY[0x1E6995568];
  v78[0] = MEMORY[0x1E69E9820];
  v78[1] = 3221225472;
  v78[2] = __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_3;
  v78[3] = &unk_1E801C9F0;
  v79 = v51;
  v66 = v51;
  v67 = [v65 customGroupWithLayoutSize:v64 itemProvider:v78];
  v68 = [MEMORY[0x1E6995580] sectionWithGroup:v67];
  [v68 setContentInsets:{v73, 0.0, 20.0, 0.0}];

LABEL_62:
LABEL_63:

  return v68;
}

id __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained collectionView];
  v6 = [v5 delegate];

  v7 = [WeakRetained collectionView];
  v8 = [v6 collectionView:v7 layout:WeakRetained trailingSwipeActionsConfigurationForItemAtIndexPath:v3];

  return v8;
}

id __68__PKDashboardPassFlowLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke_2(uint64_t a1, void *a2)
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

- (void)_adjustItems:(id)items withLateralMove:(double)move
{
  v17 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(itemsCopy);
        }

        v10 = *(*(&v12 + 1) + 8 * i);
        [v10 frame];
        [v10 setFrame:v11 + move];
      }

      v7 = [itemsCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }
}

- (BOOL)shouldInvalidateLayoutForBoundsChange:(CGRect)change
{
  y = change.origin.y;
  v5 = [(PKDashboardPassFlowLayout *)self collectionView:change.origin.x];
  v6 = v5;
  p_userIsHoldingCardInCurrentDrag = &self->_userIsHoldingCardInCurrentDrag;
  if (self->_userIsHoldingCardInCurrentDrag)
  {
    v8 = 1;
  }

  else
  {
    if (([v5 isDragging] & 1) == 0)
    {
      LOBYTE(v8) = 0;
      p_userIsActivelyDragging = &self->_userIsActivelyDragging;
      goto LABEL_9;
    }

    v8 = [v6 isDecelerating] ^ 1;
  }

  p_userIsActivelyDragging = &self->_userIsActivelyDragging;
  if (!self->_userIsActivelyDragging && v8)
  {
    self->_currentDraggingWentBelowThreshold = 0;
    self->_userWasHoldingCard = *p_userIsHoldingCardInCurrentDrag;
  }

LABEL_9:
  *p_userIsActivelyDragging = v8;
  [v6 adjustedContentInset];
  v11 = -v10;
  if (!*p_userIsActivelyDragging && y < v11 && !self->_currentDraggingWentBelowThreshold)
  {
    self->_bouncing = 1;
  }

  if (y >= v11)
  {
    v12 = 0;
    self->_bouncing = 0;
    goto LABEL_21;
  }

  if (self->_bouncing)
  {
    goto LABEL_16;
  }

  if (!*p_userIsActivelyDragging)
  {
    if (!self->_currentDraggingWentBelowThreshold)
    {
LABEL_16:
      v12 = 0;
      goto LABEL_21;
    }

    p_userIsHoldingCardInCurrentDrag = &self->_userWasHoldingCard;
  }

  v13 = *p_userIsHoldingCardInCurrentDrag;
  self->_currentDraggingWentBelowThreshold = 1;
  v12 = !v13;
LABEL_21:
  needsCustomLocation = self->_needsCustomLocation;
  v15 = v12;
  if (needsCustomLocation != v15)
  {
    self->_needsCustomLocation = v15;
    LOBYTE(needsCustomLocation) = 1;
  }

  return needsCustomLocation;
}

- (id)invalidationContextForBoundsChange:(CGRect)change
{
  v9[1] = *MEMORY[0x1E69E9840];
  v8.receiver = self;
  v8.super_class = PKDashboardPassFlowLayout;
  v4 = [(PKDashboardPassFlowLayout *)&v8 invalidationContextForBoundsChange:change.origin.x, change.origin.y, change.size.width, change.size.height];
  if (self->_needsCustomLocation)
  {
    _indexPathForPassGroup = [(PKDashboardPassFlowLayout *)self _indexPathForPassGroup];
    v9[0] = _indexPathForPassGroup;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];
    [v4 invalidateItemsAtIndexPaths:v6];
  }

  return v4;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  v7.receiver = self;
  v7.super_class = PKDashboardPassFlowLayout;
  v4 = [(PKDashboardPassFlowLayout *)&v7 layoutAttributesForItemAtIndexPath:path];
  v5 = [(PKDashboardPassFlowLayout *)self _modifiedLayoutAttributes:v4];

  return v5;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  v10.receiver = self;
  v10.super_class = PKDashboardPassFlowLayout;
  v4 = [(PKDashboardPassFlowLayout *)&v10 layoutAttributesForElementsInRect:rect.origin.x, rect.origin.y, rect.size.width, rect.size.height];
  v5 = [v4 mutableCopy];

  if ([v5 count])
  {
    v6 = 0;
    do
    {
      v7 = [v5 objectAtIndexedSubscript:v6];
      v8 = [(PKDashboardPassFlowLayout *)self _modifiedLayoutAttributes:v7];

      [v5 setObject:v8 atIndexedSubscript:v6];
      ++v6;
    }

    while (v6 < [v5 count]);
  }

  return v5;
}

- (CGSize)collectionViewContentSize
{
  v13.receiver = self;
  v13.super_class = PKDashboardPassFlowLayout;
  [(PKDashboardPassFlowLayout *)&v13 collectionViewContentSize];
  v4 = v3;
  v6 = v5;
  if (!self->_cellsPresented)
  {
    collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
    [collectionView bounds];
    v9 = v8 - self->_passCellSize.height;
    [collectionView safeAreaInsets];
    v6 = v6 - (v9 - v10 + -20.0);
  }

  v11 = v4;
  v12 = v6;
  result.height = v12;
  result.width = v11;
  return result;
}

- (void)revealContentAnimated:(BOOL)animated
{
  if (!self->_cellsPresented)
  {
    self->_hideCellsDuringDismissal = 0;
    self->_cellsPresented = 1;
  }
}

- (void)hideContent
{
  if (!self->_hideCellsDuringDismissal)
  {
    self->_cellsPresented = 0;
    self->_hideCellsDuringDismissal = 1;
  }
}

- (BOOL)_indexPathIsPassGroupIndexPath:(id)path
{
  pathCopy = path;
  if ([pathCopy section])
  {
    v4 = 0;
  }

  else
  {
    v4 = [pathCopy row] == 0;
  }

  return v4;
}

- (id)_modifiedLayoutAttributes:(id)attributes
{
  attributesCopy = attributes;
  collectionView = [(PKDashboardPassFlowLayout *)self collectionView];
  v6 = [attributesCopy copy];

  [v6 frame];
  v8 = v7;
  topMarginInFirstSection = v9;
  v12 = v11;
  v14 = v13;
  [v6 alpha];
  v16 = v15;
  indexPath = [v6 indexPath];
  if ([(PKDashboardPassFlowLayout *)self _indexPathIsPassGroupIndexPath:indexPath])
  {
    representedElementCategory = [v6 representedElementCategory];

    if (!representedElementCategory)
    {
      topMarginInFirstSection = self->_topMarginInFirstSection;
      if (!self->_needsCustomLocation)
      {
        goto LABEL_13;
      }

      [collectionView contentOffset];
      v20 = v19;
      [collectionView adjustedContentInset];
      v22 = v20 + v21;
      goto LABEL_12;
    }
  }

  else
  {
  }

  if (self->_hideCellsDuringDismissal && !self->_fade)
  {
    [collectionView bounds];
    v24 = v23;
    [collectionView safeAreaInsets];
    v22 = v24 - v25 - self->_topMarginInFirstSection - self->_passCellSize.height;
LABEL_12:
    topMarginInFirstSection = topMarginInFirstSection + v22;
    goto LABEL_13;
  }

  if (!self->_cellsPresented)
  {
    v16 = 0.0;
  }

LABEL_13:
  [v6 setFrame:{v8, topMarginInFirstSection, v12, v14}];
  [v6 setAlpha:v16];

  return v6;
}

@end