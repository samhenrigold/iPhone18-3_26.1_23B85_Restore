@interface PDClassKitServiceOperationsObjC
- (PDClassKitServiceOperationsObjC)init;
- (void)checkConnectionStatusWithCompletion:(id)completion;
- (void)fetchRecordsforDownloadingWithIsDraft:(BOOL)draft request:(id)request progressBlock:(id)block recordResultBlock:(id)resultBlock completionBlock:(id)completionBlock;
- (void)fetchRecordsforStreamingWithIsDraft:(BOOL)draft request:(id)request progressBlock:(id)block recordResultBlock:(id)resultBlock completionBlock:(id)completionBlock;
@end

@implementation PDClassKitServiceOperationsObjC

- (void)fetchRecordsforDownloadingWithIsDraft:(BOOL)draft request:(id)request progressBlock:(id)block recordResultBlock:(id)resultBlock completionBlock:(id)completionBlock
{
  v12 = _Block_copy(block);
  v13 = _Block_copy(resultBlock);
  v14 = _Block_copy(completionBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  requestCopy = request;
  selfCopy = self;
  ClassKitServiceOperations.fetchRecordsforDownloading(isDraft:request:progressBlock:recordResultBlock:completionBlock:)(draft, requestCopy, sub_10001169C, v15, sub_10001168C, v16, sub_100011690, v17);
}

- (void)fetchRecordsforStreamingWithIsDraft:(BOOL)draft request:(id)request progressBlock:(id)block recordResultBlock:(id)resultBlock completionBlock:(id)completionBlock
{
  v12 = _Block_copy(block);
  v13 = _Block_copy(resultBlock);
  v14 = _Block_copy(completionBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  v16 = swift_allocObject();
  *(v16 + 16) = v13;
  v17 = swift_allocObject();
  *(v17 + 16) = v14;
  requestCopy = request;
  selfCopy = self;
  ClassKitServiceOperations.fetchRecordsforStreaming(isDraft:request:progressBlock:recordResultBlock:completionBlock:)(draft, requestCopy, sub_10001136C, v15, sub_100011380, v16, sub_100011388, v17);
}

- (void)checkConnectionStatusWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  selfCopy = self;
  _s9progressd25ClassKitServiceOperationsC21checkConnectionStatus10completionyySSSg_s5Error_pSgtc_tF_0(sub_100011364, v5);
}

- (PDClassKitServiceOperationsObjC)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for ClassKitServiceOperations();
  return [(PDClassKitServiceOperationsObjC *)&v3 init];
}

@end