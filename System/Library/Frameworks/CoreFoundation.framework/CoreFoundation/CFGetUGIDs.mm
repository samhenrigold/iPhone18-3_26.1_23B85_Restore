@interface CFGetUGIDs
@end

@implementation CFGetUGIDs

uint64_t ____CFGetUGIDs_block_invoke()
{
  v1[1] = *MEMORY[0x1E69E9840];
  v1[0] = 0;
  if (pthread_getugid_np(v1, v1 + 1))
  {
    LODWORD(v1[0]) = geteuid();
    HIDWORD(v1[0]) = getegid();
  }

  return v1[0];
}

uint64_t ____CFGetUGIDs_block_invoke_2(uint64_t a1)
{
  result = (*(*(a1 + 32) + 16))();
  __CFGetUGIDs_cachedUGIDs = result;
  return result;
}

@end