void C3DCameraSetCategoryBitMask(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 528) = a2;
}

float C3DCameraGetColorFringeStrength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 452);
}

void C3DCameraSetColorFringeStrength(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetColorFringeStrength_block_invoke;
  v13[3] = &__block_descriptor_tmp_3_1;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetColorFringeStrength_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 452) = result;
  return result;
}

float C3DCameraGetColorFringeIntensity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 444);
}

void C3DCameraSetColorFringeIntensity(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 444) = a3;
}

float C3DCameraGetContrast(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 460);
}

void C3DCameraSetContrast(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetContrast_block_invoke;
  v13[3] = &__block_descriptor_tmp_4_1;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetContrast_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 460) = result;
  return result;
}

float C3DCameraGetGrainIntensity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 464);
}

void C3DCameraSetGrainIntensity(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetGrainIntensity_block_invoke;
  v13[3] = &__block_descriptor_tmp_5_1;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetGrainIntensity_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 464) = result;
  return result;
}

float C3DCameraGetGrainScale(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 468);
}

void C3DCameraSetGrainScale(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 468) = a3;
}

uint64_t C3DCameraGetGrainIsColored(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 312) >> 4) & 1;
}

void C3DCameraSetGrainIsColored(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 16;
  }

  else
  {
    v12 = 0;
  }

  *(result + 312) = *(result + 312) & 0xEF | v12;
}

uint64_t C3DCameraGetARGrainTexture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 544);
}

CFTypeRef C3DCameraSetARGrainTexture(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 544);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 544) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 544) = result;
  }

  return result;
}

float C3DCameraGetARGrainSlice(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 552);
}

void C3DCameraSetARGrainSlice(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 552) = a3;
}

float C3DCameraGetWhiteBalanceTemperature(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 484);
}

void C3DCameraSetWhiteBalanceTemperature(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetWhiteBalanceTemperature_block_invoke;
  v13[3] = &__block_descriptor_tmp_6_1;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetWhiteBalanceTemperature_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 484) = result;
  return result;
}

float C3DCameraGetWhiteBalanceTint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 488);
}

void C3DCameraSetWhiteBalanceTint(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetWhiteBalanceTint_block_invoke;
  v13[3] = &__block_descriptor_tmp_7_2;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetWhiteBalanceTint_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 488) = result;
  return result;
}

float C3DCameraGetExposureAdaptationBrighteningSpeedFactor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 400);
}

void C3DCameraSetExposureAdaptationBrighteningSpeedFactor(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 400) = a3;
}

float C3DCameraGetExposureAdaptationDarkeningSpeedFactor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 404);
}

void C3DCameraSetExposureAdaptationDarkeningSpeedFactor(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 404) = a3;
}

float C3DCameraGetExposureAdaptationDuration(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 396);
}

void C3DCameraSetExposureAdaptationDuration(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 396) = a3;
}

float C3DCameraGetExposureAdaptationHistogramRangeHighProbability(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 408);
}

void C3DCameraSetExposureAdaptationHistogramRangeHighProbability(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 408) = a3;
}

float C3DCameraGetExposureAdaptationHistogramRangeLowProbability(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 412);
}

void C3DCameraSetExposureAdaptationHistogramRangeLowProbability(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 412) = a3;
}

uint64_t C3DCameraGetExposureAdaptationMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 313);
}

void C3DCameraSetExposureAdaptationMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 313) = v2;
}

float C3DCameraGetExposureOffset(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 392);
}

void C3DCameraSetExposureOffset(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 392) = a3;
}

float C3DCameraGetMaximumExposure(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 420);
}

void C3DCameraSetMaximumExposure(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 420) = a3;
}

float C3DCameraGetMinimumExposure(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 416);
}

void C3DCameraSetMinimumExposure(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 416) = a3;
}

float C3DCameraGetMotionBlurIntensity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 472);
}

double C3DCameraGetOrthographicScale(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 112);
}

float C3DCameraGetSaturation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 456);
}

void C3DCameraSetSaturation(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetSaturation_block_invoke;
  v13[3] = &__block_descriptor_tmp_8_0;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetSaturation_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 456) = result;
  return result;
}

uint64_t C3DCameraGetUsesOrthographicProjection(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64) & 1;
}

float C3DCameraGetVignettingIntensity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 480);
}

void C3DCameraSetVignettingIntensity(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetVignettingIntensity_block_invoke;
  v13[3] = &__block_descriptor_tmp_9_0;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetVignettingIntensity_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 480) = result;
  return result;
}

float C3DCameraGetVignettingPower(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 476);
}

void C3DCameraSetVignettingPower(void *a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 0x40000000;
  v13[2] = __C3DCameraSetVignettingPower_block_invoke;
  v13[3] = &__block_descriptor_tmp_10;
  v13[4] = a1;
  v14 = a3;
  __invalidatePassIfNeeded(a1, v13);
}

float __C3DCameraSetVignettingPower_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 476) = result;
  return result;
}

uint64_t C3DCameraGetWantsExposureAdaptation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 312) >> 2) & 1;
}

void C3DCameraSetWantsExposureAdaptation(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 4;
  }

  else
  {
    v12 = 0;
  }

  *(result + 312) = *(result + 312) & 0xFB | v12;
}

uint64_t C3DCameraGetWantsHDR(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 312) >> 1) & 1;
}

float C3DCameraGetWhitePoint(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 384);
}

void C3DCameraSetWhitePoint(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 384) = a3;
}

double C3DCameraGetXFov(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 272);
}

double C3DCameraGetYFov(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 280);
}

double C3DCameraGetZFar(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 80);
}

double C3DCameraGetZNear(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 72);
}

float C3DCameraGetFocalLength(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 292);
}

float C3DCameraSetFocalLength(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(a1 + 292) = a3;
  v13 = atan(*(a1 + 300) * 0.5 / a3);
  *&v13 = v13 + v13;
  result = *&v13 / 3.14159265 * 180.0;
  *(a1 + 120) = result;
  *(a1 + 64) &= ~0x10u;
  return result;
}

float C3DCameraGetFov(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 120);
}

float C3DCameraSetFov(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(a1 + 120) = a3;
  *(a1 + 64) &= ~0x10u;
  v13 = a3 / 180.0 * 3.14159265;
  v14 = *(a1 + 300) * 0.5;
  result = v14 / tanf(v13 * 0.5);
  *(a1 + 292) = result;
  return result;
}

float C3DCameraGetAspectRatio(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 128);
}

double C3DCameraSetAspectRatio(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = a3;
  *(a1 + 128) = a3;
  *(a1 + 64) &= ~0x10u;
  return result;
}

float C3DCameraGetFocusDistance(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 288);
}

void C3DCameraSetFocusDistance(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 288) = a3;
}

double C3DCameraGetLensShift(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

void C3DCameraSetLensShift(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 88) = a3;
}

double C3DCameraGetPostProjectionTransformTranslation(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

void C3DCameraSetPostProjectionTransformTranslation(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 96) = a3;
}

double C3DCameraGetPostProjectionTransformScale(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 104);
}

void C3DCameraSetPostProjectionTransformScale(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 104) = a3;
}

float C3DCameraGetAperture(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 300) / *(a1 + 296);
}

float C3DCameraGetFStop(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 296);
}

uint64_t C3DCameraGetBladeCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 304);
}

uint64_t C3DCameraGetDofSampleCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 308);
}

void C3DCameraSetFStop(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 296) = a3;
}

void C3DCameraSetBladeCount(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 304) = v2;
}

void C3DCameraSetDofSampleCount(_DWORD *a1, uint64_t a2)
{
  v2 = a2;
  values = a1;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a1[77] != v2)
  {
    a1[77] = v2;
    v12 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SharedInstance = C3DNotificationCenterGetSharedInstance(v12, v13);
    v16 = C3DGetScene(values, v15);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v16, v12, 1u);
    CFRelease(v12);
  }
}

float C3DCameraGetSensorSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 300);
}

float C3DCameraSetSensorSize(uint64_t a1, uint64_t a2, float a3)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = 0.0001;
  if (a3 >= 0.0001)
  {
    v13 = a3;
  }

  *(a1 + 300) = v13;
  *(a1 + 64) &= ~0x10u;
  v14 = *(a1 + 120) / 180.0 * 3.14159265;
  result = v13 * 0.5 / tanf(v14 * 0.5);
  *(a1 + 292) = result;
  return result;
}

uint64_t C3DCameraGetFovIsHorizontal(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 64) >> 5) & 1;
}

void C3DCameraSetFovHorizontal(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 32;
  }

  else
  {
    v12 = 0;
  }

  *(result + 64) = *(result + 64) & 0xDF | v12;
}

uint64_t C3DCameraGetLetterboxMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 312) >> 3) & 1;
}

void C3DCameraSetLetterboxMode(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 8;
  }

  else
  {
    v12 = 0;
  }

  *(result + 312) = *(result + 312) & 0xF7 | v12;
  if (v2)
  {
    v13 = 64;
  }

  else
  {
    v13 = 0;
  }

  *(result + 64) = *(result + 64) & 0xAF | v13;
}

void C3DCameraGetEffectiveFovForAspectRatio(uint64_t a1, float *a2, float *a3, float a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }
  }

  v16 = *(a1 + 272);
  v17 = *(a1 + 280);
  if (v16 == 0.0)
  {
    v19 = v17;
    if (v17 == 0.0)
    {
      v19 = 60.0;
    }

    *a2 = v19 * a4;
  }

  else if (v17 == 0.0)
  {
    v18 = v16;
    *a2 = v18;
    v19 = v16 / a4;
  }

  else
  {
    v20 = tan(v16 / 180.0 * 3.14159265);
    v21 = v20 / tan(v17 / 180.0 * 3.14159265);
    v22 = a4;
    if (v21 <= a4)
    {
      v16 = v17 * v22;
    }

    else
    {
      v17 = v16 / v22;
    }

    v23 = v16;
    *a2 = v23;
    v19 = v17;
  }

  *a3 = v19;
}

void C3DCameraSetOrthographicScale(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 112) = a3;
  *(result + 64) &= ~8u;
}

void C3DCameraSetUsesOrthographicProjection(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 64) = *(result + 64) & 0xF6 | v2;
}

void C3DCameraSetXFov(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 272) = a3;
  *(result + 64) = *(result + 64) & 0xE7 | 0x10;
}

void C3DCameraSetYFov(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 280) = a3;
  *(result + 64) = *(result + 64) & 0xE7 | 0x10;
}

void C3DCameraSetZFar(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 80) = a3;
  *(result + 64) &= ~8u;
}

void C3DProjectionInfosSetZFar(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 16) = a3;
  *result &= ~8u;
}

void C3DCameraSetZNear(_BOOL8 a1, uint64_t a2, double a3)
{
  v4 = a1;
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DCameraNeedsPostProcess_cold_1(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  if (a3 == 0.0 && (*(v4 + 64) & 1) == 0)
  {
    v12 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      *v13 = 0;
      _os_log_impl(&dword_21BEF7000, v12, OS_LOG_TYPE_INFO, "Info: invalid zNear value (0) set to camera", v13, 2u);
    }
  }

  *(v4 + 72) = a3;
  *(v4 + 64) &= ~8u;
}

void C3DProjectionInfosSetZNear(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 8) = a3;
  *result &= ~8u;
}

void C3DCameraSetTechnique(void *a1, CFTypeRef cf)
{
  values = a1;
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[67];
  if (v12 != cf)
  {
    if (v12)
    {
      CFRelease(v12);
      a1[67] = 0;
    }

    if (cf)
    {
      v13 = CFRetain(cf);
    }

    else
    {
      v13 = 0;
    }

    a1[67] = v13;
    v14 = CFDictionaryCreate(0, kC3DCameraKey, &values, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    SharedInstance = C3DNotificationCenterGetSharedInstance(v14, v15);
    v18 = C3DGetScene(values, v17);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v18, v14, 1u);
    CFRelease(v14);
  }
}

uint64_t C3DCameraGetTechnique(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 536);
}

double C3DProjectionInfosGetXFov(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

double C3DProjectionInfosGetYFov(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 216);
}

double C3DProjectionInfosGetEffectiveFov(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*a1 & 0x10) == 0)
  {
    return *(a1 + 56);
  }

  v12 = 208;
  if ((*a1 & 0x20) == 0)
  {
    v12 = 216;
  }

  return *(a1 + v12);
}

double C3DProjectionInfosGetZNear(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 8);
}

double C3DProjectionInfosGetZFar(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

double C3DProjectionInfosGetOrthographicScale(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

uint64_t C3DProjectionInfosGetOrtho(_BYTE *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *a1 & 1;
}

double *C3DProjectionInfosGetMatrix(double *a1, int8x16_t *a2, char a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DProjectionInfosSetZFar_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *a1;
  if ((*a1 & 8) == 0)
  {
    if ((*a1 & 1) == 0)
    {
      if ((*a1 & 0x10) != 0)
      {
        v48 = a1[26];
        v49 = 1.0;
        if (a2)
        {
          LODWORD(v50) = HIDWORD(*a2);
          if (v50 != 0.0)
          {
            v49 = (COERCE_FLOAT(a2->i64[1]) / v50);
          }
        }

        if (v48 == 0.0 && a1[27] == 0.0)
        {
          v52 = 60.0;
        }

        else
        {
          v52 = a1[27];
        }

        if (v48 != 0.0 && v52 != 0.0)
        {
          v53 = tan(v48 / 180.0 * 3.14159265);
          if (v53 / tan(v52 / 180.0 * 3.14159265) > v49)
          {
            v52 = 0.0;
          }

          else
          {
            v48 = 0.0;
          }
        }

        v54 = a1[1];
        if (a1[2] > v54)
        {
          v55 = a1[2];
        }

        else
        {
          v55 = v54 + 1.0;
        }

        if (v52 == 0.0)
        {
          v56 = v48;
        }

        else
        {
          v56 = v52;
        }

        v57 = __tanpi(v56 / 360.0);
        if (v57 == 0.0)
        {
          v58 = 1.0;
        }

        else
        {
          v58 = 1.0 / v57;
        }

        if (v48 == 0.0)
        {
          v59 = v52;
        }

        else
        {
          v59 = v48;
        }

        v60 = __tanpi(v59 / 360.0);
        if (v60 == 0.0)
        {
          v61 = 1.0;
        }

        else
        {
          v61 = 1.0 / v60;
        }

        v62 = v61;
        LODWORD(v64) = 0;
        *(&v64 + 1) = 0;
        v63 = v58;
        *(&v64 + 1) = v63;
        v65 = v54 - v55;
        if (a3)
        {
          v34.f64[0] = 0.0;
          *&v76 = v55 / (v54 - v55);
          *&v34.f64[1] = __PAIR64__(-1.0, v76);
        }

        else
        {
          *&v66 = (v54 + v55) / (v54 - v55);
          v34.f64[0] = 0.0;
          *&v34.f64[1] = __PAIR64__(-1.0, v66);
          v55 = v55 + v55;
        }

        *&v77 = v54 * v55 / v65;
        *&_Q1 = 0;
        *(&_Q1 + 1) = v77;
        *(a1 + 5) = LODWORD(v62);
        *(a1 + 6) = v64;
        *(a1 + 7) = v34;
        *(a1 + 8) = _Q1;
        if (v48 == 0.0)
        {
          v78 = v62 / v49;
          goto LABEL_90;
        }

        v93 = v49 * v63;
LABEL_93:
        v98 = v93;
        *(a1 + 25) = v98;
        if ((a3 & 8) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_94;
      }

      if (a2 && (v15 = a1[3], v16 = vmvn_s8(vceqz_f32(v15)), (vpmax_u32(v16, v16).u32[0] & 0x80000000) != 0))
      {
        v17 = *(a1 + 14) / 180.0 * 3.14159265 * 0.5;
        v18 = a1[1];
        v19 = v18 * tanf(v17);
        v20 = vdiv_f32(vadd_f32(v15, v15), *&vextq_s8(*a2, *a2, 8uLL));
        v21 = a1[2];
        if (v21 <= v18)
        {
          v21 = v18 + 1.0;
        }

        v22 = v18 + v18;
        __asm { FMOV            V5.2S, #1.0 }

        v27 = vmul_n_f32(vadd_f32(v20, _D5), -v19);
        v28 = vmul_n_f32(vsub_f32(_D5, v20), v19);
        v29 = vcvtq_f64_f32(v27);
        v34 = vcvtq_f64_f32(v28);
        v30 = vsubq_f64(v34, v29);
        v31 = vcvt_f32_f64(vdivq_f64(vdupq_lane_s64(COERCE__INT64(v18 + v18), 0), v30));
        *&_Q1 = 0;
        HIDWORD(_Q1) = 0;
        LODWORD(v33) = 0;
        *(&v33 + 1) = 0;
        DWORD1(v33) = v31.i32[1];
        *&v34.f64[0] = vcvt_f32_f64(vdivq_f64(vaddq_f64(v34, v29), v30));
        v35 = v18 + v21;
        if (a3)
        {
          v35 = v21;
        }

        *&v36 = v35 / (v18 - v21);
        *&v34.f64[1] = __PAIR64__(-1.0, v36);
        if (a3)
        {
          v22 = v18;
        }

        v37 = v22 * v21 / (v18 - v21);
        *(&_Q1 + 2) = v37;
        *(a1 + 5) = v31.u32[0];
        *(a1 + 6) = v33;
        *(a1 + 7) = v34;
        *(a1 + 8) = _Q1;
        v38 = a1[8];
      }

      else
      {
        v68 = a1[1];
        if (a1[2] > v68)
        {
          v69 = a1[2];
        }

        else
        {
          v69 = v68 + 1.0;
        }

        v70 = __tanpi(*(a1 + 14) / 360.0);
        if (v70 == 0.0)
        {
          v72 = 1.0;
        }

        else
        {
          v72 = 1.0 / v70;
        }

        *v71.i32 = v72;
        LODWORD(v73) = 0;
        *(&v73 + 1) = 0;
        DWORD1(v73) = v71.i32[0];
        v74 = v68 - v69;
        if (a3)
        {
          v34.f64[0] = 0.0;
          *&v94 = v69 / (v68 - v69);
          *&v34.f64[1] = __PAIR64__(-1.0, v94);
        }

        else
        {
          *&v75 = (v68 + v69) / (v68 - v69);
          v34.f64[0] = 0.0;
          *&v34.f64[1] = __PAIR64__(-1.0, v75);
          v68 = v68 + v68;
        }

        *&v95 = v68 * v69 / v74;
        *&_Q1 = 0;
        *(&_Q1 + 1) = v95;
        *(a1 + 5) = v71.u32[0];
        *(a1 + 6) = v73;
        *(a1 + 7) = v34;
        *(a1 + 8) = _Q1;
        v38 = a1[8];
        v31 = vdup_lane_s32(v71, 0);
        if (!a2)
        {
          goto LABEL_88;
        }
      }

      LODWORD(v96) = HIDWORD(*a2);
      if (v96 != 0.0)
      {
        v38 = (COERCE_FLOAT(a2->i64[1]) / v96);
      }

LABEL_88:
      if ((v14 & 0x20) == 0)
      {
        v78 = v31.f32[0] / v38;
LABEL_90:
        v97 = v78;
        *(a1 + 20) = v97;
        if ((a3 & 8) == 0)
        {
          goto LABEL_97;
        }

        goto LABEL_94;
      }

      v93 = v38 * v31.f32[1];
      goto LABEL_93;
    }

    v41 = a1[6];
    if (!a2)
    {
      v67 = a1[6];
      goto LABEL_75;
    }

    LODWORD(v42) = HIDWORD(*a2);
    if (v42 == 0.0)
    {
      v43 = 1.0;
      if (C3DWasLinkedBeforeMajorOSYear2017())
      {
        goto LABEL_73;
      }
    }

    else
    {
      v43 = COERCE_FLOAT(a2->i64[1]) / v42;
      if (C3DWasLinkedBeforeMajorOSYear2017())
      {
        if (v43 <= 1.0)
        {
LABEL_73:
          v79 = v43;
          goto LABEL_74;
        }

        v79 = v43;
LABEL_72:
        v67 = v41;
        v41 = v41 * v79;
        goto LABEL_75;
      }
    }

    v79 = v43;
    if ((*a1 & 0x20) != 0)
    {
LABEL_74:
      v67 = v41 / v79;
LABEL_75:
      v80 = a1[1];
      if (a1[2] > v80)
      {
        v81 = a1[2];
      }

      else
      {
        v81 = v80 + 1.0;
      }

      *&v82 = 2.0 / (v41 + v41);
      v34.f64[0] = 0.0;
      HIDWORD(v34.f64[1]) = 0;
      v83 = v82;
      v84 = 2.0 / (v67 + v67);
      LODWORD(v85) = 0;
      *(&v85 + 1) = 0;
      *(&v85 + 1) = v84;
      v86 = v80 - v81;
      v88 = -(v67 - v67) / (v67 + v67);
      if (a3)
      {
        v91 = 1.0 / v86;
        *&v34.f64[1] = v91;
        v90 = v80 / v86;
      }

      else
      {
        v89 = 2.0 / v86;
        *&v34.f64[1] = v89;
        v90 = (v80 + v81) / v86;
      }

      v92 = v90;
      __asm { FMOV            V1.4S, #1.0 }

      *&v87 = -(v41 - v41) / (v41 + v41);
      *&_Q1 = __PAIR64__(LODWORD(v88), v87);
      *(&_Q1 + 2) = v92;
      *(a1 + 5) = v83;
      *(a1 + 6) = v85;
      *(a1 + 7) = v34;
      *(a1 + 8) = _Q1;
      if ((a3 & 8) == 0)
      {
LABEL_97:
        v102.i64[0] = a1[4];
        v103 = a1[5];
        v104 = vmvn_s8(vceqz_f32(*v102.f32));
        if ((vpmax_u32(v104, v104).u32[0] & 0x80000000) != 0)
        {
          goto LABEL_99;
        }

        __asm { FMOV            V3.2S, #1.0 }

        v106 = vmvn_s8(vceq_f32(v103, _D3));
        if ((vpmax_u32(v106, v106).u32[0] & 0x80000000) != 0)
        {
LABEL_99:
          v107 = 0;
          v108.i32[0] = 0;
          v108.i32[3] = 0;
          *(v108.i64 + 4) = HIDWORD(*(a1 + 5));
          v102.i32[2] = 0;
          v102.i32[3] = 1.0;
          v109 = *(a1 + 6);
          v114 = *(a1 + 5);
          v115 = v109;
          v116 = v34;
          v117 = _Q1;
          v118 = 0u;
          v119 = 0u;
          v120 = 0u;
          v121 = 0u;
          do
          {
            *(&v118 + v107) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v103.u32[0], COERCE_FLOAT(*(&v114 + v107))), v108, *(&v114 + v107), 1), xmmword_21C27F600, *(&v114 + v107), 2), v102, *(&v114 + v107), 3);
            v107 += 16;
          }

          while (v107 != 64);
LABEL_101:
          v110 = v119;
          v111 = v120;
          v112 = v121;
          *(a1 + 5) = v118;
          *(a1 + 6) = v110;
          *(a1 + 7) = v111;
          *(a1 + 8) = v112;
          return a1 + 10;
        }

        return a1 + 10;
      }

LABEL_94:
      v99 = 0;
      v100 = *(a1 + 6);
      v114 = *(a1 + 5);
      v115 = v100;
      v116 = v34;
      v117 = _Q1;
      v118 = 0u;
      v119 = 0u;
      v120 = 0u;
      v121 = 0u;
      do
      {
        *(&v118 + v99) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v114 + v99))), xmmword_21C27F8C0, *(&v114 + v99), 1), xmmword_21C27F900, *(&v114 + v99), 2), xmmword_21C27FDD0, *(&v114 + v99), 3);
        v99 += 16;
      }

      while (v99 != 64);
      v101 = v119;
      v34 = v120;
      _Q1 = v121;
      *(a1 + 5) = v118;
      *(a1 + 6) = v101;
      *(a1 + 7) = v34;
      *(a1 + 8) = _Q1;
      goto LABEL_97;
    }

    goto LABEL_72;
  }

  if ((a3 & 8) != 0)
  {
    v44 = 0;
    v45 = *(a1 + 10);
    v46 = *(a1 + 22);
    v47 = *(a1 + 12);
    v114 = *(a1 + 9);
    v115 = v45;
    v116 = v46;
    v117 = v47;
    v118 = 0u;
    v119 = 0u;
    v120 = 0u;
    v121 = 0u;
    do
    {
      *(&v118 + v44) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_21C27F910, COERCE_FLOAT(*(&v114 + v44))), xmmword_21C27F8C0, *(&v114 + v44), 1), xmmword_21C27F900, *(&v114 + v44), 2), xmmword_21C27FDD0, *(&v114 + v44), 3);
      v44 += 16;
    }

    while (v44 != 64);
    goto LABEL_101;
  }

  v39 = *(a1 + 10);
  *(a1 + 5) = *(a1 + 9);
  *(a1 + 6) = v39;
  v40 = *(a1 + 12);
  *(a1 + 7) = *(a1 + 11);
  *(a1 + 8) = v40;
  return a1 + 10;
}

