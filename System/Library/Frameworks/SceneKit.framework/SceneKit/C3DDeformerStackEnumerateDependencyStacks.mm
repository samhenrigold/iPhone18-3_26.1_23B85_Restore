@interface C3DDeformerStackEnumerateDependencyStacks
@end

@implementation C3DDeformerStackEnumerateDependencyStacks

uint64_t ____C3DDeformerStackEnumerateDependencyStacks_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 nodeRef];
  result = C3DNodeGetDeformerStack(v4, v5);
  if (result)
  {
    v7 = *(*(a1 + 32) + 16);

    return v7();
  }

  return result;
}

@end