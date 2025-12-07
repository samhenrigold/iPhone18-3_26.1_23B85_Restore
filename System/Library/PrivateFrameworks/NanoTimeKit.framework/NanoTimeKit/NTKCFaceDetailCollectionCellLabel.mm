@interface NTKCFaceDetailCollectionCellLabel
@end

@implementation NTKCFaceDetailCollectionCellLabel

double __49___NTKCFaceDetailCollectionCellLabel__textBounds__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = NTKCScreenStyle(a1, a2);
  result = 90.6666667;
  if (*(a1 + 32))
  {
    result = 83.3333333;
  }

  v5 = 93.0;
  if (*(a1 + 32))
  {
    v5 = 75.0;
  }

  if (v3 != 1)
  {
    return v5;
  }

  return result;
}

@end