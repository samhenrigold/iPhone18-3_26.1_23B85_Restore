@interface SLPersonIdentityGenerator
- (SLPersonIdentityGenerator)init;
- (void)generateLocalIdentityForDocumentIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)generatePersonIdentitiesForHandles:(NSArray *)handles documentIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)generateProofForIdentity:(SWPersonIdentity *)identity documentIdentifier:(NSString *)identifier completionHandler:(id)handler;
- (void)signData:(NSData *)data documentIdentifier:(NSString *)identifier trackingPreventionSalt:(NSData *)salt completionHandler:(id)handler;
@end

@implementation SLPersonIdentityGenerator

- (void)generatePersonIdentitiesForHandles:(NSArray *)handles documentIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = handles;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.generatePersonIdentitiesForHandles(handles:documentIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_76Tu;
  v16[5] = v15;
  handlesCopy = handles;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_81Tu, v16);
}

- (void)generateLocalIdentityForDocumentIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = identifier;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.generateLocalIdentity(documentIdentifier:);
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &_sIeghH_IeAgH_TRTA_61Tu;
  v14[5] = v13;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v9, &_sIeAgH_ytIeAgHr_TRTA_66Tu, v14);
}

- (void)generateProofForIdentity:(SWPersonIdentity *)identity documentIdentifier:(NSString *)identifier completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v20 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identity;
  v13[3] = identifier;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.generateProofForIdentity(_:documentIdentifier:);
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &_sIeghH_IeAgH_TRTA_46Tu;
  v16[5] = v15;
  identityCopy = identity;
  identifierCopy = identifier;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v11, &_sIeAgH_ytIeAgHr_TRTA_51Tu, v16);
}

- (void)signData:(NSData *)data documentIdentifier:(NSString *)identifier trackingPreventionSalt:(NSData *)salt completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v23 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = data;
  v15[3] = identifier;
  v15[4] = salt;
  v15[5] = v14;
  v15[6] = self;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &async function pointer to partial apply for @objc closure #1 in PersonIdentityGenerator.signData(data:documentIdentifier:trackingPreventionSalt:);
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &_sIeghH_IeAgH_TRTATu;
  v18[5] = v17;
  dataCopy = data;
  identifierCopy = identifier;
  saltCopy = salt;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v13, &_sIeAgH_ytIeAgHr_TRTATu, v18);
}

- (SLPersonIdentityGenerator)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end