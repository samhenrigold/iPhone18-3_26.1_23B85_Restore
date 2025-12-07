@interface CNStringRangeFinder
+ (id)rangesOfString:(id)string inString:(id)inString;
+ (id)rangesOfStrings:(id)strings inString:(id)string;
+ (void)removeOverlappingRanges:(id)ranges;
@end

@implementation CNStringRangeFinder

+ (id)rangesOfStrings:(id)strings inString:(id)string
{
  v21 = *MEMORY[0x1E69E9840];
  stringsCopy = strings;
  stringCopy = string;
  array = [MEMORY[0x1E695DF70] array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = stringsCopy;
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = [self rangesOfString:*(*(&v16 + 1) + 8 * i) inString:{stringCopy, v16}];
        [array addObjectsFromArray:v14];
      }

      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [array sortUsingComparator:&__block_literal_global_67];
  [self removeOverlappingRanges:array];

  return array;
}

+ (id)rangesOfString:(id)string inString:(id)inString
{
  stringCopy = string;
  inStringCopy = inString;
  array = [MEMORY[0x1E695DF70] array];
  v8 = [inStringCopy rangeOfString:stringCopy options:0 range:{0, objc_msgSend(inStringCopy, "length")}];
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = v8;
    v11 = v9;
    do
    {
      v12 = [MEMORY[0x1E696B098] valueWithRange:{v10, v11}];
      [array addObject:v12];
      v10 = [inStringCopy rangeOfString:stringCopy options:0 range:{v10 + v11, objc_msgSend(inStringCopy, "length") - (v10 + v11)}];
      v11 = v13;
    }

    while (v10 != 0x7FFFFFFFFFFFFFFFLL);
  }

  return array;
}

+ (void)removeOverlappingRanges:(id)ranges
{
  rangesCopy = ranges;
  if ([rangesCopy count] >= 2)
  {
    v3 = [rangesCopy objectAtIndex:0];
    rangeValue = [v3 rangeValue];
    v6 = v5;

    if ([rangesCopy count] >= 2)
    {
      v7 = 1;
      do
      {
        v8 = [rangesCopy objectAtIndex:v7];
        rangeValue2 = [v8 rangeValue];
        v11 = v10;

        if (rangeValue2 >= v6 + rangeValue)
        {
          ++v7;
          rangeValue = rangeValue2;
          v6 = v11;
        }

        else
        {
          [rangesCopy removeObjectAtIndex:v7];
        }
      }

      while (v7 < [rangesCopy count]);
    }
  }
}

@end