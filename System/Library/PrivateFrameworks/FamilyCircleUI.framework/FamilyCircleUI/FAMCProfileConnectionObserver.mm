@interface FAMCProfileConnectionObserver
- (_TtC14FamilyCircleUI29FAMCProfileConnectionObserver)init;
- (void)dealloc;
- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info;
@end

@implementation FAMCProfileConnectionObserver

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  sub_21BB3A35C(self + OBJC_IVAR____TtC14FamilyCircleUI29FAMCProfileConnectionObserver_connection, v9);
  v4 = v10;
  v5 = v11;
  __swift_project_boxed_opaque_existential_1Tm(v9, v10);
  v6 = *(v5 + 24);
  selfCopy = self;
  v6(self, v4, v5);

  __swift_destroy_boxed_opaque_existential_0Tm(v9);
  v8.receiver = selfCopy;
  v8.super_class = ObjectType;
  [(FAMCProfileConnectionObserver *)&v8 dealloc];
}

- (_TtC14FamilyCircleUI29FAMCProfileConnectionObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)profileConnectionDidReceiveRestrictionChangedNotification:(id)notification userInfo:(id)info
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CDB5790, &qword_21BE32800);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v11 - v6;
  v8 = sub_21BE28DAC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  selfCopy = self;
  sub_21BBA932C(0, 0, v7, &unk_21BE4BC00, v9);
}

@end