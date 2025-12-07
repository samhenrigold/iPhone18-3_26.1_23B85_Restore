@interface MTFeedManager
+ (MTFeedManager)sharedInstance;
- (BOOL)isUpdating;
- (BOOL)isUpdatingShowWithUrl:(id)url storeID:(int64_t)d;
- (void)handleEventsForBackgroundURLSessionFor:(id)for completionHandler:(id)handler;
- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 isSubscribing:(BOOL)self1 telemetryIdentifier:(id)self2 feedDownloadedHook:(id)self3 preProcessFeedHook:(id)self4 postProcessFeedHook:(id)self5 completion:(id)self6;
- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 telemetryIdentifier:(id)self1 completion:(id)self2;
@end

@implementation MTFeedManager

+ (MTFeedManager)sharedInstance
{
  if (qword_100572810 != -1)
  {
    swift_once();
  }

  v3 = static FeedManager.shared;

  return v3;
}

- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 telemetryIdentifier:(id)self1 completion:(id)self2
{
  bootstrapCopy = bootstrap;
  initiatedCopy = initiated;
  idCopy = id;
  selfCopy = self;
  sub_100168088(&unk_10057D668, &qword_10040AE68);
  __chkstk_darwin();
  v16 = &v37 - v15;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v18 = &v37 - v17;
  v43 = type metadata accessor for URL();
  v19 = *(v43 - 8);
  __chkstk_darwin();
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = _Block_copy(completion);
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (feedUrl)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  (*(v19 + 56))(v18, v23, 1, v43);
  if (by)
  {
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;
  }

  else
  {
    v24 = 0;
    v26 = 0;
  }

  fetchCopy = fetch;
  v40 = v16;
  if (!identifier)
  {
    v32 = type metadata accessor for UUID();
    (*(*(v32 - 8) + 56))(v16, 1, 1, v32);
    v33 = selfCopy;
    sourceCopy2 = source;
    if (v22)
    {
      goto LABEL_9;
    }

LABEL_11:
    v31 = 0;
    goto LABEL_12;
  }

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = type metadata accessor for UUID();
  v28 = *(*(v27 - 8) + 56);
  v38 = v21;
  v29 = selfCopy;
  v28(v16, 0, 1, v27);
  v21 = v38;
  sourceCopy2 = source;
  if (!v22)
  {
    goto LABEL_11;
  }

LABEL_9:
  v31 = swift_allocObject();
  *(v31 + 16) = v22;
  v22 = sub_1002D6FF4;
LABEL_12:
  v34 = v40;
  v35 = bootstrapCopy;
  v36 = selfCopy;
  FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:telemetryIdentifier:completion:)(v21, v18, idCopy, v24, v26, initiatedCopy, v35, fetchCopy, sourceCopy2, v40, v22, v31);
  sub_1000112B4(v22, v31);

  sub_100009104(v34, &unk_10057D668, &qword_10040AE68);
  sub_100009104(v18, &qword_100574040, &unk_100400AD0);
  (*(v19 + 8))(v21, v43);
}

- (void)updateFeedForFeedUrl:(id)url cloudSyncFeedUrl:(id)feedUrl podcastStoreId:(int64_t)id triggerBy:(id)by userInitiated:(BOOL)initiated forceBootstrap:(BOOL)bootstrap useBackgroundFetch:(BOOL)fetch source:(int64_t)self0 isSubscribing:(BOOL)self1 telemetryIdentifier:(id)self2 feedDownloadedHook:(id)self3 preProcessFeedHook:(id)self4 postProcessFeedHook:(id)self5 completion:(id)self6
{
  initiatedCopy = initiated;
  bootstrapCopy = bootstrap;
  idCopy = id;
  selfCopy = self;
  sub_100168088(&unk_10057D668, &qword_10040AE68);
  __chkstk_darwin();
  v19 = &v49 - v18;
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v21 = &v49 - v20;
  v22 = type metadata accessor for URL();
  v61 = *(v22 - 8);
  v62 = v22;
  __chkstk_darwin();
  v24 = &v49 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = _Block_copy(hook);
  v52 = _Block_copy(feedHook);
  v26 = _Block_copy(processFeedHook);
  v27 = _Block_copy(completion);
  v60 = v24;
  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  if (feedUrl)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = 0;
  }

  else
  {
    v28 = 1;
  }

  (*(v61 + 56))(v21, v28, 1, v62);
  v29 = selfCopy;
  if (by)
  {
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v30;
    v56 = v21;
    if (identifier)
    {
LABEL_6:
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = type metadata accessor for UUID();
      v32 = *(*(v31 - 8) + 56);
      v33 = v29;
      v32(v19, 0, 1, v31);
      goto LABEL_9;
    }
  }

  else
  {
    v53 = 0;
    v54 = 0;
    v56 = v21;
    if (identifier)
    {
      goto LABEL_6;
    }
  }

  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 56))(v19, 1, 1, v34);
  v35 = v29;
