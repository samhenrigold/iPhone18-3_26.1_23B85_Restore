@interface ASProgressiveBackoffManager
- (_TtC26AuthenticationServicesCore27ASProgressiveBackoffManager)init;
- (_TtC26AuthenticationServicesCore27ASProgressiveBackoffManager)initWithNumberOfOperationsBeforeTriggeringBackoff:(int64_t)backoff minimumCooldownDurationSeconds:(double)seconds;
- (void)performAfterBackoffForContext:(NSString *)context completionHandler:(id)handler;
@end

@implementation ASProgressiveBackoffManager

- (_TtC26AuthenticationServicesCore27ASProgressiveBackoffManager)initWithNumberOfOperationsBeforeTriggeringBackoff:(int64_t)backoff minimumCooldownDurationSeconds:(double)seconds
{
  v5 = sub_1C21714B4();
  v7 = v6;
  v8 = type metadata accessor for ASProgressiveBackoffManager();
  v9 = swift_allocObject();
  swift_defaultActor_initialize();
  v10 = sub_1C2141EC0(MEMORY[0x1E69E7CC0]);
  v9[14] = backoff;
  v9[15] = v5;
  v9[16] = v7;
  v9[17] = v10;
  v13.receiver = v9;
  v13.super_class = v8;
  v11 = [(ASProgressiveBackoffManager *)&v13 init];
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v11;
}

- (void)performAfterBackoffForContext:(NSString *)context completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBF23490, &qword_1C2176890);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1C2170BE4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1C21813B0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1C21799C0;
  v14[5] = v13;
  contextCopy = context;

  sub_1C2166D88(0, 0, v9, &unk_1C21768B0, v14);
}

- (_TtC26AuthenticationServicesCore27ASProgressiveBackoffManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end