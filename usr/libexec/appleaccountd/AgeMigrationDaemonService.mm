@interface AgeMigrationDaemonService
- (void)clearAgeMigrationFollowUpWithCompletion:(id)completion;
- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion;
- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion;
- (void)displayMisconfiguredAgePromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion;
- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context action:(int)action completion:(id)completion;
@end

@implementation AgeMigrationDaemonService

- (void)clearAgeMigrationFollowUpWithCompletion:(id)completion
{
  v5 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10033E7E0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10033E7E8;
  v12[5] = v11;

  sub_10016483C(0, 0, v7, &unk_10033E7F0, v12);
}

- (void)displayMisconfiguredAgePromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033E7C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033E7C8;
  v14[5] = v13;
  contextCopy = context;

  sub_10016483C(0, 0, v9, &unk_10033E7D0, v14);
}

- (void)clearUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033E798;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033E7A0;
  v14[5] = v13;
  contextCopy = context;

  sub_10016483C(0, 0, v9, &unk_10033E7A8, v14);
}

- (void)didUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context completion:(id)completion
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10033E778;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033E780;
  v14[5] = v13;
  contextCopy = context;

  sub_10016483C(0, 0, v9, &unk_10033E788, v14);
}

- (void)saveUserAcknowledgeMisconfiguredAgedPromptWithContext:(AAAgeMisconfiguredPromptContext *)context action:(int)action completion:(id)completion
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  *(v13 + 16) = context;
  *(v13 + 24) = action;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10033E758;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10033E760;
  v16[5] = v15;
  contextCopy = context;

  sub_10016483C(0, 0, v11, &unk_10033F2F0, v16);
}

@end