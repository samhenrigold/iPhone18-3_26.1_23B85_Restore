@interface RankingManager
- (RankingManager)init;
- (RankingManager)initWithRelevanceEngine:(id)engine propertiesPath:(id)path;
- (float)rankingScoreForElement:(id)element createdAt:(id)at;
- (id)rankingStartDateForElement:(id)element;
- (id)rankingTierForElement:(id)element;
- (id)updatedRankingDateForElement:(id)element;
- (void)setRelevanceEngine:(id)engine;
@end

@implementation RankingManager

- (void)setRelevanceEngine:(id)engine
{
  v4 = *(&self->super.isa + OBJC_IVAR___RankingManager_relevanceEngine);
  *(&self->super.isa + OBJC_IVAR___RankingManager_relevanceEngine) = engine;
  engineCopy = engine;
}

- (RankingManager)initWithRelevanceEngine:(id)engine propertiesPath:(id)path
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D84EF60, &qword_2286B3F00);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  if (path)
  {
    sub_2286A07DC();
    v9 = sub_2286A07EC();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = sub_2286A07EC();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  engineCopy = engine;
  v12 = sub_228693A70(engineCopy, v8);

  return v12;
}

- (id)rankingStartDateForElement:(id)element
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  elementCopy = element;
  selfCopy = self;
  sub_22868D354(elementCopy, v7);

  v10 = sub_2286A089C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_2286A083C();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

- (id)updatedRankingDateForElement:(id)element
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D84EF08, &unk_2286B3F70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v16 - v6;
  elementCopy = element;
  selfCopy = self;
  sub_22868DA8C(elementCopy, v7);

  v10 = sub_2286A089C();
  v11 = *(v10 - 8);
  v12 = (*(v11 + 48))(v7, 1, v10);
  v13 = 0;
  if (v12 != 1)
  {
    v14 = sub_2286A083C();
    (*(v11 + 8))(v7, v10);
    v13 = v14;
  }

  return v13;
}

- (float)rankingScoreForElement:(id)element createdAt:(id)at
{
  v6 = sub_2286A089C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2286A087C();
  elementCopy = element;
  selfCopy = self;
  sub_22868EAE4(elementCopy, v9);
  v13 = v12;

  (*(v7 + 8))(v9, v6);
  return v13;
}

- (id)rankingTierForElement:(id)element
{
  elementCopy = element;
  selfCopy = self;
  v6 = sub_22868F09C(elementCopy);

  return v6;
}

- (RankingManager)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end