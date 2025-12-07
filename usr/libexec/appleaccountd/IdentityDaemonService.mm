@interface IdentityDaemonService
- (void)fetchIdentityFor:(ACAccount *)for completionHandler:(id)handler;
@end

@implementation IdentityDaemonService

- (void)fetchIdentityFor:(ACAccount *)for completionHandler:(id)handler
{
  v7 = sub_100005814(&qword_1003DABF0, &qword_10033F8A0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = for;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1003442C8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10033E760;
  v14[5] = v13;
  forCopy = for;

  sub_10016483C(0, 0, v9, &unk_10033F2F0, v14);
}

@end