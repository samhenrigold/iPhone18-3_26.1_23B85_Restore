@interface FeatureStoreUtils
+ (id)retrieveFeatureDataWithStreamId:(id)id interactionId:(id)interactionId;
+ (id)retrieveFeatureWithStreamId:(id)id interactionId:(id)interactionId dataVersion:(unsigned int)version;
- (_TtC19SiriTasksEvaluation17FeatureStoreUtils)init;
@end

@implementation FeatureStoreUtils

+ (id)retrieveFeatureWithStreamId:(id)id interactionId:(id)interactionId dataVersion:(unsigned int)version
{
  v5 = *&version;
  v6 = sub_26926B230();
  v8 = v7;
  v9 = sub_26926B230();
  v11 = _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD08streamId011interactionI011dataVersionSo20FSFCurareInteraction_pSgSS_SSs6UInt32VtFZ_0(v6, v8, v9, v10, v5);

  return v11;
}

+ (id)retrieveFeatureDataWithStreamId:(id)id interactionId:(id)interactionId
{
  v4 = sub_26926B230();
  v6 = v5;
  v7 = sub_26926B230();
  _s19SiriTasksEvaluation17FeatureStoreUtilsC08retrieveD4Data8streamId011interactionJ0Say10Foundation0H0VGSS_SStFZ_0(v4, v6, v7, v8);

  v9 = sub_26926B300();

  return v9;
}

- (_TtC19SiriTasksEvaluation17FeatureStoreUtils)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for FeatureStoreUtils();
  return [(FeatureStoreUtils *)&v3 init];
}

@end