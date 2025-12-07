@interface SuggestionSheetUIManager
- (void)didReceiveConnectionUUIDWithUuid:(id)uuid;
- (void)didReceiveNotificationScheduleChangeTo:(id)to;
- (void)didReceiveUserSelectionWithSuggestion:(id)suggestion;
- (void)didTransitionTo:(id)to;
- (void)willReceiveUserSelection;
@end

@implementation SuggestionSheetUIManager

- (void)didReceiveConnectionUUIDWithUuid:(id)uuid
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  selfCopy = self;
  SuggestionSheetUIManager.didReceiveConnectionUUID(uuid:)(v7);

  (*(v5 + 8))(v7, v4);
}

- (void)didReceiveNotificationScheduleChangeTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  SuggestionSheetUIManager.didReceiveNotificationScheduleChange(to:)(toCopy);
}

- (void)willReceiveUserSelection
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  type metadata accessor for MainActor();
  selfCopy = self;
  v8 = static MainActor.shared.getter();
  v9 = swift_allocObject();
  v10 = MEMORY[0x277D85700];
  v9[2] = v8;
  v9[3] = v10;
  v9[4] = selfCopy;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v5, &closure #1 in SuggestionSheetUIManager.willReceiveUserSelection()partial apply, v9);
}

- (void)didReceiveUserSelectionWithSuggestion:(id)suggestion
{
  suggestionCopy = suggestion;
  selfCopy = self;
  SuggestionSheetUIManager.didReceiveUserSelection(suggestion:)(suggestionCopy);
}

- (void)didTransitionTo:(id)to
{
  toCopy = to;
  selfCopy = self;
  SuggestionSheetUIManager.didTransition(to:)(toCopy);
}

@end