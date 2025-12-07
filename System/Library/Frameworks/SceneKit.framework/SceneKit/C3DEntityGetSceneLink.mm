@interface C3DEntityGetSceneLink
@end

@implementation C3DEntityGetSceneLink

uint64_t ___C3DEntityGetSceneLink_block_invoke(uint64_t a1, uint64_t a2)
{
  C3DEntityGetTypeID(a1, a2);
  result = _CFRuntimeGetClassWithTypeID();
  _C3DEntityGetSceneLink_sceneLink = result + 136;
  return result;
}

@end