@interface ArticleChangeDetector
- (_TtC24HealthArticlesGeneration21ArticleChangeDetector)init;
- (void)articleStatusDidChange:(id)change;
@end

@implementation ArticleChangeDetector

- (void)articleStatusDidChange:(id)change
{
  v4 = sub_2288AF1F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2288AF1D0();
  selfCopy = self;
  sub_2288A348C(v7);

  (*(v5 + 8))(v7, v4);
}

- (_TtC24HealthArticlesGeneration21ArticleChangeDetector)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end