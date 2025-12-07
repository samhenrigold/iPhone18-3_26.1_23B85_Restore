@interface RemoteViewService
- (_TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService)init;
- (void)continueAuthenticationWithSurrogateID:(NSUUID *)d completionHandler:(id)handler;
- (void)dealloc;
- (void)presentAuthorizationWithContext:(AKAuthorizationPresentationContext *)context usingHost:(AKAuthorizationPresenterHostProtocol *)host completionHandler:(id)handler;
- (void)presentPrivateEmailWithContext:(AKPrivateEmailContext *)context usingHost:(AKPrivateEmailPresenterHostProtocol *)host completionHandler:(id)handler;
- (void)presentShieldWithContext:(AKProtoAccountShieldContext *)context completionHandler:(id)handler;
@end

@implementation RemoteViewService

- (void)dealloc
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService_connection);
  selfCopy = self;
  [v2 invalidate];
  v4.receiver = selfCopy;
  v4.super_class = type metadata accessor for RemoteViewService();
  [(RemoteViewService *)&v4 dealloc];
}

- (void)continueAuthenticationWithSurrogateID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029EFC8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029EFD0;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029EFD8, v14);
}

- (void)presentAuthorizationWithContext:(AKAuthorizationPresentationContext *)context usingHost:(AKAuthorizationPresenterHostProtocol *)host completionHandler:(id)handler
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = host;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029EF08;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029EF10;
  v16[5] = v15;
  contextCopy = context;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029EF18, v16);
}

- (void)presentPrivateEmailWithContext:(AKPrivateEmailContext *)context usingHost:(AKPrivateEmailPresenterHostProtocol *)host completionHandler:(id)handler
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = context;
  v13[3] = host;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029EE40;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029EE48;
  v16[5] = v15;
  contextCopy = context;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029EE50, v16);
}

- (void)presentShieldWithContext:(AKProtoAccountShieldContext *)context completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = context;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029ED80;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  contextCopy = context;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

- (_TtC3akdP33_9379F446E6714602564EEF4A6C6F7D5717RemoteViewService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end