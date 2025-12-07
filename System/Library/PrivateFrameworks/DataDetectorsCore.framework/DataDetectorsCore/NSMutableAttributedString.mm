@interface NSMutableAttributedString
@end

@implementation NSMutableAttributedString

char *__65__NSMutableAttributedString_DataDetectorsSupport__dd_chopResults__block_invoke(char *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = result;
    v7 = [a2 range];
    v9 = v7 + v8;
    result = [*(v6 + 4) length];
    if (v9 > result)
    {
      v10 = *(v6 + 4);

      return [v10 removeAttribute:@"DDResultAttributeName" range:{a3, a4}];
    }
  }

  return result;
}

void *__70__NSMutableAttributedString_DataDetectorsSupport__dd_offsetResultsBy___block_invoke(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = result;
    if ([*(*(result[5] + 8) + 40) objectForKey:a2])
    {
      v8 = v7[4];
      v9 = [*(*(v7[5] + 8) + 40) objectForKey:a2];

      return [v8 addAttribute:@"DDResultAttributeName" value:v9 range:{a3, a4}];
    }

    else if ([a2 range] + v7[6] < 0)
    {
      v13 = v7[4];

      return [v13 removeAttribute:@"DDResultAttributeName" range:{a3, a4}];
    }

    else
    {
      Copy = DDResultCreateCopy([a2 coreResult]);
      v11 = [DDScannerResult resultFromCoreResult:Copy];
      CFRelease(Copy);
      [v11 offsetRangeBy:v7[6]];
      [v7[4] addAttribute:@"DDResultAttributeName" value:v11 range:{a3, a4}];
      v12 = *(*(v7[5] + 8) + 40);

      return [v12 setObject:v11 forKey:a2];
    }
  }

  return result;
}

@end