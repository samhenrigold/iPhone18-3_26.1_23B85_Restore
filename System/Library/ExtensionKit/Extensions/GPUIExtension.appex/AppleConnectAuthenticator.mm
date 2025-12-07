@interface AppleConnectAuthenticator
- (void)authenticateIfNeededWithCompletion:(id)completion;
@end

@implementation AppleConnectAuthenticator

- (void)authenticateIfNeededWithCompletion:(id)completion
{
  v5 = sub_1000032E4(&qword_10000C4D0, &qword_100006368);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = sub_100005D9C();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  sub_100005D7C();
  selfCopy = self;

  v12 = sub_100005D6C();
  v13 = swift_allocObject();
  v13[2] = v12;
  v13[3] = &protocol witness table for MainActor;
  v13[4] = selfCopy;
  v13[5] = sub_100005668;
  v13[6] = v9;
  sub_100002DAC(0, 0, v7, &unk_100006498, v13);
}

@end