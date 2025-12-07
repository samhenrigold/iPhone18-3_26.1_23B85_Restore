@interface CopyCGImageAtTime
@end

@implementation CopyCGImageAtTime

CFTypeRef __surrogateAIG_CopyCGImageAtTime_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = surrogateAIG_EnsureSubGeneratorCreated(a1[6]);
  result = *(a1[7] + 24);
  if (result)
  {
    result = CFRetain(result);
  }

  *(*(a1[5] + 8) + 24) = result;
  return result;
}

@end