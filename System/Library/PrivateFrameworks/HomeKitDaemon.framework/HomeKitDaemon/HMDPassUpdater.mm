@interface HMDPassUpdater
+ (HMDPassUpdater)shared;
- (HMDPassUpdater)init;
- (void)hasAtLeastOneWalletKeyWithCompletionHandler:(id)handler;
- (void)passWithExpressConfigurationWithSerialNumber:(NSString *)number completionHandler:(id)handler;
- (void)passWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number completionHandler:(id)handler;
- (void)removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:(NSUUID *)d withFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)removeOrphanedPassesWithFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)setExpressSettingsForPassSerialNumber:(NSString *)number enableNFCExpress:(BOOL)express enableUWB:(BOOL)b authData:(NSData *)data flow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)uniqueIDOfPassWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number withFlow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding optionsRawValue:(int64_t)value ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler;
- (void)updatePassOnKeychainUpdateForHomeUUID:(NSUUID *)d flow:(HMFFlow *)flow completionHandler:(id)handler;
@end

@implementation HMDPassUpdater

+ (HMDPassUpdater)shared
{
  if (qword_281402DF8 != -1)
  {
    swift_once();
  }

  return v2;
}

- (void)hasAtLeastOneWalletKeyWithCompletionHandler:(id)handler
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v13 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = sub_22A4DD9DC();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_22A585ED8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_22A585EE0;
  v12[5] = v11;

  sub_229859F70(0, 0, v7, &unk_22A585EE8, v12);
}

- (void)updatePassOnKeychainUpdateForHomeUUID:(NSUUID *)d flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = flow;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A585EB8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22A585EC0;
  v16[5] = v15;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v11, &unk_22A585EC8, v16);
}

- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  v16 = _Block_copy(handler);
  v17 = swift_allocObject();
  *(v17 + 16) = d;
  *(v17 + 24) = onboarding;
  *(v17 + 25) = cache;
  *(v17 + 32) = flow;
  *(v17 + 40) = v16;
  *(v17 + 48) = self;
  v18 = sub_22A4DD9DC();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = &unk_22A585E98;
  v19[5] = v17;
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = &unk_22A585EA0;
  v20[5] = v19;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v15, &unk_22A585EA8, v20);
}

- (void)updatePassForHomeUUID:(NSUUID *)d isOnboarding:(BOOL)onboarding optionsRawValue:(int64_t)value ignoreCache:(BOOL)cache flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v25 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = d;
  *(v19 + 24) = onboarding;
  *(v19 + 32) = value;
  *(v19 + 40) = cache;
  *(v19 + 48) = flow;
  *(v19 + 56) = v18;
  *(v19 + 64) = self;
  v20 = sub_22A4DD9DC();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22A585E78;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A585E80;
  v22[5] = v21;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v17, &unk_22A585E88, v22);
}

- (void)removeOrphanedPassesWithFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = flow;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A585E50;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A585E58;
  v14[5] = v13;
  flowCopy = flow;

  sub_229859F70(0, 0, v9, &unk_22A585E60, v14);
}

- (void)setExpressSettingsForPassSerialNumber:(NSString *)number enableNFCExpress:(BOOL)express enableUWB:(BOOL)b authData:(NSData *)data flow:(HMFFlow *)flow completionHandler:(id)handler
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v26 - v16;
  v18 = _Block_copy(handler);
  v19 = swift_allocObject();
  *(v19 + 16) = number;
  *(v19 + 24) = express;
  *(v19 + 25) = b;
  *(v19 + 32) = data;
  *(v19 + 40) = flow;
  *(v19 + 48) = v18;
  *(v19 + 56) = self;
  v20 = sub_22A4DD9DC();
  (*(*(v20 - 8) + 56))(v17, 1, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_22A585E28;
  v21[5] = v19;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_22A585E30;
  v22[5] = v21;
  numberCopy = number;
  dataCopy = data;
  flowCopy = flow;

  sub_229859F70(0, 0, v17, &unk_22A585E38, v22);
}

- (void)removeOrphanedHomeKeyMiscInfoIncludingHomeUUID:(NSUUID *)d withFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = d;
  v13[3] = flow;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A585E00;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22A585E08;
  v16[5] = v15;
  dCopy = d;
  flowCopy = flow;

  sub_229859F70(0, 0, v11, &unk_22A585E10, v16);
}

- (void)passWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(handler);
  v13 = swift_allocObject();
  v13[2] = identifier;
  v13[3] = number;
  v13[4] = v12;
  v13[5] = self;
  v14 = sub_22A4DD9DC();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_22A585DD8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_22A585DE0;
  v16[5] = v15;
  identifierCopy = identifier;
  numberCopy = number;

  sub_229859F70(0, 0, v11, &unk_22A585DE8, v16);
}

- (void)uniqueIDOfPassWithPassTypeIdentifier:(NSString *)identifier withSerialNumber:(NSString *)number withFlow:(HMFFlow *)flow completionHandler:(id)handler
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v22 - v12;
  v14 = _Block_copy(handler);
  v15 = swift_allocObject();
  v15[2] = identifier;
  v15[3] = number;
  v15[4] = flow;
  v15[5] = v14;
  v15[6] = self;
  v16 = sub_22A4DD9DC();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_22A585DB8;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_22A585DC0;
  v18[5] = v17;
  identifierCopy = identifier;
  numberCopy = number;
  flowCopy = flow;

  sub_229859F70(0, 0, v13, &unk_22A585DC8, v18);
}

- (void)passWithExpressConfigurationWithSerialNumber:(NSString *)number completionHandler:(id)handler
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  v11[2] = number;
  v11[3] = v10;
  v11[4] = self;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_22A585D68;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_22A57B590;
  v14[5] = v13;
  numberCopy = number;

  sub_229859F70(0, 0, v9, &unk_22A581CC0, v14);
}

- (HMDPassUpdater)init
{
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  v3 = sub_22A4DBA1C();
  v4 = MEMORY[0x277D84F98];
  *&self->_anon_60[8] = v3;
  *self->queue = v4;
  v6.receiver = self;
  v6.super_class = type metadata accessor for PassUpdater();
  return [(HMDPassUpdater *)&v6 init];
}

@end