uint64_t C3DProjectionInfosUnproject(double *a1, __int128 *a2, int a3, char a4, simd_float4 *a5, int8x16_t a6)
{
  LODWORD(v8) = a3;
  v58 = a6;
  if ((a4 & 8) != 0 || (v11 = *a1, (*a1 & 0x19) != 0))
  {
    v59 = *C3DProjectionInfosGetMatrix(a1, &v58, a4);
    v60 = __invert_f4(v59);
    v51 = v60.columns[1];
    v52 = v60.columns[0];
    v49 = v60.columns[3];
    v50 = v60.columns[2];
    if (*&v58.i32[2] == 0.0 || *&v58.i32[3] == 0.0)
    {
      v44 = scn_default_log(v33, v34);
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        C3DProjectionInfosUnproject_cold_1(v44);
      }

      return 0;
    }

    v32 = 1;
    if (!v8)
    {
      return v32;
    }

    v36 = a2 + 2;
    v8 = v8;
    LODWORD(v35) = 1.0;
    while (1)
    {
      v37 = *(v36 - 2);
      v38 = v58;
      if ((a4 & 8) != 0)
      {
        v46 = *(v36 - 2);
        v47 = v58;
        v54 = v35;
        v33 = C3DWasLinkedBeforeMajorOSYear2021(v33, v34);
        v39 = *v36;
        if ((v33 & 1) == 0)
        {
          v40 = 1.0 - v39;
          v35 = v54;
          *&v37 = v46;
          v38 = v47;
          goto LABEL_22;
        }

        v35 = v54;
        *&v37 = v46;
        v38 = v47;
      }

      else
      {
        LODWORD(v39) = *v36;
      }

      v40 = (v39 * 2.0) + -1.0;
LABEL_22:
      v41 = vaddq_f32(v49, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v51, (((*(&v37 + 1) - *&v38.i32[1]) + (*(&v37 + 1) - *&v38.i32[1])) / *&v38.i32[3]) + -1.0), v52, (((*&v37 - *v38.i32) + (*&v37 - *v38.i32)) / *&v38.i32[2]) + -1.0), v50, v40));
      if (v41.f32[3] == 0.0)
      {
        if ((C3DProjectionInfosUnproject_done & 1) == 0)
        {
          v48 = v41;
          v55 = v35;
          C3DProjectionInfosUnproject_done = 1;
          v42 = scn_default_log(v33, v34);
          v33 = os_log_type_enabled(v42, OS_LOG_TYPE_ERROR);
          if (v33)
          {
            C3DProjectionInfosUnproject_cold_2(&buf, v57, v42);
          }

          v35 = v55;
          v41 = v48;
        }
      }

      else
      {
        *&v35 = 1.0 / v41.f32[3];
      }

      v43 = vmulq_n_f32(v41, *&v35);
      v43.i32[2] = vmuls_lane_f32(*&v35, v41, 2);
      *a5++ = v43;
      v36 += 4;
      if (!--v8)
      {
        return 1;
      }
    }
  }

  v13 = *(a1 + 14) / 180.0 * 3.14159265;
  v53 = a6;
  v14 = tanf(v13 * 0.5);
  if ((v11 & 0x20) != 0)
  {
    v15.f32[0] = v14;
  }

  else
  {
    v15.f32[0] = (*&v53.i32[2] / *&v53.i32[3]) * v14;
  }

  if ((v11 & 0x20) != 0)
  {
    v14 = v14 / (*&v53.i32[2] / *&v53.i32[3]);
  }

  if (v8)
  {
    v15.f32[1] = v14;
    v16 = a1[1];
    v17 = a1[2];
    v18 = v16 * v17;
    _S3 = v16 - v17;
    v20 = v8;
    v21 = vextq_s8(v53, v53, 8uLL).u64[0];
    __asm { FMOV            V5.2S, #-1.0 }

    do
    {
      v27 = *a2++;
      _Q6.i64[1] = *(&v27 + 1);
      __asm { FMLA            S7, S3, V6.S[2] }

      v30 = v18 / _S7;
      v31 = vsub_f32(*&v27, *v53.i8);
      *_Q6.f32 = vmul_n_f32(vmul_f32(v15, vadd_f32(vdiv_f32(vadd_f32(v31, v31), v21), _D5)), v30);
      _Q6.f32[2] = -v30;
      *a5++ = _Q6;
      --v20;
    }

    while (v20);
  }

  return 1;
}

uint64_t C3DCameraGetProjectionInfosPtr(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DCameraNeedsPostProcess_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return a1 + 64;
}

void _C3DCameraCFFinalize(void *a1, uint64_t a2)
{
  C3DEntityCFFinalize(a1, a2);
  v3 = a1[65];
  if (v3)
  {
    CFRelease(v3);
    a1[65] = 0;
  }

  v4 = a1[67];
  if (v4)
  {
    CFRelease(v4);
    a1[67] = 0;
  }

  v5 = a1[68];
  if (v5)
  {
    CFRelease(v5);
    a1[68] = 0;
  }
}

CFStringRef _C3DCameraCFCopyDebugDescription(_BYTE *cf)
{
  v2 = cf[64];
  if ((v2 & 8) != 0)
  {
    v17 = *(cf + 15);
    v18 = *(cf + 16);
    v15 = *(cf + 13);
    v16 = *(cf + 14);
    v12 = CFGetAllocator(cf);
    Name = C3DEntityGetName(cf, v13);
    return CFStringCreateWithFormat(v12, 0, @"<C3DCamera:%p %@ custom, [%.3f %.3f %.3f %.3f ; %.3f %.3f %.3f %.3f ; %.3f %.3f %.3f %.3f ; %.3f %.3f %.3f %.3f]>", cf, Name, *&v15, *(&v15 + 1), *(&v15 + 2), *(&v15 + 3), *&v16, *(&v16 + 1), *(&v16 + 2), *(&v16 + 3), *&v17, *(&v17 + 1), *(&v17 + 2), *(&v17 + 3), *&v18, *(&v18 + 1), *(&v18 + 2), *(&v18 + 3));
  }

  else
  {
    v3 = *(cf + 9);
    v4 = *(cf + 10);
    v5 = *(cf + 14);
    v6 = *(cf + 30);
    v7 = CFGetAllocator(cf);
    v9 = C3DEntityGetName(cf, v8);
    if (v2)
    {
      return CFStringCreateWithFormat(v7, 0, @"<C3DCamera:%p %@ ortho, near:%.3f far:%.3f scale: %.3f>", cf, v9, v3, v4, v5);
    }

    else
    {
      v10 = "horizontal";
      if ((v2 & 0x20) == 0)
      {
        v10 = "vertical";
      }

      return CFStringCreateWithFormat(v7, 0, @"<C3DCamera:%p %@ persp, near:%.3f far:%.3f %s-fov:%.3f>", cf, v9, v3, v4, v10, v6);
    }
  }
}

float _C3DCameraSetValue(uint64_t a1, void *__dst, float *__src, size_t __n)
{
  if ((a1 + 448) == __dst)
  {
    v7 = *__src;

    C3DCameraSetDepthOfFieldIntensity(a1, __dst, v7);
  }

  else if ((a1 + 472) == __dst)
  {
    v8 = *__src;

    C3DCameraSetMotionBlurIntensity(a1, __dst, v8);
  }

  else if ((a1 + 120) == __dst)
  {
    v9 = *__src;

    return C3DCameraSetFov(a1, __dst, v9);
  }

  else if ((a1 + 272) == __dst)
  {
    v10 = *__src;

    C3DCameraSetXFov(a1, __dst, v10);
  }

  else if ((a1 + 280) == __dst)
  {
    v11 = *__src;

    C3DCameraSetYFov(a1, __dst, v11);
  }

  else
  {
    if (a1 + 448 > __dst || a1 + 480 < __dst)
    {
      memcpy(__dst, __src, __n);
    }

    else
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 0x40000000;
      v14[2] = ___C3DCameraSetValue_block_invoke;
      v14[3] = &__block_descriptor_tmp_169;
      v14[4] = __dst;
      v14[5] = __src;
      v14[6] = __n;
      __invalidatePassIfNeeded(a1, v14);
    }

    if ((a1 + 300) == __dst || (a1 + 292) == __dst)
    {
      v12 = *(a1 + 64) & 0xEF;
      v13 = atan(*(a1 + 300) * 0.5 / *(a1 + 292));
      *&v13 = v13 + v13;
      result = *&v13 / 3.14159265 * 180.0;
      *(a1 + 120) = result;
      *(a1 + 64) = v12;
    }
  }

  return result;
}

uint64_t _C3DCameraInitWithPropertyList(uint64_t a1, const __CFDictionary *a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DEntityInitWithPropertyList(a1, a2);
  v16 = v14;
  if (v14)
  {
    *(a1 + 272) = 0;
    *(a1 + 280) = 0;
    Value = CFDictionaryGetValue(a2, @"ortho");
    if (Value)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(Value, kCFNumberIntType, v62);
      v18 = *(a1 + 64) & 0xFE;
      if (LODWORD(v62[0]))
      {
        ++v18;
      }

      *(a1 + 64) = v18;
    }

    v19 = CFDictionaryGetValue(a2, @"letterbox");
    if (v19)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v19, kCFNumberIntType, v62);
      *(a1 + 64) = *(a1 + 64) & 0xBF | ((LODWORD(v62[0]) != 0) << 6);
    }

    v20 = CFDictionaryGetValue(a2, @"fovHorizontal");
    if (v20)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v20, kCFNumberIntType, v62);
      *(a1 + 64) = *(a1 + 64) & 0xDF | (32 * (LODWORD(v62[0]) != 0));
    }

    v21 = CFDictionaryGetValue(a2, @"customProj");
    if (v21)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v21, kCFNumberIntType, v62);
      *(a1 + 64) = *(a1 + 64) & 0xF7 | (8 * (LODWORD(v62[0]) != 0));
    }

    v22 = CFDictionaryGetValue(a2, @"autoZRange");
    if (v22)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v22, kCFNumberIntType, v62);
      *(a1 + 64) = *(a1 + 64) & 0xFD | (2 * (LODWORD(v62[0]) != 0));
    }

    v23 = CFDictionaryGetValue(a2, @"xfov");
    if (v23)
    {
      v62[0] = 0;
      CFNumberGetValue(v23, kCFNumberDoubleType, v62);
      *(a1 + 272) = v62[0];
    }

    v24 = CFDictionaryGetValue(a2, @"yfov");
    if (v24)
    {
      v62[0] = 0;
      CFNumberGetValue(v24, kCFNumberDoubleType, v62);
      *(a1 + 280) = v62[0];
    }

    v25 = CFDictionaryGetValue(a2, @"xMag");
    if (v25)
    {
      v62[0] = 0;
      CFNumberGetValue(v25, kCFNumberDoubleType, v62);
      *(a1 + 112) = v62[0];
    }

    v26 = CFDictionaryGetValue(a2, @"znear");
    if (v26)
    {
      v62[0] = 0;
      CFNumberGetValue(v26, kCFNumberDoubleType, v62);
      *(a1 + 72) = v62[0];
    }

    v27 = CFDictionaryGetValue(a2, @"zfar");
    if (v27)
    {
      v62[0] = 0;
      CFNumberGetValue(v27, kCFNumberDoubleType, v62);
      *(a1 + 80) = v62[0];
    }

    v28 = CFDictionaryGetValue(a2, @"aspectRatio");
    if (v28)
    {
      v62[0] = 0;
      CFNumberGetValue(v28, kCFNumberDoubleType, v62);
      *(a1 + 128) = v62[0];
    }

    v29 = CFDictionaryGetValue(a2, @"focusDistance");
    if (v29)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v29, kCFNumberFloatType, v62);
      *(a1 + 288) = v62[0];
    }

    v30 = CFDictionaryGetValue(a2, @"fstop");
    if (v30)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v30, kCFNumberFloatType, v62);
      *(a1 + 296) = v62[0];
    }

    v31 = CFDictionaryGetValue(a2, @"bladeCount");
    if (v31)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v31, kCFNumberIntType, v62);
      *(a1 + 304) = v62[0];
    }

    v32 = CFDictionaryGetValue(a2, @"dofSampleCount");
    if (v32)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v32, kCFNumberIntType, v62);
      *(a1 + 308) = v62[0];
    }

    v33 = CFDictionaryGetValue(a2, @"sensorSize");
    if (v33)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v33, kCFNumberFloatType, v62);
      *(a1 + 300) = v62[0];
    }

    v34 = CFDictionaryGetValue(a2, @"dofIntensity");
    if (v34)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v34, kCFNumberFloatType, v62);
      *(a1 + 448) = v62[0];
    }

    v35 = CFDictionaryGetValue(a2, @"category");
    if (v35)
    {
      v62[0] = 0;
      CFNumberGetValue(v35, kCFNumberNSIntegerType, v62);
      *(a1 + 528) = v62[0];
    }

    v36 = CFDictionaryGetValue(a2, @"whitePoint");
    if (v36)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v36, kCFNumberFloatType, v62);
      *(a1 + 384) = v62[0];
    }

    v37 = CFDictionaryGetValue(a2, @"averageGray");
    if (v37)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v37, kCFNumberFloatType, v62);
      *(a1 + 388) = v62[0];
    }

    v38 = CFDictionaryGetValue(a2, @"exposureAdaptationDuration");
    if (v38)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v38, kCFNumberFloatType, v62);
      *(a1 + 396) = v62[0];
    }

    v39 = CFDictionaryGetValue(a2, @"exposureAdaptationBrighteningSpeedFactor");
    if (v39)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v39, kCFNumberFloatType, v62);
      *(a1 + 400) = v62[0];
    }

    v40 = CFDictionaryGetValue(a2, @"exposureAdaptationDarkeningSpeedFactor");
    if (v40)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v40, kCFNumberFloatType, v62);
      *(a1 + 404) = v62[0];
    }

    v41 = CFDictionaryGetValue(a2, @"minimumExposure");
    if (v41)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v41, kCFNumberFloatType, v62);
      *(a1 + 416) = v62[0];
    }

    v42 = CFDictionaryGetValue(a2, @"maximumExposure");
    if (v42)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v42, kCFNumberFloatType, v62);
      *(a1 + 420) = v62[0];
    }

    v43 = CFDictionaryGetValue(a2, @"bloomIntensity");
    if (v43)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v43, kCFNumberFloatType, v62);
      *(a1 + 424) = v62[0];
    }

    v44 = CFDictionaryGetValue(a2, @"bloomThreshold");
    if (v44)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v44, kCFNumberFloatType, v62);
      *(a1 + 428) = v62[0];
    }

    v45 = CFDictionaryGetValue(a2, @"bloomIteration");
    if (v45)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v45, kCFNumberIntType, v62);
      *(a1 + 432) = v62[0];
    }

    v46 = CFDictionaryGetValue(a2, @"bloomIterationSpread");
    if (v46)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v46, kCFNumberFloatType, v62);
      *(a1 + 432) = *v62;
    }

    v47 = CFDictionaryGetValue(a2, @"bloomBlurRadius");
    if (v47)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v47, kCFNumberFloatType, v62);
      *(a1 + 440) = v62[0];
    }

    v48 = CFDictionaryGetValue(a2, @"motionBlurIntensity");
    if (v48)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v48, kCFNumberFloatType, v62);
      *(a1 + 472) = v62[0];
    }

    v49 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionIntensity");
    if (v49)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v49, kCFNumberFloatType, v62);
      *(a1 + 492) = v62[0];
    }

    v50 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionRadius");
    if (v50)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v50, kCFNumberFloatType, v62);
      *(a1 + 496) = v62[0];
    }

    v51 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionBias");
    if (v51)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v51, kCFNumberFloatType, v62);
      *(a1 + 500) = v62[0];
    }

    v52 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionDepthThreshold");
    if (v52)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v52, kCFNumberFloatType, v62);
      *(a1 + 504) = v62[0];
    }

    v53 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionNormalThreshold");
    if (v53)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v53, kCFNumberFloatType, v62);
      *(a1 + 508) = v62[0];
    }

    v54 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionSampleCount");
    if (v54)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v54, kCFNumberIntType, v62);
      *(a1 + 512) = v62[0];
    }

    v55 = CFDictionaryGetValue(a2, @"screenSpaceAmbientOcclusionDownSample");
    if (v55)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v55, kCFNumberIntType, v62);
      *(a1 + 516) = v62[0];
    }

    *(a1 + 64) |= 0x10u;
    v56 = CFDictionaryGetValue(a2, @"fov");
    if (v56)
    {
      LODWORD(v62[0]) = 0;
      CFNumberGetValue(v56, kCFNumberFloatType, v62);
      C3DCameraSetFov(a1, v58, *v62);
    }

    if (*(a1 + 72) == 0.0 && (*(a1 + 64) & 1) == 0)
    {
      v59 = scn_default_log(v56, v57);
      if (os_log_type_enabled(v59, OS_LOG_TYPE_INFO))
      {
        LOWORD(v62[0]) = 0;
        _os_log_impl(&dword_21BEF7000, v59, OS_LOG_TYPE_INFO, "Info: loaded camera has an invalid zNear value (0)", v62, 2u);
      }
    }
  }

  else
  {
    v60 = scn_default_log(v14, v15);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      _C3DCameraInitWithPropertyList_cold_2(v60);
    }
  }

  return v16;
}

__CFDictionary *_C3DCameraCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v7 = scn_default_log(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (v15)
  {
    LODWORD(valuePtr) = *(a1 + 64) & 1;
    v16 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"ortho", v16);
    CFRelease(v16);
    LODWORD(valuePtr) = (*(a1 + 312) >> 3) & 1;
    v17 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"letterbox", v17);
    CFRelease(v17);
    LODWORD(valuePtr) = (*(a1 + 64) >> 5) & 1;
    v18 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"fovHorizontal", v18);
    CFRelease(v18);
    LODWORD(valuePtr) = (*(a1 + 64) >> 1) & 1;
    v19 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"autoZRange", v19);
    CFRelease(v19);
    LODWORD(valuePtr) = (*(a1 + 64) >> 3) & 1;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"customProj", v20);
    CFRelease(v20);
    if ((*(a1 + 64) & 0x10) != 0)
    {
      if (*(a1 + 272) != 0.0)
      {
        valuePtr = *(a1 + 272);
        v24 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        CFDictionaryAddValue(v15, @"xfov", v24);
        CFRelease(v24);
      }

      if (*(a1 + 280) != 0.0)
      {
        valuePtr = *(a1 + 280);
        v25 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
        CFDictionaryAddValue(v15, @"yfov", v25);
        CFRelease(v25);
      }
    }

    else
    {
      LODWORD(valuePtr) = *(a1 + 120);
      v21 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
      CFDictionaryAddValue(v15, @"fov", v21);
      CFRelease(v21);
      LODWORD(valuePtr) = (*(a1 + 64) >> 5) & 1;
      v22 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
      CFDictionaryAddValue(v15, @"fovHorizontal", v22);
      CFRelease(v22);
      Value = CFDictionaryGetValue(v15, @"sensorSize");
      if (Value)
      {
        LODWORD(valuePtr) = 0;
        CFNumberGetValue(Value, kCFNumberFloatType, &valuePtr);
        *(a1 + 300) = valuePtr;
      }
    }

    valuePtr = *(a1 + 112);
    v26 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v15, @"xMag", v26);
    CFRelease(v26);
    valuePtr = *(a1 + 72);
    v27 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v15, @"znear", v27);
    CFRelease(v27);
    valuePtr = *(a1 + 80);
    v28 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v15, @"zfar", v28);
    CFRelease(v28);
    valuePtr = *(a1 + 128);
    v29 = CFNumberCreate(0, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(v15, @"aspectRatio", v29);
    CFRelease(v29);
    LODWORD(valuePtr) = *(a1 + 296);
    v30 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"fstop", v30);
    CFRelease(v30);
    LODWORD(valuePtr) = *(a1 + 304);
    v31 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"bladeCount", v31);
    CFRelease(v31);
    LODWORD(valuePtr) = *(a1 + 308);
    v32 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"dofSampleCount", v32);
    CFRelease(v32);
    LODWORD(valuePtr) = *(a1 + 288);
    v33 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"focusDistance", v33);
    CFRelease(v33);
    LODWORD(valuePtr) = *(a1 + 448);
    v34 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"dofIntensity", v34);
    CFRelease(v34);
    LODWORD(valuePtr) = *(a1 + 492);
    v35 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionIntensity", v35);
    CFRelease(v35);
    LODWORD(valuePtr) = *(a1 + 496);
    v36 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionRadius", v36);
    CFRelease(v36);
    LODWORD(valuePtr) = *(a1 + 500);
    v37 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionBias", v37);
    CFRelease(v37);
    LODWORD(valuePtr) = *(a1 + 504);
    v38 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionDepthThreshold", v38);
    CFRelease(v38);
    LODWORD(valuePtr) = *(a1 + 508);
    v39 = CFNumberCreate(0, kCFNumberFloatType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionNormalThreshold", v39);
    CFRelease(v39);
    LODWORD(valuePtr) = *(a1 + 512);
    v40 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionSampleCount", v40);
    CFRelease(v40);
    LODWORD(valuePtr) = *(a1 + 516);
    v41 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    CFDictionaryAddValue(v15, @"screenSpaceAmbientOcclusionDownSample", v41);
    CFRelease(v41);
    valuePtr = *(a1 + 528);
    v42 = CFNumberCreate(0, kCFNumberNSIntegerType, &valuePtr);
    CFDictionaryAddValue(v15, @"category", v42);
    CFRelease(v42);
  }

  return v15;
}

