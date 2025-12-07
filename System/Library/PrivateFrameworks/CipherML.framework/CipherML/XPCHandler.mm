@interface XPCHandler
- (void)asyncResponseDataByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)asyncResponseSimilarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)cacheFileForUseCase:(NSString *)case reply:(id)reply;
- (void)configureUseCaseGroupWithName:(NSString *)name useCaseGroup:(CMLUseCaseGroup *)group reply:(id)reply;
- (void)constructPIRBatchRequestWithIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)constructPIRBatchRequestWithKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)constructPIRRequestWithIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)constructPIRRequestWithKeyword:(NSData *)keyword withEvaluationKey:(BOOL)key shardId:(NSString *)id pirConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)dataVaultDirectory:(id)directory;
- (void)decryptBatchOfSimilarityScores:(NSData *)scores clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRBatchResponse:(NSData *)response indices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRBatchResponse:(NSData *)response keywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRResponse:(NSData *)response index:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRResponse:(NSData *)response keyword:(NSData *)keyword shardId:(NSString *)id clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)decryptPIRResponse:(NSData *)response latitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)encryptBatchOfElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)encryptDifferentiallyPrivateFakes:(NSArray *)fakes shardIndex:(int64_t)index shardCount:(int64_t)count pecConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)generateEvaluationKey:(CMLPIRConfig *)key clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)listUseCaseGroupsWithReply:(id)reply;
- (void)queryStatusForClientConfig:(CMLClientConfig *)config options:(unint64_t)options reply:(id)reply;
- (void)removeCachedEntriesByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply;
- (void)setPECConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)setPIRConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply;
- (void)similarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply;
@end

@implementation XPCHandler

- (void)requestDataByIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = index;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(by:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_563Tu;
  v16[5] = v15;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_568Tu, v16);
}

- (void)requestDataByIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = indices;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(byIndices:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_546Tu;
  v16[5] = v15;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_551Tu, v16);
}

- (void)requestDataByKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = keywords;
  v15[3] = ids;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(byKeywords:shardIds:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_529Tu;
  v18[5] = v17;
  keywordsCopy = keywords;
  idsCopy = ids;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_534Tu, v18);
}

- (void)requestDataByLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  *(v15 + 16) = latitude;
  *(v15 + 24) = longitude;
  *(v15 + 32) = config;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.requestData(byLatitude:longitude:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_514Tu;
  v18[5] = v17;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_519Tu, v18);
}

- (void)removeCachedEntriesByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = keywords;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.removeCachedEntries(byKeywords:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_499Tu;
  v16[5] = v15;
  keywordsCopy = keywords;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_504Tu, v16);
}

- (void)setPIRConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = config;
  v13[3] = clientConfig;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.setPIRConfig(_:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_484Tu;
  v16[5] = v15;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_489Tu, v16);
}

- (void)generateEvaluationKey:(CMLPIRConfig *)key clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = key;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.generateEvaluationKey(_:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_469Tu;
  v16[5] = v15;
  keyCopy = key;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_474Tu, v16);
}

- (void)constructPIRRequestWithIndex:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = index;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRRequest(with:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_454Tu;
  v16[5] = v15;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_459Tu, v16);
}

- (void)constructPIRBatchRequestWithIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = indices;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRBatchRequest(withIndices:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_439Tu;
  v16[5] = v15;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_444Tu, v16);
}

- (void)decryptPIRResponse:(NSData *)response index:(unint64_t)index clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = response;
  v15[3] = index;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRResponse(_:index:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_424Tu;
  v18[5] = v17;
  responseCopy = response;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_429Tu, v18);
}

- (void)decryptPIRBatchResponse:(NSData *)response indices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = response;
  v15[3] = indices;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:indices:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_407Tu;
  v18[5] = v17;
  responseCopy = response;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_412Tu, v18);
}

- (void)constructPIRRequestWithKeyword:(NSData *)keyword withEvaluationKey:(BOOL)key shardId:(NSString *)id pirConfig:(CMLPIRConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v27 - v16;
  v18 = _Block_copy(reply);
  v19 = swift_allocObject();
  *(v19 + 16) = keyword;
  *(v19 + 24) = key;
  *(v19 + 32) = id;
  *(v19 + 40) = config;
  *(v19 + 48) = clientConfig;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRRequest(withKeyword:withEvaluationKey:shardId:pirConfig:clientConfig:);
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &_sIeghH_IeAgH_TRTA_392Tu;
  v22[5] = v21;
  keywordCopy = keyword;
  idCopy = id;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v17, &_sIeAgH_ytIeAgHr_TRTA_397Tu, v22);
}

- (void)constructPIRBatchRequestWithKeywords:(NSArray *)keywords shardIds:(NSArray *)ids clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = keywords;
  v15[3] = ids;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRBatchRequest(withKeywords:shardIds:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_377Tu;
  v18[5] = v17;
  keywordsCopy = keywords;
  idsCopy = ids;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_382Tu, v18);
}

- (void)decryptPIRResponse:(NSData *)response keyword:(NSData *)keyword shardId:(NSString *)id clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v25 - v14;
  v16 = _Block_copy(reply);
  v17 = swift_allocObject();
  v17[2] = response;
  v17[3] = keyword;
  v17[4] = id;
  v17[5] = config;
  v17[6] = v16;
  v17[7] = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRResponse(_:keyword:shardId:clientConfig:);
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &_sIeghH_IeAgH_TRTA_362Tu;
  v20[5] = v19;
  responseCopy = response;
  keywordCopy = keyword;
  idCopy = id;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v15, &_sIeAgH_ytIeAgHr_TRTA_367Tu, v20);
}

