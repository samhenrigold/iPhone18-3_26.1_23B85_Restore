@interface SKUIShelfCollectionViewLayout
+ (BOOL)collectionViewCanClipToBounds;
+ (Class)layoutAttributesClass;
+ (double)snapToBoundariesDecelerationRate;
+ (void)collectionViewCanClipToBounds;
+ (void)layoutAttributesClass;
+ (void)snapToBoundariesDecelerationRate;
- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity;
- (CGSize)collectionViewContentSize;
- (id)layoutAttributesForElementsInRect:(CGRect)rect;
- (id)layoutAttributesForItemAtIndexPath:(id)path;
- (void)collectionViewContentSize;
@end

@implementation SKUIShelfCollectionViewLayout

+ (double)snapToBoundariesDecelerationRate
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIShelfCollectionViewLayout *)v2 snapToBoundariesDecelerationRate:v3];
      }
    }
  }

  return 0.8;
}

+ (BOOL)collectionViewCanClipToBounds
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIShelfCollectionViewLayout *)v2 collectionViewCanClipToBounds:v3];
      }
    }
  }

  return 1;
}

+ (Class)layoutAttributesClass
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v2 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v2)
      {
        [(SKUIShelfCollectionViewLayout *)v2 layoutAttributesClass:v3];
      }
    }
  }

  v10 = objc_opt_class();

  return v10;
}

- (CGSize)collectionViewContentSize
{
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v3 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v3)
      {
        [(SKUIShelfCollectionViewLayout *)v3 collectionViewContentSize:v4];
      }
    }
  }

  [(SKUIShelfLayoutData *)self->_layoutData totalContentSize];
  result.height = v12;
  result.width = v11;
  return result;
}

- (id)layoutAttributesForElementsInRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v8 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v8)
      {
        [(SKUIShelfCollectionViewLayout *)v8 layoutAttributesForElementsInRect:v9, v10, v11, v12, v13, v14, v15];
      }
    }
  }

  array = [MEMORY[0x277CBEB18] array];
  contentInset = [(SKUIShelfLayoutData *)self->_layoutData contentInset];
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v24 = v23;
  ShouldReverseLayoutDirection = storeShouldReverseLayoutDirection(contentInset, v25);
  v63 = 0;
  v64 = &v63;
  v65 = 0x3010000000;
  v67 = 0;
  v68 = 0;
  v66 = &unk_215F8ACD7;
  [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
  v62[0] = 0;
  v62[1] = v62;
  v62[2] = 0x2020000000;
  v28 = v20;
  if (ShouldReverseLayoutDirection)
  {
    v49 = v24;
    v29 = x;
    v30 = y;
    v31 = v27;
    [(SKUIShelfLayoutData *)self->_layoutData totalContentSize];
    v28 = v32 - v20;
    v27 = v31;
    y = v30;
    x = v29;
    v24 = v49;
  }

  v33 = x + v20;
  v34 = y + v18;
  v35 = width - (v20 + v24);
  *&v62[3] = v28;
  layoutData = self->_layoutData;
  v60[0] = MEMORY[0x277D85DD0];
  v60[1] = 3221225472;
  v60[2] = __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke;
  v60[3] = &unk_2781FC100;
  v61 = ShouldReverseLayoutDirection ^ 1;
  *&v60[6] = v33;
  *&v60[7] = v34;
  *&v60[8] = v35;
  *&v60[9] = height - (v18 + v22);
  v60[4] = v62;
  v60[5] = &v63;
  v60[10] = v27;
  [(SKUIShelfLayoutData *)layoutData enumerateColumnsUsingBlock:v60];
  v54 = 0;
  v55 = &v54;
  v56 = 0x3010000000;
  v58 = 0;
  v59 = 0;
  v57 = &unk_215F8ACD7;
  v53[0] = 0;
  v53[1] = v53;
  v53[2] = 0x2020000000;
  *&v53[3] = v18;
  v37 = self->_layoutData;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2;
  v52[3] = &unk_2781FC128;
  *&v52[6] = v33;
  *&v52[7] = v34;
  *&v52[8] = v35;
  *&v52[9] = height - (v18 + v22);
  v52[4] = v53;
  v52[5] = &v54;
  [(SKUIShelfLayoutData *)v37 enumerateRowsUsingBlock:v52];
  collectionView = [(SKUIShelfCollectionViewLayout *)self collectionView];
  delegate = [collectionView delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {

    delegate = 0;
  }

  v40 = [collectionView numberOfItemsInSection:0];
  numberOfRows = [(SKUIShelfLayoutData *)self->_layoutData numberOfRows];
  v41 = v64;
  v42 = v64[4];
  if (v42 < v64[5] + v42)
  {
    v43 = v55;
    v44 = v42 * numberOfRows;
    do
    {
      v45 = v43[4];
      if (v45 < v43[5] + v45)
      {
        do
        {
          if ((v44 + v45) < v40)
          {
            v46 = [MEMORY[0x277CCAA70] indexPathForItem:? inSection:?];
            v47 = [(SKUIShelfCollectionViewLayout *)self layoutAttributesForItemAtIndexPath:v46];

            [delegate collectionView:collectionView layout:self willApplyLayoutAttributes:v47];
            [array addObject:v47];

            v43 = v55;
          }

          ++v45;
        }

        while (v45 < v43[5] + v43[4]);
        v41 = v64;
      }

      ++v42;
      v44 += numberOfRows;
    }

    while (v42 < v41[5] + v41[4]);
  }

  _Block_object_dispose(v53, 8);
  _Block_object_dispose(&v54, 8);
  _Block_object_dispose(v62, 8);
  _Block_object_dispose(&v63, 8);

  return array;
}

double __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke(uint64_t a1, uint64_t a2, BOOL *a3, double a4)
{
  if (*(a1 + 88) == 1)
  {
    MaxX = *(*(*(a1 + 32) + 8) + 24);
    v9 = *(a1 + 48);
  }

  else
  {
    MaxX = CGRectGetMaxX(*(a1 + 48));
    v9 = *(*(*(a1 + 32) + 8) + 24);
  }

  if (MaxX <= v9)
  {
    *(*(*(a1 + 40) + 8) + 32) = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = a2 - *(*(*(a1 + 40) + 8) + 32) + 1;
  v10 = *(*(*(a1 + 32) + 8) + 24);
  v11 = *(a1 + 48);
  v12 = *(a1 + 56);
  v13 = *(a1 + 64);
  v14 = *(a1 + 72);
  if (*(a1 + 88) == 1)
  {
    v15 = v10 >= CGRectGetMaxX(*&v11) - a4;
  }

  else
  {
    v15 = v10 <= CGRectGetMinX(*&v11) + a4;
  }

  *a3 = v15;
  v16 = *(a1 + 80) + a4;
  v17 = *(*(a1 + 32) + 8);
  if (!*(a1 + 88))
  {
    v16 = -v16;
  }

  result = *(v17 + 24) + v16;
  *(v17 + 24) = result;
  return result;
}

double __67__SKUIShelfCollectionViewLayout_layoutAttributesForElementsInRect___block_invoke_2(uint64_t a1, uint64_t a2, BOOL *a3, double a4)
{
  if (*(*(*(a1 + 32) + 8) + 24) <= *(a1 + 56))
  {
    *(*(*(a1 + 40) + 8) + 32) = a2;
  }

  *(*(*(a1 + 40) + 8) + 40) = a2 - *(*(*(a1 + 40) + 8) + 32) + 1;
  v6 = *(*(*(a1 + 32) + 8) + 24);
  *a3 = v6 >= CGRectGetMaxY(*(a1 + 48)) - a4;
  v7 = *(*(a1 + 32) + 8);
  result = *(v7 + 24) + a4;
  *(v7 + 24) = result;
  return result;
}

- (id)layoutAttributesForItemAtIndexPath:(id)path
{
  pathCopy = path;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v5 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v5)
      {
        [(SKUIShelfCollectionViewLayout *)v5 layoutAttributesForItemAtIndexPath:v6, v7, v8, v9, v10, v11, v12];
      }
    }
  }

  v13 = [objc_msgSend(objc_opt_class() "layoutAttributesClass")];
  collectionView = [(SKUIShelfCollectionViewLayout *)self collectionView];
  backgroundColor = [collectionView backgroundColor];
  [v13 setBackgroundColor:backgroundColor];

  [(SKUIShelfLayoutData *)self->_layoutData contentInset];
  v17 = v16;
  v19 = v18;
  item = [pathCopy item];
  numberOfRows = [(SKUIShelfLayoutData *)self->_layoutData numberOfRows];
  v23 = item / numberOfRows;
  if (storeShouldReverseLayoutDirection(numberOfRows, v22))
  {
    for (i = [(SKUIShelfLayoutData *)self->_layoutData numberOfColumns]- 1; i > v23; --i)
    {
      [(SKUIShelfLayoutData *)self->_layoutData columnWidthForIndex:i];
      v26 = v25;
      [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
      v19 = v19 + v26 + v27;
    }
  }

  else if (v23 >= 1)
  {
    for (j = 0; j != v23; ++j)
    {
      [(SKUIShelfLayoutData *)self->_layoutData columnWidthForIndex:j];
      v30 = v29;
      [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
      v19 = v19 + v30 + v31;
    }
  }

  v32 = item % numberOfRows;
  if (v32 >= 1)
  {
    for (k = 0; k != v32; ++k)
    {
      [(SKUIShelfLayoutData *)self->_layoutData rowHeightForIndex:k];
      v17 = v17 + v34;
    }
  }

  [(SKUIShelfLayoutData *)self->_layoutData rowHeightForIndex:v32];
  v36 = v35;
  [(SKUIShelfLayoutData *)self->_layoutData columnWidthForIndex:v23];
  [v13 setFrame:{v19, v17, v37, v36}];

  return v13;
}

- (CGPoint)targetContentOffsetForProposedContentOffset:(CGPoint)offset withScrollingVelocity:(CGPoint)velocity
{
  y = velocity.y;
  x = velocity.x;
  v6 = offset.y;
  v7 = offset.x;
  if (os_variant_has_internal_content())
  {
    if (_os_feature_enabled_impl())
    {
      v9 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_FAULT);
      if (v9)
      {
        [(SKUIShelfCollectionViewLayout *)v9 targetContentOffsetForProposedContentOffset:v10 withScrollingVelocity:v11, v12, v13, v14, v15, v16];
      }
    }
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x3010000000;
  v32 = 0;
  v33 = 0;
  v31 = &unk_215F8ACD7;
  v27.receiver = self;
  v27.super_class = SKUIShelfCollectionViewLayout;
  [(SKUIShelfCollectionViewLayout *)&v27 targetContentOffsetForProposedContentOffset:v7 withScrollingVelocity:v6, x, y];
  v32 = v17;
  v33 = v18;
  [(SKUIShelfLayoutData *)self->_layoutData columnSpacing];
  v26[0] = 0;
  v26[1] = v26;
  v26[2] = 0x2020000000;
  v26[3] = 0;
  layoutData = self->_layoutData;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __99__SKUIShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke;
  v25[3] = &unk_2781FC150;
  v25[5] = &v28;
  v25[6] = v26;
  *&v25[7] = x;
  *&v25[8] = y;
  v25[9] = v20;
  v25[4] = self;
  [(SKUIShelfLayoutData *)layoutData enumerateColumnsUsingBlock:v25];
  v21 = v29[4];
  v22 = v29[5];
  _Block_object_dispose(v26, 8);
  _Block_object_dispose(&v28, 8);
  v23 = v21;
  v24 = v22;
  result.y = v24;
  result.x = v23;
  return result;
}

double __99__SKUIShelfCollectionViewLayout_targetContentOffsetForProposedContentOffset_withScrollingVelocity___block_invoke(uint64_t a1, double a2, uint64_t a3, _BYTE *a4)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 32);
  v8 = *(*(a1 + 48) + 8);
  v9 = *(v8 + 24);
  v10 = v9 + a2;
  if (v7 > v9 && v7 < v10)
  {
    v13 = *(a1 + 56);
    if (v13 > 0.0 || v13 >= 0.0 && v7 - v9 >= a2 * 0.5)
    {
      v9 = v10 + *(a1 + 72);
    }

    *(v6 + 32) = v9;
    v14 = [*(a1 + 32) collectionView];
    v15 = *(*(*(a1 + 40) + 8) + 32);
    [v14 contentSize];
    v17 = v16;
    [v14 bounds];
    v19 = v17 - v18;
    if (v15 < v17 - v18)
    {
      v19 = v15;
    }

    *(*(*(a1 + 40) + 8) + 32) = v19;
    *a4 = 1;

    v8 = *(*(a1 + 48) + 8);
    v9 = *(v8 + 24);
  }

  result = *(a1 + 72) + a2 + v9;
  *(v8 + 24) = result;
  return result;
}

+ (void)snapToBoundariesDecelerationRate
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIShelfCollectionViewLayout snapToBoundariesDecelerationRate]";
}

+ (void)collectionViewCanClipToBounds
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIShelfCollectionViewLayout collectionViewCanClipToBounds]";
}

+ (void)layoutAttributesClass
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "+[SKUIShelfCollectionViewLayout layoutAttributesClass]";
}

- (void)collectionViewContentSize
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIShelfCollectionViewLayout collectionViewContentSize]";
}

- (void)layoutAttributesForElementsInRect:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIShelfCollectionViewLayout layoutAttributesForElementsInRect:]";
}

- (void)layoutAttributesForItemAtIndexPath:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIShelfCollectionViewLayout layoutAttributesForItemAtIndexPath:]";
}

- (void)targetContentOffsetForProposedContentOffset:(uint64_t)a3 withScrollingVelocity:(uint64_t)a4 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  LODWORD(v8) = 136446210;
  *(&v8 + 4) = "[SKUIShelfCollectionViewLayout targetContentOffsetForProposedContentOffset:withScrollingVelocity:]";
}

@end