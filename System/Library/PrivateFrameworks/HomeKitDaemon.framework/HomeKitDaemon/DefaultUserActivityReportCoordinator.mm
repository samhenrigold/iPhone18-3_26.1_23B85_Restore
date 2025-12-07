@interface DefaultUserActivityReportCoordinator
- (_TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator)init;
- (void)beginCoordinationWithCompletion:(id)completion;
- (void)configureWithDetectors:(id)detectors removeDetectors:(id)removeDetectors;
- (void)endCoordinationWithReason:(unint64_t)reason completion:(id)completion;
- (void)handleBackgroundTaskManagerTimerFiredWithNotification:(id)notification;
- (void)handleStateChangeForDetectorOfType:(unint64_t)type withReason:(unint64_t)reason;
- (void)isCoordinatingWithCompletion:(id)completion;
- (void)sendCoordinatedReportsForReason:(unint64_t)reason;
@end

@implementation DefaultUserActivityReportCoordinator

- (void)configureWithDetectors:(id)detectors removeDetectors:(id)removeDetectors
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  sub_229562F68(0, &qword_27D881388, off_278666358);
  v8 = sub_22A4DD83C();
  v9 = sub_22A4DD83C();
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = v8;
  v11[6] = v9;

  sub_22957F3C0(0, 0, v7, &unk_22A583AC0, v11);
}

- (void)sendCoordinatedReportsForReason:(unint64_t)reason
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v10 - v6;
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = self;
  v9[5] = reason;

  sub_22957F3C0(0, 0, v7, &unk_22A583AB0, v9);
}

- (void)beginCoordinationWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22A583A90;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A583A98;
  v12[5] = v11;

  sub_229859F70(0, 0, v7, &unk_22A583AA0, v12);
}

- (void)endCoordinationWithReason:(unint64_t)reason completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v15 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = reason;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A583A70;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A583A78;
  v14[5] = v13;

  sub_229859F70(0, 0, v9, &unk_22A583A80, v14);
}

- (void)isCoordinatingWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22A583A60;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A57B590;
  v12[5] = v11;

  sub_229859F70(0, 0, v7, &unk_22A581CC0, v12);
}

- (_TtC13HomeKitDaemon36DefaultUserActivityReportCoordinator)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleBackgroundTaskManagerTimerFiredWithNotification:(id)notification
{
  notificationCopy = notification;

  sub_2297BFD58(notificationCopy);
}

- (void)handleStateChangeForDetectorOfType:(unint64_t)type withReason:(unint64_t)reason
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = self;
  v11[5] = type;
  v11[6] = reason;

  sub_22957F3C0(0, 0, v9, &unk_22A5839F8, v11);
}

@end