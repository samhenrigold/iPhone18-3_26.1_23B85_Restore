@interface UITableMetricsAdapter
- (__n128)_updateSharedSectionMetricsForListGeometry:(uint64_t)geometry;
- (char)initWithTableStyle:(void *)style scrollView:;
- (double)_listGeometry;
- (double)defaultTableContentInsets;
- (double)defaultTableLayoutMargins;
- (double)paddingAboveFirstSectionHeader;
- (double)paddingAboveFirstSectionWithoutHeader;
- (double)paddingAboveSectionHeaders;
- (double)rowSpacing;
- (id)tableBackgroundColor;
- (id)tableSeparatorColor;
- (id)tableSeparatorVisualEffect;
- (void)_updateSharedListBehaviors;
- (void)_updateSharedSeparatorMetrics;
@end

@implementation UITableMetricsAdapter

- (id)tableBackgroundColor
{
  if (self)
  {
    selfCopy = self;
    if ((self[19] & 1) == 0)
    {
      [(UITableMetricsAdapter *)self _listGeometry];
      [(UITableMetricsAdapter *)selfCopy _updateSharedSectionMetricsForListGeometry:v4];
    }

    self = selfCopy[26];
    v1 = vars8;
  }

  return self;
}

- (void)_updateSharedSeparatorMetrics
{
  if (self)
  {
    *obj = 0u;
    v12 = 0u;
    v2 = +[_UIListMetrics sharedMetrics];
    WeakRetained = objc_loadWeakRetained((self + 248));
    traitCollection = [WeakRetained traitCollection];
    if (v2)
    {
      objc_msgSend_metricsForSeparatorWithListStyle_traitCollection_(v2);
    }

    else
    {
      *obj = 0u;
      v12 = 0u;
    }

    objc_storeStrong((self + 224), obj[1]);
    v5 = *(&v12 + 1);
    if (*(&v12 + 1) >= 2uLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"UITableViewCellSeparatorStyle _UITableViewCellSeparatorStyleFromListSeparatorStyle(_UIListSeparatorStyle)"];
      [currentHandler handleFailureInFunction:v7 file:@"UITableViewCell_Internal.h" lineNumber:60 description:{@"UIKit internal inconsistency: unknown separator style (%ld)", *(&v12 + 1)}];

      v5 = 1;
    }

    *(self + 232) = v5;
    if (obj[0] != 0x8000000000000000)
    {
      v8 = [UIBlurEffect effectWithStyle:?];
      v9 = [UIVibrancyEffect effectForBlurEffect:v8 style:7];
      v10 = *(self + 216);
      *(self + 216) = v9;
    }

    *(self + 152) |= 2u;
  }
}

- (id)tableSeparatorColor
{
  if (self)
  {
    selfCopy = self;
    if ((self[19] & 2) == 0)
    {
      [(UITableMetricsAdapter *)self _updateSharedSeparatorMetrics];
    }

    self = selfCopy[28];
    v1 = vars8;
  }

  return self;
}

- (id)tableSeparatorVisualEffect
{
  if (self)
  {
    selfCopy = self;
    if ((self[19] & 2) == 0)
    {
      [(UITableMetricsAdapter *)self _updateSharedSeparatorMetrics];
    }

    self = selfCopy[27];
    v1 = vars8;
  }

  return self;
}

- (double)defaultTableContentInsets
{
  if (!self)
  {
    return 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(UITableMetricsAdapter *)self _listGeometry];
  v2 = *(self + 88);
  v3 = *(self + 120);
  v14 = *(self + 104);
  v15 = v3;
  v16 = *(self + 136);
  v4 = *(self + 24);
  v5 = *(self + 56);
  v10 = *(self + 40);
  v11 = v5;
  v12 = *(self + 72);
  v13 = v2;
  v8 = *(self + 8);
  v9 = v4;
  v7[6] = v23;
  v7[7] = v24;
  v7[8] = v25;
  v7[2] = v19;
  v7[3] = v20;
  v7[4] = v21;
  v7[5] = v22;
  v7[0] = v17;
  v7[1] = v18;
  if ((_UIListGeometryEqualToListGeometry(&v8, v7) & 1) == 0)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v8 = v17;
    v9 = v18;
    [(UITableMetricsAdapter *)self _updateSharedSectionMetricsForListGeometry:?];
  }

  return *(self + 256);
}