__CFArray *_C3DCameraCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = a1 + 128;
  v6 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v8 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v5, @"name", @"aspectRatio");
  CFDictionarySetValue(v5, @"type", v6);
  CFDictionarySetValue(v5, @"address", v8);
  CFDictionarySetValue(v5, @"semantic", v7);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v7);
  CFRelease(v5);
  CFRelease(v8);
  CFRelease(v6);
  LOBYTE(v5) = *(a1 + 64);
  v9 = CFDictionaryCreateMutable(0, 4, v3, v4);
  if ((v5 & 0x10) != 0)
  {
    v180 = 0;
    valuePtr = 6;
    v179 = a1 + 272;
    v36 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v37 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v38 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v9, @"name", @"xfov");
    CFDictionarySetValue(v9, @"type", v36);
    CFDictionarySetValue(v9, @"address", v38);
    CFDictionarySetValue(v9, @"semantic", v37);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v37);
    CFRelease(v9);
    CFRelease(v38);
    CFRelease(v36);
    v39 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 6;
    v30 = a1;
    v179 = a1 + 280;
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v40 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v41 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v39, @"name", @"yfov");
    CFDictionarySetValue(v39, @"type", v31);
    CFDictionarySetValue(v39, @"address", v41);
    CFDictionarySetValue(v39, @"semantic", v40);
    v34 = Mutable;
    CFArrayAppendValue(Mutable, v39);
    CFRelease(v40);
    CFRelease(v39);
    v35 = v41;
  }

  else
  {
    v180 = 0;
    valuePtr = 1;
    v179 = a1 + 120;
    v10 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v11 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v12 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v9, @"name", @"fieldOfView");
    CFDictionarySetValue(v9, @"type", v10);
    CFDictionarySetValue(v9, @"address", v12);
    CFDictionarySetValue(v9, @"semantic", v11);
    CFArrayAppendValue(Mutable, v9);
    CFRelease(v11);
    CFRelease(v9);
    CFRelease(v12);
    CFRelease(v10);
    v13 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 1;
    v179 = a1 + 300;
    v14 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v15 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v16 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v13, @"name", @"sensorHeight");
    CFDictionarySetValue(v13, @"type", v14);
    CFDictionarySetValue(v13, @"address", v16);
    CFDictionarySetValue(v13, @"semantic", v15);
    CFArrayAppendValue(Mutable, v13);
    CFRelease(v15);
    CFRelease(v13);
    CFRelease(v16);
    CFRelease(v14);
    v17 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 1;
    v179 = a1 + 292;
    v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v19 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v20 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v17, @"name", @"focalLength");
    CFDictionarySetValue(v17, @"type", v18);
    CFDictionarySetValue(v17, @"address", v20);
    CFDictionarySetValue(v17, @"semantic", v19);
    CFArrayAppendValue(Mutable, v17);
    CFRelease(v19);
    CFRelease(v17);
    CFRelease(v20);
    CFRelease(v18);
    v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 8;
    v179 = a1 + 88;
    v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v23 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v24 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v21, @"name", @"lensShift");
    CFDictionarySetValue(v21, @"type", v22);
    CFDictionarySetValue(v21, @"address", v24);
    CFDictionarySetValue(v21, @"semantic", v23);
    CFArrayAppendValue(Mutable, v21);
    CFRelease(v23);
    CFRelease(v21);
    CFRelease(v24);
    CFRelease(v22);
    v25 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 8;
    v179 = a1 + 96;
    v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v27 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v28 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v25, @"name", @"postProjectionTransformTranslation");
    CFDictionarySetValue(v25, @"type", v26);
    CFDictionarySetValue(v25, @"address", v28);
    CFDictionarySetValue(v25, @"semantic", v27);
    CFArrayAppendValue(Mutable, v25);
    CFRelease(v27);
    CFRelease(v25);
    CFRelease(v28);
    CFRelease(v26);
    v29 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    v180 = 0;
    valuePtr = 8;
    v30 = a1;
    v179 = a1 + 104;
    v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v32 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
    v33 = CFNumberCreate(0, kCFNumberLongType, &v179);
    CFDictionarySetValue(v29, @"name", @"postProjectionTransformScale");
    CFDictionarySetValue(v29, @"type", v31);
    CFDictionarySetValue(v29, @"address", v33);
    CFDictionarySetValue(v29, @"semantic", v32);
    v34 = Mutable;
    CFArrayAppendValue(Mutable, v29);
    CFRelease(v32);
    CFRelease(v29);
    v35 = v33;
  }

  CFRelease(v35);
  CFRelease(v31);
  v42 = MEMORY[0x277CBF138];
  v43 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = v30 + 112;
  v44 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v45 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v46 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v43, @"name", @"orthoScale");
  CFDictionarySetValue(v43, @"type", v44);
  CFDictionarySetValue(v43, @"address", v46);
  CFDictionarySetValue(v43, @"semantic", v45);
  CFArrayAppendValue(v34, v43);
  CFRelease(v45);
  CFRelease(v43);
  CFRelease(v46);
  CFRelease(v44);
  v47 = CFDictionaryCreateMutable(0, 4, v42, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = v30 + 80;
  v48 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v49 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v50 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v47, @"name", @"zfar");
  CFDictionarySetValue(v47, @"type", v48);
  CFDictionarySetValue(v47, @"address", v50);
  CFDictionarySetValue(v47, @"semantic", v49);
  CFArrayAppendValue(v34, v47);
  CFRelease(v49);
  CFRelease(v47);
  CFRelease(v50);
  CFRelease(v48);
  v51 = MEMORY[0x277CBF138];
  v52 = MEMORY[0x277CBF150];
  v53 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 6;
  v179 = v30 + 72;
  v54 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v55 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v56 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v53, @"name", @"znear");
  CFDictionarySetValue(v53, @"type", v54);
  CFDictionarySetValue(v53, @"address", v56);
  CFDictionarySetValue(v53, @"semantic", v55);
  CFArrayAppendValue(v34, v53);
  CFRelease(v55);
  CFRelease(v53);
  CFRelease(v56);
  CFRelease(v54);
  v57 = CFDictionaryCreateMutable(0, 4, v51, v52);
  v180 = 0;
  valuePtr = 11;
  v179 = v30 + 144;
  v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v59 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v60 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v57, @"name", @"matrix");
  CFDictionarySetValue(v57, @"type", v58);
  CFDictionarySetValue(v57, @"address", v60);
  CFDictionarySetValue(v57, @"semantic", v59);
  CFArrayAppendValue(v34, v57);
  CFRelease(v59);
  CFRelease(v57);
  CFRelease(v60);
  CFRelease(v58);
  v61 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v52);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 288;
  v62 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v63 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v64 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v61, @"name", @"focusDistance");
  CFDictionarySetValue(v61, @"type", v62);
  CFDictionarySetValue(v61, @"address", v64);
  CFDictionarySetValue(v61, @"semantic", v63);
  CFArrayAppendValue(v34, v61);
  CFRelease(v63);
  CFRelease(v61);
  CFRelease(v64);
  CFRelease(v62);
  v65 = MEMORY[0x277CBF138];
  v66 = MEMORY[0x277CBF150];
  v67 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 296;
  v68 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v69 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v70 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v67, @"name", @"fStop");
  CFDictionarySetValue(v67, @"type", v68);
  CFDictionarySetValue(v67, @"address", v70);
  CFDictionarySetValue(v67, @"semantic", v69);
  CFArrayAppendValue(v34, v67);
  CFRelease(v69);
  CFRelease(v67);
  CFRelease(v70);
  CFRelease(v68);
  v71 = CFDictionaryCreateMutable(0, 4, v65, v66);
  v180 = 0;
  valuePtr = 2;
  v179 = v30 + 304;
  v72 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v73 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v74 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v71, @"name", @"bladeCount");
  CFDictionarySetValue(v71, @"type", v72);
  CFDictionarySetValue(v71, @"address", v74);
  CFDictionarySetValue(v71, @"semantic", v73);
  CFArrayAppendValue(v34, v71);
  CFRelease(v73);
  CFRelease(v71);
  CFRelease(v74);
  CFRelease(v72);
  v75 = MEMORY[0x277CBF138];
  v76 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v66);
  v180 = 0;
  valuePtr = 2;
  v179 = v30 + 308;
  v77 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v78 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v79 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v76, @"name", @"dofSampleCount");
  CFDictionarySetValue(v76, @"type", v77);
  CFDictionarySetValue(v76, @"address", v79);
  CFDictionarySetValue(v76, @"semantic", v78);
  CFArrayAppendValue(v34, v76);
  CFRelease(v78);
  CFRelease(v76);
  CFRelease(v79);
  CFRelease(v77);
  v80 = CFDictionaryCreateMutable(0, 4, v75, v66);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 448;
  v81 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v82 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v83 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v80, @"name", @"dofIntensity");
  CFDictionarySetValue(v80, @"type", v81);
  CFDictionarySetValue(v80, @"address", v83);
  CFDictionarySetValue(v80, @"semantic", v82);
  CFArrayAppendValue(v34, v80);
  CFRelease(v82);
  CFRelease(v80);
  CFRelease(v83);
  CFRelease(v81);
  v84 = MEMORY[0x277CBF138];
  v85 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 2;
  v179 = v30 + 528;
  v86 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v87 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v88 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v85, @"name", @"categoryBitMask");
  CFDictionarySetValue(v85, @"type", v86);
  CFDictionarySetValue(v85, @"address", v88);
  CFDictionarySetValue(v85, @"semantic", v87);
  CFArrayAppendValue(v34, v85);
  CFRelease(v87);
  CFRelease(v85);
  CFRelease(v88);
  CFRelease(v86);
  v89 = MEMORY[0x277CBF150];
  v90 = CFDictionaryCreateMutable(0, 4, v84, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 384;
  v91 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v92 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v93 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v90, @"name", @"whitePoint");
  CFDictionarySetValue(v90, @"type", v91);
  CFDictionarySetValue(v90, @"address", v93);
  CFDictionarySetValue(v90, @"semantic", v92);
  v94 = v34;
  CFArrayAppendValue(v34, v90);
  CFRelease(v92);
  CFRelease(v90);
  CFRelease(v93);
  CFRelease(v91);
  v95 = MEMORY[0x277CBF138];
  v96 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v89);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 388;
  v97 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v98 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v99 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v96, @"name", @"averageGray");
  CFDictionarySetValue(v96, @"type", v97);
  CFDictionarySetValue(v96, @"address", v99);
  CFDictionarySetValue(v96, @"semantic", v98);
  CFArrayAppendValue(v94, v96);
  CFRelease(v98);
  CFRelease(v96);
  CFRelease(v99);
  CFRelease(v97);
  v100 = CFDictionaryCreateMutable(0, 4, v95, v89);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 396;
  v101 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v102 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v103 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v100, @"name", @"exposureAdaptationDuration");
  CFDictionarySetValue(v100, @"type", v101);
  CFDictionarySetValue(v100, @"address", v103);
  CFDictionarySetValue(v100, @"semantic", v102);
  v104 = v94;
  CFArrayAppendValue(v94, v100);
  CFRelease(v102);
  CFRelease(v100);
  CFRelease(v103);
  CFRelease(v101);
  v105 = MEMORY[0x277CBF138];
  v106 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 404;
  v107 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v108 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v109 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v106, @"name", @"exposureAdaptationDarkeningSpeedFactor");
  CFDictionarySetValue(v106, @"type", v107);
  CFDictionarySetValue(v106, @"address", v109);
  CFDictionarySetValue(v106, @"semantic", v108);
  CFArrayAppendValue(v104, v106);
  CFRelease(v108);
  CFRelease(v106);
  CFRelease(v109);
  CFRelease(v107);
  v110 = CFDictionaryCreateMutable(0, 4, v105, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 400;
  v111 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v112 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v113 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v110, @"name", @"exposureAdaptationBrighteningSpeedFactor");
  CFDictionarySetValue(v110, @"type", v111);
  CFDictionarySetValue(v110, @"address", v113);
  CFDictionarySetValue(v110, @"semantic", v112);
  CFArrayAppendValue(v104, v110);
  CFRelease(v112);
  CFRelease(v110);
  CFRelease(v113);
  CFRelease(v111);
  v114 = CFDictionaryCreateMutable(0, 4, v105, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 416;
  v115 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v116 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v117 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v114, @"name", @"minimumExposure");
  CFDictionarySetValue(v114, @"type", v115);
  CFDictionarySetValue(v114, @"address", v117);
  CFDictionarySetValue(v114, @"semantic", v116);
  CFArrayAppendValue(v104, v114);
  CFRelease(v116);
  CFRelease(v114);
  CFRelease(v117);
  CFRelease(v115);
  v118 = MEMORY[0x277CBF138];
  v119 = MEMORY[0x277CBF150];
  v120 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 420;
  v121 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v122 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v123 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v120, @"name", @"maximumExposure");
  CFDictionarySetValue(v120, @"type", v121);
  CFDictionarySetValue(v120, @"address", v123);
  CFDictionarySetValue(v120, @"semantic", v122);
  CFArrayAppendValue(v104, v120);
  CFRelease(v122);
  CFRelease(v120);
  CFRelease(v123);
  CFRelease(v121);
  v124 = CFDictionaryCreateMutable(0, 4, v118, v119);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 424;
  v125 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v126 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v127 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v124, @"name", @"bloomIntensity");
  CFDictionarySetValue(v124, @"type", v125);
  CFDictionarySetValue(v124, @"address", v127);
  CFDictionarySetValue(v124, @"semantic", v126);
  CFArrayAppendValue(v104, v124);
  CFRelease(v126);
  CFRelease(v124);
  CFRelease(v127);
  CFRelease(v125);
  v128 = CFDictionaryCreateMutable(0, 4, v118, v119);
  v180 = 0;
  valuePtr = 1;
  v179 = v30 + 428;
  v129 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v130 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v131 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v128, @"name", @"bloomThreshold");
  CFDictionarySetValue(v128, @"type", v129);
  CFDictionarySetValue(v128, @"address", v131);
  CFDictionarySetValue(v128, @"semantic", v130);
  CFArrayAppendValue(v104, v128);
  CFRelease(v130);
  CFRelease(v128);
  CFRelease(v131);
  CFRelease(v129);
  v132 = CFDictionaryCreateMutable(0, 4, v118, v119);
  v180 = 0;
  valuePtr = 2;
  v133 = v30;
  v179 = v30 + 432;
  v134 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v135 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v136 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v132, @"name", @"bloomIteration");
  CFDictionarySetValue(v132, @"type", v134);
  CFDictionarySetValue(v132, @"address", v136);
  CFDictionarySetValue(v132, @"semantic", v135);
  v137 = v104;
  CFArrayAppendValue(v104, v132);
  CFRelease(v135);
  CFRelease(v132);
  CFRelease(v136);
  CFRelease(v134);
  v138 = MEMORY[0x277CBF150];
  v139 = CFDictionaryCreateMutable(0, 4, v118, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 436;
  v140 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v141 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v142 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v139, @"name", @"bloomIterationSpread");
  CFDictionarySetValue(v139, @"type", v140);
  CFDictionarySetValue(v139, @"address", v142);
  CFDictionarySetValue(v139, @"semantic", v141);
  CFArrayAppendValue(v137, v139);
  CFRelease(v141);
  CFRelease(v139);
  CFRelease(v142);
  CFRelease(v140);
  v143 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v138);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 472;
  v144 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v145 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v146 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v143, @"name", @"motionBlurIntensity");
  CFDictionarySetValue(v143, @"type", v144);
  CFDictionarySetValue(v143, @"address", v146);
  CFDictionarySetValue(v143, @"semantic", v145);
  CFArrayAppendValue(v137, v143);
  CFRelease(v145);
  CFRelease(v143);
  CFRelease(v146);
  CFRelease(v144);
  v147 = MEMORY[0x277CBF138];
  v148 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 492;
  v149 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v150 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v151 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v148, @"name", @"screenSpaceAmbientOcclusionIntensity");
  CFDictionarySetValue(v148, @"type", v149);
  CFDictionarySetValue(v148, @"address", v151);
  CFDictionarySetValue(v148, @"semantic", v150);
  CFArrayAppendValue(v137, v148);
  CFRelease(v150);
  CFRelease(v148);
  CFRelease(v151);
  CFRelease(v149);
  v152 = CFDictionaryCreateMutable(0, 4, v147, MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 496;
  v153 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v154 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v155 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v152, @"name", @"screenSpaceAmbientOcclusionRadius");
  CFDictionarySetValue(v152, @"type", v153);
  CFDictionarySetValue(v152, @"address", v155);
  CFDictionarySetValue(v152, @"semantic", v154);
  CFArrayAppendValue(v137, v152);
  CFRelease(v154);
  CFRelease(v152);
  CFRelease(v155);
  CFRelease(v153);
  v156 = MEMORY[0x277CBF138];
  v157 = MEMORY[0x277CBF150];
  v158 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 500;
  v159 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v160 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v161 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v158, @"name", @"screenSpaceAmbientOcclusionBias");
  CFDictionarySetValue(v158, @"type", v159);
  CFDictionarySetValue(v158, @"address", v161);
  CFDictionarySetValue(v158, @"semantic", v160);
  CFArrayAppendValue(v137, v158);
  CFRelease(v160);
  CFRelease(v158);
  CFRelease(v161);
  CFRelease(v159);
  v162 = CFDictionaryCreateMutable(0, 4, v156, v157);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 504;
  v163 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v164 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v165 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v162, @"name", @"screenSpaceAmbientOcclusionDepthThreshold");
  CFDictionarySetValue(v162, @"type", v163);
  CFDictionarySetValue(v162, @"address", v165);
  CFDictionarySetValue(v162, @"semantic", v164);
  CFArrayAppendValue(v137, v162);
  CFRelease(v164);
  CFRelease(v162);
  CFRelease(v165);
  CFRelease(v163);
  v166 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v157);
  v180 = 0;
  valuePtr = 1;
  v179 = v133 + 508;
  v167 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v168 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v169 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v166, @"name", @"screenSpaceAmbientOcclusionNormalThreshold");
  CFDictionarySetValue(v166, @"type", v167);
  CFDictionarySetValue(v166, @"address", v169);
  CFDictionarySetValue(v166, @"semantic", v168);
  CFArrayAppendValue(v137, v166);
  CFRelease(v168);
  CFRelease(v166);
  CFRelease(v169);
  CFRelease(v167);
  v170 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 2;
  v179 = v133 + 512;
  v171 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v172 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v173 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v170, @"name", @"screenSpaceAmbientOcclusionSampleCount");
  CFDictionarySetValue(v170, @"type", v171);
  CFDictionarySetValue(v170, @"address", v173);
  CFDictionarySetValue(v170, @"semantic", v172);
  CFArrayAppendValue(v137, v170);
  CFRelease(v172);
  CFRelease(v170);
  CFRelease(v173);
  CFRelease(v171);
  v174 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v180 = 0;
  valuePtr = 2;
  v179 = v133 + 516;
  v175 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v176 = CFNumberCreate(0, kCFNumberSInt32Type, &v180);
  v177 = CFNumberCreate(0, kCFNumberLongType, &v179);
  CFDictionarySetValue(v174, @"name", @"screenSpaceAmbientOcclusionDownSample");
  CFDictionarySetValue(v174, @"type", v175);
  CFDictionarySetValue(v174, @"address", v177);
  CFDictionarySetValue(v174, @"semantic", v176);
  CFArrayAppendValue(v137, v174);
  CFRelease(v176);
  CFRelease(v174);
  CFRelease(v177);
  CFRelease(v175);
  return v137;
}

uint64_t _C3DCameraSearchByID(uint64_t a1, const void *a2)
{
  ID = C3DEntityGetID(a1, a2);
  if (C3DEqual(ID, a2))
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t C3DNodeIsHidden(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 200);
}

void C3DNodeUpdateCullingSystemMembership(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    __UpdateCullingHandle(result, v1);
  }
}

void __UpdateCullingHandle(uint64_t a1, uint64_t a2)
{
  ShouldBePutInCullingSystem = C3DNodeShouldBePutInCullingSystem(a1, a2);
  if (((ShouldBePutInCullingSystem ^ (*(a1 + 216) == -1)) & 1) == 0)
  {
    v6 = ShouldBePutInCullingSystem;
    CullingSystem = C3DSceneGetCullingSystem(a2, v5);
    if (v6)
    {
      v8 = C3DCullingSystemAdd(CullingSystem, a1);
    }

    else
    {
      C3DCullingSystemRemove(CullingSystem, *(a1 + 216));
      v8 = -1;
    }

    *(a1 + 216) = v8;
    TransformTree = C3DSceneGetTransformTree(a2, v9);
    v11 = *(a1 + 88);
    v12 = *(a1 + 216);

    C3DTransformTreeUpdateCullingHandle(TransformTree, v11, v12);
  }
}

__n128 __C3DComputeLocalBoundingBox(uint64_t a1, uint64_t a2)
{
  *(a1 + 272) = *(MEMORY[0x277D860B8] + 48);
  *(a1 + 288) = xmmword_21C27F650;
  DeformerStack = C3DNodeGetDeformerStack(a1, a2);
  if (!DeformerStack || (C3DDeformerStackGetLocalBoundingBox(DeformerStack, (a1 + 272)) & 1) == 0)
  {
    Geometry = C3DNodeGetGeometry(a1, v4);
    if (Geometry)
    {
      v10 = 0uLL;
      v9 = 0uLL;
      if (C3DGetBoundingBox(Geometry, 0, &v10, &v9))
      {
        v7.i64[0] = 0x3F0000003F000000;
        v7.i64[1] = 0x3F0000003F000000;
        v8 = vmulq_f32(vaddq_f32(v10, v9), v7);
        result = vmulq_f32(vsubq_f32(v9, v10), v7);
        v8.i32[3] = 1.0;
        result.n128_u32[3] = 0;
        *(a1 + 272) = v8;
        *(a1 + 288) = result;
      }
    }
  }

  return result;
}

uint64_t C3DNodeGetDeformerStack(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 248);
}

uint64_t C3DNodeGetGeometry(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 240);
}

void C3DNodeGeometryDidUpdate(uint64_t *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  C3DNodeBoundingBoxDidUpdate(a1, a2);
  C3DScenePostPipelineEvent(a1[6], 2, a1, @"kMeshKey");
}

void C3DNodeBoundingBoxDidUpdate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 220) & 4) == 0)
  {
    __C3DComputeLocalBoundingBox(a1, a2);
  }

  if (*(a1 + 216) != -1)
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      CullingSystem = C3DSceneGetCullingSystem(v10, a2);
      v12 = *(a1 + 288);
      v13[0] = *(a1 + 272);
      v13[1] = v12;
      if ((vminvq_u32(vcgezq_f32(*(a1 + 288))) & 0x80000000) != 0)
      {
        C3DCullingSystemUpdateBoundingBox(CullingSystem, *(a1 + 216), v13);
      }
    }
  }
}

uint64_t C3DNodeGetLocalBoundingBox(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 288);
  *a2 = *(a1 + 272);
  a2[1] = v2;
  return vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
}

void C3DNodeGeometryLODDidUpdate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 232);
  if (v10)
  {
    free(v10);
  }

  *(a1 + 232) = 0;
  *(a1 + 220) &= ~0x8000u;
  Geometry = C3DNodeGetGeometry(a1, a2);
  if (Geometry)
  {
    LOD = C3DGeometryGetLOD(Geometry, v12);
    if (LOD)
    {
      v14 = LOD;
      if (CFArrayGetCount(LOD) >= 1)
      {
        Count = CFArrayGetCount(v14);
        ValueAtIndex = CFArrayGetValueAtIndex(v14, Count / 2);
        v18 = C3DLODGetThresholdType(ValueAtIndex, v17);
        v19 = malloc_type_malloc(12 * Count + 8, 0x100004000313F17uLL);
        *(a1 + 232) = v19;
        *v19 = Count;
        v19[2] = v18;
        *(*(a1 + 232) + 4) = 0;
        *(a1 + 220) |= 0x8000u;
        if (Count >= 1)
        {
          v20 = 0;
          v21 = (v19 + 16);
          do
          {
            v22 = CFArrayGetValueAtIndex(v14, v20);
            *(v21 - 2) = C3DLODGetThreshold(v22, v23);
            *(v21 - 1) = 0xFFFFFFFFLL;
            ++v20;
            v21 += 3;
          }

          while (Count != v20);
        }
      }
    }
  }

  C3DScenePostPipelineEvent(*(a1 + 48), 2, a1, @"kMeshKey");
}

float32x4_t C3DTransformBoundingBox(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, float32x4_t *a4, float32x4_t *a5)
{
  v5.i64[0] = 0x3F0000003F000000;
  v5.i64[1] = 0x3F0000003F000000;
  v6 = vmulq_f32(vaddq_f32(*a1, *a2), v5);
  v7 = vmulq_f32(vsubq_f32(*a2, *a1), v5);
  v8 = v7;
  v8.i32[3] = 0;
  v9 = a5[1];
  v10 = a5[2];
  v11 = vaddq_f32(a5[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v6.f32, 1), *a5, v6.f32[0]), v10, v6, 2));
  v11.i32[3] = 1.0;
  v12 = vuzp2q_s32(vdupq_lane_s32(*v7.f32, 1), v8);
  v13 = vzip2q_s32(vtrn1q_s32(v8, v8), v8);
  v8.i32[1] = v7.i32[0];
  v8.i32[2] = v7.i32[0];
  v14 = vaddq_f32(vabsq_f32(vmulq_f32(v10, v13)), vaddq_f32(vabsq_f32(vmulq_f32(*a5, v8)), vabsq_f32(vmulq_f32(v9, v12))));
  *a3 = vsubq_f32(v11, v14);
  result = vaddq_f32(v11, v14);
  *a4 = result;
  return result;
}

