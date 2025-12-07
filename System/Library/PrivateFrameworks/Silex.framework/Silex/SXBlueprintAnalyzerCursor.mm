@interface SXBlueprintAnalyzerCursor
- (SXBlueprintAnalyzerCursor)init;
- (double)highestMaxY;
- (id)addPathComponent:(id *)result;
- (id)path;
- (id)removePathComponent:(id *)result;
- (uint64_t)setHighestMaxY:(uint64_t)result;
@end

@implementation SXBlueprintAnalyzerCursor

- (SXBlueprintAnalyzerCursor)init
{
  v6.receiver = self;
  v6.super_class = SXBlueprintAnalyzerCursor;
  v2 = [(SXBlueprintAnalyzerCursor *)&v6 init];
  if (v2)
  {
    array = [MEMORY[0x1E695DF70] array];
    mutablePath = v2->_mutablePath;
    v2->_mutablePath = array;
  }

  return v2;
}

- (id)addPathComponent:(id *)result
{
  if (result)
  {
    return [result[3] addObject:a2];
  }

  return result;
}

- (id)removePathComponent:(id *)result
{
  if (result)
  {
    return [result[3] removeObject:a2];
  }

  return result;
}

- (id)path
{
  if (self)
  {
    self = [self[3] copy];
    v1 = vars8;
  }

  return self;
}

- (double)highestMaxY
{
  if (self)
  {
    return *(self + 8);
  }

  else
  {
    return 0.0;
  }
}

- (uint64_t)setHighestMaxY:(uint64_t)result
{
  if (result)
  {
    *(result + 8) = a2;
  }

  return result;
}

@end