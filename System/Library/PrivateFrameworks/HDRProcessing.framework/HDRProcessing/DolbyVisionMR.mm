@interface DolbyVisionMR
- (DolbyVisionMR)init;
- (int)metadataReconstruction:(id *)reconstruction dmData:(id *)data maxDisplayBrightnessNits:(double)nits targetMaxNits:(double)maxNits targetMinNits:(double)minNits displayPrimaries:(double *)primaries baseMax:(double)max baseMin:(double)self0 videoFullRangeFlag:(int)self1 colourPrimaries:(int)self2 matrixCoeffs:(int)self3 numFrames:(unsigned int)self4;
- (void)dealloc;
@end

@implementation DolbyVisionMR

- (DolbyVisionMR)init
{
  v8.receiver = self;
  v8.super_class = DolbyVisionMR;
  v2 = [(DolbyVisionMR *)&v8 init];
  v3 = v2;
  if (v2)
  {
    *(v2 + 8) = xmmword_2508D1D20;
    *(v2 + 3) = 0x10000000CLL;
    *(v2 + 8) = 1;
    *(v2 + 5) = 0;
    *(v2 + 12) = 0;
    *(v2 + 16) = 0x200000000;
    *(v2 + 34) = 0;
    *(v2 + 54) = 0;
    *(v2 + 62) = 0;
    *(v2 + 72) = 0;
    *(v2 + 35) = 3;
    *(v2 + 37) = 0x3F747AE147AE147BLL;
    *(v2 + 38) = 0x408F400000000000;
    *(v2 + 39) = 3;
    *(v2 + 48) = 28;
    *(v2 + 49) = 0x3F747AE147AE147BLL;
    *(v2 + 50) = 0x4059000000000000;
    *(v2 + 51) = 2;
    v4 = &DisplayTbl;
    v5 = 7;
    *(v2 + 60) = 16;
    do
    {
      DisplayIdxTblDoViMR81[*v4] = v4;
      v4 += 40;
      --v5;
    }

    while (v5);
    bzero(v2 + 12752, 0x450uLL);
    v6 = v3;
  }

  return v3;
}

