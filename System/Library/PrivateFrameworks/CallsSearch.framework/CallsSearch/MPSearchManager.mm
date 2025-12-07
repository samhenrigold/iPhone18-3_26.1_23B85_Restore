@interface MPSearchManager
- (CSSearchQueryContext)queryContext;
- (MPSearchManager)init;
- (NSDictionary)subscriptionsLabelIDByLabel;
- (NSString)logPrefix;
- (id)fetchSubscriptionsInUseMap;
- (id)queryStringForSimSearchWithSearchText:(id)text;
- (id)userQueryContextFor:(id)for;
- (void)fetchResultsForSimSearchWithSearchText:(NSString *)text completionHandler:(id)handler;
- (void)providersChangedForProviderManager:(id)manager;
- (void)searchSuggestionsWithText:(NSString *)text completion:(id)completion;
- (void)searchWithQueryString:(NSString *)string completion:(id)completion;
- (void)searchWithText:(NSString *)text searchTokens:(NSArray *)tokens completion:(id)completion;
- (void)setSubscriptionsLabelIDByLabel:(id)label;
- (void)setSuggestion:(id)suggestion;
- (void)setUserQueryContext:(id)context;
@end

@implementation MPSearchManager

- (CSSearchQueryContext)queryContext
{
  selfCopy = self;
  v3 = sub_1CFB85014();

  return v3;
}

- (void)setUserQueryContext:(id)context
{
  v4 = *(self + OBJC_IVAR___MPSearchManager_userQueryContext);
  *(self + OBJC_IVAR___MPSearchManager_userQueryContext) = context;
  contextCopy = context;
}

- (NSDictionary)subscriptionsLabelIDByLabel
{

  v2 = sub_1CFB8FA30();

  return v2;
}

- (void)setSubscriptionsLabelIDByLabel:(id)label
{
  *(self + OBJC_IVAR___MPSearchManager_subscriptionsLabelIDByLabel) = sub_1CFB8FA40();
}

- (void)setSuggestion:(id)suggestion
{
  v4 = *(self + OBJC_IVAR___MPSearchManager_suggestion);
  *(self + OBJC_IVAR___MPSearchManager_suggestion) = suggestion;
  suggestionCopy = suggestion;
}

- (void)searchWithQueryString:(NSString *)string completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = string;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1CFB8FBF0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1CFB92628;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFB92630;
  v14[5] = v13;
  stringCopy = string;
  selfCopy = self;
  sub_1CFB8C0EC(0, 0, v9, &unk_1CFB92638, v14);
}

- (void)searchWithText:(NSString *)text searchTokens:(NSArray *)tokens completion:(id)completion
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(completion);
  v13 = swift_allocObject();
  v13[2] = text;
  v13[3] = tokens;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_1CFB8FBF0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1CFB925F0;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1CFB925F8;
  v16[5] = v15;
  textCopy = text;
  tokensCopy = tokens;
  selfCopy = self;
  sub_1CFB8C0EC(0, 0, v11, &unk_1CFB92600, v16);
}

- (void)searchSuggestionsWithText:(NSString *)text completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = text;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1CFB8FBF0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1CFB925B8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFB925C0;
  v14[5] = v13;
  textCopy = text;
  selfCopy = self;
  sub_1CFB8C0EC(0, 0, v9, &unk_1CFB925C8, v14);
}

- (id)userQueryContextFor:(id)for
{
  forCopy = for;
  selfCopy = self;
  v6 = sub_1CFB8A604(forCopy);

  return v6;
}

- (id)fetchSubscriptionsInUseMap
{
  selfCopy = self;
  sub_1CFB8A830();

  v3 = sub_1CFB8FA30();

  return v3;
}

- (void)fetchResultsForSimSearchWithSearchText:(NSString *)text completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = text;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1CFB8FBF0();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1CFB92570;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1CFB922C0;
  v14[5] = v13;
  textCopy = text;
  selfCopy = self;
  sub_1CFB8C0EC(0, 0, v9, &unk_1CFB922C8, v14);
}

- (id)queryStringForSimSearchWithSearchText:(id)text
{
  v4 = sub_1CFB8FA90();
  v6 = v5;
  selfCopy = self;
  sub_1CFB8B848(v4, v6);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1CFB8FA80();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1CFB8E74C();
}

- (NSString)logPrefix
{
  selfCopy = self;
  sub_1CFB8BCB4();

  v3 = sub_1CFB8FA80();

  return v3;
}

- (MPSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end