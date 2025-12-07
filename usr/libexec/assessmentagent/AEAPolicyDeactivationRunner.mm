@interface AEAPolicyDeactivationRunner
- (BOOL)isFailable;
- (void)deactivateWithCompletion:(id)completion;
@end

@implementation AEAPolicyDeactivationRunner

- (BOOL)isFailable
{
  v2 = *&self->deactivation[24];
  v3 = *&self->deactivation[32];
  sub_100005A3C(self->deactivation, v2);
  v4 = *(v3 + 16);

  v5 = v4(v2, v3);

  return v5 & 1;
}

- (void)deactivateWithCompletion:(id)completion
{
  v5 = sub_100003F6C(&qword_1000BA380, &qword_100080750);
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
  v11[4] = &unk_1000833A0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000833B0;
  v12[5] = v11;

  sub_10004EE00(0, 0, v7, &unk_1000833C0, v12);
}

@end