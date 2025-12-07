@interface PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper
@end

@implementation PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper

void __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  *a3 = *a2;
  a3[1] = v4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [*(*(a1 + 32) + 56) reverseObjectEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10)
        {
          objc_msgSend_indexPathAfterRevertingChangesFromIndexPath_hasIncrementalChanges_objectChanged_(v10, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3));
        }

        else
        {
          v11 = 0u;
          v12 = 0u;
        }

        *a3 = v11;
        a3[1] = v12;
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void *__115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return objc_msgSend_visualPositionAfterRevertingChangesFromIndex_(result, a2, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_3(uint64_t a1@<X0>, _OWORD *a2@<X1>, _OWORD *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  *a3 = *a2;
  a3[1] = v4;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = *(*(a1 + 32) + 56);
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      v9 = 0;
      do
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * v9);
        if (v10)
        {
          objc_msgSend_indexPathAfterApplyingChangesToIndexPath_hasIncrementalChanges_objectChanged_(v10, *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3));
        }

        else
        {
          v11 = 0u;
          v12 = 0u;
        }

        *a3 = v11;
        a3[1] = v12;
        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }
}

void *__115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = *(*(a1 + 32) + 64);
  if (result)
  {
    return objc_msgSend_visualPositionAfterApplyingChangesToIndex_(result, a2, a2);
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  return result;
}

void __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_5(uint64_t a1)
{
  [*(a1 + 32) headerRect];
  MinY = CGRectGetMinY(v3);
  [*(a1 + 32) sectionRect];
  CGRectGetMinY(v4);
  PXFloatApproximatelyEqualToFloat(MinY);
}

unint64_t __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_6(uint64_t a1, unint64_t a2)
{
  if (*(*(a1 + 32) + 32) == 1 && ((a2 ^ (a2 >> 2) & 1) & 1) != 0)
  {
    a2 ^= 5uLL;
  }

  return a2;
}

double __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_7(void *a1)
{
  v1 = a1;
  [v1 sectionRect];
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  [v1 keyAssetRect];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;

  v19.origin.x = v11;
  v19.origin.y = v13;
  v19.size.width = v15;
  v19.size.height = v17;
  if (!CGRectIsNull(v19))
  {
    v20.origin.x = v11;
    v20.origin.y = v13;
    v20.size.width = v15;
    v20.size.height = v17;
    CGRectGetMaxY(v20);
    v21.origin.x = v3;
    v21.origin.y = v5;
    v21.size.width = v7;
    v21.size.height = v9;
    CGRectGetMaxY(v21);
  }

  return v3;
}

double __115___PXCuratedLibraryLayoutZoomLevelChangeAnimationHelper__adjustGeometries_styles_infos_spriteIndexRange_appearing___block_invoke_8(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  MidX = CGRectGetMidX(*&a3);
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  if (a1 >= a2)
  {
    CGRectGetMinY(*&v13);
  }

  else
  {
    CGRectGetMaxY(*&v13);
  }

  return MidX;
}

@end