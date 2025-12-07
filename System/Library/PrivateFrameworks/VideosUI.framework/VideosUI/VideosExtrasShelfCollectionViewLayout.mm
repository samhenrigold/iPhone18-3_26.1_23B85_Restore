@interface VideosExtrasShelfCollectionViewLayout
@end

@implementation VideosExtrasShelfCollectionViewLayout

id *__57___VideosExtrasShelfCollectionViewLayout__calculateSizes__block_invoke(id *result, uint64_t a2)
{
  v2 = result;
  if (*(result + 96) == 1)
  {
    result = [result[4] collectionView:result[5] layout:result[6] insetForSectionAtIndex:a2];
  }

  else
  {
    v3 = result[9];
  }

  *(*(v2[7] + 1) + 32) = v3;
  return result;
}

void __57___VideosExtrasShelfCollectionViewLayout__calculateSizes__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v14 = v3;
  if (*(a1 + 104) == 1)
  {
    [*(a1 + 32) collectionView:*(a1 + 40) layout:*(a1 + 48) sizeForItemAtIndexPath:v3];
    v5 = v4;
    v7 = v6;
  }

  else
  {
    v5 = *(a1 + 80);
    v7 = *(a1 + 88);
  }

  v8 = *(a1 + 56);
  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 32);
  v11 = *(v9 + 40);
  v12 = [MEMORY[0x1E696B098] valueWithCGRect:{v10, v11, v5, v7}];
  [v8 setObject:v12 forKey:v14];

  v16.origin.x = v10;
  v16.origin.y = v11;
  v16.size.width = v5;
  v16.size.height = v7;
  *(*(*(a1 + 72) + 8) + 32) = CGRectUnion(*(*(*(a1 + 72) + 8) + 32), v16);
  if (*(a1 + 105) == 1)
  {
    [*(a1 + 32) collectionView:*(a1 + 40) layout:*(a1 + 48) minimumInteritemSpacingForSectionAtIndex:{objc_msgSend(v14, "section")}];
  }

  else
  {
    v13 = *(a1 + 96);
  }

  *(*(*(a1 + 64) + 8) + 32) = v5 + v13 + *(*(*(a1 + 64) + 8) + 32);
}

@end