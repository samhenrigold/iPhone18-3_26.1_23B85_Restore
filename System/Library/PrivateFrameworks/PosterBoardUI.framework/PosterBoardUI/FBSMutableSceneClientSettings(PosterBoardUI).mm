@interface FBSMutableSceneClientSettings(PosterBoardUI)
- (uint64_t)prui_setSwitcherLayoutMode:()PosterBoardUI;
@end

@implementation FBSMutableSceneClientSettings(PosterBoardUI)

- (uint64_t)prui_setSwitcherLayoutMode:()PosterBoardUI
{
  v4 = modeFromPRUISwitcherLayoutMode();

  return [self pruis_setSwitcherLayoutMode:v4];
}

@end