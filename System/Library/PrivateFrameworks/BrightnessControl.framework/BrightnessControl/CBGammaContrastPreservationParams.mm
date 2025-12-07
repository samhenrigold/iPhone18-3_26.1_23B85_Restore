@interface CBGammaContrastPreservationParams
+ (id)paramsWithProvider:(id)provider;
- (BOOL)isEqual:(id)equal;
- (CBGammaContrastPreservationParams)initWithProvider:(id)provider;
- (void)dealloc;
@end

@implementation CBGammaContrastPreservationParams

+ (id)paramsWithProvider:(id)provider
{
  v3 = [[CBGammaContrastPreservationParams alloc] initWithProvider:provider];

  return v3;
}

- (CBGammaContrastPreservationParams)initWithProvider:(id)provider
{
  v24[20] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v19.receiver = self;
  v19.super_class = CBGammaContrastPreservationParams;
  v5 = [(CBGammaContrastPreservationParams *)&v19 init];
  *(v5 + 1) = os_log_create("com.apple.CoreBrightness.ChromaticCorrection", "gcp");
  *(v5 + 8) = 1084227584;
  v23[0] = @"supports-gcp";
  v23[1] = @"gcp-ramp-up-duration";
  v24[0] = &unk_283743910;
  v24[1] = &unk_2837437C0;
  v23[2] = @"gcp-ramp-down-duration";
  v23[3] = @"gcp-ramp-up-lux-threshold";
  v24[2] = &unk_2837437D0;
  v24[3] = &unk_2837437E0;
  v23[4] = @"gcp-ramp-down-lux-threshold";
  v23[5] = @"gcp-ramp-update-rate";
  v24[4] = &unk_2837437E0;
  v24[5] = &unk_2837437F0;
  v23[6] = @"gcp-reference-white-nits";
  v23[7] = @"gcp-reference-ambient-lux";
  v24[6] = &unk_283743800;
  v24[7] = &unk_283743810;
  v23[8] = kCBGCPGammaMin;
  v23[9] = kCBGCPGammaMax;
  v24[8] = &unk_283743820;
  v24[9] = &unk_283743830;
  v23[10] = kCBGCPGammaFactorLow;
  v23[11] = kCBGCPGammaFactorHigh;
  v24[10] = &unk_283743840;
  v24[11] = &unk_283743850;
  v23[12] = kCBGCPNitsMin;
  v23[13] = kCBGCPNitsMax;
  v24[12] = &unk_2837437E0;
  v24[13] = &unk_283743860;
  v23[14] = kCBGCPAmbientMin;
  v23[15] = kCBGCPAmbientMax;
  v24[14] = &unk_283743870;
  v24[15] = &unk_283743880;
  v23[16] = kCBGCPAmbientFactor;
  v23[17] = kCBGCPKb;
  v24[16] = &unk_283743928;
  v24[17] = &unk_283743890;
  v23[18] = kCBGCPKl;
  v23[19] = kCBGCPASb;
  v24[18] = &unk_2837438A0;
  v24[19] = &unk_2837438B0;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:20];
  v22[0] = provider;
  v22[1] = [CBDictConfigProvider providerWithDict:v6];
  v7 = +[CBCombinedConfigProvider providerFromList:](CBCombinedConfigProvider, "providerFromList:", [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2]);
  [v7 setLogHandle:*(v5 + 1)];
  if (![v7 loadUint:@"supports-gcp" toDestination:v5 + 40] || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-up-duration", v5 + 16) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-down-duration", v5 + 20) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-up-lux-threshold", v5 + 24) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-down-lux-threshold", v5 + 28) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-ramp-update-rate", v5 + 36) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-reference-white-nits", v5 + 44) || !objc_msgSend(v7, "loadFloat:toDestination:", @"gcp-reference-ambient-lux", v5 + 48) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPNitsMin, v5 + 64) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPNitsMax, v5 + 68) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPAmbientMin, v5 + 52) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPAmbientMax, v5 + 56) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPAmbientFactor, v5 + 60) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaMin, v5 + 72) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaMax, v5 + 76) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaFactorLow, v5 + 80) || !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPGammaFactorHigh, v5 + 84) || (v8 = (v5 + 88), !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPASb, v5 + 88)) || (v9 = (v5 + 92), !objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPKb, v5 + 92)) || (v10 = (v5 + 96), (objc_msgSend(v7, "loadFloat:toDestination:", kCBGCPKl, v5 + 96) & 1) == 0))
  {
    [CBGammaContrastPreservationParams initWithProvider:];
  }

  if (*(v5 + 18) >= *(v5 + 19))
  {
    inited = *(v5 + 1);
    if (!inited)
    {
      inited = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        inited = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(inited, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*(v5 + 13) <= 0.0)
  {
    v12 = *(v5 + 1);
    if (!v12)
    {
      v12 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v12 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*(v5 + 16) <= 0.0)
  {
    v13 = *(v5 + 1);
    if (!v13)
    {
      v13 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v13 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*v8 < 0.5 || *v8 > 2.0)
  {
    v14 = *(v5 + 1);
    if (!v14)
    {
      v14 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v14 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*v9 < 1.0 || *v9 > 2.0)
  {
    v15 = *(v5 + 1);
    if (!v15)
    {
      v15 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v15 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

    goto LABEL_61;
  }

  if (*v10 < 0.5 || *v10 > 1.5)
  {
    v16 = *(v5 + 1);
    if (!v16)
    {
      v16 = _COREBRIGHTNESS_LOG_DEFAULT;
      if (!_COREBRIGHTNESS_LOG_DEFAULT)
      {
        v16 = init_default_corebrightness_log();
      }
    }

    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [CBGammaContrastPreservationParams initWithProvider:?];
    }

LABEL_61:
    objc_autoreleasePoolPop(context);

    return 0;
  }

  v20[0] = @"supports-gcp";
  v20[1] = @"gcp-ramp-up-duration";
  v21[0] = @"supported";
  v21[1] = @"rampUpDuration";
  v20[2] = @"gcp-ramp-down-duration";
  v20[3] = @"gcp-ramp-up-lux-threshold";
  v21[2] = @"rampDownDuration";
  v21[3] = @"rampUpLuxDeltaThreshold";
  v20[4] = @"gcp-ramp-down-lux-threshold";
  v20[5] = @"gcp-ramp-update-rate";
  v21[4] = @"rampDownLuxDeltaThreshold";
  v21[5] = @"rampUpdateRate";
  v20[6] = @"gcp-reference-white-nits";
  v20[7] = @"gcp-reference-ambient-lux";
  v21[6] = @"referenceWhiteBrightness";
  v21[7] = @"referenceLux";
  v20[8] = kCBGCPNitsMin;
  v20[9] = kCBGCPNitsMax;
  v21[8] = @"Bmin";
  v21[9] = @"Bmax";
  v20[10] = kCBGCPAmbientMin;
  v20[11] = kCBGCPAmbientMax;
  v21[10] = @"Lmin";
  v21[11] = @"Lmax";
  v20[12] = kCBGCPAmbientFactor;
  v20[13] = kCBGCPGammaMin;
  v21[12] = @"ambientFactor";
  v21[13] = @"gammaMin";
  v20[14] = kCBGCPGammaMax;
  v20[15] = kCBGCPGammaFactorLow;
  v21[14] = @"gammaMax";
  v21[15] = @"gcpFactorLow";
  v20[16] = kCBGCPGammaFactorHigh;
  v20[17] = kCBGCPASb;
  v21[16] = @"gcpFactorHigh";
  v21[17] = @"ASb";
  v20[18] = kCBGCPKb;
  v20[19] = kCBGCPKl;
  v21[18] = @"Kb";
  v21[19] = @"Kl";
  *(v5 + 13) = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:20];
  objc_autoreleasePoolPop(context);
  return v5;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = CBGammaContrastPreservationParams;
  [(CBGammaContrastPreservationParams *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  v17 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    allValues = [(NSDictionary *)[(CBGammaContrastPreservationParams *)self codingKeys] allValues];
    v6 = [(NSArray *)allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v13;
LABEL_4:
      v9 = 0;
      while (1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = [-[CBGammaContrastPreservationParams valueForKey:](self valueForKey:{*(*(&v12 + 1) + 8 * v9)), "isEqual:", objc_msgSend(equal, "valueForKey:", *(*(&v12 + 1) + 8 * v9))}];
        if (!v10)
        {
          break;
        }

        if (v7 == ++v9)
        {
          v7 = [(NSArray *)allValues countByEnumeratingWithState:&v12 objects:v16 count:16];
          LOBYTE(v10) = 1;
          if (v7)
          {
            goto LABEL_4;
          }

          return v10;
        }
      }
    }

    else
    {
      LOBYTE(v10) = 1;
    }
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (double)initWithProvider:(uint64_t)a1 .cold.2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = OUTLINED_FUNCTION_2(a1);
  v3 = *v2;
  v7 = 138413058;
  v8 = v4;
  v9 = 2048;
  v10 = v1;
  v11 = 2112;
  v12 = kCBGCPGammaMax;
  v13 = 2048;
  v14 = v3;
  _os_log_error_impl(&dword_223D10000, v5, OS_LOG_TYPE_ERROR, "Disabling due to invalid config: %@(%f) >= %@(%f)", &v7, 0x2Au);
  return result;
}

- (void)initWithProvider:(uint64_t)a1 .cold.3(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) <= 0", v3, v4, v5, v6);
}

- (void)initWithProvider:(uint64_t)a1 .cold.4(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) <= 0", v3, v4, v5, v6);
}

- (void)initWithProvider:(uint64_t)a1 .cold.5(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) out of sensible range [0.5,1.5]", v3, v4, v5, v6);
}

- (void)initWithProvider:(uint64_t)a1 .cold.6(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) out of sensible range [1,2]", v3, v4, v5, v6);
}

- (void)initWithProvider:(uint64_t)a1 .cold.7(uint64_t a1)
{
  OUTLINED_FUNCTION_2(a1);
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_2(&dword_223D10000, v1, v2, "Disabling due to invalid config: %@(%f) out of sensible range [0.5,2]", v3, v4, v5, v6);
}

@end