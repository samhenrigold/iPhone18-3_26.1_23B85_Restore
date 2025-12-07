@interface AccessCompatibilityService
- (void)request:(_TtC14ScreenTimeCore13AccessRequest *)request completionHandler:(id)handler;
- (void)respondTo:(_TtC14ScreenTimeCore6UserID *)to with:(_TtC14ScreenTimeCore14AccessResponse *)with for:(_TtC14ScreenTimeCore13AccessRequest *)for completionHandler:(id)handler;
@end

@implementation AccessCompatibilityService

- (void)request:(_TtC14ScreenTimeCore13AccessRequest *)request completionHandler:(id)handler
{
  v7 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = request;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1001435A8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1001435B0;
  v14[5] = v13;
  requestCopy = request;

  sub_10010D4C0(0, 0, v9, &unk_1001435B8, v14);
}

- (void)respondTo:(_TtC14ScreenTimeCore6UserID *)to with:(_TtC14ScreenTimeCore14AccessResponse *)with for:(_TtC14ScreenTimeCore13AccessRequest *)for completionHandler:(id)handler
{
  v11 = sub_1000A0F2C(&unk_1001DF9B0, &qword_100140000);
  __chkstk_darwin(v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = to;
  v15[3] = with;
  v15[4] = for;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_100143598;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_100140550;
  v18[5] = v17;
  toCopy = to;
  withCopy = with;
  forCopy = for;

  sub_10010D4C0(0, 0, v13, &unk_100140230, v18);
}

@end