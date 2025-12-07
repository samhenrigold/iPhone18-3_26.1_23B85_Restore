@interface FitNoiseAirpodPlacementVideoController
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithNoiseDelegate:(id)delegate btAddress:(id)address hpDevice:(id)device;
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FitNoiseAirpodPlacementVideoController

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithNoiseDelegate:(id)delegate btAddress:(id)address hpDevice:(id)device
{
  v7 = sub_252064724();
  v9 = v8;
  swift_unknownObjectRetain();
  return FitNoiseAirpodPlacementVideoController.init(noiseDelegate:btAddress:hpDevice:)(delegate, v7, v9, device);
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = type metadata accessor for FitNoiseAirpodPlacementVideoController();
  v4 = v7.receiver;
  [(FitNoiseAirpodPlacementVideoController *)&v7 viewWillAppear:appearCopy];
  v5 = sub_252049BA4();
  (*((*MEMORY[0x277D85000] & *v5) + 0xB8))(v5, v6);
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_252049DAC(selfCopy);
}

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI38FitNoiseAirpodPlacementVideoController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end