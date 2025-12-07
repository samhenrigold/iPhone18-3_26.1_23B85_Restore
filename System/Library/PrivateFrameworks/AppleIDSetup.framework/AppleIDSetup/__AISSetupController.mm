@interface __AISSetupController
- (__AISSetupController)init;
- (__AISSetupController)initWithQueue:(id)queue;
- (void)setupWithContext:(id)context completionHandler:(id)handler;
@end

@implementation __AISSetupController

- (__AISSetupController)initWithQueue:(id)queue
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E4B9B18, &qword_24076CB30);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = sub_240759BE4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  type metadata accessor for SetupController(0);
  swift_allocObject();
  queueCopy = queue;
  v9 = sub_2406A95B8(queue, v6, 0);
  v10 = type metadata accessor for __SetupController();
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR_____AISSetupController_setupController] = v9;
  v14.receiver = v11;
  v14.super_class = v10;

  v12 = [(__AISSetupController *)&v14 init];

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v12;
}

- (void)setupWithContext:(id)context completionHandler:(id)handler
{
  v6 = _Block_copy(handler);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    v6 = sub_2406AA92C;
  }

  else
  {
    v7 = 0;
  }

  contextCopy = context;
  selfCopy = self;
  sub_2406A7458(contextCopy, v6, v7);
  sub_24058CA60(v6, v7);
}

- (__AISSetupController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end