- (double)_listGeometry
{
  if (self)
  {
    WeakRetained = objc_loadWeakRetained((self + 248));
    [WeakRetained directionalLayoutMargins];
    v31 = v5;
    v32 = v6;
    v8 = v7;
    v10 = v9;

    v11 = objc_loadWeakRetained((self + 248));
    [v11 safeAreaInsets];
    v13 = v12;
    v15 = v14;
    v17 = v16;
    v19 = v18;

    v20 = objc_loadWeakRetained((self + 248));
    [v20 bounds];
    v22 = v21;
    v24 = v23;

    v25 = objc_loadWeakRetained((self + 248));
    traitCollection = [v25 traitCollection];

    layoutDirection = [traitCollection layoutDirection];
    [UIViewController _horizontalContentMarginForViewWidth:traitCollection safeAreaInsets:v22 traitCollection:v13, v15, v17, v19];
    *a2 = 0;
    *(a2 + 8) = v27;
    *(a2 + 16) = 0;
    *(a2 + 24) = v27;
    *(a2 + 32) = v31;
    *(a2 + 40) = v8;
    *(a2 + 48) = v10;
    *(a2 + 56) = v32;
    if (layoutDirection == 1)
    {
      v28 = v19;
    }

    else
    {
      v28 = v15;
    }

    if (layoutDirection == 1)
    {
      v29 = v15;
    }

    else
    {
      v29 = v19;
    }

    *(a2 + 64) = v13;
    *(a2 + 72) = v28;
    *(a2 + 80) = v17;
    *(a2 + 88) = v29;
    *(a2 + 96) = 0u;
    *(a2 + 112) = 0u;
    *(a2 + 128) = v22;
    *(a2 + 136) = v24;
  }

  else
  {
    result = 0.0;
    *(a2 + 112) = 0u;
    *(a2 + 128) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 96) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

- (void)_updateSharedListBehaviors
{
  if (self)
  {
    v2 = +[_UIListMetrics sharedMetrics];
    v3 = *(self + 240);
    WeakRetained = objc_loadWeakRetained((self + 248));
    traitCollection = [WeakRetained traitCollection];
    v6 = [v2 behaviorsForListWithStyle:v3 traitCollection:traitCollection];
    v8 = v7;

    *(self + 184) = v8;
    *(self + 192) = (v6 >> 1) & 1;
    *(self + 152) |= 4u;
  }
}

- (double)rowSpacing
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 152) & 1) == 0)
  {
    [(UITableMetricsAdapter *)self _listGeometry];
    [(UITableMetricsAdapter *)self _updateSharedSectionMetricsForListGeometry:v3];
  }

  return *(self + 200);
}

