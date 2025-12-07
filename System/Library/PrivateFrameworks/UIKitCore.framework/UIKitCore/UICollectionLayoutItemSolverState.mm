@interface UICollectionLayoutItemSolverState
@end

@implementation UICollectionLayoutItemSolverState

void *__63___UICollectionLayoutItemSolverState__generateGeometricIndexer__block_invoke(uint64_t a1, double *a2, uint64_t a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  if (a2)
  {
    v7 = a2[10];
    v8 = a2[11];
    v9 = a2[12];
    v10 = a2[13];
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v10 = 0.0;
    v7 = 0.0;
  }

  return [(_UIRTree *)*(a1 + 32) insertFrame:a3 forIndex:v7, v8, v9, v10];
}

@end