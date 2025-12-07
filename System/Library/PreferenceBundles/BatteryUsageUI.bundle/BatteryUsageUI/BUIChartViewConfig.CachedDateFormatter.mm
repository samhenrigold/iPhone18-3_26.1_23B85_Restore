@interface BUIChartViewConfig.CachedDateFormatter
- (id)stringFromDate:(id)date;
@end

@implementation BUIChartViewConfig.CachedDateFormatter

- (id)stringFromDate:(id)date
{
  v4 = sub_115760();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_115730();
  selfCopy = self;
  sub_58998(v7);

  (*(v5 + 8))(v7, v4);
  v9 = sub_117170();

  return v9;
}

@end