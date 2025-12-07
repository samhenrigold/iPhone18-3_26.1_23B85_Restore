@interface HFDashboardStaticSectionListItem
- (HFDashboardStaticSectionListItem)initWithResults:(id)results;
- (NSString)uuidString;
- (void)setUuidString:(id)string;
@end

@implementation HFDashboardStaticSectionListItem

- (NSString)uuidString
{
  swift_beginAccess();

  v2 = sub_20DD64E74();

  return v2;
}

- (void)setUuidString:(id)string
{
  v4 = sub_20DD64EB4();
  v6 = v5;
  v7 = (self + OBJC_IVAR___HFDashboardStaticSectionListItem_uuidString);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (HFDashboardStaticSectionListItem)initWithResults:(id)results
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end