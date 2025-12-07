@interface FairPlayPassbookProvisioningObjC
+ (void)getProvisioningInfoWithAuditToken:(id *)token nonce:(NSData *)nonce completionHandler:(id)handler;
- (FairPlayPassbookProvisioningObjC)init;
@end

@implementation FairPlayPassbookProvisioningObjC

+ (void)getProvisioningInfoWithAuditToken:(id *)token nonce:(NSData *)nonce completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB20AB8, &qword_1D967D5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v20 - v10;
  v20 = *token->var0;
  v12 = *&token->var0[4];
  v13 = *&token->var0[6];
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  *(v15 + 16) = v20;
  *(v15 + 32) = v12;
  *(v15 + 40) = v13;
  *(v15 + 48) = nonce;
  *(v15 + 56) = v14;
  *(v15 + 64) = self;
  v16 = sub_1D966EAE8();
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1D967A9E0;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1D967A9F0;
  v18[5] = v17;
  nonceCopy = nonce;
  sub_1D963F1A4(0, 0, v11, &unk_1D967AA00, v18);
}

- (FairPlayPassbookProvisioningObjC)init
{
  v3.receiver = self;
  v3.super_class = FairPlayPassbookProvisioningObjC;
  return [(FairPlayPassbookProvisioningObjC *)&v3 init];
}

@end