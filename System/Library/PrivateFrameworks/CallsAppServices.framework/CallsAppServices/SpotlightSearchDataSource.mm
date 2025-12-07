@interface SpotlightSearchDataSource
- (_TtC16CallsAppServices25SpotlightSearchDataSource)init;
- (void)providersChangedForProviderManager:(id)manager;
- (void)searchSuggestionsWithText:(NSString *)text completion:(id)completion;
@end

@implementation SpotlightSearchDataSource

- (void)searchSuggestionsWithText:(NSString *)text completion:(id)completion
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(completion);
  v11 = swift_allocObject();
  v11[2] = text;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_1D33DE9B4();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1D33E2DF8;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1D33E2E08;
  v14[5] = v13;
  textCopy = text;
  selfCopy = self;
  sub_1D337CB4C(0, 0, v9, &unk_1D33E2E18, v14);
}

- (void)providersChangedForProviderManager:(id)manager
{
  managerCopy = manager;
  selfCopy = self;
  sub_1D337D018();
}

- (_TtC16CallsAppServices25SpotlightSearchDataSource)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end