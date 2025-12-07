@interface HDClinicalIngestionAnalyticsAccumulator
- (HDClinicalIngestionAnalyticsAccumulator)init;
- (void)accumulateIngestionAnalyticsFromTaskStates:(id)states gateway:(id)gateway completion:(id)completion;
- (void)consumeMetricsFromHandler:(id)handler completion:(id)completion;
- (void)enumerateForCoreAnalyticsAndResetWithBlock:(id)block completion:(id)completion;
@end

@implementation HDClinicalIngestionAnalyticsAccumulator

- (HDClinicalIngestionAnalyticsAccumulator)init
{
  ObjectType = swift_getObjectType();
  sub_A9F58();
  *(&self->super.isa + OBJC_IVAR___HDClinicalIngestionAnalyticsAccumulator_accumulator) = sub_A9F48();
  v5.receiver = self;
  v5.super_class = ObjectType;
  return [(HDClinicalIngestionAnalyticsAccumulator *)&v5 init];
}

- (void)accumulateIngestionAnalyticsFromTaskStates:(id)states gateway:(id)gateway completion:(id)completion
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(completion);
  if (v12)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = v12;
    v12 = sub_9BD84;
  }

  else
  {
    v13 = 0;
  }

  v14 = sub_A9FF8();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = self;
  v15[5] = states;
  v15[6] = gateway;
  v15[7] = v12;
  v15[8] = v13;
  statesCopy = states;
  gatewayCopy = gateway;
  selfCopy = self;
  sub_9A140(0, 0, v11, &unk_E4228, v15);
}

- (void)consumeMetricsFromHandler:(id)handler completion:(id)completion
{
  sub_9B394(0, &qword_1287E8, &type metadata accessor for TaskPriority, &type metadata accessor for Optional);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = sub_A9FF8();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = handler;
  v13[5] = self;
  v13[6] = sub_9BB7C;
  v13[7] = v11;
  handlerCopy = handler;
  selfCopy = self;
  sub_9A140(0, 0, v9, &unk_E4218, v13);
}

- (void)enumerateForCoreAnalyticsAndResetWithBlock:(id)block completion:(id)completion
{
  v6 = _Block_copy(block);
  v7 = _Block_copy(completion);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  selfCopy = self;
  sub_9AB44(sub_9B378, v8, sub_9B380, v9);
}

@end