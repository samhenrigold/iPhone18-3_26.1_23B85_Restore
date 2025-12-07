@interface DigitalPresentmentSessionProxy
- (void)canRequestDocumentWithCompoundDescriptor:(_TtC7CoreIDV37XPCIdentityDocumentCompoundDescriptor *)descriptor completionHandler:(id)handler;
- (void)cancelRequestWithCompletionHandler:(id)handler;
- (void)requestDocument:(_TtC7CoreIDV25DigitalPresentmentRequest *)document completionHandler:(id)handler;
@end

@implementation DigitalPresentmentSessionProxy

- (void)canRequestDocumentWithCompoundDescriptor:(_TtC7CoreIDV37XPCIdentityDocumentCompoundDescriptor *)descriptor completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = descriptor;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5830;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5838;
  v14[5] = v13;
  descriptorCopy = descriptor;

  sub_100500D54(0, 0, v9, &unk_1006E5840, v14);
}

- (void)requestDocument:(_TtC7CoreIDV25DigitalPresentmentRequest *)document completionHandler:(id)handler
{
  v7 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = document;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1006E5810;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1006E5818;
  v14[5] = v13;
  documentCopy = document;

  sub_100500D54(0, 0, v9, &unk_1006E5820, v14);
}

- (void)cancelRequestWithCompletionHandler:(id)handler
{
  v5 = sub_100007224(&unk_100845860, &unk_1006BF9D0);
  __chkstk_darwin(v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1006E5800;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1006D9180;
  v12[5] = v11;

  sub_100500D54(0, 0, v7, &unk_1006E13D0, v12);
}

@end