@interface ClearShaderModifiersTextureProxy
@end

@implementation ClearShaderModifiersTextureProxy

uint64_t *___ClearShaderModifiersTextureProxy_block_invoke(uint64_t a1, uint64_t a2, const void *a3)
{
  TypeID = C3DValueGetTypeID(a1, a2);
  result = CFGetTypeID(a3);
  if (TypeID == result)
  {
    result = C3DValueGetTypeSemantic(a3, v6);
    if (result == 1)
    {
      result = C3DValueGetBytes(a3, v7);
      v9 = *result;
      if (*result)
      {
        result = C3DEffectSlotGetImageProxy(*result, v8);
        if (result)
        {

          return C3DEffectSlotSetTextureFromImageProxy(v9, 0);
        }
      }
    }
  }

  return result;
}

@end