const __CFArray *C3DNodeIsLighted(uint64_t a1)
{
  result = *(a1 + 240);
  if (result)
  {
    result = C3DGeometryGetMaterialAtIndex(result, 0);
    if (result)
    {
      result = C3DMaterialGetCommonProfile(result, v2);
      if (result)
      {
        return ((C3DEffectCommonProfileGetLightingModel(result, v3) & 0xFFFFFFFB) != 0);
      }
    }
  }

  return result;
}

uint64_t C3DNodeIsAlwaysRendered(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 220);
  if ((v2 & 2) != 0)
  {
    if ((v2 & 4) != 0)
    {
      v7 = 0;
    }

    else
    {
      RendererDelegate = C3DNodeGetRendererDelegate(a1, a2);
      v6 = *(a1 + 240);
      if (v6)
      {
        LODWORD(v6) = C3DGeometryIsAlwaysRendered(v6, v4);
      }

      if (RendererDelegate)
      {
        v7 = 1;
      }

      else
      {
        v7 = v6;
      }

      v2 = *(a1 + 220);
    }

    v2 = v2 & 0xFFFFFFFC | v7;
    *(a1 + 220) = v2;
  }

  return v2 & 1;
}

const __CFDictionary *C3DNodeGetRendererDelegate(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 0x20) != 0)
  {
    return C3DEntityGetAttribute(a1, @"rendererDelegate");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetBoundingBox(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  v5 = *(a1 + 220);
  if (a3 != 2 || (v5 & 4) == 0)
  {
    if (a2)
    {
      v6 = a2[1];
      *(a1 + 272) = *a2;
      *(a1 + 288) = v6;
    }

    else
    {
      __C3DComputeLocalBoundingBox(a1, 0);
      v5 = *(a1 + 220);
    }

    if (a3 != 2)
    {
      v5 = v5 & 0xFFFFFFFB | (4 * (a3 == 1));
      *(a1 + 220) = v5;
    }

    if ((v5 & 4) != 0)
    {
      *(a1 + 220) = v5 & 0xFFFFFFFC;
    }

    C3DNodeBoundingBoxDidUpdate(a1, a2);
  }
}

uint64_t C3DNodeGetBoundingBoxOmittingFloor(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  if (C3DNodeIsHidden(a1, a2))
  {
    v7 = 0;
  }

  else
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    if (C3DNodeGetFloor(a1, v6))
    {
      LOBYTE(v8) = 0;
    }

    else
    {
      v9 = *(a1 + 288);
      *a2 = *(a1 + 272);
      a2[1] = v9;
      v8 = vminvq_u32(vcgezq_f32(*(a1 + 288))) >> 31;
    }

    v22 = v8;
    v10 = *(a1 + 72);
    if (v10)
    {
      v11 = 0;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 0x40000000;
      v14 = __C3DNodeGetBoundingBoxOmittingFloor_block_invoke;
      v15 = &unk_2782FE5E0;
      v16 = &v19;
      v17 = a3;
      v18 = a2;
      do
      {
        (v14)(v13, v10, v11++);
        v10 = *(v10 + 80);
      }

      while (v10);
    }

    v7 = *(v20 + 24);
    _Block_object_dispose(&v19, 8);
  }

  return v7 & 1;
}

uint64_t C3DNodeGetFloor(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if ((*(a1 + 221) & 0x10) != 0)
  {
    return C3DNodeGetGeometry(a1, a2);
  }

  else
  {
    return 0;
  }
}

uint64_t C3DNodeApplyChildren(uint64_t result, uint64_t a2)
{
  v2 = *(result + 72);
  if (v2)
  {
    v4 = 0;
    do
    {
      result = (*(a2 + 16))(a2, v2, v4++);
      v2 = *(v2 + 80);
    }

    while (v2);
  }

  return result;
}

void __C3DNodeGetBoundingBoxOmittingFloor_block_invoke(void *a1, uint64_t a2)
{
  v27 = 0u;
  v28 = 0u;
  Floor = C3DNodeGetFloor(a2, a2);
  v5 = a1[5];
  if (Floor)
  {
    if (v5)
    {
      *v5 = 1;
    }
  }

  else if (C3DNodeGetBoundingBoxOmittingFloor(a2, &v27, v5))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    C3DNodeGetMatrix(a2, v6, &v23);
    v7 = vaddq_f32(v26, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v24, *v27.f32, 1), v23, v27.f32[0]), v25, v27, 2));
    v8 = v7;
    v8.i32[3] = 1.0;
    v9 = v28;
    v9.i32[1] = v28.i32[0];
    v9.i32[2] = v28.i32[0];
    v10 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(v23, v9)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*v28.i8, 1), v28), v24))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(v28, v28), v28), v25)));
    v27 = v8;
    v28 = v10;
    v11 = *(a1[4] + 8);
    if (*(v11 + 24))
    {
      v12 = a1[6];
      v13 = v12[1];
      v14 = vsubq_f32(v7, v10);
      v15 = vsubq_f32(*v12, v13);
      v15.i32[3] = 0;
      v14.i32[3] = 0;
      v16 = vminnmq_f32(v15, v14);
      v17 = vaddq_f32(v7, v10);
      v18 = vaddq_f32(*v12, v13);
      v18.i32[3] = 0;
      v17.i32[3] = 0;
      v19 = vmaxnmq_f32(v18, v17);
      v20.i64[0] = 0x3F0000003F000000;
      v20.i64[1] = 0x3F0000003F000000;
      v21 = vmulq_f32(vaddq_f32(v16, v19), v20);
      v22 = vmulq_f32(vsubq_f32(v19, v16), v20);
      v21.i32[3] = 1.0;
      v22.i32[3] = 0;
      *v12 = v21;
    }

    else
    {
      *(v11 + 24) = 1;
      v12 = a1[6];
      v22 = v28;
      *v12 = v27;
    }

    v12[1] = v22;
  }
}

double C3DNodeGetMatrix@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *&result = C3DTransformGetMatrix(a1 + 96, a3, a2).n128_u64[0];
  v13 = *(a1 + 192);
  if (v13)
  {
    if (*(v13 + 124) == 0.0)
    {
      C3DMatrix4x4Invert(v13, (v13 + 64));
      v13 = *(a1 + 192);
    }

    return C3DMatrix4x4Mult(v13 + 64, a3, a3);
  }

  return result;
}

uint64_t C3DNodeShouldBePutInCullingSystem(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 240))
  {
    return 1;
  }

  v3 = *(a1 + 220);
  if ((v3 & 0x6000) != 0)
  {
    return 1;
  }

  if ((v3 & 0x200) == 0)
  {
    return 0;
  }

  Light = C3DNodeGetLight(a1, a2);

  return C3DLightGetDrawsArea(Light, v6);
}

const __CFDictionary *C3DNodeGetLight(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 2) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kLightKey");
  }

  else
  {
    return 0;
  }
}

uint64_t __computeSubBox(float32x4_t *a1, float32x4_t *a2)
{
  v2 = a1[18];
  *a2 = a1[17];
  a2[1] = v2;
  v3 = vminvq_u32(vcgezq_f32(a1[18])) >> 31;
  for (i = a1[4].i64[1]; i; i = i[5].i64[0])
  {
    v24 = 0u;
    v25 = 0u;
    if (__computeSubBox(i, &v24))
    {
      C3DNodeGetMatrix(i, v6, &v20);
      v7 = vaddq_f32(v23, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v21, *v24.f32, 1), v20, v24.f32[0]), v22, v24, 2));
      v8 = v25;
      v8.i32[1] = v25.i32[0];
      v8.i32[2] = v25.i32[0];
      v9 = vaddq_f32(vabsq_f32(vmulq_f32(v22, vzip2q_s32(vtrn1q_s32(v25, v25), v25))), vaddq_f32(vabsq_f32(vmulq_f32(v20, v8)), vabsq_f32(vmulq_f32(v21, vuzp2q_s32(vdupq_lane_s32(*v25.i8, 1), v25)))));
      v10 = a2[1];
      v11 = vsubq_f32(v7, v9);
      v11.i32[3] = 0;
      v12 = vsubq_f32(*a2, v10);
      v12.i32[3] = 0;
      v13 = vminnmq_f32(v11, v12);
      v14 = vaddq_f32(v7, v9);
      v14.i32[3] = 0;
      v15 = vaddq_f32(*a2, v10);
      v15.i32[3] = 0;
      v16 = vmaxnmq_f32(v14, v15);
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v17 = vmulq_f32(vaddq_f32(v13, v16), v10);
      v17.i32[3] = 1.0;
      v18 = vmulq_f32(vsubq_f32(v16, v13), v10);
      v18.i32[3] = 0;
      *a2 = v17;
      a2[1] = v18;
      LOBYTE(v3) = 1;
    }
  }

  return v3 & 1;
}

uint64_t C3DNodeComputeHierarchicalBoundingBox(float32x4_t *a1, uint64_t a2, float32x4_t *a3)
{
  v4 = a2;
  if ((a1[13].i16[7] & 0x380) == 0 && (v14 = a1[3].i64[0]) != 0 && (CullingSystem = C3DSceneGetCullingSystem(v14, a2)) != 0)
  {
    *a3 = C3DCullingSystemComputeHierarchicalAABB(CullingSystem, a1, v4);
    a3[1] = v16;
    return vminvq_u32(vcgezq_f32(v16)) >> 31;
  }

  else
  {
    result = __computeSubBox(a1, a3);
    if (result)
    {
      if ((v4 & 1) == 0)
      {
        WorldMatrix = C3DNodeGetWorldMatrix(a1, v7);
        v9 = *(WorldMatrix + 16);
        v10 = *(WorldMatrix + 32);
        v11 = vaddq_f32(*(WorldMatrix + 48), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *a3->f32, 1), *WorldMatrix, COERCE_FLOAT(*a3)), v10, *a3, 2));
        v11.i32[3] = 1.0;
        v12 = a3[1];
        v12.i32[1] = v12.i32[0];
        v12.i32[2] = a3[1];
        v13 = vaddq_f32(vaddq_f32(vabsq_f32(vmulq_f32(*WorldMatrix, v12)), vabsq_f32(vmulq_f32(vuzp2q_s32(vdupq_lane_s32(*a3[1].f32, 1), a3[1]), v9))), vabsq_f32(vmulq_f32(vzip2q_s32(vtrn1q_s32(a3[1], a3[1]), a3[1]), v10)));
        *a3 = v11;
        a3[1] = v13;
        return 1;
      }
    }
  }

  return result;
}

uint64_t C3DNodeGetWorldMatrix(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return C3DTransformGetMatrixPtr(a1 + 96, a2);
  }

  TransformTree = C3DSceneGetTransformTree(v10, a2);
  if (!TransformTree)
  {
    v23 = scn_default_log(0, v12);
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&dword_21BEF7000, v23, OS_LOG_TYPE_DEFAULT, "Warning: C3DNodeGetWorldMatrix - no transform tree", v24, 2u);
    }

    return C3DTransformGetMatrixPtr(a1 + 96, a2);
  }

  v13 = TransformTree;
  if (*(a1 + 88) == -1)
  {
    v14 = scn_default_log(TransformTree, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetWorldMatrix_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return C3DTransformTreeGetWorldTransformPtr(v13, *(a1 + 88));
}

uint64_t C3DNodeGetRenderableAttributeHash(uint64_t a1, uint64_t a2)
{
  if (C3DNodeGetRendererDelegate(a1, a2))
  {
    v4 = 2;
  }

  else if (C3DNodeGetFilters(a1, v3))
  {
    v4 = 8;
  }

  else
  {
    v4 = C3DNodeGetGeometry(a1, v3) != 0;
  }

  Light = C3DNodeGetLight(a1, v3);
  if (Light && C3DLightGetType(Light, v6) == 6)
  {
    v4 |= 0x10u;
  }

  if (C3DNodeGetUsesDepthPrePass(a1, v6))
  {
    return v4 | 0x20;
  }

  else
  {
    return v4;
  }
}

const __CFDictionary *C3DNodeGetFilters(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 0x40) == 0)
  {
    return 0;
  }

  result = C3DEntityGetAttribute(a1, @"kFilterKey");
  if (result)
  {
    return C3DModelTargetGetTarget(result, v12);
  }

  return result;
}

uint64_t C3DNodeGetUsesDepthPrePass(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 223) >> 2) & 1;
}

uint64_t C3DNodeGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DNodeGetTypeID_onceToken != -1)
  {
    C3DNodeGetTypeID_cold_1();
  }

  return C3DNodeGetTypeID_typeID;
}

double __C3DNodeGetTypeID_block_invoke()
{
  v0 = _CFRuntimeRegisterClass();
  C3DNodeGetTypeID_typeID = v0;
  TypeID = C3DEntityGetTypeID(v0, v1);
  C3DModelPathResolverRegisterClassBegin(v0, TypeID);
  C3DModelPathResolverRegisterProperty(@"hidden", 200, 3, 0);
  C3DModelPathResolverRegisterProperty(@"opacity", 204, 1, 0);
  C3DModelPathResolverRegisterClassEnd();
  unk_2817408E8 = kC3DC3DNodeContextClassSerializable;
  unk_2817408F8 = *&off_282DC52C8;
  unk_2817408A8 = kC3DC3DNodeContextClassBoundingVolumes;
  xmmword_281740890 = kC3DC3DNodeContextClassAnimatable;
  result = *&kC3DC3DNodeContextClassSceneLink;
  unk_2817408B8 = kC3DC3DNodeContextClassSceneLink;
  qword_2817408A0 = _C3DNodeCopyInstanceVariables;
  unk_2817408C8 = *off_282DC5308;
  qword_2817408D8 = qword_282DC5318;
  unk_2817408E0 = _C3DNodeSearchByID;
  return result;
}

uint64_t C3DNodeCreate(uint64_t a1, uint64_t a2)
{
  if (C3DNodeGetTypeID_onceToken != -1)
  {
    C3DNodeGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DNodeGetTypeID_typeID, 288);
  C3DTransformInit(Instance + 96);
  *(Instance + 204) = 1065353216;
  *(Instance + 200) = 0;
  v3 = *(Instance + 220) & 0xFFDFFFD1 | 0x20002A;
  *(Instance + 208) = 1;
  *(Instance + 216) = -1;
  *(Instance + 220) = v3;
  *(Instance + 88) = -1;
  *(Instance + 272) = *(MEMORY[0x277D860B8] + 48);
  *(Instance + 288) = xmmword_21C27F650;
  return Instance;
}

uint64_t C3DNodeCopyNode(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = C3DNodeCreate(a1, a2);
  v11 = *(v2 + 112);
  *(v10 + 96) = *(v2 + 96);
  *(v10 + 112) = v11;
  v12 = *(v2 + 176);
  v14 = *(v2 + 128);
  v13 = *(v2 + 144);
  *(v10 + 160) = *(v2 + 160);
  *(v10 + 176) = v12;
  *(v10 + 128) = v14;
  *(v10 + 144) = v13;
  if (C3DNodeGetHasPivot(v2, v15))
  {
    PivotMatrix = C3DNodeGetPivotMatrix(v2, v16);
    C3DNodeSetPivotMatrix(v10, PivotMatrix);
  }

  Opacity = C3DNodeGetOpacity(v2, v16);
  C3DNodeSetOpacity(v10, v19, Opacity);
  IsHidden = C3DNodeIsHidden(v2, v20);
  C3DNodeSetHidden(v10, IsHidden);
  v22 = *(v2 + 240);
  if (v22)
  {
    C3DNodeSetGeometry(v10, v22);
  }

  C3DEntityCopyTo(v2, v10);
  v23 = *(v10 + 220) & 0xFFFFFBFF | (((*(v2 + 220) >> 10) & 1) << 10);
  *(v10 + 220) = v23;
  v24 = v23 & 0xFFFEFFFF | ((HIWORD(*(v2 + 220)) & 1) << 16);
  *(v10 + 220) = v24;
  v25 = v24 & 0xFFFFBFFF | (((*(v2 + 220) >> 14) & 1) << 14);
  *(v10 + 220) = v25;
  v26 = v25 & 0xFFFFEFFF | (((*(v2 + 220) >> 12) & 1) << 12);
  *(v10 + 220) = v26;
  v27 = v26 & 0xFFFFFDFF | (((*(v2 + 220) >> 9) & 1) << 9);
  *(v10 + 220) = v27;
  Copy = *(v2 + 248);
  if (Copy)
  {
    Copy = C3DDeformerStackCreateCopy(Copy, v10);
    v27 = *(v10 + 220);
  }

  *(v10 + 248) = Copy;
  v29 = v27 & 0xFFFFDFFF | (((*(v2 + 220) >> 13) & 1) << 13);
  *(v10 + 220) = v29;
  v30 = v29 & 0xFFFFF7FF | (((*(v2 + 220) >> 11) & 1) << 11);
  *(v10 + 220) = v30;
  v31 = *(v2 + 288);
  *(v10 + 272) = *(v2 + 272);
  *(v10 + 288) = v31;
  v32 = v30 & 0xFFFFFFFB | (4 * ((*(v2 + 220) >> 2) & 1));
  *(v10 + 220) = v32;
  *(v10 + 208) = *(v2 + 208);
  *(v10 + 220) = v32 & 0xFFBFFFFF | (((*(v2 + 220) >> 22) & 1) << 22);
  return v10;
}

BOOL C3DNodeGetHasPivot(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 192) != 0;
}

void C3DNodeSetPivotMatrix(uint64_t a1, __int128 *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 192);
  if (!v11)
  {
    v11 = C3DMalloc(0x80uLL);
    *(a1 + 192) = v11;
  }

  v12 = *a2;
  v13 = a2[1];
  v14 = a2[3];
  v11[2] = a2[2];
  v11[3] = v14;
  *v11 = v12;
  v11[1] = v13;
  v15 = *(a1 + 192);
  if (v15)
  {
    *(v15 + 124) = 0;
  }

  __C3DNodeTransformDidChange(a1, a2);
}

uint64_t C3DNodeGetPivotMatrix(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 192);
}

void C3DNodeSetOpacity(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(result + 204);
  if (v13 != a3)
  {
    if (a3 >= 1.0 && v13 < 1.0)
    {
      *(result + 204) = a3;
      __DirtyWorldAlpha(result, 1);
    }

    else
    {
      if (a3 >= 1.0)
      {
        *(result + 204) = a3;
        __DirtyWorldAlpha(result, 0);
        goto LABEL_15;
      }

      *(result + 204) = a3;
      __DirtyWorldAlpha(result, v13 >= 1.0);
      if (v13 < 1.0)
      {
        goto LABEL_15;
      }
    }

    v15 = *(result + 48);
    C3DScenePostPipelineEvent(v15, 4, result, 0);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v16[2] = ____IsOpaqueDidChange_block_invoke;
    v16[3] = &__block_descriptor_tmp_164;
    v16[4] = v15;
    C3DNodeApplyHierarchy(result, v16);
LABEL_15:
    if (a3 == 0.0 || v13 == 0.0)
    {
      __UpdateCullingSystemFlags(result, 1);
    }
  }
}

float C3DNodeGetOpacity(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 204);
}

void C3DNodeSetHidden(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (*(result + 200) != v2)
  {
    *(result + 200) = v2;
    __UpdateNodeVisibilityIfNeeded(result, v2 ^ 1u);
  }
}

void C3DNodeSetGeometry(uint64_t a1, __C3DGeometry *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Geometry = C3DNodeGetGeometry(a1, a2);
  if (Geometry)
  {
    v13 = Geometry;
    C3DGeometryUntrackNode(Geometry, a1);
    C3DRemoveSceneRef(v13, *(a1 + 48));
  }

  TypeID = *(a1 + 240);
  if (TypeID != a2)
  {
    if (TypeID)
    {
      CFRelease(TypeID);
      *(a1 + 240) = 0;
    }

    if (a2)
    {
      TypeID = CFRetain(a2);
    }

    else
    {
      TypeID = 0;
    }

    *(a1 + 240) = TypeID;
  }

  if (a2)
  {
    TypeID = C3DGeometryTrackNode(a2, a1);
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance(TypeID, v12);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kMeshKey", 1u);
  }

  if (!a2)
  {
    goto LABEL_22;
  }

  v17 = *(a1 + 48);
  if (v17)
  {
    C3DAddSceneRef(a2, v17);
  }

  v18 = CFGetTypeID(a2);
  TypeID = C3DFloorGetTypeID(v18, v19);
  if (v18 == TypeID)
  {
    v20 = 4096;
  }

  else
  {
LABEL_22:
    v20 = 0;
    v21 = 0;
    v22 = *(a1 + 220);
    if ((v22 & 0x1000) == 0)
    {
      goto LABEL_24;
    }
  }

  v23 = C3DNotificationCenterGetSharedInstance(TypeID, v12);
  C3DNotificationCenterPostNotification(v23, @"kC3DNotificationEngineContextInvalidatePasses", *(a1 + 48), 0, 1u);
  v22 = *(a1 + 220);
  v21 = v20;
LABEL_24:
  *(a1 + 220) = v22 & 0xFFFFEFFF | v21;
  v24 = *(a1 + 248);
  if (v24)
  {
    C3DDeformerStackSetBaseGeometry(v24, a2);
  }

  C3DNodeGeometryLODDidUpdate(a1, v12);
  C3DNodeBoundingBoxDidUpdate(a1, v25);
  __UpdateCullingSystemFlags(a1, 0);
  v26 = a1;
  do
  {
    *(v26 + 220) |= 2u;
    v26 = *(v26 + 64);
  }

  while (v26);
  if (v15)
  {
    __UpdateCullingHandle(a1, v15);
  }
}

uint64_t C3DNodeCreateCopy(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = C3DNodeCopyNode(a1, a2);
  v12 = v11;
  if (v2)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 0x40000000;
    v17 = __C3DNodeCreateCopy_block_invoke;
    v18 = &__block_descriptor_tmp_8_1;
    v20 = v2;
    v19 = v11;
    v13 = *(a1 + 72);
    if (v13)
    {
      v14 = 0;
      do
      {
        (v17)(v16, v13, v14++);
        v13 = *(v13 + 80);
      }

      while (v13);
    }
  }

  return v12;
}

void __C3DNodeCreateCopy_block_invoke(uint64_t a1, uint64_t a2)
{
  Copy = C3DNodeCreateCopy(a2, *(a1 + 40));
  C3DNodeAddChildNode(*(a1 + 32), Copy);

  CFRelease(Copy);
}

uint64_t C3DNodeAddChildNode(uint64_t a1, CFTypeRef cf)
{
  if (cf)
  {
    v4 = *(a1 + 72);
    if (!v4)
    {
      *(a1 + 72) = CFRetain(cf);
      return __FixupParent(a1, cf);
    }

    goto LABEL_7;
  }

  v5 = scn_default_log(a1, 0);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddChildNode_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
  }

  v4 = *(a1 + 72);
  if (v4)
  {
    do
    {
LABEL_7:
      v13 = v4;
      v4 = *(v4 + 80);
    }

    while (v4);
    if (cf)
    {
      *(v13 + 80) = CFRetain(cf);
    }
  }

  return __FixupParent(a1, cf);
}

