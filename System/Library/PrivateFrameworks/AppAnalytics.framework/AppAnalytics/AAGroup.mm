@interface AAGroup
- (AAGroup)init;
- (NSDate)startDate;
- (NSString)name;
@end

@implementation AAGroup

- (NSString)name
{

  v2 = sub_1B6AB92B0();

  return v2;
}

- (NSDate)startDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___AAGroup_startDate, v3);
  v7 = sub_1B6AB8D20();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (AAGroup)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end