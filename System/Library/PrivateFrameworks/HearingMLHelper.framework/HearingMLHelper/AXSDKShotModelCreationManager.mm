@interface AXSDKShotModelCreationManager
- (AXSDKShotModelCreationManager)init;
- (id)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath error:(id *)error;
@end

@implementation AXSDKShotModelCreationManager

- (AXSDKShotModelCreationManager)init
{
  v3.receiver = self;
  v3.super_class = AXSDKShotModelCreationManager;
  return [(AXSDKShotModelCreationManager *)&v3 init];
}

- (id)trainWithDetectorID:(id)d hallucinatorPath:(id)path pretrainedWeightsPath:(id)weightsPath error:(id *)error
{
  v24[0] = error;
  v7 = sub_251F6B1B0();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v24 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = v24 - v15;
  v17 = sub_251F6B250();
  v19 = v18;
  sub_251F6B1A0();
  sub_251F6B1A0();
  selfCopy = self;
  sub_251F68FA4(v17, v19, v14, v11, v16);

  v21 = *(v8 + 8);
  v21(v11, v7);
  v21(v14, v7);
  v22 = sub_251F6B190();
  v21(v16, v7);

  return v22;
}

@end