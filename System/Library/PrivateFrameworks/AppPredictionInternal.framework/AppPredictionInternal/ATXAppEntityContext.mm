@interface ATXAppEntityContext
- (ATXAppEntityContext)init;
- (void)fetchOnScreenContextFor:(NSString *)for completionHandler:(id)handler;
@end

@implementation ATXAppEntityContext

- (void)fetchOnScreenContextFor:(NSString *)for completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A1F30, &qword_226873360);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_226836628();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_226874358;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_226874368;
  v14[5] = v13;
  forCopy = for;
  selfCopy = self;
  sub_22679FE8C(0, 0, v9, &unk_226874378, v14);
}

- (ATXAppEntityContext)init
{
  v3 = self + OBJC_IVAR___ATXAppEntityContext_uiContextClient;
  v4 = type metadata accessor for AppEntityContext();
  *v3 = 0u;
  *(v3 + 1) = 0u;
  *(v3 + 4) = 0;
  v6.receiver = self;
  v6.super_class = v4;
  return [(ATXAppEntityContext *)&v6 init];
}

@end