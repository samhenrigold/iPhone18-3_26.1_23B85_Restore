@interface VMUNonOverlappingRangeArray
- (id)subtract:(id)subtract mergeRanges:(BOOL)ranges;
- (void)_mergeAllBitsOfRange:(_VMURange)range excludingRanges:(id)ranges mergeRanges:(BOOL)mergeRanges;
- (void)addOrExtendRange:(_VMURange)range;
- (void)mergeRange:(_VMURange)range;
- (void)mergeRange:(_VMURange)range excludingRanges:(id)ranges;
- (void)mergeRanges:(id)ranges;
- (void)mergeRanges:(id)ranges excludingRanges:(id)excludingRanges;
- (void)sortAndMergeRanges;
@end

@implementation VMUNonOverlappingRangeArray

- (void)addOrExtendRange:(_VMURange)range
{
  length = range.length;
  location = range.location;
  count = self->super._count;
  if (!count)
  {
    goto LABEL_5;
  }

  v7 = &self->super._ranges[count - 1];
  v8 = v7->location;
  v9 = v7->length;
  if (VMURangeContainsRange(v7->location, v9, range.location, range.length))
  {
    return;
  }

  if (VMURangeIntersectsOrAbutsRange(location, length, v8, v9))
  {
    v10 = &self->super._ranges[self->super._count - 1];
    v10->location = VMUUnionRange(location, length, v8);
    v10->length = v11;
  }

  else
  {
LABEL_5:
    v12.receiver = self;
    v12.super_class = VMUNonOverlappingRangeArray;
    [(VMURangeArray *)&v12 addRange:location, length];
  }
}

- (void)sortAndMergeRanges
{
  if (!self->super._sorted)
  {
    v6.receiver = self;
    v6.super_class = VMUNonOverlappingRangeArray;
    [(VMURangeArray *)&v6 sort];
  }

  ranges = self->super._ranges;
  count = self->super._count;
  self->super._count = 0;
  self->super._max = 8;
  self->super._ranges = malloc_type_malloc(0x80uLL, 0x1000040451B5BE8uLL);
  if (count)
  {
    p_length = &ranges->length;
    do
    {
      [(VMUNonOverlappingRangeArray *)self addOrExtendRange:*(p_length - 1), *p_length];
      p_length += 2;
      --count;
    }

    while (count);
  }

  free(ranges);
}

- (void)mergeRange:(_VMURange)range
{
  length = range.length;
  location = range.location;
  if (!self->super._sorted)
  {
    [(VMURangeArray *)self sort];
  }

  count = self->super._count;
  if (count)
  {
    v7 = 0;
    while (1)
    {
      v8 = v7 + (count >> 1);
      v9 = &self->super._ranges[v8];
      v10 = v9->location;
      v11 = v9->length;
      if (v9->location == location && v11 == length)
      {
        break;
      }

      if (VMURangeIntersectsRange(location, length + 1, v9->location, v11 + 1))
      {
        v13 = VMUUnionRange(v10, v11, location);
        v15 = v14;
        RangeArrayRemoveRangeAtIndex(self, v7 + (count >> 1));

        [(VMUNonOverlappingRangeArray *)self mergeRange:v13, v15];
        return;
      }

      if (location >= v10)
      {
        count += ~(count >> 1);
      }

      else
      {
        count >>= 1;
      }

      if (location >= v10)
      {
        v7 = v8 + 1;
      }

      if (!count)
      {
        goto LABEL_18;
      }
    }
  }

  else
  {
    v7 = 0;
LABEL_18:

    RangeArrayInsertRangeAtIndex(self, location, length, v7);
  }
}

- (void)mergeRanges:(id)ranges
{
  v3 = *(ranges + 2);
  if (v3)
  {
    v6 = 16 * v3;
    do
    {
      [(VMUNonOverlappingRangeArray *)self mergeRange:*(*(ranges + 2) + v6 - 16), *(*(ranges + 2) + v6 - 8)];
      v6 -= 16;
    }

    while (v6);
  }
}

- (void)mergeRange:(_VMURange)range excludingRanges:(id)ranges
{
  v5 = [ranges subrangeNotExcludedBySelfForRange:{range.location, range.length}];
  if (v6)
  {

    [(VMUNonOverlappingRangeArray *)self mergeRange:v5, v6];
  }
}

- (void)mergeRanges:(id)ranges excludingRanges:(id)excludingRanges
{
  v4 = *(ranges + 2);
  if (v4)
  {
    v8 = 16 * v4;
    do
    {
      [(VMUNonOverlappingRangeArray *)self mergeRange:*(*(ranges + 2) + v8 - 16) excludingRanges:*(*(ranges + 2) + v8 - 8), excludingRanges];
      v8 -= 16;
    }

    while (v8);
  }
}

- (void)_mergeAllBitsOfRange:(_VMURange)range excludingRanges:(id)ranges mergeRanges:(BOOL)mergeRanges
{
  mergeRangesCopy = mergeRanges;
  length = range.length;
  location = range.location;
  rangesCopy = ranges;
  if (length)
  {
    v16 = rangesCopy;
    v10 = 16 * rangesCopy[2];
    while (1)
    {
      v11 = v10 - 16;
      if (!v10)
      {
        break;
      }

      v12 = VMUIntersectionRange(location, length, *(*(v16 + 2) + v10 - 16), *(*(v16 + 2) + v10 - 8));
      v10 = v11;
      if (v13)
      {
        v14 = v12;
        v15 = v13;
        [(VMUNonOverlappingRangeArray *)self _mergeAllBitsOfRange:location excludingRanges:v12 - location mergeRanges:v16, mergeRangesCopy];
        [(VMUNonOverlappingRangeArray *)self _mergeAllBitsOfRange:v14 + v15 excludingRanges:location + length - (v14 + v15) mergeRanges:v16, mergeRangesCopy];
        goto LABEL_9;
      }
    }

    if (mergeRangesCopy)
    {
      [(VMUNonOverlappingRangeArray *)self mergeRange:location, length];
    }

    else
    {
      [(VMURangeArray *)self addRange:location, length];
    }

LABEL_9:
    rangesCopy = v16;
  }
}

- (id)subtract:(id)subtract mergeRanges:(BOOL)ranges
{
  rangesCopy = ranges;
  subtractCopy = subtract;
  v7 = objc_opt_new();
  if (self->super._count)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      ++v9;
      [v7 _mergeAllBitsOfRange:self->super._ranges[v8].location excludingRanges:self->super._ranges[v8].length mergeRanges:{subtractCopy, rangesCopy}];
      ++v8;
    }

    while (v9 < self->super._count);
  }

  return v7;
}

@end