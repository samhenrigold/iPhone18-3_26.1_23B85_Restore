@interface AuthorizationService.Connection.Observer
- (_TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer)init;
- (void)descriptorCollectionChanged:(id)changed;
@end

@implementation AuthorizationService.Connection.Observer

- (_TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer)init
{
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F8, &qword_26A09FE08);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = (&v15 - v5);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F0, &qword_26A09FE00);
  v7 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280369900, &qword_26A09FE10);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  _s23DescriptorCollectionBoxCMa(0);
  *v6 = 1;
  (*(v4 + 104))(v6, *MEMORY[0x277D85768], v3);
  sub_26A09E004();
  (*(v4 + 8))(v6, v3);
  (*(v11 + 32))(self + OBJC_IVAR____TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer_descriptorCollectionStream, v13, v10);
  (*(v7 + 32))(self + OBJC_IVAR____TtCCC18SmartStackSettings20AuthorizationService10Connection8Observer_descriptorCollectionStreamContinuation, v9, v15);
  v17.receiver = self;
  v17.super_class = ObjectType;
  return [(AuthorizationService.Connection.Observer *)&v17 init];
}

- (void)descriptorCollectionChanged:(id)changed
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698E8, ":+");
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  v11[1] = changed;
  changedCopy = changed;
  selfCopy = self;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2803698F0, &qword_26A09FE00);
  sub_26A09E024();

  (*(v6 + 8))(v8, v5);
}

@end