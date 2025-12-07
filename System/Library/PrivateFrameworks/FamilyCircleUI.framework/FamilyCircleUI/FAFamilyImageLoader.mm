@interface FAFamilyImageLoader
+ (_TtC14FamilyCircleUI19FAFamilyImageLoader)shared;
- (NSDictionary)_authResults;
- (NSDictionary)authResults;
- (_TtC14FamilyCircleUI19FAFamilyImageLoader)init;
- (void)setAuthResults:(id)results;
- (void)set_authResults:(id)results;
@end

@implementation FAFamilyImageLoader

+ (_TtC14FamilyCircleUI19FAFamilyImageLoader)shared
{
  if (qword_27CDB4F88 != -1)
  {
    swift_once();
  }

  v3 = off_27CDB9878;

  return v3;
}

- (NSDictionary)_authResults
{
  swift_beginAccess();

  v2 = sub_21BE288EC();

  return v2;
}

- (void)set_authResults:(id)results
{
  v4 = sub_21BE2890C();
  v5 = OBJC_IVAR____TtC14FamilyCircleUI19FAFamilyImageLoader__authResults;
  swift_beginAccess();
  *(self + v5) = v4;
}

- (NSDictionary)authResults
{
  swift_getKeyPath();
  sub_21BC75D70();
  selfCopy = self;
  sub_21BE25F1C();

  swift_beginAccess();

  v4 = sub_21BE288EC();

  return v4;
}

- (void)setAuthResults:(id)results
{
  sub_21BE2890C();
  swift_getKeyPath();
  sub_21BC75D70();
  selfCopy = self;
  sub_21BE25F0C();
}

- (_TtC14FamilyCircleUI19FAFamilyImageLoader)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end