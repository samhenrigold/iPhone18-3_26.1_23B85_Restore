@interface FASettingProtoAccountRestrictionsOperation
- (FASettingProtoAccountRestrictionsOperation)init;
- (void)applyDefaultRestrictionsForProtoAccountWithScreenTimeCore:(FAScreenTimeCoreSoftLinking *)core completion:(id)completion;
@end

@implementation FASettingProtoAccountRestrictionsOperation

- (void)applyDefaultRestrictionsForProtoAccountWithScreenTimeCore:(FAScreenTimeCoreSoftLinking *)core completion:(id)completion
{
  v7 = sub_100022F18(&qword_1000B82B8, &qword_10008C6C0);
  __chkstk_darwin(v7 - 8, v8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = core;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10008DD60;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10008C7F0;
  v15[5] = v14;
  coreCopy = core;
  selfCopy = self;
  sub_100071FE8(0, 0, v10, &unk_10008C6E0, v15);
}

- (FASettingProtoAccountRestrictionsOperation)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for SettingProtoAccountRestrictionsOperation(self, a2);
  return [(FASettingProtoAccountRestrictionsOperation *)&v3 init];
}

@end