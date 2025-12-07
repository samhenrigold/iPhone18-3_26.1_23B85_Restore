@interface MRIRRouteRecommendationContext
+ (id)fromObject:(id)object;
- (MRIRRouteRecommendationContext)init;
- (MRIRRouteRecommendationContext)initWithCandidateResults:(id)results contextIdentifier:(id)identifier;
@end

@implementation MRIRRouteRecommendationContext

+ (id)fromObject:(id)object
{
  objectCopy = object;
  v4 = sub_1A22287A0(objectCopy);

  return v4;
}

- (MRIRRouteRecommendationContext)initWithCandidateResults:(id)results contextIdentifier:(id)identifier
{
  type metadata accessor for RouteRecommendationCandidateResult(self, a2);
  sub_1A2229900(&qword_1EB088B00, type metadata accessor for RouteRecommendationCandidateResult, MEMORY[0x1E69E81B8]);
  v5 = sub_1A22E6928();
  v6 = sub_1A22E65C8();
  *(self + OBJC_IVAR___MRIRRouteRecommendationContext_candidateResults) = v5;
  v7 = (self + OBJC_IVAR___MRIRRouteRecommendationContext_contextIdentifier);
  *v7 = v6;
  v7[1] = v8;
  v10.receiver = self;
  v10.super_class = type metadata accessor for RouteRecommendationContext(v6, v8);
  return [(MRIRRouteRecommendationContext *)&v10 init];
}

- (MRIRRouteRecommendationContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end