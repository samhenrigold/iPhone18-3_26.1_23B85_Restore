@interface _UICollectionCompositionalLayoutSolverUpdate
+ (id)solverUpdateForVisibleBounds:(void *)bounds updateItems:(void *)items updateTranslator:(double)translator finalDataSourceSnapshot:(double)snapshot;
@end

@implementation _UICollectionCompositionalLayoutSolverUpdate

+ (id)solverUpdateForVisibleBounds:(void *)bounds updateItems:(void *)items updateTranslator:(double)translator finalDataSourceSnapshot:(double)snapshot
{
  objc_opt_self();
  v15 = [_UICollectionCompositionalLayoutSolverUpdate alloc];
  if (v15)
  {
    v19.receiver = v15;
    v19.super_class = _UICollectionCompositionalLayoutSolverUpdate;
    v16 = objc_msgSendSuper2(&v19, sel_init);
    v17 = v16;
    if (v16)
    {
      *(v16 + 4) = translator;
      *(v16 + 5) = snapshot;
      *(v16 + 6) = a7;
      *(v16 + 7) = a8;
      objc_storeStrong(v16 + 1, a2);
      objc_storeStrong(v17 + 2, bounds);
      objc_storeStrong(v17 + 3, items);
    }
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

@end