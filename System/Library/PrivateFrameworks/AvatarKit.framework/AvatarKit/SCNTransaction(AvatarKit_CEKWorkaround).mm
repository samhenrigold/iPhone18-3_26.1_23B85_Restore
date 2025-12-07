@interface SCNTransaction(AvatarKit_CEKWorkaround)
+ (void)_implementCEKWorkaroundIfNeeded;
+ (void)begin_CEKWorkaround;
+ (void)commit_CEKWorkaround;
+ (void)flush_CEKWorkaround;
+ (void)setAnimationDuration_CEKWorkaround:()AvatarKit_CEKWorkaround;
@end

@implementation SCNTransaction(AvatarKit_CEKWorkaround)

+ (void)_implementCEKWorkaroundIfNeeded
{
  if (_implementCEKWorkaroundIfNeeded_onceToken != -1)
  {
    +[SCNTransaction(AvatarKit_CEKWorkaround) _implementCEKWorkaroundIfNeeded];
  }
}

+ (void)begin_CEKWorkaround
{
  [self begin_CEKWorkaround];
  v1 = MEMORY[0x1E69DF378];

  return [v1 begin];
}

+ (void)commit_CEKWorkaround
{
  [MEMORY[0x1E69DF378] commit];

  return [self commit_CEKWorkaround];
}

+ (void)flush_CEKWorkaround
{
  [MEMORY[0x1E69DF378] flush];

  return [self flush_CEKWorkaround];
}

+ (void)setAnimationDuration_CEKWorkaround:()AvatarKit_CEKWorkaround
{
  [self setAnimationDuration_CEKWorkaround:?];
  v2 = MEMORY[0x1E69DF378];

  return [v2 setDuration:?];
}

@end