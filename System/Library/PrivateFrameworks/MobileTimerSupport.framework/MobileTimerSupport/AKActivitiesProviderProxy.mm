@interface AKActivitiesProviderProxy
- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)init;
- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)initWithActivityResolver:(id)resolver;
- (void)activitiesWithAlert:(BOOL)alert type:(int64_t)type completion:(id)completion;
- (void)activitiesWithType:(int64_t)type completion:(id)completion;
- (void)endActivityWithId:(id)id completion:(id)completion;
@end

@implementation AKActivitiesProviderProxy

- (void)activitiesWithAlert:(BOOL)alert type:(int64_t)type completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - v11;
  v13 = _Block_copy(completion);
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = self;
  *(v15 + 24) = alert;
  *(v15 + 32) = sub_22D744A94;
  *(v15 + 40) = v14;
  *(v15 + 48) = type;
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_22D826768;
  *(v16 + 24) = v15;
  v18[0] = &unk_22D826770;
  v18[1] = v16;
  selfCopy = self;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v10 + 8))(v12, v9);
}

- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)initWithActivityResolver:(id)resolver
{
  v4 = OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_queue;
  type metadata accessor for SerialTaskQueue(0);
  swift_allocObject();
  swift_unknownObjectRetain();
  *(&self->super.isa + v4) = SerialTaskQueue.init()();
  type metadata accessor for ActivityKitProvider();
  v5 = swift_allocObject();
  v6 = swift_unknownObjectRetain();
  *(&self->super.isa + OBJC_IVAR____TtC18MobileTimerSupport25AKActivitiesProviderProxy_activityActor) = sub_22D7FF078(v6, v5, 0, 1);
  v9.receiver = self;
  v9.super_class = type metadata accessor for AKActivitiesProviderProxy();
  v7 = [(AKActivitiesProviderProxy *)&v9 init];
  swift_unknownObjectRelease();
  return v7;
}

- (void)endActivityWithId:(id)id completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_22D81B2C8();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_22D7F9ADC(v6, v8, sub_22D8003B4, v9);
}

- (void)activitiesWithType:(int64_t)type completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035C8, &qword_22D825400);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = swift_allocObject();
  v13[2] = self;
  v13[3] = sub_22D7CD9B4;
  v13[4] = v12;
  v13[5] = type;
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_22D826778;
  *(v14 + 24) = v13;
  v16[0] = &unk_22D826780;
  v16[1] = v14;
  selfCopy = self;
  sub_22D81A198();
  sub_22D81A198();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DA035D8, &qword_22D825410);
  sub_22D81B528();

  (*(v8 + 8))(v10, v7);
}

- (_TtC18MobileTimerSupport25AKActivitiesProviderProxy)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end