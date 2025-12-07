@interface SBHIconGridRangeCellIndexesNotInIconGridRange
@end

@implementation SBHIconGridRangeCellIndexesNotInIconGridRange

unsigned __int16 *__SBHIconGridRangeCellIndexesNotInIconGridRange_block_invoke(unsigned __int16 *result, unint64_t a2)
{
  v2 = *(result + 6);
  if (!WORD1(v2))
  {
    return [*(result + 4) addIndex:a2];
  }

  v3 = *(result + 5);
  if (v3 > a2 || v3 + v2 <= a2)
  {
    v5 = result[28];
    v6 = v3 + v5;
    v7 = 1;
    do
    {
      v8 = v7;
      if (WORD1(v2) == v7)
      {
        break;
      }

      v9 = v6;
      ++v7;
      v6 += v5;
    }

    while (v9 > a2 || *(result + 6) + v9 <= a2);
    if (v8 >= WORD1(v2))
    {
      return [*(result + 4) addIndex:a2];
    }
  }

  return result;
}

@end