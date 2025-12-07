@interface MTLFeatureSetDictionary
@end

@implementation MTLFeatureSetDictionary

void *___MTLFeatureSetDictionary_block_invoke()
{
  v2[19] = *MEMORY[0x1E69E9840];
  v1[0] = @"MTLFeatureSet_iOS_GPUFamily1_v1";
  v1[1] = @"MTLFeatureSet_iOS_GPUFamily2_v1";
  v2[0] = &unk_1EF4CFB70;
  v2[1] = &unk_1EF4CFB88;
  v1[2] = @"MTLFeatureSet_iOS_GPUFamily1_v2";
  v1[3] = @"MTLFeatureSet_iOS_GPUFamily2_v2";
  v2[2] = &unk_1EF4CFBA0;
  v2[3] = &unk_1EF4CFBB8;
  v1[4] = @"MTLFeatureSet_iOS_GPUFamily3_v1";
  v1[5] = @"MTLFeatureSet_iOS_GPUFamily1_v3";
  v2[4] = &unk_1EF4CFBD0;
  v2[5] = &unk_1EF4CFBE8;
  v1[6] = @"MTLFeatureSet_iOS_GPUFamily2_v3";
  v1[7] = @"MTLFeatureSet_iOS_GPUFamily3_v2";
  v2[6] = &unk_1EF4CFC00;
  v2[7] = &unk_1EF4CFC18;
  v1[8] = @"MTLFeatureSet_iOS_GPUFamily1_v4";
  v1[9] = @"MTLFeatureSet_iOS_GPUFamily2_v4";
  v2[8] = &unk_1EF4CFC30;
  v2[9] = &unk_1EF4CFC48;
  v1[10] = @"MTLFeatureSet_iOS_GPUFamily3_v3";
  v1[11] = @"MTLFeatureSet_iOS_GPUFamily4_v1";
  v2[10] = &unk_1EF4CFC60;
  v2[11] = &unk_1EF4CFC78;
  v1[12] = @"MTLFeatureSet_iOS_GPUFamily1_v5";
  v1[13] = @"MTLFeatureSet_iOS_GPUFamily2_v5";
  v2[12] = &unk_1EF4CFC90;
  v2[13] = &unk_1EF4CFCA8;
  v1[14] = @"MTLFeatureSet_iOS_GPUFamily3_v4";
  v1[15] = @"MTLFeatureSet_iOS_GPUFamily4_v2";
  v2[14] = &unk_1EF4CFCC0;
  v2[15] = &unk_1EF4CFCD8;
  v1[16] = @"MTLFeatureSet_iOS_GPUFamily5_v1";
  v1[17] = @"MTLFeatureSet_iOS_GPUFamily6_v1";
  v2[16] = &unk_1EF4CFCF0;
  v2[17] = &unk_1EF4CFD08;
  v1[18] = @"MTLFeatureSet_iOS_GPUFamily7_v1";
  v2[18] = &unk_1EF4CFD20;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:19];
  _MTLFeatureSetDictionary::featureSetDictionary = result;
  return result;
}

@end