@interface MPSuggestionsSearchController
- (MPSearchResultsUpdatingProtocol)delegate;
- (MPSuggestedSearch)suggestionsDelegate;
- (MPSuggestionsSearchController)init;
- (MPSuggestionsSearchController)initWithTableViewController:(id)controller callProviderManager:(id)manager;
- (NSString)sectionTitle;
- (UINavigationController)hostingNavigationController;
- (id)tableView:(id)view cellForRowAt:(id)at;
- (int64_t)numberOfRowsInConsolidatedView;
- (void)cancelPreviousSearchRequests;
- (void)highlightMatchedTextIn:(id)in;
- (void)registerCellWith:(id)with;
- (void)searchWith:(id)with searchTokens:(id)tokens completion:(id)completion;
- (void)setResultIDs:(id)ds;
- (void)setResults:(id)results;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
@end

@implementation MPSuggestionsSearchController

- (MPSuggestedSearch)suggestionsDelegate
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)sectionTitle
{

  v2 = sub_1CFB8FA80();

  return v2;
}

- (MPSearchResultsUpdatingProtocol)delegate
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (UINavigationController)hostingNavigationController
{
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (void)setResults:(id)results
{
  *(self + OBJC_IVAR___MPSuggestionsSearchController_results) = sub_1CFB8FB30();
  selfCopy = self;

  sub_1CFB6B864();
}

- (void)setResultIDs:(id)ds
{
  *(self + OBJC_IVAR___MPSuggestionsSearchController_resultIDs) = sub_1CFB8FB30();
}

- (MPSuggestionsSearchController)initWithTableViewController:(id)controller callProviderManager:(id)manager
{
  v7 = objc_allocWithZone(MEMORY[0x1E69D8BE8]);
  controllerCopy = controller;
  managerCopy = manager;
  v10 = [v7 init];
  v11 = [(MPSuggestionsSearchController *)self initWithTableViewController:controllerCopy feautureFlags:v10 callProviderManager:managerCopy];

  return v11;
}

- (void)searchWith:(id)with searchTokens:(id)tokens completion:(id)completion
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = _Block_copy(completion);
  if (with)
  {
    with = sub_1CFB8FA90();
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  sub_1CFB5D38C(0, &unk_1EE04BD50, 0x1E69DCF30);
  v14 = sub_1CFB8FB30();
  v15 = swift_allocObject();
  *(v15 + 16) = v11;
  v16 = sub_1CFB8FBF0();
  (*(*(v16 - 8) + 56))(v10, 1, 1, v16);
  sub_1CFB8FBC0();
  selfCopy = self;

  v18 = sub_1CFB8FBB0();
  v19 = swift_allocObject();
  v20 = MEMORY[0x1E69E85E0];
  v19[2] = v18;
  v19[3] = v20;
  v19[4] = selfCopy;
  v19[5] = with;
  v19[6] = v13;
  v19[7] = v14;
  v19[8] = sub_1CFB6DFBC;
  v19[9] = v15;
  sub_1CFB80934(0, 0, v10, &unk_1CFB920A8, v19);
}

- (void)cancelPreviousSearchRequests
{
  selfCopy = self;
  sub_1CFB6D780();
}

- (void)registerCellWith:(id)with
{
  type metadata accessor for SuggestionsSearchViewCell();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  withCopy = with;
  v5 = sub_1CFB8FA80();
  [withCopy registerClass:ObjCClassFromMetadata forCellReuseIdentifier:v5];
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v10 = *(self + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1CFB8F740();
  [v10 tableView:viewCopy didSelectRowAtIndexPath:v13];

  v14 = sub_1CFB8F740();
  [viewCopy deselectRowAtIndexPath:v14 animated:0];

  (*(v7 + 8))(v9, v6);
}

- (id)tableView:(id)view cellForRowAt:(id)at
{
  v6 = sub_1CFB8F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CFB8F750();
  v10 = *(self + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1CFB8F740();
  v14 = [v10 tableView:viewCopy cellForRowAtIndexPath:v13];

  (*(v7 + 8))(v9, v6);

  return v14;
}

- (void)highlightMatchedTextIn:(id)in
{
  type metadata accessor for SuggestionsSearchViewCell();
  if (swift_dynamicCastClass())
  {
    v5 = *(self + OBJC_IVAR___MPSuggestionsSearchController_suggestionsTableViewController);
    inCopy = in;
    selfCopy = self;
    searchText = [v5 searchText];
    if (searchText)
    {
      v8 = searchText;
      v9 = sub_1CFB8FA90();
      v11 = v10;

      sub_1CFB7EAD8(v9, v11);
    }

    else
    {
    }
  }
}

- (int64_t)numberOfRowsInConsolidatedView
{
  selfCopy = self;
  results = [(MPSuggestionsSearchController *)selfCopy results];
  v4 = sub_1CFB8FB30();

  v5 = *(v4 + 16);

  maximumNumberOfRowsInSection = [(MPSuggestionsSearchController *)selfCopy maximumNumberOfRowsInSection];

  if (maximumNumberOfRowsInSection >= v5)
  {
    return v5;
  }

  else
  {
    return maximumNumberOfRowsInSection;
  }
}

- (MPSuggestionsSearchController)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end