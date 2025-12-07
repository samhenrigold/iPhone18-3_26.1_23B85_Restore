@interface AppLimit
- (NSSet)allowedTimes;
- (NSSet)websites;
- (_TtC14ScreenTimeCore8AppLimit)init;
- (_TtC14ScreenTimeCore8AppLimit)initWithIdentifier:(id)identifier enabled:(BOOL)enabled apps:(id)apps categories:(id)categories websites:(id)websites blockAtLimit:(BOOL)limit allowedTimes:(id)times;
- (id)setWithBlockAtLimit:(BOOL)limit;
- (id)setWithEnabled:(BOOL)enabled;
- (int64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation AppLimit

- (NSSet)websites
{
  sub_1B83DD8EC();
  sub_1B83ADA88(&qword_1EBA84A30, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);

  v2 = sub_1B83DDE5C();

  return v2;
}

- (NSSet)allowedTimes
{
  type metadata accessor for AppLimitSchedule();
  sub_1B83ADA88(&qword_1EBA84A38, v2, type metadata accessor for AppLimitSchedule, MEMORY[0x1E69E81B8]);

  v3 = sub_1B83DDE5C();

  return v3;
}

- (_TtC14ScreenTimeCore8AppLimit)initWithIdentifier:(id)identifier enabled:(BOOL)enabled apps:(id)apps categories:(id)categories websites:(id)websites blockAtLimit:(BOOL)limit allowedTimes:(id)times
{
  enabledCopy = enabled;
  limitCopy = limit;
  v10 = sub_1B83DD98C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B83DD96C();
  v14 = sub_1B83DDE7C();
  v15 = sub_1B83DDE7C();
  sub_1B83DD8EC();
  sub_1B83ADA88(&qword_1EBA84A30, 255, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  v16 = sub_1B83DDE7C();
  type metadata accessor for AppLimitSchedule();
  sub_1B83ADA88(&qword_1EBA84A38, v17, type metadata accessor for AppLimitSchedule, MEMORY[0x1E69E81B8]);
  v18 = sub_1B83DDE7C();
  (*(v11 + 16))(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_identifier, v13, v10);
  v19 = limitCopy;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_enabled) = enabledCopy;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_apps) = v14;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_categories) = v15;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_websites) = v16;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_blockAtLimit) = v19;
  *(self + OBJC_IVAR____TtC14ScreenTimeCore8AppLimit_allowedTimes) = v18;
  v20 = type metadata accessor for AppLimit(0);
  v26.receiver = self;
  v26.super_class = v20;
  v21 = [(AppLimit *)&v26 init];
  (*(v11 + 8))(v13, v10);
  return v21;
}

- (id)setWithEnabled:(BOOL)enabled
{
  enabledCopy = enabled;
  selfCopy = self;
  v5 = sub_1B83A994C(enabledCopy);

  return v5;
}

- (id)setWithBlockAtLimit:(BOOL)limit
{
  limitCopy = limit;
  selfCopy = self;
  v5 = sub_1B83A9B9C(limitCopy);

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  selfCopy = self;
  sub_1B83AB798(coderCopy);
}

- (int64_t)hash
{
  selfCopy = self;
  v3 = sub_1B83DD97C();

  return v3;
}

- (_TtC14ScreenTimeCore8AppLimit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end