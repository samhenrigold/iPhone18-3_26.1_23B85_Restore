@interface UIScrollView
@end

@implementation UIScrollView

uint64_t __77__UIScrollView_PhotosUI__pu_ppt_scrollToContentOffset_withCompletionHandler___block_invoke_2(uint64_t a1, _BYTE *a2, double a3)
{
  [*(a1 + 32) contentOffset];
  v7 = v6;
  v8 = (*(*(a1 + 40) + 16))();
  v9 = (*(*(a1 + 40) + 16))(v7, *(a1 + 56) * a3, *(a1 + 72));
  PXPointRoundToPixel();
  [*(a1 + 32) contentOffset];
  PXPointRoundToPixel();
  result = PXPointApproximatelyEqualToPoint();
  if (result)
  {
    *a2 = 1;
  }

  else
  {
    v11 = *(a1 + 32);

    return [v11 setContentOffset:0 animated:{v8, v9}];
  }

  return result;
}

double __77__UIScrollView_PhotosUI__pu_ppt_scrollToContentOffset_withCompletionHandler___block_invoke(uint64_t a1, double a2, double a3, double a4)
{
  PXFloatSign();
  v8 = v7;
  PXFloatSign();
  if (v8 == v9)
  {
    a2 = a2 + a3;
    PXFloatSign();
    v11 = v10;
    PXFloatSign();
    if (v11 != v12)
    {
      return a4;
    }
  }

  return a2;
}

@end