LABEL_9:
  v36 = v27;
  v37 = v52;
  if (v25)
  {
    v38 = swift_allocObject();
    *(v38 + 16) = v25;
    v52 = sub_1002D6F7C;
    if (v37)
    {
LABEL_11:
      v39 = swift_allocObject();
      *(v39 + 16) = v37;
      v37 = sub_1002D6F34;
      goto LABEL_14;
    }
  }

  else
  {
    v52 = 0;
    v38 = 0;
    if (v37)
    {
      goto LABEL_11;
    }
  }

  v39 = 0;
LABEL_14:
  fetchCopy = fetch;
  if (v26)
  {
    v40 = swift_allocObject();
    *(v40 + 16) = v26;
    v41 = sub_1002D6ED4;
  }

  else
  {
    v41 = 0;
    v40 = 0;
  }

  v42 = v19;
  if (v36)
  {
    v43 = swift_allocObject();
    *(v43 + 16) = v36;
    v36 = sub_1002D6ECC;
  }

  else
  {
    v43 = 0;
  }

  v47 = v37;
  v48 = v39;
  v49 = v37;
  v50 = v39;
  v44 = v52;
  v45 = selfCopy;
  v46 = v56;
  FeedManager.updateFeed(forFeedUrl:cloudSyncFeedUrl:podcastStoreId:triggerBy:userInitiated:forceBootstrap:useBackgroundFetch:source:isSubscribing:telemetryIdentifier:feedDownloadedHook:preProcessFeedHook:postProcessFeedHook:completion:)(v60, v56, idCopy, v53, v54, initiatedCopy, bootstrapCopy, fetchCopy, source, subscribing, v42, v52, v38, v47, v48, v41, v40, v36, v43);
  sub_1000112B4(v36, v43);
  sub_1000112B4(v41, v40);
  sub_1000112B4(v49, v50);
  sub_1000112B4(v44, v38);

  sub_100009104(v42, &unk_10057D668, &qword_10040AE68);
  sub_100009104(v46, &qword_100574040, &unk_100400AD0);
  (*(v61 + 8))(v60, v62);
}

- (BOOL)isUpdatingShowWithUrl:(id)url storeID:(int64_t)d
{
  sub_100168088(&qword_100574040, &unk_100400AD0);
  __chkstk_darwin();
  v8 = &v14 - v7;
  if (url)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = type metadata accessor for URL();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  }

  else
  {
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  }

  selfCopy = self;
  v12 = FeedManager.isUpdatingShow(url:storeID:)(v8, d);

  sub_100009104(v8, &qword_100574040, &unk_100400AD0);
  return v12 & 1;
}

- (void)handleEventsForBackgroundURLSessionFor:(id)for completionHandler:(id)handler
{
  v5 = _Block_copy(handler);
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = swift_allocObject();
  v10[2] = self;
  v10[3] = v6;
  v10[4] = v8;
  v10[5] = sub_10019C604;
  v10[6] = v9;
  selfCopy = self;

  sub_1002D4B98(sub_1002D6FF0, v10);
}

- (BOOL)isUpdating
{
  selfCopy = self;
  v3 = FeedManager.isUpdating.getter();

  return v3 & 1;
}

@end