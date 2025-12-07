@interface HDCMSwimData
- (NSString)description;
- (NSUUID)sourceId;
- (_TtC12HealthDaemon12HDCMSwimData)init;
- (id)init:(id)init safeSwimData:(id)data;
- (int64_t)strokeType;
@end

@implementation HDCMSwimData

- (NSUUID)sourceId
{
  v3 = MEMORY[0x277CC95F0];
  sub_2289DED0C(0, &qword_27D8630C0, MEMORY[0x277CC95F0]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - v5;
  sub_2289DF21C(self + OBJC_IVAR____TtC12HealthDaemon12HDCMSwimData_sourceId, &v13 - v5, &qword_27D8630C0, v3);
  v7 = sub_22911B8DC();
  v8 = *(v7 - 8);
  v9 = (*(v8 + 48))(v6, 1, v7);
  v10 = 0;
  if (v9 != 1)
  {
    v11 = sub_22911B8BC();
    (*(v8 + 8))(v6, v7);
    v10 = v11;
  }

  return v10;
}

- (int64_t)strokeType
{
  selfCopy = self;
  v3 = sub_2289DDE04();

  return v3;
}

- (id)init:(id)init safeSwimData:(id)data
{
  initCopy = init;
  dataCopy = data;
  v7 = sub_2289DEE2C(initCopy, dataCopy);

  return v7;
}

- (NSString)description
{
  selfCopy = self;
  sub_2289DDF14();

  v3 = sub_22911C34C();

  return v3;
}

- (_TtC12HealthDaemon12HDCMSwimData)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end