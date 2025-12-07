@interface MediaRemoteSubscriptionController
- (_TtC11PodcastsKit33MediaRemoteSubscriptionController)init;
- (void)subscribeToFeedUrl:(id)url completion:(id)completion;
- (void)subscribeToStoreId:(id)id completion:(id)completion;
- (void)subscribeToStoreId:(id)id siriContext:(id)context completion:(id)completion;
@end

@implementation MediaRemoteSubscriptionController

- (_TtC11PodcastsKit33MediaRemoteSubscriptionController)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for MediaRemoteSubscriptionController();
  return [(MediaRemoteSubscriptionController *)&v3 init];
}

- (void)subscribeToStoreId:(id)id completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  idCopy = id;
  selfCopy = self;
  sub_25EA14164(idCopy, 0, sub_25EA14908, v7);
}

- (void)subscribeToStoreId:(id)id siriContext:(id)context completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  idCopy = id;
  contextCopy = context;
  selfCopy = self;
  sub_25EA14164(idCopy, context, sub_25EA14908, v9);
}

- (void)subscribeToFeedUrl:(id)url completion:(id)completion
{
  v6 = sub_25EA1E448();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _Block_copy(completion);
  sub_25EA1E428();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  selfCopy = self;
  sub_25EA144C0(v9, sub_25EA13F7C, v11);

  (*(v7 + 8))(v9, v6);
}

@end