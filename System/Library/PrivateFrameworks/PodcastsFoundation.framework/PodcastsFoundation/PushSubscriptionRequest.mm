@interface PushSubscriptionRequest
- (NSDictionary)parameters;
- (_TtC18PodcastsFoundation23PushSubscriptionRequest)init;
- (_TtC18PodcastsFoundation23PushSubscriptionRequest)initWithEndpointURL:(id)l action:(id)action apnsToken:(id)token;
- (id)buildURLRequestAndReturnError:(id *)error;
@end

@implementation PushSubscriptionRequest

- (_TtC18PodcastsFoundation23PushSubscriptionRequest)initWithEndpointURL:(id)l action:(id)action apnsToken:(id)token
{
  ObjectType = swift_getObjectType();
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176B9C();
  v12 = sub_1D917820C();
  v14 = v13;
  tokenCopy = token;
  v16 = sub_1D9176C8C();
  v18 = v17;

  (*(v9 + 16))(self + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_endpointURL, v11, v8);
  v19 = (self + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_action);
  *v19 = v12;
  v19[1] = v14;
  v20 = (self + OBJC_IVAR____TtC18PodcastsFoundation23PushSubscriptionRequest_apnsToken);
  *v20 = v16;
  v20[1] = v18;
  v23.receiver = self;
  v23.super_class = ObjectType;
  v21 = [(PushSubscriptionRequest *)&v23 init];
  (*(v9 + 8))(v11, v8);
  return v21;
}

- (NSDictionary)parameters
{
  selfCopy = self;
  PushSubscriptionRequest.parameters.getter();

  v3 = sub_1D917802C();

  return v3;
}

- (id)buildURLRequestAndReturnError:(id *)error
{
  v4 = sub_1D917653C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  selfCopy = self;
  PushSubscriptionRequest.buildURLRequest()(v7);

  v9 = sub_1D91764BC();
  (*(v5 + 8))(v7, v4);

  return v9;
}

- (_TtC18PodcastsFoundation23PushSubscriptionRequest)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end