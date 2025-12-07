@interface AFBundleResourceGetSoundMap
@end

@implementation AFBundleResourceGetSoundMap

void ___AFBundleResourceGetSoundMap_block_invoke()
{
  v16[13] = *MEMORY[0x1E69E9840];
  v15[0] = &unk_1F056D050;
  v14 = [AFBundleResource newWithBuilder:&__block_literal_global_74];
  v16[0] = v14;
  v15[1] = &unk_1F056D068;
  v13 = [AFBundleResource newWithBuilder:&__block_literal_global_85];
  v16[1] = v13;
  v15[2] = &unk_1F056D080;
  v12 = [AFBundleResource newWithBuilder:&__block_literal_global_93];
  v16[2] = v12;
  v15[3] = &unk_1F056D098;
  v0 = [AFBundleResource newWithBuilder:&__block_literal_global_101];
  v16[3] = v0;
  v15[4] = &unk_1F056D0B0;
  v1 = [AFBundleResource newWithBuilder:&__block_literal_global_112];
  v16[4] = v1;
  v15[5] = &unk_1F056D0C8;
  v2 = [AFBundleResource newWithBuilder:&__block_literal_global_120];
  v16[5] = v2;
  v15[6] = &unk_1F056D0E0;
  v3 = [AFBundleResource newWithBuilder:&__block_literal_global_128];
  v16[6] = v3;
  v15[7] = &unk_1F056D0F8;
  v4 = [AFBundleResource newWithBuilder:&__block_literal_global_136];
  v16[7] = v4;
  v15[8] = &unk_1F056D110;
  v5 = [AFBundleResource newWithBuilder:&__block_literal_global_144];
  v16[8] = v5;
  v15[9] = &unk_1F056D128;
  v6 = [AFBundleResource newWithBuilder:&__block_literal_global_152];
  v16[9] = v6;
  v15[10] = &unk_1F056D140;
  v7 = [AFBundleResource newWithBuilder:&__block_literal_global_160];
  v16[10] = v7;
  v15[11] = &unk_1F056D158;
  v8 = [AFBundleResource newWithBuilder:&__block_literal_global_168];
  v16[11] = v8;
  v15[12] = &unk_1F056D170;
  v9 = [AFBundleResource newWithBuilder:&__block_literal_global_176];
  v16[12] = v9;
  v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:13];
  v11 = _AFBundleResourceGetSoundMap_map;
  _AFBundleResourceGetSoundMap_map = v10;
}

void ___AFBundleResourceGetSoundMap_block_invoke_174(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"begin_sae_short"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_166(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"jbl_latency_sae"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_158(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"jbl_success_sae"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_150(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"jbl_begin_sae"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_142(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"attending-window-end"];
  [v2 setExtension:@"wav"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_134(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"interstitial-delay-tone"];
  [v2 setExtension:@"wav"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_126(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"announce-messages-tone-carplay"];
  [v2 setExtension:@"wav"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_118(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"home-announcement-received"];
  [v2 setExtension:@"wav"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_110(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"home-announcement-recording-begin"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_99(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"announce-messages-tone"];
  [v2 setExtension:@"wav"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_91(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"dt-cancel"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_83(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"dt-confirm"];
  [v2 setExtension:@"caf"];
}

void ___AFBundleResourceGetSoundMap_block_invoke_71(uint64_t a1, void *a2)
{
  v2 = a2;
  [v2 setName:@"dt-begin"];
  [v2 setExtension:@"caf"];
}

@end