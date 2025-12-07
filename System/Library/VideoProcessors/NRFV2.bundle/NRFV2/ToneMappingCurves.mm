@interface ToneMappingCurves
- (ToneMappingCurves)initWithWithContext:(id)context;
- (int)estimateMaskRegionInTiles:(__CVBuffer *)tiles;
- (int)regularizeLocalToneCurves:(const ltmCurves *)curves mask:(__CVBuffer *)mask tcrParams:(id)params imageDims:;
- (uint64_t)setToneCurvesWithLTC:(int32x4_t)c GTC:(int32x4_t)tC colorCorrectionMatrix:(uint64_t)matrix dump:(uint64_t)dump;
- (void)dealloc;
@end

@implementation ToneMappingCurves

- (ToneMappingCurves)initWithWithContext:(id)context
{
  contextCopy = context;
  v121.receiver = self;
  v121.super_class = ToneMappingCurves;
  v5 = [(ToneMappingCurves *)&v121 init];
  if (!v5)
  {
    sub_29587BC60(&v122);
    v9 = 0;
LABEL_18:
    v25 = 0;
    goto LABEL_28;
  }

  v6 = objc_opt_new();
  v9 = v6;
  if (!v6)
  {
    sub_29587BBC4(&v122);
    goto LABEL_18;
  }

  objc_msgSend_setStorageMode_(v6, v7, 0, v8);
  objc_msgSend_setHazardTrackingMode_(v9, v10, 2, v11);
  objc_msgSend_setSize_(v9, v12, 51200, v13);
  v17 = objc_msgSend_device(contextCopy, v14, v15, v16);
  v20 = objc_msgSend_newHeapWithDescriptor_(v17, v18, v9, v19);
  internalHeap = v5->_internalHeap;
  v5->_internalHeap = v20;

  if (!v5->_internalHeap)
  {
    sub_29587BB28(&v122);
    goto LABEL_18;
  }

  v25 = objc_opt_new();
  if (v25)
  {
    v26 = objc_msgSend_resourceOptions(v5->_internalHeap, v22, v23, v24);
    objc_msgSend_setResourceOptions_(v25, v27, v26, v28);
    v5->_newLTC = malloc_type_calloc(0xC30uLL, 2uLL, 0x1000040BDFB0063uLL);
    v5->_regGlobal = malloc_type_calloc(0x41uLL, 4uLL, 0x100004052888210uLL);
    v5->_regLocal = malloc_type_calloc(0x41uLL, 4uLL, 0x100004052888210uLL);
    v5->_maskTile = malloc_type_calloc(0x30uLL, 4uLL, 0x100004052888210uLL);
    v5->_isRegularized = 0;
    v5->_hasBeenRegularized = 0;
    v120.receiver = v5;
    v120.super_class = ToneMappingCurves;
    v29 = [(ToneMappingCurves *)&v120 init];
    v5 = v29;
    if (v29)
    {
      v33 = v29->_internalHeap;
      v34 = objc_msgSend_resourceOptions(v33, v30, v31, v32);
      v36 = objc_msgSend_newBufferWithLength_options_(v33, v35, 1024, v34);
      lumaHistogram = v5->_lumaHistogram;
      v5->_lumaHistogram = v36;

      if (v5->_lumaHistogram)
      {
        v41 = v5->_internalHeap;
        v42 = objc_msgSend_resourceOptions(v41, v38, v39, v40);
        v44 = objc_msgSend_newBufferWithLength_options_(v41, v43, 16, v42);
        blackWhiteStrengthCenter = v5->_blackWhiteStrengthCenter;
        v5->_blackWhiteStrengthCenter = v44;

        if (v5->_blackWhiteStrengthCenter)
        {
          objc_msgSend_setTextureType_(v25, v46, 7, v47);
          objc_msgSend_setWidth_(v25, v48, 33, v49);
          objc_msgSend_setHeight_(v25, v50, 8, v51);
          objc_msgSend_setDepth_(v25, v52, 6, v53);
          objc_msgSend_setPixelFormat_(v25, v54, 20, v55);
          objc_msgSend_setUsage_(v25, v56, 1, v57);
          v60 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v58, v25, v59);
          ltcBinsTexD3x = v5->_ltcBinsTexD3x;
          v5->_ltcBinsTexD3x = v60;

          v62 = v5->_ltcBinsTexD3x;
          if (v62)
          {
            objc_storeStrong(&v5->_ltcBinsTex, v62);
            objc_msgSend_setWidth_(v25, v63, 65, v64);
            v67 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v65, v25, v66);
            ltcBinsTexD4x = v5->_ltcBinsTexD4x;
            v5->_ltcBinsTexD4x = v67;

            if (v5->_ltcBinsTexD4x)
            {
              objc_msgSend_setTextureType_(v25, v69, 0, v70);
              objc_msgSend_setWidth_(v25, v71, 257, v72);
              objc_msgSend_setHeight_(v25, v73, 1, v74);
              objc_msgSend_setDepth_(v25, v75, 1, v76);
              objc_msgSend_setPixelFormat_(v25, v77, 20, v78);
              objc_msgSend_setUsage_(v25, v79, 1, v80);
              v83 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v81, v25, v82);
              ltcGTCRatioTex = v5->_ltcGTCRatioTex;
              v5->_ltcGTCRatioTex = v83;

              if (v5->_ltcGTCRatioTex)
              {
                objc_msgSend_setTextureType_(v25, v85, 0, v86);
                objc_msgSend_setWidth_(v25, v87, 257, v88);
                objc_msgSend_setHeight_(v25, v89, 1, v90);
                objc_msgSend_setDepth_(v25, v91, 1, v92);
                objc_msgSend_setPixelFormat_(v25, v93, 20, v94);
                objc_msgSend_setUsage_(v25, v95, 1, v96);
                v99 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v97, v25, v98);
                ltcGTCFinalTex = v5->_ltcGTCFinalTex;
                v5->_ltcGTCFinalTex = v99;

                if (v5->_ltcGTCFinalTex)
                {
                  objc_msgSend_setTextureType_(v25, v101, 7, v102);
                  objc_msgSend_setWidth_(v25, v103, 3, v104);
                  objc_msgSend_setHeight_(v25, v105, 8, v106);
                  objc_msgSend_setDepth_(v25, v107, 6, v108);
                  objc_msgSend_setPixelFormat_(v25, v109, 115, v110);
                  objc_msgSend_setUsage_(v25, v111, 1, v112);
                  v115 = objc_msgSend_newTextureWithDescriptor_(v5->_internalHeap, v113, v25, v114);
                  spatialCCMTex = v5->_spatialCCMTex;
                  v5->_spatialCCMTex = v115;

                  if (v5->_spatialCCMTex)
                  {
                    goto LABEL_13;
                  }

                  sub_29587B5F8(&v122);
                }

                else
                {
                  sub_29587B694(&v122);
                }
              }

              else
              {
                sub_29587B730(&v122);
              }
            }

            else
            {
              sub_29587B7CC(&v122);
            }
          }

          else
          {
            sub_29587B868(&v122);
          }
        }

        else
        {
          sub_29587B904(&v122);
        }
      }

      else
      {
        sub_29587B9A0(&v122);
      }
    }

    else
    {
      sub_29587BA3C(&v122);
    }
  }

  else
  {
    sub_29587BA8C(&v122);
  }

