@interface SKAAccountProvider
- (SKAAccountProvider)init;
- (void)refreshCredentialForPrimaryAccountWithCompletion:(id)completion;
@end

@implementation SKAAccountProvider

- (SKAAccountProvider)init
{
  swift_defaultActor_initialize();
  *self->accountStore = 0;
  *&self->_anon_60[8] = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v4.receiver = self;
  v4.super_class = type metadata accessor for SKAAccountProvider();
  return [(SKAAccountProvider *)&v4 init];
}

- (void)refreshCredentialForPrimaryAccountWithCompletion:(id)completion
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(completion);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &async function pointer to partial apply for @objc closure #1 in SKAAccountProvider.refreshCredentialForPrimaryAccount();
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &_sIeghH_IeAgH_TRTATu;
  v12[5] = v11;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v7, &_sIeAgH_ytIeAgHr_TRTATu, v12);
}

@end