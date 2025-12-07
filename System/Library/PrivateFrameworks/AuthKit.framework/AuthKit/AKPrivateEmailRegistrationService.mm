@interface AKPrivateEmailRegistrationService
- (AKPrivateEmailRegistrationService)init;
- (AKPrivateEmailRegistrationService)initWithServiceController:(id)controller;
- (void)fetchSignInWithApplePrivateEmailWith:(AKPrivateEmailContext *)with completionHandler:(id)handler;
- (void)performRegistrationWith:(AKPrivateEmailContext *)with completionHandler:(id)handler;
@end

@implementation AKPrivateEmailRegistrationService

- (AKPrivateEmailRegistrationService)initWithServiceController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKPrivateEmailRegistrationService_serviceController) = controller;
  v8.receiver = self;
  v8.super_class = ObjectType;
  controllerCopy = controller;
  return [(AKPrivateEmailRegistrationService *)&v8 init];
}

- (void)performRegistrationWith:(AKPrivateEmailContext *)with completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029D8E0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029D8E8;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029D8F0, v14);
}

- (void)fetchSignInWithApplePrivateEmailWith:(AKPrivateEmailContext *)with completionHandler:(id)handler
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = with;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029D8C0;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029C6A0;
  v14[5] = v13;
  withCopy = with;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029CEE0, v14);
}

- (AKPrivateEmailRegistrationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end