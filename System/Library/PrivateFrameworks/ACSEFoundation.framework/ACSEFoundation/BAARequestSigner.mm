@interface BAARequestSigner
- (NSDate)date;
- (_TtC14ACSEFoundation16BAARequestSigner)init;
- (_TtC14ACSEFoundation16BAARequestSigner)initWithDate:(id)date;
- (void)signWithRequest:(NSURLRequest *)request completionHandler:(id)handler;
@end

@implementation BAARequestSigner

- (NSDate)date
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_23C417A7C(self + OBJC_IVAR____TtC14ACSEFoundation16BAARequestSigner_date, &v12 - v4, &qword_27E1F45C0, &qword_23C438CB0);
  v6 = sub_23C436F2C();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_23C436EDC();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (_TtC14ACSEFoundation16BAARequestSigner)initWithDate:(id)date
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F45C0, &qword_23C438CB0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v16 - v8;
  if (date)
  {
    sub_23C436EFC();
    v10 = sub_23C436F2C();
    (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  }

  else
  {
    v11 = sub_23C436F2C();
    (*(*(v11 - 8) + 56))(v9, 1, 1, v11);
  }

  sub_23C417A7C(v9, v7, &qword_27E1F45C0, &qword_23C438CB0);
  v12 = type metadata accessor for BAARequestSigner(0);
  memset(v16, 0, sizeof(v16));
  v17 = 0;
  v13 = objc_allocWithZone(v12);
  v14 = sub_23C427658(v7, v16);
  sub_23C41ED98(v9, &qword_27E1F45C0, &qword_23C438CB0);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v14;
}

- (void)signWithRequest:(NSURLRequest *)request completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E1F4738, &qword_23C438F40);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_23C43726C();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_23C438F50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_23C438F60;
  v14[5] = v13;
  requestCopy = request;
  selfCopy = self;
  sub_23C42A9E0(0, 0, v9, &unk_23C438F70, v14);
}

- (_TtC14ACSEFoundation16BAARequestSigner)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end