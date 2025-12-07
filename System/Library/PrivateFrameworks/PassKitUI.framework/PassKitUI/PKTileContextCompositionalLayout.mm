@interface PKTileContextCompositionalLayout
- (PKTileContextCompositionalLayout)init;
- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment;
@end

@implementation PKTileContextCompositionalLayout

- (PKTileContextCompositionalLayout)init
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3042000000;
  v9 = __Block_byref_object_copy__4;
  v10 = __Block_byref_object_dispose__4;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40__PKTileContextCompositionalLayout_init__block_invoke;
  v5[3] = &unk_1E80139C0;
  v5[4] = &v6;
  v4.receiver = self;
  v4.super_class = PKTileContextCompositionalLayout;
  v2 = [(PKTileContextCompositionalLayout *)&v4 initWithSectionProvider:v5];
  if (v2)
  {
    objc_storeWeak(v7 + 5, v2);
  }

  _Block_object_dispose(&v6, 8);
  objc_destroyWeak(&v11);
  return v2;
}

id __40__PKTileContextCompositionalLayout_init__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(*(a1 + 32) + 8);
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((v4 + 40));
  v7 = [WeakRetained layoutSectionAtIndex:a2 layoutEnvironment:v5];

  return v7;
}

- (id)layoutSectionAtIndex:(int64_t)index layoutEnvironment:(id)environment
{
  indexCopy = index;
  v6 = [(PKTileContextCompositionalLayout *)self collectionView:index];
  delegate = [v6 delegate];
  dataSource = [v6 dataSource];
  v9 = [dataSource collectionView:v6 numberOfItemsInSection:indexCopy];

  if (v9 < 1)
  {
    v37 = 0;
  }

  else
  {
    v10 = objc_opt_respondsToSelector();
    v11 = objc_opt_respondsToSelector();
    v12 = 12.0;
    v13 = 12.0;
    if (v10)
    {
      if ([delegate collectionView:v6 layout:self hasHeaderForSectionAtIndex:indexCopy])
      {
        v13 = 0.0;
      }

      else
      {
        v13 = 12.0;
      }
    }

    if (v11)
    {
      if ([delegate collectionView:v6 layout:self hasFooterForSectionAtIndex:indexCopy])
      {
        v12 = 0.0;
      }

      else
      {
        v12 = 12.0;
      }
    }

    [v6 frame];
    v15 = v14;
    [v6 safeAreaInsets];
    v18 = v15 - v16 - v17;
    v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v20 = 0;
    v21 = 0.0;
    do
    {
      v22 = [MEMORY[0x1E696AC88] indexPathForRow:v20 inSection:indexCopy];
      [delegate collectionView:v6 layout:self sizeForItemAtIndexPath:v22];
      v25 = v24.n128_f64[0];
      if (v18 >= v23.n128_f64[0])
      {
        v26 = v23.n128_f64[0];
      }

      else
      {
        v26 = v18;
      }

      v23.n128_f64[0] = (v15 - v26) * 0.5;
      PKFloatRoundToPixel(v23, v24);
      [MEMORY[0x1E6995570] customItemWithFrame:?];
      v27 = indexCopy;
      v28 = v6;
      v30 = v29 = delegate;
      [v19 addObject:v30];

      delegate = v29;
      v6 = v28;
      indexCopy = v27;
      v21 = v21 + v25;

      ++v20;
    }

    while (v9 != v20);
    v31 = [MEMORY[0x1E6995558] fractionalWidthDimension:1.0];
    v32 = [MEMORY[0x1E6995558] absoluteDimension:v21];
    v33 = [MEMORY[0x1E6995588] sizeWithWidthDimension:v31 heightDimension:v32];
    v34 = MEMORY[0x1E6995568];
    v39[0] = MEMORY[0x1E69E9820];
    v39[1] = 3221225472;
    v39[2] = __75__PKTileContextCompositionalLayout_layoutSectionAtIndex_layoutEnvironment___block_invoke;
    v39[3] = &unk_1E80139E8;
    v40 = v19;
    v35 = v19;
    v36 = [v34 customGroupWithLayoutSize:v33 itemProvider:v39];
    v37 = [MEMORY[0x1E6995580] sectionWithGroup:v36];
    [v37 setContentInsets:{v13, 0.0, v12, 0.0}];
  }

  return v37;
}

@end