LABEL_28:
  if (v122)
  {
    v117 = 0;
    goto LABEL_14;
  }

LABEL_13:
  v117 = v5;
LABEL_14:
  v118 = v117;

  return v118;
}

- (void)dealloc
{
  unregularizedLTC = self->_unregularizedLTC;
  if (unregularizedLTC)
  {
    free(unregularizedLTC);
  }

  free(self->_newLTC);
  free(self->_regGlobal);
  free(self->_regLocal);
  free(self->_maskTile);
  v4.receiver = self;
  v4.super_class = ToneMappingCurves;
  [(ToneMappingCurves *)&v4 dealloc];
}

- (int)estimateMaskRegionInTiles:(__CVBuffer *)tiles
{
  if (CVPixelBufferLockBaseAddress(tiles, 0))
  {
    return -1;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(tiles);
  BytesPerRow = CVPixelBufferGetBytesPerRow(tiles);
  Width = CVPixelBufferGetWidth(tiles);
  Height = CVPixelBufferGetHeight(tiles);
  v10 = 0;
  offX = self->_offX;
  offY = self->_offY;
  v13 = Height - 2 * offY;
  ltmBinsX = self->_ltmBinsX;
  ltmBinsY = self->_ltmBinsY;
  v16 = v13 / ltmBinsY;
  v17 = (Width - 2 * offX) / ltmBinsX;
  v18 = &BaseAddress[offX];
  maskTile = self->_maskTile;
  if (ltmBinsX <= 1)
  {
    v20 = 1;
  }

  else
  {
    v20 = self->_ltmBinsX;
  }

  if (ltmBinsY <= 1)
  {
    ltmBinsY = 1;
  }

  do
  {
    v21 = 0;
    v22 = &v18[(offY + v10 * v16) * BytesPerRow];
    v23 = &maskTile[v10 * ltmBinsX];
    do
    {
      v24 = 0;
      v23[v21] = 0.0;
      v25 = 0.0;
      do
      {
        v26 = 0;
        v27 = 8;
        do
        {
          v25 = v25 + vcvts_n_f32_u32(v22[(v16 >> 2) * BytesPerRow * v24 + v26 * (v17 >> 3)], 5uLL);
          v23[v21] = v25;
          ++v26;
          --v27;
        }

        while (v27);
        ++v24;
      }

      while (v24 != 4);
      ++v21;
      v22 += v17;
    }

    while (v21 != v20);
    ++v10;
  }

  while (v10 != ltmBinsY);
  CVPixelBufferUnlockBaseAddress(tiles, 0);
  return 0;
}

- (int)regularizeLocalToneCurves:(const ltmCurves *)curves mask:(__CVBuffer *)mask tcrParams:(id)params imageDims:
{
  v99 = v6;
  paramsCopy = params;
  if (!paramsCopy)
  {
    sub_29587BDC4();
    goto LABEL_52;
  }

  self->_isRegularized = 1;
  if (self->_enableSTF)
  {
    self->_hasBeenRegularized = 1;
  }

  self->_ltmBinsX = sub_29583725C(&curves->ltmLut.version);
  self->_ltmBinsY = sub_2958372C4(&curves->ltmLut.version);
  v11 = sub_295837494(&curves->ltmLut.version);
  v12 = sub_2958373F4(&curves->ltmLut.version);
  v13 = sub_295837430(&curves->ltmLut.version);
  v98 = v12;
  v14 = sub_295837354(&curves->ltmLut.version) * v12;
  v15 = sub_29583732C(&curves->ltmLut.version);
  v16 = sub_29583760C(&curves->ltmLut.version, (v14 + v15 * v13) >> 1);
  v17 = sub_29583737C(&curves->ltmLut.version);
  v18 = sub_2958373B8(&curves->ltmLut.version);
  ltmBinsY = self->_ltmBinsY;
  v20 = self->_ltmBinsX * v17;
  Width = CVPixelBufferGetWidth(mask);
  Height = CVPixelBufferGetHeight(mask);
  v28 = v99;
  if (v99.n128_i32[0] >= v20 && v99.n128_i32[1] >= ltmBinsY * v18)
  {
    self->_offX = ((vcvts_n_f32_u64(v99.n128_i32[0] - v20, 1uLL) * Width) / v99.n128_i32[0]);
    self->_offY = ((vcvts_n_f32_u64(v99.n128_i32[1] - ltmBinsY * v18, 1uLL) * Height) / v99.n128_i32[1]);
    Height = objc_msgSend_estimateMaskRegionInTiles_(self, v23, mask, v24);
  }

  v29 = 1.0;
  v28.n128_u32[0] = 1.0;
  if (self->_isRegularized)
  {
    v29 = 1.0 - paramsCopy[3];
    v28.n128_f32[0] = 1.0 - paramsCopy[2];
  }

  if (self->_ltmBinsX != 8 || self->_ltmBinsY != 6)
  {
    sub_29587BCFC(Height, v28);
    goto LABEL_52;
  }

  if (v11 != 33 && v11 != 65)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v5, v5, v98, v99.n128_u32[0], v99.n128_u64[1], *&v100[0], DWORD2(v100[0]));
LABEL_52:
    v96 = -12780;
    goto LABEL_53;
  }

  if (!v16)
  {
    sub_29587BD60(Height, v28);
    goto LABEL_52;
  }

  v30 = 0;
  v31 = 0;
  regLocal = self->_regLocal;
  maskTile = self->_maskTile;
  v34 = 2 * (v98 >> 1);
  v35 = 2 * (v13 >> 1);
  v36 = v16;
  do
  {
    v37 = 0;
    regLocal[v30] = 0.0;
    v38 = 0.0;
    v39 = maskTile;
    v40 = v36;
    do
    {
      v41 = 0;
      v42 = v40;
      do
      {
        v43 = v39[v41];
        if (v43 > paramsCopy[4])
        {
          LOWORD(v43) = *v42;
          v38 = v38 + (LODWORD(v43) / 65535.0);
          regLocal[v30] = v38;
          ++v31;
        }

        v42 = (v42 + v35);
        ++v41;
      }

      while (v41 != 8);
      ++v37;
      v40 = (v40 + v34);
      v39 += 8;
    }

    while (v37 != 6);
    ++v30;
    ++v36;
  }

  while (v30 != v11);
  v44 = 1.0;
  if (paramsCopy[5] < v31)
  {
    v45 = self->_regLocal;
    v46 = v11 & 0x7FFFFFFF;
    do
    {
      *v45 = *v45 / (v31 / v11);
      ++v45;
      --v46;
    }

    while (v46);
    v47 = 0;
    v48 = 0.0;
    v49 = v16;
    do
    {
      v50 = 0;
      v51 = self->_maskTile;
      v52 = v49;
      do
      {
        v53 = 0;
        v54 = v52;
        do
        {
          if (v51[v53] > paramsCopy[4])
          {
            LOWORD(v25) = *v54;
            v25 = LODWORD(v25) / -65535.0;
            v48 = v48 + fabsf(self->_regLocal[v47] + v25);
          }

          v54 = (v54 + v35);
          ++v53;
        }

        while (v53 != 8);
        ++v50;
        v52 = (v52 + v34);
        v51 += 8;
      }

      while (v50 != 6);
      ++v47;
      ++v49;
    }

    while (v47 != (v11 & 0x7FFFFFFF));
    v55 = fminf(fmaxf((v48 - paramsCopy[6]) / (paramsCopy[7] - paramsCopy[6]), 0.0), 1.0);
    v44 = ((1.0 - paramsCopy[8]) * ((v55 * v55) * ((v55 * -2.0) + 3.0))) + (v29 * (1.0 - ((v55 * v55) * ((v55 * -2.0) + 3.0))));
  }

  v56 = 0;
  newLTC = self->_newLTC;
  v59 = self->_regLocal;
  v58 = self->_maskTile;
  regGlobal = self->_regGlobal;
  __asm { FMOV            V7.4S, #1.0 }

  v66.i64[0] = 0x400000004;
  v66.i64[1] = 0x400000004;
  v67 = v16;
  do
  {
    v68 = 0;
    v69 = v67;
    do
    {
      v70 = 0;
      memset(v100, 0, 192);
      *v26.i32 = v68;
      v71 = vdupq_lane_s32(v26, 0);
      v26 = 0;
      v72 = v100;
      do
      {
        v73 = 0;
        v27.f32[0] = (v70 - v56) * (v70 - v56);
        v27 = vdupq_lane_s32(*v27.f32, 0);
        v74 = xmmword_2958D5B50;
        do
        {
          v75 = vsubq_f32(vcvtq_f32_u32(v74), v71);
          v76 = vaddq_f32(v27, vmulq_f32(v75, v75));
          v77 = vbicq_s8(vdivq_f32(_Q7, v76), vceqzq_f32(v76));
          v72[v73] = v77;
          *v26.i32 = (((*v26.i32 + *v77.i32) + *&v77.i32[1]) + *&v77.i32[2]) + *&v77.i32[3];
          v74 = vaddq_s32(v74, v66);
          ++v73;
        }

        while (v73 != 2);
        ++v70;
        v72 += 2;
      }

      while (v70 != 6);
      v78 = 0;
      v79 = v16;
      do
      {
        v80 = 0;
        v81 = 0.0;
        v82 = v100;
        v83 = v79;
        do
        {
          v84 = 0;
          v85 = v83;
          do
          {
            v74.i16[0] = *v85;
            *v74.i32 = v74.u32[0];
            v81 = v81 + (((*(v82 + v84) / *v26.i32) * *v74.i32) / 65535.0);
            v85 = (v85 + v35);
            v84 += 4;
          }

          while (v84 != 32);
          ++v80;
          v83 = (v83 + v34);
          v82 += 2;
        }

        while (v80 != 6);
        regGlobal[v78++] = v81;
        ++v79;
      }

      while (v78 != (v11 & 0x7FFFFFFF));
      v86 = (1.0 - (v58[8 * v56 + v68] / 255.0)) + (v44 * (v58[8 * v56 + v68] / 255.0));
      v87 = v11 & 0x7FFFFFFF;
      v88 = v59;
      v89 = regGlobal;
      v90 = v69;
      do
      {
        v91 = *v88++;
        v92 = v91;
        v93 = *v90++;
        v94 = ((v86 * v93) + (((1.0 - v86) * v92) * 65535.0));
        v95 = *v89++;
        *newLTC++ = ((v28.n128_f32[0] * v94) + (((1.0 - v28.n128_f32[0]) * v95) * 65535.0));
        --v87;
      }

      while (v87);
      ++v68;
      v69 = (v69 + v35);
    }

    while (v68 != 8);
    ++v56;
    v67 = (v67 + v34);
  }

  while (v56 != 6);
  v96 = 0;
LABEL_53:

  return v96;
}

