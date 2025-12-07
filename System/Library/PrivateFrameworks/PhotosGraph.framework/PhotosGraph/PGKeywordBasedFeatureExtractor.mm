@interface PGKeywordBasedFeatureExtractor
- (PGKeywordBasedFeatureExtractor)init;
- (PGKeywordBasedFeatureExtractor)initWithWeightByKeyword:(id)keyword;
- (id)musicCurationFeaturesWithContext:(id)context progressReporter:(id)reporter error:(id *)error;
@end

@implementation PGKeywordBasedFeatureExtractor

- (PGKeywordBasedFeatureExtractor)initWithWeightByKeyword:(id)keyword
{
  ObjectType = swift_getObjectType();
  v5 = sub_22F7401D0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F740CA0();
  v9 = self + OBJC_IVAR___PGKeywordBasedFeatureExtractor____lazy_storage___consistentHash;
  *v9 = 0;
  v9[8] = 1;
  sub_22F7401C0();
  v10 = sub_22F740190();

  (*(v6 + 8))(v8, v5);
  *(&self->super.isa + OBJC_IVAR___PGKeywordBasedFeatureExtractor_weightByKeyword) = v10;
  v12.receiver = self;
  v12.super_class = ObjectType;
  return [(PGKeywordBasedFeatureExtractor *)&v12 init];
}

- (id)musicCurationFeaturesWithContext:(id)context progressReporter:(id)reporter error:(id *)error
{
  contextCopy = context;
  reporterCopy = reporter;
  selfCopy = self;
  v10 = KeywordBasedFeatureExtractor.musicCurationFeatures(context:progressReporter:)(contextCopy);

  return v10;
}

- (PGKeywordBasedFeatureExtractor)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end