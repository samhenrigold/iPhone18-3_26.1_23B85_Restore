@interface CollaborationDeliveryRequest
- (_TtC8iMessage28CollaborationDeliveryRequest)init;
- (_TtC8iMessage28CollaborationDeliveryRequest)initWithRecipients:(id)recipients message:(id)message;
- (void)sendWithCompletionHandler:(id)handler;
@end

@implementation CollaborationDeliveryRequest

- (_TtC8iMessage28CollaborationDeliveryRequest)initWithRecipients:(id)recipients message:(id)message
{
  *(&self->super.isa + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_recipients) = sub_BD954();
  *(&self->super.isa + OBJC_IVAR____TtC8iMessage28CollaborationDeliveryRequest_message) = message;
  v8.receiver = self;
  v8.super_class = type metadata accessor for CollaborationDeliveryRequest();
  messageCopy = message;
  return [(CollaborationDeliveryRequest *)&v8 init];
}

- (void)sendWithCompletionHandler:(id)handler
{
  v5 = sub_94950(&qword_123ED8, &qword_CEE50);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_BD9F4();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_CEAD8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_CEAE8;
  v12[5] = v11;
  selfCopy = self;
  sub_B18FC(0, 0, v7, &unk_CEAF8, v12);
}

- (_TtC8iMessage28CollaborationDeliveryRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end