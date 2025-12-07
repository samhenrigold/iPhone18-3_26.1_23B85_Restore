@interface SCNRenderer(AVTSceneRenderer)
- (__n64)avt_simdProjectPoint:()AVTSceneRenderer;
- (__n64)avt_simdUnprojectPoint:()AVTSceneRenderer;
@end

@implementation SCNRenderer(AVTSceneRenderer)

- (__n64)avt_simdProjectPoint:()AVTSceneRenderer
{
  [self projectPoint:?];
  result.n64_u32[1] = v4;
  return result;
}

- (__n64)avt_simdUnprojectPoint:()AVTSceneRenderer
{
  [self unprojectPoint:?];
  result.n64_u32[1] = v4;
  return result;
}

@end