__C3DGeometry *__createSubdividedGeometryCopy(const void *a1, const void *a2, unsigned __int8 a3)
{
  Copy = C3DGeometryCreateCopy(a1, a2);
  v7 = Copy;
  if (a2)
  {
    Mesh = C3DGeometryGetMesh(Copy, v6);
    C3DMeshSetMeshElements(Mesh, a2);
  }

  SubdivisionSettings = C3DGeometryOsdGetSubdivisionSettings(v7);
  C3DGeometryOsdSetSubdivisionSettings(v7, SubdivisionSettings & 0xFFFFFF00);
  C3DGeometryOsdSetSubdivisionLevel(v7, a3);
  CPUSubdividedC3DMesh = C3DGeometryOsdGetCPUSubdividedC3DMesh(v7, v10);
  CFRetain(CPUSubdividedC3DMesh);
  C3DGeometryOsdSetSubdivisionLevel(v7, 0);
  C3DGeometrySetMesh(v7, CPUSubdividedC3DMesh);
  CFRelease(CPUSubdividedC3DMesh);
  return v7;
}

CFTypeRef *C3DNodeCreateSubdividedCopy(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a2)
  {
    v4 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeCreateSubdividedCopy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  Copy = C3DNodeCreateCopy(a1, 0);
  Geometry = C3DNodeGetGeometry(Copy, v13);
  if (Geometry)
  {
    v16 = Geometry;
    Morpher = C3DNodeGetMorpher(a1, v15);
    SubdividedGeometryCopy = __createSubdividedGeometryCopy(v16, 0, v2);
    C3DNodeSetGeometry(Copy, SubdividedGeometryCopy);
    CFRelease(SubdividedGeometryCopy);
    if (Morpher)
    {
      v59 = Copy;
      v20 = C3DMorpherCreateCopy(Morpher, v19);
      C3DMorpherSetBaseGeometry(v20, SubdividedGeometryCopy);
      v57 = v20;
      OverrideMaterial = C3DGeometryGetOverrideMaterial(v20);
      if (C3DMorphIsUsingSparseTargets(OverrideMaterial, v22))
      {
        C3DMorphConvertToSparse(OverrideMaterial, v16, 0, 0);
      }

      v58 = Morpher;
      if (C3DMorphGetCalculationMode(OverrideMaterial))
      {
        C3DMorphConvertToCalculationMode(OverrideMaterial, v16, 0, 0);
      }

      Mesh = C3DGeometryGetMesh(v16, v23);
      MeshElements = C3DMeshGetMeshElements(Mesh, 0);
      v26 = C3DGeometryGetOverrideMaterial(OverrideMaterial);
      Count = CFArrayGetCount(v26);
      Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], Count, MEMORY[0x277CBF128]);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v26, i);
          v31 = __createSubdividedGeometryCopy(ValueAtIndex, MeshElements, v2);
          CFArrayAppendValue(Mutable, v31);
          CFRelease(v31);
        }
      }

      C3DMorphSetTargets(OverrideMaterial, Mutable, 0);
      Copy = v59;
      C3DNodeSetMorpher(v59, v57);
      CFRelease(v57);
      Morpher = v58;
    }

    v32 = *(a1 + 248);
    if (v32)
    {
      Skinner = C3DDeformerStackGetSkinner(v32, v19);
      if (Skinner)
      {
        v34 = Skinner;
        v35 = C3DGeometryGetOverrideMaterial(Skinner);
        v37 = C3DGeometryGetMesh(v16, v36);
        v39 = C3DMeshCreateCopy(v37, v38);
        v41 = C3DGeometryCreate(v39, v40);
        C3DGeometrySetMesh(v41, v39);
        if (v39)
        {
          CFRelease(v39);
        }

        if (Morpher)
        {
          SubdivisionSettings = C3DGeometryOsdGetSubdivisionSettings(v41);
          C3DGeometryOsdSetSubdivisionSettings(v41, SubdivisionSettings & 0xFFFFFF00);
        }

        C3DGeometryOsdSetSubdivisionLevel(v41, v2);
        CPUSubdividedC3DMesh = C3DGeometryOsdGetCPUSubdividedC3DMesh(v41, v43);
        Joints = C3DSkinnerGetJoints(v34);
        v46 = Joints;
        if (Joints)
        {
          LOWORD(Joints) = CFArrayGetCount(Joints);
        }

        v47 = C3DSkinCreateWithSkinnableMesh(CPUSubdividedC3DMesh, Joints);
        CFRelease(v41);
        if (v47)
        {
          DefaultShapeMatrix = C3DSkinGetDefaultShapeMatrix(v35);
          v49 = *DefaultShapeMatrix;
          v50 = DefaultShapeMatrix[1];
          v51 = DefaultShapeMatrix[3];
          v60[2] = DefaultShapeMatrix[2];
          v60[3] = v51;
          v60[0] = v49;
          v60[1] = v50;
          C3DSkinSetDefaultShapeMatrix(v47, v60);
          InverseBindMatricesPtr = C3DSkinGetInverseBindMatricesPtr(v35);
          C3DSkinCopyInverseBindMatricesPtr(v47, InverseBindMatricesPtr);
          v54 = C3DSkinnerCreateWithSkin(v47, v53);
          CFRelease(v47);
          if (v46)
          {
            v55 = CFArrayCreateCopy(0, v46);
            C3DSkinnerSetJoints(v54, v55);
            CFRelease(v55);
          }

          C3DNodeSetSkinner(Copy, v54);
          CFRelease(v54);
        }
      }
    }
  }

  return Copy;
}

uint64_t C3DNodeGetMorpher(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  result = *(a1 + 248);
  if (result)
  {
    return C3DDeformerStackGetMorpher(result, a2);
  }

  return result;
}

void C3DNodeSetMorpher(CFTypeRef *a1, void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  Morpher = C3DNodeGetMorpher(a1, a2);
  if (Morpher != a2)
  {
    v13 = Morpher;
    if (Morpher)
    {
      v14 = C3DGetSceneRef(a1, v12);
      C3DRemoveSceneRef(v13, v14);
    }

    if (a2)
    {
      v15 = a1[6];
      if (v15)
      {
        C3DAddSceneRef(a2, v15);
      }

      v17 = a1 + 31;
      v16 = a1[31];
      if (!v16)
      {
        v16 = C3DDeformerStackCreate(a1);
        a1[31] = v16;
        if (!v16)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
      v17 = a1 + 31;
      v16 = a1[31];
      if (!v16)
      {
LABEL_17:
        v19 = C3DGetSceneRef(a1, v12);
        if (v19)
        {
          SharedInstance = C3DNotificationCenterGetSharedInstance(v19, v20);
          C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
        }

        C3DNodeGeometryDidUpdate(a1, v20);
        return;
      }
    }

    C3DDeformerStackSetMorpher(v16, a2);
    if (C3DDeformerStackIsEmpty(v16, v18) && *v17)
    {
      CFRelease(*v17);
      *v17 = 0;
    }

    goto LABEL_17;
  }
}

uint64_t C3DNodeGetSkinner(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 248);
  if (result)
  {
    return C3DDeformerStackGetSkinner(result, a2);
  }

  return result;
}

void C3DNodeSetSkinner(void *a1, void *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[31];
  if (!v11)
  {
    if (!a2)
    {
      return;
    }

LABEL_12:
    v17 = a1[6];
    if (v17)
    {
      C3DAddSceneRef(a2, v17);
    }

    C3DSkinnerSetOwnerNode(a2, a1);
    v16 = a1[31];
    if (!v16)
    {
      v16 = C3DDeformerStackCreate(a1);
      a1[31] = v16;
      if (!v16)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_16;
  }

  Skinner = C3DDeformerStackGetSkinner(v11, a2);
  if (Skinner == a2)
  {
    return;
  }

  v14 = Skinner;
  if (Skinner)
  {
    v15 = C3DGetSceneRef(a1, v13);
    C3DRemoveSceneRef(v14, v15);
    C3DSkinnerSetOwnerNode(v14, 0);
  }

  if (a2)
  {
    goto LABEL_12;
  }

  v16 = a1[31];
  if (v16)
  {
LABEL_16:
    C3DDeformerStackSetSkinner(v16, a2);
    if (C3DDeformerStackIsEmpty(v16, v18))
    {
      v19 = a1[31];
      if (v19)
      {
        CFRelease(v19);
        a1[31] = 0;
      }
    }
  }

LABEL_19:
  v20 = C3DGetSceneRef(a1, v13);
  if (v20)
  {
    SharedInstance = C3DNotificationCenterGetSharedInstance(v20, v21);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
  }

  C3DNodeGeometryDidUpdate(a1, v21);
}

uint64_t C3DNodeGetChildNodesCount(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (!v1)
  {
    return 0;
  }

  LODWORD(result) = 0;
  do
  {
    result = (result + 1);
    v1 = *(v1 + 80);
  }

  while (v1);
  return result;
}

uint64_t C3DNodeApplyChildrenInterruptible(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v2 = *(a1 + 72);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  do
  {
    (*(a2 + 16))(a2, v2, v4, &v6);
    result = v6;
    if (v6)
    {
      break;
    }

    ++v4;
    v2 = *(v2 + 80);
  }

  while (v2);
  return result;
}

uint64_t C3DNodeApplyHierarchy(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = (*(a2 + 16))(a2, result);
    if (v4 == 2)
    {
      return 1;
    }

    v5 = v3;
    while (1)
    {
      if (v4 == 1 || (v6 = v5[9]) == 0)
      {
        if (v5 == v3)
        {
          return 0;
        }

        while (1)
        {
          v6 = v5[10];
          if (v6)
          {
            break;
          }

          v5 = v5[8];
          if (v5)
          {
            v7 = v5 == v3;
          }

          else
          {
            v7 = 1;
          }

          if (v7)
          {
            return 0;
          }
        }
      }

      v4 = (*(a2 + 16))(a2, v6);
      v5 = v6;
      if (v4 == 2)
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t C3DNodeGetName(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetName(a1, a2);
}

uint64_t C3DNodeApplyHierarchySkippingHiddenNodes(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = result;
    do
    {
LABEL_3:
      v5 = v4;
      if (*(v4 + 200))
      {
        break;
      }

      v6 = (*(a2 + 16))(a2, v4);
      if (v6 == 2)
      {
        return 1;
      }

      v4 = v5[9];
    }

    while (v6 != 1 && v4 != 0);
    while (v5 != v3)
    {
      v4 = v5[10];
      if (v4)
      {
        goto LABEL_3;
      }

      v5 = v5[8];
    }

    return 0;
  }

  return result;
}

uint64_t C3DNodeGetChildNodeAtIndex(uint64_t a1, unsigned int a2)
{
  result = *(a1 + 72);
  if (a2 && result)
  {
    v3 = 1;
    do
    {
      result = *(result + 80);
      if (v3 >= a2)
      {
        break;
      }

      ++v3;
    }

    while (result);
  }

  return result;
}

uint64_t __FixupParent(uint64_t a1, uint64_t a2)
{
  *(a2 + 64) = a1;
  __C3DNodeTransformDidChange(a2, a2);
  if (a1)
  {
    if ((*(a2 + 220) & 3) != 0)
    {
      v6 = a1;
      do
      {
        *(v6 + 220) |= 2u;
        v6 = *(v6 + 64);
      }

      while (v6);
      if (!a2)
      {
        v7 = scn_default_log(v4, v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
        {
          C3DGeometryTrackNode_cold_2(v7, v8, v9, v10, v11, v12, v13, v14);
        }
      }
    }
  }

  v15 = *(a2 + 64);
  if (v15)
  {
    v16 = *(a2 + 220) & 0xFFFFFF7F | (((*(v15 + 220) >> 7) & 1) << 7);
    *(a2 + 220) = v16;
    v17 = v16 & 0xFC7FFFFF | (((*(v15 + 220) >> 23) & 7) << 23);
    *(a2 + 220) = v17;
  }

  else
  {
    v17 = *(a2 + 220);
  }

  __PropagateFlagsToChildren(a2, (v17 >> 7) & 1, (v17 >> 23) & 7);
  __DirtyWorldAlpha(a2, 0);
  v18 = *(a1 + 48);
  v19 = *(a2 + 48);
  if (v18)
  {
    if (v19 != v18)
    {
      C3DRemoveSceneRef(a2, v19);
      C3DAddSceneRef(a2, *(a1 + 48));
    }
  }

  else
  {
    C3DRemoveSceneRef(a2, v19);
  }

  return __UpdateNodeVisibilityIfNeeded(a2, 1);
}

uint64_t C3DNodeInsertChildNodeAtIndex(_BOOL8 inserted, void *cf, int a3)
{
  v5 = inserted;
  if (cf[10])
  {
    v6 = scn_default_log(inserted, cf);
    inserted = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (inserted)
    {
      C3DNodeInsertChildNodeAtIndex_cold_1(v6, cf, v7, v8, v9, v10, v11, v12);
    }
  }

  if (cf[8])
  {
    v13 = scn_default_log(inserted, cf);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      C3DNodeInsertChildNodeAtIndex_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
      if (a3)
      {
        goto LABEL_7;
      }

LABEL_11:
      cf[10] = *(v5 + 72);
      *(v5 + 72) = cf;
      CFRetain(cf);
      return __FixupParent(v5, cf);
    }
  }

  if (!a3)
  {
    goto LABEL_11;
  }

LABEL_7:
  v21 = *(v5 + 72);
  v22 = (a3 - 1);
  if (a3 != 1)
  {
    do
    {
      v21 = *(v21 + 80);
      --v22;
    }

    while (v22);
  }

  v23 = *(v21 + 80);
  *(v21 + 80) = cf;
  CFRetain(cf);
  cf[10] = v23;
  return __FixupParent(v5, cf);
}

uint64_t C3DNodeInsertChildNodeAfterChild(_BOOL8 inserted, void *cf, uint64_t a3)
{
  v5 = inserted;
  if (cf[10])
  {
    v6 = scn_default_log(inserted, cf);
    inserted = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT);
    if (inserted)
    {
      C3DNodeInsertChildNodeAtIndex_cold_1(v6, cf, v7, v8, v9, v10, v11, v12);
    }
  }

  if (!cf[8] || (v13 = scn_default_log(inserted, cf), !(inserted = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))))
  {
    if (a3)
    {
      goto LABEL_7;
    }

LABEL_12:
    cf[10] = *(v5 + 72);
    *(v5 + 72) = cf;
    CFRetain(cf);
    return __FixupParent(v5, cf);
  }

  C3DNodeInsertChildNodeAtIndex_cold_2(v13, cf, v14, v15, v16, v17, v18, v19);
  if (!a3)
  {
    goto LABEL_12;
  }

LABEL_7:
  if (*(a3 + 64) != v5)
  {
    v20 = scn_default_log(inserted, cf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DNodeInsertChildNodeAfterChild_cold_3(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v28 = *(a3 + 80);
  *(a3 + 80) = cf;
  CFRetain(cf);
  cf[10] = v28;
  return __FixupParent(v5, cf);
}

void C3DNodeRemoveFromParentNode(uint64_t cf, uint64_t a2)
{
  *&v15[5] = *MEMORY[0x277D85DE8];
  v2 = *(cf + 64);
  if (v2)
  {
    v3 = cf;
    v4 = *(v2 + 72);
    if (v4 == cf)
    {
      *(v2 + 72) = *(cf + 80);
    }

    else
    {
      if (!v4)
      {
        v5 = scn_default_log(cf, a2);
        cf = os_log_type_enabled(v5, OS_LOG_TYPE_FAULT);
        if (cf)
        {
          C3DNodeRemoveFromParentNode_cold_1(v5, a2, v6, v7, v8, v9, v10, v11);
        }
      }

      for (i = v4[10]; i != v3; i = v4[10])
      {
        v4 = i;
        if (!i)
        {
          v13 = scn_default_log(cf, a2);
          cf = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
          if (cf)
          {
            C3DNodeRemoveFromParentNode_cold_2(v14, v15, v13);
          }
        }
      }

      v4[10] = v3[10];
    }

    v3[10] = 0;
    v3[8] = 0;
    C3DRemoveSceneRef(v3, v3[6]);
    CFRelease(v3);
  }
}

uint64_t C3DNodeGetIndexOfChildNode(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 72);
  v3 = v2 == 0;
  v4 = v2 == 0;
  v5 = 0;
  while (!v3 && v2 != a2)
  {
    ++v5;
    v2 = *(v2 + 80);
    v3 = v2 == 0;
    v4 = v2 == 0;
  }

  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t C3DNodeGetParent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

double C3DNodeGetWorldPosition(_BOOL8 a1, __n128 *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DNodeGetWorldPosition_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  WorldMatrix = C3DNodeGetWorldMatrix(v3, a2);
  *&result = C3DMatrix4x4GetTranslation(WorldMatrix, a2).n128_u64[0];
  return result;
}

void C3DNodeGetWorldOrientation(_BOOL8 a1, _OWORD *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DNodeGetWorldOrientation_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  WorldMatrix = C3DNodeGetWorldMatrix(v3, a2);
  v19 = *WorldMatrix;
  v20 = *(WorldMatrix + 16);
  v21 = *(WorldMatrix + 48);
  v23[2] = *(WorldMatrix + 32);
  v23[3] = v21;
  v23[0] = v19;
  v23[1] = v20;
  *&v22 = C3DMatrix4x4GetRotation(v23);
  *a2 = v22;
}

uint64_t C3DNodeGetLastFrameWorldMatrix(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (!v10)
  {
    return C3DTransformGetMatrixPtr(a1 + 96, a2);
  }

  TransformTree = C3DSceneGetTransformTree(v10, a2);
  v13 = TransformTree;
  if (*(a1 + 88) == -1)
  {
    v14 = scn_default_log(TransformTree, v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      C3DNodeGetWorldMatrix_cold_2(v14, v15, v16, v17, v18, v19, v20, v21);
    }
  }

  return C3DTransformTreeGetLastFrameWorldTransformPtr(v13, *(a1 + 88));
}

void C3DNodeSetPosition(__n128 *a1, __n128 a2)
{
  C3DTransformSetPosition(a1 + 6, a2);

  __C3DNodeTransformDidChange(a1, v3);
}

void __C3DNodeTransformDidChange(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  if (v3)
  {
    TransformTree = C3DSceneGetTransformTree(v3, a2);
    if (TransformTree)
    {
      if (*(a1 + 88) != -1)
      {
        v5 = TransformTree;
        memset(&v6, 0, sizeof(v6));
        C3DNodeGetMatrix(a1, a2, &v6);
        C3DTransformTreeUpdateNodeTransform(v5, *(a1 + 88), &v6);
      }
    }
  }

  __UpdateAudioTransform(a1, a2);
}

void C3DNodeSetScale(uint64_t a1, uint64_t a2, __n128 a3)
{
  C3DTransformSetScale(a1 + 96, a2, a3);

  __C3DNodeTransformDidChange(a1, v4);
}

void C3DNodeSetAxisAngle(__n128 *a1, uint64_t a2, __n128 a3)
{
  C3DTransformSetAxisAngle(a1 + 6, a2, a3);

  __C3DNodeTransformDidChange(a1, v4);
}

void C3DNodeSetEuler(__n128 *a1, uint64_t a2, __n128 a3)
{
  C3DTransformSetEuler(a1 + 6, a2, a3);

  __C3DNodeTransformDidChange(a1, v4);
}

void C3DNodeSetQuaternion(__n128 *a1, uint64_t a2, __n128 a3)
{
  C3DTransformSetQuaternion(a1 + 6, a3, a2);

  __C3DNodeTransformDidChange(a1, v4);
}

void C3DNodeSetMatrix(uint64_t a1, uint64_t a2)
{
  C3DTransformSetMatrix(a1 + 96, a2);

  __C3DNodeTransformDidChange(a1, v3);
}

double C3DNodeGetLocalNoPivotMatrix@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (!a1)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v5, a2, v6, v7, v8, v9, v10, v11);
    }
  }

  *&result = C3DTransformGetMatrix(a1 + 96, a3, a2).n128_u64[0];
  return result;
}

double C3DNodeGetPivotPosition(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v13.n128_u32[2] = 0;
  v13.n128_u64[0] = 0;
  v11 = *(a1 + 192);
  if (!v11)
  {
    return 0.0;
  }

  C3DMatrix4x4GetTranslation(v11, &v13);
  return v13.n128_f64[0];
}

void C3DNodeSetPivotPosition(uint64_t a1, uint64_t a2, __n128 a3)
{
  if (!a1)
  {
    v16 = a3;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    a3 = v16;
    if (v5)
    {
      C3DGeometryTrackNode_cold_2(v4, v6, v7, v8, v9, v10, v11, v12);
      a3 = v16;
    }
  }

  v13 = *(a1 + 192);
  if (v13)
  {
    C3DMatrix4x4SetTranslation(v13, a3);
  }

  else
  {
    memset(v17, 0, sizeof(v17));
    C3DMatrix4x4SetTranslation(v17, a3);
    C3DNodeSetPivotMatrix(a1, v17);
  }

  v15 = *(a1 + 192);
  if (v15)
  {
    *(v15 + 124) = 0;
  }

  __C3DNodeTransformDidChange(a1, v14);
}

__n128 C3DNodeComputeWorldMatrix(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeComputeWorldMatrix_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  WorldMatrix = C3DNodeGetWorldMatrix(a1, a2);
  result = *(WorldMatrix + 32);
  v13 = *(WorldMatrix + 48);
  v15 = *WorldMatrix;
  v14 = *(WorldMatrix + 16);
  *(a2 + 32) = result;
  *(a2 + 48) = v13;
  *a2 = v15;
  *(a2 + 16) = v14;
  return result;
}

__n128 C3DNodeComputeWorldTransform(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v4 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeComputeWorldMatrix_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 88) == -1)
  {
    WorldMatrix = C3DNodeGetWorldMatrix(a1, a2);
    result = *(WorldMatrix + 32);
    v22 = *(WorldMatrix + 48);
    v24 = *WorldMatrix;
    v23 = *(WorldMatrix + 16);
    *(a2 + 32) = result;
    *(a2 + 48) = v22;
    *a2 = v24;
    *(a2 + 16) = v23;
  }

  else
  {
    C3DNodeGetMatrix(a1, a2, &v33);
    result = v33;
    v12 = v34;
    v13 = v35;
    v14 = v36;
    v15 = *(a1 + 64);
    if (v15)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v25 = v33;
      v26 = v34;
      v27 = v35;
      v28 = v36;
      C3DNodeComputeWorldTransform(v15, &v29);
      v16 = 0;
      v17 = v29;
      v18 = v30;
      v19 = v31;
      v20 = v32;
      v37[0] = v25;
      v37[1] = v26;
      v37[2] = v27;
      v37[3] = v28;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      do
      {
        *(&v38 + v16 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(v37[v16])), v18, *&v37[v16], 1), v19, v37[v16], 2), v20, v37[v16], 3);
        ++v16;
      }

      while (v16 != 4);
      result = v38;
      v12 = v39;
      v13 = v40;
      v14 = v41;
    }

    *a2 = result;
    *(a2 + 16) = v12;
    *(a2 + 32) = v13;
    *(a2 + 48) = v14;
  }

  return result;
}

uint64_t C3DNodeGetID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DEntityGetID(a1, a2);
}

uint64_t C3DNodeGetNodeWithName(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, uint64_t a2)
{
  v3 = AnimationPerKeyDictionaryForObject_cold_2;
  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v4 = scn_default_log(0, a2), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DNodeGetNodeWithName_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  v22 = 0;
  v23 = &v22;
  v24 = 0x2000000000;
  v25 = 0;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 0x40000000;
  v21[2] = __C3DNodeGetNodeWithName_block_invoke;
  v21[3] = &unk_2782FE648;
  v21[4] = &v22;
  v21[5] = a2;
  C3DNodeApplyHierarchy(v3, v21);
  v19 = v23[3];
  _Block_object_dispose(&v22, 8);
  return v19;
}