- (void)decryptPIRBatchResponse:(NSData *)response keywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = response;
  v15[3] = keywords;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRBatchResponse(_:keywords:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_345Tu;
  v18[5] = v17;
  responseCopy = response;
  keywordsCopy = keywords;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_350Tu, v18);
}

- (void)constructPIRRequestWithLatitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v20 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  *(v15 + 16) = latitude;
  *(v15 + 24) = longitude;
  *(v15 + 32) = config;
  *(v15 + 40) = v14;
  *(v15 + 48) = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.constructPIRRequest(withLatitude:longitude:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_330Tu;
  v18[5] = v17;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_335Tu, v18);
}

- (void)decryptPIRResponse:(NSData *)response latitude:(double)latitude longitude:(double)longitude clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(reply);
  v17 = swift_allocObject();
  *(v17 + 16) = response;
  *(v17 + 24) = latitude;
  *(v17 + 32) = longitude;
  *(v17 + 40) = config;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = type metadata accessor for TaskPriority();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptPIRResponse(_:latitude:longitude:clientConfig:);
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &_sIeghH_IeAgH_TRTA_315Tu;
  v20[5] = v19;
  responseCopy = response;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v15, &_sIeAgH_ytIeAgHr_TRTA_320Tu, v20);
}

- (void)asyncResponseDataByKeywords:(NSArray *)keywords clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = keywords;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.asyncResponseData(byKeywords:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_298Tu;
  v16[5] = v15;
  keywordsCopy = keywords;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_303Tu, v16);
}

- (void)similarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = elements;
  v15[3] = indices;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.similarityScores(forElements:shardIndices:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_281Tu;
  v18[5] = v17;
  elementsCopy = elements;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_286Tu, v18);
}

- (void)setPECConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = config;
  v13[3] = clientConfig;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.setPECConfig(_:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_266Tu;
  v16[5] = v15;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_271Tu, v16);
}

- (void)encryptBatchOfElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = elements;
  v15[3] = indices;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.encryptBatch(ofElements:shardIndices:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_251Tu;
  v18[5] = v17;
  elementsCopy = elements;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_256Tu, v18);
}

- (void)encryptDifferentiallyPrivateFakes:(NSArray *)fakes shardIndex:(int64_t)index shardCount:(int64_t)count pecConfig:(CMLPECConfig *)config clientConfig:(CMLClientConfig *)clientConfig reply:(id)reply
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = _Block_copy(reply);
  v19 = swift_allocObject();
  v19[2] = fakes;
  v19[3] = index;
  v19[4] = count;
  v19[5] = config;
  v19[6] = clientConfig;
  v19[7] = v18;
  v19[8] = self;
  v20 = type metadata accessor for TaskPriority();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.encryptDifferentiallyPrivateFakes(_:shardIndex:shardCount:pecConfig:clientConfig:);
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &_sIeghH_IeAgH_TRTA_234Tu;
  v22[5] = v21;
  fakesCopy = fakes;
  configCopy = config;
  clientConfigCopy = clientConfig;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v17, &_sIeAgH_ytIeAgHr_TRTA_239Tu, v22);
}

- (void)decryptBatchOfSimilarityScores:(NSData *)scores clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = scores;
  v13[3] = config;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.decryptBatch(ofSimilarityScores:clientConfig:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_217Tu;
  v16[5] = v15;
  scoresCopy = scores;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_222Tu, v16);
}

- (void)asyncResponseSimilarityScoresForElements:(NSArray *)elements shardIndices:(NSArray *)indices clientConfig:(CMLClientConfig *)config reply:(id)reply
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(reply);
  v15 = swift_allocObject();
  v15[2] = elements;
  v15[3] = indices;
  v15[4] = config;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.asyncResponseSimilarityScores(forElements:shardIndices:clientConfig:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTA_200Tu;
  v18[5] = v17;
  elementsCopy = elements;
  indicesCopy = indices;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTA_205Tu, v18);
}

- (void)queryStatusForClientConfig:(CMLClientConfig *)config options:(unint64_t)options reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = config;
  v13[3] = options;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.queryStatus(for:options:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_185Tu;
  v16[5] = v15;
  configCopy = config;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_190Tu, v16);
}

- (void)dataVaultDirectory:(id)directory
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(directory);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.dataVaultDirectory();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_171Tu;
  v12[5] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_176Tu, v12);
}

- (void)cacheFileForUseCase:(NSString *)case reply:(id)reply
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(reply);
  v11 = swift_allocObject();
  v11[2] = case;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.cacheFile(for:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_157Tu;
  v14[5] = v13;
  caseCopy = case;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_162Tu, v14);
}

- (void)listUseCaseGroupsWithReply:(id)reply
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(reply);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.listUseCaseGroups();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTA_142Tu;
  v12[5] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTA_147Tu, v12);
}

- (void)configureUseCaseGroupWithName:(NSString *)name useCaseGroup:(CMLUseCaseGroup *)group reply:(id)reply
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = name;
  v13[3] = group;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in XPCHandler.configureUseCaseGroup(withName:useCaseGroup:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTATu;
  v16[5] = v15;
  nameCopy = name;
  groupCopy = group;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTATu, v16);
}

@end