@interface MFXTemporalScalingEffectV3
@end

@implementation MFXTemporalScalingEffectV3

BOOL __53___MFXTemporalScalingEffectV3_encodeToCommandBuffer___block_invoke(uint64_t a1, uint64_t a2, int *a3)
{
  v3 = *a3;
  if (*a3 == 2)
  {
    v5 = *(a1 + 176);
    v18 = *(a1 + 32);
    v6 = *(v18 + 464);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __53___MFXTemporalScalingEffectV3_encodeToCommandBuffer___block_invoke_2;
    block[3] = &unk_278AA4CD0;
    v31 = v5;
    v7 = *(&v18 + 1);
    v26 = *(a1 + 112);
    v27 = *(a1 + 128);
    v8 = *(a1 + 48);
    v9 = *(a1 + 56);
    *&v10 = v8;
    *(&v10 + 1) = v9;
    v20 = v18;
    v21 = v10;
    v11 = *(a1 + 64);
    v12 = *(a1 + 72);
    v28 = *(a1 + 136);
    v29 = *(a1 + 152);
    v33 = *(a1 + 184);
    v34 = *(a1 + 185);
    v32 = *(a1 + 180);
    v24 = *(a1 + 96);
    v30 = *(a1 + 160);
    v13 = *(a1 + 80);
    v14 = *(a1 + 88);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    *&v16 = v11;
    *(&v16 + 1) = v12;
    v22 = v16;
    v23 = v15;
    v25 = *(a1 + 104);
    dispatch_async(v6, block);
  }

  return v3 == 2;
}

void __53___MFXTemporalScalingEffectV3_encodeToCommandBuffer___block_invoke_2(uint64_t a1)
{
  v7 = *(*(a1 + 32) + 48);
  memset(v8, 0, 24);
  MetalFxScopedSignpost::MetalFxScopedSignpost(v6, 0, *(a1 + 32), 6, *(*(a1 + 32) + 16), 0);
  if (MTLTraceEnabled())
  {
    [*(a1 + 32) outputWidth];
    [*(a1 + 32) outputHeight];
    [*(a1 + 32) inputWidth];
    [*(a1 + 32) inputHeight];
    if (MTLTraceEnabled())
    {
      [*(a1 + 40) globalTraceObjectID];
      kdebug_trace();
    }
  }

  v4 = [*(*(a1 + 32) + 384) commandBuffer];
  if (MTLTraceEnabled())
  {
    [v4 globalTraceObjectID];
    kdebug_trace();
  }

  [v4 encodeWaitForEvent:*(*(a1 + 32) + 392) value:*(a1 + 112)];
  v2 = *(a1 + 32);
  if (*(v2 + 163) == 1)
  {
    v3 = *(v2 + 424);
    if (v3)
    {
      [v4 encodeSignalEvent:v3 value:*(a1 + 120)];
    }
  }

  MFXComputeEncoder3::beginEncoding(v8, v4);
  v5 = v8[0];
  [v5 setLabel:@"MetalFX_Temporal_PreProcessing"];
  v5;
  [*(a1 + 32) _didCreateComputeCommandEncoder:? forEncode:?];
  [*(*(a1 + 32) + 368) mpsndarray];
  [objc_claimAutoreleasedReturnValue() buffer];
  objc_claimAutoreleasedReturnValue();
  BRNet_v3_Filter<MFXDevice3>::encodePre();
}

void __53___MFXTemporalScalingEffectV3_encodeToCommandBuffer___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 GPUStartTime];
  *(*(*(a1 + 32) + 8) + 24) = v3;
}

void __53___MFXTemporalScalingEffectV3_encodeToCommandBuffer___block_invoke_4(void *a1, void *a2)
{
  v16 = a2;
  [v16 GPUEndTime];
  *(*(a1[5] + 8) + 24) = v3;
  {
    MetalFXHUDInstance(void)::inst = WEAK_CADeveloperHUDProperties();
  }

  v4 = MetalFXHUDInstance(void)::inst;
  {
    MetalFXHUDInstanceV3(void)::v3 = WEAK_HUDServiceV3();
  }

  v5 = MetalFXHUDInstanceV3(void)::v3;
  v6 = v5;
  if (v4)
  {
    if (v5)
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(a1[4] + 736), *(a1[4] + 744)];
      [v6 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.input_resolution" label:v7];

      v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu", *(a1[4] + 72), *(a1[4] + 80)];
      [v6 updateLabelMetric:@"com.apple.hud-label.metalfx.v2.target_resolution" label:v8];

      BRNet_v3_Filter<MFXDevice3>::getInternalExposure();
    }

    v9 = (*(*(a1[5] + 8) + 24) - *(*(a1[6] + 8) + 24)) * 1000.0;
    CHistoryRecord::Add(*(a1[4] + 816), *(a1[4] + 808), v9);
    v10 = a1[4];
    if (*(v10 + 280) == 1 && (*(v10 + 163) & 1) != 0)
    {
      v11 = "ANE";
    }

    else
    {
      v11 = "GPU";
    }

    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"MetalFX TAAU Enabled %s", v11];
    [v4 updateLabel:@"com.apple.hud-label.metalfx" value:v12];

    v13 = [MEMORY[0x277CCACA8] stringWithFormat:@"%lux%lu->%lux%lu", *(a1[4] + 56), *(a1[4] + 64), *(a1[4] + 72), *(a1[4] + 80)];
    [v4 updateLabel:@"com.apple.hud-label.metalfx.resolution" value:v13];

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"c. %lux%lu->%lux%lu", *(a1[4] + 736), *(a1[4] + 744), *(a1[4] + 72), *(a1[4] + 80)];
    [v4 updateLabel:@"com.apple.hud-label.metalfx.content_resolution" value:v14];

    v15 = [MEMORY[0x277CCACA8] stringWithFormat:@"%2.2f [%2.2f %2.2f]", *(*(a1[4] + 816) + 16), *(*(a1[4] + 816) + 500), *(*(a1[4] + 816) + 504)];
    [v4 updateLabel:@"com.apple.hud-label.metalfx.timing" value:v15];
  }

  ++*(a1[4] + 808);
}

@end