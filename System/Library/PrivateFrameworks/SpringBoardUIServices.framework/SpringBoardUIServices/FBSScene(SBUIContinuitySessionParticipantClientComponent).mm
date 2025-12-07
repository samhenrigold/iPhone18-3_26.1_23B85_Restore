@interface FBSScene(SBUIContinuitySessionParticipantClientComponent)
- (uint64_t)continuitySessionParticipantClientComponent;
@end

@implementation FBSScene(SBUIContinuitySessionParticipantClientComponent)

- (uint64_t)continuitySessionParticipantClientComponent
{
  v3 = objc_opt_class();
  v4 = objc_opt_class();

  return [self componentForExtension:v3 ofClass:v4];
}

@end