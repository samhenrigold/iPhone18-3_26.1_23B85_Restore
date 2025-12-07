@interface HealthWorkoutSession
- (_TtC13SeymourClient20HealthWorkoutSession)init;
- (void)workoutBuilder:(id)builder didCollectDataOfTypes:(id)types;
- (void)workoutBuilder:(id)builder didEndActivity:(id)activity;
- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date;
- (void)workoutSession:(id)session didFailWithError:(id)error;
@end

@implementation HealthWorkoutSession

- (_TtC13SeymourClient20HealthWorkoutSession)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)workoutBuilder:(id)builder didCollectDataOfTypes:(id)types
{
  sub_1B4DD8804(0, &qword_1EDB6DA90, 0x1E696C3D0);
  sub_1B4F243D8();
  v6 = sub_1B4F68504();
  builderCopy = builder;
  selfCopy = self;
  HealthWorkoutSession.workoutBuilder(_:didCollectDataOf:)(builderCopy, v6);
}

- (void)workoutBuilder:(id)builder didEndActivity:(id)activity
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7040, &qword_1B4F71150);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v16 - v7;
  v9 = qword_1EDB6DFA8;
  selfCopy = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB6DFB0);
  v12._countAndFlagsBits = 0xD000000000000028;
  v12._object = 0x80000001B4F845B0;
  v13._object = 0x80000001B4F845E0;
  v13._countAndFlagsBits = 0xD000000000000019;
  Logger.trace(file:function:)(v12, v13);
  v14 = sub_1B4F68324();
  (*(*(v14 - 8) + 56))(v8, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = selfCopy;
  sub_1B4E4E620(0, 0, v8, &unk_1B4F7C468, v15);
}

- (void)workoutSession:(id)session didChangeToState:(int64_t)state fromState:(int64_t)fromState date:(id)date
{
  v10 = sub_1B4F64964();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4F64934();
  sessionCopy = session;
  selfCopy = self;
  sub_1B4F245DC(state, fromState);

  (*(v11 + 8))(v14, v10);
}

- (void)workoutSession:(id)session didFailWithError:(id)error
{
  sessionCopy = session;
  errorCopy = error;
  selfCopy = self;
  sub_1B4F24818(errorCopy);
}

@end