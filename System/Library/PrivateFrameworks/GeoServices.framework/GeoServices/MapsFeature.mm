@interface MapsFeature
@end

@implementation MapsFeature

void __MapsFeature_AddDelegateListener_block_invoke_2(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKey:*(a1 + 32)];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 arrayByAddingObjectsFromArray:*(*(*(a1 + 40) + 8) + 40)];
    v6 = *(*(a1 + 40) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;
  }

  [v8 setObject:*(*(*(a1 + 40) + 8) + 40) forKey:*(a1 + 32)];
}

@end