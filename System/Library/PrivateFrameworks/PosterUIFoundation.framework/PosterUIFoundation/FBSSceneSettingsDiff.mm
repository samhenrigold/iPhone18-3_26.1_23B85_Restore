@interface FBSSceneSettingsDiff
@end

@implementation FBSSceneSettingsDiff

uint64_t __56__FBSSceneSettingsDiff_PosterUIFoundation__pui_inspect___block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x1E699FC38]);
  v1 = pui_inspect__inspector;
  pui_inspect__inspector = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

@end