@interface FeedUpdateRequest.MediaRequestTelemetry
- (void)beginBuildingRequest;
@end

@implementation FeedUpdateRequest.MediaRequestTelemetry

- (void)beginBuildingRequest
{
  v3 = 6;

  sub_1D8D76684(&v3, &v4);
  *(&self->super.isa + OBJC_IVAR____TtCV18PodcastsFoundation17FeedUpdateRequest21MediaRequestTelemetry_requestBuildingState) = v4;
}

@end