- (uint64_t)setToneCurvesWithLTC:(int32x4_t)c GTC:(int32x4_t)tC colorCorrectionMatrix:(uint64_t)matrix dump:(uint64_t)dump
{
  v11 = sub_295837494(dump);
  v12 = sub_29583725C(dump);
  v13 = sub_2958372C4(dump);
  v14 = sub_2958373F4(dump);
  v15 = sub_295837430(dump);
  v16 = sub_295837354(dump) * v14;
  v17 = sub_29583732C(dump);
  v18 = sub_29583760C(dump, (v16 + v17 * v15) >> 1);
  if (v12 != 8 || v13 != 6)
  {
    sub_29587C250(v18);
    goto LABEL_50;
  }

  if (v11 != 33 && v11 != 65)
  {
    FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", 0, v7, v112, v113, v115, v117, v118, v120);
LABEL_50:
    v42 = 0;
    v110 = 4294954516;
    goto LABEL_54;
  }

  if (!v18)
  {
    sub_29587C1EC();
    goto LABEL_50;
  }

  v128 = v18;
  v130 = v15;
  v132 = v14;
  v134 = a7;
  v19 = 2 * v11;
  if (*(self + 160) == 1)
  {
    if (!*(self + 64))
    {
      v20 = malloc_type_calloc(48 * v11, 2uLL, 0x1000040BDFB0063uLL);
      *(self + 64) = v20;
      if (!v20)
      {
        sub_29587C150(&v150);
        v42 = 0;
        v110 = v150.u32[0];
        goto LABEL_54;
      }
    }

    v21 = 0;
    v22 = 0;
    do
    {
      v23 = 0;
      v24 = 2 * v22;
      v22 += 8 * v11;
      do
      {
        v25 = sub_29583760C(dump, 0);
        v26 = sub_295837354(dump) + v21;
        v27 = v25 + v26 * sub_2958373F4(dump);
        v28 = sub_29583732C(dump) + v23;
        v29 = sub_295837430(dump);
        memcpy((*(self + 64) + v24), &v27[v28 * v29], v19);
        ++v23;
        v24 += v19;
      }

      while (v23 != 8);
      ++v21;
    }

    while (v21 != 6);
  }

  v30 = 96;
  if (v11 == 33)
  {
    v30 = 80;
  }

  objc_storeStrong((self + 8), *(self + v30));
  v32 = *(self + 8);
  v33 = v128;
  if (*(self + 128) == 1)
  {
    v33 = *(self + 72);
  }

  if (*(self + 128))
  {
    v34 = 2 * v11;
  }

  else
  {
    v34 = v130;
  }

  if (*(self + 128))
  {
    v35 = 16 * v11;
  }

  else
  {
    v35 = v132;
  }

  v150 = 0uLL;
  v151.i64[0] = 0;
  v151.i64[1] = v11;
  v152 = xmmword_2958D5B60;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v32, v31, &v150, 0, 0, v33, v34, v35);
  v36 = *(self + 16);
  v150 = 0uLL;
  v37 = *(dump + 221232);
  v151.i64[0] = 0;
  v151.i64[1] = v37;
  v136 = vdupq_n_s64(1uLL);
  v152 = v136;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v36, v38, &v150, 0, 0, dump + 221234, 0, 0);
  v39 = *(self + 24);
  v150 = 0uLL;
  v40 = *(v134 + 221748);
  v151.i64[0] = 0;
  v151.i64[1] = v40;
  v152 = v136;
  objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v39, v41, &v150, 0, 0, v134 + 221750, 0, 0);
  v42 = sub_2958375D8((dump + 110616));
  *(self + 56) = v42 != 0;
  if (!v42)
  {
    goto LABEL_48;
  }

  if (v42 != 27)
  {
    sub_29587BE28();
    goto LABEL_50;
  }

  v43 = sub_29583725C((dump + 110616));
  v44 = sub_2958372C4((dump + 110616));
  v131 = v43;
  if (v43 > 0x20 || (v48 = v44, v44 >= 0x21))
  {
    sub_29587C0EC(v44);
    goto LABEL_50;
  }

  if (v43 != objc_msgSend_height(*(self + 48), v45, v46, v47) || v48 != objc_msgSend_depth(*(self + 48), v49, v50, v51))
  {
    objc_msgSend_makeAliasable(*(self + 48), v49, v50, v51);
    v55 = objc_opt_new();
    if (v55)
    {
      v56 = objc_msgSend_resourceOptions(*(self + 88), v52, v53, v54);
      objc_msgSend_setResourceOptions_(v55, v57, v56, v58);
      objc_msgSend_setTextureType_(v55, v59, 7, v60);
      objc_msgSend_setWidth_(v55, v61, 3, v62);
      objc_msgSend_setHeight_(v55, v63, v43, v64);
      objc_msgSend_setDepth_(v55, v65, v48, v66);
      objc_msgSend_setPixelFormat_(v55, v67, 115, v68);
      objc_msgSend_setUsage_(v55, v69, 1, v70);
      v73 = objc_msgSend_newTextureWithDescriptor_(*(self + 88), v71, v55, v72);
      v74 = *(self + 48);
      *(self + 48) = v73;

      if (*(self + 48))
      {

        goto LABEL_32;
      }

      sub_29587BE8C(&v150);
    }

    else
    {
      sub_29587BF28(&v150);
    }

    v110 = v150.u32[0];

    v42 = 0;
    goto LABEL_54;
  }

