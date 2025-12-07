@interface AKRemoteViewServiceController
+ (BOOL)shouldUseFrontBoardServicesForAuthorization;
+ (void)setShouldUseFrontBoardServicesForAuthorization:(BOOL)authorization;
- (AKRemoteViewServiceController)init;
- (AKRemoteViewServiceController)initWithConfiguration:(id)configuration;
- (void)launchViewServiceForAuthorizationWithCompletionHandler:(id)handler;
- (void)launchViewServiceWithCompletionHandler:(id)handler;
@end

@implementation AKRemoteViewServiceController

+ (BOOL)shouldUseFrontBoardServicesForAuthorization
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization;
}

+ (void)setShouldUseFrontBoardServicesForAuthorization:(BOOL)authorization
{
  if (qword_100371BE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static RemoteViewServiceController.shouldUseFrontBoardServicesForAuthorization = authorization;
}

- (AKRemoteViewServiceController)initWithConfiguration:(id)configuration
{
  *(&self->super.isa + OBJC_IVAR___AKRemoteViewServiceController_configuration) = configuration;
  v6.receiver = self;
  v6.super_class = type metadata accessor for RemoteViewServiceController();
  configurationCopy = configuration;
  return [(AKRemoteViewServiceController *)&v6 init];
}

- (void)launchViewServiceForAuthorizationWithCompletionHandler:(id)handler
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
  v11[4] = &unk_10029F078;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F080;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029F088, v12);
}

- (void)launchViewServiceWithCompletionHandler:(id)handler
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
  v11[4] = &unk_10029F058;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029F060;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029F068, v12);
}

- (AKRemoteViewServiceController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end