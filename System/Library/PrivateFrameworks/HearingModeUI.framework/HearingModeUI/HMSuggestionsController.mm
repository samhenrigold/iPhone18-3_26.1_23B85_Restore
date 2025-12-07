@interface HMSuggestionsController
- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout;
- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout;
- (uint64_t)earTipSuggestionTapped;
- (void)buttonTapped;
- (void)viewDidLoad;
@end

@implementation HMSuggestionsController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_2520469E8();
}

- (void)buttonTapped
{
  selfCopy = self;
  navigationController = [(HMSuggestionsController *)selfCopy navigationController];
  if (navigationController)
  {
    v3 = navigationController;
    [navigationController dismissViewControllerAnimated:1 completion:0];
  }
}

- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC13HearingModeUI23HMSuggestionsController)initWithTitle:(id)title detailText:(id)text icon:(id)icon contentLayout:(int64_t)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (uint64_t)earTipSuggestionTapped
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4C9950, &qword_252067210);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v11 - v1;
  v3 = sub_252063DA4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252063D94();
  if ((*(v4 + 48))(v2, 1, v3) == 1)
  {
    return sub_252034F68(v2);
  }

  (*(v4 + 32))(v6, v2, v3);
  sharedApplication = [objc_opt_self() sharedApplication];
  v9 = sub_252063D74();
  sub_25203A508(MEMORY[0x277D84F90]);
  type metadata accessor for OpenExternalURLOptionsKey();
  sub_25203A77C(&qword_27F4C9958, &unk_2520677A4);
  v10 = sub_252064654();

  [sharedApplication openURL:v9 options:v10 completionHandler:0];

  return (*(v4 + 8))(v6, v3);
}

@end