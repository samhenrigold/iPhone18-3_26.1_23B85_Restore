@interface DateRangeRelevanceProvider
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (_TtC18HealthPlatformCore26DateRangeRelevanceProvider)init;
- (int64_t)hash;
@end

@implementation DateRangeRelevanceProvider

- (_TtC18HealthPlatformCore26DateRangeRelevanceProvider)init
{
  v3 = sub_2287C97C0();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_2287C9590();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_2287CA280();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2287C97B0();
  sub_2287C9560();
  sub_2287CA260();
  (*(v6 + 32))(self + OBJC_IVAR____TtC18HealthPlatformCore26DateRangeRelevanceProvider_relevantDateInterval, v8, v5);
  v9 = type metadata accessor for DateRangeRelevanceProvider(0);
  v11.receiver = self;
  v11.super_class = v9;
  result = [(RERelevanceProvider *)&v11 init];
  if (!result)
  {
    __break(1u);
  }

  return result;
}

- (BOOL)isEqual:(id)equal
{
  if (equal)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_2287CB870();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v8, 0, sizeof(v8));
    selfCopy2 = self;
  }

  v6 = sub_22878F134(v8);

  sub_228710894(v8);
  return v6 & 1;
}

- (int64_t)hash
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for DateRangeRelevanceProvider(0);
  v2 = v6.receiver;
  v3 = [(RERelevanceProvider *)&v6 hash];
  v4 = sub_2287CA270();

  return v4 ^ v3;
}

- (NSString)description
{
  selfCopy = self;
  sub_22878F828();

  v3 = sub_2287CB210();

  return v3;
}

@end