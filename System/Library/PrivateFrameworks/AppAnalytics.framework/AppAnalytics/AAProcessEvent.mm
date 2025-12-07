@interface AAProcessEvent
- (AAProcessEvent)init;
- (NSString)groupName;
@end

@implementation AAProcessEvent

- (NSString)groupName
{
  if (*(self + OBJC_IVAR___AAProcessEvent_groupName + 8))
  {

    v2 = sub_1B6AB92B0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (AAProcessEvent)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end