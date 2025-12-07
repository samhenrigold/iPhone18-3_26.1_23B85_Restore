@interface FCUserEventHistorySession
+ (id)dateFromSessionID:(id)d;
- (FCUserEventHistorySession)init;
- (FCUserEventHistorySession)initWithSessionID:(id)d path:(id)path;
- (NSDate)date;
- (NSString)path;
- (int64_t)size;
@end

@implementation FCUserEventHistorySession

- (NSDate)date
{
  v3 = sub_1B67D877C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, self + OBJC_IVAR___FCUserEventHistorySession_date, v3);
  v7 = sub_1B67D86DC();
  (*(v4 + 8))(v6, v3);

  return v7;
}

+ (id)dateFromSessionID:(id)d
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB94B328, &qword_1B6815370);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-v4];
  v6 = sub_1B67D877C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1B67D964C();
  UserEventHistorySession.ID.init(_:)(v10, v11, v5);
  v12 = type metadata accessor for UserEventHistorySession.ID(0);
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);
  (*(v7 + 16))(v9, &v5[*(v12 + 20)], v6);
  sub_1B646B8E8(v5);
  v13 = sub_1B67D86DC();
  (*(v7 + 8))(v9, v6);

  return v13;
}

- (FCUserEventHistorySession)initWithSessionID:(id)d path:(id)path
{
  v4 = sub_1B67D964C();
  v6 = v5;
  v7 = sub_1B67D964C();
  return sub_1B64B3C98(v4, v6, v7, v8);
}

- (NSString)path
{
  v2 = (self + OBJC_IVAR___FCUserEventHistorySession_kind);
  if (*(self + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    result = sub_1B67DA07C();
    __break(1u);
  }

  else
  {
    v4 = *v2;
    v3 = v2[1];

    v5 = sub_1B67D963C();
    sub_1B64B55CC(v4, v3, 0);

    return v5;
  }

  return result;
}

- (int64_t)size
{
  v2 = *(self + OBJC_IVAR___FCUserEventHistorySession_kind);
  if (*(self + OBJC_IVAR___FCUserEventHistorySession_kind + 16))
  {
    return v2;
  }

  v4 = objc_opt_self();
  selfCopy = self;
  defaultManager = [v4 defaultManager];
  v7 = sub_1B67D963C();
  v2 = [defaultManager fc:v7 sizeOfItemAtPath:0 error:?];

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2;
  }

  __break(1u);
  return result;
}

- (FCUserEventHistorySession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end