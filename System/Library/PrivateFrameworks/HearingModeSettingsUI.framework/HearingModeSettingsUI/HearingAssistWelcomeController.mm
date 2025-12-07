@interface HearingAssistWelcomeController
- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController;
- (void)audiogramIngestionDidSaveAudiogram:(id)audiogram;
- (void)setFlowController:(id)controller;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation HearingAssistWelcomeController

- (_TtP21HearingModeSettingsUI25HearingFlowControllerType_)flowController
{
  swift_beginAccess();
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setFlowController:(id)controller
{
  v5 = OBJC_IVAR____TtC21HearingModeSettingsUI30HearingAssistWelcomeController_flowController;
  swift_beginAccess();
  *(&self->super.super.super.super.super.isa + v5) = controller;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
}

- (void)audiogramIngestionDidSaveAudiogram:(id)audiogram
{
  audiogramCopy = audiogram;
  selfCopy = self;
  sub_251FE4C00(audiogramCopy);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_251FE4FDC();
}

- (void)viewDidAppear:(BOOL)appear
{
  appearCopy = appear;
  selfCopy = self;
  sub_251FE5990(appearCopy, selfCopy);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v9.receiver = self;
  v9.super_class = type metadata accessor for HearingAssistWelcomeController(self, a2);
  v4 = v9.receiver;
  [(HearingAssistWelcomeController *)&v9 viewWillAppear:appearCopy];
  sub_252003F10();
  v5 = sub_252003EF0();
  v6 = sub_252003F00();

  v8[4] = sub_251FE5BFC;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_251FD9520;
  v8[3] = &block_descriptor_5;
  v7 = _Block_copy(v8);
  [v6 triggerFetchAudiogramsWithCompletion_];

  _Block_release(v7);
}

- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC21HearingModeSettingsUI30HearingAssistWelcomeController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end