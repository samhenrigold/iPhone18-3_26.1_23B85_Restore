@interface CMIDeepZoomTransferPreProcMetalStageV2
- (CMIDeepZoomTransferPreProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration;
- (int)computeLocalHomographies:(CMIDeepZoomTransferPreProcMetalStageV2 *)self referencePixelBuffer:(SEL)buffer referenceMetadata:(id)metadata nonReferencePixelBuffer:(__CVBuffer *)pixelBuffer nonReferenceMetadata:(id)referenceMetadata referenceNormalizedCropRectangle:(__CVBuffer *)rectangle nonReferenceNormalizedCropRectangle:(id)cropRectangle computeLocalHomographiesConfig:(CGRect *)config tileCount:(CGRect *)count tileIndex:(id)self0;
- (void)dealloc;
@end

@implementation CMIDeepZoomTransferPreProcMetalStageV2

- (void)dealloc
{
  sub_F1A8(self);
  v3.receiver = self;
  v3.super_class = CMIDeepZoomTransferPreProcMetalStageV2;
  [(CMIDeepZoomTransferPreProcMetalStageV2 *)&v3 dealloc];
}

- (CMIDeepZoomTransferPreProcMetalStageV2)initWithMetalContext:(id)context withTileConfiguration:(id *)configuration
{
  contextCopy = context;
  if (!configuration)
  {
    goto LABEL_15;
  }

  selfCopy = 0;
  if (*configuration && *(configuration + 1))
  {
    v21.receiver = self;
    v21.super_class = CMIDeepZoomTransferPreProcMetalStageV2;
    v9 = [(CMIDeepZoomTransferPreProcMetalStageV2 *)&v21 init];
    self = v9;
    if (!v9)
    {
LABEL_12:
      self = self;
      selfCopy = self;
      goto LABEL_13;
    }

    objc_storeStrong(&v9->_metalContext, context);
    if (self->_metalContext || (+[NSBundle bundleForClass:](NSBundle, "bundleForClass:", objc_opt_class()), v10 = objc_claimAutoreleasedReturnValue(), v11 = [[FigMetalContext alloc] initWithbundle:v10 andOptionalCommandQueue:0], metalContext = self->_metalContext, self->_metalContext = v11, metalContext, v10, self->_metalContext))
    {
      if (!sub_D184(self) && !sub_D240(self))
      {
        v19 = kCVMetalTextureCacheMaximumTextureAgeKey;
        v20 = &off_19028;
        v13 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
        device = [(FigMetalContext *)self->_metalContext device];
        v15 = CVMetalTextureCacheCreate(kCFAllocatorDefault, v13, device, 0, &self->_cvMetalTextureCacheRef);

        if (!v15)
        {
          v16 = [[RegWarpPP alloc] initWithConfig:0];
          regwarpCPU = self->_regwarpCPU;
          self->_regwarpCPU = v16;

          if (self->_regwarpCPU)
          {
            *self->_anon_30 = *configuration;

            goto LABEL_12;
          }
        }
      }
    }

LABEL_15:
    selfCopy = 0;
  }

LABEL_13:

  return selfCopy;
}

- (int)computeLocalHomographies:(CMIDeepZoomTransferPreProcMetalStageV2 *)self referencePixelBuffer:(SEL)buffer referenceMetadata:(id)metadata nonReferencePixelBuffer:(__CVBuffer *)pixelBuffer nonReferenceMetadata:(id)referenceMetadata referenceNormalizedCropRectangle:(__CVBuffer *)rectangle nonReferenceNormalizedCropRectangle:(id)cropRectangle computeLocalHomographiesConfig:(CGRect *)config tileCount:(CGRect *)count tileIndex:(id)self0
{
  metadataCopy = metadata;
  Width = referenceMetadata;
  cropRectangleCopy = cropRectangle;
  indexCopy = index;
  v18 = 0;
  origin = 0u;
  v208 = 0;
  v205 = 0u;
  v206 = 0;
  v19 = -12780;
  v177 = metadataCopy;
  if (!metadataCopy)
  {
    sub_3660();
    selfCopy7 = self;
    goto LABEL_121;
  }

  selfCopy7 = self;
  if (!pixelBuffer || !Width || !rectangle)
  {
    goto LABEL_127;
  }

  sub_3660();
  if (!cropRectangleCopy)
  {
    goto LABEL_121;
  }

  v18 = 0;
  if (!v213)
  {
LABEL_127:
    sub_3660();
    goto LABEL_121;
  }

  sub_3660();
  if (!v23)
  {
    goto LABEL_121;
  }

  v146 = Width;
  v19 = v214 << 16;
  v26.i32[0] = v214;
  v28 = vmovl_u16(v26);
  if (v214 << 16 != -65536 && v28.i16[2] != -1 && (v214 >= v24 || v28.i16[2] >= v23))
  {
    v18 = 0;
    sub_3694();
    v19 = -12780;
    goto LABEL_121;
  }

  v190 = v27;
  v194 = v28.u32[1];
  v170 = v25;
  rectangleCopy = rectangle;
  v188 = v24;
  v185 = v23;
  v147 = cropRectangleCopy;
  v30 = [cropRectangleCopy objectForKeyedSubscript:kFigCaptureSampleBufferMetadata_StillImageProcessingMetadata];
  v31 = [v30 objectForKeyedSubscript:kFigCaptureStillImageProcessingMetadataKey_RegistrationHomography];

  pixelBuffer = pixelBuffer;
  v145 = v31;
  if (v31)
  {
    v183 = [sub_352C() objectAtIndexedSubscript:?];
    [v183 floatValue];
    v32 = [v31 objectAtIndexedSubscript:3];
    [v32 floatValue];
    v33 = [v31 objectAtIndexedSubscript:6];
    [v33 floatValue];
    v34 = [v31 objectAtIndexedSubscript:1];
    [v34 floatValue];
    v35 = [v31 objectAtIndexedSubscript:4];
    [v35 floatValue];
    v181 = v36;
    v37 = [v31 objectAtIndexedSubscript:7];
    [v37 floatValue];
    v38 = [v31 objectAtIndexedSubscript:2];
    [v38 floatValue];
    v39 = [v31 objectAtIndexedSubscript:5];
    [v39 floatValue];
    v40 = [v31 objectAtIndexedSubscript:8];
    [v40 floatValue];
    v180.i32[1] = v181;

    pixelBuffer = pixelBuffer;
  }

  else
  {
    v180 = matrix_identity_float3x3.columns[1];
  }

  __asm { FMOV            V0.2D, #1.0 }

  if (config)
  {
    size = config->size;
    origin = config->origin;
    v208 = size;
  }

  else
  {
    origin = 0uLL;
    v208 = _Q0;
  }

  cropRectangleCopy = v147;
  selfCopy7 = self;
  if (count)
  {
    v45 = count->size;
    v205 = count->origin;
    v206 = v45;
  }

  else
  {
    v205 = 0uLL;
    v206 = _Q0;
  }

  metadataCopy = v194;
  v47 = v19 == -65536 && v194 == 0xFFFF;
  if (!(v19 | v194) || v47)
  {
    v144 = sub_E1EC(self, pixelBuffer, Width, rectangleCopy, v147, &origin, &v205, v170);
    if (v144)
    {
      v19 = v144;
      sub_3694();
      v18 = v145;
      goto LABEL_121;
    }
  }

  v18 = 0x1000040451B5BE8;
  Width = CVPixelBufferGetWidth(self->_opticalOutputFlowPixelBuffer);
  Height = CVPixelBufferGetHeight(self->_opticalOutputFlowPixelBuffer);
  cropRectangleCopy = Height;
  v49 = vand_s8(v190, 0xFFFF0000FFFFLL);
  v50 = vand_s8(vadd_s32(vadd_s32(v190, -1), __PAIR64__(Height, Width)), 0xFFFF0000FFFFLL);
  v50.i32[0] /= v49.i32[0];
  v50.i32[1] /= v49.i32[1];
  v192 = __PAIR64__(Height, Width);
  v196 = v50;
  BytesPerRow = CVPixelBufferGetBytesPerRow(self->_opticalOutputFlowPixelBuffer);
  selfCopy7 = (16 * v196.u32[0] * v196.u32[1]);
  v51 = malloc_type_malloc(selfCopy7, 0x1000040451B5BE8uLL);
  if (!v51)
  {
    sub_3694();
    sub_3700();
    goto LABEL_121;
  }

  v168 = v51;
  v52 = malloc_type_malloc(selfCopy7, 0x1000040451B5BE8uLL);
  if (!v52)
  {
    metadataCopy = 0;
    sub_3700();
    goto LABEL_120;
  }

  v167 = v52;
  selfCopy7 = self;
  if (CVPixelBufferLockBaseAddress(self->_opticalOutputFlowPixelBuffer, 1uLL) || (BaseAddress = CVPixelBufferGetBaseAddress(self->_opticalOutputFlowPixelBuffer)) == 0)
  {
    metadataCopy = 0;
    v19 = -12782;
    goto LABEL_115;
  }

  v53 = v188;
  if (v19 == -65536)
  {
    v54 = 0;
  }

  else
  {
    v53 = v214 + 1;
    v54 = v214;
  }

  v156 = v53;
  if (v54 >= v53)
  {
    metadataCopy = 0;
    v19 = 0;
LABEL_115:
    Width = v146;
    cropRectangleCopy = v147;
    goto LABEL_119;
  }

  v55.f32[0] = Width;
  v56 = metadataCopy;
  LODWORD(v57) = metadataCopy;
  metadataCopy = 0;
  v58 = v56 == 0xFFFF;
  if (v56 == 0xFFFF)
  {
    v59 = v185;
  }

  else
  {
    v59 = (v57 + 1);
  }

  v178 = v59;
  if (v58)
  {
    v57 = 0;
  }

  else
  {
    v57 = v57;
  }

  v165 = cropRectangleCopy;
  v166 = Width;
  v55.f32[1] = v165;
  v60 = vmul_f32(v55, 0x3974C40139379301);
  v68 = vmul_f32(v55, 0x3C2ED5263C031FDCLL);
  v149 = Width;
  v163 = *v68.i32;
  v164 = v60.f32[0];
  v61 = *&v68.i32[1];
  v62 = v60.f32[1];
  v63 = 2 * (BytesPerRow >> 1);
  HIWORD(v200) = WORD2(v192);
  LOWORD(v200) = v192;
  v64 = v57 * v196.u16[2];
  v176 = cropRectangleCopy;
  HIDWORD(v148) = cropRectangleCopy - v64;
  v65 = 16 * v196.u16[0];
  v66 = v54 * v196.u16[0];
  v151 = v196.u16[0];
  v67 = v64 * (BytesPerRow >> 1) + 2 * v66;
  v160 = v196.u16[0];
  v150 = 2 * v196.u16[0];
  v175 = v196.u16[2];
  v169 = (BytesPerRow >> 1) * v196.u16[2];
  v173 = matrix_identity_float3x3.columns[1];
  v174 = matrix_identity_float3x3.columns[0];
  v171 = matrix_identity_float3x3.columns[2];
  v68.i32[1] = 1048679446;
  v152 = v57;
  while (1)
  {
    v158 = v67;
    v159 = v54;
    if (v57 < v178)
    {
      break;
    }

LABEL_112:
    v54 = v159 + 1;
    v57 = v152;
    v66 += v151;
    v67 = v158 + v150;
    if (v159 + 1 == v156)
    {
      v19 = 0;
LABEL_117:
      Width = v146;
      goto LABEL_118;
    }
  }

  v69 = v149 - v54 * v160;
  if (v69 >= v160)
  {
    v70 = v160;
  }

  else
  {
    v70 = v69;
  }

  v68.i32[0] = v70;
  v162 = vmovl_u16(v68).u16[0];
  v157 = 2 * v54 * v160;
  v71 = v67;
  v72 = HIDWORD(v148);
  v73 = metadataCopy;
  while (1)
  {
    v197 = v73;
    v184 = v72 - v175;
    v74 = v72 >= v175 ? v175 : v72;
    v202 = v174;
    v203 = v173;
    v204 = v171;
    v186 = v57;
    v75 = v57 * v175;
    v76 = v176 - v57 * v175 >= v175 ? v175 : v176 - v57 * v175;
    if ([indexCopy useFlowWeightedAverage])
    {
      break;
    }

    if (v76)
    {
      sub_36F4();
      do
      {
        if (v70)
        {
          v86 = 0;
          v87 = 0;
          v88 = (v79 + v75);
          v89 = v82;
          do
          {
            _H2 = *(v89 - 1);
            __asm { FCVT            S2, H2 }

            _H3 = *v89;
            __asm { FCVT            S3, H3 }

            v94 = (v66 + v87);
            *&v95 = v94 / v166;
            v96 = v81 + v86;
            *&v97 = (v94 / v166) + (_S2 / v166);
            *(&v95 + 1) = v88 / v165;
            *v96 = v95;
            *(v96 + 8) = 0;
            v98 = (v80 + v86);
            *v98 = v97;
            *(&v97 + 1) = (_S3 / v165) + *(v81 + v86 + 4);
            v98[2] = 0;
            *v98 = v97;
            v99 = v94 + _S2;
            if (v99 >= 0.0 && v99 < v166 && (v88 + _S3) >= 0.0 && (v88 + _S3) < v165)
            {
              v102 = fabsf(_S2);
              v103 = fabsf(_S3);
              if (v102 < v163 && v103 < v61)
              {
                v106 = v102 >= v164;
                if (v103 >= v62)
                {
                  v106 = 1;
                }

                if (v106)
                {
                  v105 = 2.0;
                }

                else
                {
                  v105 = 1.0;
                }
              }

              else
              {
                ++v78;
                v105 = 3.0;
                v106 = 1;
              }

              v77 += v106;
              *(v81 + v86 + 8) = v105;
              *(v80 + v86 + 8) = v105;
            }

            ++v87;
            v86 += 16;
            v89 += 2;
          }

          while (v87 < v70);
        }

        ++v79;
        v81 += v65;
        v80 += v65;
        v82 = (v82 + v63);
      }

      while (v79 != v74);
    }

    else
    {
      sub_36F4();
    }

    v107 = (v76 * v70);
    if ((v78 / v107) > 0.6)
    {
      selfCopy6 = self;
      v137 = v167;
      v136 = v168;
LABEL_110:
      v138 = sub_EA84(selfCopy6, &v202, v136, v137);
      if (v138)
      {
        v19 = v138;
        goto LABEL_126;
      }

LABEL_107:
      sub_36F4();
      goto LABEL_91;
    }

    if ((v77 / v107) > 0.6)
    {
      selfCopy6 = self;
      v137 = v167;
      v136 = v168;
      goto LABEL_110;
    }

    v108 = 0;
LABEL_91:
    v109 = 0;
    v209[0] = v202;
    v209[1] = v203;
    v209[2] = v204;
    v210 = 0u;
    v211 = 0u;
    v212 = 0u;
    do
    {
      *(&v210 + v109 * 16) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*&v209[v109])), v84, *v209[v109].f32, 1), v85, v209[v109], 2);
      ++v109;
    }

    while (v109 != 3);
    v182 = v71;
    v202.i32[2] = DWORD2(v210);
    v203.i32[2] = DWORD2(v211);
    v202.i64[0] = v210;
    v203.i64[0] = v211;
    v204.i32[2] = DWORD2(v212);
    v204.i64[0] = v212;
    v110 = vmulq_n_f32(v202, 1.0 / *(&v212 + 2));
    v111 = vmulq_n_f32(v203, 1.0 / *(&v212 + 2));
    v202.i32[2] = v110.i32[2];
    v203.i32[2] = v111.i32[2];
    v202.i64[0] = v110.i64[0];
    v203.i64[0] = v111.i64[0];
    v112 = vmulq_n_f32(v204, 1.0 / *(&v212 + 2));
    v204.i32[2] = v112.i32[2];
    v204.i64[0] = v112.i64[0];
    if (v108)
    {
      v110.i64[0] = v202.i64[0];
      v113.i64[0] = v202.i64[0];
      v113.i64[1] = v203.i64[0];
      v114 = vdivq_f32(vaddq_f32(v113, xmmword_17890), xmmword_178A0);
      v115 = vmla_laneq_f32(vmla_laneq_f32(vmla_lane_f32(vmul_n_f32(0xBE85280BBF1B6F91, v114.f32[0]), 0x3F373FE7BE9B3608, *v114.f32, 1), 0xBF118277BEDC2CDDLL, v114, 2), 0x3E9F5F45BF186D29, v114, 3);
      v116 = v203.f32[1];
      if (fabsf(v115.f32[1]) > 2.0)
      {
        v117 = vmuls_lane_f32(v115.f32[0], v115, 1);
        v118 = fabsf(v115.f32[0]);
        if (v117 < 0.0 && v118 > 2.0)
        {
          v202 = v83;
          v203 = v84;
          v110.i64[0] = v83.i64[0];
          v116 = v180.f32[1];
          v204 = v85;
        }
      }

      if (v110.f32[0] < -0.1 || v116 < -0.1)
      {
        v202 = v83;
        v203 = v84;
        v110.i64[0] = v83.i64[0];
        v204 = v85;
      }
    }

    v193 = [NSNumber numberWithFloat:*v110.i64];
    v201[0] = v193;
    LODWORD(v120) = v202.i32[1];
    v191 = [NSNumber numberWithFloat:v120];
    v201[1] = v191;
    LODWORD(v121) = v202.i32[2];
    v189 = [NSNumber numberWithFloat:v121];
    v201[2] = v189;
    LODWORD(v122) = v203.i32[0];
    v187 = [NSNumber numberWithFloat:v122];
    v201[3] = v187;
    LODWORD(v123) = v203.i32[1];
    v124 = [NSNumber numberWithFloat:v123];
    v201[4] = v124;
    LODWORD(v125) = v203.i32[2];
    v126 = [NSNumber numberWithFloat:v125];
    v201[5] = v126;
    LODWORD(v127) = v204.i32[0];
    v128 = [NSNumber numberWithFloat:v127];
    v201[6] = v128;
    LODWORD(v129) = v204.i32[1];
    v130 = [NSNumber numberWithFloat:v129];
    v201[7] = v130;
    LODWORD(v131) = v204.i32[2];
    v132 = [NSNumber numberWithFloat:v131];
    v201[8] = v132;
    v133 = [NSArray arrayWithObjects:v201 count:9];
    metadataCopy = [NSMutableArray arrayWithArray:v133];

    if (!metadataCopy)
    {
      v19 = -12782;
      goto LABEL_117;
    }

    [v177 addObject:metadataCopy];
    v57 = v186 + 1;
    v71 = v182 + v169;
    v72 = v184;
    v73 = metadataCopy;
    v63 = 2 * (BytesPerRow >> 1);
    if (v186 + 1 == v178)
    {
      goto LABEL_112;
    }
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  HIWORD(v198) = v76;
  LOWORD(v198) = v162;
  v134 = sub_E6E0(self, &v202, v200, WidthOfPlane, v198, BaseAddress + 2 * v157 + 2 * v75 * (BytesPerRow >> 1), BytesPerRow, indexCopy);
  if (!v134)
  {
    goto LABEL_107;
  }

  v19 = v134;
  fig_log_get_emitter();
  FigDebugAssert3("%s assert: %s at %s (%s:%d) - %s%s(err=%d)", v19, v10, v10, v145, v146, v147, v148, v149);
LABEL_126:
  Width = v146;
  metadataCopy = v197;
LABEL_118:
  cropRectangleCopy = v147;
  selfCopy7 = self;
LABEL_119:
  v18 = v145;
  v21 = v167;
LABEL_120:
  v22 = v168;
LABEL_121:
  opticalOutputFlowPixelBuffer = selfCopy7->_opticalOutputFlowPixelBuffer;
  v140 = v21;
  v141 = metadataCopy;
  v142 = v22;
  CVPixelBufferUnlockBaseAddress(opticalOutputFlowPixelBuffer, 1uLL);
  free(v142);
  free(v140);

  return v19;
}

@end