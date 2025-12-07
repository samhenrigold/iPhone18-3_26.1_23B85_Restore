@interface AAEventData
+ (NSString)dataName;
- (AAEventData)init;
- (NSDate)eventDate;
- (NSString)appSessionID;
- (id)toDict;
@end

@implementation AAEventData

- (NSDate)eventDate
{
  v3 = sub_1B6AB8DB0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___AAEventData_eventDate, v3);
  v7 = sub_1B6AB8D20();
  (*(v4 + 8))(v6, v3);

  return v7;
}

- (NSString)appSessionID
{
  if (*(self + OBJC_IVAR___AAEventData_appSessionID + 8))
  {

    v2 = sub_1B6AB92B0();
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (NSString)dataName
{
  v2 = sub_1B6AB92B0();

  return v2;
}

- (id)toDict
{
  result = sub_1B6AB9E40();
  __break(1u);
  return result;
}

- (AAEventData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end