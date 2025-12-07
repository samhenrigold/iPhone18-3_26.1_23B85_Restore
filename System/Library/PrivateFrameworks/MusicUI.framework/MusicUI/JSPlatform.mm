@interface JSPlatform
- (JSValue)is24HourClockEnabled;
- (JSValue)isDebugOrInternalBuild;
@end

@implementation JSPlatform

- (JSValue)isDebugOrInternalBuild
{
  selfCopy = self;
  v3 = sub_216AEFB58(&OBJC_IVAR____TtC7MusicUI10JSPlatform__isDebugOrInternalBuild, sub_216AEFCE4);

  return v3;
}

- (JSValue)is24HourClockEnabled
{
  selfCopy = self;
  v3 = sub_216AEFB58(OBJC_IVAR____TtC7MusicUI10JSPlatform__is24HourClockEnabled, sub_216AEFCC8);

  return v3;
}

@end