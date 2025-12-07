@interface AKAppleIDPasskeyUnenrollProvider
- (AKAppleIDPasskeyUnenrollProvider)init;
- (void)performUnenrollRequestWithCompletionHandler:(id)handler;
@end

@implementation AKAppleIDPasskeyUnenrollProvider

- (void)performUnenrollRequestWithCompletionHandler:(id)handler
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029F270;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

- (AKAppleIDPasskeyUnenrollProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end