uint64_t __C3DNodeGetNodeWithName_block_invoke(uint64_t a1, uint64_t a2)
{
  result = C3DNodeGetName(a2, a2);
  if (result)
  {
    if (CFEqual(result, *(a1 + 40)))
    {
      *(*(*(a1 + 32) + 8) + 24) = a2;
      return 2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

CFMutableArrayRef C3DNodeCopyNodesWithAttribute(_BOOL8 AnimationPerKeyDictionaryForObject_cold_2, __CFString *a2, char a3)
{
  v5 = AnimationPerKeyDictionaryForObject_cold_2;
  if (!AnimationPerKeyDictionaryForObject_cold_2 && (v6 = scn_default_log(0, a2), AnimationPerKeyDictionaryForObject_cold_2 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    _C3DAnimationManagerGetAnimationPerKeyDictionaryForObject_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(AnimationPerKeyDictionaryForObject_cold_2, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DNodeCopyNodesWithAttribute_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v22 = Mutable;
  if (@"kMeshKey" == a2)
  {
    v23 = v29;
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 0x40000000;
    v29[2] = __C3DNodeCopyNodesWithAttribute_block_invoke;
    v29[3] = &__block_descriptor_tmp_30_0;
    v29[4] = Mutable;
LABEL_11:
    v24 = v23 + 5;
    goto LABEL_12;
  }

  if (@"kDeformerStackKey" == a2)
  {
    v23 = v28;
    v28[0] = MEMORY[0x277D85DD0];
    v28[1] = 0x40000000;
    v28[2] = __C3DNodeCopyNodesWithAttribute_block_invoke_2;
    v28[3] = &__block_descriptor_tmp_31_2;
    v28[4] = Mutable;
    goto LABEL_11;
  }

  v23 = v26;
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 0x40000000;
  v26[2] = __C3DNodeCopyNodesWithAttribute_block_invoke_3;
  v26[3] = &__block_descriptor_tmp_32;
  v26[4] = a2;
  v26[5] = Mutable;
  v24 = &v27;
LABEL_12:
  *v24 = a3;
  C3DNodeApplyHierarchy(v5, v23);
  return v22;
}

uint64_t __C3DNodeCopyNodesWithAttribute_block_invoke(uint64_t a1, const void *a2)
{
  if (C3DNodeGetGeometry(a2, a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __C3DNodeCopyNodesWithAttribute_block_invoke_2(uint64_t a1, const void *a2)
{
  if (C3DNodeGetDeformerStack(a2, a2) && (CFArrayAppendValue(*(a1 + 32), a2), (*(a1 + 40) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

uint64_t __C3DNodeCopyNodesWithAttribute_block_invoke_3(uint64_t a1, const void *a2)
{
  if (C3DEntityHasAttribute(a2, *(a1 + 32)) && (CFArrayAppendValue(*(a1 + 40), a2), (*(a1 + 48) & 1) != 0))
  {
    return 2;
  }

  else
  {
    return 0;
  }
}

CFMutableArrayRef C3DNodeCopyChildNodesPassingTest(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  _C3DNodeCopyChildNodesPassingTest(a1, a2, v3, Mutable);
  return Mutable;
}

uint64_t _C3DNodeCopyChildNodesPassingTest(void *a1, uint64_t a2, int a3, __CFArray *a4)
{
  v19 = 1;
  if ((*(a2 + 16))(a2, a1, &v19))
  {
    CFArrayAppendValue(a4, a1);
  }

  v8 = v19;
  if (v19 == 1 && a3 != 0)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 0x40000000;
    v14 = ___C3DNodeCopyChildNodesPassingTest_block_invoke;
    v15 = &unk_2782FE740;
    v18 = a3;
    v16 = a2;
    v17 = a4;
    v20 = 0;
    v10 = a1[9];
    if (v10)
    {
      v11 = 0;
      do
      {
        v14(v13, v10, v11, &v20);
        if (v20)
        {
          break;
        }

        ++v11;
        v10 = v10[10];
      }

      while (v10);
      v8 = v19;
    }

    else
    {
      v8 = 1;
    }
  }

  return v8 & 1;
}

CFStringRef C3DNodeSetName(uint64_t a1, CFStringRef theString)
{
  if (!a1)
  {
    v4 = scn_default_log(0, theString);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetName(a1, theString);
}

CFTypeRef C3DNodeSetID(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return C3DEntitySetID(a1, cf);
}

void C3DNodeGetWorldAlpha(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 220);
  if ((v10 & 0x20) != 0)
  {
    *(a1 + 256) = *(a1 + 204);
    v11 = *(a1 + 64);
    if (v11)
    {
      C3DNodeGetWorldAlpha(v11, a2);
      *(a1 + 256) = v12 * *(a1 + 256);
      v10 = *(a1 + 220);
    }

    *(a1 + 220) = v10 & 0xFFFFFFDF;
  }
}

void __DirtyWorldAlpha(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 220);
  if (*(result + 72))
  {
    *(result + 220) = v12 & 0xFFFFFFDF;
    v13 = *(result + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = ____DirtyWorldAlpha_block_invoke;
    v14[3] = &__block_descriptor_tmp_163;
    v15 = v2;
    v14[4] = v13;
    C3DNodeApplyHierarchy(result, v14);
  }

  else
  {
    *(result + 220) = v12 | 0x20;
  }
}

uint64_t __UpdateCullingSystemFlags(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 48);
  if (result)
  {
    v4 = a2;
    result = C3DSceneGetCullingSystem(result, a2);
    if (result)
    {
      if (v4)
      {
        v6[0] = MEMORY[0x277D85DD0];
        v6[1] = 0x40000000;
        v6[2] = ____UpdateCullingSystemFlags_block_invoke;
        v6[3] = &__block_descriptor_tmp_165;
        v6[4] = result;
        return C3DNodeApplyHierarchy(a1, v6);
      }

      else
      {
        v5 = *(a1 + 216);
        if (v5 != -1)
        {

          return C3DCullingSystemUpdateFlags(result, v5);
        }
      }
    }
  }

  return result;
}

BOOL C3DNodeIsHiddenOrIsHiddenByAncestor(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (C3DNodeIsHidden(a1, a2))
  {
    return 1;
  }

  do
  {
    v2 = *(v2 + 64);
    v4 = v2 != 0;
  }

  while (v2 && !C3DNodeIsHidden(v2, v3));
  return v4;
}

float C3DNodeIsHiddenOrTransparentOrIsHiddenOrTransparentByAncestor(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (!C3DNodeIsHiddenOrTransparent(a1, a2))
  {
    do
    {
      v2 = *(v2 + 64);
      if (!v2)
      {
        break;
      }

      if (*(v2 + 200))
      {
        break;
      }

      result = *(v2 + 204);
    }

    while (result > 0.0);
  }

  return result;
}

BOOL C3DNodeIsHiddenOrTransparent(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 200) & 1) != 0 || *(a1 + 204) <= 0.0;
}

uint64_t __UpdateNodeVisibilityIfNeeded(uint64_t result, uint64_t a2)
{
  v2 = *(result + 48);
  if (v2)
  {
    v3 = a2;
    v4 = result;
    ShouldBePutInCullingSystem = C3DNodeShouldBePutInCullingSystem(result, a2);
    if (ShouldBePutInCullingSystem && *(v4 + 216) == -1)
    {
      v7 = scn_default_log(ShouldBePutInCullingSystem, v6);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        __UpdateNodeVisibilityIfNeeded_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
      }
    }

    __UpdateCullingSystemFlags(v4, 1);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 0x40000000;
    v15[2] = ____UpdateNodeVisibilityIfNeeded_block_invoke;
    v15[3] = &__block_descriptor_tmp_168;
    v16 = v3;
    v15[4] = v4;
    v15[5] = v2;
    return C3DNodeApplyHierarchy(v4, v15);
  }

  return result;
}

BOOL C3DNodeIsAncestor(_BOOL8 a1, uint64_t a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DNodeIsAncestor_cold_2(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  do
  {
LABEL_6:
    v3 = *(v3 + 64);
  }

  while (v3 != a2 && v3 != 0);
  return v3 != 0;
}

void *C3DNodeFindCommonAncestor(CFArrayRef theArray, uint64_t a2)
{
  if (!theArray)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DNodeFindCommonAncestor_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    return 0;
  }

  v12 = Count;
  ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);
  if (v12 >= 2)
  {
    for (i = 1; i != v12; ++i)
    {
      v15 = CFArrayGetValueAtIndex(theArray, i);
      if (!ValueAtIndex)
      {
        break;
      }

      while (!v15)
      {
LABEL_12:
        ValueAtIndex = ValueAtIndex[8];
        if (!ValueAtIndex)
        {
          return ValueAtIndex;
        }
      }

      v16 = v15;
      while (v16 != ValueAtIndex)
      {
        v16 = v16[8];
        if (!v16)
        {
          goto LABEL_12;
        }
      }
    }
  }

  return ValueAtIndex;
}

const __CFNumber *C3DNodeGetRenderingOrder(_BOOL8 a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  result = C3DEntityGetAttribute(a1, @"kRenderingPriorityKey");
  if (result)
  {
    valuePtr = 0;
    CFNumberGetValue(result, kCFNumberLongType, &valuePtr);
    return valuePtr;
  }

  return result;
}

void C3DNodeSetRenderingOrder(uint64_t *a1, const __CFNumber *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (C3DNodeGetRenderingOrder(a1, a2) != a2)
  {
    if (a2)
    {
      valuePtr = a2;
      v11 = CFNumberCreate(0, kCFNumberLongType, &valuePtr);
      C3DEntitySetAttribute(a1, @"kRenderingPriorityKey", v11);
      CFRelease(v11);
    }

    else
    {
      C3DEntitySetAttribute(a1, @"kRenderingPriorityKey", 0);
    }

    C3DScenePostPipelineEvent(a1[6], 5, a1, 0);
  }
}

uint64_t C3DNodeGetCastsShadow(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 222) >> 5) & 1;
}

void C3DNodeSetCastsShadow(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 220);
  if (((((v12 & 0x200000) == 0) ^ v2) & 1) == 0)
  {
    if (v2)
    {
      v13 = 0x200000;
    }

    else
    {
      v13 = 0;
    }

    *(result + 220) = v12 & 0xFFDFFFFF | v13;
    C3DScenePostPipelineEvent(*(result + 48), 5, result, 0);
    __UpdateCullingSystemFlags(result, 0);
  }
}

void C3DNodeSetUsesDepthPrePass(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 220);
  if (((((v12 & 0x4000000) == 0) ^ v2) & 1) == 0)
  {
    if (v2)
    {
      v13 = 0x4000000;
    }

    else
    {
      v13 = 0;
    }

    *(result + 220) = v12 & 0xFBFFFFFF | v13;
    v14 = *(result + 48);
    C3DScenePostPipelineEvent(v14, 8, result, 0);
    C3DScenePostPipelineEvent(v14, 5, result, 0);
    __UpdateCullingSystemFlags(result, 0);
  }
}

uint64_t C3DNodeGetCategoryBitMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 208);
}

uint64_t C3DNodeSetCategoryBitMask(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(a1 + 208) = a2;
  return __UpdateCullingSystemFlags(a1, 0);
}

uint64_t C3DNodeGetMovability(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 220) >> 22) & 1;
}

void C3DNodeSetMovability(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = *(result + 220);
  if (((v12 >> 22) & 1) != v2)
  {
    *(result + 220) = v12 & 0xFFBFFFFF | ((v2 & 1) << 22);
    __UpdateCullingSystemFlags(result, 0);
  }
}

uint64_t C3DNodeSetHittable(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 8;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFFF7 | v2;
  return result;
}

uint64_t C3DNodeSetIsJoint(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFEFF | v2;
  return result;
}

uint64_t C3DNodeSetIsGizmo(uint64_t result, int a2)
{
  if (a2)
  {
    v2 = 0x20000;
  }

  else
  {
    v2 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFDFFFF | v2;
  return result;
}

__C3DMesh *C3DNodeGetPresentationMesh(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 240);
  if (result)
  {
    return C3DGeometryGetRenderingMesh(result, a2);
  }

  return result;
}

__C3DMesh *C3DNodeGetPresentationMeshLegacy(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 240);
  if (!v2)
  {
    return 0;
  }

  v4 = *(a1 + 248);
  if (v4 && (Skinner = C3DDeformerStackGetSkinner(v4, a2)) != 0)
  {

    return C3DSkinnerGetSkinnedMeshLegacy(Skinner, a1);
  }

  else
  {
    Morpher = C3DNodeGetMorpher(a1, a2);
    if (Morpher)
    {

      return C3DMorpherGetMorphedMeshLegacy(Morpher, v8);
    }

    else
    {

      return C3DGeometryGetRenderingMesh(v2, v8);
    }
  }
}

uint64_t C3DNodeHasLight(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 221) >> 1) & 1;
}

void C3DNodeSetLight(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    Light = C3DNodeGetLight(a1, a2);
    if (Light)
    {
      C3DRemoveSceneRef(Light, *(a1 + 48));
      LightingSystem = C3DSceneGetLightingSystem(v11, v13);
      C3DLightingSystemRemove(LightingSystem, a1);
    }
  }

  v15 = C3DGetSceneRef(a1, a2) != 0;
  _C3DEntitySetAttribute(a1, @"kLightKey", a2, v15);
  if (a2)
  {
    v16 = *(a1 + 48);
    if (v16)
    {
      C3DAddSceneRef(a2, v16);
    }
  }

  *(a1 + 220) = *(a1 + 220) & 0xFFFFFDFF | ((a2 != 0) << 9);
  if (a2 && v11)
  {
    v17 = C3DSceneGetLightingSystem(v11, v16);
    C3DLightingSystemAdd(v17, a1);
    C3DLightingSystemLightDidUpdate(v17, a2);
  }

  else if (!a2)
  {
    return;
  }

  if (C3DLightTypeSupportsShadow(a2, v16))
  {
    CastsShadow = C3DLightGetCastsShadow(a2, v18);
    if (CastsShadow)
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance(CastsShadow, v20);
      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEngineContextInvalidatePasses", v11, 0, 1u);
    }
  }
}

const __CFDictionary *C3DNodeGetCamera(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 4) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kCameraKey");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetCamera(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (C3DGetSceneRef(a1, a2))
  {
    Camera = C3DNodeGetCamera(a1, v11);
    if (Camera)
    {
      C3DRemoveSceneRef(Camera, *(a1 + 48));
    }
  }

  v13 = C3DGetSceneRef(a1, v11) != 0;
  _C3DEntitySetAttribute(a1, @"kCameraKey", a2, v13);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFBFF | ((a2 != 0) << 10);
  if (a2)
  {
    v14 = *(a1 + 48);
    if (v14)
    {
      C3DAddSceneRef(a2, v14);
    }
  }
}

void C3DNodeSetPostMorphingDeformers(void *a1, const __CFArray *cf)
{
  v4 = a1[31];
  if (cf && !v4)
  {
    v4 = C3DDeformerStackCreate(a1);
    a1[31] = v4;
  }

  if (v4)
  {
    C3DDeformerStackSetPostMorphingDeformers(v4, cf);
    IsEmpty = C3DDeformerStackIsEmpty(v4, v5);
    if (IsEmpty)
    {
      IsEmpty = a1[31];
      if (IsEmpty)
      {
        CFRelease(IsEmpty);
        a1[31] = 0;
      }
    }

    if (a1[6])
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance(IsEmpty, v7);

      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
    }
  }
}

void C3DNodeSetPostSkinningDeformers(void *a1, const __CFArray *cf)
{
  v4 = a1[31];
  if (cf && !v4)
  {
    v4 = C3DDeformerStackCreate(a1);
    a1[31] = v4;
  }

  if (v4)
  {
    C3DDeformerStackSetPostSkinningDeformers(v4, cf);
    IsEmpty = C3DDeformerStackIsEmpty(v4, v5);
    if (IsEmpty)
    {
      IsEmpty = a1[31];
      if (IsEmpty)
      {
        CFRelease(IsEmpty);
        a1[31] = 0;
      }
    }

    if (a1[6])
    {
      SharedInstance = C3DNotificationCenterGetSharedInstance(IsEmpty, v7);

      C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationEntityAttributeDidChange", a1, @"kDeformerStackKey", 1u);
    }
  }
}

const __CFDictionary *C3DNodeGetLightmapInfo(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 8) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kLightmapInfoKey");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetLightmapInfo(uint64_t a1, const __CFDictionary *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = C3DGetSceneRef(a1, a2) != 0;
  _C3DEntitySetAttribute(a1, @"kLightmapInfoKey", a2, v11);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFF7FF | ((a2 != 0) << 11);
}

void C3DNodeSetRendererDelegate(uint64_t a1, const __CFDictionary *a2)
{
  v3 = a1;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = C3DGetSceneRef(v3, a2) != 0;
  _C3DEntitySetAttribute(v3, @"rendererDelegate", a2, v11);
  if ((a2 != 0) == ((*(v3 + 220) & 0x2000) == 0))
  {
    *(v3 + 220) = *(v3 + 220) & 0xFFFFDFFF | ((a2 != 0) << 13);
    __UpdateCullingSystemFlags(v3, 0);
    do
    {
      *(v3 + 220) |= 2u;
      v3 = *(v3 + 64);
    }

    while (v3);
  }
}

const __CFDictionary *C3DNodeGetParticleSystems(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 222) & 4) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kParticleSystem");
  }

  else
  {
    return 0;
  }
}

CFIndex C3DNodeGetCountOfParticleSystems(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 222) & 4) == 0)
  {
    return 0;
  }

  Attribute = C3DEntityGetAttribute(a1, @"kParticleSystem");
  return CFArrayGetCount(Attribute);
}

void C3DNodeAddParticleSystem(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  CountOfParticleSystems = C3DNodeGetCountOfParticleSystems(v3, a2);
  C3DNodeInsertParticleSystemAtIndex(v3, a2, CountOfParticleSystems);
}

void C3DNodeInsertParticleSystemAtIndex(_BOOL8 a1, void *a2, CFIndex a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(v5, @"kParticleSystem");
  if (!Attribute)
  {
    Attribute = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    C3DEntitySetAttribute(v5, @"kParticleSystem", Attribute);
    CFRelease(Attribute);
  }

  CFArrayInsertValueAtIndex(Attribute, a3, a2);
  *(v5 + 220) |= 0x40000u;
  v22 = *(v5 + 48);
  if (v22)
  {
    ParticleManager = C3DSceneGetParticleManager(*(v5 + 48), 1);
    if (ParticleManager)
    {
      C3DParticleManagerAddSystem(ParticleManager, v5, a2, 0);
    }

    C3DAddSceneRef(a2, v22);
  }
}

void C3DNodeRemoveAllParticleSystems(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    ParticleManager = C3DSceneGetParticleManager(v10, 1);
  }

  else
  {
    ParticleManager = 0;
  }

  if (C3DGetSceneRef(a1, a2))
  {
    ParticleSystems = C3DNodeGetParticleSystems(a1, v12);
    if (ParticleSystems)
    {
      v14 = ParticleSystems;
      Count = CFArrayGetCount(ParticleSystems);
      if (Count >= 1)
      {
        v16 = Count;
        for (i = 0; i != v16; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
          v20 = C3DGetSceneRef(a1, v19);
          C3DRemoveSceneRef(ValueAtIndex, v20);
        }
      }
    }
  }

  C3DEntitySetAttribute(a1, @"kParticleSystem", 0);
  if (ParticleManager)
  {
    C3DParticleManagerRemoveAllInstanceOfSystemsOnNode(ParticleManager, a1);
  }

  *(a1 + 220) &= ~0x40000u;
}

void C3DNodeRemoveParticleSystem(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(v5, @"kParticleSystem");
  if (Attribute)
  {
    v22 = Attribute;
    v24.length = CFArrayGetCount(Attribute);
    v24.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v22, v24, a2);
    C3DNodeRemoveParticleSystemAtIndex(v5, FirstIndexOfValue, a3);
  }
}

void C3DNodeRemoveParticleSystemAtIndex(uint64_t a1, CFIndex a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Attribute = C3DEntityGetAttribute(a1, @"kParticleSystem");
  if (Attribute)
  {
    v15 = Attribute;
    if (a2 < 0 || CFArrayGetCount(Attribute) <= a2)
    {
      ValueAtIndex = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v15, a2);
      CFArrayRemoveValueAtIndex(v15, a2);
    }

    if (CFArrayGetCount(v15))
    {
      *(a1 + 220) &= ~0x40000u;
    }

    if (ValueAtIndex)
    {
      v18 = C3DGetSceneRef(a1, v17);
      C3DRemoveSceneRef(ValueAtIndex, v18);
      if (a3)
      {
        v19 = *(a1 + 48);
        if (v19)
        {
          ParticleManager = C3DSceneGetParticleManager(v19, 0);
          if (ParticleManager)
          {
            C3DParticleManagerRemoveSystem(ParticleManager, a1, ValueAtIndex);
          }
        }
      }
    }
  }
}

void C3DNodeReplaceParticleSystemAtIndex(_BOOL8 a1, void *cf, CFIndex a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, cf), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, cf, v7, v8, v9, v10, v11, v12);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    CFRetain(cf);
    C3DNodeRemoveParticleSystemAtIndex(v5, a3, 1);
    C3DNodeInsertParticleSystemAtIndex(v5, cf, a3);
    CFRelease(cf);
    return;
  }

  v13 = scn_default_log(a1, cf);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

  C3DNodeRemoveParticleSystemAtIndex(v5, a3, 1);
  C3DNodeInsertParticleSystemAtIndex(v5, 0, a3);
}

const __CFDictionary *C3DNodeGetAudioPlayers(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 222) & 8) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kAudioPlayer");
  }

  else
  {
    return 0;
  }
}

CFIndex C3DNodeGetCountOfAudioPlayers(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 222) & 8) == 0)
  {
    return 0;
  }

  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  return CFArrayGetCount(Attribute);
}

uint64_t C3DNodeAddAudioPlayer(_BOOL8 a1, void *a2)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, a2), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddAudioPlayer_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
  }

LABEL_6:
  CountOfAudioPlayers = C3DNodeGetCountOfAudioPlayers(v3, a2);
  C3DNodeInsertAudioPlayerAtIndex(v3, a2, CountOfAudioPlayers);
  result = C3DNodeIsHiddenOrIsHiddenByAncestor(v3, v19);
  if ((result & 1) == 0)
  {
    return C3DAudioPlayerPlay(a2);
  }

  return result;
}

uint64_t C3DNodeInsertAudioPlayerAtIndex(_BOOL8 a1, void *a2, CFIndex a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddAudioPlayer_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(v5, @"kAudioPlayer");
  if (!Attribute)
  {
    Attribute = CFArrayCreateMutable(0, 0, MEMORY[0x277CBF128]);
    C3DEntitySetAttribute(v5, @"kAudioPlayer", Attribute);
    CFRelease(Attribute);
  }

  CFArrayInsertValueAtIndex(Attribute, a3, a2);
  *(v5 + 220) |= 0x80000u;
  WorldMatrix = C3DNodeGetWorldMatrix(v5, v22);
  C3DAudioPlayerSetTransform(a2, WorldMatrix);
  return C3DAudioManagerAddVoice(a2);
}

void C3DNodeRemoveAllAudioPlayers(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  if (Attribute)
  {
    Count = CFArrayGetCount(Attribute);
    if (Count >= 1)
    {
      v13 = Count;
      do
      {
        C3DNodeRemoveAudioPlayerAtIndex(a1, 0, 1);
        --v13;
      }

      while (v13);
    }

    C3DEntitySetAttribute(a1, @"kAudioPlayer", 0);
  }

  *(a1 + 220) &= ~0x80000u;
}

void C3DNodeRemoveAudioPlayerAtIndex(uint64_t a1, uint64_t a2, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Attribute = C3DEntityGetAttribute(a1, @"kAudioPlayer");
  if (Attribute)
  {
    v15 = Attribute;
    ValueAtIndex = CFArrayGetValueAtIndex(Attribute, a2);
    v17 = ValueAtIndex;
    if (ValueAtIndex)
    {
      CFRetain(ValueAtIndex);
    }

    CFArrayRemoveValueAtIndex(v15, a2);
    if (CFArrayGetCount(v15))
    {
      *(a1 + 220) &= ~0x80000u;
    }

    if (a3)
    {
      C3DAudioManagerRemoveVoice(v17);
    }

    SCNAudioPlayerWasRemovedFromNode(v17);
    if (v17)
    {
      CFRelease(v17);
    }
  }
}

