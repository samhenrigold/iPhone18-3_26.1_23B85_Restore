@interface FBSSceneSettings(Frame)
- (uint64_t)convertFrameInRect:()Frame;
@end

@implementation FBSSceneSettings(Frame)

- (uint64_t)convertFrameInRect:()Frame
{
  [self bounds];
  objc_msgSend_frame(self);
  return [self interfaceOrientation];
}

@end