- (int)metadataReconstruction:(id *)reconstruction dmData:(id *)data maxDisplayBrightnessNits:(double)nits targetMaxNits:(double)maxNits targetMinNits:(double)minNits displayPrimaries:(double *)primaries baseMax:(double)max baseMin:(double)self0 videoFullRangeFlag:(int)self1 colourPrimaries:(int)self2 matrixCoeffs:(int)self3 numFrames:(unsigned int)self4
{
  v197 = *MEMORY[0x277D85DE8];
  maxCopy = 0.0;
  if (max >= 0.0)
  {
    maxCopy = max;
  }

  v27 = pow(maxCopy / 10000.0, 0.159301758);
  v28 = pow((v27 * 18.8515625 + 0.8359375) / (v27 * 18.6875 + 1.0), 78.84375);
  dataCopy = data;
  LODWORD(v29) = data->var16;
  if (fabs(v28 + v29 / -4095.0) >= 0.00138888889)
  {
    maxNitsCopy = 1000.0;
    if (maxNits <= 1000.0)
    {
      maxNitsCopy = maxNits;
    }

    v175 = maxNitsCopy;
    if (GetConfig())
    {
      Config = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(Config, 0x5Du, 0) == 1)
      {
        v189[0] = 0;
        if (MrCacheIsHit(data, flag, colourPrimaries, coeffs, self->mrCache.YCCtoRGB_coef, v189, v175, minNits, max, min))
        {
          invalidateDMDataL2L4L5L6L8L10(data);
          v33 = *self->mrCache.mr_YCCtoRGB_coef;
          v34 = *&self->mrCache.mr_YCCtoRGB_coef[4];
          data->var4[8] = self->mrCache.mr_YCCtoRGB_coef[8];
          *data->var4 = v33;
          *&data->var4[4] = v34;
          v35 = *self->mrCache.mr_YCCtoRGB_offset;
          data->var5[2] = self->mrCache.mr_YCCtoRGB_offset[2];
          *data->var5 = v35;
          v36 = *self->mrCache.mr_RGBtoLMS_coef;
          v37 = *&self->mrCache.mr_RGBtoLMS_coef[4];
          data->var6[8] = self->mrCache.mr_RGBtoLMS_coef[8];
          *data->var6 = v36;
          *&data->var6[4] = v37;
          *&data->var15 = *&self->mrCache.mr_source_min_PQ;
          *&data->var18 = *&self->mrCache.mr_num_ext_blocks;
          data->var20 = self->mrCache.mr_num_blocks_l8;
          data->var21 = self->mrCache.mr_L1;
          v38 = self->mrCache.mr_L2[0];
          v39 = self->mrCache.mr_L2[1];
          v40 = self->mrCache.mr_L2[2];
          data->var22[3] = self->mrCache.mr_L2[3];
          data->var22[2] = v40;
          data->var22[1] = v39;
          data->var22[0] = v38;
          v41 = self->mrCache.mr_L2[4];
          v42 = self->mrCache.mr_L2[5];
          v43 = self->mrCache.mr_L2[7];
          data->var22[6] = self->mrCache.mr_L2[6];
          data->var22[7] = v43;
          data->var22[5] = v42;
          data->var22[4] = v41;
          data->var23 = self->mrCache.mr_L3;
          v44 = *&self->mrCache.mr_L4.valid;
          data->var24.var2 = self->mrCache.mr_L4.anchor_power;
          *&data->var24.var0 = v44;
          v45 = *self->mrCache.mr_L8[2].hue_vector_field;
          v47 = *&self->mrCache.mr_L8[1].trim_saturation_gain;
          v46 = *&self->mrCache.mr_L8[1].hue_vector_field[2];
          *&data->var27[2].var6 = *&self->mrCache.mr_L8[2].trim_chroma_weight;
          *data->var27[2].var12 = v45;
          *&data->var27[1].var7 = v47;
          *&data->var27[1].var12[2] = v46;
          v49 = *&self->mrCache.mr_L8[3].saturation_vector_field[4];
          v48 = *&self->mrCache.mr_L8[4].trim_offset;
          v50 = *&self->mrCache.mr_L8[3].trim_power;
          *&data->var27[4].var9 = *&self->mrCache.mr_L8[4].target_mid_contrast;
          *&data->var27[3].var11[4] = v49;
          *&data->var27[4].var4 = v48;
          *&data->var27[3].var5 = v50;
          v51 = *&self->mrCache.mr_L8[0].valid;
          v52 = *&self->mrCache.mr_L8[0].hue_vector_field[4];
          *&data->var27[0].var8 = *&self->mrCache.mr_L8[0].ms_weight;
          *&data->var27[0].var12[4] = v52;
          *&data->var27[0].var0 = v51;
          v53 = *&self->mrCache.mr_L10[0].valid;
          v54 = *&self->mrCache.mr_L10[1].target_display_index;
          *&data->var29[0].var8 = *&self->mrCache.mr_L10[0].target_primary_green_x;
          *&data->var29[1].var2 = v54;
          *&data->var29[0].var0 = v53;
          v55 = *&self->mrCache.mr_L10[1].target_primary_blue_x;
          v56 = *&self->mrCache.mr_L10[2].target_min_PQ;
          v57 = *&self->mrCache.mr_L10[3].target_primary_red_x;
          *&data->var29[2].var12 = *&self->mrCache.mr_L10[2].target_primary_white_x;
          *&data->var29[3].var6 = v57;
          *&data->var29[1].var10 = v55;
          *&data->var29[2].var4 = v56;
LABEL_19:
          updateComposerData(reconstruction);
          goto LABEL_20;
        }

        if (v189[0] == 1)
        {
          if (GetConfig())
          {
            v59 = GetConfig();
            if (*HDRConfig::GetConfigEntryValue(v59, 0x61u, 0) == 1)
            {
              LOWORD(v181) = 0;
              *buf = 0;
              if (data->var24.var0)
              {
                hdrpConstructL4(&self->mr, data, buf, v60, v61);
              }

              *&self->mrCache.mr_L4.valid = *buf;
              self->mrCache.mr_L4.anchor_power = v181;
              invalidateDMDataL2L4L5L6L8L10(data);
              MrCacheReadTgt(data, self->mrCache.YCCtoRGB_coef);
              goto LABEL_19;
            }
          }
        }

        MrCacheUpdateSrc(data, flag, colourPrimaries, coeffs, self->mrCache.YCCtoRGB_coef, v175, minNits, max, min);
      }
    }

    flagCopy = flag;
    v62 = &self->mr.trmCodec.CodeBias2[1];
    memset(v190, 0, sizeof(v190));
    memset(v189, 0, 170);
    memset(v188, 0, sizeof(v188));
    v179 = 0;
    v178 = 0;
    bzero(&self->mdsExt, 0xBE0uLL);
    *&self->mdsExt.trim2.TrimLevel = 0x700000002;
    *&self->mdsExt.trim8.TrimLevel = 0x1500000008;
    *&self->mdsExt.trim10.TrimLevel = 0xC0000000ALL;
    self->mdsExt.filtered_mean_PQ = -1.0;
    p_mr = &self->mr;
    bzero(&self->mr, 0x2408uLL);
    selfCopy = self;
    p_trim8 = &self->mr.mdsBase.mdsExtBaseFxp.trim8;
    self->mr.trmCodec.Default2[1] = 1.0;
    self->mr.trmCodec.Default2[3] = 1.0;
    __asm { FMOV            V0.2D, #1.0 }

    *&self->mr.trmCodec.Default2[5] = _Q0;
    v167 = _Q0;
    self->mr.trmCodec.CodeBias2[1] = 0.5;
    *&self->mr.trmCodec.CodeBias2[2] = xmmword_2508D1D30;
    *&self->mr.trmCodec.CodeBias2[4] = xmmword_2508D1D30;
    Default8 = self->mr.trmCodec.Default8;
    *Default8 = 1.0;
    *&selfCopy->mr.trmCodec.Default8[1] = *&selfCopy->mr.trmCodec.Default2[1];
    *&selfCopy->mr.trmCodec.Default8[3] = *&selfCopy->mr.trmCodec.Default2[3];
    v70 = *(v62 + 1);
    *(v62 + 14) = *v62;
    *(v62 + 15) = v70;
    *&selfCopy->mr.trmCodec.Default8[5] = _Q0;
    *(v62 + 16) = *(v62 + 2);
    *&selfCopy->mr.trmCodec.Default8[7] = 0u;
    selfCopy->mr.trmCodec.CodeBias8[7] = -0.5;
    selfCopy->mr.trmCodec.CodeBias8[8] = -0.5;
    *&selfCopy->mr.trmCodec.Default8[13] = 0u;
    *&selfCopy->mr.trmCodec.Default8[11] = 0u;
    *&selfCopy->mr.trmCodec.Default8[9] = 0u;
    memset_pattern16(&selfCopy->mr.trmCodec.CodeBias8[9], &unk_2508D1DB0, 0x30uLL);
    *&selfCopy->mr.trmCodec.Default8[19] = 0u;
    *&selfCopy->mr.trmCodec.Default8[17] = 0u;
    *&selfCopy->mr.trmCodec.Default8[15] = 0u;
    memset_pattern16(&selfCopy->mr.trmCodec.CodeBias8[15], &unk_2508D1DC0, 0x30uLL);
    *&selfCopy->mr.trmCodec.CodeBias10[8] = 0u;
    *&selfCopy->mr.trmCodec.CodeBias10[10] = 0u;
    *&selfCopy->mr.trmCodec.CodeBias10[4] = 0u;
    *&selfCopy->mr.trmCodec.CodeBias10[6] = 0u;
    *selfCopy->mr.trmCodec.CodeBias10 = 0u;
    *&selfCopy->mr.trmCodec.CodeBias10[2] = 0u;
    selfCopy->mr.trmCodec.Default10[0] = 1.0;
    *&selfCopy->mr.trmCodec.Default10[1] = xmmword_2508D1D40;
    selfCopy->mr.trmCodec.Default10[3] = 1.0;
    selfCopy->mr.mrCfgChged = 1;
    selfCopy->mr.mdsExtChged = 1;
    selfCopy->mr.mdsBaseValid = -1;
    bzero(&selfCopy->mr.mdsBase.mdsExtBase, 0xBE0uLL);
    *&selfCopy->mr.mdsBase.mdsExtBase.trim2.TrimLevel = 0x700000002;
    *&selfCopy->mr.mdsBase.mdsExtBase.trim8.TrimLevel = 0x1500000008;
    *&selfCopy->mr.mdsBase.mdsExtBase.trim10.TrimLevel = 0xC0000000ALL;
    selfCopy->mr.mdsBase.mdsExtBase.filtered_mean_PQ = -1.0;
    bzero(&selfCopy->mr.mdsBase.mdsExtBaseFxp, 0x2BCuLL);
    *&selfCopy->mr.mdsBase.mdsExtBaseFxp.trim2.TrimLevel = 0x700000002;
    *&selfCopy->mr.mdsBase.mdsExtBaseFxp.trim8.TrimLevel = 0x1500000008;
    *&selfCopy->mr.mdsBase.mdsExtBaseFxp.trim10.TrimLevel = 0xC0000000ALL;
    p_trim8[1].Trima[3][9] = -1;
    selfCopy->mr.tcCtrl.pDefL8 = Default8;
    selfCopy->mr.tcCtrl.pDefL2 = p_mr;
    selfCopy->mr.tcCtrl.sps[1].sMin = 0.0;
    *&selfCopy->mr.tcCtrl.sps[1].tMin = xmmword_2508D1D50;
    *&selfCopy->mr.tcCtrl.sps[1].sMid = xmmword_2508D1D60;
    *&selfCopy->mr.tcCtrl.sps[1].slopeMid = v167;
    *&selfCopy->mr.tcCtrl.sps[1].tMax = v167;
    *&selfCopy->mr.tcCtrl.sps[1].c2l = 0u;
    *&selfCopy->mr.tcCtrl.sps[1].c2u = 0u;
    selfCopy->mrCfg.mrCtrl.Bdp = reconstruction->var2;
    selfCopy->mrCfg.mrCtrl.Rng = flagCopy != 0;
    if (colourPrimaries == 12)
    {
      selfCopy->mrCfg.sigEnv[0].RgbDef = 0;
      *selfCopy->mrCfg.sigEnv[0].V8Primaries = xmmword_2508D1EC0;
      *&selfCopy->mrCfg.sigEnv[0].V8Primaries[2] = unk_2508D1ED0;
      *&selfCopy->mrCfg.sigEnv[0].V8Primaries[4] = xmmword_2508D1EE0;
      *&selfCopy->mrCfg.sigEnv[0].V8Primaries[6] = unk_2508D1EF0;
      dataCopy3 = data;
    }

    else
    {
      dataCopy3 = data;
      if (colourPrimaries == 1)
      {
        selfCopy->mrCfg.sigEnv[0].RgbDef = 2;
        v72 = &xmmword_2508D1E40;
      }

      else
      {
        selfCopy->mrCfg.sigEnv[0].RgbDef = 3;
        v72 = &xmmword_2508D1E80;
      }

      v73 = v72[1];
      *selfCopy->mrCfg.sigEnv[0].V8Primaries = *v72;
      *&selfCopy->mrCfg.sigEnv[0].V8Primaries[2] = v73;
      v74 = v72[3];
      *&selfCopy->mrCfg.sigEnv[0].V8Primaries[4] = v72[2];
      *&selfCopy->mrCfg.sigEnv[0].V8Primaries[6] = v74;
    }

    if (coeffs == 1)
    {
      v75 = 2;
    }

    else
    {
      v75 = 3;
    }

    if (coeffs == 12)
    {
      v75 = 0;
    }

    selfCopy->mrCfg.mrCtrl.YuvXferSpec = v75;
    v76 = *primaries;
    v77 = *(primaries + 1);
    v78 = *(primaries + 3);
    *&selfCopy->mrCfg.sigEnv[1].V8Primaries[4] = *(primaries + 2);
    *&selfCopy->mrCfg.sigEnv[1].V8Primaries[6] = v78;
    *selfCopy->mrCfg.sigEnv[1].V8Primaries = v76;
    *&selfCopy->mrCfg.sigEnv[1].V8Primaries[2] = v77;
    if (GetConfig())
    {
      v79 = GetConfig();
      if (*HDRConfig::GetConfigEntryValue(v79, 0x64u, 0) == 1)
      {
        *selfCopy->mrCfg.sigEnv[1].V8Primaries = xmmword_2508D1EC0;
        *&selfCopy->mrCfg.sigEnv[1].V8Primaries[2] = unk_2508D1ED0;
        *&selfCopy->mrCfg.sigEnv[1].V8Primaries[4] = xmmword_2508D1EE0;
        *&selfCopy->mrCfg.sigEnv[1].V8Primaries[6] = unk_2508D1EF0;
      }
    }

    selfCopy->mrCfg.mrCtrl.DmVer = 2;
    if (dataCopy3->var32.var0)
    {
      v80 = 4;
      if (dataCopy3->var32.var2 == 2)
      {
        selfCopy->mrCfg.mrCtrl.DmVer = 4;
        v81 = 16;
        v80 = 16;
LABEL_50:
        selfCopy->mrCfg.sigEnv[0].SupportDms = v80;
        selfCopy->mrCfg.sigEnv[1].SupportDms = v81;
        selfCopy->mrCfg.sigEnv[0].Min = min;
        selfCopy->mrCfg.sigEnv[0].Max = max;
        v187 = 0;
        v186 = 0u;
        v185 = 0u;
        *&v184[8] = 0u;
        *v184 = v175;
        if (!GetConfig() || (v82 = GetConfig(), *HDRConfig::GetConfigEntryValue(v82, 0x62u, 0) != 1))
        {
          v85 = 1;
          goto LABEL_64;
        }

        *v184 = xmmword_2508D1D70;
        *&v184[16] = 0x407D900000000000;
        if (GetConfig())
        {
          v83 = GetConfig();
          ConfigEntryValue = HDRConfig::GetConfigEntryValue(v83, 0x5Fu, 0);
          v85 = 3;
          if (nits <= 100.0 || nits >= 1000.0 || (*ConfigEntryValue & 1) == 0)
          {
LABEL_64:
            v89 = (minNits * 1000000.0 + 0.5) / 1000000.0;
            if (GetConfig())
            {
              v90 = GetConfig();
              if (*HDRConfig::GetConfigEntryValue(v90, 0x63u, 0))
              {
                v89 = 0.005;
              }
            }

            bzero(buf, 0x364uLL);
            v177 = 0;
            v91 = convertMetaDataToPayLoad(dataCopy3, buf);
            v97 = MrParseMds(buf, v91, &selfCopy->mrCfg, &v177, &selfCopy->mdsExt, p_mr, v92, v93, v94, v95, v96);
            if (v97 < 0)
            {
              v156 = v97;
              if (enableLogInstance)
              {
                if (logInstanceID)
                {
                  v157 = logInstanceID;
                }

                else
                {
                  v157 = prevLogInstanceID;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 134218240;
                  *&v191[4] = WORD1(v157);
                  *&v191[12] = 1024;
                  *v192 = v156;
                  v158 = MEMORY[0x277D86220];
                  v159 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: ParseMds ret = %d";
LABEL_185:
                  _os_log_impl(&dword_250836000, v158, OS_LOG_TYPE_DEFAULT, v159, v191, 0x12u);
                }

LABEL_186:
                prevLogInstanceID = v157;
                goto LABEL_196;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
LABEL_196:
                LODWORD(v58) = -1;
                return v58;
              }

              *v191 = 67109120;
              *&v191[4] = v156;
              v160 = MEMORY[0x277D86220];
              v161 = " [1.450.54] MR81: metadataReconstruction: Error: ParseMds ret = %d";
            }

            else
            {
              v176 = 0;
              v98 = v184;
              v99 = v85;
              while (1)
              {
                v100 = *v98;
                selfCopy->mrCfg.sigEnv[1].Min = v89;
                selfCopy->mrCfg.sigEnv[1].Max = v100;
                v101 = hdrpMetadataReconstruction(&selfCopy->mrCfg, &selfCopy->mdsExt, 0, p_mr);
                v102 = v101;
                if (v101 < 0)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v157 = logInstanceID;
                    }

                    else
                    {
                      v157 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 134218240;
                      *&v191[4] = WORD1(v157);
                      *&v191[12] = 1024;
                      *v192 = v102;
                      v158 = MEMORY[0x277D86220];
                      v159 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: ret = %d";
                      goto LABEL_185;
                    }

                    goto LABEL_186;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_196;
                  }

                  *v191 = 67109120;
                  *&v191[4] = v102;
                  v160 = MEMORY[0x277D86220];
                  v161 = " [1.450.54] MR81: metadataReconstruction: Error: ret = %d";
                  goto LABEL_195;
                }

                if (!v101)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v157 = logInstanceID;
                    }

                    else
                    {
                      v157 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 134218240;
                      *&v191[4] = WORD1(v157);
                      *&v191[12] = 1024;
                      *v192 = 0;
                      v158 = MEMORY[0x277D86220];
                      v159 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: ret = %d [no change]";
                      goto LABEL_185;
                    }

                    goto LABEL_186;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_196;
                  }

                  *v191 = 67109120;
                  v160 = MEMORY[0x277D86220];
                  v161 = " [1.450.54] MR81: metadataReconstruction: Warning: ret = %d [no change]";
                  goto LABEL_195;
                }

                MdsExtFxpMr = MrGetMdsExtFxpMr(&v176, p_mr);
                v104 = MdsExtFxpMr;
                if (MdsExtFxpMr < 0)
                {
                  if (enableLogInstance)
                  {
                    if (logInstanceID)
                    {
                      v157 = logInstanceID;
                    }

                    else
                    {
                      v157 = prevLogInstanceID;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 134218240;
                      *&v191[4] = WORD1(v157);
                      *&v191[12] = 1024;
                      *v192 = v104;
                      v158 = MEMORY[0x277D86220];
                      v159 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                      goto LABEL_185;
                    }

                    goto LABEL_186;
                  }

                  if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                  {
                    goto LABEL_196;
                  }

                  *v191 = 67109120;
                  *&v191[4] = v104;
                  v160 = MEMORY[0x277D86220];
                  v161 = " [1.450.54] MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                  goto LABEL_195;
                }

                if (!MdsExtFxpMr)
                {
                  break;
                }

                v105 = v176;
                copyL2L8L10(v176, v190, v189, v188, &v179 + 1, &v179, &v178);
                ++v98;
                if (!--v99)
                {
                  v166 = v85;
                  v168 = p_mr;
                  reconstructionCopy = reconstruction;
                  invalidateDMDataL2L4L5L6L8L10(dataCopy3);
                  v106 = 0;
                  dataCopy3->var15 = *(v105 + 76);
                  dataCopy3->var16 = *(v105 + 78);
                  var4 = dataCopy3->var4;
                  v172 = v105;
                  v108 = v105 + 8;
                  v109 = MEMORY[0x277D86220];
                  do
                  {
                    for (i = 0; i != 3; ++i)
                    {
                      v111 = var4[i];
                      v112 = *(v108 + 2 * i);
                      if (v111 != v112)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v113 = logInstanceID;
                          }

                          else
                          {
                            v113 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134219008;
                            *&v191[4] = WORD1(v113);
                            *&v191[12] = 1024;
                            *v192 = v106;
                            *&v192[4] = 1024;
                            *v193 = i;
                            *&v193[4] = 1024;
                            v194 = v111;
                            v195 = 1024;
                            v196 = v112;
                            _os_log_impl(&dword_250836000, v109, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: YCCtoRGB_coef [%d][%d] changed, %d/%d", v191, 0x24u);
                          }

                          prevLogInstanceID = v113;
                        }

                        else if (os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109888;
                          *&v191[4] = v106;
                          *&v191[8] = 1024;
                          *&v191[10] = i;
                          *v192 = 1024;
                          *&v192[2] = v111;
                          *v193 = 1024;
                          *&v193[2] = v112;
                          _os_log_impl(&dword_250836000, v109, OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Warning: YCCtoRGB_coef [%d][%d] changed, %d/%d", v191, 0x1Au);
                        }
                      }
                    }

                    ++v106;
                    v108 += 6;
                    var4 += 3;
                  }

                  while (v106 != 3);
                  v114 = 0;
                  v115 = MEMORY[0x277D86220];
                  v116 = dataCopy;
                  do
                  {
                    v117 = v116->var5[v114];
                    v118 = *(v172 + 28 + 4 * v114);
                    if (v117 != v118)
                    {
                      if (enableLogInstance)
                      {
                        if (logInstanceID)
                        {
                          v119 = logInstanceID;
                        }

                        else
                        {
                          v119 = prevLogInstanceID;
                        }

                        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 134218752;
                          *&v191[4] = WORD1(v119);
                          *&v191[12] = 1024;
                          *v192 = v114;
                          *&v192[4] = 1024;
                          *v193 = v117;
                          *&v193[4] = 1024;
                          v194 = v118;
                          _os_log_impl(&dword_250836000, v115, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: YCCtoRGB_offset[%d] changed, %u/%u", v191, 0x1Eu);
                        }

                        prevLogInstanceID = v119;
                        v116 = dataCopy;
                      }

                      else if (os_log_type_enabled(v115, OS_LOG_TYPE_DEFAULT))
                      {
                        *v191 = 67109632;
                        *&v191[4] = v114;
                        *&v191[8] = 1024;
                        *&v191[10] = v117;
                        *v192 = 1024;
                        *&v192[2] = v118;
                        _os_log_impl(&dword_250836000, v115, OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Warning: YCCtoRGB_offset[%d] changed, %u/%u", v191, 0x14u);
                      }
                    }

                    ++v114;
                  }

                  while (v114 != 3);
                  v120 = 0;
                  var6 = v116->var6;
                  v122 = v172 + 42;
                  v123 = MEMORY[0x277D86220];
                  do
                  {
                    for (j = 0; j != 3; ++j)
                    {
                      v125 = var6[j];
                      v126 = *(v122 + 2 * j);
                      if (v125 != v126)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v127 = logInstanceID;
                          }

                          else
                          {
                            v127 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134219008;
                            *&v191[4] = WORD1(v127);
                            *&v191[12] = 1024;
                            *v192 = v120;
                            *&v192[4] = 1024;
                            *v193 = j;
                            *&v193[4] = 1024;
                            v194 = v125;
                            v195 = 1024;
                            v196 = v126;
                            _os_log_impl(&dword_250836000, v123, OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: RGBtoLMS_coef [%d][%d] changed, %d/%d", v191, 0x24u);
                          }

                          prevLogInstanceID = v127;
                        }

                        else if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109888;
                          *&v191[4] = v120;
                          *&v191[8] = 1024;
                          *&v191[10] = j;
                          *v192 = 1024;
                          *&v192[2] = v125;
                          *v193 = 1024;
                          *&v193[2] = v126;
                          _os_log_impl(&dword_250836000, v123, OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Warning: RGBtoLMS_coef [%d][%d] changed, %d/%d", v191, 0x1Au);
                        }
                      }
                    }

                    ++v120;
                    v122 += 6;
                    var6 += 3;
                  }

                  while (v120 != 3);
                  *dataCopy->var4 = vmovl_s16(*(v172 + 8));
                  *&dataCopy->var4[4] = vmovl_s16(*(v172 + 16));
                  dataCopy->var4[8] = *(v172 + 24);
                  dataCopy->var5[0] = *(v172 + 28);
                  dataCopy->var5[1] = *(v172 + 32);
                  dataCopy->var5[2] = *(v172 + 36);
                  *dataCopy->var6 = vmovl_s16(*(v172 + 42));
                  *&dataCopy->var6[4] = vmovl_s16(*(v172 + 50));
                  dataCopy->var6[8] = *(v172 + 58);
                  dataCopy->var21.var1 = *(v172 + 120);
                  dataCopy->var21.var3 = *(v172 + 124);
                  dataCopy->var21.var2 = *(v172 + 122);
                  dataCopy->var23.var0 = 1;
                  dataCopy->var23.var1 = *(v172 + 126);
                  dataCopy->var23.var2 = *(v172 + 128);
                  dataCopy->var23.var3 = *(v172 + 130);
                  ++dataCopy->var18;
                  if (*(v172 + 692) != -1)
                  {
                    if (GetConfig())
                    {
                      v128 = GetConfig();
                      if (*HDRConfig::GetConfigEntryValue(v128, 0x60u, 0) == 1)
                      {
                        dataCopy->var24.var0 = 1;
                        *&dataCopy->var24.var1 = *(v172 + 692);
                        ++dataCopy->var18;
                      }
                    }
                  }

                  v129 = v166;
                  if (selfCopy->mrCfg.mrCtrl.DmVer == 4)
                  {
                    selfCopy->mrCfg.mrCtrl.DmVer = 3;
                    selfCopy->mrCfg.sigEnv[0].SupportDms = 4;
                    selfCopy->mrCfg.sigEnv[1].SupportDms = 8;
                    selfCopy->mdsExt.dm_version_index = 1;
                    bzero(&selfCopy->mr.mdsBase.mdsExtBase, 0xBE0uLL);
                    *&selfCopy->mr.mdsBase.mdsExtBase.trim2.TrimLevel = 0x700000002;
                    *&selfCopy->mr.mdsBase.mdsExtBase.trim8.TrimLevel = 0x1500000008;
                    *&selfCopy->mr.mdsBase.mdsExtBase.trim10.TrimLevel = 0xC0000000ALL;
                    selfCopy->mr.mdsBase.mdsExtBase.filtered_mean_PQ = -1.0;
                    bzero(&selfCopy->mr.mdsBase.mdsExtBaseFxp, 0x2BCuLL);
                    *&selfCopy->mr.mdsBase.mdsExtBaseFxp.trim2.TrimLevel = 0x700000002;
                    *&p_trim8->TrimLevel = 0x1500000008;
                    *&p_trim8[1].TrimLevel = 0xC0000000ALL;
                    p_trim8[1].Trima[3][9] = -1;
                    v130 = v184;
                    while (1)
                    {
                      v131 = *v130;
                      selfCopy->mrCfg.sigEnv[1].Min = v89;
                      selfCopy->mrCfg.sigEnv[1].Max = v131;
                      v132 = hdrpMetadataReconstruction(&selfCopy->mrCfg, &selfCopy->mdsExt, 0, v168);
                      v133 = v132;
                      if (v132 < 0)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v162 = logInstanceID;
                          }

                          else
                          {
                            v162 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134218240;
                            *&v191[4] = WORD1(v162);
                            *&v191[12] = 1024;
                            *v192 = v133;
                            v163 = MEMORY[0x277D86220];
                            v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: ret = %d";
                            goto LABEL_222;
                          }

                          goto LABEL_223;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109120;
                          *&v191[4] = v133;
                          v160 = MEMORY[0x277D86220];
                          v161 = " [1.450.54] MR81: metadataReconstruction: Error: ret = %d";
                          goto LABEL_195;
                        }

                        goto LABEL_196;
                      }

                      if (!v132)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v162 = logInstanceID;
                          }

                          else
                          {
                            v162 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134218240;
                            *&v191[4] = WORD1(v162);
                            *&v191[12] = 1024;
                            *v192 = 0;
                            v163 = MEMORY[0x277D86220];
                            v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: ret = %d [no change]";
                            goto LABEL_222;
                          }

                          goto LABEL_223;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109120;
                          v160 = MEMORY[0x277D86220];
                          v161 = " [1.450.54] MR81: metadataReconstruction: Warning: ret = %d [no change]";
                          goto LABEL_195;
                        }

                        goto LABEL_196;
                      }

                      v134 = MrGetMdsExtFxpMr(&v176, v168);
                      v135 = v134;
                      if (v134 < 0)
                      {
                        if (enableLogInstance)
                        {
                          if (logInstanceID)
                          {
                            v162 = logInstanceID;
                          }

                          else
                          {
                            v162 = prevLogInstanceID;
                          }

                          if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                          {
                            *v191 = 134218240;
                            *&v191[4] = WORD1(v162);
                            *&v191[12] = 1024;
                            *v192 = v135;
                            v163 = MEMORY[0x277D86220];
                            v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                            goto LABEL_222;
                          }

LABEL_223:
                          prevLogInstanceID = v162;
                          goto LABEL_196;
                        }

                        if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                        {
                          *v191 = 67109120;
                          *&v191[4] = v135;
                          v160 = MEMORY[0x277D86220];
                          v161 = " [1.450.54] MR81: metadataReconstruction: Error: GetMdsExtFxpMr ret = %d";
                          goto LABEL_195;
                        }

                        goto LABEL_196;
                      }

                      if (!v134)
                      {
                        break;
                      }

                      copyL2L8L10(v176, v190, v189, v188, &v179 + 1, &v179, &v178);
                      ++v130;
                      if (!--v129)
                      {
                        goto LABEL_125;
                      }
                    }

                    if (enableLogInstance)
                    {
                      if (logInstanceID)
                      {
                        v162 = logInstanceID;
                      }

                      else
                      {
                        v162 = prevLogInstanceID;
                      }

                      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                      {
                        *v191 = 134218240;
                        *&v191[4] = WORD1(v162);
                        *&v191[12] = 1024;
                        *v192 = 0;
                        v163 = MEMORY[0x277D86220];
                        v164 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
LABEL_222:
                        _os_log_impl(&dword_250836000, v163, OS_LOG_TYPE_DEFAULT, v164, v191, 0x12u);
                      }

                      goto LABEL_223;
                    }

                    if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                    {
                      *v191 = 67109120;
                      v160 = MEMORY[0x277D86220];
                      v161 = " [1.450.54] MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
                      goto LABEL_195;
                    }

                    goto LABEL_196;
                  }

