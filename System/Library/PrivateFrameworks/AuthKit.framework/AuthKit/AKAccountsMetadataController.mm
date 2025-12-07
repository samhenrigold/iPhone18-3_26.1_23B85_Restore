@interface AKAccountsMetadataController
- (AKAccountsMetadataController)init;
- (AKAccountsMetadataController)initWithMediaServiceController:(id)controller localStorageController:(id)storageController metadataService:(id)service;
- (void)cancelAppIconRequestForClientID:(NSString *)d completionHandler:(id)handler;
- (void)fetchAppIconForClientID:(NSString *)d iconSize:(CGSize)size completionHandler:(id)handler;
- (void)updatePrimaryAppsMetadataWithDeveloperTeams:(NSArray *)teams forAltDSID:(NSString *)d completionHandler:(id)handler;
@end

@implementation AKAccountsMetadataController

- (AKAccountsMetadataController)initWithMediaServiceController:(id)controller localStorageController:(id)storageController metadataService:(id)service
{
  *(&self->super.isa + OBJC_IVAR___AKAccountsMetadataController_mediaServicesController) = controller;
  *(&self->super.isa + OBJC_IVAR___AKAccountsMetadataController_localStorageController) = storageController;
  *(&self->super.isa + OBJC_IVAR___AKAccountsMetadataController_metadataService) = service;
  v8.receiver = self;
  v8.super_class = type metadata accessor for AccountsMetadataController();
  controllerCopy = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  return [(AKAccountsMetadataController *)&v8 init];
}

- (void)fetchAppIconForClientID:(NSString *)d iconSize:(CGSize)size completionHandler:(id)handler
{
  height = size.height;
  width = size.width;
  v10 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v10 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  *(v14 + 2) = d;
  v14[3] = width;
  v14[4] = height;
  *(v14 + 5) = v13;
  *(v14 + 6) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029F618;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10029F620;
  v17[5] = v16;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v12, &unk_10029F628, v17);
}

- (void)cancelAppIconRequestForClientID:(NSString *)d completionHandler:(id)handler
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
  v13[4] = &unk_10029F5F8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10029F600;
  v14[5] = v13;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v9, &unk_10029F608, v14);
}

- (void)updatePrimaryAppsMetadataWithDeveloperTeams:(NSArray *)teams forAltDSID:(NSString *)d completionHandler:(id)handler
{
  v9 = sub_1001AD17C(&unk_100372310, &qword_10029CEC0);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = teams;
  v13[3] = d;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10029F5E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10029C6A0;
  v16[5] = v15;
  teamsCopy = teams;
  dCopy = d;
  selfCopy = self;
  sub_100244978(0, 0, v11, &unk_10029CEE0, v16);
}

- (AKAccountsMetadataController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end