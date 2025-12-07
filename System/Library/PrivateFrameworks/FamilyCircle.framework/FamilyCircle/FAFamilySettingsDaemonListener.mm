@interface FAFamilySettingsDaemonListener
+ (id)createAndReturnError:(id *)error;
- (FAFamilySettingsDaemonListener)init;
- (void)dealloc;
@end

@implementation FAFamilySettingsDaemonListener

+ (id)createAndReturnError:(id *)error
{
  v3 = sub_10005CFDC(sub_10005A0C8, 0, sub_100026A9C, 0);

  return v3;
}

- (void)dealloc
{
  selfCopy = self;
  v3 = dispatch thunk of XPCListener.cancel()();
  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for FamilySettingsDaemonListener(v3, v4);
  [(FAFamilySettingsDaemonListener *)&v5 dealloc];
}

- (FAFamilySettingsDaemonListener)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end