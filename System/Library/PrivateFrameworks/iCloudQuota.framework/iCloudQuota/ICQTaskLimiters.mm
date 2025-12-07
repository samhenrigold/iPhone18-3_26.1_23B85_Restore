@interface ICQTaskLimiters
- (_TtC11iCloudQuota15ICQTaskLimiters)init;
- (void)performClosureNoParamsWithIdentifier:(id)identifier task:(id)task completion:(id)completion;
- (void)performWithIdentifier:(id)identifier task:(id)task completion:(id)completion;
@end

@implementation ICQTaskLimiters

- (void)performClosureNoParamsWithIdentifier:(id)identifier task:(id)task completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = _Block_copy(task);
  v13 = _Block_copy(completion);
  v14 = sub_2755EC98C();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = sub_2755ECA9C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = v14;
  v20[6] = v16;
  v20[7] = sub_2755768C0;
  v20[8] = v17;
  v20[9] = sub_275579318;
  v20[10] = v18;
  selfCopy = self;
  sub_2755CF6F4(0, 0, v11, &unk_2755F36E8, v20);
}

- (void)performWithIdentifier:(id)identifier task:(id)task completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2809F9CE8, &qword_2755F3690);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v11 = &v22 - v10;
  v12 = _Block_copy(task);
  v13 = _Block_copy(completion);
  v14 = sub_2755EC98C();
  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = v12;
  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = sub_2755ECA9C();
  (*(*(v19 - 8) + 56))(v11, 1, 1, v19);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = self;
  v20[5] = v14;
  v20[6] = v16;
  v20[7] = sub_275577C98;
  v20[8] = v17;
  v20[9] = sub_275578EB0;
  v20[10] = v18;
  selfCopy = self;
  sub_2755CEE70(0, 0, v11, &unk_2755F36F0, v20);
}

- (_TtC11iCloudQuota15ICQTaskLimiters)init
{
  v3 = OBJC_IVAR____TtC11iCloudQuota15ICQTaskLimiters_taskLimiters;
  type metadata accessor for TaskLimiters();
  *(&self->super.isa + v3) = sub_2755D0D4C();
  v5.receiver = self;
  v5.super_class = type metadata accessor for ICQTaskLimiters();
  return [(ICQTaskLimiters *)&v5 init];
}

@end