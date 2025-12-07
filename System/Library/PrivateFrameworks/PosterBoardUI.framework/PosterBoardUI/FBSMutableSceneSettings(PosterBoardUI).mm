@interface FBSMutableSceneSettings(PosterBoardUI)
- (uint64_t)prui_setPreferredSwitcherLayoutMode:()PosterBoardUI;
@end

@implementation FBSMutableSceneSettings(PosterBoardUI)

- (uint64_t)prui_setPreferredSwitcherLayoutMode:()PosterBoardUI
{
  v4 = modeFromPRUISwitcherLayoutMode();

  return [self pruis_setPreferredSwitcherLayoutMode:v4];
}

@end