@interface CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform
@end

@implementation CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform

void ___CHSSystemVersionStringToCompareAgainstFromSDKAndPlatform_block_invoke()
{
  v12[3] = *MEMORY[0x1E69E9840];
  v11[0] = &unk_1F0A7A088;
  v9[0] = &unk_1F0A7A0A0;
  v9[1] = &unk_1F0A7A0B8;
  v10[0] = @"14.0";
  v10[1] = @"17.0";
  v9[2] = &unk_1F0A7A0D0;
  v9[3] = &unk_1F0A7A0E8;
  v10[2] = @"17.0";
  v10[3] = @"17.0";
  v9[4] = &unk_1F0A7A100;
  v9[5] = &unk_1F0A7A118;
  v10[4] = @"17.0";
  v10[5] = @"1.0";
  v0 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:v9 count:6];
  v12[0] = v0;
  v11[1] = &unk_1F0A7A0A0;
  v7[0] = &unk_1F0A7A0A0;
  v7[1] = &unk_1F0A7A0B8;
  v8[0] = @"15.0";
  v8[1] = @"18.0";
  v7[2] = &unk_1F0A7A0D0;
  v7[3] = &unk_1F0A7A0E8;
  v8[2] = @"18.0";
  v8[3] = @"18.0";
  v7[4] = &unk_1F0A7A100;
  v7[5] = &unk_1F0A7A118;
  v8[4] = @"18.0";
  v8[5] = @"2.0";
  v1 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:v7 count:6];
  v12[1] = v1;
  v11[2] = &unk_1F0A7A0B8;
  v5[0] = &unk_1F0A7A0A0;
  v5[1] = &unk_1F0A7A0B8;
  v6[0] = @"16.0";
  v6[1] = @"19.0";
  v5[2] = &unk_1F0A7A0D0;
  v5[3] = &unk_1F0A7A0E8;
  v6[2] = @"19.0";
  v6[3] = @"19.0";
  v5[4] = &unk_1F0A7A100;
  v5[5] = &unk_1F0A7A118;
  v6[4] = @"19.0";
  v6[5] = @"3.0";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:6];
  v12[2] = v2;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v12 forKeys:v11 count:3];
  v4 = __sdkVersionPlatformToSystemVersion;
  __sdkVersionPlatformToSystemVersion = v3;
}

@end