@interface MRDRouteRecommendationDemotionContext
- (BOOL)isASELocal;
- (BOOL)isSourceEndpointPlaying;
- (BOOL)isTargetEndpointPlaying;
- (BOOL)localOutputContextHasAirPlay;
- (MRDRouteRecommendationDemotionContext)init;
- (MRDRouteRecommendationDemotionContext)initWithPrimaryBundleIdentifier:(id)identifier recommendationType:(int64_t)type isASELocal:(BOOL)local localOutputContextHasAirPlay:(BOOL)play isSourceEndpointPlaying:(BOOL)playing isTargetEndpointPlaying:(BOOL)endpointPlaying targetNowPlayingBundleIdentifier:(id)bundleIdentifier targetEndpointContainsDiscoverableGroupLeader:(BOOL)self0;
- (NSString)primaryBundleIdentifier;
- (NSString)targetNowPlayingBundleIdentifier;
- (int64_t)recommendationType;
- (void)setIsASELocal:(BOOL)local;
- (void)setIsSourceEndpointPlaying:(BOOL)playing;
- (void)setIsTargetEndpointPlaying:(BOOL)playing;
- (void)setLocalOutputContextHasAirPlay:(BOOL)play;
- (void)setPrimaryBundleIdentifier:(id)identifier;
- (void)setRecommendationType:(int64_t)type;
- (void)setTargetNowPlayingBundleIdentifier:(id)identifier;
@end

@implementation MRDRouteRecommendationDemotionContext

- (NSString)primaryBundleIdentifier
{
  swift_beginAccess();

  v2 = String._bridgeToObjectiveC()();

  return v2;
}

- (void)setPrimaryBundleIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  v7 = (self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_primaryBundleIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (int64_t)recommendationType
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setRecommendationType:(int64_t)type
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_recommendationType;
  swift_beginAccess();
  *(self + v5) = type;
}

- (BOOL)isASELocal
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsASELocal:(BOOL)local
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isASELocal;
  swift_beginAccess();
  *(self + v5) = local;
}

- (BOOL)localOutputContextHasAirPlay
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setLocalOutputContextHasAirPlay:(BOOL)play
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_localOutputContextHasAirPlay;
  swift_beginAccess();
  *(self + v5) = play;
}

- (BOOL)isSourceEndpointPlaying
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsSourceEndpointPlaying:(BOOL)playing
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isSourceEndpointPlaying;
  swift_beginAccess();
  *(self + v5) = playing;
}

- (BOOL)isTargetEndpointPlaying
{
  v3 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  return *(self + v3);
}

- (void)setIsTargetEndpointPlaying:(BOOL)playing
{
  v5 = OBJC_IVAR___MRDRouteRecommendationDemotionContext_isTargetEndpointPlaying;
  swift_beginAccess();
  *(self + v5) = playing;
}

- (NSString)targetNowPlayingBundleIdentifier
{
  v2 = self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier;
  swift_beginAccess();
  if (*(v2 + 1))
  {

    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (void)setTargetNowPlayingBundleIdentifier:(id)identifier
{
  if (identifier)
  {
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0;
  }

  v7 = (self + OBJC_IVAR___MRDRouteRecommendationDemotionContext_targetNowPlayingBundleIdentifier);
  swift_beginAccess();
  *v7 = v4;
  v7[1] = v6;
}

- (MRDRouteRecommendationDemotionContext)initWithPrimaryBundleIdentifier:(id)identifier recommendationType:(int64_t)type isASELocal:(BOOL)local localOutputContextHasAirPlay:(BOOL)play isSourceEndpointPlaying:(BOOL)playing isTargetEndpointPlaying:(BOOL)endpointPlaying targetNowPlayingBundleIdentifier:(id)bundleIdentifier targetEndpointContainsDiscoverableGroupLeader:(BOOL)self0
{
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (bundleIdentifier)
  {
    v17 = v15;
    v18 = v16;
    v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v17;
    v21 = v20;
    v16 = v18;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  return sub_10037FD94(v15, v16, type, local, play, playing, endpointPlaying, v19, v21, leader);
}

- (MRDRouteRecommendationDemotionContext)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end