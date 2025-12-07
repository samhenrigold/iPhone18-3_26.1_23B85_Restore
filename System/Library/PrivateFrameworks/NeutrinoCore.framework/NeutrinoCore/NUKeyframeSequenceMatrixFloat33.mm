@interface NUKeyframeSequenceMatrixFloat33
- (NUKeyframeSequenceMatrixFloat33)initWithCount:(unint64_t)count times:(id *)times values:(id *)values;
- (__n128)valueOfKeyframeAtIndex:(uint64_t)index;
- (void)dealloc;
- (void)sampleAtTime:(__int128 *)time;
@end

@implementation NUKeyframeSequenceMatrixFloat33

- (void)sampleAtTime:(__int128 *)time
{
  if ((*(time + 12) & 1) == 0)
  {
    return objc_msgSend_valueOfKeyframeAtIndex_(self, a2, 0);
  }

  v9 = *time;
  v10 = *(time + 2);
  v6 = [self indexOfKeyframeAtOrBeforeTime:&v9];
  if ([self interpolation])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NUKeyframeSequence.m" lineNumber:799 description:@"Don't know how to interpolate transforms"];
  }

  return objc_msgSend_valueOfKeyframeAtIndex_(self, v7, v6);
}

- (__n128)valueOfKeyframeAtIndex:(uint64_t)index
{
  if (self[5])
  {
    indexCopy = [self count] - 1;
    if (indexCopy >= index)
    {
      indexCopy = index;
    }

    v6 = (self[5] + 48 * (indexCopy & ~(indexCopy >> 63)));
  }

  else
  {
    v6 = MEMORY[0x1E69E9B10];
  }

  return *v6;
}

- (void)dealloc
{
  values = self->_values;
  if (values)
  {
    free(values);
  }

  v4.receiver = self;
  v4.super_class = NUKeyframeSequenceMatrixFloat33;
  [(NUKeyframeSequence *)&v4 dealloc];
}

- (NUKeyframeSequenceMatrixFloat33)initWithCount:(unint64_t)count times:(id *)times values:(id *)values
{
  v17.receiver = self;
  v17.super_class = NUKeyframeSequenceMatrixFloat33;
  v7 = [(NUKeyframeSequence *)&v17 initWithInterpolation:0 count:count times:times];
  if (count)
  {
    v8 = malloc_type_calloc(count, 0x30uLL, 0x1000040EED21634uLL);
    v9 = 0;
    v7->_values = v8;
    v10 = 1;
    do
    {
      v11 = 3 * v9;
      v12 = (v7->_values + 16 * v11);
      v13 = (values + 16 * v11);
      v14 = *v13;
      v15 = v13[2];
      v12[1] = v13[1];
      v12[2] = v15;
      *v12 = v14;
      v9 = v10++;
    }

    while (v9 < count);
  }

  return v7;
}

@end