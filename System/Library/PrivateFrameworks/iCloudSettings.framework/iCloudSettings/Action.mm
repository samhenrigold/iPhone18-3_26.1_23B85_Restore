@interface Action
- (BOOL)isUpsellAction;
- (NSString)description;
- (_TtC14iCloudSettings6Action)init;
@end

@implementation Action

- (NSString)description
{
  selfCopy = self;
  sub_2759852D8(&OBJC_IVAR____TtC14iCloudSettings6Action__rawJsonObject);

  v3 = sub_2759BA258();

  return v3;
}

- (BOOL)isUpsellAction
{
  selfCopy = self;
  v3 = sub_2759BA258();
  v4 = _ICQActionForString();

  return ((v4 - 114) < 0xE) & (0x20F1u >> (v4 - 114));
}

- (_TtC14iCloudSettings6Action)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end