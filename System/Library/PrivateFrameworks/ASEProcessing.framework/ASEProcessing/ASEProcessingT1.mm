@interface ASEProcessingT1
- (ASEProcessingT1)initWithConfig:(id *)config aseProcessing:(id)processing productType:(unsigned int)type;
- (id)populateOutputHcus:(aseConfigurationUnitsV3_t *)hcus;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement callback:(id)callback;
- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement outputData:(id *)data;
- (void)DumpArray:(const char *)array type:(int)type array:(void *)a5 count:(unsigned int)count numberPerRow:(unsigned int)row;
- (void)DumpOutputHcus:(id)hcus;
- (void)DumpPiecewiseLinearCurveV3:(const char *)v3 curve:(id *)curve;
- (void)configControlHeader_V3:(aseConfigurationUnitsV3_t *)v3;
- (void)dealloc;
- (void)printAseMeasurementOutput:(id *)output;
- (void)processPixelWithInput:(__IOSurface *)input Measurement:(id *)measurement controlUnitV3:(aseConfigurationUnitsV3_t *)v3;
- (void)processPixelWithInput_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output;
- (void)processPixelWithMeasurement_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output;
- (void)processPixelWithPixelControl_V3:(__IOSurface *)v3 Output:(aseConfigurationUnitsV3_t *)output;
@end

@implementation ASEProcessingT1

- (ASEProcessingT1)initWithConfig:(id *)config aseProcessing:(id)processing productType:(unsigned int)type
{
  v5 = *&type;
  v17 = *MEMORY[0x277D85DE8];
  processingCopy = processing;
  v14.receiver = self;
  v14.super_class = ASEProcessingT1;
  v9 = [(ASEProcessingT0 *)&v14 initWithConfig:config aseProcessing:processingCopy productType:v5];
  v10 = v9;
  if (v9)
  {
    if (!isT1OrNewer(v9->super._productType))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: isT1OrNewer(_productType) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 100\n", buf, 2u);
      }

      if (!isT1OrNewer(v10->super._productType))
      {
        [ASEProcessingT1 initWithConfig:aseProcessing:productType:];
      }
    }

    v10->_msrBaseAddr = getMSRBaseAddr(v10->super._productType, v11);
    v10->_aseControlUnitV3 = malloc_type_malloc(0x5710uLL, 0x10000404333414BuLL);
    if (disableHcuCache)
    {
      if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[ASEProcessingT1 initWithConfig:aseProcessing:productType:]";
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s: HCU Cache disabled!\n", buf, 0xCu);
      }

      v10->_aseControlUnitV3Cache = 0;
    }

    else
    {
      if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v16 = "[ASEProcessingT1 initWithConfig:aseProcessing:productType:]";
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s: HCU Cache enabled!\n", buf, 0xCu);
      }

      v12 = malloc_type_malloc(0x90uLL, 0x1020040206F8E95uLL);
      v10->_aseControlUnitV3Cache = v12;
      initCache(v12);
    }
  }

  return v10;
}

- (void)dealloc
{
  v8 = *MEMORY[0x277D85DE8];
  aseControlUnitV3 = self->_aseControlUnitV3;
  if (aseControlUnitV3)
  {
    free(aseControlUnitV3);
    self->_aseControlUnitV3 = 0;
  }

  aseControlUnitV3Cache = self->_aseControlUnitV3Cache;
  if (aseControlUnitV3Cache)
  {
    deleteCache(aseControlUnitV3Cache);
    self->_aseControlUnitV3Cache = 0;
  }

  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v7 = "[ASEProcessingT1 dealloc]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = ASEProcessingT1;
  [(ASEProcessingT0 *)&v5 dealloc];
}

- (void)DumpArray:(const char *)array type:(int)type array:(void *)a5 count:(unsigned int)count numberPerRow:(unsigned int)row
{
  v24 = *MEMORY[0x277D85DE8];
  if (!count)
  {
    return;
  }

  v10 = 0;
  v11 = count - 1;
  LODWORD(v12) = 512;
  v13 = __str;
  do
  {
    if (v13 == __str)
    {
      v14 = "{";
      if (v10)
      {
        v14 = " ";
      }

      v15 = __snprintf_chk(__str, v12, 0, 0x200uLL, "%s %s", array, v14);
      v13 = &__str[v15];
      LODWORD(v12) = v12 - v15;
    }

    if (type == 1)
    {
      v16 = snprintf(v13, v12, "%s%d");
    }

    else if (type == 2)
    {
      v16 = snprintf(v13, v12, "%s%f");
    }

    else
    {
      v16 = snprintf(v13, v12, "%s%u");
    }

    v13 += v16;
    v12 = v12 - v16;
    v17 = " }";
    countCopy = count;
    if (v10 != v11)
    {
      countCopy = v10 + 1;
      if ((v10 + 1) % row)
      {
        goto LABEL_20;
      }

      v17 = ",";
    }

    snprintf(v13, v12, v17);
    if (logLevel < 3)
    {
      v16 = 0;
      LODWORD(v12) = 512;
      v13 = __str;
    }

    else
    {
      v19 = MEMORY[0x277D86220];
      v16 = os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT);
      v13 = __str;
      if (v16)
      {
        *buf = 136315138;
        v22 = __str;
        _os_log_impl(&dword_23D3F2000, v19, OS_LOG_TYPE_DEFAULT, " [1.50.3] %s\n\n", buf, 0xCu);
        v16 = 0;
      }

      LODWORD(v12) = 512;
    }

LABEL_20:
    v10 = countCopy;
  }

  while (countCopy < count);
  if (v16 && logLevel > 2 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = __str;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] %s\n\n", buf, 0xCu);
  }
}

- (void)DumpPiecewiseLinearCurveV3:(const char *)v3 curve:(id *)curve
{
  v5 = 0;
  v22 = *MEMORY[0x277D85DE8];
  v6 = logLevel;
  p_var2 = &curve->var0[0].var2;
  v8 = MEMORY[0x277D86220];
  do
  {
    if (v6 >= 3)
    {
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *(p_var2 - 2);
        v10 = *(p_var2 - 1);
        v11 = *p_var2;
        *buf = 136316162;
        v3Copy = v3;
        v14 = 1024;
        v15 = v5;
        v16 = 2048;
        v17 = v9;
        v18 = 2048;
        v19 = v10;
        v20 = 2048;
        v21 = v11;
        _os_log_impl(&dword_23D3F2000, v8, OS_LOG_TYPE_DEFAULT, " [1.50.3] %s #%d: { %f, %f, %f }\n", buf, 0x30u);
      }

      v6 = logLevel;
    }

    ++v5;
    p_var2 += 3;
  }

  while (v5 != 32);
}

