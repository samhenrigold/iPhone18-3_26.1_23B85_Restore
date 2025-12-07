@interface PPXContextMenuProvider
- (_TtC25BooksProductPageExtension22PPXContextMenuProvider)init;
- (id)analyticsAssetPropertyProviderForDataModel:(id)model;
- (id)menuElementsForViewController:(id)controller dataModel:(id)model;
- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)model forViewController:(UIViewController *)controller completion:(id)completion;
@end

@implementation PPXContextMenuProvider

- (id)menuElementsForViewController:(id)controller dataModel:(id)model
{
  controllerCopy = controller;
  modelCopy = model;
  selfCopy = self;
  sub_100015BAC(modelCopy, controllerCopy);

  sub_10000F0A0(0, &qword_1000386E0, UIMenu_ptr);
  v9.super.isa = sub_10001FECC().super.isa;

  return v9.super.isa;
}

- (id)analyticsAssetPropertyProviderForDataModel:(id)model
{
  modelCopy = model;
  selfCopy = self;
  v6 = _s25BooksProductPageExtension22PPXContextMenuProviderC022analyticsAssetPropertyG03forSo07BAAssetjG0_pSg11BookStoreUI22ContextActionDataModelC_tF_0(modelCopy);

  return v6;
}

- (void)showShareSheetWithDataModel:(BSUIContextActionDataModel *)model forViewController:(UIViewController *)controller completion:(id)completion
{
  v9 = sub_100007778(&qword_1000386D8, &qword_100029038);
  __chkstk_darwin(v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = model;
  v13[3] = controller;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_10001FF4C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100029048;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_100029058;
  v16[5] = v15;
  modelCopy = model;
  controllerCopy = controller;
  selfCopy = self;
  sub_10001AFAC(0, 0, v11, &unk_100029068, v16);
}

- (_TtC25BooksProductPageExtension22PPXContextMenuProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end