LABEL_32:
  v75 = vzip1q_s32(a2, tC);
  v153.columns[0] = vzip1q_s32(v75, c);
  v153.columns[1] = vzip2q_s32(v75, vdupq_lane_s32(*c.i8, 1));
  v153.columns[0].i32[3] = 0;
  v153.columns[2] = vzip1q_s32(vzip2q_s32(a2, tC), vdupq_laneq_s32(c, 2));
  v121 = v153.columns[1];
  v153.columns[1].i32[3] = 0;
  v153.columns[2].i32[3] = 0;
  v154 = __invert_f3(v153);
  v124 = v154.columns[1];
  v126 = v154.columns[0];
  v122 = v154.columns[2];
  v76 = 24 * v43;
  v77 = malloc_type_malloc(24 * v131 * v48, 0x1000040BDFB0063uLL);
  if (!v77)
  {
    sub_29587C08C();
    v42 = 0;
    v110 = 4294954510;
    goto LABEL_54;
  }

  v129 = v77;
  if (!v48)
  {
LABEL_47:
    v109 = *(self + 48);
    v150 = 0uLL;
    v151.i64[0] = 0;
    v151.i64[1] = 3;
    *&v152 = v131;
    *(&v152 + 1) = v48;
    objc_msgSend_replaceRegion_mipmapLevel_slice_withBytes_bytesPerRow_bytesPerImage_(v109, v78, &v150, 0, 0, v129, 24, v76);
    v42 = v129;
LABEL_48:
    v110 = 0;
    goto LABEL_54;
  }

  v79 = 0;
  v80 = vzip1q_s32(a2, c);
  v80.i32[2] = tC.i32[0];
  v81 = vzip2q_s32(a2, c);
  v81.i32[2] = tC.i32[2];
  v82 = v126;
  v82.i32[3] = 0;
  v127 = v82;
  v83 = v124;
  v83.i32[3] = 0;
  v125 = v83;
  v84 = v122;
  v84.i32[3] = 0;
  v123 = v84;
  v114 = v48;
  v116 = v81;
  v119 = v80;
  while (!v131)
  {
LABEL_46:
    ++v79;
    v48 = v114;
    if (v79 == v114)
    {
      goto LABEL_47;
    }
  }

  v85 = 0;
  while (1)
  {
    *v86.i64 = sub_295837654((dump + 110616), v85, v79, 0);
    v86.i32[3] = 0;
    v87.i32[3] = 0;
    v139 = v87;
    v88.i32[3] = 0;
    v141 = v88;
    v143 = v86;
    *v89.i64 = sub_295837654((dump + 110616), v85, v79, 1);
    v89.i32[3] = 0;
    v90.i32[3] = 0;
    v135 = v90;
    v137 = v89;
    v91.i32[3] = 0;
    v133 = v91;
    v92.n128_f64[0] = sub_295837654((dump + 110616), v85, v79, 2);
    v95 = vandq_s8(vandq_s8(vceqq_f32(v143, v137), vceqq_f32(v139, v135)), vceqq_f32(v141, v133));
    v95.i32[3] = v95.i32[2];
    if ((vminvq_u32(v95) & 0x80000000) == 0)
    {
      sub_29587BFC4(v92);
      goto LABEL_53;
    }

    v94.i32[3] = 0;
    v93.i32[3] = 0;
    v92.n128_u32[3] = 0;
    v96 = vandq_s8(vandq_s8(vceqq_f32(v92, v137), vceqq_f32(v93, v135)), vceqq_f32(v94, v133));
    v96.i32[3] = v96.i32[2];
    if ((vminvq_u32(v96) & 0x80000000) == 0)
    {
      break;
    }

    v97 = 0;
    v145 = 0u;
    v146 = 0u;
    v144 = 0u;
    v147 = v137;
    v148 = v135;
    v149 = v133;
    v150 = 0u;
    v151 = 0u;
    v152 = 0u;
    do
    {
      *(&v150 + v97 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v119, COERCE_FLOAT(*(&v147 + v97 * 4))), v121, *&v147.f32[v97], 1), v116, *(&v147 + v97 * 4), 2);
      v97 += 4;
    }

    while (v97 != 12);
    v98 = 0;
    v99 = v150;
    v100 = v151;
    v101 = v152;
    v147 = v127;
    v148 = v125;
    v149 = v123;
    v150 = 0uLL;
    v151 = 0uLL;
    v152 = 0uLL;
    do
    {
      *(&v150 + v98 * 4) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*(&v147 + v98 * 4))), v100, *&v147.f32[v98], 1), v101, *(&v147 + v98 * 4), 2);
      v98 += 4;
    }

    while (v98 != 12);
    v102 = 0;
    DWORD2(v144) = v150.i32[2];
    DWORD2(v145) = v151.i32[2];
    *&v144 = v150.i64[0];
    *&v145 = v151.i64[0];
    DWORD2(v146) = DWORD2(v152);
    *&v146 = v152;
    do
    {
      v103 = v102 / 3u;
      _S0 = *((&v144 + v103) & 0xFFFFFFFFFFFFFFF3 | (4 * ((v102 % 3u) & 3)));
      __asm { FCVT            H0, S0 }

      *(&v129[12 * v85 + 12 * v79 * v131] + ((8 * v103) | (2 * (v102++ % 3u)))) = _S0;
    }

    while (v102 != 9);
    if (++v85 == v131)
    {
      goto LABEL_46;
    }
  }

  sub_29587C028();
LABEL_53:
  v110 = 4294954516;
  v42 = v129;
LABEL_54:
  free(v42);
  *(self + 128) = 0;
  return v110;
}

@end