@interface PGGraphUpdater
- (PGGraphUpdater)init;
- (PGGraphUpdater)initWith:(id)with;
- (void)applyChangesFrom:(PGGraphUpdate *)from progressReporter:(MAProgressReporter *)reporter completionHandler:(id)handler;
@end

@implementation PGGraphUpdater

- (PGGraphUpdater)initWith:(id)with
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___PGGraphUpdater_graphManager) = with;
  v8.receiver = self;
  v8.super_class = ObjectType;
  withCopy = with;
  return [(PGGraphUpdater *)&v8 init];
}

- (void)applyChangesFrom:(PGGraphUpdate *)from progressReporter:(MAProgressReporter *)reporter completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB07C0, &qword_22F77A4F0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = from;
  v13[3] = reporter;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22F741320();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22F784240;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22F783A70;
  v16[5] = v15;
  fromCopy = from;
  reporterCopy = reporter;
  selfCopy = self;
  sub_22F33C54C(0, 0, v11, &unk_22F784250, v16);
}

- (PGGraphUpdater)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end