void C3DNodeRemoveAudioPlayer(_BOOL8 a1, const void *a2, int a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Attribute = C3DEntityGetAttribute(v5, @"kAudioPlayer");
  if (Attribute)
  {
    v22 = Attribute;
    v24.length = CFArrayGetCount(Attribute);
    v24.location = 0;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v22, v24, a2);
    if (FirstIndexOfValue != -1)
    {
      C3DNodeRemoveAudioPlayerAtIndex(v5, FirstIndexOfValue, a3);
    }
  }
}

void C3DNodeReplaceAudioPlayerAtIndex(_BOOL8 a1, void *cf, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, cf), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v6, cf, v7, v8, v9, v10, v11, v12);
    if (cf)
    {
      goto LABEL_4;
    }
  }

  else if (cf)
  {
LABEL_4:
    CFRetain(cf);
    C3DNodeRemoveAudioPlayerAtIndex(v5, a3, 1);
    C3DNodeInsertAudioPlayerAtIndex(v5, cf, a3);
    WorldMatrix = C3DNodeGetWorldMatrix(v5, v13);
    C3DAudioPlayerSetTransform(cf, WorldMatrix);
    CFRelease(cf);
    return;
  }

  v15 = scn_default_log(a1, cf);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DNodeAddParticleSystem_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

  C3DNodeRemoveAudioPlayerAtIndex(v5, a3, 1);
  C3DNodeInsertAudioPlayerAtIndex(v5, 0, a3);
  v24 = C3DNodeGetWorldMatrix(v5, v23);
  C3DAudioPlayerSetTransform(0, v24);
}

void __UpdateAudioTransform(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(result + 222) & 8) != 0)
  {
    Attribute = C3DEntityGetAttribute(result, @"kAudioPlayer");
    if (!Attribute)
    {
      v13 = scn_default_log(0, v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        __UpdateAudioTransform_cold_2(v13, v11, v14, v15, v16, v17, v18, v19);
      }
    }

    WorldMatrix = C3DNodeGetWorldMatrix(result, v11);
    Count = CFArrayGetCount(Attribute);
    if (Count >= 1)
    {
      v22 = Count;
      for (i = 0; i != v22; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Attribute, i);
        C3DAudioPlayerSetTransform(ValueAtIndex, WorldMatrix);
      }
    }
  }
}

uint64_t C3DNodeHasConstraints(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 222) & 1;
}

const __CFDictionary *C3DNodeGetConstraints(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if (*(a1 + 222))
  {
    return C3DEntityGetAttribute(a1, @"kConstraints");
  }

  else
  {
    return 0;
  }
}

void C3DNodeSetConstraints(uint64_t a1, const __CFArray *a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (C3DGetSceneRef(a1, a2))
  {
    Constraints = C3DNodeGetConstraints(a1, v11);
    if (Constraints)
    {
      v13 = Constraints;
      Count = CFArrayGetCount(Constraints);
      if (Count >= 1)
      {
        v15 = Count;
        for (i = 0; i != v15; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v13, i);
          v19 = C3DGetSceneRef(a1, v18);
          C3DRemoveSceneRef(ValueAtIndex, v19);
        }
      }
    }
  }

  v20 = C3DGetSceneRef(a1, v11) != 0;
  _C3DEntitySetAttribute(a1, @"kConstraints", a2, v20);
  *(a1 + 220) = *(a1 + 220) & 0xFFFEFFFF | ((a2 != 0) << 16);
  v21 = *(a1 + 48);
  if (v21)
  {
    C3DSceneRegisterNodeConstrains(*(a1 + 48), a1);
    if (a2)
    {
      v22 = CFArrayGetCount(a2);
      if (v22 >= 1)
      {
        v23 = v22;
        for (j = 0; j != v23; ++j)
        {
          v25 = CFArrayGetValueAtIndex(a2, j);
          C3DAddSceneRef(v25, v21);
        }
      }
    }
  }
}

void C3DNodeSetHasPhysicsBody(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 64;
  }

  else
  {
    v12 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFFFFFBF | v12;
}

uint64_t C3DNodeGetHasPhysicsBody(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 220) >> 6) & 1;
}

void C3DNodeSetHasPhysicsField(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 0x100000;
  }

  else
  {
    v12 = 0;
  }

  *(result + 220) = *(result + 220) & 0xFFEFFFFF | v12;
}

uint64_t C3DNodeGetHasPhysicsField(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 222) >> 4) & 1;
}

void C3DNodeSetFilters(uint64_t a1, CFArrayRef theArray)
{
  if (!a1 && (v4 = scn_default_log(0, theArray), os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    C3DGeometryTrackNode_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    if (theArray)
    {
      goto LABEL_4;
    }
  }

  else if (theArray)
  {
LABEL_4:
    v12 = (CFArrayGetCount(theArray) > 0) << 14;
    goto LABEL_7;
  }

  v12 = 0;
LABEL_7:
  *(a1 + 220) = *(a1 + 220) & 0xFFFFBFFF | v12;
  v19 = kC3DCIFilterParamControllerCallbacks;
  v20 = off_2817423B8;
  v13 = C3DAnimatableParamControllerCreate(theArray, &v19);
  v15 = C3DGetSceneRef(a1, v14) != 0;
  _C3DEntitySetAttribute(a1, @"kFilterKey", v13, v15);
  CFRelease(v13);
  __PropagateFlagsToChildren(a1, (*(a1 + 220) >> 14) & 1, (*(a1 + 220) >> 23) & 7);
  v16 = *(a1 + 48);
  if (v16)
  {
    C3DSceneRegisterNodeFilters(*(a1 + 48), a1);
    __UpdateCullingHandle(a1, v16);
    EnginePipeline = C3DSceneGetEnginePipeline(v16, v17);
    C3DEnginePipelineRemoveNodeFromRendering(EnginePipeline, a1);
    __UpdateNodeVisibilityIfNeeded(a1, 1);
  }
}

void __PropagateFlagsToChildren(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(result + 220);
  v15 = (v14 >> 7) & 0x80;
  if (v4)
  {
    v15 = 128;
  }

  *(result + 220) = v15 & 0xFC7FFFFF | ((a3 & 7) << 23) | v14 & 0xFC7FFF7F;
  for (i = *(result + 72); i; i = *(i + 80))
  {
    __PropagateFlagsToChildren(i, (*(result + 220) >> 7) & 1, a3);
  }
}

const __CFDictionary *C3DNodeGetFiltersParamController(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  if ((*(a1 + 221) & 0x40) != 0)
  {
    return C3DEntityGetAttribute(a1, @"kFilterKey");
  }

  else
  {
    return 0;
  }
}

uint64_t C3DNodeGetRendererElementSpan(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DGeometryTrackNode_cold_2(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 224);
}

void C3DNodeSetLayerIndex(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (a2 >= 4)
  {
    v4 = scn_default_log(result, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DNodeSetLayerIndex_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 220) = *(result + 220) & 0xFC7FFFFF | ((v2 & 7) << 23);
}

id _C3DNodeCFFinalize(uint64_t a1, uint64_t a2)
{
  Geometry = C3DNodeGetGeometry(a1, a2);
  if (Geometry)
  {
    C3DGeometryUntrackNode(Geometry, a1);
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance(Geometry, v4);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationNodeWillDie", a1, 0, 1u);
  v7 = *(a1 + 192);
  if (v7)
  {
    free(v7);
  }

  if ((*(a1 + 222) & 8) != 0)
  {
    C3DNodeRemoveAllAudioPlayers(a1, v6);
  }

  v8 = *(a1 + 72);
  if (v8)
  {
    do
    {
      v9 = v8[8];
      if (v9 == a1)
      {
        v8[8] = 0;
      }

      else if (v9)
      {
        v10 = scn_default_log(v7, v6);
        if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeCFFinalize_cold_1(&v17, v18, v10);
        }
      }

      v11 = v8[10];
      v8[10] = 0;
      CFRelease(v8);
      v8 = v11;
    }

    while (v11);
  }

  v12 = *(a1 + 80);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 80) = 0;
  }

  v13 = *(a1 + 240);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 240) = 0;
  }

  v14 = *(a1 + 248);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 248) = 0;
  }

  v15 = *(a1 + 232);
  if (v15)
  {
    free(v15);
  }

  return C3DEntityCFFinalize(a1, v6);
}

__CFString *_C3DNodeCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x277CBECE8], 0);
  Name = C3DNodeGetName(a1, v3);
  CFStringAppendFormat(Mutable, 0, @"<C3DNode:%p %@\n", a1, Name);
  Geometry = C3DNodeGetGeometry(a1, v5);
  CFStringAppendFormat(Mutable, 0, @"  geometry: %@\n", Geometry);
  v8 = *(a1 + 220);
  if ((v8 & 0x200) != 0)
  {
    Light = C3DNodeGetLight(a1, v7);
    CFStringAppendFormat(Mutable, 0, @"  light: %@\n", Light);
    v8 = *(a1 + 220);
  }

  if ((v8 & 0x400) != 0)
  {
    Camera = C3DNodeGetCamera(a1, v7);
    CFStringAppendFormat(Mutable, 0, @"  camera: %@\n", Camera);
  }

  v11 = *(a1 + 248);
  if (v11)
  {
    Skinner = C3DDeformerStackGetSkinner(v11, v7);
    if (Skinner)
    {
      CFStringAppendFormat(Mutable, 0, @"  skinner: %@\n", Skinner);
    }
  }

  Morpher = C3DNodeGetMorpher(a1, v7);
  if (Morpher)
  {
    CFStringAppendFormat(Mutable, 0, @"  morpher: %@\n", Morpher);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

BOOL _C3DNodeInitWithPropertyList(_BOOL8 a1, const __CFDictionary *a2, uint64_t a3, CFErrorRef *a4)
{
  v7 = a1;
  v95 = *MEMORY[0x277D85DE8];
  valuePtr = 0;
  if (!a1 && (v8 = scn_default_log(0, a2), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    _C3DGeometryFillLibraryForSerialization_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    if (a2)
    {
      goto LABEL_6;
    }
  }

  else if (a2)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    _C3DGeometryFinalizeDeserialization_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  v23 = C3DEntityInitWithPropertyList(v7, a2);
  if ((v23 & 1) == 0)
  {
    v38 = scn_default_log(v23, v24);
    result = os_log_type_enabled(v38, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    _C3DNodeInitWithPropertyList_cold_3();
    return 0;
  }

  Attributes = C3DEntityGetAttributes(v7, v24);
  if (Attributes)
  {
    v26 = Attributes;
    Count = CFDictionaryGetCount(Attributes);
    Mutable = CFDictionaryCreateMutable(0, Count, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    context = Mutable;
    CFDictionaryApplyFunction(v26, _fillPatchedDictionay, &context);
    if (context.i64[1])
    {
      if (!Mutable)
      {
        goto LABEL_12;
      }

      C3DEntitySetAttributes(v7, Mutable);
      C3DEntityGetAttributes(v7, v29);
    }

    CFRelease(Mutable);
LABEL_12:
    Value = CFDictionaryGetValue(a2, @"attributes");
    if (Value)
    {
      v31 = Value;
      v32 = CFDictionaryGetValue(Value, @"kSkinnerKey");
      if (v32)
      {
        v34 = v32;
        C3DSkinnerCreate(v32, v33);
        v36 = v35;
        v37 = C3DInitWithPropertyList(v35, v34, a3, a4);
        if (v37)
        {
          C3DNodeSetSkinner(v7, v36);
        }

        CFRelease(v36);
      }

      else
      {
        v37 = 1;
      }

      v40 = CFDictionaryGetValue(v31, @"kMorpherKey");
      if (v40)
      {
        v42 = v40;
        v43 = C3DMorphCreate(v40, v41);
        v45 = C3DMorpherCreateWith(v43, v44);
        CFRelease(v43);
        if ((v37 & C3DInitWithPropertyList(v45, v42, a3, a4)) == 1)
        {
          C3DNodeSetMorpher(v7, v45);
        }

        CFRelease(v45);
      }
    }
  }

  v46 = CFDictionaryGetValue(a2, @"hidden");
  if (v46)
  {
    CFNumberGetValue(v46, kCFNumberShortType, &valuePtr);
    v7[12].n128_u8[8] = valuePtr != 0;
  }

  v47 = CFDictionaryGetValue(a2, @"alpha");
  if (v47)
  {
    CFNumberGetValue(v47, kCFNumberFloatType, &v7[12].n128_f64[1] + 4);
  }

  v48 = CFDictionaryGetValue(a2, @"category");
  if (v48)
  {
    CFNumberGetValue(v48, kCFNumberNSIntegerType, &v7[13]);
  }

  v49 = CFDictionaryGetValue(a2, @"isJoint");
  if (v49)
  {
    v50 = v7[13].n128_u32[3] & 0xFFFFFEFF | ((CFBooleanGetValue(v49) & 1) << 8);
  }

  else
  {
    v50 = v7[13].n128_u32[3] & 0xFFFFFEFF;
  }

  v7[13].n128_u32[3] = v50;
  v51 = CFDictionaryGetValue(a2, @"transforms");
  if (!v51)
  {
    goto LABEL_40;
  }

  v53 = v51;
  v89.n128_u32[2] = 0;
  v89.n128_u64[0] = 0;
  v88 = 0uLL;
  v93 = 0u;
  v94 = 0u;
  context = 0u;
  v92 = 0u;
  v54 = CFDictionaryGetValue(v51, @"matrix4x4");
  if (!v54)
  {
    v59 = CFDictionaryGetValue(v53, @"position");
    if (v59 && C3DVector3InitWithPropertyList(&v89, v59, a3, a4))
    {
      C3DTransformSetPosition(v7 + 6, v89);
      v60 = 1;
    }

    else
    {
      v60 = 0;
    }

    v62 = CFDictionaryGetValue(v53, @"scale");
    if (v62 && C3DVector3InitWithPropertyList(&v89, v62, a3, a4))
    {
      C3DTransformSetScale(&v7[6], v63, v89);
    }

    else
    {
      v60 = 0;
    }

    v64 = CFDictionaryGetValue(v53, @"rotation");
    if (!v64)
    {
      goto LABEL_67;
    }

    v66 = v64;
    v67 = CFDictionaryGetValue(v64, @"quaternion");
    if (v67)
    {
      v68 = C3DVector3InitWithPropertyList(&v88, v67, a3, a4);
      if ((v68 & 1) == 0)
      {
        v74 = scn_default_log(v68, v69);
        if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_5();
        }

        return 0;
      }

      v70 = v88;
    }

    else
    {
      v71 = CFDictionaryGetValue(v66, @"euler");
      if (v71)
      {
        v72 = C3DVector3InitWithPropertyList(&v89, v71, a3, a4);
        if ((v72 & 1) == 0)
        {
          v79 = scn_default_log(v72, v73);
          if (os_log_type_enabled(v79, OS_LOG_TYPE_ERROR))
          {
            _C3DNodeInitWithPropertyList_cold_6();
          }

          return 0;
        }

        C3DTransformSetEuler(v7 + 6, v73, v89);
        goto LABEL_66;
      }

      v75 = CFDictionaryGetValue(v66, @"axisAngle");
      if (v75)
      {
        v76 = C3DVector3InitWithPropertyList(&v88, v75, a3, a4);
        if ((v76 & 1) == 0)
        {
          v84 = scn_default_log(v76, v77);
          if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
          {
            _C3DNodeInitWithPropertyList_cold_7();
          }

          return 0;
        }

        C3DTransformSetAxisAngle(v7 + 6, v77, v88);
        goto LABEL_66;
      }

      v80 = CFDictionaryGetValue(v66, @"matrix4x4");
      if (!v80)
      {
        v85 = scn_default_log(0, v81);
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_10();
        }

        return 0;
      }

      v82 = C3DMatrix4x4InitWithPropertyList(&context, v80, a3, a4);
      if ((v82 & 1) == 0)
      {
        v86 = scn_default_log(v82, v83);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_8();
        }

        return 0;
      }

      v87[0] = context;
      v87[1] = v92;
      v87[2] = v93;
      v87[3] = v94;
      v70.n128_f64[0] = C3DMatrix4x4GetRotation(v87);
      v88 = v70;
    }

    C3DTransformSetQuaternion(v7 + 6, v70, v69);
LABEL_66:
    if (v60)
    {
LABEL_37:
      v57 = CFDictionaryGetValue(v53, @"pivot");
      if (v57)
      {
        v58 = scn_default_log(v57, v52);
        if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeInitWithPropertyList_cold_9();
        }
      }

LABEL_40:
      __C3DNodeTransformDidChange(v7, v52);
      return 1;
    }

LABEL_67:
    v78 = scn_default_log(v64, v65);
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeInitWithPropertyList_cold_11();
      if (!a4)
      {
        return 0;
      }
    }

    else if (!a4)
    {
      return 0;
    }

    if (!*a4)
    {
      *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
    }

    return 0;
  }

  v55 = C3DMatrix4x4InitWithPropertyList(&context, v54, a3, a4);
  if (v55)
  {
    C3DTransformSetMatrix(&v7[6], &context);
    goto LABEL_37;
  }

  v61 = scn_default_log(v55, v56);
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    _C3DNodeInitWithPropertyList_cold_4();
  }

  return 0;
}

__CFDictionary *_C3DNodeCopyPropertyList(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  valuePtr = 0;
  if (!a1)
  {
    v7 = scn_default_log(0, a2);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  Attributes = C3DEntityGetAttributes(a1, a2);
  Morpher = C3DNodeGetMorpher(a1, v15);
  if (Morpher)
  {
    _C3DEntitySetAttribute(a1, @"kMorpherKey", Morpher, 0);
  }

  v18 = *(a1 + 248);
  if (v18 && (Skinner = C3DDeformerStackGetSkinner(v18, v16)) != 0)
  {
    _C3DEntitySetAttribute(a1, @"kSkinnerKey", Skinner, 0);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v21 = C3DEntityCopyPropertyList(a1, a2, a3);
  if (Morpher)
  {
    _C3DEntitySetAttribute(a1, @"kMorpherKey", 0, 0);
  }

  if ((v20 & 1) == 0)
  {
    _C3DEntitySetAttribute(a1, @"kSkinnerKey", 0, 0);
  }

  if (v21)
  {
    Value = CFDictionaryGetValue(v21, @"attributes");
    if (!Value)
    {
      Value = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(v21, @"attributes", Value);
      CFRelease(Value);
    }

    _serializeNodeAttribute(a1, Attributes, @"kMeshKey", a2, Value);
    _serializeNodeAttribute(a1, Attributes, @"kCameraKey", a2, Value);
    _serializeNodeAttribute(a1, Attributes, @"kLightKey", a2, Value);
    _serializeNodeAttribute(a1, Attributes, @"kLightmapInfoKey", a2, Value);
    valuePtr = *(a1 + 200);
    v23 = CFNumberCreate(0, kCFNumberShortType, &valuePtr);
    CFDictionaryAddValue(v21, @"hidden", v23);
    CFRelease(v23);
    v24 = CFNumberCreate(0, kCFNumberFloatType, (a1 + 204));
    CFDictionaryAddValue(v21, @"alpha", v24);
    CFRelease(v24);
    v25 = CFNumberCreate(0, kCFNumberNSIntegerType, (a1 + 208));
    CFDictionaryAddValue(v21, @"category", v25);
    CFRelease(v25);
    if (*(a1 + 221))
    {
      CFDictionaryAddValue(v21, @"isJoint", *MEMORY[0x277CBED28]);
    }

    memset(v31, 0, sizeof(v31));
    C3DNodeGetMatrix(a1, v26, v31);
    v27 = C3DMatrix4x4CopyPropertyList(v31);
    if (v27)
    {
      v28 = v27;
      Mutable = CFDictionaryCreateMutable(0, 1, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      CFDictionaryAddValue(v21, @"transforms", Mutable);
      CFDictionaryAddValue(Mutable, @"matrix4x4", v28);
      CFRelease(v28);
      CFRelease(Mutable);
    }
  }

  return v21;
}

uint64_t _C3DNodeFinalizeDeserialization(uint64_t a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  valuePtr = 0;
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  Attributes = C3DEntityGetAttributes(a1, a2);
  Value = CFDictionaryGetValue(a3, @"attributes");
  if (!Attributes)
  {
    v30 = 1;
    return v30 & 1;
  }

  v17 = Value;
  CFRetain(Attributes);
  v18 = CFDictionaryGetValue(Attributes, @"kMeshKey");
  if (v18)
  {
    v19 = v18;
    v20 = CFGetTypeID(v18);
    if (v20 == CFNumberGetTypeID())
    {
      v21 = CFNumberGetValue(v19, kCFNumberIntType, &valuePtr);
      if (!v21)
      {
        v32 = scn_default_log(v21, v22);
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeFinalizeDeserialization_cold_2();
          if (a4)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v23 = valuePtr;
      TypeID = C3DGeometryGetTypeID(v21, v22);
      RemappedID = C3DLibraryGetRemappedID(a2, v23, TypeID);
      valuePtr = RemappedID;
      v27 = C3DGeometryGetTypeID(RemappedID, v26);
      Entry = C3DLibraryGetEntry(a2, v27, valuePtr);
      if (Entry)
      {
        C3DNodeSetGeometry(a1, Entry);
      }

      else
      {
        v33 = scn_default_log(0, v29);
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_21BEF7000, v33, OS_LOG_TYPE_DEFAULT, "Warning: Node<->attribute inconsistency finalizing deserialization", buf, 2u);
        }

        _C3DEntitySetAttribute(a1, @"kMeshKey", 0, 0);
      }
    }
  }

  v34 = CFDictionaryGetValue(Attributes, @"kCameraKey");
  if (v34)
  {
    v35 = v34;
    v36 = CFGetTypeID(v34);
    if (v36 == CFNumberGetTypeID())
    {
      v37 = CFNumberGetValue(v35, kCFNumberIntType, &valuePtr);
      if (!v37)
      {
        v46 = scn_default_log(v37, v38);
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          _C3DNodeFinalizeDeserialization_cold_2();
          if (a4)
          {
            goto LABEL_36;
          }

          goto LABEL_38;
        }

        goto LABEL_35;
      }

      v39 = valuePtr;
      v40 = C3DCameraGetTypeID(v37, v38);
      v41 = C3DLibraryGetRemappedID(a2, v39, v40);
      valuePtr = v41;
      v43 = C3DCameraGetTypeID(v41, v42);
      v44 = C3DLibraryGetEntry(a2, v43, valuePtr);
      if (v44)
      {
        C3DNodeSetCamera(a1, v44);
      }

      else
      {
        v47 = scn_default_log(0, v45);
        if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
        {
          *v93 = 0;
          _os_log_impl(&dword_21BEF7000, v47, OS_LOG_TYPE_DEFAULT, "Warning: Node<->attribute inconsistency finalizing deserialization", v93, 2u);
        }

        _C3DEntitySetAttribute(a1, @"kCameraKey", 0, 0);
      }
    }
  }

  v48 = CFDictionaryGetValue(Attributes, @"kLightKey");
  if (!v48)
  {
    goto LABEL_42;
  }

  v49 = v48;
  v50 = CFGetTypeID(v48);
  if (v50 != CFNumberGetTypeID())
  {
    goto LABEL_42;
  }

  v51 = CFNumberGetValue(v49, kCFNumberIntType, &valuePtr);
  if (!v51)
  {
    v60 = scn_default_log(v51, v52);
    if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeFinalizeDeserialization_cold_2();
      if (a4)
      {
LABEL_36:
        if (!*a4)
        {
          *a4 = C3DSceneSourceCreateMalformedDocumentError(0);
        }
      }

LABEL_38:
      CFRelease(Attributes);
      return 0;
    }

LABEL_35:
    if (a4)
    {
      goto LABEL_36;
    }

    goto LABEL_38;
  }

  v53 = valuePtr;
  v54 = C3DLightGetTypeID(v51, v52);
  v55 = C3DLibraryGetRemappedID(a2, v53, v54);
  valuePtr = v55;
  v57 = C3DLightGetTypeID(v55, v56);
  v58 = C3DLibraryGetEntry(a2, v57, valuePtr);
  if (v58)
  {
    C3DNodeSetLight(a1, v58);
  }

  else
  {
    v61 = scn_default_log(0, v59);
    if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
    {
      *v92 = 0;
      _os_log_impl(&dword_21BEF7000, v61, OS_LOG_TYPE_DEFAULT, "Warning: Node<->attribute inconsistency finalizing deserialization", v92, 2u);
    }

    _C3DEntitySetAttribute(a1, @"kLightKey", 0, 0);
  }

LABEL_42:
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFBFF | ((C3DEntityGetAttribute(a1, @"kCameraKey") != 0) << 10);
  *(a1 + 220) = *(a1 + 220) & 0xFFFFFDFF | ((C3DEntityGetAttribute(a1, @"kLightKey") != 0) << 9);
  v62 = CFDictionaryGetValue(Attributes, @"kLightmapInfoKey");
  CFRelease(Attributes);
  if (!v62)
  {
    goto LABEL_47;
  }

  v64 = CFDictionaryGetValue(v62, @"image");
  if (v64 && (v64 = CFNumberGetValue(v64, kCFNumberIntType, &valuePtr), v64))
  {
    v66 = valuePtr;
    v67 = C3DImageGetTypeID(v64, v65);
    v68 = C3DLibraryGetRemappedID(a2, v66, v67);
    valuePtr = v68;
    v70 = C3DImageGetTypeID(v68, v69);
    v71 = C3DLibraryGetEntry(a2, v70, valuePtr);
    if (v71)
    {
      v73 = v71;
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v62);
      CFDictionarySetValue(MutableCopy, @"image", v73);
      C3DNodeSetLightmapInfo(a1, MutableCopy);
      CFRelease(MutableCopy);
LABEL_47:
      v75 = *(a1 + 248);
      if (v75)
      {
        Skinner = C3DDeformerStackGetSkinner(v75, v63);
        if (Skinner)
        {
          v77 = CFDictionaryGetValue(v17, @"kSkinnerKey");
          v30 = C3DFinalizeDeserialization(Skinner, a2, v77, a4);
          OverrideMaterial = C3DGeometryGetOverrideMaterial(Skinner);
          if (OverrideMaterial)
          {
            Joints = C3DSkinnerGetJoints(OverrideMaterial);
            v82 = Joints ? C3DGeometryGetMesh(Joints, v81) : 0;
            Geometry = C3DNodeGetGeometry(a1, v81);
            if (Geometry)
            {
              if (v82)
              {
                C3DGeometrySetMesh(Geometry, v82);
              }
            }
          }

          __C3DComputeLocalBoundingBox(a1, v79);
          v84 = 0;
          goto LABEL_67;
        }
      }

      else
      {
        Skinner = 0;
      }

      v84 = 1;
      v30 = 1;
LABEL_67:
      Morpher = C3DNodeGetMorpher(a1, v63);
      if (Morpher)
      {
        v89 = Morpher;
        v90 = CFDictionaryGetValue(v17, @"kMorpherKey");
        v30 &= C3DFinalizeDeserialization(v89, a2, v90, a4);
        if ((v84 & 1) == 0)
        {
          v91 = C3DGeometryGetOverrideMaterial(Skinner);
          if (v91)
          {
            C3DSkinSetInfluencingMorpher(v91, v89);
          }
        }
      }

      return v30 & 1;
    }

    v86 = scn_default_log(0, v72);
    if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeFinalizeDeserialization_cold_5();
    }
  }

  else
  {
    v83 = scn_default_log(v64, v65);
    if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
    {
      _C3DNodeFinalizeDeserialization_cold_6();
    }
  }

  if (!a4 || *a4)
  {
    return 0;
  }

  MalformedDocumentError = C3DSceneSourceCreateMalformedDocumentError(0);
  result = 0;
  *a4 = MalformedDocumentError;
  return result;
}

