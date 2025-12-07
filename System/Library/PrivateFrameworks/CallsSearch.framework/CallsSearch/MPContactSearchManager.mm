@interface MPContactSearchManager
- (BOOL)isMatchInfoValidWithMatchInfo:(id)info;
- (MPContactSearchManager)init;
- (MPContactSearchManager)initWithType:(int64_t)type contactStore:(id)store searchResultsRanker:(id)ranker;
- (NSArray)_contactSearchResults;
- (NSArray)contacts;
- (NSString)_searchString;
- (id)ranker;
- (void)cancelPreviousSearch;
- (void)searchFor:(NSString *)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler;
- (void)set_contactSearchResults:(id)results;
- (void)set_searchString:(id)string;
@end

@implementation MPContactSearchManager

- (id)ranker
{
  v2 = *(self + OBJC_IVAR___MPContactSearchManager_ranker + 8);
  v5[4] = *(self + OBJC_IVAR___MPContactSearchManager_ranker);
  v5[5] = v2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1CFB72F7C;
  v5[3] = &block_descriptor_116;
  v3 = _Block_copy(v5);

  return v3;
}

- (NSString)_searchString
{

  v2 = sub_1CFB8FA80();

  return v2;
}

- (void)set_searchString:(id)string
{
  v4 = sub_1CFB8FA90();
  v5 = (self + OBJC_IVAR___MPContactSearchManager__searchString);
  *v5 = v4;
  v5[1] = v6;
}

- (NSArray)_contactSearchResults
{
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);

  v2 = sub_1CFB8FB20();

  return v2;
}

- (void)set_contactSearchResults:(id)results
{
  sub_1CFB5D38C(0, &unk_1EE04BCF0, 0x1E69BDCF8);
  *(self + OBJC_IVAR___MPContactSearchManager__contactSearchResults) = sub_1CFB8FB30();
}

- (MPContactSearchManager)initWithType:(int64_t)type contactStore:(id)store searchResultsRanker:(id)ranker
{
  v7 = _Block_copy(ranker);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  storeCopy = store;
  v10 = sub_1CFB76F14(type, store, sub_1CFB76F0C, v8);

  return v10;
}

- (NSArray)contacts
{
  selfCopy = self;
  sub_1CFB73C50();

  sub_1CFB5D38C(0, &qword_1EC4EC820, 0x1E695CD58);
  v3 = sub_1CFB8FB20();

  return v3;
}

- (void)searchFor:(NSString *)for shouldRefreshResult:(BOOL)result completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4EC4B0, &qword_1CFB91F10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  *(v13 + 16) = for;
  *(v13 + 24) = result;
  *(v13 + 32) = v12;
  *(v13 + 40) = self;
  v14 = sub_1CFB8FBF0();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1CFB922B8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1CFB922C0;
  v16[5] = v15;
  forCopy = for;
  selfCopy = self;
  sub_1CFB8C0EC(0, 0, v11, &unk_1CFB922C8, v16);
}

- (void)cancelPreviousSearch
{
  selfCopy = self;
  sub_1CFB75E58();
}

- (BOOL)isMatchInfoValidWithMatchInfo:(id)info
{
  infoCopy = info;
  selfCopy = self;
  LOBYTE(self) = sub_1CFB76000(infoCopy);

  return self & 1;
}

- (MPContactSearchManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end