LABEL_125:
                  v136 = v179;
                  v137 = HIDWORD(v179);
                  v138 = v178;
                  if (HIDWORD(v179))
                  {
                    if (SHIDWORD(v179) >= 1)
                    {
                      var18 = dataCopy->var18;
                      v140 = v190 | 0xE;
                      p_var7 = &dataCopy->var22[0].var7;
                      v142 = HIDWORD(v179);
                      do
                      {
                        *(p_var7 - 6) = *(v140 - 12);
                        *(p_var7 - 2) = *(v140 - 4);
                        *(p_var7 - 1) = *(v140 - 2);
                        *(p_var7 - 7) = 1;
                        v140 += 16;
                        p_var7 += 8;
                        --v142;
                      }

                      while (v142);
                      dataCopy->var18 = var18 + v137;
                    }

                    dataCopy->var19 = v137;
                  }

                  if (v136)
                  {
                    if (v136 >= 1)
                    {
                      v143 = 0;
                      v144 = dataCopy->var18;
                      do
                      {
                        v145 = dataCopy + v143;
                        v145[330] = v189[v143 + 4];
                        *&dataCopy->var27[v143 / 0x22].var3 = *&v189[v143 + 6];
                        *(v145 + 85) = *&v189[v143 + 14];
                        *(v145 + 164) = 10;
                        v146 = *&v189[v143 + 18];
                        if (v146 != 2048)
                        {
                          *(v145 + 172) = v146;
                          *(v145 + 164) = 12;
                        }

                        *(v145 + 173) = 2048;
                        *(v145 + 348) = 0x8080808080808080;
                        *(v145 + 89) = -2139062144;
                        *(v145 + 163) = 1;
                        v143 += 34;
                      }

                      while (34 * v136 != v143);
                      dataCopy->var18 = v144 + v136;
                    }

                    dataCopy->var20 = v136;
                    *&dataCopy->var32.var1 = 512;
                    if (!dataCopy->var32.var0)
                    {
                      dataCopy->var32.var0 = 1;
                      ++dataCopy->var18;
                    }
                  }

                  if (v138 >= 1)
                  {
                    v147 = 0;
                    v148 = dataCopy->var18;
                    do
                    {
                      v149 = dataCopy + v147;
                      v149[522] = v188[v147 + 4];
                      *(v149 + 131) = *&v188[v147 + 6];
                      v150 = v188[v147 + 10];
                      v149[528] = v150;
                      *&dataCopy->var29[v147 / 0x1C].var6 = *&v188[v147 + 12];
                      if (v150 <= 0x12)
                      {
                        v151 = 5;
                      }

                      else
                      {
                        v151 = 21;
                      }

                      *(v149 + 260) = v151;
                      *(v149 + 259) = 1;
                      v147 += 28;
                    }

                    while (28 * v138 != v147);
                    dataCopy->var18 = v148 + v138;
                  }

                  if (v136 >= 1)
                  {
                    v152 = 0;
                    p_var2 = &dataCopy->var27[0].var2;
                    v154 = &dataCopy->var29[0].var2;
                    do
                    {
                      *v154 = v152 - 76;
                      v154 += 28;
                      *p_var2 = v152 - 76;
                      p_var2 += 34;
                      ++v152;
                    }

                    while (v136 != v152);
                  }

                  updateComposerData(reconstructionCopy);
                  v58 = GetConfig();
                  if (v58)
                  {
                    v155 = GetConfig();
                    if (*HDRConfig::GetConfigEntryValue(v155, 0x5Du, 0) == 1)
                    {
                      MrCacheUpdateTgt(dataCopy, selfCopy->mrCache.YCCtoRGB_coef);
                    }

                    goto LABEL_20;
                  }

                  return v58;
                }
              }

              if (enableLogInstance)
              {
                if (logInstanceID)
                {
                  v157 = logInstanceID;
                }

                else
                {
                  v157 = prevLogInstanceID;
                }

                if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
                {
                  *v191 = 134218240;
                  *&v191[4] = WORD1(v157);
                  *&v191[12] = 1024;
                  *v192 = 0;
                  v158 = MEMORY[0x277D86220];
                  v159 = " [1.450.54] #%04llx MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
                  goto LABEL_185;
                }

                goto LABEL_186;
              }

              if (!os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
              {
                goto LABEL_196;
              }

              *v191 = 67109120;
              v160 = MEMORY[0x277D86220];
              v161 = " [1.450.54] MR81: metadataReconstruction: Warning: GetMdsExtFxpMr ret = %d [no change]";
            }