void _C3DNodeFillLibraryForSerialization(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DGeometryFillLibraryForSerialization_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  if ((*(result + 222) & 2) == 0)
  {
    if (C3DEntityGetAttributes(result, a2))
    {
      Attributes = C3DEntityGetAttributes(result, v13);
      Value = CFDictionaryGetValue(Attributes, @"kLightKey");
      if (Value)
      {
        v16 = Value;
        C3DLibraryAddEntry(a2, Value);
        C3DFillLibraryForSerialization(v16, a2, a3);
      }
    }

    if (C3DEntityGetAttributes(result, v13))
    {
      v18 = C3DEntityGetAttributes(result, v17);
      v19 = CFDictionaryGetValue(v18, @"kCameraKey");
      if (v19)
      {
        v20 = v19;
        C3DLibraryAddEntry(a2, v19);
        C3DFillLibraryForSerialization(v20, a2, a3);
      }
    }

    v21 = *(result + 240);
    if (v21)
    {
      C3DLibraryAddEntry(a2, v21);
      C3DFillLibraryForSerialization(*(result + 240), a2, a3);
    }

    v22 = *(result + 248);
    if (v22)
    {
      Skinner = C3DDeformerStackGetSkinner(v22, v21);
      if (Skinner)
      {
        C3DFillLibraryForSerialization(Skinner, a2, a3);
      }
    }

    Morpher = C3DNodeGetMorpher(result, v21);
    if (Morpher)
    {
      C3DFillLibraryForSerialization(Morpher, a2, a3);
    }

    LightmapInfo = C3DNodeGetLightmapInfo(result, v25);
    if (LightmapInfo)
    {
      v27 = CFDictionaryGetValue(LightmapInfo, @"image");
      if (v27)
      {
        v29 = v27;
        TypeID = C3DImageGetTypeID(v27, v28);
        if (TypeID == CFGetTypeID(v29))
        {
          C3DLibraryAddEntry(a2, v29);
          C3DFillLibraryForSerialization(v29, a2, a3);
        }
      }
    }

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 0x40000000;
    v34 = ___C3DNodeFillLibraryForSerialization_block_invoke;
    v35 = &__block_descriptor_tmp_121;
    v36 = a2;
    v37 = a3;
    v31 = *(result + 72);
    if (v31)
    {
      v32 = 0;
      do
      {
        (v34)(v33, v31, v32++);
        v31 = *(v31 + 80);
      }

      while (v31);
    }
  }
}

void _fillPatchedDictionay(CFStringRef theString, void *value, uint64_t a3)
{
  v5 = *a3;
  if (theString && CFStringHasPrefix(theString, @"kC3D") && (v10.length = CFStringGetLength(theString) - 4, v10.location = 4, v7 = CFStringCreateWithSubstring(0, theString, v10), v8 = CFStringCreateWithFormat(0, 0, @"k%@", v7), CFRelease(v7), v8))
  {
    *(a3 + 8) = 1;
    CFDictionaryAddValue(v5, v8, value);

    CFRelease(v8);
  }

  else
  {

    CFDictionaryAddValue(v5, theString, value);
  }
}

void _serializeNodeAttribute(uint64_t a1, const __CFDictionary *a2, __CFString *theString1, uint64_t a4, __CFDictionary *a5)
{
  if (CFStringCompare(theString1, @"kLightmapInfoKey", 0))
  {
    if (@"kMeshKey" == theString1)
    {
      Value = *(a1 + 240);
      if (!Value)
      {
        return;
      }
    }

    else
    {
      if (!a2)
      {
        return;
      }

      Value = CFDictionaryGetValue(a2, theString1);
      if (!Value)
      {
        return;
      }
    }

    EntryID = C3DLibraryGetEntryID(a4, Value);
    if (!EntryID)
    {
      return;
    }

    v29 = CFNumberCreate(0, kCFNumberIntType, &EntryID);
    CFDictionarySetValue(a5, theString1, v29);
    v28 = v29;
LABEL_18:
    CFRelease(v28);
    return;
  }

  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"kLightmapInfoKey");
    if (v11)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, v11);
      v13 = CFDictionaryGetValue(MutableCopy, @"image");
      if (v13)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        if (v15 == C3DImageGetTypeID(v15, v16))
        {
          v17 = C3DLibraryGetEntryID(a4, v14);
          valuePtr = v17;
          if (!v17)
          {
            v19 = scn_default_log(v17, v18);
            if (os_log_type_enabled(v19, OS_LOG_TYPE_FAULT))
            {
              _serializeNodeAttribute_cold_1(v19, v20, v21, v22, v23, v24, v25, v26);
            }
          }

          v27 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
          CFDictionarySetValue(MutableCopy, @"image", v27);
          CFRelease(v27);
          CFDictionarySetValue(a5, @"kLightmapInfoKey", MutableCopy);
        }
      }

      v28 = MutableCopy;
      goto LABEL_18;
    }
  }
}

__CFArray *_C3DNodeCopyInstanceVariables(uint64_t a1)
{
  Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
  v3 = MEMORY[0x277CBF138];
  v4 = MEMORY[0x277CBF150];
  v5 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x500000001;
  ID = C3DEntityGetID(a1, v6);
  v7 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v8 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v9 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v5, @"name", @"id");
  CFDictionarySetValue(v5, @"type", v7);
  CFDictionarySetValue(v5, @"address", v9);
  CFDictionarySetValue(v5, @"semantic", v8);
  CFArrayAppendValue(Mutable, v5);
  CFRelease(v8);
  CFRelease(v5);
  CFRelease(v9);
  CFRelease(v7);
  v10 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  ID = C3DEntityGetName(a1, v11);
  v12 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v13 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v14 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v10, @"name", @"name");
  CFDictionarySetValue(v10, @"type", v12);
  CFDictionarySetValue(v10, @"address", v14);
  CFDictionarySetValue(v10, @"semantic", v13);
  CFArrayAppendValue(Mutable, v10);
  CFRelease(v13);
  CFRelease(v10);
  CFRelease(v14);
  CFRelease(v12);
  v15 = CFDictionaryCreateMutable(0, 4, v3, v4);
  valuePtr = 0x500000001;
  ID = C3DEntityGetAttributes(a1, v16);
  v17 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v18 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v19 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v15, @"name", @"attributes");
  CFDictionarySetValue(v15, @"type", v17);
  CFDictionarySetValue(v15, @"address", v19);
  CFDictionarySetValue(v15, @"semantic", v18);
  CFArrayAppendValue(Mutable, v15);
  CFRelease(v18);
  CFRelease(v15);
  CFRelease(v19);
  CFRelease(v17);
  v20 = MEMORY[0x277CBF138];
  v21 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], v4);
  valuePtr = 0xB00000000;
  ID = a1 + 96;
  v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v23 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v24 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v21, @"name", @"transforms");
  CFDictionarySetValue(v21, @"type", v22);
  CFDictionarySetValue(v21, @"address", v24);
  CFDictionarySetValue(v21, @"semantic", v23);
  CFArrayAppendValue(Mutable, v21);
  CFRelease(v23);
  CFRelease(v21);
  CFRelease(v24);
  CFRelease(v22);
  v25 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x277CBF150]);
  valuePtr = 0x500000002;
  ID = a1 + 72;
  v26 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v27 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v28 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v25, @"name", @"firstChild");
  CFDictionarySetValue(v25, @"type", v26);
  CFDictionarySetValue(v25, @"address", v28);
  CFDictionarySetValue(v25, @"semantic", v27);
  CFArrayAppendValue(Mutable, v25);
  CFRelease(v27);
  CFRelease(v25);
  CFRelease(v28);
  CFRelease(v26);
  v29 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x277CBF150]);
  valuePtr = 0x500000002;
  ID = a1 + 80;
  v30 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v31 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v32 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v29, @"name", @"nextSibling");
  CFDictionarySetValue(v29, @"type", v30);
  CFDictionarySetValue(v29, @"address", v32);
  CFDictionarySetValue(v29, @"semantic", v31);
  CFArrayAppendValue(Mutable, v29);
  CFRelease(v31);
  CFRelease(v29);
  CFRelease(v32);
  CFRelease(v30);
  v33 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x277CBF150]);
  valuePtr = 0x100000000;
  ID = a1 + 204;
  v34 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v35 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v36 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v33, @"name", @"opacity");
  CFDictionarySetValue(v33, @"type", v34);
  CFDictionarySetValue(v33, @"address", v36);
  CFDictionarySetValue(v33, @"semantic", v35);
  CFArrayAppendValue(Mutable, v33);
  CFRelease(v35);
  CFRelease(v33);
  CFRelease(v36);
  CFRelease(v34);
  v37 = CFDictionaryCreateMutable(0, 4, v20, MEMORY[0x277CBF150]);
  valuePtr = 0x300000000;
  ID = a1 + 200;
  v38 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v39 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v40 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v37, @"name", @"hidden");
  CFDictionarySetValue(v37, @"type", v38);
  CFDictionarySetValue(v37, @"address", v40);
  CFDictionarySetValue(v37, @"semantic", v39);
  CFArrayAppendValue(Mutable, v37);
  CFRelease(v39);
  CFRelease(v37);
  CFRelease(v40);
  CFRelease(v38);
  v41 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  ID = a1 + 64;
  valuePtr = 0;
  v42 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v43 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v44 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v41, @"name", @"parent");
  CFDictionarySetValue(v41, @"type", v42);
  CFDictionarySetValue(v41, @"address", v44);
  CFDictionarySetValue(v41, @"semantic", v43);
  CFArrayAppendValue(Mutable, v41);
  CFRelease(v43);
  CFRelease(v41);
  CFRelease(v44);
  CFRelease(v42);
  v45 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x500000002;
  ID = a1 + 240;
  v46 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v48 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v45, @"name", @"geometry");
  CFDictionarySetValue(v45, @"type", v46);
  CFDictionarySetValue(v45, @"address", v48);
  CFDictionarySetValue(v45, @"semantic", v47);
  CFArrayAppendValue(Mutable, v45);
  CFRelease(v47);
  CFRelease(v45);
  CFRelease(v48);
  CFRelease(v46);
  v49 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  valuePtr = 0x200000000;
  ID = a1 + 208;
  v50 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
  v51 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  v52 = CFNumberCreate(0, kCFNumberLongType, &ID);
  CFDictionarySetValue(v49, @"name", @"categoryBitMask");
  CFDictionarySetValue(v49, @"type", v50);
  CFDictionarySetValue(v49, @"address", v52);
  CFDictionarySetValue(v49, @"semantic", v51);
  CFArrayAppendValue(Mutable, v49);
  CFRelease(v51);
  CFRelease(v49);
  CFRelease(v52);
  CFRelease(v50);
  if (C3DNodeGetMorpher(a1, v53))
  {
    v55 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    valuePtr = 0x500000001;
    ID = C3DNodeGetMorpher(a1, v56);
    v57 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v58 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v59 = CFNumberCreate(0, kCFNumberLongType, &ID);
    CFDictionarySetValue(v55, @"name", @"morpher");
    CFDictionarySetValue(v55, @"type", v57);
    CFDictionarySetValue(v55, @"address", v59);
    CFDictionarySetValue(v55, @"semantic", v58);
    CFArrayAppendValue(Mutable, v55);
    CFRelease(v58);
    CFRelease(v55);
    CFRelease(v59);
    CFRelease(v57);
  }

  v60 = *(a1 + 248);
  if (v60 && C3DDeformerStackGetSkinner(v60, v54))
  {
    v62 = CFDictionaryCreateMutable(0, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    valuePtr = 0x500000001;
    Skinner = *(a1 + 248);
    if (Skinner)
    {
      Skinner = C3DDeformerStackGetSkinner(Skinner, v61);
    }

    ID = Skinner;
    v64 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr + 4);
    v65 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    v66 = CFNumberCreate(0, kCFNumberLongType, &ID);
    CFDictionarySetValue(v62, @"name", @"skinner");
    CFDictionarySetValue(v62, @"type", v64);
    CFDictionarySetValue(v62, @"address", v66);
    CFDictionarySetValue(v62, @"semantic", v65);
    CFArrayAppendValue(Mutable, v62);
    CFRelease(v65);
    CFRelease(v62);
    CFRelease(v66);
    CFRelease(v64);
  }

  return Mutable;
}

uint64_t _C3DNodeGetBoundingBox(float32x4_t *a1, int a2, float32x4_t *a3, float32x4_t *a4)
{
  v10 = 0u;
  v11 = 0u;
  if (a2)
  {
    if (C3DNodeComputeHierarchicalBoundingBox(a1, 1, &v10))
    {
LABEL_3:
      v6 = v10;
      v7 = v11;
      *a3 = vsubq_f32(v10, v11);
      *a4 = vaddq_f32(v6, v7);
      return 1;
    }
  }

  else
  {
    v9 = a1[18];
    v10 = a1[17];
    v11 = v9;
    if ((vminvq_u32(vcgezq_f32(a1[18])) & 0x80000000) != 0)
    {
      goto LABEL_3;
    }
  }

  return 0;
}

uint64_t _C3DNodeGetBoundingSphere(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  if (!a3)
  {
    v6 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      _C3DNodeGetBoundingSphere_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v36 = 0uLL;
  v35 = 0uLL;
  Geometry = C3DNodeGetGeometry(a1, a2);
  if (!Geometry)
  {
LABEL_8:
    if (!a2)
    {
      goto LABEL_27;
    }

    goto LABEL_11;
  }

  v15 = *(a1 + 248);
  if (v15)
  {
    Skinner = C3DDeformerStackGetSkinner(v15, v13);
    if (Skinner)
    {
      v31 = 0u;
      v32 = 0u;
      LOBYTE(Geometry) = C3DSkinnerGetBoundingBox(Skinner, a1, &v31);
      v17 = v31;
      v17.i32[3] = vmaxvq_f32(v32);
      v36 = v17;
      goto LABEL_8;
    }
  }

  LOBYTE(Geometry) = C3DGetBoundingSphere(Geometry, a2, &v36);
  if (!a2)
  {
    goto LABEL_27;
  }

LABEL_11:
  v18 = *(a1 + 72);
  if (v18)
  {
    LODWORD(v19) = 0;
    do
    {
      v19 = (v19 + 1);
      v18 = *(v18 + 80);
    }

    while (v18);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = *(a1 + 72);
        if (i && v21)
        {
          v22 = 1;
          do
          {
            v21 = v21[5].n128_u64[0];
            if (v22 >= i)
            {
              break;
            }

            ++v22;
          }

          while (v21);
        }

        if (C3DGetBoundingSphere(v21, 1, &v35))
        {
          v33 = 0u;
          v34 = 0u;
          v31 = 0u;
          v32 = 0u;
          C3DNodeGetMatrix(v21, v23, &v31);
          Scale = C3DTransformGetScale(v21 + 6, v24);
          *&v26 = C3DTransformBoundingSphere(&v35, &v31, &v35, Scale).n128_u64[0];
          if (Geometry)
          {
            C3DSphereMakeByMergingSpheres(&v36, &v35, &v36, v26, v27, v28, v29);
          }

          else
          {
            v36 = v35;
          }

          LOBYTE(Geometry) = 1;
        }
      }
    }
  }

LABEL_27:
  if ((Geometry & 1) == 0)
  {
    return 0;
  }

  *a3 = v36;
  return 1;
}

void _C3DNodeSetValue(void **a1, void **__dst, unsigned __int32 *__src, size_t __n, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = a1 + 12;
  if (v8 == __dst)
  {
    C3DTransformSetValue(v8, __src, __n, a5, a6, a7);

    __C3DNodeTransformDidChange(a1, v9);
  }

  else if (a1[24] == __dst)
  {

    C3DNodeSetPivotMatrix(a1, __src);
  }

  else if ((a1 + 204) == __dst)
  {
    v10 = *__src;

    C3DNodeSetOpacity(a1, __dst, v10);
  }

  else if (a1 + 25 == __dst)
  {
    v11 = *__src;

    C3DNodeSetHidden(a1, v11);
  }

  else
  {

    memcpy(__dst, __src, __n);
  }
}

void _C3DNodeGetValue(uint64_t a1, const void *a2, void *__dst, size_t __n, int a5, unsigned int a6)
{
  v6 = (a1 + 96);
  if (v6 == a2)
  {
    C3DTransformGetValue(v6, __dst, __n, a5, a6);
  }

  else
  {
    memcpy(__dst, a2, __n);
  }
}

uint64_t _C3DNodeEnumerateSubEntities(void *a1, void (**a2)(void))
{
  Attributes = C3DEntityGetAttributes(a1, a2);
  if (Attributes)
  {
    CFDictionaryApplyFunction(Attributes, _C3DNodeEnumerateAttributeEntities, a2);
  }

  v5 = a1[30];
  if (v5)
  {
    a2[2](a2);
  }

  Morpher = C3DNodeGetMorpher(a1, v5);
  if (Morpher)
  {
    (a2[2])(a2, Morpher);
  }

  v8 = a1[31];
  if (v8)
  {
    Skinner = C3DDeformerStackGetSkinner(v8, v7);
    if (Skinner)
    {
      (a2[2])(a2, Skinner);
    }
  }

  ParticleSystems = C3DNodeGetParticleSystems(a1, v7);
  if (ParticleSystems)
  {
    v12 = ParticleSystems;
    Count = CFArrayGetCount(ParticleSystems);
    if (Count >= 1)
    {
      v14 = Count;
      for (i = 0; i != v14; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v12, i);
        (a2[2])(a2, ValueAtIndex);
      }
    }
  }

  result = C3DNodeGetConstraints(a1, v11);
  if (result)
  {
    v18 = result;
    result = CFArrayGetCount(result);
    if (result >= 1)
    {
      v19 = result;
      for (j = 0; j != v19; ++j)
      {
        v21 = CFArrayGetValueAtIndex(v18, j);
        result = (a2[2])(a2, v21);
      }
    }
  }

  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 0x40000000;
  v25 = ___C3DNodeEnumerateSubEntities_block_invoke;
  v26 = &unk_2782FE6F0;
  v27 = a2;
  v22 = a1[9];
  if (v22)
  {
    v23 = 0;
    do
    {
      result = (v25)(v24, v22, v23++);
      v22 = *(v22 + 80);
    }

    while (v22);
  }

  return result;
}

void _C3DNodeWasAddedToScene(uint64_t a1, uint64_t a2)
{
  TransformTree = C3DSceneGetTransformTree(a2, a2);
  v5 = *(a1 + 64);
  if (v5)
  {
    v6 = *(v5 + 88);
  }

  else
  {
    v6 = -1;
  }

  *(a1 + 88) = C3DTransformTreeAddNode(TransformTree, a1, v6);

  __UpdateCullingHandle(a1, a2);
}

void _C3DNodeWillRemoveFromScene(uint64_t a1, uint64_t a2)
{
  C3DSceneNodeWillBeRemoved(a2, a1);
  if (*(a1 + 88) != -1)
  {
    TransformTree = C3DSceneGetTransformTree(a2, v4);
    if (TransformTree)
    {
      C3DTransformTreeRemoveNode(TransformTree, *(a1 + 88));
    }

    *(a1 + 88) = -1;
  }

  if (*(a1 + 216) != -1)
  {
    CullingSystem = C3DSceneGetCullingSystem(a2, v4);
    if (CullingSystem)
    {
      C3DCullingSystemRemove(CullingSystem, *(a1 + 216));
    }

    *(a1 + 216) = -1;
  }
}

void _C3DNodeFinalizeAddToScene(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 64))
  {
    __UpdateNodeVisibilityIfNeeded(a1, 1);
  }

  v3 = *(a1 + 248);
  if (v3)
  {
    Skinner = C3DDeformerStackGetSkinner(v3, a2);
    if (Skinner)
    {
      v5 = Skinner;
      if (C3DGeometryGetOverrideMaterial(Skinner))
      {

        C3DSkinnerUpdateJointsAndBoundingBox(v5, a1);
      }
    }
  }
}