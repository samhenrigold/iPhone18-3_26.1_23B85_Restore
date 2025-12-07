@interface SiriAnalyticsDataCollectionPolicyClockObserver
- (SiriAnalyticsDataCollectionPolicyClockObserver)initWithSiriConfiguration:(id)configuration metastore:(id)metastore metastoreQueue:(id)queue;
- (void)rootClockCreatedWithClockIdentifier:(id)identifier completion:(id)completion;
@end

@implementation SiriAnalyticsDataCollectionPolicyClockObserver

- (SiriAnalyticsDataCollectionPolicyClockObserver)initWithSiriConfiguration:(id)configuration metastore:(id)metastore metastoreQueue:(id)queue
{
  swift_unknownObjectRetain();
  metastoreCopy = metastore;
  queueCopy = queue;
  return DataCollectionPolicyClockObserver.init(siriConfiguration:metastore:metastoreQueue:)();
}

- (void)rootClockCreatedWithClockIdentifier:(id)identifier completion:(id)completion
{
  v5 = _Block_copy(completion);
  v6 = sub_1D992AE84();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](*(v7 + 64));
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D992AE64();
  *(swift_allocObject() + 16) = v5;
  selfCopy = self;
  sub_1D98DF30C();

  (*(v7 + 8))(v9, v6);
}

@end