LABEL_195:
            _os_log_impl(&dword_250836000, v160, OS_LOG_TYPE_DEFAULT, v161, v191, 8u);
            goto LABEL_196;
          }

          nitsCopy = 0.0;
          if (nits >= 0.0)
          {
            nitsCopy = nits;
          }

          v87 = pow(nitsCopy / 10000.0, 0.159301758);
          v88 = pow((v87 * 18.8515625 + 0.8359375) / (v87 * 18.6875 + 1.0), 78.84375);
          if (fabs(v88 + -0.508078422) > 0.02 && fabs(v88 + -0.589110431) > 0.02 && fabs(v88 + -0.670599738) > 0.02)
          {
            *&v185 = nits;
            v85 = 4;
            goto LABEL_64;
          }
        }

        v85 = 3;
        goto LABEL_64;
      }
    }

    else
    {
      v80 = 4;
    }

    v81 = 8;
    goto LABEL_50;
  }

  if (reconstruction->var14[0][0][1][0] == 1 || reconstruction->var14[0][0][2][0] == 1)
  {
    if (enableLogInstance)
    {
      if (logInstanceID)
      {
        v30 = logInstanceID;
      }

      else
      {
        v30 = prevLogInstanceID;
      }

      if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218240;
        v181 = WORD1(v30);
        v182 = 1024;
        v183 = 1;
        _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] #%04llx MR81: metadataReconstruction: Error: unmapped, hasMMRData=%d", buf, 0x12u);
      }

      prevLogInstanceID = v30;
    }

    else if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      LODWORD(v181) = 1;
      _os_log_impl(&dword_250836000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, " [1.450.54] MR81: metadataReconstruction: Error: unmapped, hasMMRData=%d", buf, 8u);
    }

    updateComposerData(reconstruction);
    goto LABEL_196;
  }

LABEL_20:
  LODWORD(v58) = 0;
  return v58;
}

- (void)dealloc
{
  v2.receiver = self;
  v2.super_class = DolbyVisionMR;
  [(DolbyVisionMR *)&v2 dealloc];
}

@end