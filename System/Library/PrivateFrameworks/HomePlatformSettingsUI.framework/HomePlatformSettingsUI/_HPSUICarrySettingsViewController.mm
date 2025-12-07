@interface _HPSUICarrySettingsViewController
+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion;
+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d withCompletion:(id)completion;
- (_HPSUICarrySettingsViewController)init;
- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d;
- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation _HPSUICarrySettingsViewController

- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d
{
  v3 = sub_2542AD50C();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  return CarrySettingsViewController.init(withHomeID:)(v5);
}

- (_HPSUICarrySettingsViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers
{
  v4 = sub_2542AD50C();
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2542AD4FC();
  sub_2542A3C68(&qword_27F5DD6D8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v7 = sub_2542AD84C();
  return CarrySettingsViewController.init(withHomeID:homeKitIdentifiers:)(v6, v7);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = swift_getObjectType();
  v4 = v9.receiver;
  [(_HPSUICarrySettingsViewController *)&v9 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    standardAppearance = [navigationBar standardAppearance];
    [navigationBar setScrollEdgeAppearance_];
  }
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = swift_getObjectType();
  v4 = v8.receiver;
  [(_HPSUICarrySettingsViewController *)&v8 viewWillDisappear:disappearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar setScrollEdgeAppearance_];
  }
}

- (_HPSUICarrySettingsViewController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d withCompletion:(id)completion
{
  v5 = sub_2542AD50C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _Block_copy(completion);
  sub_2542AD4FC();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_getObjCClassMetadata();
  _s22HomePlatformSettingsUI05CarryC14ViewControllerC010shouldShoweC6Button03forA2ID14withCompletiony10Foundation4UUIDV_ySb_So7NSErrorCSgtYbctFZ_0(v8, sub_2542A3DE0, v10);

  (*(v6 + 8))(v8, v5);
}

+ (void)shouldShowCarrySettingsButtonForHomeID:(id)d homeKitIdentifiers:(id)identifiers withCompletion:(id)completion
{
  v6 = sub_2542AD50C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_2542AD4FC();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  swift_getObjCClassMetadata();
  _s22HomePlatformSettingsUI05CarryC14ViewControllerC010shouldShoweC6Button03forA2ID14withCompletiony10Foundation4UUIDV_ySb_So7NSErrorCSgtYbctFZ_0(v9, sub_2542A39E8, v11);

  (*(v7 + 8))(v9, v6);
}

@end