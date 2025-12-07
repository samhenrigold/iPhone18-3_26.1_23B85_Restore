@interface AKApplicationMetadataService
- (AKApplicationMetadataService)init;
- (AKApplicationMetadataService)initWithServiceController:(id)controller;
- (void)fetchAuthorizationHTMLResponseTemplateWithCompletion:(id)completion;
- (void)performFetchPrimaryApplicationInformationForClientBundleID:(NSString *)d completion:(id)completion;
@end

@implementation AKApplicationMetadataService

- (AKApplicationMetadataService)initWithServiceController:(id)controller
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR___AKApplicationMetadataService_serviceController) = controller;
  v7.receiver = self;
  v7.super_class = ObjectType;
  swift_unknownObjectRetain();
  return [(AKApplicationMetadataService *)&v7 init];
}

- (void)performFetchPrimaryApplicationInformationForClientBundleID:(NSString *)d completion:(id)completion
{
  v7 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10029DA30;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029DA38;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029DA40, v14);
}

- (void)fetchAuthorizationHTMLResponseTemplateWithCompletion:(id)completion
{
  v5 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v5 - 8);
  v7 = &v14 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10029DA18;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10029C6A0;
  v12[5] = v11;
  selfCopy = self;
  sub_100244978(0, 0, v7, &unk_10029CEE0, v12);
}

- (AKApplicationMetadataService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end