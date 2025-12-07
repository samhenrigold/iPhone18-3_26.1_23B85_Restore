@interface GMDeviceSceneViewController
+ (void)prepareSceneWithCompletionHandler:(id)handler;
- (_TtC14VoiceTriggerUI27GMDeviceSceneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
@end

@implementation GMDeviceSceneViewController

- (void)viewDidLoad
{
  selfCopy = self;
  GMDeviceSceneViewController.viewDidLoad()();
}

+ (void)prepareSceneWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28089BC00, &qword_272934CB0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_27292E314();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_272934D18;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_272934D28;
  v12[5] = v11;
  sub_2729123F8(0, 0, v7, &unk_272934D38, v12);
}

- (_TtC14VoiceTriggerUI27GMDeviceSceneViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end