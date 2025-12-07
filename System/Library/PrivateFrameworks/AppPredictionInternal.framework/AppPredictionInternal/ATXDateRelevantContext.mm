@interface ATXDateRelevantContext
- (ATXDateRelevantContext)init;
- (ATXDateRelevantContext)initWithStartDate:(id)date endDate:(id)endDate;
- (NSDate)endDate;
- (NSDate)startDate;
- (NSString)description;
@end

@implementation ATXDateRelevantContext

- (NSDate)startDate
{
  v3 = sub_226835228();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, self + OBJC_IVAR___ATXDateRelevantContext_startDate, v3, v5);
  v8 = sub_2268351A8();
  (*(v4 + 8))(v7, v3);

  return v8;
}

- (NSDate)endDate
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  sub_22679CC28(self + OBJC_IVAR___ATXDateRelevantContext_endDate, &v12 - v4);
  v6 = sub_226835228();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 48))(v5, 1, v6);
  v9 = 0;
  if (v8 != 1)
  {
    v10 = sub_2268351A8();
    (*(v7 + 8))(v5, v6);
    v9 = v10;
  }

  return v9;
}

- (ATXDateRelevantContext)initWithStartDate:(id)date endDate:(id)endDate
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A2530, qword_2268738A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_226835228();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2268351F8();
  if (endDate)
  {
    sub_2268351F8();
    v13 = 0;
  }

  else
  {
    v13 = 1;
  }

  (*(v10 + 56))(v8, v13, 1, v9);
  (*(v10 + 16))(self + OBJC_IVAR___ATXDateRelevantContext_startDate, v12, v9);
  sub_22679CC28(v8, self + OBJC_IVAR___ATXDateRelevantContext_endDate);
  v14 = type metadata accessor for DateRelevantContext(0);
  v17.receiver = self;
  v17.super_class = v14;
  v15 = [(ATXDateRelevantContext *)&v17 init];
  sub_2267A5D00(v8);
  (*(v10 + 8))(v12, v9);
  return v15;
}

- (NSString)description
{
  selfCopy = self;
  sub_2267EBF08();

  v3 = sub_2268363F8();

  return v3;
}

- (ATXDateRelevantContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end