@interface NSTextLayoutFragmentConfigureForTextAnimationContext
@end

@implementation NSTextLayoutFragmentConfigureForTextAnimationContext

char *____NSTextLayoutFragmentConfigureForTextAnimationContext_block_invoke(char *result, void *a2, unint64_t a3, _BYTE *a4)
{
  if (*(result + 9) <= a3)
  {
    *a4 = 1;
    return result;
  }

  v4 = result;
  v5 = [a2 textRangeByIntersectingWithTextRange:{*(result + 4), a4}];
  result = [v5 isNotEmpty];
  if (!result)
  {
    return result;
  }

  v6 = *(v4 + 6);
  v7 = [*(v4 + 4) location];
  v8 = *(v4 + 7);
  v9 = [v5 location];
  if (v8)
  {
    result = [v8 rangeForLocation:v9 allowsTrailingEdge:0];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v10 = result;
    result = [v8 rangeForLocation:objc_msgSend(v5 allowsTrailingEdge:{"endLocation"), 1}];
  }

  else
  {
    result = [v6 offsetFromLocation:v7 toLocation:v9];
    if (result == 0x7FFFFFFFFFFFFFFFLL)
    {
      return result;
    }

    v10 = result;
    result = [v6 offsetFromLocation:v7 toLocation:{objc_msgSend(v5, "endLocation")}];
  }

  if (result != 0x7FFFFFFFFFFFFFFFLL && result != v10)
  {
    v11 = *(*(v4 + 8) + 8);
    v12 = *(v11 + 24);
    *(v11 + 24) = v12 + 2;
    *v12 = v10;
    v12[1] = (result - v10);
  }

  return result;
}

@end