- (double)defaultTableLayoutMargins
{
  if (!self)
  {
    return 0.0;
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v17 = 0u;
  [(UITableMetricsAdapter *)self _listGeometry];
  v2 = *(self + 88);
  v3 = *(self + 120);
  v14 = *(self + 104);
  v15 = v3;
  v16 = *(self + 136);
  v4 = *(self + 24);
  v5 = *(self + 56);
  v10 = *(self + 40);
  v11 = v5;
  v12 = *(self + 72);
  v13 = v2;
  v8 = *(self + 8);
  v9 = v4;
  v7[6] = v23;
  v7[7] = v24;
  v7[8] = v25;
  v7[2] = v19;
  v7[3] = v20;
  v7[4] = v21;
  v7[5] = v22;
  v7[0] = v17;
  v7[1] = v18;
  if ((_UIListGeometryEqualToListGeometry(&v8, v7) & 1) == 0)
  {
    v14 = v23;
    v15 = v24;
    v16 = v25;
    v10 = v19;
    v11 = v20;
    v12 = v21;
    v13 = v22;
    v8 = v17;
    v9 = v18;
    [(UITableMetricsAdapter *)self _updateSharedSectionMetricsForListGeometry:?];
  }

  return *(self + 288);
}

- (double)paddingAboveFirstSectionWithoutHeader
{
  if (!self)
  {
    return 0.0;
  }

  result = *(self + 168);
  if (result == 2.22507386e-308)
  {
    v3 = +[_UIListMetrics sharedMetrics];
    WeakRetained = objc_loadWeakRetained((self + 248));
    traitCollection = [WeakRetained traitCollection];
    v6 = traitCollection;
    if (v3)
    {
      objc_msgSend_metricsForSectionWithPosition_hasHeader_hasFooter_listGeometry_listStyle_spacingStyle_traitCollection_(v3, traitCollection);
    }

    result = 0.0;
    *(self + 168) = 0;
  }

  return result;
}

- (double)paddingAboveSectionHeaders
{
  if (!self)
  {
    return 0.0;
  }

  result = *(self + 176);
  if (result == 2.22507386e-308)
  {
    v3 = +[_UIListMetrics sharedMetrics];
    WeakRetained = objc_loadWeakRetained((self + 248));
    traitCollection = [WeakRetained traitCollection];
    v6 = traitCollection;
    if (v3)
    {
      objc_msgSend_metricsForSectionWithPosition_hasHeader_hasFooter_listGeometry_listStyle_spacingStyle_traitCollection_(v3, traitCollection);
    }

    result = 0.0;
    *(self + 176) = 0;
  }

  return result;
}

- (double)paddingAboveFirstSectionHeader
{
  if (!self)
  {
    return 0.0;
  }

  result = *(self + 160);
  if (result == 2.22507386e-308)
  {
    v3 = +[_UIListMetrics sharedMetrics];
    WeakRetained = objc_loadWeakRetained((self + 248));
    traitCollection = [WeakRetained traitCollection];
    v6 = traitCollection;
    if (v3)
    {
      objc_msgSend_metricsForSectionWithPosition_hasHeader_hasFooter_listGeometry_listStyle_spacingStyle_traitCollection_(v3, traitCollection);
    }

    result = 0.0;
    *(self + 160) = 0;
  }

  return result;
}

- (char)initWithTableStyle:(void *)style scrollView:
{
  selfCopy = self;
  if (self)
  {
    if (!style)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:sel_initWithTableStyle_scrollView_ object:selfCopy file:@"UITableMetricsAdapter.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"scrollView != nil"}];
    }

    v10.receiver = selfCopy;
    v10.super_class = UITableMetricsAdapter;
    selfCopy = objc_msgSendSuper2(&v10, sel_init);
    if (selfCopy)
    {
      if (a2 >= 3)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UIListStyle _UIListStyleForTableViewStyle(UITableViewStyle)"];
        [currentHandler2 handleFailureInFunction:v7 file:@"UITableView_Internal.h" lineNumber:101 description:{@"UIKit internal inconsistency: unknown table view style (%ld)", a2}];

        a2 = 0;
      }

      *(selfCopy + 30) = a2;
      objc_storeWeak(selfCopy + 31, style);
      *(selfCopy + 8) = 0u;
      *(selfCopy + 24) = 0u;
      *(selfCopy + 40) = 0u;
      *(selfCopy + 56) = 0u;
      *(selfCopy + 72) = 0u;
      *(selfCopy + 88) = 0u;
      *(selfCopy + 104) = 0u;
      *(selfCopy + 120) = 0u;
      *(selfCopy + 136) = 0u;
      *(selfCopy + 10) = vdupq_n_s64(0x10000000000000uLL);
      *(selfCopy + 22) = 0x10000000000000;
    }
  }

  return selfCopy;
}

- (__n128)_updateSharedSectionMetricsForListGeometry:(uint64_t)geometry
{
  if (geometry)
  {
    v14 = 0u;
    v15 = 0u;
    v4 = +[_UIListMetrics sharedMetrics];
    WeakRetained = objc_loadWeakRetained((geometry + 248));
    traitCollection = [WeakRetained traitCollection];
    v7 = traitCollection;
    if (v4)
    {
      objc_msgSend_metricsForSectionWithPosition_hasHeader_hasFooter_listGeometry_listStyle_spacingStyle_traitCollection_(v4, traitCollection);
    }

    else
    {
      v14 = 0u;
      v15 = 0u;
    }

    *(geometry + 256) = 0;
    *(geometry + 264) = *(&v14 + 1);
    *(geometry + 272) = 0;
    *(geometry + 280) = *(&v15 + 1);
    *(geometry + 296) = 0;
    *(geometry + 288) = 0;
    *(geometry + 304) = 0;
    *(geometry + 312) = 0;
    *(geometry + 200) = 0;
    objc_storeStrong((geometry + 208), 0);
    *(geometry + 8) = *a2;
    v8 = a2[1];
    v9 = a2[2];
    v10 = a2[3];
    *(geometry + 72) = a2[4];
    *(geometry + 56) = v10;
    *(geometry + 40) = v9;
    *(geometry + 24) = v8;
    result = a2[5];
    v12 = a2[6];
    v13 = a2[7];
    *(geometry + 136) = a2[8];
    *(geometry + 120) = v13;
    *(geometry + 104) = v12;
    *(geometry + 88) = result;
    *(geometry + 152) |= 1u;
  }

  return result;
}

@end