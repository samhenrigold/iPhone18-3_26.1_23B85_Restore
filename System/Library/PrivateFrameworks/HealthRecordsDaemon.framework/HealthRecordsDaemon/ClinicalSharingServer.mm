@interface ClinicalSharingServer
- (_TtC19HealthRecordsDaemon21ClinicalSharingServer)init;
- (id)exportedInterface;
- (void)remote_gatherQueryDiagnosticsWithOptions:(unint64_t)options date:(id)date completion:(id)completion;
- (void)remote_scheduleSharingHealthDataWithReason:(int64_t)reason completion:(id)completion;
- (void)remote_shareHealthDataWithOptions:(unint64_t)options reason:(int64_t)reason date:(id)date completion:(id)completion;
- (void)remote_submitDailyAnalyticsWithCompletion:(id)completion;
- (void)remote_submitOnboardingAnalyticsForStepIdentifier:(id)identifier context:(id)context completion:(id)completion;
@end

@implementation ClinicalSharingServer

- (_TtC19HealthRecordsDaemon21ClinicalSharingServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)remote_shareHealthDataWithOptions:(unint64_t)options reason:(int64_t)reason date:(id)date completion:(id)completion
{
  sub_251B3F274(0, &qword_2813E7500, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = _Block_copy(completion);
  if (date)
  {
    sub_251C6FFE4();
    v15 = sub_251C70014();
    (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  }

  else
  {
    v16 = sub_251C70014();
    (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  }

  _Block_copy(v14);
  selfCopy = self;
  sub_251B3E1BC(options, reason, v13, selfCopy, v14);
  _Block_release(v14);
  _Block_release(v14);

  sub_251B3F168(v13, &qword_2813E7500, MEMORY[0x277CC9578]);
}

- (void)remote_scheduleSharingHealthDataWithReason:(int64_t)reason completion:(id)completion
{
  v6 = _Block_copy(completion);
  _Block_copy(v6);
  selfCopy = self;
  sub_251B3E790(reason, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
}

- (void)remote_gatherQueryDiagnosticsWithOptions:(unint64_t)options date:(id)date completion:(id)completion
{
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _Block_copy(completion);
  sub_251C6FFE4();
  _Block_copy(v12);
  selfCopy = self;
  sub_251B3EB60(options, v11, selfCopy, v12);
  _Block_release(v12);
  _Block_release(v12);

  (*(v9 + 8))(v11, v8);
}

- (void)remote_submitDailyAnalyticsWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  sub_251B3CCF4(sub_251B3F358, v5);
}

- (void)remote_submitOnboardingAnalyticsForStepIdentifier:(id)identifier context:(id)context completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = sub_251C70F14();
  v9 = v8;
  v10 = sub_251C70F14();
  v12 = v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v6;
  selfCopy = self;
  sub_251B3D360(v7, v9, v10, v12, sub_251B3DF78, v13);
}

- (id)exportedInterface
{
  v2 = HKClinicalSharingServerInterface();

  return v2;
}

@end