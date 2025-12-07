@interface CPLGetAppBoundaryKey
@end

@implementation CPLGetAppBoundaryKey

void ___CPLGetAppBoundaryKey_block_invoke(uint64_t a1, void *a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v7 = *MEMORY[0x1E69C6580];
  v8[0] = *(a1 + 32);
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
  v6 = *(a1 + 40);
  v5 = v3;
  PCSGetAppBoundaryKey();
}

void ___CPLGetAppBoundaryKey_block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  [*(a1 + 32) callDidFinish];
  (*(*(a1 + 40) + 16))();
}

@end