- (void)DumpOutputHcus:(id)hcus
{
  v458 = *MEMORY[0x277D85DE8];
  hcusCopy = hcus;
  bytes = [hcusCopy bytes];
  if (dumpOutputHcu)
  {
    v6 = bytes;
    if (logLevel >= 3)
    {
      v7 = MEMORY[0x277D86220];
      v8 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v9 = *v6;
        v10 = v6[1];
        *buf = 136315650;
        v443 = "[ASEProcessingT1 DumpOutputHcus:]";
        v444 = 1024;
        v445 = v9;
        v446 = 1024;
        v447 = v10;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: hcuHeader: hcuCount = %d, hcuSize = %d\n", buf, 0x18u);
      }
    }

    v429 = hcusCopy;
    selfCopy = self;
    if (*v6)
    {
      v11 = 0;
      v12 = 0;
      v432 = 0;
      v433 = 0;
      v434 = 0;
      v435 = 0;
      v436 = 0;
      v431 = 0;
      v13 = v6 + 2;
      v14 = MEMORY[0x277D86220];
      while (1)
      {
        if (logLevel >= 3)
        {
          v15 = v14;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v17 = *v13;
            v16 = v13[1];
            *buf = 136316930;
            v443 = "[ASEProcessingT1 DumpOutputHcus:]";
            v444 = 1024;
            v445 = v11;
            v446 = 1024;
            v447 = v16;
            v448 = 1024;
            v449 = v17;
            v450 = 1024;
            v451 = HIBYTE(v17);
            v452 = 1024;
            v453 = BYTE2(v17);
            v454 = 1024;
            v455 = BYTE1(v17);
            v456 = 1024;
            v457 = v17;
            _os_log_impl(&dword_23D3F2000, v14, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: entryHeader[%d]: hcuSize = %d, hcuType = 0x%x ('%c%c%c%c')\n", buf, 0x36u);
          }
        }

        v18 = v13 + 2;
        v19 = *v13;
        if (*v13 <= 1634952557)
        {
          switch(v19)
          {
            case 1634952555:
              v433 = (v13 + 2);
              v18 = v13 + 323;
              break;
            case 1634952556:
              v434 = (v13 + 2);
              v18 = v13 + 529;
              break;
            case 1634952557:
              v436 = (v13 + 2);
              v18 = v13 + 390;
              break;
            default:
              goto LABEL_25;
          }
        }

        else if (v19 > 1634952559)
        {
          if (v19 == 1634952561)
          {
            v432 = v13 + 2;
            v18 = v13 + 130;
          }

          else
          {
            if (v19 != 1634952560)
            {
LABEL_25:
              if (logLevel >= 3)
              {
                v20 = v14;
                if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
                {
                  v21 = *v13;
                  *buf = 136316418;
                  v443 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v444 = 1024;
                  v445 = v21;
                  v446 = 1024;
                  v447 = HIBYTE(v21);
                  v448 = 1024;
                  v449 = BYTE2(v21);
                  v450 = 1024;
                  v451 = BYTE1(v21);
                  v452 = 1024;
                  v453 = v21;
                  _os_log_impl(&dword_23D3F2000, v14, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ERROR: Unsupported HCU!  hcuType = 0x%x ('%c%c%c%c')\n", buf, 0x2Au);
                }
              }

              goto LABEL_32;
            }

            v12 = (v13 + 2);
            v18 = v13 + 8;
          }
        }

        else if (v19 == 1634952558)
        {
          v431 = (v13 + 2);
          v18 = v13 + 7;
        }

        else
        {
          if (v19 != 1634952559)
          {
            goto LABEL_25;
          }

          v435 = (v13 + 2);
          v18 = v13 + 4;
        }

LABEL_32:
        ++v11;
        v13 = v18;
        if (v11 >= *v6)
        {
          goto LABEL_35;
        }
      }
    }

    v431 = 0;
    v432 = 0;
    v435 = 0;
    v436 = 0;
    v433 = 0;
    v434 = 0;
    v12 = 0;
LABEL_35:
    hcusCopy = v429;
    v22 = v12;
    if ((dumpOutputHcu & 2) != 0)
    {
      v356 = logLevel;
      if (v12 && logLevel >= 3)
      {
        v357 = MEMORY[0x277D86220];
        v358 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v443 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", buf, 0xCu);
        }

        v356 = logLevel;
        if (logLevel >= 3)
        {
          v359 = v357;
          if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
          {
            v360 = *v12;
            v361 = v12[1];
            v362 = v12[2];
            v363 = v12[3];
            v364 = v12[4];
            v365 = v12[5];
            *buf = 136316674;
            v443 = "[ASEProcessingT1 DumpOutputHcus:]";
            v444 = 1024;
            v445 = v360;
            v446 = 1024;
            v447 = v361;
            v448 = 1024;
            v449 = v362;
            v450 = 1024;
            v451 = v363;
            v452 = 1024;
            v453 = v364;
            v454 = 1024;
            v455 = v365;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: scalingConfigV3Hcu: DDAInitX = %u, DDAInitY = %u, DDAStepX = 0x%x, DDAStepY = 0x%x, DDAInvStepX = 0x%x, DDAInvStepY = 0x%x\n", buf, 0x30u);
          }

          v356 = logLevel;
        }
      }

      if (v432)
      {
        if (v356 >= 3)
        {
          v366 = MEMORY[0x277D86220];
          v367 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v366, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v443 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", buf, 0xCu);
          }
        }

        snprintf(buf, 0x100uLL, "    %s: scalingCoeffV3Hcu: coeff :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpFloatArray:buf array:v432 count:128 numberPerRow:8];
        v356 = logLevel;
      }

      if (v435 && v356 >= 3)
      {
        v368 = MEMORY[0x277D86220];
        v369 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v370 = v368;
          if (os_log_type_enabled(v368, OS_LOG_TYPE_DEFAULT))
          {
            v371 = *v435;
            v372 = v435[1];
            *v437 = 136315650;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 1024;
            *v440 = v371;
            *&v440[4] = 1024;
            *&v440[6] = v372;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: angleDetectV3Hcu: signChangeThreshold = %u, hfeqThresh2 = %u\n", v437, 0x18u);
          }
        }
      }

      if (v436)
      {
        snprintf(buf, 0x100uLL, "    %s: blendConfigV3Hcu:", "[ASEProcessingT1 DumpOutputHcus:]");
        if (logLevel >= 3)
        {
          v373 = MEMORY[0x277D86220];
          v374 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v373, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
          }

          if (logLevel >= 3)
          {
            v375 = v373;
            if (os_log_type_enabled(v373, OS_LOG_TYPE_DEFAULT))
            {
              *v437 = 136315138;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveEbeFactor]:\n", v437, 0xCu);
            }
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v436];
        if (logLevel >= 3)
        {
          v376 = MEMORY[0x277D86220];
          v377 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v376, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveW_EBE]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v436 + 96];
        if (logLevel >= 3)
        {
          v378 = MEMORY[0x277D86220];
          v379 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v378, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveW_Peaking]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v436 + 192];
        if (logLevel >= 3)
        {
          v380 = MEMORY[0x277D86220];
          v381 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v380, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: blendCurve[kASEBlendCurveLuma]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v436 + 288];
        if (logLevel >= 3)
        {
          v382 = MEMORY[0x277D86220];
          v383 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v382, OS_LOG_TYPE_DEFAULT))
          {
            v384 = *(v436 + 384);
            v385 = *(v436 + 385);
            v386 = *(v436 + 386);
            v387 = *(v436 + 387);
            *v437 = 136316162;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 1024;
            *v440 = v384;
            *&v440[4] = 1024;
            *&v440[6] = v385;
            *v441 = 1024;
            *&v441[2] = v386;
            *&v441[6] = 1024;
            *&v441[8] = v387;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: blendConfigV3Hcu: BlendLogicSkinToneProtection: toneThresh = %u, toneEdgeThresh = %u, toneMaxThresh = %d, toneFactor = %d\n", v437, 0x24u);
          }
        }
      }

      if (v434)
      {
        snprintf(buf, 0x100uLL, "    %s: ebeConfigV3Hcu:", "[ASEProcessingT1 DumpOutputHcus:]");
        if (logLevel >= 3)
        {
          v388 = MEMORY[0x277D86220];
          v389 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v388, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
          }

          if (logLevel >= 3)
          {
            v390 = v388;
            if (os_log_type_enabled(v388, OS_LOG_TYPE_DEFAULT))
            {
              *v437 = 136315138;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveEbeV3]:\n", v437, 0xCu);
            }
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434];
        if (logLevel >= 3)
        {
          v391 = MEMORY[0x277D86220];
          v392 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v391, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf1PosV3]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 96];
        if (logLevel >= 3)
        {
          v393 = MEMORY[0x277D86220];
          v394 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v393, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf1NegV3]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 192];
        if (logLevel >= 3)
        {
          v395 = MEMORY[0x277D86220];
          v396 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v395, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf2V3]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 288];
        if (logLevel >= 3)
        {
          v397 = MEMORY[0x277D86220];
          v398 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v397, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: EBECurve[kASEEBECurveHf3V3]:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v434 + 384];
        if (logLevel >= 3)
        {
          v399 = MEMORY[0x277D86220];
          v400 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v399, OS_LOG_TYPE_DEFAULT))
          {
            v401 = *(v434 + 480);
            v402 = *(v434 + 481);
            v403 = *(v434 + 482);
            *v437 = 136315906;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 1024;
            *v440 = v401;
            *&v440[4] = 1024;
            *&v440[6] = v402;
            *v441 = 1024;
            *&v441[2] = v403;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: ebeConfigV3Hcu: ebeParams: { sdaPenalty1 = %d, sdaPenalty2 = %d, dFfactor = %d }\n", v437, 0x1Eu);
          }
        }

        snprintf(buf, 0x100uLL, "    %s: ebeConfigV3Hcu: lowPass :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpUintArray:buf array:v434 + 483 count:26 numberPerRow:26];
        snprintf(buf, 0x100uLL, "    %s: ebeConfigV3Hcu: weightLut :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpUintArray:buf array:v434 + 509 count:18 numberPerRow:18];
      }

      if (v433)
      {
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu:", "[ASEProcessingT1 DumpOutputHcus:]");
        if (logLevel >= 3)
        {
          v404 = MEMORY[0x277D86220];
          v405 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
          }

          if (logLevel >= 3)
          {
            v406 = v404;
            if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
            {
              v407 = *v433;
              *v437 = 136315394;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 1024;
              *v440 = v407;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: gainForce = %d\n", v437, 0x12u);
            }

            if (logLevel >= 3)
            {
              v408 = v404;
              if (os_log_type_enabled(v404, OS_LOG_TYPE_DEFAULT))
              {
                *v437 = 136315138;
                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: coreGainCurve:\n", v437, 0xCu);
              }
            }
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v433 + 1];
        if (logLevel >= 3)
        {
          v409 = MEMORY[0x277D86220];
          v410 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v409, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: lowAdaptGainCurve:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v433 + 97];
        if (logLevel >= 3)
        {
          v411 = MEMORY[0x277D86220];
          v412 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v411, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: mediumAdaptGainCurve:\n", v437, 0xCu);
          }
        }

        [(ASEProcessingT1 *)selfCopy DumpPiecewiseLinearCurveV3:buf curve:v433 + 193];
        if (logLevel >= 3)
        {
          v413 = MEMORY[0x277D86220];
          v414 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v413, OS_LOG_TYPE_DEFAULT))
          {
            v415 = *(v433 + 289);
            v416 = *(v433 + 290);
            v417 = *(v433 + 291);
            v418 = *(v433 + 292);
            v419 = *(v433 + 293);
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 1024;
            *v440 = v415;
            *&v440[4] = 1024;
            *&v440[6] = v416;
            *v441 = 1024;
            *&v441[2] = v417;
            *&v441[6] = 1024;
            *&v441[8] = v418;
            *&v441[12] = 1024;
            *&v441[14] = v419;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: peakingConfigV3Hcu: peakingGain: adaptive = %u, gain5_3 = %u, gain7_5 = %u, gain11_9 = %u, gain13_11 = %u,\n", v437, 0x2Au);
          }
        }

        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt3 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v433 + 294 count:2 numberPerRow:2];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt5 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v433 + 296 count:3 numberPerRow:3];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt7 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v433 + 299 count:4 numberPerRow:4];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt9 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v433 + 303 count:5 numberPerRow:5];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt11 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v433 + 308 count:6 numberPerRow:6];
        snprintf(buf, 0x100uLL, "    %s: peakingConfigV3Hcu: filt13 :", "[ASEProcessingT1 DumpOutputHcus:]");
        [(ASEProcessingT1 *)selfCopy DumpIntArray:buf array:v433 + 314 count:7 numberPerRow:7];
      }

      if (v431 && logLevel >= 3)
      {
        v420 = MEMORY[0x277D86220];
        v421 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v422 = v420;
          if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
          {
            v423 = *v431;
            v424 = v431[1];
            *v437 = 136315650;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 1024;
            *v440 = v423;
            *&v440[4] = 1024;
            *&v440[6] = v424;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: noiseMeterV3Hcu: NoiseMeter: NoiseMeterConfig: sizeX = %u, sizeY = %u\n", v437, 0x18u);
          }

          if (logLevel >= 3)
          {
            v425 = v420;
            if (os_log_type_enabled(v420, OS_LOG_TYPE_DEFAULT))
            {
              v426 = v431[2];
              v427 = v431[3];
              v428 = v431[4];
              *v437 = 136315906;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 1024;
              *v440 = v426;
              *&v440[4] = 1024;
              *&v440[6] = v427;
              *v441 = 1024;
              *&v441[2] = v428;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: noiseMeterV3Hcu: NoiseMeter: NoiseMeterGainControl: lut0Gain = %u, lut1Gain = %u, lut2Gain = %u\n", v437, 0x1Eu);
            }
          }
        }
      }
    }

    if (dumpOutputHcu)
    {
      if (v435 && logLevel >= 3)
      {
        msrBaseAddr = selfCopy->_msrBaseAddr;
        v24 = MEMORY[0x277D86220];
        v25 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v26 = v24;
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v27 = v435[1];
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 2048;
            *v440 = msrBaseAddr + 39824;
            *&v440[8] = 2080;
            *v441 = "XXXXXXXX";
            *&v441[8] = 2080;
            *&v441[10] = "XXXXXXXX";
            *&v441[18] = 2080;
            *&v441[20] = "XXXXXXXX";
            *&v441[28] = 1024;
            *&v441[30] = v27;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %s %s %08x\n", v437, 0x3Au);
          }

          if (logLevel >= 3)
          {
            v28 = selfCopy->_msrBaseAddr;
            v29 = v24;
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              v30 = *v435 & 7;
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v28 + 39856;
              *&v440[8] = 2080;
              *v441 = "XXXXXXXX";
              *&v441[8] = 1024;
              *&v441[10] = v30;
              *&v441[14] = 2080;
              *&v441[16] = "XXXXXXXX";
              *&v441[24] = 2080;
              *&v441[26] = "XXXXXXXX";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %s %s\n", v437, 0x3Au);
            }
          }
        }
      }

      if (v22 && logLevel >= 3)
      {
        v31 = selfCopy->_msrBaseAddr;
        v32 = MEMORY[0x277D86220];
        v33 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v34 = v32;
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            v35 = v22[3];
            v37 = *v22;
            v36 = v22[1];
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 2048;
            *v440 = v31 + 40448;
            *&v440[8] = 2080;
            *v441 = "XXXXXXXX";
            *&v441[8] = 1024;
            *&v441[10] = v36;
            *&v441[14] = 1024;
            *&v441[16] = v35;
            *&v441[20] = 1024;
            *&v441[22] = v37;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %08x %08x\n", v437, 0x32u);
          }

          if (logLevel >= 3)
          {
            v38 = v32;
            if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v22[2];
              v41 = v22[4];
              v40 = v22[5];
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v31 + 40464;
              *&v440[8] = 1024;
              *v441 = v39;
              *&v441[4] = 1024;
              *&v441[6] = v40;
              *&v441[10] = 1024;
              *&v441[12] = v41;
              *&v441[16] = 2080;
              *&v441[18] = "XXXXXXXX";
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %s\n", v437, 0x32u);
            }
          }
        }
      }

      if (v432)
      {
        v42 = selfCopy->_msrBaseAddr;
        v43 = logLevel;
        if (logLevel >= 3)
        {
          v44 = MEMORY[0x277D86220];
          v45 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
          {
            *v437 = 136315138;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
          }

          v43 = logLevel;
        }

        v46 = v42 + 40576;
        v47 = (v432 + 16);
        v48 = 4;
        v49 = MEMORY[0x277D86220];
        do
        {
          if (v43 >= 3)
          {
            v50 = v49;
            if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
            {
              v51 = float_to_twos_complement(3, 12, *(v47 - 16));
              v52 = v51 | (float_to_twos_complement(3, 12, *(v47 - 15)) << 16);
              v53 = float_to_twos_complement(3, 12, *(v47 - 14));
              v54 = v53 | (float_to_twos_complement(3, 12, *(v47 - 13)) << 16);
              v55 = float_to_twos_complement(3, 12, *(v47 - 12));
              v56 = v55 | (float_to_twos_complement(3, 12, *(v47 - 11)) << 16);
              v57 = float_to_twos_complement(3, 12, *(v47 - 10));
              v58 = float_to_twos_complement(3, 12, *(v47 - 9));
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v46;
              *&v440[8] = 1024;
              *v441 = v52;
              *&v441[4] = 1024;
              *&v441[6] = v54;
              *&v441[10] = 1024;
              *&v441[12] = v56;
              *&v441[16] = 1024;
              *&v441[18] = v57 | (v58 << 16);
              _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
            }

            v43 = logLevel;
            if (logLevel >= 3)
            {
              v59 = v49;
              if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
              {
                v60 = float_to_twos_complement(3, 12, *(v47 - 8));
                v61 = v60 | (float_to_twos_complement(3, 12, *(v47 - 7)) << 16);
                v62 = float_to_twos_complement(3, 12, *(v47 - 6));
                v63 = v62 | (float_to_twos_complement(3, 12, *(v47 - 5)) << 16);
                v64 = float_to_twos_complement(3, 12, *(v47 - 4));
                v65 = v64 | (float_to_twos_complement(3, 12, *(v47 - 3)) << 16);
                v66 = float_to_twos_complement(3, 12, *(v47 - 2));
                v67 = float_to_twos_complement(3, 12, *(v47 - 1));
                *v437 = 136316418;
                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                v439 = 2048;
                *v440 = v46 + 16;
                *&v440[8] = 1024;
                *v441 = v61;
                *&v441[4] = 1024;
                *&v441[6] = v63;
                *&v441[10] = 1024;
                *&v441[12] = v65;
                *&v441[16] = 1024;
                *&v441[18] = v66 | (v67 << 16);
                _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
              }

              v43 = logLevel;
              if (logLevel >= 3)
              {
                v68 = v49;
                if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                {
                  v69 = float_to_twos_complement(3, 12, *v47);
                  v70 = v69 | (float_to_twos_complement(3, 12, v47[1]) << 16);
                  v71 = float_to_twos_complement(3, 12, v47[2]);
                  v72 = v71 | (float_to_twos_complement(3, 12, v47[3]) << 16);
                  v73 = float_to_twos_complement(3, 12, v47[4]);
                  v74 = v73 | (float_to_twos_complement(3, 12, v47[5]) << 16);
                  v75 = float_to_twos_complement(3, 12, v47[6]);
                  v76 = float_to_twos_complement(3, 12, v47[7]);
                  *v437 = 136316418;
                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v439 = 2048;
                  *v440 = v46 + 32;
                  *&v440[8] = 1024;
                  *v441 = v70;
                  *&v441[4] = 1024;
                  *&v441[6] = v72;
                  *&v441[10] = 1024;
                  *&v441[12] = v74;
                  *&v441[16] = 1024;
                  *&v441[18] = v75 | (v76 << 16);
                  _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                }

                v43 = logLevel;
                if (logLevel >= 3)
                {
                  v77 = v49;
                  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
                  {
                    v78 = float_to_twos_complement(3, 12, v47[8]);
                    v79 = v78 | (float_to_twos_complement(3, 12, v47[9]) << 16);
                    v80 = float_to_twos_complement(3, 12, v47[10]);
                    v81 = v80 | (float_to_twos_complement(3, 12, v47[11]) << 16);
                    v82 = float_to_twos_complement(3, 12, v47[12]);
                    v83 = v82 | (float_to_twos_complement(3, 12, v47[13]) << 16);
                    v84 = float_to_twos_complement(3, 12, v47[14]);
                    v85 = float_to_twos_complement(3, 12, v47[15]);
                    *v437 = 136316418;
                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v439 = 2048;
                    *v440 = v46 + 48;
                    *&v440[8] = 1024;
                    *v441 = v79;
                    *&v441[4] = 1024;
                    *&v441[6] = v81;
                    *&v441[10] = 1024;
                    *&v441[12] = v83;
                    *&v441[16] = 1024;
                    *&v441[18] = v84 | (v85 << 16);
                    _os_log_impl(&dword_23D3F2000, v49, OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                  }

                  v43 = logLevel;
                }
              }
            }
          }

          v46 += 64;
          v47 += 32;
          --v48;
        }

        while (v48);
      }

      v86 = v436;
      v87 = selfCopy;
      if (v436 && logLevel >= 3)
      {
        v88 = selfCopy->_msrBaseAddr;
        v89 = MEMORY[0x277D86220];
        v90 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v91 = v88 + 41008;
          v92 = v89;
          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
          {
            v93 = *v436 & 0x7FF | ((v436[3] & 0x7FF) << 16);
            v94 = v436[6] & 0x7FF | ((v436[9] & 0x7FF) << 16);
            v95 = v436[12] & 0x7FF | ((v436[15] & 0x7FF) << 16);
            v96 = v436[18] & 0x7FF | ((v436[21] & 0x7FF) << 16);
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 2048;
            *v440 = v88 + 41008;
            *&v440[8] = 1024;
            *v441 = v93;
            *&v441[4] = 1024;
            *&v441[6] = v94;
            *&v441[10] = 1024;
            *&v441[12] = v95;
            *&v441[16] = 1024;
            *&v441[18] = v96;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
          }

          if (logLevel >= 3)
          {
            v97 = v89;
            if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
            {
              v98 = v436[8];
              v99 = v436[11];
              v100 = v436[2];
              v101 = v436[5];
              v91 = v88 + 41024;
              v102 = v436[1] | (v436[4] << 8) | (v436[7] << 16) | (v436[10] << 24);
              v103 = v436[13] | (v436[16] << 8) | (v436[19] << 16) | (v436[22] << 24);
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v88 + 41024;
              *&v440[8] = 1024;
              *v441 = v102;
              *&v441[4] = 1024;
              *&v441[6] = v103;
              *&v441[10] = 1024;
              *&v441[12] = v100 & 0x1FF | ((v101 & 0x1FF) << 16);
              *&v441[16] = 1024;
              *&v441[18] = v98 & 0x1FF | ((v99 & 0x1FF) << 16);
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
            }

            if (logLevel >= 3)
            {
              v104 = v89;
              if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
              {
                v105 = v436[14] & 0x1FF | ((v436[17] & 0x1FF) << 16);
                v106 = v436[20] & 0x1FF | ((v436[23] & 0x1FF) << 16);
                *v437 = 136316418;
                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                v439 = 2048;
                *v440 = v91 + 16;
                *&v440[8] = 1024;
                *v441 = v105;
                *&v441[4] = 1024;
                *&v441[6] = v106;
                *&v441[10] = 2080;
                *&v441[12] = "XXXXXXXX";
                *&v441[20] = 2080;
                *&v441[22] = "XXXXXXXX";
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %s %s\n", v437, 0x36u);
              }
            }
          }
        }
      }

      if (v434 && logLevel >= 3)
      {
        v107 = selfCopy->_msrBaseAddr;
        v108 = MEMORY[0x277D86220];
        v109 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v110 = v107 + 41216;
          v111 = v108;
          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
          {
            v112 = v434[384] & 0xFFF | ((v434[387] & 0xFFF) << 16);
            v113 = v434[390] & 0xFFF | ((v434[393] & 0xFFF) << 16);
            v114 = v434[396] & 0xFFF | ((v434[399] & 0xFFF) << 16);
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 2048;
            *v440 = v107 + 41216;
            *&v440[8] = 2080;
            *v441 = "XXXXXXXX";
            *&v441[8] = 1024;
            *&v441[10] = v112;
            *&v441[14] = 1024;
            *&v441[16] = v113;
            *&v441[20] = 1024;
            *&v441[22] = v114;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %08x %08x\n", v437, 0x32u);
          }

          if (logLevel >= 3)
          {
            v115 = v108;
            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
            {
              v110 = v107 + 41232;
              v116 = v434[402] & 0xFFF | ((v434[405] & 0xFFF) << 16);
              v117 = *v434 | (v434[3] << 16);
              v118 = v434[6] | (v434[9] << 16);
              v119 = v434[12] | (v434[15] << 16);
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v107 + 41232;
              *&v440[8] = 1024;
              *v441 = v116;
              *&v441[4] = 1024;
              *&v441[6] = v117;
              *&v441[10] = 1024;
              *&v441[12] = v118;
              *&v441[16] = 1024;
              *&v441[18] = v119;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
            }

            if (logLevel >= 3)
            {
              v120 = v108;
              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
              {
                v110 += 16;
                v121 = v434[18] | (v434[21] << 16);
                v122 = v434[24] | (v434[27] << 16);
                v123 = v434[30] | (v434[33] << 16);
                v124 = v434[36] | (v434[39] << 16);
                *v437 = 136316418;
                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                v439 = 2048;
                *v440 = v110;
                *&v440[8] = 1024;
                *v441 = v121;
                *&v441[4] = 1024;
                *&v441[6] = v122;
                *&v441[10] = 1024;
                *&v441[12] = v123;
                *&v441[16] = 1024;
                *&v441[18] = v124;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
              }

              if (logLevel >= 3)
              {
                v125 = v108;
                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                {
                  v110 += 16;
                  v126 = v434[42] | (v434[45] << 16);
                  v127 = v434[2] & 0x3FF | ((v434[5] & 0x3FF) << 16);
                  v128 = v434[8] & 0x3FF | ((v434[11] & 0x3FF) << 16);
                  v129 = v434[14] & 0x3FF | ((v434[17] & 0x3FF) << 16);
                  *v437 = 136316418;
                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v439 = 2048;
                  *v440 = v110;
                  *&v440[8] = 1024;
                  *v441 = v126;
                  *&v441[4] = 1024;
                  *&v441[6] = v127;
                  *&v441[10] = 1024;
                  *&v441[12] = v128;
                  *&v441[16] = 1024;
                  *&v441[18] = v129;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                }

                if (logLevel >= 3)
                {
                  v130 = v108;
                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                  {
                    v110 += 16;
                    v131 = v434[20] & 0x3FF | ((v434[23] & 0x3FF) << 16);
                    v132 = v434[26] & 0x3FF | ((v434[29] & 0x3FF) << 16);
                    v133 = v434[32] & 0x3FF | ((v434[35] & 0x3FF) << 16);
                    v134 = v434[38] & 0x3FF | ((v434[41] & 0x3FF) << 16);
                    *v437 = 136316418;
                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v439 = 2048;
                    *v440 = v110;
                    *&v440[8] = 1024;
                    *v441 = v131;
                    *&v441[4] = 1024;
                    *&v441[6] = v132;
                    *&v441[10] = 1024;
                    *&v441[12] = v133;
                    *&v441[16] = 1024;
                    *&v441[18] = v134;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                  }

                  if (logLevel >= 3)
                  {
                    v135 = v108;
                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                    {
                      v110 += 16;
                      v136 = v434[44] & 0x3FF | ((v434[47] & 0x3FF) << 16);
                      v137 = v434[1] & 0x3FF | ((v434[4] & 0x3FF) << 16);
                      v138 = v434[7] & 0x3FF | ((v434[10] & 0x3FF) << 16);
                      v139 = v434[13] & 0x3FF | ((v434[16] & 0x3FF) << 16);
                      *v437 = 136316418;
                      v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                      v439 = 2048;
                      *v440 = v110;
                      *&v440[8] = 1024;
                      *v441 = v136;
                      *&v441[4] = 1024;
                      *&v441[6] = v137;
                      *&v441[10] = 1024;
                      *&v441[12] = v138;
                      *&v441[16] = 1024;
                      *&v441[18] = v139;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                    }

                    if (logLevel >= 3)
                    {
                      v140 = v108;
                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                      {
                        v110 += 16;
                        v141 = v434[19] & 0x3FF | ((v434[22] & 0x3FF) << 16);
                        v142 = v434[25] & 0x3FF | ((v434[28] & 0x3FF) << 16);
                        v143 = v434[31] & 0x3FF | ((v434[34] & 0x3FF) << 16);
                        v144 = v434[37] & 0x3FF | ((v434[40] & 0x3FF) << 16);
                        *v437 = 136316418;
                        v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                        v439 = 2048;
                        *v440 = v110;
                        *&v440[8] = 1024;
                        *v441 = v141;
                        *&v441[4] = 1024;
                        *&v441[6] = v142;
                        *&v441[10] = 1024;
                        *&v441[12] = v143;
                        *&v441[16] = 1024;
                        *&v441[18] = v144;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                      }

                      if (logLevel >= 3)
                      {
                        v145 = v108;
                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                        {
                          v110 += 16;
                          v146 = v434[43] & 0x3FF | ((v434[46] & 0x3FF) << 16);
                          v147 = v434[509] & 0x1FF | ((v434[510] & 0x1FF) << 9) & 0xF803FFFF | ((v434[511] & 0x1FF) << 18);
                          v148 = v434[512] & 0x1FF | ((v434[513] & 0x1FF) << 9) & 0xF803FFFF | ((v434[514] & 0x1FF) << 18);
                          v149 = v434[515] & 0x1FF | ((v434[516] & 0x1FF) << 9) & 0xF803FFFF | ((v434[517] & 0x1FF) << 18);
                          *v437 = 136316418;
                          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                          v439 = 2048;
                          *v440 = v110;
                          *&v440[8] = 1024;
                          *v441 = v146;
                          *&v441[4] = 1024;
                          *&v441[6] = v147;
                          *&v441[10] = 1024;
                          *&v441[12] = v148;
                          *&v441[16] = 1024;
                          *&v441[18] = v149;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                        }

                        if (logLevel >= 3)
                        {
                          v150 = v108;
                          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                          {
                            v110 += 16;
                            v151 = v434[518] & 0x1FF | ((v434[519] & 0x1FF) << 9) & 0xF803FFFF | ((v434[520] & 0x1FF) << 18);
                            v152 = v434[521] & 0x1FF | ((v434[522] & 0x1FF) << 9) & 0xF803FFFF | ((v434[523] & 0x1FF) << 18);
                            v153 = v434[524] & 0x1FF | ((v434[525] & 0x1FF) << 9) & 0xF803FFFF | ((v434[526] & 0x1FF) << 18);
                            v154 = v434[288] & 0xFFF | ((v434[291] & 0xFFF) << 16);
                            *v437 = 136316418;
                            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                            v439 = 2048;
                            *v440 = v110;
                            *&v440[8] = 1024;
                            *v441 = v151;
                            *&v441[4] = 1024;
                            *&v441[6] = v152;
                            *&v441[10] = 1024;
                            *&v441[12] = v153;
                            *&v441[16] = 1024;
                            *&v441[18] = v154;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                          }

                          if (logLevel >= 3)
                          {
                            v155 = v108;
                            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                            {
                              v110 += 16;
                              v156 = v434[294] & 0xFFF | ((v434[297] & 0xFFF) << 16);
                              v157 = v434[300] & 0xFFF | ((v434[303] & 0xFFF) << 16);
                              v158 = v434[306] & 0xFFF | ((v434[309] & 0xFFF) << 16);
                              v159 = v434[290] & 0x7FF | ((v434[293] & 0x7FF) << 16);
                              *v437 = 136316418;
                              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                              v439 = 2048;
                              *v440 = v110;
                              *&v440[8] = 1024;
                              *v441 = v156;
                              *&v441[4] = 1024;
                              *&v441[6] = v157;
                              *&v441[10] = 1024;
                              *&v441[12] = v158;
                              *&v441[16] = 1024;
                              *&v441[18] = v159;
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                            }

                            v86 = v436;
                            v87 = selfCopy;
                            if (logLevel >= 3)
                            {
                              v160 = v108;
                              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                              {
                                v110 += 16;
                                v161 = v434[296] & 0x7FF | ((v434[299] & 0x7FF) << 16);
                                v162 = v434[302] & 0x7FF | ((v434[305] & 0x7FF) << 16);
                                v163 = v434[308] & 0x7FF | ((v434[311] & 0x7FF) << 16);
                                v164 = v434[289] & 0xFFF | ((v434[292] & 0xFFF) << 16);
                                *v437 = 136316418;
                                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                v439 = 2048;
                                *v440 = v110;
                                *&v440[8] = 1024;
                                *v441 = v161;
                                *&v441[4] = 1024;
                                *&v441[6] = v162;
                                *&v441[10] = 1024;
                                *&v441[12] = v163;
                                *&v441[16] = 1024;
                                *&v441[18] = v164;
                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                              }

                              v86 = v436;
                              v87 = selfCopy;
                              if (logLevel >= 3)
                              {
                                v165 = v108;
                                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                {
                                  v110 += 16;
                                  v166 = v434[295] & 0xFFF | ((v434[298] & 0xFFF) << 16);
                                  v167 = v434[301] & 0xFFF | ((v434[304] & 0xFFF) << 16);
                                  v168 = v434[307] & 0xFFF | ((v434[310] & 0xFFF) << 16);
                                  v169 = v434[96] & 0xFFF | ((v434[99] & 0xFFF) << 16);
                                  *v437 = 136316418;
                                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                  v439 = 2048;
                                  *v440 = v110;
                                  *&v440[8] = 1024;
                                  *v441 = v166;
                                  *&v441[4] = 1024;
                                  *&v441[6] = v167;
                                  *&v441[10] = 1024;
                                  *&v441[12] = v168;
                                  *&v441[16] = 1024;
                                  *&v441[18] = v169;
                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                }

                                v86 = v436;
                                v87 = selfCopy;
                                if (logLevel >= 3)
                                {
                                  v170 = v108;
                                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v110 += 16;
                                    v171 = v434[102] & 0xFFF | ((v434[105] & 0xFFF) << 16);
                                    v172 = v434[108] & 0xFFF | ((v434[111] & 0xFFF) << 16);
                                    v173 = v434[114] & 0xFFF | ((v434[117] & 0xFFF) << 16);
                                    v174 = v434[98] & 0x7FF | ((v434[101] & 0x7FF) << 16);
                                    *v437 = 136316418;
                                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                    v439 = 2048;
                                    *v440 = v110;
                                    *&v440[8] = 1024;
                                    *v441 = v171;
                                    *&v441[4] = 1024;
                                    *&v441[6] = v172;
                                    *&v441[10] = 1024;
                                    *&v441[12] = v173;
                                    *&v441[16] = 1024;
                                    *&v441[18] = v174;
                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                  }

                                  v86 = v436;
                                  v87 = selfCopy;
                                  if (logLevel >= 3)
                                  {
                                    v175 = v108;
                                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                    {
                                      v110 += 16;
                                      v176 = v434[104] & 0x7FF | ((v434[107] & 0x7FF) << 16);
                                      v177 = v434[110] & 0x7FF | ((v434[113] & 0x7FF) << 16);
                                      v178 = v434[116] & 0x7FF | ((v434[119] & 0x7FF) << 16);
                                      v179 = v434[97] & 0xFFF | ((v434[100] & 0xFFF) << 16);
                                      *v437 = 136316418;
                                      v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                      v439 = 2048;
                                      *v440 = v110;
                                      *&v440[8] = 1024;
                                      *v441 = v176;
                                      *&v441[4] = 1024;
                                      *&v441[6] = v177;
                                      *&v441[10] = 1024;
                                      *&v441[12] = v178;
                                      *&v441[16] = 1024;
                                      *&v441[18] = v179;
                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                    }

                                    v86 = v436;
                                    v87 = selfCopy;
                                    if (logLevel >= 3)
                                    {
                                      v180 = v108;
                                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                      {
                                        v110 += 16;
                                        v181 = v434[103] & 0xFFF | ((v434[106] & 0xFFF) << 16);
                                        v182 = v434[109] & 0xFFF | ((v434[112] & 0xFFF) << 16);
                                        v183 = v434[115] & 0xFFF | ((v434[118] & 0xFFF) << 16);
                                        v184 = v434[192] & 0xFFF | ((v434[195] & 0xFFF) << 16);
                                        *v437 = 136316418;
                                        v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                        v439 = 2048;
                                        *v440 = v110;
                                        *&v440[8] = 1024;
                                        *v441 = v181;
                                        *&v441[4] = 1024;
                                        *&v441[6] = v182;
                                        *&v441[10] = 1024;
                                        *&v441[12] = v183;
                                        *&v441[16] = 1024;
                                        *&v441[18] = v184;
                                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                      }

                                      v86 = v436;
                                      v87 = selfCopy;
                                      if (logLevel >= 3)
                                      {
                                        v185 = v108;
                                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                        {
                                          v110 += 16;
                                          v186 = v434[198] & 0xFFF | ((v434[201] & 0xFFF) << 16);
                                          v187 = v434[204] & 0xFFF | ((v434[207] & 0xFFF) << 16);
                                          v188 = v434[210] & 0xFFF | ((v434[213] & 0xFFF) << 16);
                                          v189 = v434[194] & 0x7FF | ((v434[197] & 0x7FF) << 16);
                                          *v437 = 136316418;
                                          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                          v439 = 2048;
                                          *v440 = v110;
                                          *&v440[8] = 1024;
                                          *v441 = v186;
                                          *&v441[4] = 1024;
                                          *&v441[6] = v187;
                                          *&v441[10] = 1024;
                                          *&v441[12] = v188;
                                          *&v441[16] = 1024;
                                          *&v441[18] = v189;
                                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                        }

                                        v86 = v436;
                                        v87 = selfCopy;
                                        if (logLevel >= 3)
                                        {
                                          v190 = v108;
                                          if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                          {
                                            v110 += 16;
                                            v191 = v434[200] & 0x7FF | ((v434[203] & 0x7FF) << 16);
                                            v192 = v434[206] & 0x7FF | ((v434[209] & 0x7FF) << 16);
                                            v193 = v434[212] & 0x7FF | ((v434[215] & 0x7FF) << 16);
                                            v194 = v434[193] & 0xFFF | ((v434[196] & 0xFFF) << 16);
                                            *v437 = 136316418;
                                            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                            v439 = 2048;
                                            *v440 = v110;
                                            *&v440[8] = 1024;
                                            *v441 = v191;
                                            *&v441[4] = 1024;
                                            *&v441[6] = v192;
                                            *&v441[10] = 1024;
                                            *&v441[12] = v193;
                                            *&v441[16] = 1024;
                                            *&v441[18] = v194;
                                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                          }

                                          v86 = v436;
                                          v87 = selfCopy;
                                          if (logLevel >= 3)
                                          {
                                            v195 = v108;
                                            if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                            {
                                              v110 += 16;
                                              v196 = v434[199] & 0xFFF | ((v434[202] & 0xFFF) << 16);
                                              v197 = v434[205] & 0xFFF | ((v434[208] & 0xFFF) << 16);
                                              v198 = v434[211] & 0xFFF | ((v434[214] & 0xFFF) << 16);
                                              v199 = v434[480] & 0x3F | ((v434[481] & 0x3F) << 6) & 0xFFF | ((v434[482] & 0x3F) << 12);
                                              *v437 = 136316418;
                                              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                              v439 = 2048;
                                              *v440 = v110;
                                              *&v440[8] = 1024;
                                              *v441 = v196;
                                              *&v441[4] = 1024;
                                              *&v441[6] = v197;
                                              *&v441[10] = 1024;
                                              *&v441[12] = v198;
                                              *&v441[16] = 1024;
                                              *&v441[18] = v199;
                                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                            }

                                            v86 = v436;
                                            v87 = selfCopy;
                                            if (logLevel >= 3)
                                            {
                                              v200 = v108;
                                              if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                              {
                                                v110 += 16;
                                                v201 = v434[483] & 0xFFF | ((v434[484] & 0xFFF) << 16);
                                                v202 = v434[485] & 0xFFF | ((v434[486] & 0xFFF) << 16);
                                                v203 = v434[487] & 0xFFF | ((v434[488] & 0xFFF) << 16);
                                                v204 = v434[489] & 0xFFF | ((v434[490] & 0xFFF) << 16);
                                                *v437 = 136316418;
                                                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                v439 = 2048;
                                                *v440 = v110;
                                                *&v440[8] = 1024;
                                                *v441 = v201;
                                                *&v441[4] = 1024;
                                                *&v441[6] = v202;
                                                *&v441[10] = 1024;
                                                *&v441[12] = v203;
                                                *&v441[16] = 1024;
                                                *&v441[18] = v204;
                                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                              }

                                              v86 = v436;
                                              v87 = selfCopy;
                                              if (logLevel >= 3)
                                              {
                                                v205 = v108;
                                                if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                {
                                                  v110 += 16;
                                                  v206 = v434[491] & 0xFFF | ((v434[492] & 0xFFF) << 16);
                                                  v207 = v434[493] & 0xFFF | ((v434[494] & 0xFFF) << 16);
                                                  v208 = v434[495] & 0xFFF | ((v434[496] & 0xFFF) << 16);
                                                  v209 = v434[497] & 0xFFF | ((v434[498] & 0xFFF) << 16);
                                                  *v437 = 136316418;
                                                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                  v439 = 2048;
                                                  *v440 = v110;
                                                  *&v440[8] = 1024;
                                                  *v441 = v206;
                                                  *&v441[4] = 1024;
                                                  *&v441[6] = v207;
                                                  *&v441[10] = 1024;
                                                  *&v441[12] = v208;
                                                  *&v441[16] = 1024;
                                                  *&v441[18] = v209;
                                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                                }

                                                v86 = v436;
                                                v87 = selfCopy;
                                                if (logLevel >= 3)
                                                {
                                                  v210 = v108;
                                                  if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                  {
                                                    v110 += 16;
                                                    v211 = v434[499] & 0xFFF | ((v434[500] & 0xFFF) << 16);
                                                    v212 = v434[501] & 0xFFF | ((v434[502] & 0xFFF) << 16);
                                                    v213 = v434[503] & 0xFFF | ((v434[504] & 0xFFF) << 16);
                                                    v214 = v434[505] & 0xFFF | ((v434[506] & 0xFFF) << 16);
                                                    *v437 = 136316418;
                                                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                    v439 = 2048;
                                                    *v440 = v110;
                                                    *&v440[8] = 1024;
                                                    *v441 = v211;
                                                    *&v441[4] = 1024;
                                                    *&v441[6] = v212;
                                                    *&v441[10] = 1024;
                                                    *&v441[12] = v213;
                                                    *&v441[16] = 1024;
                                                    *&v441[18] = v214;
                                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                                  }

                                                  v86 = v436;
                                                  v87 = selfCopy;
                                                  if (logLevel >= 3)
                                                  {
                                                    v215 = v108;
                                                    if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                    {
                                                      v110 += 16;
                                                      v216 = v434[507] & 0xFFF | ((v434[508] & 0xFFF) << 16);
                                                      v217 = v434[386] & 0x7FF | ((v434[389] & 0x7FF) << 16);
                                                      v218 = v434[392] & 0x7FF | ((v434[395] & 0x7FF) << 16);
                                                      v219 = v434[398] & 0x7FF | ((v434[401] & 0x7FF) << 16);
                                                      *v437 = 136316418;
                                                      v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                      v439 = 2048;
                                                      *v440 = v110;
                                                      *&v440[8] = 1024;
                                                      *v441 = v216;
                                                      *&v441[4] = 1024;
                                                      *&v441[6] = v217;
                                                      *&v441[10] = 1024;
                                                      *&v441[12] = v218;
                                                      *&v441[16] = 1024;
                                                      *&v441[18] = v219;
                                                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                                    }

                                                    v86 = v436;
                                                    v87 = selfCopy;
                                                    if (logLevel >= 3)
                                                    {
                                                      v220 = v108;
                                                      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                      {
                                                        v110 += 16;
                                                        v221 = v434[404] & 0x7FF | ((v434[407] & 0x7FF) << 16);
                                                        v222 = v434[385] & 0xFFF | ((v434[388] & 0xFFF) << 16);
                                                        v223 = v434[391] & 0xFFF | ((v434[394] & 0xFFF) << 16);
                                                        v224 = v434[397] & 0xFFF | ((v434[400] & 0xFFF) << 16);
                                                        *v437 = 136316418;
                                                        v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                        v439 = 2048;
                                                        *v440 = v110;
                                                        *&v440[8] = 1024;
                                                        *v441 = v221;
                                                        *&v441[4] = 1024;
                                                        *&v441[6] = v222;
                                                        *&v441[10] = 1024;
                                                        *&v441[12] = v223;
                                                        *&v441[16] = 1024;
                                                        *&v441[18] = v224;
                                                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                                      }

                                                      v86 = v436;
                                                      v87 = selfCopy;
                                                      if (logLevel >= 3)
                                                      {
                                                        v225 = v108;
                                                        if (os_log_type_enabled(v108, OS_LOG_TYPE_DEFAULT))
                                                        {
                                                          v226 = v434[403] & 0xFFF | ((v434[406] & 0xFFF) << 16);
                                                          *v437 = 136316418;
                                                          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                                          v439 = 2048;
                                                          *v440 = v110 + 16;
                                                          *&v440[8] = 1024;
                                                          *v441 = v226;
                                                          *&v441[4] = 2080;
                                                          *&v441[6] = "XXXXXXXX";
                                                          *&v441[14] = 2080;
                                                          *&v441[16] = "XXXXXXXX";
                                                          *&v441[24] = 2080;
                                                          *&v441[26] = "XXXXXXXX";
                                                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %s %s %s\n", v437, 0x3Au);
                                                        }

                                                        v86 = v436;
                                                        v87 = selfCopy;
                                                      }
                                                    }
                                                  }
                                                }
                                              }
                                            }
                                          }
                                        }
                                      }
                                    }
                                  }
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      hcusCopy = v429;
      if (v433 && logLevel >= 3)
      {
        v227 = v87->_msrBaseAddr;
        v228 = MEMORY[0x277D86220];
        v229 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v228, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        v86 = v436;
        if (logLevel >= 3)
        {
          v230 = v227 + 41600;
          v231 = MEMORY[0x277D86220];
          v232 = MEMORY[0x277D86220];
          if (os_log_type_enabled(v231, OS_LOG_TYPE_DEFAULT))
          {
            v233 = v433[1] & 0xFFF | ((v433[4] & 0xFFF) << 16);
            v234 = v433[7] & 0xFFF | ((v433[10] & 0xFFF) << 16);
            v235 = v433[13] & 0xFFF | ((v433[16] & 0xFFF) << 16);
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 2048;
            *v440 = v227 + 41600;
            *&v440[8] = 2080;
            *v441 = "XXXXXXXX";
            *&v441[8] = 1024;
            *&v441[10] = v233;
            *&v441[14] = 1024;
            *&v441[16] = v234;
            *&v441[20] = 1024;
            *&v441[22] = v235;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %08x %08x\n", v437, 0x32u);
          }

          v86 = v436;
          if (logLevel >= 3)
          {
            v236 = MEMORY[0x277D86220];
            v237 = MEMORY[0x277D86220];
            if (os_log_type_enabled(v236, OS_LOG_TYPE_DEFAULT))
            {
              v230 = v227 + 41616;
              v238 = v433[19] & 0xFFF | ((v433[22] & 0xFFF) << 16);
              v239 = v433[2] & 0xFFF | ((v433[5] & 0xFFF) << 16);
              v240 = v433[8] & 0xFFF | ((v433[11] & 0xFFF) << 16);
              v241 = v433[14] & 0xFFF | ((v433[17] & 0xFFF) << 16);
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v227 + 41616;
              *&v440[8] = 1024;
              *v441 = v238;
              *&v441[4] = 1024;
              *&v441[6] = v239;
              *&v441[10] = 1024;
              *&v441[12] = v240;
              *&v441[16] = 1024;
              *&v441[18] = v241;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
            }

            v86 = v436;
            if (logLevel >= 3)
            {
              v242 = MEMORY[0x277D86220];
              v243 = MEMORY[0x277D86220];
              if (os_log_type_enabled(v242, OS_LOG_TYPE_DEFAULT))
              {
                v230 += 16;
                v244 = v433[20] & 0xFFF | ((v433[23] & 0xFFF) << 16);
                v245 = v433[3] & 0x3FF | ((v433[6] & 0x3FF) << 16);
                v246 = v433[9] & 0x3FF | ((v433[12] & 0x3FF) << 16);
                v247 = v433[15] & 0x3FF | ((v433[18] & 0x3FF) << 16);
                *v437 = 136316418;
                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                v439 = 2048;
                *v440 = v230;
                *&v440[8] = 1024;
                *v441 = v244;
                *&v441[4] = 1024;
                *&v441[6] = v245;
                *&v441[10] = 1024;
                *&v441[12] = v246;
                *&v441[16] = 1024;
                *&v441[18] = v247;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
              }

              v86 = v436;
              if (logLevel >= 3)
              {
                v248 = MEMORY[0x277D86220];
                v249 = MEMORY[0x277D86220];
                if (os_log_type_enabled(v248, OS_LOG_TYPE_DEFAULT))
                {
                  v230 += 16;
                  v250 = v433[21] & 0x3FF | ((v433[24] & 0x3FF) << 16);
                  v251 = v433[97] & 0x7FF | ((v433[100] & 0x7FF) << 16);
                  v252 = v433[103] & 0x7FF | ((v433[106] & 0x7FF) << 16);
                  v253 = v433[109] & 0x7FF | ((v433[112] & 0x7FF) << 16);
                  *v437 = 136316418;
                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v439 = 2048;
                  *v440 = v230;
                  *&v440[8] = 1024;
                  *v441 = v250;
                  *&v441[4] = 1024;
                  *&v441[6] = v251;
                  *&v441[10] = 1024;
                  *&v441[12] = v252;
                  *&v441[16] = 1024;
                  *&v441[18] = v253;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                }

                v86 = v436;
                if (logLevel >= 3)
                {
                  v254 = MEMORY[0x277D86220];
                  v255 = MEMORY[0x277D86220];
                  if (os_log_type_enabled(v254, OS_LOG_TYPE_DEFAULT))
                  {
                    v230 += 16;
                    v256 = v433[115] & 0x7FF | ((v433[118] & 0x7FF) << 16);
                    v257 = v433[98] & 0x3F | ((v433[101] & 0x3F) << 8) & 0xC0C0FFFF | ((v433[104] & 0x3F) << 16) & 0xC0FFFFFF | ((v433[107] & 0x3F) << 24);
                    v258 = v433[110] & 0x3F | ((v433[113] & 0x3F) << 8) & 0xC0C0FFFF | ((v433[116] & 0x3F) << 16) & 0xC0FFFFFF | ((v433[119] & 0x3F) << 24);
                    v259 = v433[99] & 0x1FFF | ((v433[102] & 0x1FFF) << 16);
                    *v437 = 136316418;
                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v439 = 2048;
                    *v440 = v230;
                    *&v440[8] = 1024;
                    *v441 = v256;
                    *&v441[4] = 1024;
                    *&v441[6] = v257;
                    *&v441[10] = 1024;
                    *&v441[12] = v258;
                    *&v441[16] = 1024;
                    *&v441[18] = v259;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                  }

                  v86 = v436;
                  if (logLevel >= 3)
                  {
                    v260 = MEMORY[0x277D86220];
                    v261 = MEMORY[0x277D86220];
                    if (os_log_type_enabled(v260, OS_LOG_TYPE_DEFAULT))
                    {
                      v230 += 16;
                      v262 = v433[105] & 0x1FFF | ((v433[108] & 0x1FFF) << 16);
                      v263 = v433[111] & 0x1FFF | ((v433[114] & 0x1FFF) << 16);
                      v264 = v433[117] & 0x1FFF | ((v433[120] & 0x1FFF) << 16);
                      v265 = v433[193] & 0x7FF | ((v433[196] & 0x7FF) << 16);
                      *v437 = 136316418;
                      v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                      v439 = 2048;
                      *v440 = v230;
                      *&v440[8] = 1024;
                      *v441 = v262;
                      *&v441[4] = 1024;
                      *&v441[6] = v263;
                      *&v441[10] = 1024;
                      *&v441[12] = v264;
                      *&v441[16] = 1024;
                      *&v441[18] = v265;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                    }

                    v86 = v436;
                    if (logLevel >= 3)
                    {
                      v266 = MEMORY[0x277D86220];
                      v267 = MEMORY[0x277D86220];
                      if (os_log_type_enabled(v266, OS_LOG_TYPE_DEFAULT))
                      {
                        v268 = v433[199] & 0x7FF | ((v433[202] & 0x7FF) << 16);
                        v269 = v433[205] & 0x7FF | ((v433[208] & 0x7FF) << 16);
                        v270 = v433[211] & 0x7FF | ((v433[214] & 0x7FF) << 16);
                        v230 += 16;
                        v271 = v433[194] & 0x3F | ((v433[197] & 0x3F) << 8) & 0xC0C0FFFF | ((v433[200] & 0x3F) << 16) & 0xC0FFFFFF | ((v433[203] & 0x3F) << 24);
                        *v437 = 136316418;
                        v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                        v439 = 2048;
                        *v440 = v230;
                        *&v440[8] = 1024;
                        *v441 = v268;
                        *&v441[4] = 1024;
                        *&v441[6] = v269;
                        *&v441[10] = 1024;
                        *&v441[12] = v270;
                        *&v441[16] = 1024;
                        *&v441[18] = v271;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                      }

                      v86 = v436;
                      if (logLevel >= 3)
                      {
                        v272 = MEMORY[0x277D86220];
                        v273 = MEMORY[0x277D86220];
                        if (os_log_type_enabled(v272, OS_LOG_TYPE_DEFAULT))
                        {
                          v230 += 16;
                          v274 = v433[206] & 0x3F | ((v433[209] & 0x3F) << 8) & 0xC0C0FFFF | ((v433[212] & 0x3F) << 16) & 0xC0FFFFFF | ((v433[215] & 0x3F) << 24);
                          v275 = v433[195] & 0x1FFF | ((v433[198] & 0x1FFF) << 16);
                          v276 = v433[201] & 0x1FFF | ((v433[204] & 0x1FFF) << 16);
                          v277 = v433[207] & 0x1FFF | ((v433[210] & 0x1FFF) << 16);
                          *v437 = 136316418;
                          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                          v439 = 2048;
                          *v440 = v230;
                          *&v440[8] = 1024;
                          *v441 = v274;
                          *&v441[4] = 1024;
                          *&v441[6] = v275;
                          *&v441[10] = 1024;
                          *&v441[12] = v276;
                          *&v441[16] = 1024;
                          *&v441[18] = v277;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                        }

                        v86 = v436;
                        if (logLevel >= 3)
                        {
                          v278 = MEMORY[0x277D86220];
                          v279 = MEMORY[0x277D86220];
                          if (os_log_type_enabled(v278, OS_LOG_TYPE_DEFAULT))
                          {
                            v230 += 16;
                            v280 = v433[213] & 0x1FFF | ((v433[216] & 0x1FFF) << 16);
                            v281 = v433[294] & 0x1FFF | ((v433[295] & 0x1FFF) << 16);
                            v282 = v433[296] & 0x1FFF | ((v433[297] & 0x1FFF) << 16);
                            v283 = v433[298] & 0x1FFF;
                            *v437 = 136316418;
                            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                            v439 = 2048;
                            *v440 = v230;
                            *&v440[8] = 1024;
                            *v441 = v280;
                            *&v441[4] = 1024;
                            *&v441[6] = v281;
                            *&v441[10] = 1024;
                            *&v441[12] = v282;
                            *&v441[16] = 1024;
                            *&v441[18] = v283;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                          }

                          v86 = v436;
                          if (logLevel >= 3)
                          {
                            v284 = MEMORY[0x277D86220];
                            v285 = MEMORY[0x277D86220];
                            if (os_log_type_enabled(v284, OS_LOG_TYPE_DEFAULT))
                            {
                              v230 += 16;
                              v286 = v433[299] & 0x1FFF | ((v433[300] & 0x1FFF) << 16);
                              v287 = v433[301] & 0x1FFF | ((v433[302] & 0x1FFF) << 16);
                              v288 = v433[303] & 0x1FFF | ((v433[304] & 0x1FFF) << 16);
                              v289 = v433[305] & 0x1FFF | ((v433[306] & 0x1FFF) << 16);
                              *v437 = 136316418;
                              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                              v439 = 2048;
                              *v440 = v230;
                              *&v440[8] = 1024;
                              *v441 = v286;
                              *&v441[4] = 1024;
                              *&v441[6] = v287;
                              *&v441[10] = 1024;
                              *&v441[12] = v288;
                              *&v441[16] = 1024;
                              *&v441[18] = v289;
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                            }

                            hcusCopy = v429;
                            v87 = selfCopy;
                            v86 = v436;
                            if (logLevel >= 3)
                            {
                              v290 = MEMORY[0x277D86220];
                              v291 = MEMORY[0x277D86220];
                              if (os_log_type_enabled(v290, OS_LOG_TYPE_DEFAULT))
                              {
                                v230 += 16;
                                v292 = v433[307] & 0x1FFF;
                                v293 = v433[308] & 0x1FFF | ((v433[309] & 0x1FFF) << 16);
                                v294 = v433[310] & 0x1FFF | ((v433[311] & 0x1FFF) << 16);
                                v295 = v433[312] & 0x1FFF | ((v433[313] & 0x1FFF) << 16);
                                *v437 = 136316418;
                                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                v439 = 2048;
                                *v440 = v230;
                                *&v440[8] = 1024;
                                *v441 = v292;
                                *&v441[4] = 1024;
                                *&v441[6] = v293;
                                *&v441[10] = 1024;
                                *&v441[12] = v294;
                                *&v441[16] = 1024;
                                *&v441[18] = v295;
                                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                              }

                              hcusCopy = v429;
                              v87 = selfCopy;
                              v86 = v436;
                              if (logLevel >= 3)
                              {
                                v296 = MEMORY[0x277D86220];
                                v297 = MEMORY[0x277D86220];
                                if (os_log_type_enabled(v296, OS_LOG_TYPE_DEFAULT))
                                {
                                  v230 += 16;
                                  v298 = v433[314] & 0x1FFF | ((v433[315] & 0x1FFF) << 16);
                                  v299 = v433[316] & 0x1FFF | ((v433[317] & 0x1FFF) << 16);
                                  v300 = v433[318] & 0x1FFF | ((v433[319] & 0x1FFF) << 16);
                                  v301 = v433[320] & 0x1FFF;
                                  *v437 = 136316418;
                                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                  v439 = 2048;
                                  *v440 = v230;
                                  *&v440[8] = 1024;
                                  *v441 = v298;
                                  *&v441[4] = 1024;
                                  *&v441[6] = v299;
                                  *&v441[10] = 1024;
                                  *&v441[12] = v300;
                                  *&v441[16] = 1024;
                                  *&v441[18] = v301;
                                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                                }

                                hcusCopy = v429;
                                v87 = selfCopy;
                                v86 = v436;
                                if (logLevel >= 3)
                                {
                                  v302 = MEMORY[0x277D86220];
                                  v303 = MEMORY[0x277D86220];
                                  if (os_log_type_enabled(v302, OS_LOG_TYPE_DEFAULT))
                                  {
                                    v304 = v433[290] & 0x3F | ((v433[291] & 0x3F) << 6) & 0xFFF | ((v433[292] & 0x3F) << 12) & 0xFC03FFFF | ((v433[293] & 0x3F) << 18) & 0xFCFFFFFF | ((v433[289] & 3) << 24) | (*v433 << 26);
                                    *v437 = 136316418;
                                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                                    v439 = 2048;
                                    *v440 = v230 + 16;
                                    *&v440[8] = 1024;
                                    *v441 = v304;
                                    *&v441[4] = 2080;
                                    *&v441[6] = "XXXXXXXX";
                                    *&v441[14] = 2080;
                                    *&v441[16] = "XXXXXXXX";
                                    *&v441[24] = 2080;
                                    *&v441[26] = "XXXXXXXX";
                                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %s %s %s\n", v437, 0x3Au);
                                  }

                                  hcusCopy = v429;
                                  v87 = selfCopy;
                                  v86 = v436;
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      if (v86 && logLevel >= 3)
      {
        v305 = v87->_msrBaseAddr;
        v306 = MEMORY[0x277D86220];
        v307 = MEMORY[0x277D86220];
        if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
        {
          *v437 = 136315138;
          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: -----------------------------------------------\n", v437, 0xCu);
        }

        if (logLevel >= 3)
        {
          v308 = v305 + 42160;
          v309 = v306;
          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
          {
            v310 = v86[96] & 0x7FF | ((v86[99] & 0x7FF) << 16);
            v311 = v86[102] & 0x7FF | ((v86[105] & 0x7FF) << 16);
            v312 = v86[108] & 0x7FF | ((v86[111] & 0x7FF) << 16);
            v313 = v86[114] & 0x7FF | ((v86[117] & 0x7FF) << 16);
            *v437 = 136316418;
            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
            v439 = 2048;
            *v440 = v305 + 42160;
            *&v440[8] = 1024;
            *v441 = v310;
            *&v441[4] = 1024;
            *&v441[6] = v311;
            *&v441[10] = 1024;
            *&v441[12] = v312;
            *&v441[16] = 1024;
            *&v441[18] = v313;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
          }

          if (logLevel >= 3)
          {
            v314 = v306;
            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
            {
              v308 = v305 + 42176;
              v315 = v86[97] & 0x7FF | ((v86[100] & 0x7FF) << 16);
              v316 = v86[103] & 0x7FF | ((v86[106] & 0x7FF) << 16);
              v317 = v86[109] & 0x7FF | ((v86[112] & 0x7FF) << 16);
              v318 = v86[115] & 0x7FF | ((v86[118] & 0x7FF) << 16);
              *v437 = 136316418;
              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
              v439 = 2048;
              *v440 = v305 + 42176;
              *&v440[8] = 1024;
              *v441 = v315;
              *&v441[4] = 1024;
              *&v441[6] = v316;
              *&v441[10] = 1024;
              *&v441[12] = v317;
              *&v441[16] = 1024;
              *&v441[18] = v318;
              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
            }

            if (logLevel >= 3)
            {
              v319 = v306;
              if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
              {
                v308 += 16;
                v320 = v86[98] & 0x7FFF | ((v86[101] & 0x7FFF) << 16);
                v321 = v86[104] & 0x7FFF | ((v86[107] & 0x7FFF) << 16);
                v322 = v86[110] & 0x7FFF | ((v86[113] & 0x7FFF) << 16);
                v323 = v86[116] & 0x7FFF | ((v86[119] & 0x7FFF) << 16);
                *v437 = 136316418;
                v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                v439 = 2048;
                *v440 = v308;
                *&v440[8] = 1024;
                *v441 = v320;
                *&v441[4] = 1024;
                *&v441[6] = v321;
                *&v441[10] = 1024;
                *&v441[12] = v322;
                *&v441[16] = 1024;
                *&v441[18] = v323;
                _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
              }

              if (logLevel >= 3)
              {
                v324 = v306;
                if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                {
                  v308 += 16;
                  v325 = v86[192] & 0x7FF | ((v86[195] & 0x7FF) << 16);
                  v326 = v86[198] & 0x7FF | ((v86[201] & 0x7FF) << 16);
                  v327 = v86[204] & 0x7FF | ((v86[207] & 0x7FF) << 16);
                  v328 = v86[210] & 0x7FF | ((v86[213] & 0x7FF) << 16);
                  *v437 = 136316418;
                  v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                  v439 = 2048;
                  *v440 = v308;
                  *&v440[8] = 1024;
                  *v441 = v325;
                  *&v441[4] = 1024;
                  *&v441[6] = v326;
                  *&v441[10] = 1024;
                  *&v441[12] = v327;
                  *&v441[16] = 1024;
                  *&v441[18] = v328;
                  _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                }

                if (logLevel >= 3)
                {
                  v329 = v306;
                  if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                  {
                    v308 += 16;
                    v330 = v86[193] & 0x7FF | ((v86[196] & 0x7FF) << 16);
                    v331 = v86[199] & 0x7FF | ((v86[202] & 0x7FF) << 16);
                    v332 = v86[205] & 0x7FF | ((v86[208] & 0x7FF) << 16);
                    v333 = v86[211] & 0x7FF | ((v86[214] & 0x7FF) << 16);
                    *v437 = 136316418;
                    v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                    v439 = 2048;
                    *v440 = v308;
                    *&v440[8] = 1024;
                    *v441 = v330;
                    *&v441[4] = 1024;
                    *&v441[6] = v331;
                    *&v441[10] = 1024;
                    *&v441[12] = v332;
                    *&v441[16] = 1024;
                    *&v441[18] = v333;
                    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                  }

                  if (logLevel >= 3)
                  {
                    v334 = v306;
                    if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                    {
                      v308 += 16;
                      v335 = v86[194] & 0x7FFF | ((v86[197] & 0x7FFF) << 16);
                      v336 = v86[200] & 0x7FFF | ((v86[203] & 0x7FFF) << 16);
                      v337 = v86[206] & 0x7FFF | ((v86[209] & 0x7FFF) << 16);
                      v338 = v86[212] & 0x7FFF | ((v86[215] & 0x7FFF) << 16);
                      *v437 = 136316418;
                      v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                      v439 = 2048;
                      *v440 = v308;
                      *&v440[8] = 1024;
                      *v441 = v335;
                      *&v441[4] = 1024;
                      *&v441[6] = v336;
                      *&v441[10] = 1024;
                      *&v441[12] = v337;
                      *&v441[16] = 1024;
                      *&v441[18] = v338;
                      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                    }

                    if (logLevel >= 3)
                    {
                      v339 = v306;
                      if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                      {
                        v308 += 16;
                        v340 = v86[289] & 0x7FF | ((v86[292] & 0x7FF) << 16);
                        v341 = v86[295] & 0x7FF | ((v86[298] & 0x7FF) << 16);
                        v342 = v86[301] & 0x7FF | ((v86[304] & 0x7FF) << 16);
                        v343 = v86[307] & 0x7FF | ((v86[310] & 0x7FF) << 16);
                        *v437 = 136316418;
                        v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                        v439 = 2048;
                        *v440 = v308;
                        *&v440[8] = 1024;
                        *v441 = v340;
                        *&v441[4] = 1024;
                        *&v441[6] = v341;
                        *&v441[10] = 1024;
                        *&v441[12] = v342;
                        *&v441[16] = 1024;
                        *&v441[18] = v343;
                        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                      }

                      if (logLevel >= 3)
                      {
                        v344 = v306;
                        if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                        {
                          v308 += 16;
                          v345 = v86[288] & 0xFFF | ((v86[291] & 0xFFF) << 16);
                          v346 = v86[294] & 0xFFF | ((v86[297] & 0xFFF) << 16);
                          v347 = v86[300] & 0xFFF | ((v86[303] & 0xFFF) << 16);
                          v348 = v86[306] & 0xFFF | ((v86[309] & 0xFFF) << 16);
                          *v437 = 136316418;
                          v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                          v439 = 2048;
                          *v440 = v308;
                          *&v440[8] = 1024;
                          *v441 = v345;
                          *&v441[4] = 1024;
                          *&v441[6] = v346;
                          *&v441[10] = 1024;
                          *&v441[12] = v347;
                          *&v441[16] = 1024;
                          *&v441[18] = v348;
                          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                        }

                        if (logLevel >= 3)
                        {
                          v349 = v306;
                          if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                          {
                            v308 += 16;
                            v350 = v86[290] & 0x7FF | ((v86[293] & 0x7FF) << 16);
                            v351 = v86[296] & 0x7FF | ((v86[299] & 0x7FF) << 16);
                            v352 = v86[302] & 0x7FF | ((v86[305] & 0x7FF) << 16);
                            v353 = v86[308] & 0x7FF | ((v86[311] & 0x7FF) << 16);
                            *v437 = 136316418;
                            v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                            v439 = 2048;
                            *v440 = v308;
                            *&v440[8] = 1024;
                            *v441 = v350;
                            *&v441[4] = 1024;
                            *&v441[6] = v351;
                            *&v441[10] = 1024;
                            *&v441[12] = v352;
                            *&v441[16] = 1024;
                            *&v441[18] = v353;
                            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %08x %08x %08x %08x\n", v437, 0x2Eu);
                          }

                          if (logLevel >= 3)
                          {
                            v354 = v306;
                            if (os_log_type_enabled(v306, OS_LOG_TYPE_DEFAULT))
                            {
                              v355 = v86[384] & 0x3F | ((v86[385] & 0x7FF) << 6) & 0x8001FFFF | ((v86[386] & 0x3F) << 17) & 0x807FFFFF | (*(v86 + 387) << 23);
                              *v437 = 136316418;
                              v438 = "[ASEProcessingT1 DumpOutputHcus:]";
                              v439 = 2048;
                              *v440 = v308 + 16;
                              *&v440[8] = 2080;
                              *v441 = "XXXXXXXX";
                              *&v441[8] = 1024;
                              *&v441[10] = v355;
                              *&v441[14] = 2080;
                              *&v441[16] = "XXXXXXXX";
                              *&v441[24] = 2080;
                              *&v441[26] = "XXXXXXXX";
                              _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: %09llx:  %s %08x %s %s\n", v437, 0x3Au);
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

- (void)configControlHeader_V3:(aseConfigurationUnitsV3_t *)v3
{
  v3->var1 = 0x1861736570;
  v3->var3 = 0x20061736571;
  v3->var5 = 0x5046173656BLL;
  v3->var7 = 0x83C6173656CLL;
  v3->var9 = 0x6106173656DLL;
  v3->var11 = 0x86173656FLL;
  v3->var13 = 0x146173656ELL;
}

- (void)processPixelWithInput:(__IOSurface *)input Measurement:(id *)measurement controlUnitV3:(aseConfigurationUnitsV3_t *)v3
{
  v22 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315906;
    v16 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    v17 = 2048;
    *v18 = input;
    *&v18[8] = 2048;
    measurementCopy = measurement;
    v20 = 2048;
    v3Copy = v3;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", &v15, 0x2Au);
  }

  if (!isT1OrNewer(self->super._productType))
  {
    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    productType = self->super._productType;
    v15 = 136315394;
    v16 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    v17 = 1024;
    *v18 = productType;
    v11 = MEMORY[0x277D86220];
    v12 = " [1.50.3]     %s : ERROR: Not supported, _productType = %d\n";
    v13 = 18;
    goto LABEL_10;
  }

  [(ASEProcessingT1 *)self processPixelWithInput_V3:input Measurement:measurement Output:v3];
  if (logLevel < 3)
  {
    return;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    var0 = v3->var0.var0;
    var1 = v3->var0.var1;
    v15 = 136315650;
    v16 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    v17 = 1024;
    *v18 = var0;
    *&v18[4] = 1024;
    *&v18[6] = var1;
    v11 = MEMORY[0x277D86220];
    v12 = " [1.50.3]     %s : aseControlUnit->hcuCount %d, aseControlUnit->hcuSize %d, \n";
    v13 = 24;
LABEL_10:
    _os_log_impl(&dword_23D3F2000, v11, OS_LOG_TYPE_DEFAULT, v12, &v15, v13);
  }

LABEL_11:
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v15 = 136315138;
    v16 = "[ASEProcessingT1 processPixelWithInput:Measurement:controlUnitV3:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", &v15, 0xCu);
  }
}

- (void)processPixelWithInput_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output
{
  aseProcessingType = self->super._aseProcessingType;
  if (aseProcessingType > 7)
  {
    goto LABEL_17;
  }

  v7 = 1 << aseProcessingType;
  if ((v7 & 0xE6) != 0)
  {
    [(ASEProcessingT1 *)self processPixelWithPixelControl_V3:v3 Output:output];
    enabledHcus = self->_enabledHcus;
    if ((enabledHcus & 0x80) != 0)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: !(!!((_enabledHcus) & (1U << (ASEConfigurationUnitsV3_NoiseConfig)))) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1580\n", buf, 2u);
      }

      enabledHcus = self->_enabledHcus;
      if ((enabledHcus & 0x80) != 0)
      {
        [ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:];
      }
    }

    v9 = enabledHcus & 0xFFFFFF7F;
    goto LABEL_14;
  }

  if ((v7 & 0x18) == 0)
  {
LABEL_17:
    [ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:];
  }

  [(ASEProcessingT1 *)self processPixelWithMeasurement_V3:v3 Measurement:measurement Output:output];
  v10 = self->_enabledHcus;
  if ((v10 & 0x80) == 0)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: (!!((_enabledHcus) & (1U << (ASEConfigurationUnitsV3_NoiseConfig)))) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1589\n", v11, 2u);
    }

    v10 = self->_enabledHcus;
    if ((v10 & 0x80) == 0)
    {
      [ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:];
    }
  }

  v9 = v10 | 0x80;
LABEL_14:
  self->_enabledHcus = v9;
}

- (id)populateOutputHcus:(aseConfigurationUnitsV3_t *)hcus
{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v26 = *MEMORY[0x277D85DE8];
  enabledHcus = self->_enabledHcus;
  v9 = hideHcu;
  do
  {
    if ((enabledHcus & (1 << v5)) != 0 && (v9 & (1 << v5)) == 0)
    {
      ++v6;
      v7 += getHcuSize(v5);
    }

    ++v5;
  }

  while (v5 != 8);
  hcus->var0.var0 = v6;
  hcus->var0.var1 = v7;
  v11 = [MEMORY[0x277CBEB28] dataWithCapacity:v7 + 8 * v6 + 8];
  v12 = v11;
  if (!v11)
  {
    goto LABEL_28;
  }

  [v11 appendBytes:hcus length:8];
  v13 = 0;
  while (1)
  {
    if ((self->_enabledHcus & (1 << v13)) == 0 || (hideHcu & (1 << v13)) != 0)
    {
      goto LABEL_23;
    }

    v14 = getHcuSize(v13) + 8;
    if (v13 <= 3)
    {
      p_var1 = &hcus->var1;
      if (v13 != 1)
      {
        p_var1 = &hcus->var3;
        if (v13 != 2)
        {
          p_var1 = &hcus->var5;
          if (v13 != 3)
          {
            goto LABEL_33;
          }
        }
      }

      goto LABEL_22;
    }

    if (v13 <= 5)
    {
      p_var1 = &hcus->var7;
      if (v13 != 4)
      {
        p_var1 = &hcus->var9;
      }

      goto LABEL_22;
    }

    p_var1 = &hcus->var11;
    if (v13 != 6)
    {
      break;
    }

LABEL_22:
    [v12 appendBytes:p_var1 length:v14];
LABEL_23:
    if (++v13 == 8)
    {
      goto LABEL_24;
    }
  }

  if (v13 != 7)
  {
LABEL_33:
    [ASEProcessingT1 populateOutputHcus:];
  }

  [v12 appendBytes:&hcus->var13 length:v14];
LABEL_24:
  if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v16 = self->_enabledHcus;
    *buf = 136315906;
    v19 = "[ASEProcessingT1 populateOutputHcus:]";
    v20 = 1024;
    v21 = v16;
    v22 = 1024;
    v23 = hideHcu;
    v24 = 1024;
    v25 = hideHcu;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s: _enabledHcus = 0x%x, hideHcu = 0x%x (%d)\n", buf, 0x1Eu);
  }

  [(ASEProcessingT1 *)self DumpOutputHcus:v12];
LABEL_28:

  return v12;
}

- (void)processPixelWithPixelControl_V3:(__IOSurface *)v3 Output:(aseConfigurationUnitsV3_t *)output
{
  v17 = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v14 = "[ASEProcessingT1 processPixelWithPixelControl_V3:Output:]";
    v15 = 2048;
    outputCopy = output;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : aseControlUnit=%p\n", buf, 0x16u);
  }

  [(ASEProcessingT1 *)self configControlHeader_V3:output];
  InputType = getInputType(self->super._inputType);
  TransferFunction = getTransferFunction(v3);
  *&v9 = self->super._enhancementStrength;
  LODWORD(v12) = TransferFunction;
  calculate_graphics_control_setting_V3(output, self->super._inputWidth, self->super._inputHeight, v9, v10, v11, LODWORD(self->super._numberOfProcessedFrames), self->super._productType, self->super._destinationWidth, self->super._destinationHeight, InputType, v12, self->_aseControlUnitV3Cache, &self->_enabledHcus);
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[ASEProcessingT1 processPixelWithPixelControl_V3:Output:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s \n", buf, 0xCu);
  }
}

- (void)processPixelWithMeasurement_V3:(__IOSurface *)v3 Measurement:(id *)measurement Output:(aseConfigurationUnitsV3_t *)output
{
  *&v20[11] = *MEMORY[0x277D85DE8];
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    v16 = "[ASEProcessingT1 processPixelWithMeasurement_V3:Measurement:Output:]";
    v17 = 2048;
    *v18 = v3;
    *&v18[8] = 2048;
    *v19 = measurement;
    *&v19[8] = 2048;
    *v20 = output;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseControlUnit=%p\n", buf, 0x2Au);
  }

  [(ASEProcessingT1 *)self printAseMeasurementOutput:measurement];
  [(ASEProcessingT1 *)self configControlHeader_V3:output];
  InputType = getInputType(self->super._inputType);
  TransferFunction = getTransferFunction(v3);
  calculate_control_setting_V3(measurement, output, self->super._inputWidth, self->super._inputHeight, LODWORD(self->super._numberOfProcessedFrames), &self->super._noiseMeterStepSize, &self->super._FD_state, &self->super._FG_count, &self->super._NFG_count, &self->super._prev_H1_7, &self->super._prev_V1_7, &self->super._prev_ratio_2D_1D, self->super._productType, self->super._destinationWidth, self->super._destinationHeight, InputType, TransferFunction, self->_aseControlUnitV3Cache, &self->_enabledHcus);
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    destinationWidth = self->super._destinationWidth;
    destinationHeight = self->super._destinationHeight;
    InputTypeString = getInputTypeString(InputType);
    TransferFunctionString = getTransferFunctionString(TransferFunction);
    *buf = 136316162;
    v16 = "[ASEProcessingT1 processPixelWithMeasurement_V3:Measurement:Output:]";
    v17 = 1024;
    *v18 = destinationWidth;
    *&v18[4] = 1024;
    *&v18[6] = destinationHeight;
    *v19 = 2080;
    *&v19[2] = InputTypeString;
    v20[0] = 2080;
    *&v20[1] = TransferFunctionString;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s : _destinationWidth=%d, _destinationHeight=%d, inputType=%s, inputTransferFunction=%s\n", buf, 0x2Cu);
  }
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement outputData:(id *)data
{
  v38 = *MEMORY[0x277D85DE8];
  v9 = logLevel;
  if (logLevel >= 4)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315906;
      *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
      *&buf[12] = 2048;
      *&buf[14] = input;
      *&buf[22] = 2048;
      *&buf[24] = measurement;
      *&buf[32] = 2048;
      *&buf[34] = data;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p\n", buf, 0x2Au);
    }

    v9 = logLevel;
  }

  if (v9 >= 2)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      aseProcessingType = self->super._aseProcessingType;
      v11 = getASEProcessingType(aseProcessingType);
      dataCopy = data;
      inputCopy = input;
      inputWidth = self->super._inputWidth;
      inputHeight = self->super._inputHeight;
      destinationWidth = self->super._destinationWidth;
      measurementCopy = measurement;
      destinationHeight = self->super._destinationHeight;
      enhancementStrength = self->super._enhancementStrength;
      InputTypeString = getInputTypeString(self->super._inputType);
      *buf = 136317186;
      *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
      *&buf[12] = 1024;
      *&buf[14] = aseProcessingType;
      *&buf[18] = 2080;
      *&buf[20] = v11;
      *&buf[28] = 1024;
      *&buf[30] = inputWidth;
      input = inputCopy;
      data = dataCopy;
      *&buf[34] = 1024;
      *&buf[36] = inputHeight;
      *&buf[40] = 2048;
      *&buf[42] = enhancementStrength;
      *&buf[50] = 1024;
      *&buf[52] = destinationWidth;
      *&buf[56] = 1024;
      *&buf[58] = destinationHeight;
      measurement = measurementCopy;
      *&buf[62] = 2080;
      *&buf[64] = InputTypeString;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3]     %s : aseProcessingType=%d [%s], width=%d, height=%d, strength=%f, destinationWidth=%d, destinationHeight=%d, inputType=%s\n", buf, 0x48u);
    }

    if (logLevel >= 2)
    {
      [ASEProcessing shouldEnhanceWidth:self->super._inputWidth height:self->super._inputHeight destinationWidth:self->super._destinationWidth destinationHeight:self->super._destinationHeight];
    }
  }

  if (self->super._aseProcessingType - 9 <= 0xFFFFFFF7)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: _aseProcessingType < kASEProcessingTypeLivePhoto || _aseProcessingType > kASEProcessingTypeEnhanceOnly failed in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1769 goto EXIT\n", buf, 2u);
    }

    if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_16;
    }

    v21 = self->super._aseProcessingType;
    v22 = self->super._enhancementStrength;
    v23 = self->super._inputWidth;
    v24 = self->super._inputHeight;
    *buf = 136316162;
    *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
    *&buf[12] = 1024;
    *&buf[14] = v21;
    *&buf[18] = 2048;
    *&buf[20] = v22;
    *&buf[28] = 1024;
    *&buf[30] = v23;
    *&buf[34] = 1024;
    *&buf[36] = v24;
    v25 = MEMORY[0x277D86220];
    v26 = " [1.50.3] %s : unknownProcessingType=%d, strength=%f, wxh=%dx%d\n";
    v27 = 40;
    goto LABEL_15;
  }

  if (data)
  {
    v36 = 0u;
    memset(v37, 0, sizeof(v37));
    v34 = 0u;
    v35 = 0u;
    memset(&buf[4], 0, 384);
    *buf = 1;
    if (measurement)
    {
      memcpy(buf, measurement, 0x17CuLL);
    }

    if (!isT1OrNewer(self->super._productType))
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *v32 = 0;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] Assertion: isT1OrNewer(_productType) warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1788\n", v32, 2u);
      }

      if (!isT1OrNewer(self->super._productType))
      {
        [ASEProcessingT1 processFrameWithInput:Measurement:outputData:];
      }
    }

    v29 = &self->_aseControlUnitV3[self->super._numberOfRequestedFrames & 3];
    bzero(v29, 0x15C4uLL);
    updateConfigsPerFrame();
    ++self->super._numberOfRequestedFrames;
    [(ASEProcessingT1 *)self processPixelWithInput:input Measurement:buf controlUnitV3:v29];
    *data = [(ASEProcessingT1 *)self populateOutputHcus:v29];
    ++self->super._numberOfProcessedFrames;
    v28 = -18000;
    goto LABEL_25;
  }

  if (logLevel < 3)
  {
    return -18002;
  }

  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315906;
    *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
    *&buf[12] = 2048;
    *&buf[14] = input;
    *&buf[22] = 2048;
    *&buf[24] = measurement;
    *&buf[32] = 2048;
    *&buf[34] = 0;
    v25 = MEMORY[0x277D86220];
    v26 = " [1.50.3] %s : input=%p, aseMeasurementOutput=%p, aseFrameProcessingControl=%p\n";
    v27 = 42;
LABEL_15:
    _os_log_impl(&dword_23D3F2000, v25, OS_LOG_TYPE_DEFAULT, v26, buf, v27);
  }

LABEL_16:
  v28 = -18002;
LABEL_25:
  if (logLevel >= 4 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    numberOfProcessedFrames = self->super._numberOfProcessedFrames;
    *buf = 136315650;
    *&buf[4] = "[ASEProcessingT1 processFrameWithInput:Measurement:outputData:]";
    *&buf[12] = 2048;
    *&buf[14] = numberOfProcessedFrames;
    *&buf[22] = 2048;
    *&buf[24] = v28;
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] --  %s : frame=%ld, retVal=%ld\n", buf, 0x20u);
  }

  return v28;
}

- (int64_t)processFrameWithInput:(__IOSurface *)input Measurement:(id *)measurement callback:(id)callback
{
  v8 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[ASEProcessingT1 processFrameWithInput:Measurement:callback:]";
    _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] ++  %s : ERROR: Async API Not supported!\n", &v6, 0xCu);
  }

  return -18001;
}

- (void)printAseMeasurementOutput:(id *)output
{
  v42 = *MEMORY[0x277D85DE8];
  v29.receiver = self;
  v29.super_class = ASEProcessingT1;
  [(ASEProcessingT0 *)&v29 printAseMeasurementOutput:?];
  if (logLevel >= 3)
  {
    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      v4 = output->var22[0];
      v5 = output->var22[1];
      v6 = output->var22[2];
      v7 = output->var22[3];
      v8 = output->var22[4];
      v9 = output->var23[0];
      *buf = 67110400;
      v31 = v4;
      v32 = 1024;
      v33 = v5;
      v34 = 1024;
      v35 = v6;
      v36 = 1024;
      v37 = v7;
      v38 = 1024;
      v39 = v8;
      v40 = 1024;
      v41 = v9;
      _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkDiffH[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
    }

    if (logLevel >= 3)
    {
      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v10 = output->var23[0];
        v11 = output->var23[1];
        v12 = output->var23[2];
        v13 = output->var23[3];
        v14 = output->var23[4];
        v15 = output->var24[0];
        *buf = 67110400;
        v31 = v10;
        v32 = 1024;
        v33 = v11;
        v34 = 1024;
        v35 = v12;
        v36 = 1024;
        v37 = v13;
        v38 = 1024;
        v39 = v14;
        v40 = 1024;
        v41 = v15;
        _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkDiffV[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
      }

      if (logLevel >= 3)
      {
        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
        {
          v16 = output->var24[0];
          v17 = output->var24[1];
          v18 = output->var24[2];
          v19 = output->var24[3];
          v20 = output->var24[4];
          v21 = output->var25[0];
          *buf = 67110400;
          v31 = v16;
          v32 = 1024;
          v33 = v17;
          v34 = 1024;
          v35 = v18;
          v36 = 1024;
          v37 = v19;
          v38 = 1024;
          v39 = v20;
          v40 = 1024;
          v41 = v21;
          _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkCtrH[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
        }

        if (logLevel >= 3)
        {
          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v22 = output->var25[0];
            v23 = output->var25[1];
            v24 = output->var25[2];
            v25 = output->var25[3];
            v26 = output->var25[4];
            v27 = output->var26;
            *buf = 67110400;
            v31 = v22;
            v32 = 1024;
            v33 = v23;
            v34 = 1024;
            v35 = v24;
            v36 = 1024;
            v37 = v25;
            v38 = 1024;
            v39 = v26;
            v40 = 1024;
            v41 = v27;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] blkCtrV[ 0 -  5] = %010d, %010d, %010d, %010d, %010d, %010d\n", buf, 0x26u);
          }

          if (logLevel >= 3 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
          {
            v28 = output->var26;
            *buf = 67109120;
            v31 = v28;
            _os_log_impl(&dword_23D3F2000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.50.3] variance = %010d\n", buf, 8u);
          }
        }
      }
    }
  }
}

- (void)processPixelWithInput_V3:Measurement:Output:.cold.3()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1594\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("[ASEProcessingT1 processPixelWithInput_V3:Measurement:Output:]", "ASEProcessingT1.m", 1594, "0");
}

- (void)populateOutputHcus:.cold.1()
{
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 0;
    OUTLINED_FUNCTION_0(&dword_23D3F2000, MEMORY[0x277D86220], v0, " [1.50.3] Assertion: 0 warned in /Library/Caches/com.apple.xbs/Sources/ASEFramework/ASEProcessingT1.m at line 1654\n", v1, v2, v3, v4, v5);
  }

  __assert_rtn("[ASEProcessingT1 populateOutputHcus:]", "ASEProcessingT1.m", 1654, "0");
}

@end