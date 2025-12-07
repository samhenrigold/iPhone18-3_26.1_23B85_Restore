@interface AccountService
- (void)updatePropertiesForAppleAccount:(id)account options:(id)options completion:(id)completion;
@end

@implementation AccountService

- (void)updatePropertiesForAppleAccount:(id)account options:(id)options completion:(id)completion
{
  v9 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(completion);
  if (options)
  {
    options = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  sub_1000080F8(self->accountUpdatePerformer, *&self->accountUpdatePerformer[24]);
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v15;
  v16[5] = sub_1000080F0;
  v16[6] = v13;
  v16[7] = account;
  v16[8] = options;

  accountCopy = account;

  sub_1000BCD5C(0, 0, v11, &unk_10033E5B0, v16);
}

@end