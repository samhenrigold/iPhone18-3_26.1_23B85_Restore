@interface HMDACWGKeyManager
+ (HMDACWGKeyManager)shared;
- (HMDACWGKeyManager)init;
- (void)getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:(NSUUID *)d completionHandler:(id)handler;
- (void)getOrCreateIssuerKeyAndSaveIfNeededWithHome:(NSUUID *)home user:(NSUUID *)user context:(HMCContext *)context shouldRoll:(BOOL)roll completionHandler:(id)handler;
- (void)getOrCreateIssuerKeyAndSaveToSharedUserReverseShareWithHomeUUID:(NSUUID *)d context:(HMCContext *)context shouldUpdateLocks:(BOOL)locks shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch isOnSharedUserAcceptance:(BOOL)acceptance completionHandler:(id)self0;
- (void)getOrCreateIssuerKeyPairExternalRepresentationWithHomeUUID:(NSUUID *)d shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch shouldAwaitOnPush:(BOOL)push completionHandler:(id)handler;
@end

@implementation HMDACWGKeyManager

+ (HMDACWGKeyManager)shared
{
  if (qword_281402D28 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)getOrCreateIssuerKeyPairExternalRepresentationWithHomeUUID:(NSUUID *)d shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch shouldAwaitOnPush:(BOOL)push completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = d;
  *(v19 + 24) = roll;
  *(v19 + 32) = flow;
  *(v19 + 40) = fetch;
  *(v19 + 41) = push;
  *(v19 + 48) = v18;
  *(v19 + 56) = self;
  v20 = sub_22A4DD9DC();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22A57E5B0;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A57E5B8;
  v22[5] = v21;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v17, &unk_22A57E5C0, v22);
}

- (void)getOrCreateIssuerKeyAndSaveToSharedUserReverseShareWithHomeUUID:(NSUUID *)d context:(HMCContext *)context shouldUpdateLocks:(BOOL)locks shouldRoll:(BOOL)roll flow:(HMFFlow *)flow requireCloudFetch:(BOOL)fetch isOnSharedUserAcceptance:(BOOL)acceptance completionHandler:(id)self0
{
  HIDWORD(v27) = fetch;
  dCopy = d;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  v19 = _Block_copy(handler);
  v20 = swift_allocObject();
  *(v20 + 16) = d;
  *(v20 + 24) = context;
  *(v20 + 32) = locks;
  *(v20 + 33) = roll;
  *(v20 + 40) = flow;
  *(v20 + 48) = BYTE4(v27);
  *(v20 + 49) = acceptance;
  *(v20 + 56) = v19;
  *(v20 + 64) = self;
  v21 = sub_22A4DD9DC();
  (*(*(v21 - 8) + 56))(v18, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A57E590;
  v22[5] = v20;
  v23 = swift_allocObject();
  v23[2] = 0;
  v23[3] = 0;
  v23[4] = &unk_22A57E598;
  v23[5] = v22;
  v24 = dCopy;
  contextCopy = context;
  flowCopy = flow;

  sub_229859F70(0, 0, v18, &unk_22A57E5A0, v23);
}

- (void)getOrCreateIssuerKeyAndSaveIfNeededWithHome:(NSUUID *)home user:(NSUUID *)user context:(HMCContext *)context shouldRoll:(BOOL)roll completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v24 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = home;
  *(v17 + 24) = user;
  *(v17 + 32) = context;
  *(v17 + 40) = roll;
  *(v17 + 48) = v16;
  *(v17 + 56) = self;
  v18 = sub_22A4DD9DC();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22A57E570;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22A57E578;
  v20[5] = v19;
  homeCopy = home;
  userCopy = user;
  contextCopy = context;

  sub_229859F70(0, 0, v15, &unk_22A57E580, v20);
}

- (void)getIssuerKeyPairExternalRepresentationFromKeychainForHomeUUID:(NSUUID *)d completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = d;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A57E560;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B590;
  v14[5] = v13;
  dCopy = d;

  sub_229859F70(0, 0, v9, &unk_22A581CC0, v14);
}

- (HMDACWGKeyManager)init
{
  swift_defaultActor_initialize();
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end