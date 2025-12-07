uint64_t (*EncoderCheck_ASTC(uint64_t a1))(uint64_t a1, uint64_t a2)
{
  v1 = *(a1 + 16) & 0x7FFLL;
  if ((v1 - 1) > 9)
  {
    return 0;
  }

  v2 = *(a1 + 24) & 0x7FFLL;
  if (v2 > 0x1E || ((1 << *(a1 + 24)) & 0x7FFE7FFE) == 0)
  {
    return 0;
  }

  if (((*(a1 + 24) >> 26) & 0xF) * ((*(a1 + 16) >> 34) & 0x1F) * ((*(a1 + 24) >> 30) & 0xFuLL) > 0xF)
  {
    return EncoderFactory_ASTC;
  }

  fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: this combination of texelType (%u) and blockType (%u)\n                        would cause the image to grow larger.\n", v1, v2);
  return 0;
}

at_encoder_t at_encoder_create(at_texel_format_t texelType, at_alpha_t texelAlphaType, at_block_format_t blockType, at_alpha_t blockAlphaType, const float *backgroundColor)
{
  __dst = 0uLL;
  TexelInfo = GetTexelInfo(texelType);
  *&v24 = TexelInfo;
  *(&v24 + 1) = GetBlockInfo(blockType);
  *&v25 = __PAIR64__(blockAlphaType, texelAlphaType);
  if (at_get_cpucapabilities(void)::onceToken != -1)
  {
    at_encoder_create_cold_1();
  }

  *(&v25 + 1) = at_get_cpucapabilities(void)::gCapabilities & ~gCapabilitiesMask;
  if ((TexelInfo & 0x7FF) != 0)
  {
    if (texelAlphaType < at_alpha_count)
    {
      if (blockAlphaType < at_alpha_count)
      {
        if (backgroundColor)
        {
          memcpy(&__dst, backgroundColor, (TexelInfo >> 17) & 0x1C);
        }

        v10 = 0;
        v11 = 1;
        do
        {
          v12 = v11;
          v13 = (at_encoder_create::Factories[v10])(&__dst);
          if (v14)
          {
            v15 = v13 == 0;
          }

          else
          {
            v15 = 1;
          }

          if (!v15)
          {
            v16 = v13;
            Encoder = AllocateEncoder(v14);
            if (Encoder)
            {
              v18 = Encoder;
              v19 = &Encoder[4];
              v21 = v24;
              v20 = v25;
              *&Encoder[4].isa = __dst;
              *&Encoder[6].isa = v21;
              *&Encoder[8].isa = v20;
              if (v16(Encoder + 4, Encoder + 10))
              {
                return v18;
              }

              v18[10].isa = &unk_2A1EE7078;
              v18[11].isa = v19;
              os_release(v18);
            }
          }

          v11 = 0;
          v10 = 1;
        }

        while ((v12 & 1) != 0);
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: no encoder found for texelType: %lu texelAlphaType: %u blockType: %lu blockAlphaType: %u\n");
      }

      else
      {
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: Error blockAlphaType %u is out of range\n");
      }
    }

    else
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: Error texelAlphaType %u is out of range\n");
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "at_encoder_create: Error unsupported texel type: %u\n");
  }

  return 0;
}

uint64_t GetBlockInfo(unint64_t a1)
{
  if (a1 <= 0x2A)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return GetBlockInfo_BlockInfoTable[v1];
}

uint64_t GetTexelInfo(unint64_t a1)
{
  if (a1 <= 0xA)
  {
    v1 = a1;
  }

  else
  {
    v1 = 0;
  }

  return GetTexelInfo_TexelInfoTable[v1];
}

uint64_t Unpremultiply_4x4_vec(uint64_t result)
{
  v2 = *(result + 368);
  v1 = *(result + 384);
  v3 = *(result + 336);
  v4 = *(result + 352);
  v5 = vminnmq_f32(*(result + 144), v3);
  v6 = vminnmq_f32(*(result + 160), v4);
  v7 = vminnmq_f32(*(result + 176), v2);
  v8 = vminnmq_f32(*(result + 192), v1);
  v9 = vminnmq_f32(*(result + 208), v3);
  v10 = vminnmq_f32(*(result + 224), v4);
  v11 = vminnmq_f32(*(result + 240), v2);
  v12 = vminnmq_f32(*(result + 256), v1);
  v13 = vminnmq_f32(*(result + 272), v3);
  v14 = vminnmq_f32(*(result + 288), v4);
  v15 = vminnmq_f32(*(result + 304), v2);
  v16 = vminnmq_f32(*(result + 320), v1);
  if ((vmaxvq_u32(vorrq_s8(vornq_s8(vmvnq_s8(vceqzq_f32(v3)), vceqzq_f32(v2)), vornq_s8(vmvnq_s8(vceqzq_f32(v4)), vceqzq_f32(v1)))) & 0x80000000) != 0)
  {
    __asm { FMOV            V24.4S, #1.0 }

    if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v3, _Q24), vceqq_f32(v2, _Q24)), vandq_s8(vceqq_f32(v4, _Q24), vceqq_f32(v1, _Q24)))) & 0x80000000) != 0)
    {
      *(result + 134) = 0;
      *(result + 136) = 1;
      *(result + 720) = 0u;
      *(result + 736) = 0u;
      *(result + 752) = 0u;
      *(result + 768) = 0u;
      *(result + 368) = _Q24;
      *(result + 384) = _Q24;
      v3 = _Q24;
      *(result + 336) = _Q24;
      *(result + 352) = _Q24;
      v4 = _Q24;
      v2 = _Q24;
      v1 = _Q24;
      *(result + 784) = 0;
    }
  }

  *(result + 144) = v5;
  *(result + 160) = v6;
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 208) = v9;
  *(result + 224) = v10;
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 272) = v13;
  *(result + 288) = v14;
  v22 = *(result + 124);
  *(result + 304) = v15;
  *(result + 320) = v16;
  if (v22 < 0.0)
  {
    v23 = *(result + 32);
    if (v23)
    {
      v24 = *v23;
    }

    else
    {
      v24 = xmmword_2984959B0;
    }

    v25 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v24.f32, 1), v8, v24.f32[0]), v16, v24, 2);
    v26 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v24.f32, 1), v7, v24.f32[0]), v15, v24, 2);
    v27 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *v24.f32, 1), v6, v24.f32[0]), v14, v24, 2);
    v28 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v24.f32, 1), v5, v24.f32[0]), v13, v24, 2);
    *(result + 656) = v28;
    *(result + 672) = v27;
    *(result + 688) = v26;
    *(result + 704) = v25;
    v29 = vsubq_f32(v6, v27);
    v30 = vsubq_f32(v8, v25);
    v31 = vsubq_f32(v5, v28);
    v32 = vsubq_f32(v7, v26);
    v33 = vsubq_f32(v11, v26);
    v34 = vsubq_f32(v9, v28);
    v35 = vsubq_f32(v12, v25);
    v36 = vsubq_f32(v10, v27);
    v37 = vsubq_f32(v15, v26);
    v38 = vsubq_f32(v13, v28);
    v39 = vsubq_f32(v16, v25);
    v40 = vsubq_f32(v14, v27);
    v41 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v34, v34), v31, v31), v38, v38), vmlaq_f32(vmlaq_f32(vmulq_f32(v33, v33), v32, v32), v37, v37)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v36, v36), v29, v29), v40, v40), vmlaq_f32(vmlaq_f32(vmulq_f32(v35, v35), v30, v30), v39, v39)));
    v41.i64[0] = vpaddq_f32(v41, v41).u64[0];
    v41.f32[0] = vrecpes_f32(vpadd_f32(*v41.f32, *v41.f32).f32[0]);
    *(result + 124) = (v41.f32[0] * 3.0) + (v41.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v42 = vdupq_n_s32(0x3B808081u);
    v43 = vcgeq_f32(v42, v2);
    v44 = vcgeq_f32(v42, v1);
    v45 = vcgeq_f32(v42, v4);
    v46 = vcgeq_f32(v42, v3);
    *(result + 720) = v46;
    *(result + 736) = v45;
    *(result + 752) = v43;
    *(result + 768) = v44;
    v47 = vorrq_s8(vandq_s8(vuzp1q_s16(v46, v45), xmmword_298495650), vandq_s8(vuzp1q_s16(v43, v44), xmmword_298495640));
    v47.i16[0] = vaddvq_s16(v47);
    *(result + 784) = v47.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v47.i8));
  }

  v48 = vzip1q_s32(v6, v14);
  v49 = vzip1q_s32(v5, v13);
  v50 = vzip2q_s32(v6, v14);
  v51 = vzip2q_s32(v5, v13);
  v52 = vzip2q_s32(v9, v3);
  v53 = vzip1q_s32(v51, v52);
  v54 = vzip2q_s32(v51, v52);
  v55 = vzip2q_s32(v49, vuzp2q_s32(v49, v9));
  v55.i32[3] = v3.i32[1];
  v56 = vzip1q_s32(v49, v9);
  v56.i32[3] = v3.i32[0];
  *(result + 432) = v53;
  *(result + 448) = v54;
  v57 = vzip2q_s32(v48, vuzp2q_s32(v48, v10));
  v57.i32[3] = v4.i32[1];
  *(result + 400) = v56;
  *(result + 416) = v55;
  v58 = vzip1q_s32(v48, v10);
  v58.i32[3] = v4.i32[0];
  v59 = vextq_s8(vzip2q_s32(v10, v50), v50, 4uLL);
  v59.i32[3] = v4.i32[3];
  v60 = vzip2q_s32(vextq_s8(v50, v50, 8uLL), v10);
  v60.i32[3] = v4.i32[2];
  *(result + 496) = v60;
  *(result + 512) = v59;
  *(result + 464) = v58;
  *(result + 480) = v57;
  v61 = vzip1q_s32(v8, v16);
  v62 = vzip1q_s32(v7, v15);
  v63 = vzip2q_s32(v8, v16);
  v64 = vzip2q_s32(v7, v15);
  v65 = vzip2q_s32(v11, v2);
  v66 = vzip1q_s32(v64, v65);
  v67 = vzip2q_s32(v62, vuzp2q_s32(v62, v11));
  v67.i32[3] = v2.i32[1];
  v68 = vzip1q_s32(v62, v11);
  v68.i32[3] = v2.i32[0];
  v69 = vzip2q_s32(v61, vuzp2q_s32(v61, v12));
  v69.i32[3] = v1.i32[1];
  v70 = vzip1q_s32(v61, v12);
  v70.i32[3] = v1.i32[0];
  v71 = vzip2q_s32(v64, v65);
  v72 = vextq_s8(vzip2q_s32(v12, v63), v63, 4uLL);
  v72.i32[3] = v1.i32[3];
  *(result + 560) = v66;
  *(result + 576) = v71;
  v73 = vzip2q_s32(vextq_s8(v63, v63, 8uLL), v12);
  v73.i32[3] = v1.i32[2];
  *(result + 528) = v68;
  *(result + 544) = v67;
  *(result + 624) = v73;
  *(result + 640) = v72;
  *(result + 592) = v70;
  *(result + 608) = v69;
  v74 = vmulq_f32(v7, v7);
  v75 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v5, v7), vaddq_f32(v6, v8)), vaddq_f32(vaddq_f32(v9, v11), vaddq_f32(v10, v12))), vpaddq_f32(vaddq_f32(vaddq_f32(v13, v15), vaddq_f32(v14, v16)), vaddq_f32(vaddq_f32(v3, v2), vaddq_f32(v4, v1))));
  v76 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(v74, v5, v5), vmlaq_f32(vmulq_f32(v8, v8), v6, v6)), vaddq_f32(vmlaq_f32(vmulq_f32(v11, v11), v9, v9), vmlaq_f32(vmulq_f32(v12, v12), v10, v10))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v15, v15), v13, v13), vmlaq_f32(vmulq_f32(v16, v16), v14, v14)), vaddq_f32(vmlaq_f32(vmulq_f32(v2, v2), v3, v3), vmlaq_f32(vmulq_f32(v1, v1), v4, v4))));
  v77 = vmulq_f32(v75, vdupq_n_s32(0x3D800000u));
  v78 = vmlsq_f32(v76, v77, v75);
  *(result + 16) = v77;
  v78.i64[0] = vpaddq_f32(v78, v78).u64[0];
  *(result + 120) = vpadd_f32(*v78.f32, *v78.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v77.f32[3] >= 0.99988;
  }

  return result;
}

uint64_t AllocateEncoder(uint64_t a1)
{
  v2 = objc_opt_class();

  return MEMORY[0x2A1C74938](v2, a1 + 96);
}

uint64_t ASTCEncoder::ASTCEncoder(uint64_t a1, uint64_t a2)
{
  return ASTCEncoder::ASTCEncoder(a1, a2);
}

{
  *a1 = &unk_2A1EE71B8;
  *(a1 + 8) = a2;
  block[0] = MEMORY[0x29EDCA5F8];
  block[1] = 0x40000000;
  block[2] = ___ZN11ASTCEncoderC2ERK10CommonData_block_invoke;
  block[3] = &__block_descriptor_tmp;
  block[4] = a2;
  if (ASTCEncoder::ASTCEncoder(CommonData const&)::once_control != -1)
  {
    dispatch_once(&ASTCEncoder::ASTCEncoder(CommonData const&)::once_control, block);
  }

  v3 = *(a1 + 8);
  *(a1 + 16) = (v3[6] >> 26) & 0xF;
  *(a1 + 20) = (*(v3 + 3) >> 30) & 0xF;
  *(a1 + 24) = 1;
  *(a1 + 88) = 257;
  v4 = (v3[4] & 0x7FF) - 1;
  if (v4 >= 0xA)
  {
    goto LABEL_13;
  }

  v5 = qword_298451BB0[v4];
  *(a1 + 56) = off_2A1EE72A0[v4];
  v6 = v3[6] & 0x7FF;
  if (v6 > 0x1E)
  {
    goto LABEL_13;
  }

  if (((1 << v6) & 0x7FFE7EFC) == 0)
  {
    if (v6 == 1)
    {
      *(a1 + 48) = kReadProcs4x4[v5];
      v8 = v3[8];
      v9 = v3[9];
      v11 = kAlphaProcs4x4[3 * v8 + v9];
      v12 = kEncodeProcs4x4;
      goto LABEL_12;
    }

    if (v6 == 8)
    {
      *(a1 + 48) = kReadProcs8x8[v5];
      v8 = v3[8];
      v9 = v3[9];
      v11 = kAlphaProcs8x8[3 * v8 + v9];
      v12 = kEncodeProcs8x8;
LABEL_12:
      *(a1 + 32) = v11;
      *(a1 + 40) = v12;
      v13 = kWriteProcs[v5];
      *(a1 + 64) = kDecodeProcs;
      *(a1 + 72) = v13;
      goto LABEL_7;
    }

LABEL_13:
    exception = __cxa_allocate_exception(4uLL);
    *exception = -1;
    __cxa_throw(exception, MEMORY[0x29EDC94D0], 0);
  }

  v7 = kWriteProcs[v5];
  *(a1 + 64) = kDecodeProcs;
  *(a1 + 72) = v7;
  *(a1 + 88) = 0;
  v8 = v3[8];
  LODWORD(v9) = v3[9];
LABEL_7:
  *(a1 + 80) = kTexelAlphaProcs[3 * v9 + v8];
  return a1;
}

uint64_t EncoderFactory_ASTC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    ASTCEncoder::ASTCEncoder(a2, a1);
  }

  return a2;
}

at_size_t at_encoder_get_block_dimensions(at_encoder_t encoder)
{
  v1 = (*(encoder[10].isa + 8))();
  result.x = v1;
  result.y = HIDWORD(v1);
  result.z = v2;
  return result;
}

void sub_29840C67C(_Unwind_Exception *a1, int a2)
{
  if (a2 < 0)
  {
    __cxa_call_unexpected(a1);
  }

  _Unwind_Resume(a1);
}

at_size_t at_encoder_get_block_counts(at_encoder_t encoder, at_size_t imageSize)
{
  v2 = (*(encoder[10].isa + 7))();
  result.x = v2;
  result.y = HIDWORD(v2);
  result.z = v3;
  return result;
}

float at_encoder_compress_texels(at_encoder_t encoder, const at_texel_region_t *src, const at_block_buffer_t *dest, float errorThreshold, at_flags_t flags)
{
  v8 = src;
  p_validSize = &src->validSize;
  if ((flags & 0x10) != 0)
  {
    rowBytes = src->rowBytes;
    sliceBytes = src->sliceBytes;
    v13 = *&p_validSize->x;
    z = src->validSize.z;
    p_validSize = &v39;
    v38 = src->texels + rowBytes * (src->validSize.y - 1);
    v39 = v13;
    v40 = z;
    v41 = -rowBytes;
    v42 = sliceBytes;
    v8 = &v38;
  }

  v15 = encoder + 10;
  v16 = (*(encoder[10].isa + 7))(encoder + 10, *&v8->validSize.x, p_validSize->z);
  v18 = v17;
  *&v37.x = v16;
  v37.z = v17;
  if (flags)
  {
    return (*(v15->isa + 16))(encoder + 10, v8, dest, flags, fmaxf(errorThreshold, 0.0));
  }

  v19 = v16;
  v20 = (*(v15->isa + 9))(encoder + 10);
  if ((flags & 0xFFFFFFFFFFFFFFA0) != 0)
  {
    v21 = -4.0;
    if ((flags & 2) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: unknown flags bit: 0x%8.8llx\n");
    }

    return v21;
  }

  v22 = HIDWORD(v19);
  if (v19)
  {
    v23 = v22 == 0;
  }

  else
  {
    v23 = 1;
  }

  if (v23 || v18 == 0)
  {
    v21 = -1.0;
    if ((flags & 2) != 0)
    {
      fwrite("at_encoder_compress_texels error: consecutive dest rows alias.\n\tA member of src->validSize is zero.\n", 0x64uLL, 1uLL, *MEMORY[0x29EDCA610]);
    }
  }

  else if ((HIDWORD(v19) | v19) >> 24)
  {
    v21 = -1.0;
    if ((flags & 2) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: Exceeded capabilites of ASTC specification. Too many blocks->\n\tno more than 2**24-1 blocks may be present in any dimension {%u, %u, %u}\n");
    }
  }

  else
  {
    v25 = v20;
    if (v22 == 1)
    {
      goto LABEL_19;
    }

    v30 = dest->rowBytes;
    if (v30 >= 0)
    {
      v31 = dest->rowBytes;
    }

    else
    {
      v31 = -v30;
    }

    if (v31 >= (*(v15->isa + 9))(encoder + 10) * v19)
    {
      v32 = v8->rowBytes;
      if (!v32)
      {
        goto LABEL_19;
      }

      if (v32 < 0)
      {
        v32 = -v32;
      }

      if (v32 >= ((encoder[6].isa >> 34) & 0x1F) * p_validSize->x * ((encoder[6].isa >> 26) & 0xF))
      {
LABEL_19:
        if (v18 >= 2)
        {
          v26 = dest->rowBytes;
          v27 = dest->sliceBytes;
          if (v27 >= 0)
          {
            v28 = dest->sliceBytes;
          }

          else
          {
            v28 = -v27;
          }

          if (v26 >= 0)
          {
            v29 = dest->rowBytes;
          }

          else
          {
            v29 = -v26;
          }

          if (v28 < v29 * v22)
          {
            v21 = -1.0;
            if ((flags & 2) != 0)
            {
              fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive dest slices alias.\n\t dest->sliceBytes %lu is too small for %u rows * dest->rowBytes.\n");
            }

            return v21;
          }

          v33 = v8->sliceBytes;
          if (v33)
          {
            if (v33 < 0)
            {
              v33 = -v33;
            }

            v34 = v8->rowBytes;
            if (v34 < 0)
            {
              v34 = -v34;
            }

            if (v33 < v34 * v19)
            {
              v21 = -1.0;
              if ((flags & 2) != 0)
              {
                fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive src slices alias.\n\t dest->sliceBytes %lu is too small for %u block rows.\n");
              }

              return v21;
            }
          }
        }

        if (errorThreshold < 0.0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: errorThreshold (%g) should be at least zero.\n\tThe error threshold is square error per normalized texel, not PSNR or other measure. x**2 >= 0\n.\tThe encoder will try multiple encoding methods until one arrives <= error threshold.\n.\tSmaller error thresholds demand more accuracy and cause the encoder to take longer.\n\tA value of zero means try all encodings and return the best result.\n");
          }

          return v21;
        }

        v35 = v25 - 1;
        if (((v25 - 1) & dest->blocks) != 0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: dest->blocks (%p) must be aligned to the block size (%lu)\n");
          }

          return v21;
        }

        if ((dest->rowBytes & v35) != 0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: dest->rowBytes (%lx) must be a multiple of the block size (%lu) to guarantee alignment\n");
          }

          return v21;
        }

        if ((dest->sliceBytes & v35) != 0)
        {
          v21 = -1.0;
          if ((flags & 2) != 0)
          {
            fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: dest->sliceBytes (%lx) must be a multiple of the block size (%lu) to guarantee alignment\n");
          }

          return v21;
        }

        if ((*(v15->isa + 12))(encoder + 10) < 0x21 || (*(v15->isa + 12))(encoder + 10) > 0x2A)
        {
          ATEncoderCompressTexels_BlockBufferIsNotWritableOrIsNot16ByteAligned(dest, &v37);
        }

        else
        {
          ATEncoderCompressTexels_BlockBufferIsNotWritable(dest, &v37, v25);
        }

        return (*(v15->isa + 16))(encoder + 10, v8, dest, flags, fmaxf(errorThreshold, 0.0));
      }

      v21 = -1.0;
      if ((flags & 2) != 0)
      {
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive src rows alias.\n\t src->rowBytes %lu is too small for %u blocks->\n");
      }
    }

    else
    {
      v21 = -1.0;
      if ((flags & 2) != 0)
      {
        fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels error: consecutive dest rows alias.\n\t dest->rowBytes %lu is too small for %u blocks->\n");
      }
    }
  }

  return v21;
}

void *ATEncoderCompressTexels_BlockBufferIsNotWritableOrIsNot16ByteAligned(const at_block_buffer_t *a1, const at_size_t *a2)
{
  blocks = a1->blocks;
  v3 = a1->blocks + 16 * (a2->x - 1) + a1->rowBytes * (a2->y - 1) + a1->sliceBytes * (a2->z - 1);
  *blocks = 0;
  blocks[1] = 0;
  return ATEncoderCompressTexels_BlockBufferIsNotBigEnoughOrRowBytesSliceBytesAreNotAMultipleOf16(v3);
}

void ASTCEncoder::CompressTexels(ASTCEncoder *this, const at_texel_region_t *a2, const at_block_buffer_t *a3, float a4, at_flags_t a5)
{
  v5 = MEMORY[0x2A1C7C4A8](this, a2, a3, a5, a4);
  v10 = v5;
  v86 = *MEMORY[0x29EDCA608];
  if (*(v5 + 88))
  {
    v11 = v8;
    if ((v8 & 0xFFFFFFFFFFFFFFA0) != 0)
    {
      fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels: the ASTC encoding does not support flag(s) 0x%16.16llx\n", v8 & 0xFFFFFFFFFFFFFFA0);
    }

    else
    {
      v12 = v9;
      v13 = v7;
      v14 = v6;
      v15 = v6 + 1;
      v16 = (*(*v5 + 56))(v5, v6[1], *(v6 + 4));
      v18 = v16;
      v20 = v19;
      v21 = HIDWORD(v16);
      v22 = *(v10 + 16);
      v23 = (v10 + 16);
      v24 = (*(v10 + 20) * v22 * *(v10 + 24));
      v54 = HIDWORD(v16);
      if ((v11 & 8) != 0)
      {
        v25 = 0;
      }

      else if (v16 < 0x100100000000)
      {
        bzero(v85, 4 * v21);
        v25 = v85;
        LODWORD(v21) = v54;
      }

      else
      {
        v25 = malloc_type_calloc(HIDWORD(v16), 4uLL, 0x100004052888210uLL);
        LODWORD(v21) = v54;
        v22 = *v23;
      }

      v26 = v21 >> 4;
      if (!(v18 >> 37))
      {
        v26 = 1;
      }

      if ((v11 & 4) != 0)
      {
        v27 = v21;
      }

      else
      {
        v27 = v26;
      }

      if (v11 >= 0x40)
      {
        v28 = 0;
      }

      else
      {
        v28 = &ASTCEncoder::CompressTexels(at_texel_region_t const&,at_block_buffer_t const&,float,at_flags_t)const::kSRGBprimaries;
      }

      v29 = 0.75;
      if (v11 >= 0x40)
      {
        v29 = 1.0;
      }

      v30 = *(v10 + 8);
      v31 = *v30;
      v32 = *v14;
      v33 = *v13;
      v34 = *(v30 + 2);
      v35 = (v34 >> 34) & 0x1F;
      v36 = (v34 >> 26) & 0xF;
      v37 = v35 / v36;
      v38 = *(v14 + 3);
      v39 = *(v13 + 1);
      v40 = v22 * v18 != *(v14 + 2);
      v41 = *(v30 + 9);
      v42 = (v36 + v22 * v35 - 1) / v36;
      v43 = v22 != 4 || *(v10 + 20) != 4;
      global_queue = 0;
      v46 = *(v10 + 48);
      v45 = *(v10 + 56);
      context = v31;
      v57 = v28;
      v58 = v32;
      v59 = v33;
      v60 = v25;
      v53 = v25;
      v47 = *(v10 + 32);
      v61 = *v15;
      v62 = *(v15 + 2);
      v63 = *v23;
      v64 = *(v10 + 24);
      v65 = v37;
      v66 = v42;
      v67 = v38;
      v68 = v39;
      v69 = v18;
      v70 = v21;
      v71 = v40;
      v72 = 0;
      v73 = v24 * v12;
      v74 = v29;
      v76 = 0;
      v77 = 0;
      v75 = v41;
      v78 = v27;
      v79 = v43;
      v80 = v46;
      v81 = v47;
      v82 = v45;
      v48 = 0.0;
      v83 = 0u;
      v84 = 0u;
      if ((v11 & 4) == 0 && v18 >> 33)
      {
        v49 = qos_class_self();
        global_queue = dispatch_get_global_queue(v49, 0);
      }

      if (v20)
      {
        v50 = 0;
        v51 = v54 + v27 - 1;
        do
        {
          if (global_queue)
          {
            dispatch_apply_f(v51 / v27, global_queue, &context, EncodeRowBlock);
          }

          else if (v27 <= v51)
          {
            v52 = 0;
            do
            {
              EncodeRowBlock(&context, v52++, v45, v17, v48);
            }

            while (v52 < v51 / v27);
          }

          v58 += *(&v67 + 1);
          v59 += *(&v68 + 1);
          v62 -= *(v10 + 24);
          v72 = v50++;
        }

        while (v50 != v20);
      }

      if (v53)
      {
        v55 = 0;
        _vDSP_meanv(v53, 1, &v55, v54);
        if (v53 != v85)
        {
          free(v53);
        }
      }
    }
  }

  else
  {
    fprintf(*MEMORY[0x29EDCA610], "at_encoder_compress_texels: the ASTC encoding does not support output block format %u\n", *(*(v5 + 8) + 24) & 0x7FF);
  }
}

void *ATEncoderCompressTexels_BlockBufferIsNotBigEnoughOrRowBytesSliceBytesAreNotAMultipleOf16(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void EncodeRowBlock(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  STACK[0x20038] = *MEMORY[0x29EDCA608];
  v10 = pthread_self();
  v9 = &v10 - pthread_get_stackaddr_np(v10);
  if ((v9 + pthread_get_stacksize_np(v10)) >> 16 > 2)
  {
    EncodeRow(v8, v7, &memptr);
  }

  else
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20000uLL, 0x765D9B09uLL) || !memptr)
    {
      *(*(v8 + 40) + 4 * v7) = -8388608;
    }

    else
    {
      EncodeRow(v8, v7, memptr);
      free(memptr);
    }
  }
}

{
  v5 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5);
  v7 = v6;
  v8 = v5;
  STACK[0x20038] = *MEMORY[0x29EDCA608];
  v10 = pthread_self();
  v9 = &v10 - pthread_get_stackaddr_np(v10);
  if ((v9 + pthread_get_stacksize_np(v10)) >> 16 > 2)
  {
    EncodeRow(v8, v7, &memptr);
  }

  else
  {
    memptr = 0;
    if (malloc_type_posix_memalign(&memptr, 0x20uLL, 0x20000uLL, 0x8293274DuLL) || !memptr)
    {
      *(v8[5] + 4 * v7) = -8388608;
    }

    else
    {
      EncodeRow(v8, v7, memptr);
      free(memptr);
    }
  }
}

uint64_t EncodeRow(uint64_t result, uint64_t a2, unsigned __int8 *a3)
{
  v3 = result;
  v89[12] = *MEMORY[0x29EDCA608];
  v4 = (result + 88);
  v5 = *(result + 168);
  v6 = *(result + 172);
  v7 = v5 * a2;
  v8 = *(result + 88) * *(result + 64);
  v9 = *(result + 24) + v8 * v5 * a2;
  v10 = v9 - v8;
  if (!(v5 * a2))
  {
    v10 = *(result + 24);
  }

  v11 = 15;
  v12 = v6 != 0;
  if (v6)
  {
    v13 = a3 + 82560;
  }

  else
  {
    v13 = a3;
  }

  if (v6)
  {
    v14 = a3 + 41280;
  }

  else
  {
    v14 = a3;
  }

  if (v6)
  {
    v15 = 13;
  }

  else
  {
    v15 = 47;
  }

  if (!v6)
  {
    v11 = 47;
  }

  v72 = v11;
  if (v6)
  {
    v16 = v10;
  }

  else
  {
    v16 = v9;
  }

  v17 = v7 + v5;
  v18 = *(result + 120);
  if (v17 >= *(result + 124))
  {
    v17 = *(result + 124);
  }

  v78 = v17;
  if (v18)
  {
    v19 = a3;
    v75 = *(result + 32) + v7 * *(result + 104);
    v85 = *(result + 192);
    v69 = v7 - v12;
    v70 = 16 * v15;
    v87 = vdupq_n_s32(0x477FFF00u);
    v20 = 0;
    __asm { FMOV            V0.4S, #1.0 }

    v86 = _Q0;
    v26 = 0.0;
    v76 = v6 != 0;
    __pattern8 = (result + 88);
    v73 = v15;
    v71 = v7;
    while (1)
    {
      v82 = v20;
      v27 = v18 - (v20 - v12);
      if (v72 < v27)
      {
        v27 = v72;
      }

      v80 = v20 - v12 + v27 - 1;
      v81 = v20 - v12;
      v74 = v16;
      if (!*(v3 + 172))
      {
        goto LABEL_39;
      }

      v28 = *(v3 + 64);
      v29 = v69 * v28;
      bzero(v89, 8 * v28);
      if (((v69 * v28) & 0x8000000000000000) != 0)
      {
        v31 = -v29;
        if (-v29 >= v28)
        {
          v35 = v74;
          goto LABEL_67;
        }

        v32 = -1;
      }

      else
      {
        v31 = 0;
        v32 = ~v29;
      }

      v33 = v32 + *(v3 + 52);
      if ((v28 - v31) >= v33)
      {
        v34 = v33;
      }

      else
      {
        v34 = v28 - v31;
      }

      v35 = v74;
      if (v34 >= 1)
      {
        memset_pattern8(&v89[v31], v4, 8 * v34);
        v36 = v74 + *v4 * v34;
        goto LABEL_31;
      }

LABEL_67:
      v36 = v35;
LABEL_31:
      FillBlockStorageRow(v3, v19, v19, v81, v80, v35, v89, v30);
      v37 = *(v3 + 64);
      v38 = v7 * v37;
      bzero(v89, 8 * v37);
      if (((v7 * v37) & 0x8000000000000000) == 0)
      {
        v40 = 0;
        v41 = ~v38;
        goto LABEL_33;
      }

      v40 = -v38;
      v16 = v36;
      if (v40 < v37)
      {
        v41 = -1;
LABEL_33:
        v42 = v41 + *(v3 + 52);
        if ((v37 - v40) >= v42)
        {
          v43 = v42;
        }

        else
        {
          v43 = v37 - v40;
        }

        v16 = v36;
        if (v43 >= 1)
        {
          memset_pattern8(&v89[v40], v4, 8 * v43);
          v16 = v36 + *v4 * v43;
        }
      }

      result = FillBlockStorageRow(v3, v19, v14, v81, v80, v36, v89, v39);
      v12 = v76;
      v15 = v73;
LABEL_39:
      v79 = v82 + v15;
      v44 = v7;
      v45 = v7;
      v46 = v75;
      if (v45 < v78)
      {
        while (1)
        {
          v83 = v19;
          v84 = v13;
          v19 = v14;
          v47 = *(v3 + 64);
          v48 = (v44 + v12) * v47;
          bzero(v89, 8 * v47);
          if ((v48 & 0x8000000000000000) == 0)
          {
            break;
          }

          v50 = -v48;
          v54 = v16;
          if (v50 < v47)
          {
            v51 = -1;
LABEL_42:
            v52 = v51 + *(v3 + 52);
            if ((v47 - v50) >= v52)
            {
              v53 = v52;
            }

            else
            {
              v53 = v47 - v50;
            }

            v54 = v16;
            if (v53 >= 1)
            {
              memset_pattern8(&v89[v50], __pattern8, 8 * v53);
              v54 = v16 + *__pattern8 * v53;
            }
          }

          result = FillBlockStorageRow(v3, v14, v84, v81, v80, v16, v89, v49);
          v55 = *(v3 + 120);
          if (v79 >= v55)
          {
            v56 = *(v3 + 120);
          }

          else
          {
            v56 = v79;
          }

          if (v82 < v55)
          {
            v57 = &v14[2752 * v12];
            v58 = v82;
            v59 = v46;
            v61 = v86;
            v60 = v87;
            v62 = 0uLL;
            do
            {
              *v59 = -516;
              v63.i64[0] = 0x3F0000003F000000;
              v63.i64[1] = 0x3F0000003F000000;
              v59[1] = vmovn_s32(vcvtq_s32_f32(vmlaq_f32(v63, v60, vmaxnmq_f32(vminnmq_f32(v57[1], v61), v62))));
              v64 = fmaxf(v57[7].f32[2], 0.0);
              v63.i32[0] = *(v3 + 136);
              *v88 = v64;
              v88[1] = v63.i32[0];
              v65 = (v57[8].i16[2] >> 4) * (v57[8].i16[2] & 0xF) * (HIBYTE(v57[8].u16[2]) & 0xF);
              if (v64 > (v65 * 0.000015379) && v65 != v57[8].i8[6])
              {
                result = v85(v57, v88, v59);
                v62 = 0uLL;
                v61 = v86;
                v60 = v87;
                v64 = *v88;
              }

              v26 = v26 + v64;
              v59 += 2;
              v57 += 172;
              ++v58;
            }

            while (v58 < v56);
          }

          v46 = (v46 + *(v3 + 104));
          ++v44;
          v13 = v83;
          v14 = v84;
          v16 = v54;
          v12 = v76;
          if (v44 == v78)
          {
            goto LABEL_60;
          }
        }

        v50 = 0;
        v51 = ~v48;
        goto LABEL_42;
      }

LABEL_60:
      if (v82)
      {
        v66 = 0;
      }

      else
      {
        v66 = v12;
      }

      v15 = v73;
      v16 = v74 + *(v3 + 80) * (v73 - v66);
      v7 = v71;
      v75 += v70;
      v18 = *(v3 + 120);
      v20 = v79;
      v4 = __pattern8;
      if (v79 >= v18)
      {
        goto LABEL_72;
      }
    }
  }

  v26 = 0.0;
LABEL_72:
  v67 = *(v3 + 40);
  if (v67)
  {
    *(v67 + 4 * a2) = v26 + *(v67 + 4 * a2);
  }

  return result;
}

void EncodeRow(void *a1, uint64_t a2, unsigned __int8 *a3)
{
  v54 = *MEMORY[0x29EDCA608];
  v4 = *(a1 + 44);
  v5 = v4 * a2;
  v6 = v4 * a2 + v4;
  v7 = *(a1 + 32);
  if (v6 >= *(a1 + 33))
  {
    v6 = *(a1 + 33);
  }

  v44 = v6;
  if (v7)
  {
    v8 = 0;
    v9 = a1[25];
    v10 = (a1[3] + v5 * *(a1 + 16) * a1[11]);
    v11 = a1[4] + v5 * a1[13];
    v38 = a3 + 2752;
    v12 = 0.0;
    v36 = v5;
    while (1)
    {
      v13 = v7 - v8;
      v43 = v7 - v8;
      if ((v7 - v8) >= 47)
      {
        v13 = 47;
      }

      if (v5 < v44)
      {
        break;
      }

      v29 = v8 + 47;
LABEL_39:
      v10 = (v10 + 47 * a1[10]);
      v11 += 47 * a1[15];
      v8 = v29;
      if (v29 >= v7)
      {
        goto LABEL_42;
      }
    }

    v41 = v13 + v8;
    v49 = v11;
    v50 = v13 + v8 - 1;
    v45 = v8;
    v39 = v8 + 1;
    v40 = v8 + v13;
    v37 = v10;
    v14 = v10;
    v42 = v8 + 47;
    while (1)
    {
      v15 = *(a1 + 16);
      v48 = v5;
      bzero(__b, 8 * v15);
      if ((*(a1 + 13) + ~(v5 * v15)) < v15)
      {
        v15 = *(a1 + 13) + ~(v5 * v15);
      }

      if (v15 >= 1)
      {
        memset_pattern8(__b, a1 + 11, 8 * v15);
        v14 = (v10 + a1[11] * v15);
      }

      v47 = v14;
      v16 = v45;
      if (v43 < 1)
      {
        goto LABEL_31;
      }

      v17 = a1[26];
      v18 = *(a1 + 32) - v45;
      if (v18 < 1)
      {
        break;
      }

      ReadBlock(a1, a3, v10, __b, a1[12], v45 * *(a1 + 15));
      if (v45 < v50)
      {
        v10 = (v10 + a1[10]);
        v19 = v18 - 1;
        if (v18 == 1)
        {
          v20 = v38;
          v21 = v39;
        }

        else
        {
          v20 = v38;
          v21 = v39;
          do
          {
            v22 = v21;
            ReadBlock(a1, v20, v10, __b, a1[12], v21 * *(a1 + 15));
            v20 += 2752;
            v10 = (v10 + a1[10]);
            ++v21;
            if (v22 >= v50)
            {
              break;
            }
          }

          while (v19-- > 1);
        }

LABEL_23:
        if (v21 < v41)
        {
          if (*(a1 + 16))
          {
            v24 = 0;
            v25 = a1[10];
            v26 = v53;
            do
            {
              v52[v24] = v25;
              v17(v26, v10);
              v25 = a1[10];
              v26 = (v26 + v25);
              v10 = (v10 + __b[v24++]);
            }

            while (v24 < *(a1 + 16));
          }

          else
          {
            v26 = v53;
          }

          v27 = v40 - v21;
          v16 = v45;
          do
          {
            ReadBlock(a1, v20, v26, v52, a1[12], 0);
            v20 += 2752;
            --v27;
          }

          while (v27);
        }
      }

LABEL_31:
      v28 = *(a1 + 32);
      v29 = v42;
      if (v42 >= v28)
      {
        v30 = *(a1 + 32);
      }

      else
      {
        v30 = v42;
      }

      v31 = v16;
      v32 = a3;
      v33 = v49;
      if (v16 < v28)
      {
        do
        {
          v53[0] = INFINITY;
          v53[1] = *(a1 + 36);
          v9(v32, v53, v33);
          v12 = v12 + v53[0];
          v33 += a1[15];
          v32 += 2752;
          ++v31;
        }

        while (v31 < v30);
      }

      v49 += a1[13];
      v5 = v48 + 1;
      v14 = v47;
      v10 = v47;
      if (v48 + 1 == v44)
      {
        v7 = *(a1 + 32);
        v5 = v36;
        v10 = v37;
        goto LABEL_39;
      }
    }

    v21 = v45;
    v20 = a3;
    goto LABEL_23;
  }

  v12 = 0.0;
LABEL_42:
  v34 = a1[5];
  if (v34)
  {
    *(v34 + 4 * a2) = v12 + *(v34 + 4 * a2);
  }
}

void EncodeBasicBlock_4x4(uint64_t a1, int8x16_t *a2, float *a3, float32x4_t *a4)
{
  v5 = a3;
  v1784 = *MEMORY[0x29EDCA608];
  v8 = a1 + 272;
  v1715 = *(a1 + 16);
  v9 = *(a1 + 134);
  if (v9 >= 1 && *(a1 + 135))
  {
    v10 = vcgezq_s32(*(a1 + 736));
    v11 = vcgezq_s32(*(a1 + 768));
    v12 = vcgezq_s32(*(a1 + 720));
    v13 = vcgezq_s32(*(a1 + 752));
    v1715 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(*(a1 + 144), v12), vandq_s8(*(a1 + 176), v13)), vaddq_f32(vandq_s8(*(a1 + 160), v10), vandq_s8(*(a1 + 192), v11))), vaddq_f32(vaddq_f32(vandq_s8(*(a1 + 208), v12), vandq_s8(*(a1 + 240), v13)), vaddq_f32(vandq_s8(*(a1 + 224), v10), vandq_s8(*(a1 + 256), v11)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(*v8, v12), vandq_s8(*(a1 + 304), v13)), vaddq_f32(vandq_s8(*(a1 + 288), v10), vandq_s8(*(a1 + 320), v11))), vaddq_f32(vaddq_f32(vandq_s8(*(a1 + 336), v12), vandq_s8(*(a1 + 368), v13)), vaddq_f32(vandq_s8(*(a1 + 352), v10), vandq_s8(*(a1 + 384), v11))))), ReciprocalTable[16 - v9]);
  }

  __asm
  {
    FMOV            V31.4S, #1.0
    FMOV            V0.4S, #3.0
  }

  v1668 = _Q0;
  v1591 = *a3;
  v1728 = _Q31;
  if (!(_NF ^ _VF | _ZF))
  {
    if (*(a1 + 136))
    {
      v1743 = WeightInfoForSingleLineSingleWeight_4x4(2, 2);
      v21 = *(v8 + 416);
      v20 = *(v8 + 432);
      v23 = *(v8 + 384);
      v22 = *(v8 + 400);
      v24 = vmaxnmq_f32(v22, v20);
      v25 = vminnmq_f32(v22, v20);
      v26 = vmaxnmq_f32(vmaxnmq_f32(v23, v21), v24);
      v27 = vminnmq_f32(vminnmq_f32(v23, v21), v25);
      __asm { FMOV            V1.4S, #1.0 }

      v29 = vzip2q_s32(v27, _Q1);
      v30 = vzip1q_s32(v27, _Q1);
      v31 = vmaxnmq_f32(vzip1q_s32(v26, _Q1), vzip2q_s32(v26, _Q1));
      v32 = vminnmq_f32(v30, v29);
      v33 = vmaxnmq_f32(v31, vextq_s8(v31, v31, 8uLL));
      v34 = vminnmq_f32(v32, vextq_s8(v32, v32, 8uLL));
      v35 = vzip1q_s32(v33, v33);
      v35.i32[2] = v33.i32[0];
      v36 = vzip1q_s32(v34, v34);
      v36.i32[2] = v34.i32[0];
      goto LABEL_77;
    }

    v88 = *(a1 + 32);
    if (v88)
    {
      v89 = *v88;
      v89.i32[3] = 0;
    }

    else
    {
      v89 = xmmword_2984959B0;
    }

    v301 = vmulq_f32(v1715, v89);
    *v301.i8 = vadd_f32(*v301.i8, *&vextq_s8(v301, v301, 8uLL));
    v302 = vadd_f32(*v301.i8, vdup_lane_s32(*v301.i8, 1));
    v303 = vaddv_f32(*v301.i8);
    v304 = (a1 + 336);
    v305 = *(a1 + 336);
    v306 = (a1 + 656);
    v308 = *(a1 + 688);
    v307 = *(a1 + 704);
    v310 = *(a1 + 656);
    v309 = *(a1 + 672);
    v311 = vdupq_lane_s32(v302, 0);
    v312 = vsubq_f32(v310, v311);
    v313 = vsubq_f32(v309, v311);
    v314 = vsubq_f32(v308, v311);
    v315 = vsubq_f32(v307, v311);
    v316 = *(a1 + 352);
    v317 = *(a1 + 368);
    v318 = *(a1 + 384);
    v319 = vdupq_laneq_s32(v1715, 3);
    v320 = vsubq_f32(v318, v319);
    v321 = vsubq_f32(v317, v319);
    v322 = vsubq_f32(v316, v319);
    v323 = vsubq_f32(v305, v319);
    v324 = vmlaq_f32(vmulq_f32(v320, v320), v315, v315);
    v325 = vmlaq_f32(vmulq_f32(v321, v321), v314, v314);
    v326 = vmlaq_f32(vmulq_f32(v322, v322), v313, v313);
    v327 = vmlaq_f32(vmulq_f32(v323, v323), v312, v312);
    v328 = v327;
    v329 = v326;
    v330 = v325;
    v331 = v324;
    if (*(a1 + 135))
    {
      v332.i64[0] = 0x7F0000007FLL;
      v332.i64[1] = 0x7F0000007FLL;
      v330 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v332, v325);
      v329 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v332, v326);
      v328 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v332, v327);
      v331 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v332, v324);
    }

    v1681 = v324;
    v1686 = v325;
    v1691 = v326;
    v1697 = v327;
    v333 = vmaxnmq_f32(v328, v330);
    v334 = vmaxnmq_f32(v329, v331);
    v335 = vbslq_s8(vcgtq_f32(v330, v328), xmmword_298495610, xmmword_298495600);
    v336 = vbslq_s8(vcgtq_f32(v331, v329), xmmword_298495630, xmmword_298495620);
    v337 = vmaxnmq_f32(v333, v334);
    v338 = vbslq_s8(vcgtq_f32(v334, v333), v336, v335);
    v336.i64[0] = vextq_s8(v337, v337, 8uLL).u64[0];
    v339 = vmaxnm_f32(*v337.i8, *v336.i8);
    v340 = vextq_s8(v338, v338, 8uLL).u64[0];
    v341 = vbsl_s8(vcgt_f32(*v336.i8, *v337.i8), v340, *v338.i8);
    if (vmvn_s8(vcge_f32(v339, vdup_lane_s32(v339, 1))).u8[0])
    {
      v342 = v341.i32[1];
    }

    else
    {
      v342 = v341.i32[0];
    }

    v340.i32[0] = v306->i32[v342];
    v326.i32[0] = v304->i32[v342];
    v343 = vdupq_lane_s32(v340, 0);
    v344 = vsubq_f32(v310, v343);
    v345 = vsubq_f32(v309, v343);
    v346 = vsubq_f32(v308, v343);
    v347 = vsubq_f32(v307, v343);
    v343.i32[3] = v326.i32[0];
    v1722 = v343;
    v348 = v303 - *v340.i32;
    v349 = v1715.f32[3] - *v326.i32;
    v1710 = v326;
    v350 = vdupq_lane_s32(*v326.i8, 0);
    v351 = vsubq_f32(v318, v350);
    v352 = vsubq_f32(v317, v350);
    v353 = vsubq_f32(v316, v350);
    v354 = vsubq_f32(v305, v350);
    v355 = vmulq_n_f32(v354, v349);
    v356 = vmulq_n_f32(v353, v349);
    v357 = vmulq_n_f32(v352, v349);
    v358 = vmlaq_n_f32(vmulq_n_f32(v351, v349), v347, v348);
    v359 = vmlaq_n_f32(v357, v346, v348);
    v360 = vmlaq_n_f32(v356, v345, v348);
    v361 = vmlaq_n_f32(v355, v344, v348);
    if (*(a1 + 135))
    {
      v362.i64[0] = 0x7F0000007FLL;
      v362.i64[1] = 0x7F0000007FLL;
      v359 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v362, v359);
      v360 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v362, v360);
      v361 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v362, v361);
      v358 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v362, v358);
    }

    v363 = vmaxnmq_f32(v361, v359);
    v364 = vmaxnmq_f32(v360, v358);
    v365 = vmaxnmq_f32(v363, v364);
    v366 = vbslq_s8(vcgtq_f32(v364, v363), vbslq_s8(vcgtq_f32(v358, v360), xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v359, v361), xmmword_298495610, xmmword_298495600));
    v369 = vextq_s8(v365, v365, 8uLL);
    v367 = vmaxnm_f32(*v365.i8, *v369.i8);
    v368 = vbsl_s8(vcgt_f32(*v369.i8, *v365.i8), *&vextq_s8(v366, v366, 8uLL), *v366.i8);
    *v369.i8 = vmvn_s8(vcge_f32(v367, vdup_lane_s32(v367, 1)));
    if (v369.i8[0])
    {
      v370 = v368.i32[1];
    }

    else
    {
      v370 = v368.i32[0];
    }

    v371 = &v306->f32[v370];
    v372 = vld1q_dup_f32(v371);
    v369.i32[0] = v304->i32[v370];
    v373 = vsubq_f32(v310, v372);
    v374 = vsubq_f32(v309, v372);
    v375 = vsubq_f32(v308, v372);
    v376 = vsubq_f32(v307, v372);
    v372.i32[3] = v369.i32[0];
    v1717 = v372;
    v377 = vmlaq_f32(vmulq_f32(v354, v354), v344, v344);
    v1704 = v369;
    v378 = vdupq_lane_s32(*v369.i8, 0);
    v379 = vsubq_f32(v318, v378);
    v380 = vsubq_f32(v317, v378);
    v381 = vsubq_f32(v316, v378);
    v382 = vsubq_f32(v305, v378);
    v383 = vminnmq_f32(vmlaq_f32(vmulq_f32(v351, v351), v347, v347), vmlaq_f32(vmulq_f32(v379, v379), v376, v376));
    v384 = vdupq_n_s32(0x3865F1D0u);
    v385 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v384, vminnmq_f32(v377, vmlaq_f32(vmulq_f32(v382, v382), v373, v373))), vcgtq_f32(v384, vminnmq_f32(vmlaq_f32(vmulq_f32(v353, v353), v345, v345), vmlaq_f32(vmulq_f32(v381, v381), v374, v374)))), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v384, vminnmq_f32(vmlaq_f32(vmulq_f32(v352, v352), v346, v346), vmlaq_f32(vmulq_f32(v380, v380), v375, v375))), vcgtq_f32(v384, v383)), xmmword_298495640));
    v385.i16[0] = vaddvq_s16(v385);
    *v385.i8 = vcnt_s8(*v385.i8);
    v385.i16[0] = vaddlv_u8(*v385.i8);
    v1743 = WeightInfoForSingleLineSingleWeight_4x4(v385.i32[0], 4);
    if (!*(a1 + 134))
    {
      v35 = v1717;
      v36 = v1722;
      goto LABEL_77;
    }

    v36 = v1722;
    if (*(a1 + 135))
    {
      v35 = v1717;
      if (v1710.f32[0] != 0.0)
      {
        v388 = v1704;
        if (v1704.f32[0] != 0.0)
        {
          v389 = vsubq_f32(v1717, v1722);
          v388.i32[0] = v389.i32[3];
          if (v389.f32[3] == 0.0)
          {
            if (*(a1 + 134) >= 15)
            {
              goto LABEL_58;
            }

            v386.i64[0] = 0x3F0000003FLL;
            v386.i64[1] = 0x3F0000003FLL;
            v36 = vnegq_f32(v386);
          }

          v386.i64[0] = 0;
          v448 = vdupq_lane_s32(*&vcgtq_f32(v386, v388), 0);
          v449 = vbslq_s8(v448, vnegq_f32(v389), v389);
          v450 = vbslq_s8(v448, v1717, v36);
          v387.f32[0] = v450.f32[3] / v449.f32[3];
          v451 = vmlsq_lane_f32(v450, v449, v387, 0);
          if ((vminvq_u32(vandq_s8(vcgtq_f32(v451, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v451))) & 0x80000000) == 0)
          {
            v1752 = v1697;
            v1753 = v1691;
            v1754 = v1686;
            v1755 = v1681;
            v452 = vector_index_of_maximum(&v1752);
            v453.i32[0] = v306->i32[v452];
            v454.i32[0] = v304->i32[v452];
            v455 = vdupq_lane_s32(v453, 0);
            v456 = vsubq_f32(*(v8 + 432), v455);
            v457 = vsubq_f32(*(v8 + 416), v455);
            v458 = vsubq_f32(*(v8 + 400), v455);
            v459 = vsubq_f32(*v306, v455);
            v455.i32[3] = v454.i32[0];
            v1723 = v455;
            *v453.i32 = v303 - *v453.i32;
            v455.f32[0] = v1715.f32[3] - *v454.i32;
            v460 = vdupq_lane_s32(v454, 0);
            v461 = vsubq_f32(*v304, v460);
            v462 = vsubq_f32(*(v8 + 80), v460);
            v463 = vmulq_n_f32(vsubq_f32(*(v8 + 96), v460), v455.f32[0]);
            v1755 = vmlaq_n_f32(vmulq_n_f32(vsubq_f32(*(v8 + 112), v460), v455.f32[0]), v456, *v453.i32);
            v1754 = vmlaq_n_f32(v463, v457, *v453.i32);
            v1753 = vmlaq_n_f32(vmulq_n_f32(v462, v455.f32[0]), v458, *v453.i32);
            v1752 = vmlaq_n_f32(vmulq_n_f32(v461, v455.f32[0]), v459, *v453.i32);
            v464 = vector_index_of_maximum(&v1752);
            v36 = v1723;
            v465 = &v306->f32[v464];
            v35 = vld1q_dup_f32(v465);
            v35.i32[3] = v304->i32[v464];
            goto LABEL_77;
          }

          v35 = vbslq_s8(v448, v36, v1717);
          v434 = vmaxnmq_f32(v451, 0);
          __asm { FMOV            V1.4S, #1.0 }

          goto LABEL_76;
        }
      }

      goto LABEL_77;
    }

    v300 = vdupq_lane_s32(*&vcgtq_f32(v1704, v1710), 0);
    v35 = v1717;
LABEL_61:
    v35 = vandq_s8(v35, v300);
    v36 = vbicq_s8(v36, v300);
    goto LABEL_77;
  }

  v37 = *(a1 + 176);
  v38 = *(a1 + 192);
  v39 = *(a1 + 144);
  v40 = *(a1 + 160);
  v41 = vdupq_lane_s32(*v1715.f32, 0);
  v42 = vsubq_f32(v39, v41);
  v43 = vsubq_f32(v40, v41);
  v44 = vsubq_f32(v37, v41);
  v45 = vsubq_f32(v38, v41);
  v46 = *(a1 + 240);
  v47 = vdupq_lane_s32(*v1715.f32, 1);
  v48 = *(a1 + 208);
  v49 = *(a1 + 224);
  v50 = vsubq_f32(v48, v47);
  v51 = vsubq_f32(v49, v47);
  v52 = vsubq_f32(v46, v47);
  v1669 = *(a1 + 256);
  v53 = vsubq_f32(v1669, v47);
  v54 = *(a1 + 320);
  v55 = vdupq_laneq_s32(v1715, 2);
  v1684 = *v8;
  v1689 = *(a1 + 288);
  v56 = vsubq_f32(*v8, v55);
  v57 = vsubq_f32(v1689, v55);
  v1703 = *(a1 + 304);
  v58 = vsubq_f32(v1703, v55);
  v59 = vsubq_f32(v54, v55);
  v60 = vdupq_laneq_s32(v1715, 3);
  v1709 = *(a1 + 336);
  v61 = vsubq_f32(v1709, v60);
  v1695 = *(a1 + 352);
  v62 = vsubq_f32(v1695, v60);
  v1675 = *(a1 + 384);
  v1679 = *(a1 + 368);
  v63 = vsubq_f32(v1679, v60);
  v64 = vsubq_f32(v1675, v60);
  v65 = vmulq_f32(v45, v45);
  v66 = vmulq_f32(v44, v44);
  v67 = vmulq_f32(v43, v43);
  v68 = vmulq_f32(v42, v42);
  v69 = vmulq_f32(v53, v53);
  v70 = vmulq_f32(v52, v52);
  v71 = vmulq_f32(v51, v51);
  v72 = vmulq_f32(v50, v50);
  v73 = vmulq_f32(v59, v59);
  v74 = vmulq_f32(v58, v58);
  v75 = *(a1 + 32);
  v76 = vmulq_f32(v57, v57);
  v77 = vmulq_f32(v56, v56);
  v78 = vmulq_f32(v64, v64);
  v79 = vmulq_f32(v63, v63);
  v80 = vmulq_f32(v62, v62);
  v81 = vmulq_f32(v61, v61);
  if (v75)
  {
    v82 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v69, *v75, 1), v65, COERCE_FLOAT(*v75->f32)), v73, *v75->f32, 2), v78, *v75->f32, 3);
    v83 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v72, *v75, 1), v68, COERCE_FLOAT(*v75->f32)), v77, *v75->f32, 2), v81, *v75->f32, 3);
    v84 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v71, *v75, 1), v67, COERCE_FLOAT(*v75->f32)), v76, *v75->f32, 2), v80, *v75->f32, 3), v1668);
    v85 = vmulq_f32(v83, v1668);
    v86 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v70, *v75, 1), v66, COERCE_FLOAT(*v75->f32)), v74, *v75->f32, 2), v79, *v75->f32, 3), v1668);
    v87 = vmulq_f32(v82, v1668);
  }

  else
  {
    v90 = vaddq_f32(vaddq_f32(v65, v69), v73);
    v85 = vaddq_f32(vaddq_f32(vaddq_f32(v68, v72), v77), v81);
    v84 = vaddq_f32(vaddq_f32(vaddq_f32(v67, v71), v76), v80);
    v86 = vaddq_f32(vaddq_f32(vaddq_f32(v66, v70), v74), v79);
    v87 = vaddq_f32(v90, v78);
  }

  if (*(a1 + 135))
  {
    v91.i64[0] = 0x7F0000007FLL;
    v91.i64[1] = 0x7F0000007FLL;
    v86 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v91, v86);
    v84 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v91, v84);
    v85 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v91, v85);
    v87 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v91, v87);
  }

  v92 = a1 + 400;
  v93 = vmaxnmq_f32(v85, v86);
  v94 = vmaxnmq_f32(v84, v87);
  v95 = vmaxnmq_f32(v93, v94);
  v96 = vbslq_s8(vcgtq_f32(v94, v93), vbslq_s8(vcgtq_f32(v87, v84), xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v86, v85), xmmword_298495610, xmmword_298495600));
  v97 = vextq_s8(v95, v95, 8uLL).u64[0];
  *v93.f32 = vmaxnm_f32(*v95.i8, v97);
  v98 = vbsl_s8(vcgt_f32(v97, *v95.i8), *&vextq_s8(v96, v96, 8uLL), *v96.i8);
  if (vmvn_s8(vcge_f32(*v93.f32, vdup_lane_s32(*v93.f32, 1))).u8[0])
  {
    v99 = v98.i32[1];
  }

  else
  {
    v99 = v98.i32[0];
  }

  v100 = *(v92 + 16 * v99);
  v101 = vsubq_f32(v1715, v100);
  v102 = vdupq_lane_s32(*v100.f32, 0);
  v103 = vsubq_f32(v39, v102);
  v104 = vsubq_f32(v40, v102);
  v105 = vsubq_f32(v37, v102);
  v1622 = v102;
  v106 = vsubq_f32(v38, v102);
  v107 = vdupq_lane_s32(*v100.f32, 1);
  v108 = vsubq_f32(v48, v107);
  v109 = vsubq_f32(v49, v107);
  v110 = vsubq_f32(v46, v107);
  v1624 = v107;
  v111 = vsubq_f32(v1669, v107);
  v112 = vdupq_laneq_s32(v100, 2);
  v113 = vsubq_f32(v1684, v112);
  v114 = vsubq_f32(v1689, v112);
  v115 = vsubq_f32(v1703, v112);
  v116 = vsubq_f32(v54, v112);
  v1720 = v100;
  v117 = vdupq_laneq_s32(v100, 3);
  v118 = vsubq_f32(v1709, v117);
  v119 = vsubq_f32(v1695, v117);
  v120 = vsubq_f32(v1679, v117);
  v1626 = v112;
  v1630 = v117;
  v121 = vsubq_f32(v1675, v117);
  v122 = vmulq_n_f32(v106, v101.f32[0]);
  v123 = vmulq_n_f32(v105, v101.f32[0]);
  v124 = vmulq_n_f32(v104, v101.f32[0]);
  v125 = vmulq_n_f32(v103, v101.f32[0]);
  v126 = vmulq_lane_f32(v111, *v101.f32, 1);
  v127 = vmulq_lane_f32(v110, *v101.f32, 1);
  v128 = vmulq_lane_f32(v109, *v101.f32, 1);
  v129 = vmulq_lane_f32(v108, *v101.f32, 1);
  v130 = vmulq_laneq_f32(v116, v101, 2);
  v131 = vmulq_laneq_f32(v115, v101, 2);
  v132 = vmulq_laneq_f32(v114, v101, 2);
  v133 = vmulq_laneq_f32(v113, v101, 2);
  v134 = vmulq_laneq_f32(v121, v101, 3);
  v135 = vmulq_laneq_f32(v120, v101, 3);
  v136 = vmulq_laneq_f32(v119, v101, 3);
  v137 = vmulq_laneq_f32(v118, v101, 3);
  if (v75)
  {
    v138 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v128, *v75, 1), v124, COERCE_FLOAT(*v75->f32)), v132, *v75->f32, 2), v136, *v75->f32, 3), v1668);
    v139 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v129, *v75, 1), v125, COERCE_FLOAT(*v75->f32)), v133, *v75->f32, 2), v137, *v75->f32, 3), v1668);
    v140 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v127, *v75, 1), v123, COERCE_FLOAT(*v75->f32)), v131, *v75->f32, 2), v135, *v75->f32, 3), v1668);
    v141 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v126, *v75, 1), v122, COERCE_FLOAT(*v75->f32)), v130, *v75->f32, 2), v134, *v75->f32, 3), v1668);
    if (!*(a1 + 135))
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v139 = vaddq_f32(v137, vaddq_f32(v133, vaddq_f32(v125, v129)));
  v138 = vaddq_f32(v136, vaddq_f32(v132, vaddq_f32(v124, v128)));
  v140 = vaddq_f32(v135, vaddq_f32(v131, vaddq_f32(v123, v127)));
  v141 = vaddq_f32(v134, vaddq_f32(v130, vaddq_f32(v122, v126)));
  if (*(a1 + 135))
  {
LABEL_19:
    v142.i64[0] = 0x7F0000007FLL;
    v142.i64[1] = 0x7F0000007FLL;
    v140 = vbslq_s8(vcltzq_s32(*(a1 + 752)), v142, v140);
    v138 = vbslq_s8(vcltzq_s32(*(a1 + 736)), v142, v138);
    v139 = vbslq_s8(vcltzq_s32(*(a1 + 720)), v142, v139);
    v141 = vbslq_s8(vcltzq_s32(*(a1 + 768)), v142, v141);
  }

LABEL_20:
  v143 = vmaxnmq_f32(v138, v141);
  v144 = vcgtq_f32(v141, v138);
  v145 = vmaxnmq_f32(v139, v140);
  v146 = vbslq_s8(vcgtq_f32(v143, v145), vbslq_s8(v144, xmmword_298495630, xmmword_298495620), vbslq_s8(vcgtq_f32(v140, v139), xmmword_298495610, xmmword_298495600));
  v147 = vmaxnmq_f32(v145, v143);
  v148 = vextq_s8(v147, v147, 8uLL).u64[0];
  v149 = vbsl_s8(vcgt_f32(v148, *v147.i8), *&vextq_s8(v146, v146, 8uLL), *v146.i8);
  *v147.i8 = vmaxnm_f32(*v147.i8, v148);
  v150 = vmlaq_f32(vmulq_f32(v111, v111), v106, v106);
  v151 = vmlaq_f32(vmulq_f32(v110, v110), v105, v105);
  v152 = vmlaq_f32(vmulq_f32(v109, v109), v104, v104);
  v153 = vmlaq_f32(vmlaq_f32(vmulq_f32(v108, v108), v103, v103), v113, v113);
  v154 = vmlaq_f32(v152, v114, v114);
  v155 = vmlaq_f32(v151, v115, v115);
  v156 = vmlaq_f32(vmlaq_f32(v150, v116, v116), v121, v121);
  if (vmvn_s8(vcge_f32(*v147.i8, vdup_lane_s32(*v147.i8, 1))).u8[0])
  {
    v157 = v149.i32[1];
  }

  else
  {
    v157 = v149.i32[0];
  }

  v158 = *(v92 + 16 * v157);
  v159 = vdupq_lane_s32(*v158.f32, 0);
  v160 = vsubq_f32(*(a1 + 192), v159);
  v161 = vdupq_lane_s32(*v158.f32, 1);
  v1716 = v158;
  v162 = vsubq_f32(v1669, v161);
  v163 = vmlaq_f32(vmulq_f32(v162, v162), v160, v160);
  v164 = vsubq_f32(*(a1 + 176), v159);
  v165 = vsubq_f32(*(a1 + 240), v161);
  v166 = vmlaq_f32(vmulq_f32(v165, v165), v164, v164);
  v167 = vsubq_f32(*(a1 + 160), v159);
  v168 = vsubq_f32(*(a1 + 224), v161);
  v169 = vmlaq_f32(vmulq_f32(v168, v168), v167, v167);
  v1650 = v159;
  v170 = vsubq_f32(*(a1 + 144), v159);
  v1670 = v161;
  v171 = vsubq_f32(*(a1 + 208), v161);
  v172 = vmlaq_f32(vmulq_f32(v171, v171), v170, v170);
  v173 = vdupq_laneq_s32(v1716, 2);
  v174 = vsubq_f32(v1684, v173);
  v175 = vmlaq_f32(v172, v174, v174);
  v176 = vsubq_f32(v1689, v173);
  v177 = vmlaq_f32(v169, v176, v176);
  v178 = vsubq_f32(v1703, v173);
  v179 = vmlaq_f32(v166, v178, v178);
  v1657 = v173;
  v180 = vsubq_f32(*(a1 + 320), v173);
  v181 = vmlaq_f32(v163, v180, v180);
  v182 = vdupq_laneq_s32(v1716, 3);
  v183 = vsubq_f32(v1675, v182);
  v184 = vmlaq_f32(v181, v183, v183);
  v185 = vsubq_f32(v1679, v182);
  v186 = vmlaq_f32(v179, v185, v185);
  v187 = vsubq_f32(v1695, v182);
  v188 = vmlaq_f32(v177, v187, v187);
  v1680 = v182;
  v189 = vsubq_f32(v1709, v182);
  v190 = vminnmq_f32(vmlaq_f32(v153, v118, v118), vmlaq_f32(v175, v189, v189));
  v191 = vdupq_n_s32(0x3BF7C5EEu);
  v192 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v191, v190), vcgtq_f32(v191, vminnmq_f32(vmlaq_f32(v154, v119, v119), v188))), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v191, vminnmq_f32(vmlaq_f32(v155, v120, v120), v186)), vcgtq_f32(v191, vminnmq_f32(v156, v184))), xmmword_298495640));
  v192.i16[0] = vaddvq_s16(v192);
  v193 = vcnt_s8(*v192.i8);
  v193.i16[0] = vaddlv_u8(v193);
  if (*(a1 + 136))
  {
    v194 = 6;
  }

  else
  {
    v194 = 8;
  }

  v195 = WeightInfoForSingleLineSingleWeight_4x4(v193.i32[0], v194);
  v1655 = ReciprocalTable[BYTE4(v195)];
  *v196.i32 = v1655 * v1655;
  v197 = v1720;
  v198 = vsubq_f32(v1716, v1720);
  v199.i64[0] = 0x8000000080000000;
  v199.i64[1] = 0x8000000080000000;
  v200 = vdupq_n_s32(0x3B808081u);
  v201 = vdivq_f32(v1728, vbslq_s8(vcgtq_f32(v200, vabdq_f32(v1716, v1720)), vorrq_s8(vandq_s8(v198, v199), v200), v198));
  v202 = *(a1 + 144);
  v203 = *(a1 + 160);
  v205 = *(a1 + 176);
  v204 = *(a1 + 192);
  v206 = vmulq_n_f32(vsubq_f32(v203, v1622), v201.f32[0]);
  v207 = vmulq_n_f32(vsubq_f32(v202, v1622), v201.f32[0]);
  v208 = vmulq_n_f32(vsubq_f32(v204, v1622), v201.f32[0]);
  v209 = vmulq_n_f32(vsubq_f32(v205, v1622), v201.f32[0]);
  v210 = *(a1 + 256);
  v211 = *(a1 + 208);
  v1696 = *(a1 + 224);
  v212 = *(a1 + 240);
  v213 = vmulq_lane_f32(vsubq_f32(v212, v1624), *v201.f32, 1);
  v214 = vmulq_lane_f32(vsubq_f32(v210, v1624), *v201.f32, 1);
  v215 = vmulq_lane_f32(vsubq_f32(v211, v1624), *v201.f32, 1);
  v216 = vmulq_lane_f32(vsubq_f32(v1696, v1624), *v201.f32, 1);
  v218 = *(v8 + 32);
  v217 = *(v8 + 48);
  v220 = *v8;
  v219 = *(v8 + 16);
  v221 = vmlaq_f32(vmulq_f32(v213, v213), v209, v209);
  v222 = vmlaq_f32(vmulq_f32(v214, v214), v208, v208);
  v223 = vmlaq_f32(vmulq_f32(v215, v215), v207, v207);
  v224 = vmulq_laneq_f32(vsubq_f32(v218, v1626), v201, 2);
  v225 = vmulq_laneq_f32(vsubq_f32(v217, v1626), v201, 2);
  v226 = vmulq_laneq_f32(vsubq_f32(*v8, v1626), v201, 2);
  v227 = vmulq_laneq_f32(vsubq_f32(v219, v1626), v201, 2);
  v228 = vmlaq_f32(vmlaq_f32(vmulq_f32(v216, v216), v206, v206), v227, v227);
  v230 = *(v8 + 64);
  v229 = *(v8 + 80);
  v231 = vmlaq_f32(v223, v226, v226);
  v232 = *(v8 + 96);
  v233 = *(v8 + 112);
  v234 = vmlaq_f32(v221, v224, v224);
  v235 = vmulq_laneq_f32(vsubq_f32(v232, v1630), v201, 3);
  v236 = vmlaq_f32(v234, v235, v235);
  v237 = vmulq_laneq_f32(vsubq_f32(v233, v1630), v201, 3);
  v238 = vmlaq_f32(vmlaq_f32(v222, v225, v225), v237, v237);
  v239 = vmulq_laneq_f32(vsubq_f32(v229, v1630), v201, 3);
  v240 = vmulq_laneq_f32(vsubq_f32(v230, v1630), v201, 3);
  v241 = vmlaq_f32(v231, v240, v240);
  v242 = vdupq_lane_s32(v196, 0);
  v243 = vcgtq_f32(v242, vmlaq_f32(v228, v239, v239));
  v244 = vcgtq_f32(v242, v241);
  v245 = vcgtq_f32(v242, v238);
  v246 = vcgtq_f32(v242, v236);
  v247 = vorrq_s8(vandq_s8(vuzp1q_s16(v244, v243), xmmword_298495650), vandq_s8(vuzp1q_s16(v246, v245), xmmword_298495640));
  v247.i16[0] = vaddvq_s16(v247);
  v248 = vcnt_s8(*v247.i8);
  v248.i16[0] = vaddlv_u8(v248);
  v1743 = v195;
  v1685 = v210;
  v1690 = v204;
  if (v248.i32[0] >= 2u)
  {
    v197 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v202, v244), vandq_s8(v205, v246)), vaddq_f32(vandq_s8(v203, v243), vandq_s8(v204, v245))), vaddq_f32(vaddq_f32(vandq_s8(v211, v244), vandq_s8(v212, v246)), vaddq_f32(vandq_s8(v1696, v243), vandq_s8(v210, v245)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v220, v244), vandq_s8(v218, v246)), vaddq_f32(vandq_s8(v219, v243), vandq_s8(v217, v245))), vaddq_f32(vaddq_f32(vandq_s8(v230, v244), vandq_s8(v232, v246)), vaddq_f32(vandq_s8(v229, v243), vandq_s8(v233, v245))))), ReciprocalTable[v248.u16[0]]);
  }

  v1721 = v197;
  v249 = vmulq_n_f32(vsubq_f32(v1650, v205), v201.f32[0]);
  v250 = vmulq_n_f32(vsubq_f32(v1650, v204), v201.f32[0]);
  v251 = vmulq_n_f32(vsubq_f32(v1650, v203), v201.f32[0]);
  v252 = vmulq_n_f32(vsubq_f32(v1650, v202), v201.f32[0]);
  v253 = vmulq_lane_f32(vsubq_f32(v1670, v211), *v201.f32, 1);
  v254 = vmulq_lane_f32(vsubq_f32(v1670, v1696), *v201.f32, 1);
  v255 = vmulq_lane_f32(vsubq_f32(v1670, v210), *v201.f32, 1);
  v256 = vmulq_lane_f32(vsubq_f32(v1670, v212), *v201.f32, 1);
  v257 = v232;
  v258 = v217;
  v259 = vmulq_laneq_f32(vsubq_f32(v1657, v220), v201, 2);
  v260 = vmulq_laneq_f32(vsubq_f32(v1657, v219), v201, 2);
  v261 = vmulq_laneq_f32(vsubq_f32(v1657, v217), v201, 2);
  v262 = vmulq_laneq_f32(vsubq_f32(v1657, v218), v201, 2);
  v263 = vsubq_f32(v1680, v230);
  v264 = vsubq_f32(v1680, v229);
  v265 = v203;
  v266 = vsubq_f32(v1680, v233);
  v267 = v233;
  v268 = v230;
  v269 = v229;
  v270 = v219;
  v271 = v205;
  v272 = vmulq_laneq_f32(vsubq_f32(v1680, v257), v201, 3);
  v273 = vmulq_laneq_f32(v266, v201, 3);
  v274 = vmulq_laneq_f32(v264, v201, 3);
  v275 = vmulq_laneq_f32(v263, v201, 3);
  v276 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v253, v253), v252, v252), v259, v259), v275, v275);
  v277 = vcgtq_f32(v242, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v256, v256), v249, v249), v262, v262), v272, v272));
  v278 = vcgtq_f32(v242, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v255, v255), v250, v250), v261, v261), v273, v273));
  v279 = vcgtq_f32(v242, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v254, v254), v251, v251), v260, v260), v274, v274));
  v280 = vcgtq_f32(v242, v276);
  v281 = vandq_s8(vuzp1q_s16(v277, v278), xmmword_298495640);
  v282 = vorrq_s8(vandq_s8(vuzp1q_s16(v280, v279), xmmword_298495650), v281);
  v282.i16[0] = vaddvq_s16(v282);
  *v282.f32 = vcnt_s8(*v282.f32);
  v282.i16[0] = vaddlv_u8(*v282.f32);
  v283 = v282.i16[0];
  v1646 = v219;
  if (v282.i32[0] < 2u)
  {
    v292 = v267;
    v288 = v212;
    v284 = v202;
    v35 = v1716;
  }

  else
  {
    v284 = v202;
    v285 = vandq_s8(v202, v280);
    v286 = vandq_s8(v271, v277);
    v287 = vandq_s8(v211, v280);
    v288 = v212;
    v289 = vandq_s8(v212, v277);
    v290 = vandq_s8(v220, v280);
    v291 = vandq_s8(v218, v277);
    v292 = v267;
    v293 = vaddq_f32(vandq_s8(v268, v280), vandq_s8(v257, v277));
    v280 = vaddq_f32(vandq_s8(v269, v279), vandq_s8(v267, v278));
    v277 = vaddq_f32(v293, v280);
    v281 = vpaddq_f32(vaddq_f32(vaddq_f32(v290, v291), vaddq_f32(vandq_s8(v270, v279), vandq_s8(v258, v278))), v277);
    v282 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v285, v286), vaddq_f32(vandq_s8(v265, v279), vandq_s8(v1690, v278))), vaddq_f32(vaddq_f32(v287, v289), vaddq_f32(vandq_s8(v1696, v279), vandq_s8(v1685, v278)))), v281);
    v35 = vmulq_n_f32(v282, ReciprocalTable[v283]);
  }

  v294 = v265;
  v295 = v257;
  v36 = v1721;
  if (!*(a1 + 134))
  {
    goto LABEL_77;
  }

  v277.i32[0] = v1721.i32[3];
  if (!*(a1 + 135))
  {
    v300 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v35, 3), v277), 0);
    goto LABEL_61;
  }

  if (v1721.f32[3] != 0.0 && v35.f32[3] != 0.0)
  {
    v296 = vsubq_f32(v35, v1721);
    v280.i32[0] = v296.i32[3];
    if (v296.f32[3] == 0.0)
    {
      v297 = v1690;
      v298 = v1696;
      v299 = v1685;
      if (*(a1 + 134) == 15)
      {
LABEL_58:
        v36 = 0uLL;
        goto LABEL_77;
      }

      v282.i64[0] = 0x3F0000003FLL;
      v282.i64[1] = 0x3F0000003FLL;
      v36 = vnegq_f32(v282);
    }

    else
    {
      v297 = v1690;
      v298 = v1696;
      v299 = v1685;
    }

    v282.i64[0] = 0;
    v390 = vdupq_lane_s32(*&vcgtq_f32(v282, v280), 0);
    v391 = vbslq_s8(v390, vnegq_f32(v296), v296);
    v392 = vbslq_s8(v390, v35, v36);
    v281.f32[0] = v392.f32[3] / v391.f32[3];
    v393 = vmlsq_lane_f32(v392, v391, *v281.f32, 0);
    v391.f32[0] = -v1655;
    v281.f32[0] = v1655 + 1.0;
    if ((vminvq_u32(vandq_s8(vcgtq_f32(v393, vdupq_lane_s32(*v391.f32, 0)), vcgtq_f32(vdupq_lane_s32(*v281.f32, 0), v393))) & 0x80000000) != 0)
    {
      v35 = vbslq_s8(v390, v36, v35);
      v434 = vmaxnmq_f32(v393, 0);
      _Q1 = v1728;
LABEL_76:
      v36 = vminnmq_f32(v434, _Q1);
      goto LABEL_77;
    }

    v394 = *(v92 + 16 * v99);
    v395 = vsubq_f32(v1715, v394);
    v396 = vdupq_lane_s32(*v394.f32, 0);
    v397 = vsubq_f32(v297, v396);
    v398 = vsubq_f32(v294, v396);
    v399 = vdupq_lane_s32(*v394.f32, 1);
    v400 = vsubq_f32(v299, v399);
    v401 = vsubq_f32(v211, v399);
    v402 = vsubq_f32(v298, v399);
    v403 = vdupq_laneq_s32(v394, 2);
    v404 = vsubq_f32(v258, v403);
    v405 = vsubq_f32(v220, v403);
    v406 = vsubq_f32(v1646, v403);
    v407 = vsubq_f32(v218, v403);
    v408 = vdupq_laneq_s32(v394, 3);
    v409 = vsubq_f32(v292, v408);
    v410 = vsubq_f32(v268, v408);
    v411 = vsubq_f32(v269, v408);
    v412 = vsubq_f32(v295, v408);
    v413 = *(a1 + 32);
    v414 = vmulq_n_f32(vsubq_f32(v271, v396), v395.f32[0]);
    v415 = vmulq_n_f32(v398, v395.f32[0]);
    v416 = vmulq_n_f32(vsubq_f32(v284, v396), v395.f32[0]);
    v417 = vmulq_n_f32(v397, v395.f32[0]);
    v418 = vmulq_lane_f32(vsubq_f32(v288, v399), *v395.f32, 1);
    v419 = vmulq_lane_f32(v402, *v395.f32, 1);
    v420 = vmulq_lane_f32(v401, *v395.f32, 1);
    v421 = vmulq_lane_f32(v400, *v395.f32, 1);
    v422 = vmulq_laneq_f32(v407, v395, 2);
    v423 = vmulq_laneq_f32(v406, v395, 2);
    v424 = vmulq_laneq_f32(v405, v395, 2);
    v425 = vmulq_laneq_f32(v404, v395, 2);
    v426 = vmulq_laneq_f32(v412, v395, 3);
    v427 = vmulq_laneq_f32(v411, v395, 3);
    v428 = vmulq_laneq_f32(v410, v395, 3);
    v429 = vmulq_laneq_f32(v409, v395, 3);
    if (v413)
    {
      v430 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v419, *v413, 1), v415, COERCE_FLOAT(*v413->f32)), v423, *v413->f32, 2), v427, *v413->f32, 3), v1668);
      v431 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v420, *v413, 1), v416, COERCE_FLOAT(*v413->f32)), v424, *v413->f32, 2), v428, *v413->f32, 3), v1668);
      v432 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v418, *v413, 1), v414, COERCE_FLOAT(*v413->f32)), v422, *v413->f32, 2), v426, *v413->f32, 3), v1668);
      v433 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v421, *v413, 1), v417, COERCE_FLOAT(*v413->f32)), v425, *v413->f32, 2), v429, *v413->f32, 3), v1668);
    }

    else
    {
      v431 = vaddq_f32(v428, vaddq_f32(v424, vaddq_f32(v416, v420)));
      v430 = vaddq_f32(v427, vaddq_f32(v423, vaddq_f32(v415, v419)));
      v432 = vaddq_f32(v426, vaddq_f32(v422, vaddq_f32(v414, v418)));
      v433 = vaddq_f32(v429, vaddq_f32(v425, vaddq_f32(v417, v421)));
    }

    v436 = vmaxnmq_f32(v431, v432);
    v437 = vmaxnmq_f32(v430, v433);
    v438 = vbslq_s8(vcgtq_f32(v432, v431), xmmword_298495610, xmmword_298495600);
    v439 = vmaxnmq_f32(v436, v437);
    v440 = vbslq_s8(vcgtq_f32(v437, v436), vbslq_s8(vcgtq_f32(v433, v430), xmmword_298495630, xmmword_298495620), v438);
    v438.i64[0] = vextq_s8(v439, v439, 8uLL).u64[0];
    v441 = vmaxnm_f32(*v439.i8, *v438.i8);
    v442 = vbsl_s8(vcgt_f32(*v438.i8, *v439.i8), *&vextq_s8(v440, v440, 8uLL), *v440.i8);
    if (vmvn_s8(vcge_f32(v441, vdup_lane_s32(v441, 1))).u8[0])
    {
      v443 = v442.i32[1];
    }

    else
    {
      v443 = v442.i32[0];
    }

    v444 = *(v92 + 16 * v443);
    v445 = *(v92 + 16 * v99);
    v445.i32[3] = 0;
    v446 = v444;
    v446.i32[3] = 0;
    v447 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v444, v394)), 3)), 0x1FuLL));
    v35 = vbslq_s8(v447, v444, v446);
    v36 = vbslq_s8(v447, v445, v394);
  }

LABEL_77:
  v1742 = 0u;
  v1741 = 0u;
  v1740 = 0u;
  v466 = *(a1 + 32);
  v1753 = v35;
  v1752 = v36;
  FindColorVectors(&v1752, v466, 1, 324, &v1743, &v1740);
  v467 = v1743;
  v468 = (v1743 >> 13) & 0xF;
  if (v468 > 5)
  {
    v478 = *(a1 + 32);
    if (v478)
    {
      v472 = v1740;
      v469 = v1741;
      v479 = vdupq_lane_s32(*v1740.i8, 0);
      v480 = vsubq_f32(*(a1 + 192), v479);
      v481 = vsubq_f32(*(a1 + 176), v479);
      v482 = vsubq_f32(*(a1 + 160), v479);
      v483 = vsubq_f32(*(a1 + 144), v479);
      v484 = vdupq_lane_s32(*v1740.i8, 1);
      v485 = vsubq_f32(*(a1 + 256), v484);
      v486 = vsubq_f32(*(a1 + 240), v484);
      v487 = vsubq_f32(*(a1 + 224), v484);
      v488 = vsubq_f32(*(a1 + 208), v484);
      v489 = vdupq_laneq_s32(v1740, 2);
      v490 = vsubq_f32(*(v8 + 48), v489);
      v491 = vsubq_f32(*(v8 + 32), v489);
      v492 = vsubq_f32(*(v8 + 16), v489);
      v493 = vsubq_f32(*v8, v489);
      v494 = vdupq_laneq_s32(v1740, 3);
      v495 = vsubq_f32(*(v8 + 112), v494);
      v496 = vsubq_f32(*(v8 + 96), v494);
      v497 = vsubq_f32(*(v8 + 80), v494);
      v498 = vsubq_f32(*(v8 + 64), v494);
      v499 = vmulq_f32(v1741, vandq_s8(vcgezq_s32(gNormalMasks[(v1743 >> 13) & 0xF]), *v478));
      v500 = vmulq_f32(v1741, v499);
      v501 = vaddv_f32(vadd_f32(*v500.i8, *&vextq_s8(v500, v500, 8uLL)));
      v502 = 0.0;
      v503 = v1728;
      if (fabsf(v501) >= 0.000015259)
      {
        v502 = vrecpes_f32(v501);
      }

      v470 = v1741.f32[3];
      v504 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v488, *v499.f32, 1), v483, v499.f32[0]), v493, v499, 2), v498, v499, 3), v502), v1728), 0);
      v505 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v487, *v499.f32, 1), v482, v499.f32[0]), v492, v499, 2), v497, v499, 3), v502), v1728), 0);
      v506 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v486, *v499.f32, 1), v481, v499.f32[0]), v491, v499, 2), v496, v499, 3), v502), v1728), 0);
      v507 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v485, *v499.f32, 1), v480, v499.f32[0]), v490, v499, 2), v495, v499, 3), v502), v1728), 0);
    }

    else
    {
      v472 = v1740;
      v469 = v1741;
      v514 = vdupq_lane_s32(*v1740.i8, 0);
      v515 = vsubq_f32(*(a1 + 192), v514);
      v516 = vsubq_f32(*(a1 + 176), v514);
      v517 = vsubq_f32(*(a1 + 160), v514);
      v518 = vsubq_f32(*(a1 + 144), v514);
      v519 = vdupq_lane_s32(*v1740.i8, 1);
      v520 = vsubq_f32(*(a1 + 208), v519);
      v521 = vsubq_f32(*(a1 + 224), v519);
      v522 = vsubq_f32(*(a1 + 240), v519);
      v523 = vsubq_f32(*(a1 + 256), v519);
      v524 = vdupq_laneq_s32(v1740, 2);
      v525 = vsubq_f32(*v8, v524);
      v526 = vsubq_f32(*(v8 + 16), v524);
      v527 = vsubq_f32(*(v8 + 32), v524);
      v528 = vsubq_f32(*(v8 + 48), v524);
      v529 = vdupq_laneq_s32(v1740, 3);
      v530 = vsubq_f32(*(v8 + 112), v529);
      v531 = vsubq_f32(*(v8 + 96), v529);
      v532 = vsubq_f32(*(v8 + 80), v529);
      v533 = vsubq_f32(*(v8 + 64), v529);
      v534 = vmulq_f32(v469, v469);
      *v534.i32 = vrecpes_f32(vaddv_f32(vadd_f32(*v534.i8, *&vextq_s8(v534, v534, 8uLL))));
      v503 = v1728;
      v504 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v520, *v1741.f32, 1), v518, v1741.f32[0]), v525, v1741, 2), v533, v1741, 3), *v534.i32), v1728), 0);
      v505 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v521, *v1741.f32, 1), v517, v1741.f32[0]), v526, v1741, 2), v532, v1741, 3), *v534.i32), v1728), 0);
      v506 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v522, *v1741.f32, 1), v516, v1741.f32[0]), v527, v1741, 2), v531, v1741, 3), *v534.i32), v1728), 0);
      v507 = vmaxnmq_f32(vminnmq_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v523, *v1741.f32, 1), v515, v1741.f32[0]), v528, v1741, 2), v530, v1741, 3), *v534.i32), v1728), 0);
      v470 = v1741.f32[3];
    }
  }

  else
  {
    v469 = v1741;
    v470 = v1741.f32[3];
    if (v468 > 3)
    {
      v508 = vmuls_lane_f32(v1741.f32[3], v1741, 3) + (v1741.f32[0] * v1741.f32[0]);
      v509 = fabsf(v508);
      v510 = vrecpes_f32(v508);
      if (v509 < 0.000015259)
      {
        v510 = 0.0;
      }

      v472 = v1740;
      v511 = vdupq_lane_s32(*v1740.i8, 0);
      v512 = vdupq_laneq_s32(v1740, 3);
      v474 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 112), v512), v1741, 3), vsubq_f32(*(v8 + 432), v511), v1741.f32[0]), v510);
      v475 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 96), v512), v1741, 3), vsubq_f32(*(v8 + 416), v511), v1741.f32[0]), v510);
      v476 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 80), v512), v1741, 3), vsubq_f32(*(v8 + 400), v511), v1741.f32[0]), v510);
      v477 = vmulq_n_f32(vmlaq_n_f32(vmulq_laneq_f32(vsubq_f32(*(v8 + 64), v512), v1741, 3), vsubq_f32(*(v8 + 384), v511), v1741.f32[0]), v510);
    }

    else
    {
      v471 = vrecpes_f32(v1741.f32[0]);
      if (fabsf(v1741.f32[0]) < 0.000015259)
      {
        v471 = 0.0;
      }

      v472 = v1740;
      v473 = vdupq_lane_s32(*v1740.i8, 0);
      v474 = vmulq_n_f32(vsubq_f32(*(v8 + 432), v473), v471);
      v475 = vmulq_n_f32(vsubq_f32(*(v8 + 416), v473), v471);
      v476 = vmulq_n_f32(vsubq_f32(*(v8 + 400), v473), v471);
      v477 = vmulq_n_f32(vsubq_f32(*(v8 + 384), v473), v471);
    }

    __asm { FMOV            V5.4S, #1.0 }

    v504 = vmaxnmq_f32(vminnmq_f32(v477, _Q5), 0);
    v505 = vmaxnmq_f32(vminnmq_f32(v476, _Q5), 0);
    v506 = vmaxnmq_f32(vminnmq_f32(v475, _Q5), 0);
    v507 = vmaxnmq_f32(vminnmq_f32(v474, _Q5), 0);
    v503 = v1728;
  }

  if (*(a1 + 134) >= 1)
  {
    v535 = 0.0;
    if (fabsf(v470) >= 0.0039062)
    {
      v535 = vrecpes_f32(v470);
    }

    v536 = vdupq_laneq_s32(v472, 3);
    v507 = vbslq_s8(vcltzq_s32(*(v8 + 496)), vmulq_n_f32(vsubq_f32(*(v8 + 112), v536), v535), v507);
    v506 = vbslq_s8(vcltzq_s32(*(v8 + 480)), vmulq_n_f32(vsubq_f32(*(v8 + 96), v536), v535), v506);
    v505 = vbslq_s8(vcltzq_s32(*(v8 + 464)), vmulq_n_f32(vsubq_f32(*(v8 + 80), v536), v535), v505);
    v504 = vbslq_s8(vcltzq_s32(*(v8 + 448)), vmulq_n_f32(vsubq_f32(*(v8 + 64), v536), v535), v504);
  }

  v1607 = v1742;
  v537 = v1743 >> 27;
  v538 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v506, 0), v503), v537);
  v539 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v505, 0), v503), v537);
  v540 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v504, 0), v503), v537);
  v541 = vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v507, 0), v503), v537);
  v542 = &ReciprocalTable[v537];
  v543 = vld1q_dup_f32(v542);
  v544 = a1;
  do
  {
    v545 = v544;
    v544 = *(v544 + 40);
  }

  while (v544);
  v546 = vrndxq_f32(v541);
  v1620 = v546;
  v1621 = vrndxq_f32(v538);
  v547 = *(a1 + 32);
  v1623 = vrndxq_f32(v540);
  v1625 = vrndxq_f32(v539);
  if (v547)
  {
    v503 = vmulq_f32(*v547, v1668);
  }

  v548 = vmulq_f32(v543, v1623);
  v549 = vmulq_f32(v543, v1625);
  v550 = vmulq_f32(v543, v1621);
  v551 = vmulq_f32(v543, v546);
  v552 = *(v545 + 132);
  if (v552 == 392)
  {
    v1705 = v507;
    v1711 = v506;
    v1718 = v505;
    v1724 = v504;
    v1729 = v503;
    v638 = 0;
    v543.i32[0] = 0;
    v1698 = v543;
    v639 = vzip1q_s32(v548, v548);
    v639.i32[2] = v548.i32[0];
    v640 = vzip2q_s32(vextq_s8(v548, v548, 0xCuLL), v548);
    v641 = vdupq_lane_s32(*v548.f32, 1);
    v642 = vextq_s8(v548, vdupq_laneq_s32(v548, 3), 8uLL);
    v1671 = v548;
    v641.i32[3] = v548.i32[2];
    v643 = vdupq_n_s32(0x3D800000u);
    v1753 = vmulq_f32(vmlaq_f32(vmulq_f32(v642, xmmword_298495A00), xmmword_298495A10, v640), v643);
    v1752 = vmulq_f32(vmlaq_f32(vmulq_f32(v641, xmmword_2984959F0), xmmword_298495A20, v639), v643);
    v644 = vzip2q_s32(vextq_s8(v549, v549, 0xCuLL), v549);
    v645 = vzip1q_s32(v549, v549);
    v645.i32[2] = v549.i32[0];
    v646 = vdupq_lane_s32(*v549.f32, 1);
    v646.i32[3] = v549.i32[2];
    v647 = vextq_s8(v549, vdupq_laneq_s32(v549, 3), 8uLL);
    v1755 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v642, xmmword_298495A40), xmmword_298495A50, v640), xmmword_298495A80, v644), xmmword_298495A90, v647), v643);
    v1754 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v641, xmmword_298495A30), xmmword_298495A60, v639), xmmword_298495A70, v645), xmmword_298495AA0, v646), v643);
    v1757 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v642, xmmword_298495AC0), xmmword_298495AD0, v640), xmmword_298495B00, v644), xmmword_298495B10, v647), v643);
    v1756 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v641, xmmword_298495AB0), xmmword_298495AE0, v639), xmmword_298495AF0, v645), xmmword_298495B20, v646), v643);
    v648 = vzip2q_s32(vextq_s8(v550, v550, 0xCuLL), v550);
    v649 = vextq_s8(v550, vdupq_laneq_s32(v550, 3), 8uLL);
    v650 = vmlaq_f32(vmulq_f32(v646, xmmword_298495B30), xmmword_298495B60, v645);
    v651 = vzip1q_s32(v550, v550);
    v651.i32[2] = v550.i32[0];
    v652 = vmlaq_f32(vmulq_f32(v646, xmmword_298495BA0), xmmword_298495B70, v645);
    v653 = vdupq_lane_s32(*v550.f32, 1);
    v653.i32[3] = v550.i32[2];
    v1759 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v647, xmmword_298495B40), xmmword_298495B50, v644), xmmword_298495B80, v648), xmmword_298495B90, v649), v643);
    v1758 = vmulq_f32(vmlaq_f32(vmlaq_f32(v650, xmmword_298495B70, v651), xmmword_298495BA0, v653), v643);
    v1761 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v647, xmmword_298495B90), xmmword_298495B80, v644), xmmword_298495B50, v648), xmmword_298495B40, v649), v643);
    v1760 = vmulq_f32(vmlaq_f32(vmlaq_f32(v652, xmmword_298495B60, v651), xmmword_298495B30, v653), v643);
    v654 = vzip1q_s32(v551, v551);
    v654.i32[2] = v551.i32[0];
    v655 = vmlaq_f32(vmlaq_f32(vmulq_f32(v653, xmmword_298495B20), xmmword_298495AF0, v651), xmmword_298495AE0, v654);
    v656 = vzip2q_s32(vextq_s8(v551, v551, 0xCuLL), v551);
    v657 = vmlaq_f32(vmulq_f32(v653, xmmword_298495AA0), xmmword_298495A70, v651);
    v658 = vdupq_lane_s32(*v551.f32, 1);
    v659 = vextq_s8(v551, vdupq_laneq_s32(v551, 3), 8uLL);
    v658.i32[3] = v551.i32[2];
    v1763 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v649, xmmword_298495B10), xmmword_298495B00, v648), xmmword_298495AD0, v656), xmmword_298495AC0, v659), v643);
    v1762 = vmulq_f32(vmlaq_f32(v655, xmmword_298495AB0, v658), v643);
    v1765 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v649, xmmword_298495A90), xmmword_298495A80, v648), xmmword_298495A50, v656), xmmword_298495A40, v659), v643);
    v1764 = vmulq_f32(vmlaq_f32(vmlaq_f32(v657, xmmword_298495A60, v654), xmmword_298495A30, v658), v643);
    v660 = vmulq_f32(vmlaq_f32(vmulq_f32(v658, xmmword_2984959F0), xmmword_298495A20, v654), v643);
    v1767 = vmulq_f32(vmlaq_f32(vmulq_f32(v659, xmmword_298495A00), xmmword_298495A10, v656), v643);
    v1766 = v660;
    v661 = vdupq_lane_s32(*v472.i8, 0);
    v662 = vdupq_lane_s32(*v469.f32, 0);
    v663 = vdupq_lane_s32(*v472.i8, 1);
    v664 = vdupq_lane_s32(*v469.f32, 1);
    v665 = vdupq_laneq_s32(v472, 2);
    v666 = vdupq_laneq_s32(v469, 2);
    v667 = vdupq_laneq_s32(v472, 3);
    v668 = vdupq_laneq_s32(v469, 3);
    v546 = 0uLL;
    v660.i32[0] = *(a1 + 135);
    v669 = vdupq_lane_s8(*&vceqq_s8(v660, v1698), 0);
    v670 = 0uLL;
    v671 = 0uLL;
    v672 = 0uLL;
    v673 = 0uLL;
    v674 = 0uLL;
    v675 = 0uLL;
    v676 = 0uLL;
    do
    {
      v677 = *(&v1752 + v638);
      v678 = *(&v1752 + v638 + 16);
      v679 = vsubq_f32(vmlaq_f32(v665, v677, v666), *(v545 + v638 + 656));
      v680 = *(v545 + v638 + 912);
      v681 = *(v545 + v638 + 928);
      v682 = vbslq_s8(v669, v679, vmulq_f32(v679, v680));
      v683 = vsubq_f32(vmlaq_f32(v665, v678, v666), *(v545 + v638 + 672));
      v684 = vbslq_s8(v669, v683, vmulq_f32(v683, v681));
      v685 = vsubq_f32(vmlaq_f32(v663, v677, v664), *(v545 + v638 + 400));
      v686 = vbslq_s8(v669, v685, vmulq_f32(v685, v680));
      v687 = vsubq_f32(vmlaq_f32(v663, v678, v664), *(v545 + v638 + 416));
      v688 = vbslq_s8(v669, v687, vmulq_f32(v687, v681));
      v689 = vsubq_f32(vmlaq_f32(v661, v677, v662), *(v545 + v638 + 144));
      v690 = vbslq_s8(v669, v689, vmulq_f32(v689, v680));
      v691 = vsubq_f32(vmlaq_f32(v661, v678, v662), *(v545 + v638 + 160));
      v692 = vbslq_s8(v669, v691, vmulq_f32(v691, v681));
      v693 = vsubq_f32(vmlaq_f32(v667, v677, v668), v680);
      v694 = vsubq_f32(vmlaq_f32(v667, v678, v668), v681);
      v676 = vmlaq_f32(v676, v692, v692);
      v675 = vmlaq_f32(v675, v690, v690);
      v674 = vmlaq_f32(v674, v688, v688);
      v673 = vmlaq_f32(v673, v686, v686);
      v672 = vmlaq_f32(v672, v684, v684);
      v671 = vmlaq_f32(v671, v682, v682);
      v670 = vmlaq_f32(v670, v694, v694);
      v546 = vmlaq_f32(v546, v693, v693);
      v638 += 32;
    }

    while (v638 != 256);
    if (a4)
    {
      v682.i32[0] = 0;
      v693.i32[0] = *(a1 + 135);
      v695 = vdupq_lane_s8(*&vceqq_s8(v693, v682), 0);
      v696 = vsubq_f32(vmlaq_laneq_f32(v665, v549, v469, 2), *(v8 + 16));
      v698 = *(v8 + 64);
      v697 = *(v8 + 80);
      v1699 = vbslq_s8(v695, v696, vmulq_f32(v696, v697));
      v699 = vsubq_f32(vmlaq_laneq_f32(v665, v1671, v469, 2), *v8);
      v1692 = vbslq_s8(v695, v699, vmulq_f32(v699, v698));
      v700 = vsubq_f32(vmlaq_laneq_f32(v665, v550, v469, 2), *(v8 + 32));
      v701 = *(v8 + 96);
      v702 = *(v8 + 112);
      v703 = vbslq_s8(v695, v700, vmulq_f32(v700, v701));
      v704 = vsubq_f32(vmlaq_laneq_f32(v665, v551, v469, 2), *(v8 + 48));
      v705 = vbslq_s8(v695, v704, vmulq_f32(v704, v702));
      v706 = vsubq_f32(vmlaq_lane_f32(v663, v549, *v469.f32, 1), *(a1 + 224));
      v707 = vbslq_s8(v695, v706, vmulq_f32(v706, v697));
      v708 = vsubq_f32(vmlaq_lane_f32(v663, v1671, *v469.f32, 1), *(a1 + 208));
      v709 = vbslq_s8(v695, v708, vmulq_f32(v708, v698));
      v710 = vsubq_f32(vmlaq_lane_f32(v663, v550, *v469.f32, 1), *(a1 + 240));
      v711 = vbslq_s8(v695, v710, vmulq_f32(v710, v701));
      v712 = vsubq_f32(vmlaq_lane_f32(v663, v551, *v469.f32, 1), *(a1 + 256));
      v713 = vbslq_s8(v695, v712, vmulq_f32(v712, v702));
      v714 = vsubq_f32(vmlaq_n_f32(v661, v551, v469.f32[0]), *(a1 + 192));
      v715 = vbslq_s8(v695, v714, vmulq_f32(v714, v702));
      v716 = vsubq_f32(vmlaq_n_f32(v661, v550, v469.f32[0]), *(a1 + 176));
      v717 = vbslq_s8(v695, v716, vmulq_f32(v716, v701));
      v718 = vsubq_f32(vmlaq_n_f32(v661, v1671, v469.f32[0]), *(a1 + 144));
      v719 = vbslq_s8(v695, v718, vmulq_f32(v718, v698));
      v720 = vsubq_f32(vmlaq_n_f32(v661, v549, v469.f32[0]), *(a1 + 160));
      v721 = vbslq_s8(v695, v720, vmulq_f32(v720, v697));
      v722 = vmlaq_laneq_f32(v667, v549, v469, 3);
      v723 = vmlaq_laneq_f32(v667, v1671, v469, 3);
      v724 = vmlaq_laneq_f32(v667, v550, v469, 3);
      v725 = vsubq_f32(vmlaq_laneq_f32(v667, v551, v469, 3), v702);
      v726 = vsubq_f32(v724, v701);
      v727 = vsubq_f32(v723, v698);
      v728 = vsubq_f32(v722, v697);
      a4[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v709, v709), *v1729.f32, 1), vmulq_f32(v719, v719), v1729.f32[0]), vmulq_f32(v1692, v1692), v1729, 2), vmulq_f32(v727, v727), v1729, 3);
      a4[5] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v707, v707), *v1729.f32, 1), vmulq_f32(v721, v721), v1729.f32[0]), vmulq_f32(v1699, v1699), v1729, 2), vmulq_f32(v728, v728), v1729, 3);
      a4[6] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v711, v711), *v1729.f32, 1), vmulq_f32(v717, v717), v1729.f32[0]), vmulq_f32(v703, v703), v1729, 2), vmulq_f32(v726, v726), v1729, 3);
      a4[7] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v713, v713), *v1729.f32, 1), vmulq_f32(v715, v715), v1729.f32[0]), vmulq_f32(v705, v705), v1729, 2), vmulq_f32(v725, v725), v1729, 3);
    }

    v627 = vpaddq_f32(vpaddq_f32(vaddq_f32(v675, v676), vaddq_f32(v673, v674)), vpaddq_f32(vaddq_f32(v671, v672), vaddq_f32(v546, v670)));
    v729 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v673, *v1729.f32, 1), v675, v1729.f32[0]), v671, v1729, 2), v546, v1729, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v674, *v1729.f32, 1), v676, v1729.f32[0]), v672, v1729, 2), v670, v1729, 3));
    v729.i64[0] = vpaddq_f32(v729, v729).u64[0];
    *v546.f32 = vpadd_f32(*v729.f32, *v729.f32);
    v505 = v1718;
    v504 = v1724;
    v507 = v1705;
    v506 = v1711;
    if (!a4)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  if (v552 == 324)
  {
    v543.i32[0] = 0;
    v553 = vdupq_lane_s32(*v472.i8, 0);
    v554 = vmlaq_n_f32(v553, v549, v469.f32[0]);
    v555 = vmlaq_n_f32(v553, v548, v469.f32[0]);
    v556 = vmlaq_n_f32(v553, v550, v469.f32[0]);
    v557 = vmlaq_n_f32(v553, v551, v469.f32[0]);
    v558 = vdupq_lane_s32(*v472.i8, 1);
    v559 = vmlaq_lane_f32(v558, v551, *v469.f32, 1);
    v560 = vmlaq_lane_f32(v558, v550, *v469.f32, 1);
    v561 = vmlaq_lane_f32(v558, v548, *v469.f32, 1);
    v562 = vmlaq_lane_f32(v558, v549, *v469.f32, 1);
    v563 = vdupq_laneq_s32(v472, 2);
    v564 = vmlaq_laneq_f32(v563, v551, v469, 2);
    v565 = vmlaq_laneq_f32(v563, v550, v469, 2);
    v566 = vmlaq_laneq_f32(v563, v548, v469, 2);
    v567 = vmlaq_laneq_f32(v563, v549, v469, 2);
    v568 = vdupq_laneq_s32(v472, 3);
    v569 = vmlaq_laneq_f32(v568, v551, v469, 3);
    v570 = vmlaq_laneq_f32(v568, v550, v469, 3);
    v571 = vmlaq_laneq_f32(v568, v548, v469, 3);
    v572 = vmlaq_laneq_f32(v568, v549, v469, 3);
    v573 = vsubq_f32(v557, *(a1 + 192));
    v574 = vsubq_f32(v556, *(a1 + 176));
    v575 = vsubq_f32(v555, *(a1 + 144));
    v576 = vsubq_f32(v554, *(a1 + 160));
    v577 = vsubq_f32(v562, *(a1 + 224));
    v578 = vsubq_f32(v561, *(a1 + 208));
    v579 = vsubq_f32(v560, *(a1 + 240));
    v580 = vsubq_f32(v559, *(a1 + 256));
    v581 = vsubq_f32(v567, *(v8 + 16));
    v582 = vsubq_f32(v566, *v8);
    v583 = vsubq_f32(v565, *(v8 + 32));
    v584 = vsubq_f32(v564, *(v8 + 48));
    v586 = *(v8 + 96);
    v585 = *(v8 + 112);
    v587 = *(v8 + 64);
    v588 = *(v8 + 80);
    v589 = vsubq_f32(v572, v588);
    v590 = vsubq_f32(v571, v587);
    v591 = vsubq_f32(v570, v586);
    v592 = vsubq_f32(v569, v585);
    v571.i8[0] = *(a1 + 135);
    v593 = vdupq_lane_s8(*&vceqq_s8(v571, v543), 0);
    v594 = vbslq_s8(v593, v584, vmulq_f32(v584, v585));
    v595 = vbslq_s8(v593, v583, vmulq_f32(v583, v586));
    v596 = vbslq_s8(v593, v582, vmulq_f32(v582, v587));
    v597 = vbslq_s8(v593, v581, vmulq_f32(v581, v588));
    v598 = vbslq_s8(v593, v580, vmulq_f32(v580, v585));
    v599 = vbslq_s8(v593, v579, vmulq_f32(v579, v586));
    v600 = vbslq_s8(v593, v578, vmulq_f32(v578, v587));
    v601 = vbslq_s8(v593, v577, vmulq_f32(v577, v588));
    v602 = vbslq_s8(v593, v576, vmulq_f32(v576, v588));
    v603 = vbslq_s8(v593, v575, vmulq_f32(v575, v587));
    v604 = vbslq_s8(v593, v574, vmulq_f32(v574, v586));
    v605 = vbslq_s8(v593, v573, vmulq_f32(v573, v585));
    v606 = vmulq_f32(v605, v605);
    v607 = vmulq_f32(v604, v604);
    v608 = vmulq_f32(v603, v603);
    v609 = vmulq_f32(v602, v602);
    v610 = vmulq_f32(v601, v601);
    v611 = vmulq_f32(v600, v600);
    v612 = vmulq_f32(v599, v599);
    v613 = vmulq_f32(v598, v598);
    v614 = vmulq_f32(v597, v597);
    v615 = vmulq_f32(v596, v596);
    v616 = vmulq_f32(v595, v595);
    v617 = vmulq_f32(v594, v594);
    v618 = vmulq_f32(v592, v592);
    v619 = vmulq_f32(v591, v591);
    v620 = vmulq_f32(v590, v590);
    v621 = vmulq_f32(v589, v589);
    v622 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v610, *v503.f32, 1), v609, v503.f32[0]), v614, v503, 2), v621, v503, 3);
    v623 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v611, *v503.f32, 1), v608, v503.f32[0]), v615, v503, 2), v620, v503, 3);
    v624 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v612, *v503.f32, 1), v607, v503.f32[0]), v616, v503, 2), v619, v503, 3);
    v625 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v613, *v503.f32, 1), v606, v503.f32[0]), v617, v503, 2), v618, v503, 3);
    if (a4)
    {
      a4[4] = v623;
      a4[5] = v622;
      a4[6] = v624;
      a4[7] = v625;
    }

    v626 = vaddq_f32(v609, v606);
    v546 = vaddq_f32(v615, v616);
    v627 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v608, v607), v626), vaddq_f32(vaddq_f32(v611, v612), vaddq_f32(v610, v613))), vpaddq_f32(vaddq_f32(v546, vaddq_f32(v614, v617)), vaddq_f32(vaddq_f32(v620, v619), vaddq_f32(v621, v618))));
    v628 = vaddq_f32(vaddq_f32(v623, v624), vaddq_f32(v622, v625));
    v628.i64[0] = vpaddq_f32(v628, v628).u64[0];
    *v546.f32 = vpadd_f32(*v628.f32, *v628.f32);
    if (!a4)
    {
      goto LABEL_105;
    }

    goto LABEL_104;
  }

  v627 = 0uLL;
  v546.i32[0] = 2139095040;
  if (a4)
  {
LABEL_104:
    a4[8].i32[0] = v546.i32[0];
    *a4 = v504;
    a4[1] = v505;
    a4[2] = v506;
    a4[3] = v507;
  }

LABEL_105:
  v629 = 0;
  if ((v467 & 0x18000) == 0 || v546.f32[0] <= v5[1])
  {
    v1590 = 0u;
    v637 = 0uLL;
    goto LABEL_225;
  }

  v1590 = 0u;
  v1589 = a2;
  v1599 = v467;
  if (*(a1 + 40))
  {
    v630 = vextq_s8(vrev64q_s32(v627), v627, 8uLL);
    v631 = vmaxnmq_f32(v627, v630);
    v632 = vminnmq_f32(v627, v630);
    v633 = vminnmq_f32(v632, vrev64q_s32(v632));
    v633.f32[0] = 0.25 * vmlaq_f32(vmaxnmq_f32(v631, vrev64q_s32(v631)), v1668, v633).f32[0];
    v634 = vandq_s8(vcgtq_f32(v627, vdupq_lane_s32(*v633.f32, 0)), xmmword_298495670);
    v635 = vaddvq_s32(v634);
    if (*(a1 + 136))
    {
      v636 = v635;
    }

    else
    {
      v636 = v635 | 8;
    }
  }

  else
  {
    v730 = vmaxnmq_f32(v627, vextq_s8(v627, v627, 8uLL));
    v634 = vandq_s8(vceqq_f32(vmaxnmq_f32(v730, vrev64q_s32(v730)), v627), xmmword_298495670);
    v634.i8[0] = vaddvq_s32(v634);
    if ((v634.i8[0] & 8) != 0)
    {
      v636 = 8;
    }

    else
    {
      v636 = v634.u8[0];
    }
  }

  v507.i32[0] = 0;
  v634.i32[0] = 0;
  v1592 = v634;
  v634.i32[0] = 0;
  v1605 = v634;
  v1598 = 0;
  v731 = a1 + 144;
  v1604 = vdupq_lane_s32(*v1715.f32, 0);
  v1656 = a1 + 400;
  v732 = 1;
  v733 = &xmmword_298496000;
  v1601 = vdupq_laneq_s32(v1715, 2);
  v1602 = vdupq_lane_s32(*v1715.f32, 1);
  v1600 = vdupq_laneq_s32(v1715, 3);
  v734.i64[0] = 0x3F0000003FLL;
  v734.i64[1] = 0x3F0000003FLL;
  v1588 = vnegq_f32(v734);
  v1596 = 0u;
  v1597 = 0u;
  v1594 = 0u;
  v1595 = 0u;
  v1606 = v636;
  v1593 = v507;
  v1603 = v5;
  while (v546.f32[0] >= v5[1])
  {
    if ((v732 & v636) == 0)
    {
      goto LABEL_222;
    }

    v1719 = v546;
    v735 = vdupq_n_s32(0x3A88642Au);
    if (*(a1 + 124) <= *(v733 + 335))
    {
      v1663 = v735;
      v764 = v733;
      v765 = a4;
      if (*(a1 + 136))
      {
        v766 = 0;
      }

      else
      {
        v766 = -1;
      }

      if (*(a1 + 136))
      {
        v767 = 6;
      }

      else
      {
        v767 = 8;
      }

      WeightInfoForSingleLineDualWeight_4x4(2, v767);
      v768 = __clz(v732);
      v769 = v768 ^ 0x1F;
      v1731 = FindDualWeights_6x5_kVectorMask[v769];
      v770 = (v731 + (v769 << 6));
      v772 = *v770;
      v771 = v770[1];
      v774 = v770[2];
      v773 = v770[3];
      v1738 = v1715;
      v775 = *(a1 + 144);
      v776 = vsubq_f32(v775, v1604);
      v1700 = *(a1 + 160);
      v1706 = *(a1 + 192);
      v777 = vsubq_f32(v1700, v1604);
      v1712 = *(a1 + 176);
      v778 = vsubq_f32(v1712, v1604);
      v779 = vsubq_f32(v1706, v1604);
      v780 = (&v1738 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v768 ^ 0x1F) & 3)));
      v782 = *(a1 + 208);
      v781 = *(a1 + 224);
      v783 = vsubq_f32(v782, v1602);
      v784 = vsubq_f32(v781, v1602);
      v1658 = *(a1 + 240);
      v785 = vsubq_f32(v1658, v1602);
      v1693 = *(a1 + 256);
      v786 = vsubq_f32(v1693, v1602);
      v1676 = *(v8 + 16);
      v787 = vsubq_f32(v1676, v1601);
      v1651 = *(v8 + 32);
      v788 = vsubq_f32(v1651, v1601);
      v1687 = *(v8 + 48);
      v789 = vsubq_f32(v1687, v1601);
      v790 = vld1q_dup_f32(v780);
      v791 = vsubq_f32(v773, v790);
      v792 = vsubq_f32(v774, v790);
      v793 = vsubq_f32(v771, v790);
      v794 = vsubq_f32(v772, v790);
      v795 = *(a1 + 32);
      v796 = vmulq_f32(v779, v779);
      v797 = vmulq_f32(v778, v778);
      v798 = vmulq_f32(v777, v777);
      v799 = vmulq_f32(v776, v776);
      v800 = vmulq_f32(v786, v786);
      v801 = vmulq_f32(v785, v785);
      v802 = vmulq_f32(v784, v784);
      v803 = vmulq_f32(v783, v783);
      v804 = vmulq_f32(v789, v789);
      v805 = vmulq_f32(v788, v788);
      v806 = vmulq_f32(v787, v787);
      v1672 = *v8;
      v807 = vsubq_f32(*v8, v1601);
      v808 = vmulq_f32(v807, v807);
      v809 = *(v8 + 96);
      v810 = *(v8 + 112);
      v811 = vsubq_f32(v810, v1600);
      v812 = vmulq_f32(v811, v811);
      v813 = vsubq_f32(v809, v1600);
      v814 = vmulq_f32(v813, v813);
      v815 = *(v8 + 64);
      v816 = *(v8 + 80);
      v817 = vsubq_f32(v816, v1600);
      v818 = vmulq_f32(v817, v817);
      v819 = vsubq_f32(v815, v1600);
      v820 = vmulq_f32(v819, v819);
      if (v795)
      {
        v821 = (&v1737 & 0xFFFFFFFFFFFFFFF3 | (4 * ((v768 ^ 0x1F) & 3)));
        v822 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v800, *v795, 1), v796, COERCE_FLOAT(*v795->f32)), v804, *v795->f32, 2), v812, *v795->f32, 3), v1668);
        v823 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v801, *v795, 1), v797, COERCE_FLOAT(*v795->f32)), v805, *v795->f32, 2), v814, *v795->f32, 3), v1668);
        v824 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v803, *v795, 1), v799, COERCE_FLOAT(*v795->f32)), v808, *v795->f32, 2), v820, *v795->f32, 3), v1668);
        v825 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v802, *v795, 1), v798, COERCE_FLOAT(*v795->f32)), v806, *v795->f32, 2), v818, *v795->f32, 3), v1668);
        v1737 = *v795->f32;
        v826 = vld1q_dup_f32(v821);
        v827 = vnegq_f32(v826);
        v828 = vmlaq_f32(v825, v793, vmulq_f32(v793, v827));
        v829 = vmlaq_f32(v824, v794, vmulq_f32(v794, v827));
        v830 = vmlaq_f32(v823, v792, vmulq_f32(v792, v827));
        v831 = vmlaq_f32(v822, v791, vmulq_f32(v791, v827));
      }

      else
      {
        v832 = vaddq_f32(vaddq_f32(vaddq_f32(v797, v801), v805), v814);
        v829 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v799, v803), v808), v820), v794, v794);
        v828 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v798, v802), v806), v818), v793, v793);
        v830 = vmlsq_f32(v832, v792, v792);
        v831 = vmlsq_f32(vaddq_f32(vaddq_f32(vaddq_f32(v796, v800), v804), v812), v791, v791);
      }

      v833 = v829;
      v834 = v828;
      v835 = v830;
      v836 = v831;
      if (*(a1 + 135))
      {
        v837.i64[0] = 0x7F0000007FLL;
        v837.i64[1] = 0x7F0000007FLL;
        v835 = vbslq_s8(vcltzq_s32(*(v8 + 480)), v837, v830);
        v834 = vbslq_s8(vcltzq_s32(*(v8 + 464)), v837, v828);
        v833 = vbslq_s8(vcltzq_s32(*(v8 + 448)), v837, v829);
        v836 = vbslq_s8(vcltzq_s32(*(v8 + 496)), v837, v831);
      }

      v1617 = v828;
      v1619 = v829;
      v1614 = v831;
      v838 = vmaxnmq_f32(v833, v835);
      v839 = vmaxnmq_f32(v834, v836);
      v840 = vbslq_s8(vcgtq_f32(v835, v833), xmmword_298495610, xmmword_298495600);
      v841 = vbslq_s8(vcgtq_f32(v836, v834), xmmword_298495630, xmmword_298495620);
      v842 = vmaxnmq_f32(v838, v839);
      v843 = vbslq_s8(vcgtq_f32(v839, v838), v841, v840);
      v841.i64[0] = vextq_s8(v842, v842, 8uLL).u64[0];
      v844 = vmaxnm_f32(*v842.i8, *v841.i8);
      v845 = vbsl_s8(vcgt_f32(*v841.i8, *v842.i8), *&vextq_s8(v843, v843, 8uLL), *v843.i8);
      if (vmvn_s8(vcge_f32(v844, vdup_lane_s32(v844, 1))).u8[0])
      {
        v846 = v845.i32[1];
      }

      else
      {
        v846 = v845.i32[0];
      }

      v847 = *(v1656 + 16 * v846);
      v1682 = vcltzq_s32(v1731);
      v848 = vbicq_s8(vsubq_f32(v1715, v847), v1682);
      v1612 = v830;
      if (v795)
      {
        v849 = vmulq_f32(*v795->f32, v848);
      }

      else
      {
        v849 = vmulq_f32(v848, vdupq_n_s32(0x3EAAAAABu));
      }

      v848.i32[0] = *(a1 + 135);
      v850 = vdupq_lane_s8(*&vceqq_s8(v848, v1605), 0);
      v851 = vdupq_lane_s32(*v847.f32, 0);
      v852 = vdupq_lane_s32(*v847.f32, 1);
      v853 = vdupq_laneq_s32(v847, 2);
      v854 = vdupq_laneq_s32(v847, 3);
      v855 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v781, v852), *v849.f32, 1), vsubq_f32(v1700, v851), v849.f32[0]), vsubq_f32(v1676, v853), v849, 2), vsubq_f32(v816, v854), v849, 3);
      v856 = *(v8 + 448);
      v1640 = *(v8 + 464);
      v857 = vcltzq_s32(v1640);
      v858.i64[0] = 0x7F0000007FLL;
      v858.i64[1] = 0x7F0000007FLL;
      v859 = vbslq_s8(v850, v855, vbslq_s8(v857, v858, v855));
      v860 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1693, v852), *v849.f32, 1), vsubq_f32(v1706, v851), v849.f32[0]), vsubq_f32(v1687, v853), v849, 2), vsubq_f32(v810, v854), v849, 3);
      v862 = *(v8 + 480);
      v861 = *(v8 + 496);
      v863 = vcltzq_s32(v861);
      v864 = vbslq_s8(v850, v860, vbslq_s8(v863, v858, v860));
      v865 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v782, v852), *v849.f32, 1), vsubq_f32(v775, v851), v849.f32[0]), vsubq_f32(v1672, v853), v849, 2), vsubq_f32(v815, v854), v849, 3);
      v866 = vcltzq_s32(v856);
      v867 = vbslq_s8(v850, v865, vbslq_s8(v866, v858, v865));
      v868 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1658, v852), *v849.f32, 1), vsubq_f32(v1712, v851), v849.f32[0]), vsubq_f32(v1651, v853), v849, 2), vsubq_f32(v809, v854), v849, 3);
      v869 = vcltzq_s32(v862);
      v870 = vbslq_s8(v850, v868, vbslq_s8(v869, v858, v868));
      v871 = vmaxnmq_f32(v859, v864);
      v872 = vcgtq_f32(v864, v859);
      v873 = vmaxnmq_f32(v867, v870);
      v874 = vbslq_s8(vcgtq_f32(v870, v867), xmmword_298495610, xmmword_298495600);
      v876 = vmaxnmq_f32(v873, v871);
      v875 = vbslq_s8(vcgtq_f32(v871, v873), vbslq_s8(v872, xmmword_298495630, xmmword_298495620), v874);
      v873.i64[0] = vextq_s8(v876, v876, 8uLL).u64[0];
      *v874.i8 = vmaxnm_f32(*v876.f32, *v873.f32);
      *v873.f32 = vcgt_f32(*v873.f32, *v876.f32);
      *v876.f32 = vdup_lane_s32(*v874.i8, 1);
      v877 = vbsl_s8(*v873.f32, *&vextq_s8(v875, v875, 8uLL), *v875.i8);
      if (vmvn_s8(vcge_f32(*v874.i8, *v876.f32)).u8[0])
      {
        v878 = v877.i32[1];
      }

      else
      {
        v878 = v877.i32[0];
      }

      v879 = *(v1656 + 16 * v878);
      if (v732 == 8 || !*(a1 + 135))
      {
        v881 = v772;
        v882 = v771;
        v883 = v774;
        v884 = v773;
      }

      else
      {
        v876.i64[0] = 0x7F0000007FLL;
        v876.i64[1] = 0x7F0000007FLL;
        v880 = vnegq_f32(v876);
        v881 = vbslq_s8(v866, v880, v772);
        v772 = vbslq_s8(v866, v876, v772);
        v882 = vbslq_s8(v857, v880, v771);
        v771 = vbslq_s8(v857, v876, v771);
        v883 = vbslq_s8(v869, v880, v774);
        v774 = vbslq_s8(v869, v876, v774);
        v884 = vbslq_s8(v863, v880, v773);
        v773 = vbslq_s8(v863, v876, v773);
      }

      v876.i32[0] = 0;
      v885 = vminnmq_f32(v881, v883);
      v886 = vmaxnmq_f32(vmaxnmq_f32(v772, v774), vmaxnmq_f32(v771, v773));
      v887 = vminnmq_f32(v885, vminnmq_f32(v882, v884));
      v888 = vmaxnmq_f32(v886, vextq_s8(v886, v886, 8uLL));
      v889 = vminnmq_f32(v887, vextq_s8(v887, v887, 8uLL));
      v890 = vmaxnmq_f32(v888, vrev64q_s32(v888));
      v891 = vminnmq_f32(v889, vrev64q_s32(v889));
      v892 = vcgtq_f32(v847, v879);
      if (v768 == 30)
      {
        v893 = v892.i32[0];
      }

      else
      {
        v893 = v892.i32[1];
      }

      v892.i32[0] = v893;
      v894 = vdupq_lane_s32(*&vceqq_s32(v892, v876), 0);
      v895 = vbslq_s8(v894, v890, v891);
      v896 = vbslq_s8(v894, v891, v890);
      v897 = vcltzq_s32(vshlq_n_s32(v1682, 0x1FuLL));
      v1613 = v896;
      v898 = vbslq_s8(v897, v896, v847);
      v899 = vbslq_s8(v897, v895, v879);
      v1634 = vdupq_lane_s32(*v898.i8, 0);
      v900 = vsubq_f32(v1706, v1634);
      v901 = vsubq_f32(v1712, v1634);
      v902 = vsubq_f32(v1700, v1634);
      v903 = vsubq_f32(v775, v1634);
      v904 = vdupq_lane_s32(*v898.i8, 1);
      v905 = v898;
      v906 = vsubq_f32(v782, v904);
      v907 = vsubq_f32(v781, v904);
      v908 = v904;
      v1631 = v904;
      v909 = vmlaq_f32(vmulq_f32(v906, v906), v903, v903);
      v910 = vsubq_f32(v1658, v908);
      v911 = vmlaq_f32(vmulq_f32(v907, v907), v902, v902);
      v912 = vsubq_f32(v1693, v908);
      v913 = vmlaq_f32(vmulq_f32(v910, v910), v901, v901);
      v914 = v905;
      v1732 = v905;
      v1627 = vdupq_laneq_s32(v905, 2);
      v915 = vmlaq_f32(vmulq_f32(v912, v912), v900, v900);
      v916 = vsubq_f32(v1687, v1627);
      v917 = vmlaq_f32(v915, v916, v916);
      v918 = vsubq_f32(v1651, v1627);
      v919 = vmlaq_f32(v913, v918, v918);
      v920 = vsubq_f32(v1676, v1627);
      v921 = vmlaq_f32(v911, v920, v920);
      v922 = vsubq_f32(v1672, v1627);
      v923 = vmlaq_f32(v909, v922, v922);
      v1637 = vdupq_laneq_s32(v914, 3);
      v924 = vsubq_f32(v815, v1637);
      v925 = vmlaq_f32(v923, v924, v924);
      v926 = vsubq_f32(v816, v1637);
      v927 = vmlaq_f32(v921, v926, v926);
      v928 = vsubq_f32(v809, v1637);
      v929 = vmlaq_f32(v919, v928, v928);
      v930 = vsubq_f32(v810, v1637);
      v931 = vmlaq_f32(v917, v930, v930);
      v932 = v899;
      v933 = vdupq_lane_s32(*v899.i8, 0);
      v934 = vdupq_lane_s32(*v899.i8, 1);
      v935 = v932;
      v936 = vsubq_f32(v775, v933);
      v937 = vsubq_f32(v782, v934);
      v938 = vmlaq_f32(vmulq_f32(v937, v937), v936, v936);
      v939 = vsubq_f32(v1700, v933);
      v940 = vsubq_f32(v781, v934);
      v941 = vmlaq_f32(vmulq_f32(v940, v940), v939, v939);
      v942 = vsubq_f32(v1706, v933);
      v1643 = v933;
      v943 = vsubq_f32(v1712, v933);
      v944 = vsubq_f32(v1658, v934);
      v1659 = v934;
      v945 = vsubq_f32(v1693, v934);
      v946 = vmlaq_f32(vmulq_f32(v944, v944), v943, v943);
      v1726 = v935;
      v947 = vdupq_laneq_s32(v935, 2);
      v948 = vsubq_f32(v1672, v947);
      v949 = vsubq_f32(v1676, v947);
      v950 = vsubq_f32(v1651, v947);
      v1647 = v947;
      v951 = vsubq_f32(v1687, v947);
      v952 = vmlaq_f32(vmulq_f32(v945, v945), v942, v942);
      v953 = vdupq_laneq_s32(v935, 3);
      v954 = vsubq_f32(v810, v953);
      v955 = vsubq_f32(v809, v953);
      v956 = vsubq_f32(v816, v953);
      v1652 = v953;
      v957 = vsubq_f32(v815, v953);
      v958 = WeightInfoForSingleLineDualWeight_4x4(-vaddvq_s8(vorrq_s8(vuzp1q_s8(vuzp1q_s16(v856, v1640), vuzp1q_s16(v862, v861)), vuzp1q_s8(vuzp1q_s16(vcgtq_f32(v1663, vminnmq_f32(v925, vmlaq_f32(vmlaq_f32(v938, v948, v948), v957, v957))), vcgtq_f32(v1663, vminnmq_f32(v927, vmlaq_f32(vmlaq_f32(v941, v949, v949), v956, v956)))), vuzp1q_s16(vcgtq_f32(v1663, vminnmq_f32(v929, vmlaq_f32(vmlaq_f32(v946, v950, v950), v955, v955))), vcgtq_f32(v1663, vminnmq_f32(v931, vmlaq_f32(vmlaq_f32(v952, v951, v951), v954, v954))))))), v767);
      v1739 = v958;
      v959 = ReciprocalTable[v958 >> 27];
      *v960.i32 = v959 * (vcvts_n_f32_u32(v766 + (v767 >> 1), 2uLL) * v959);
      v961 = vsubq_f32(v935, v1732);
      v962.i64[0] = 0x8000000080000000;
      v962.i64[1] = 0x8000000080000000;
      v1610 = vdupq_n_s32(0x3B808081u);
      v963 = vbslq_s8(vcgtq_f32(v1610, vabdq_f32(v935, v1732)), vorrq_s8(vandq_s8(v961, v962), v1610), v961);
      __asm { FMOV            V1.4S, #1.0 }

      v1641 = _Q1;
      v965 = vdivq_f32(_Q1, v963);
      v967 = *(a1 + 144);
      v966 = *(a1 + 160);
      v968 = *(a1 + 176);
      v1677 = *(a1 + 192);
      v1755 = vmulq_n_f32(vsubq_f32(v1677, v1634), v965.f32[0]);
      v1754 = vmulq_n_f32(vsubq_f32(v968, v1634), v965.f32[0]);
      v1753 = vmulq_n_f32(vsubq_f32(v966, v1634), v965.f32[0]);
      v1752 = vmulq_n_f32(vsubq_f32(v967, v1634), v965.f32[0]);
      v970 = *(a1 + 208);
      v969 = *(a1 + 224);
      v971 = *(a1 + 240);
      v1673 = *(a1 + 256);
      v1759 = vmulq_lane_f32(vsubq_f32(v1673, v1631), *v965.f32, 1);
      v1758 = vmulq_lane_f32(vsubq_f32(v971, v1631), *v965.f32, 1);
      v1757 = vmulq_lane_f32(vsubq_f32(v969, v1631), *v965.f32, 1);
      v1756 = vmulq_lane_f32(vsubq_f32(v970, v1631), *v965.f32, 1);
      v1701 = *(v8 + 48);
      v1707 = *(v8 + 32);
      v972 = *(v8 + 16);
      v1713 = *v8;
      v973 = vmulq_laneq_f32(vsubq_f32(*v8, v1627), v965, 2);
      v1763 = vmulq_laneq_f32(vsubq_f32(v1701, v1627), v965, 2);
      v1762 = vmulq_laneq_f32(vsubq_f32(v1707, v1627), v965, 2);
      v1761 = vmulq_laneq_f32(vsubq_f32(v972, v1627), v965, 2);
      v1760 = v973;
      v974 = *(v8 + 112);
      v975 = *(v8 + 96);
      v976 = *(v8 + 80);
      v977 = *(v8 + 64);
      v1767 = vmulq_laneq_f32(vsubq_f32(v974, v1637), v965, 3);
      v1766 = vmulq_laneq_f32(vsubq_f32(v975, v1637), v965, 3);
      v1765 = vmulq_laneq_f32(vsubq_f32(v976, v1637), v965, 3);
      v1764 = vmulq_laneq_f32(vsubq_f32(v977, v1637), v965, 3);
      v978 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1756, v1756), v1752, v1752), v973, v973), v1764, v1764);
      v979 = &v1752 + 4 * v769;
      v981 = v979[2];
      v980 = v979[3];
      v983 = *v979;
      v982 = v979[1];
      v984 = vmlsq_f32(v978, v983, v983);
      v985 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1757, v1757), v1753, v1753), v1761, v1761), v1765, v1765), v982, v982);
      v986 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1754, v1754), v1762, v1762), v1766, v1766), v981, v981);
      v987 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1755, v1755), v1763, v1763), v1767, v1767), v980, v980);
      v988 = vdupq_lane_s32(v960, 0);
      v989 = *(a1 + 135);
      if (*(a1 + 135))
      {
        v990 = vbicq_s8(vcgtq_f32(v988, v984), *(v8 + 448));
        v991 = vbicq_s8(vcgtq_f32(v988, v985), *(v8 + 464));
        v992 = vbicq_s8(vcgtq_f32(v988, v986), *(v8 + 480));
        v993 = vbicq_s8(vcgtq_f32(v988, v987), *(v8 + 496));
      }

      else
      {
        v993 = vcgtq_f32(v988, v987);
        v992 = vcgtq_f32(v988, v986);
        v991 = vcgtq_f32(v988, v985);
        v990 = vcgtq_f32(v988, v984);
      }

      a4 = v765;
      v733 = v764;
      v994 = vmovn_s32(v1682);
      v995 = vorrq_s8(vandq_s8(vuzp1q_s16(v990, v991), xmmword_298495650), vandq_s8(vuzp1q_s16(v992, v993), xmmword_298495640));
      v995.i16[0] = vaddvq_s16(v995);
      *v995.i8 = vcnt_s8(*v995.i8);
      v995.i16[0] = vaddlv_u8(*v995.i8);
      v996 = v995.i16[0];
      v5 = v1603;
      v997 = v967;
      v998 = v968;
      v999 = v966;
      v1000 = v969;
      if (v995.i32[0] >= 2u)
      {
        v1001 = vcltzq_s32(v992);
        v1002 = vcltzq_s32(v990);
        v1003 = vcltzq_s32(v993);
        v1004 = vcltzq_s32(v991);
        v1732 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v994), 0x1FuLL)), v1613, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1002, v967), vandq_s8(v1001, v968)), vaddq_f32(vandq_s8(v1004, v966), vandq_s8(v1003, v1677))), vaddq_f32(vaddq_f32(vandq_s8(v1002, v970), vandq_s8(v1001, v971)), vaddq_f32(vandq_s8(v1004, v969), vandq_s8(v1003, v1673)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1002, v1713), vandq_s8(v1001, v1707)), vaddq_f32(vandq_s8(v1004, v972), vandq_s8(v1003, v1701))), vaddq_f32(vaddq_f32(vandq_s8(v1002, v977), vandq_s8(v1001, v975)), vaddq_f32(vandq_s8(v1004, v976), vandq_s8(v1003, v974))))), ReciprocalTable[v996]));
      }

      v1005 = 0;
      v636 = v1606;
      if (v732 == 8)
      {
        v1007 = v1707;
        v1006 = v1713;
        v1008 = v972;
      }

      else
      {
        *v1005.i32 = v959 * (v959 * 0.25);
        v1009 = vmulq_f32(v983, v983);
        v1010 = vmulq_f32(v982, v982);
        v1011 = vmulq_f32(v981, v981);
        v1012 = vmulq_f32(v980, v980);
        v1013 = vdupq_lane_s32(v1005, 0);
        v1007 = v1707;
        v1008 = v972;
        if (*(a1 + 135))
        {
          v1014 = vcgtq_f32(v1013, v1012);
          v1015 = vbicq_s8(vcgtq_f32(v1013, v1009), *(v8 + 448));
          v1016 = vbicq_s8(vcgtq_f32(v1013, v1010), *(v8 + 464));
          v1017 = vbicq_s8(vcgtq_f32(v1013, v1011), *(v8 + 480));
          v1018 = vbicq_s8(v1014, *(v8 + 496));
        }

        else
        {
          v1018 = vcgtq_f32(v1013, v1012);
          v1017 = vcgtq_f32(v1013, v1011);
          v1016 = vcgtq_f32(v1013, v1010);
          v1015 = vcgtq_f32(v1013, v1009);
        }

        v1019 = vorrq_s8(vandq_s8(vuzp1q_s16(v1015, v1016), xmmword_298495650), vandq_s8(vuzp1q_s16(v1017, v1018), xmmword_298495640));
        v1019.i16[0] = vaddvq_s16(v1019);
        *v1019.i8 = vcnt_s8(*v1019.i8);
        v1019.i16[0] = vaddlv_u8(*v1019.i8);
        v1020 = v1019.i16[0];
        v1006 = v1713;
        if (v1019.i32[0] >= 2u)
        {
          v1021 = vaddq_f32(vaddq_f32(vandq_s8(vcltzq_s32(v1015), *v770), vandq_s8(vcltzq_s32(v1017), v770[2])), vaddq_f32(vandq_s8(vcltzq_s32(v1016), v770[1]), vandq_s8(vcltzq_s32(v1018), v770[3])));
          v1021.i64[0] = vpaddq_f32(v1021, v1021).u64[0];
          *v1021.f32 = vpadd_f32(*v1021.f32, *v1021.f32);
          v1021.f32[0] = ReciprocalTable[v1020] * v1021.f32[0];
          v1732 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v994), 0x1FuLL)), vdupq_lane_s32(*v1021.f32, 0), v1732);
        }
      }

      v1022 = vmulq_n_f32(vsubq_f32(v1643, v1677), v965.f32[0]);
      v1023 = vmulq_n_f32(vsubq_f32(v1643, v967), v965.f32[0]);
      v1024 = vmulq_n_f32(vsubq_f32(v1643, v966), v965.f32[0]);
      v1025 = vmulq_n_f32(vsubq_f32(v1643, v968), v965.f32[0]);
      v1644 = v971;
      v1757 = vmulq_lane_f32(vsubq_f32(v1659, v969), *v965.f32, 1);
      v1753 = v1024;
      v1752 = v1023;
      v1756 = vmulq_lane_f32(vsubq_f32(v1659, v970), *v965.f32, 1);
      v1758 = vmulq_lane_f32(vsubq_f32(v1659, v971), *v965.f32, 1);
      v1754 = v1025;
      v1755 = v1022;
      v1759 = vmulq_lane_f32(vsubq_f32(v1659, v1673), *v965.f32, 1);
      v1763 = vmulq_laneq_f32(vsubq_f32(v1647, v1701), v965, 2);
      v1760 = vmulq_laneq_f32(vsubq_f32(v1647, v1006), v965, 2);
      v1761 = vmulq_laneq_f32(vsubq_f32(v1647, v1008), v965, 2);
      v1762 = vmulq_laneq_f32(vsubq_f32(v1647, v1007), v965, 2);
      v1765 = vmulq_laneq_f32(vsubq_f32(v1652, v976), v965, 3);
      v1764 = vmulq_laneq_f32(vsubq_f32(v1652, v977), v965, 3);
      v1766 = vmulq_laneq_f32(vsubq_f32(v1652, v975), v965, 3);
      v1767 = vmulq_laneq_f32(vsubq_f32(v1652, v974), v965, 3);
      v1026 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1022, v1022), v1763, v1763), v1767, v1767);
      v1027 = *v979;
      v1028 = v979[1];
      v1029 = v979[2];
      v1030 = v979[3];
      v1031 = vmlsq_f32(v1026, v1030, v1030);
      v1032 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1756, v1756), v1023, v1023), v1760, v1760), v1764, v1764), v1027, v1027);
      v1033 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1757, v1757), v1024, v1024), v1761, v1761), v1765, v1765), v1028, v1028);
      v1034 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1025, v1025), v1762, v1762), v1766, v1766), v1029, v1029);
      if (v989)
      {
        v1035 = vbicq_s8(vcgtq_f32(v988, v1032), *(v8 + 448));
        v1036 = vbicq_s8(vcgtq_f32(v988, v1033), *(v8 + 464));
        v1037 = vbicq_s8(vcgtq_f32(v988, v1034), *(v8 + 480));
        v1038 = vbicq_s8(vcgtq_f32(v988, v1031), *(v8 + 496));
      }

      else
      {
        v1037 = vcgtq_f32(v988, v1034);
        v1036 = vcgtq_f32(v988, v1033);
        v1035 = vcgtq_f32(v988, v1032);
        v1038 = vcgtq_f32(v988, v1031);
      }

      v1039 = vorrq_s8(vandq_s8(vuzp1q_s16(v1035, v1036), xmmword_298495650), vandq_s8(vuzp1q_s16(v1037, v1038), xmmword_298495640));
      v1039.i16[0] = vaddvq_s16(v1039);
      *v1039.i8 = vcnt_s8(*v1039.i8);
      v1039.i16[0] = vaddlv_u8(*v1039.i8);
      v1040 = v1039.i16[0];
      if (v1039.i32[0] < 2u)
      {
        v1046 = xmmword_298495630;
        v1045 = v975;
        v763 = v1726;
      }

      else
      {
        v1041 = vcltzq_s32(v1037);
        v1042 = vcltzq_s32(v1035);
        v1043 = vcltzq_s32(v1038);
        v1044 = vcltzq_s32(v1036);
        v1045 = v975;
        v763 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v994), 0x1FuLL)), v1726, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1042, v997), vandq_s8(v1041, v998)), vaddq_f32(vandq_s8(v1044, v999), vandq_s8(v1043, v1677))), vaddq_f32(vaddq_f32(vandq_s8(v1042, v970), vandq_s8(v1041, v971)), vaddq_f32(vandq_s8(v1044, v969), vandq_s8(v1043, v1673)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1042, v1713), vandq_s8(v1041, v1707)), vaddq_f32(vandq_s8(v1044, v972), vandq_s8(v1043, v1701))), vaddq_f32(vaddq_f32(vandq_s8(v1042, v977), vandq_s8(v1041, v975)), vaddq_f32(vandq_s8(v1044, v976), vandq_s8(v1043, v974))))), ReciprocalTable[v1040]));
        v1046 = xmmword_298495630;
      }

      if (v732 == 8)
      {
        v731 = a1 + 144;
        v762 = v1732;
      }

      else
      {
        v1047 = vmulq_f32(v1030, v1030);
        v1048 = vmulq_f32(v1029, v1029);
        v1049 = vmulq_f32(v1027, v1027);
        v1050 = vmulq_f32(v1028, v1028);
        v1051 = vdupq_lane_s32(v1005, 0);
        if (v989)
        {
          v1052 = vcgtq_f32(v1051, v1050);
          v1053 = vbicq_s8(vcgtq_f32(v1051, v1049), *(v8 + 448));
          v1054 = vbicq_s8(v1052, *(v8 + 464));
          v1055 = vbicq_s8(vcgtq_f32(v1051, v1048), *(v8 + 480));
          v1056 = vbicq_s8(vcgtq_f32(v1051, v1047), *(v8 + 496));
        }

        else
        {
          v1054 = vcgtq_f32(v1051, v1050);
          v1053 = vcgtq_f32(v1051, v1049);
          v1055 = vcgtq_f32(v1051, v1048);
          v1056 = vcgtq_f32(v1051, v1047);
        }

        v1057 = vorrq_s8(vandq_s8(vuzp1q_s16(v1053, v1054), xmmword_298495650), vandq_s8(vuzp1q_s16(v1055, v1056), xmmword_298495640));
        v1057.i16[0] = vaddvq_s16(v1057);
        *v1057.f32 = vcnt_s8(*v1057.f32);
        v1057.i16[0] = vaddlv_u8(*v1057.f32);
        v1058 = v1057.i16[0];
        if (v1057.i32[0] >= 2u)
        {
          v1059 = vaddq_f32(vaddq_f32(vandq_s8(vcltzq_s32(v1053), *v770), vandq_s8(vcltzq_s32(v1055), v770[2])), vaddq_f32(vandq_s8(vcltzq_s32(v1054), v770[1]), vandq_s8(vcltzq_s32(v1056), v770[3])));
          v1059.i64[0] = vpaddq_f32(v1059, v1059).u64[0];
          *v1059.f32 = vpadd_f32(*v1059.f32, *v1059.f32);
          v1059.f32[0] = ReciprocalTable[v1058] * v1059.f32[0];
          v1057 = vdupq_lane_s32(*v1059.f32, 0);
          v763 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(v994), 0x1FuLL)), v1057, v763);
        }

        v731 = a1 + 144;
        v762 = v1732;
        if (!*(a1 + 134))
        {
          goto LABEL_200;
        }

        if (v989)
        {
          v1060 = vsubq_f32(v763, v1732);
          v1055.i32[0] = v1060.i32[3];
          if (v1060.f32[3] != 0.0)
          {
            goto LABEL_187;
          }

          if (*(a1 + 134) != 15)
          {
            v762 = v1588;
LABEL_187:
            v1057.i64[0] = 0;
            v1062 = vdupq_lane_s32(*&vcgtq_f32(v1057, v1055), 0);
            v1063 = vbslq_s8(v1062, v762, v763);
            v1064 = vbslq_s8(v1062, vnegq_f32(v1060), v1060);
            v1065 = vbslq_s8(v1062, v763, v762);
            *v1062.i32 = v1065.f32[3] / v1064.f32[3];
            v1066 = ReciprocalTable[BYTE4(v958)];
            v1067 = vmlsq_lane_f32(v1065, v1064, *v1062.i8, 0);
            *v1062.i32 = -v1066;
            v1064.f32[0] = v1066 + 1.0;
            if ((vminvq_u32(vandq_s8(vcgtq_f32(v1067, vdupq_lane_s32(*v1062.i8, 0)), vcgtq_f32(vdupq_lane_s32(*v1064.f32, 0), v1067))) & 0x80000000) != 0)
            {
              v762 = vminnmq_f32(vmaxnmq_f32(v1067, 0), v1641);
              v763 = v1063;
            }

            else
            {
              v1068 = vmvnq_s8(v1682);
              v1653 = v1063;
              v1069 = vmaxnmq_f32(v1619, v1612);
              v1070 = vmaxnmq_f32(v1617, v1614);
              v1071 = vmaxnmq_f32(v1069, v1070);
              v1072 = vbslq_s8(vcgtq_f32(v1070, v1069), vbslq_s8(vcgtq_f32(v1614, v1617), v1046, xmmword_298495620), vbslq_s8(vcgtq_f32(v1612, v1619), xmmword_298495610, xmmword_298495600));
              v1070.i64[0] = vextq_s8(v1071, v1071, 8uLL).u64[0];
              v1073 = vmaxnm_f32(*v1071.i8, *v1070.f32);
              v1074 = vbsl_s8(vcgt_f32(*v1070.f32, *v1071.i8), *&vextq_s8(v1072, v1072, 8uLL), *v1072.i8);
              if (vmvn_s8(vcge_f32(v1073, vdup_lane_s32(v1073, 1))).u8[0])
              {
                v1075 = v1074.i32[1];
              }

              else
              {
                v1075 = v1074.i32[0];
              }

              v1076 = vcltzq_s32(vshlq_n_s32(vmovl_u16(v994), 0x1FuLL));
              v1077 = vbslq_s8(v1076, v1065, *(v1656 + 16 * v1075));
              v1078 = vandq_s8(vsubq_f32(v1715, v1077), v1068);
              v1079 = vdupq_lane_s32(*v1077.f32, 0);
              v1080 = v997;
              v1081 = vsubq_f32(v997, v1079);
              v1608 = v999;
              v1609 = v998;
              v1628 = v1065;
              v1632 = vsubq_f32(v998, v1079);
              v1082 = vsubq_f32(v999, v1079);
              v1083 = vsubq_f32(v1677, v1079);
              v1084 = vdupq_lane_s32(*v1077.f32, 1);
              v1085 = vsubq_f32(v1673, v1084);
              v1733 = v1000;
              v1086 = vsubq_f32(v1000, v1084);
              v1087 = vsubq_f32(v971, v1084);
              v1088 = vsubq_f32(v970, v1084);
              v1089 = vdupq_laneq_s32(v1077, 2);
              v1090 = vsubq_f32(v1701, v1089);
              v1091 = vsubq_f32(v972, v1089);
              v1635 = vsubq_f32(v1707, v1089);
              v1638 = v1087;
              v1092 = vsubq_f32(v1713, v1089);
              v1093 = vdupq_laneq_s32(v1077, 3);
              v1648 = vsubq_f32(v977, v1093);
              v1660 = vsubq_f32(v1045, v1093);
              v1094 = vsubq_f32(v976, v1093);
              v1095 = vsubq_f32(v974, v1093);
              v1096 = vmlaq_n_f32(vmulq_lane_f32(v1087, *v1078.f32, 1), v1632, v1078.f32[0]);
              v1097 = v1092;
              v1098 = vmlaq_laneq_f32(vmlaq_laneq_f32(v1096, v1635, v1078, 2), v1660, v1078, 3);
              v1099 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1088, *v1078.f32, 1), v1081, v1078.f32[0]), v1092, v1078, 2), v1648, v1078, 3);
              v1100 = vbslq_s8(vcgtq_f32(v1098, v1099), xmmword_298495610, xmmword_298495600);
              v1101 = v1086;
              v1102 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1085, *v1078.f32, 1), v1083, v1078.f32[0]), v1090, v1078, 2), v1095, v1078, 3);
              v1103 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1086, *v1078.f32, 1), v1082, v1078.f32[0]), v1091, v1078, 2), v1094, v1078, 3);
              v1104 = vbslq_s8(vcgtq_f32(v1102, v1103), v1046, xmmword_298495620);
              v1105 = vmaxnmq_f32(v1099, v1098);
              v1106 = vmaxnmq_f32(v1103, v1102);
              v1107 = vmaxnmq_f32(v1105, v1106);
              v1108 = vbslq_s8(vcgtq_f32(v1106, v1105), v1104, v1100);
              v1105.i64[0] = vextq_s8(v1107, v1107, 8uLL).u64[0];
              v1109 = vbsl_s8(vcgt_f32(*v1105.f32, *v1107.i8), *&vextq_s8(v1108, v1108, 8uLL), *v1108.i8);
              *v1105.f32 = vmaxnm_f32(*v1107.i8, *v1105.f32);
              if (vmvn_s8(vcge_f32(*v1105.f32, vdup_lane_s32(*v1105.f32, 1))).u8[0])
              {
                v1110 = v1109.i32[1];
              }

              else
              {
                v1110 = v1109.i32[0];
              }

              v1111 = vbslq_s8(v1076, v1653, *(v1656 + 16 * v1110));
              v1112 = v1080;
              v1113 = vsubq_f32(v1111, v1077);
              v1114.i64[0] = 0x8000000080000000;
              v1114.i64[1] = 0x8000000080000000;
              v1115 = vdivq_f32(v1641, vbslq_s8(vcgtq_f32(v1610, vabdq_f32(v1111, v1077)), vorrq_s8(vandq_s8(v1113, v1114), v1610), v1113));
              v1116 = vmulq_lane_f32(v1088, *v1115.f32, 1);
              v1757 = vmulq_lane_f32(v1101, *v1115.f32, 1);
              v1117 = v1045;
              v1753 = vmulq_n_f32(v1082, v1115.f32[0]);
              v1752 = vmulq_n_f32(v1081, v1115.f32[0]);
              v1756 = v1116;
              v1759 = vmulq_lane_f32(v1085, *v1115.f32, 1);
              v1755 = vmulq_n_f32(v1083, v1115.f32[0]);
              v1754 = vmulq_n_f32(v1632, v1115.f32[0]);
              v1758 = vmulq_lane_f32(v1638, *v1115.f32, 1);
              v1762 = vmulq_laneq_f32(v1635, v1115, 2);
              v1763 = vmulq_laneq_f32(v1090, v1115, 2);
              v1760 = vmulq_laneq_f32(v1097, v1115, 2);
              v1761 = vmulq_laneq_f32(v1091, v1115, 2);
              v1765 = vmulq_laneq_f32(v1094, v1115, 3);
              v1764 = vmulq_laneq_f32(v1648, v1115, 3);
              v1767 = vmulq_laneq_f32(v1095, v1115, 3);
              v1766 = vmulq_laneq_f32(v1660, v1115, 3);
              v1118 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1757, v1757), v1753, v1753), v1761, v1761), v1765, v1765), v979[1], v979[1]));
              v1119 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1116, v1116), v1752, v1752), v1760, v1760), v1764, v1764), *v979, *v979));
              v1120 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1755, v1755), v1763, v1763), v1767, v1767), v979[3], v979[3]));
              v1121 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1754, v1754), v1762, v1762), v1766, v1766), v979[2], v979[2]));
              v1122 = vorrq_s8(vandq_s8(vuzp1q_s16(v1119, v1118), xmmword_298495650), vandq_s8(vuzp1q_s16(v1121, v1120), xmmword_298495640));
              v1122.i16[0] = vaddvq_s16(v1122);
              v1123 = vcnt_s8(*v1122.i8);
              v1123.i16[0] = vaddlv_u8(v1123);
              if (v1123.i32[0] >= 2u)
              {
                v1077 = vbslq_s8(v1076, v1628, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1112, v1119), vandq_s8(v1609, v1121)), vaddq_f32(vandq_s8(v1608, v1118), vandq_s8(v1677, v1120))), vaddq_f32(vaddq_f32(vandq_s8(v970, v1119), vandq_s8(v1644, v1121)), vaddq_f32(vandq_s8(v1733, v1118), vandq_s8(v1673, v1120)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1713, v1119), vandq_s8(v1707, v1121)), vaddq_f32(vandq_s8(v972, v1118), vandq_s8(v1701, v1120))), vaddq_f32(vaddq_f32(vandq_s8(v977, v1119), vandq_s8(v1117, v1121)), vaddq_f32(vandq_s8(v976, v1118), vandq_s8(v974, v1120))))), ReciprocalTable[v1123.u16[0]]));
              }

              v1124 = vdupq_lane_s32(*v1111.f32, 0);
              v1125 = vmulq_n_f32(vsubq_f32(v1124, v1112), v1115.f32[0]);
              v1126 = vmulq_n_f32(vsubq_f32(v1124, v1608), v1115.f32[0]);
              v1127 = vdupq_lane_s32(*v1111.f32, 1);
              v1128 = vdupq_laneq_s32(v1111, 2);
              v1129 = vdupq_laneq_s32(v1111, 3);
              v1758 = vmulq_lane_f32(vsubq_f32(v1127, v1644), *v1115.f32, 1);
              v1754 = vmulq_n_f32(vsubq_f32(v1124, v1609), v1115.f32[0]);
              v1755 = vmulq_n_f32(vsubq_f32(v1124, v1677), v1115.f32[0]);
              v1759 = vmulq_lane_f32(vsubq_f32(v1127, v1673), *v1115.f32, 1);
              v1757 = vmulq_lane_f32(vsubq_f32(v1127, v1733), *v1115.f32, 1);
              v1130 = vmlaq_f32(vmulq_f32(v1757, v1757), v1126, v1126);
              v1753 = v1126;
              v1752 = v1125;
              v1756 = vmulq_lane_f32(vsubq_f32(v1127, v970), *v1115.f32, 1);
              v1760 = vmulq_laneq_f32(vsubq_f32(v1128, v1713), v1115, 2);
              v1761 = vmulq_laneq_f32(vsubq_f32(v1128, v972), v1115, 2);
              v1763 = vmulq_laneq_f32(vsubq_f32(v1128, v1701), v1115, 2);
              v1762 = vmulq_laneq_f32(vsubq_f32(v1128, v1707), v1115, 2);
              v1766 = vmulq_laneq_f32(vsubq_f32(v1129, v1117), v1115, 3);
              v1767 = vmulq_laneq_f32(vsubq_f32(v1129, v974), v1115, 3);
              v1765 = vmulq_laneq_f32(vsubq_f32(v1129, v976), v1115, 3);
              v1764 = vmulq_laneq_f32(vsubq_f32(v1129, v977), v1115, 3);
              v1131 = vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1756, v1756), v1125, v1125), v1760, v1760), v1764, v1764), *v979, *v979);
              v1132 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1758, v1758), v1754, v1754), v1762, v1762), v1766, v1766), v979[2], v979[2]));
              v1133 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1759, v1759), v1755, v1755), v1763, v1763), v1767, v1767), v979[3], v979[3]));
              v1134 = vcgtq_f32(v988, vmlsq_f32(vmlaq_f32(vmlaq_f32(v1130, v1761, v1761), v1765, v1765), v979[1], v979[1]));
              v1135 = vcgtq_f32(v988, v1131);
              v1136 = vorrq_s8(vandq_s8(vuzp1q_s16(v1135, v1134), xmmword_298495650), vandq_s8(vuzp1q_s16(v1132, v1133), xmmword_298495640));
              v1136.i16[0] = vaddvq_s16(v1136);
              v1137 = vcnt_s8(*v1136.i8);
              v1137.i16[0] = vaddlv_u8(v1137);
              if (v1137.i32[0] >= 2u)
              {
                v1111 = vbslq_s8(v1076, v1111, vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1112, v1135), vandq_s8(v1609, v1132)), vaddq_f32(vandq_s8(v1608, v1134), vandq_s8(v1677, v1133))), vaddq_f32(vaddq_f32(vandq_s8(v970, v1135), vandq_s8(v1644, v1132)), vaddq_f32(vandq_s8(v1733, v1134), vandq_s8(v1673, v1133)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v1713, v1135), vandq_s8(v1707, v1132)), vaddq_f32(vandq_s8(v972, v1134), vandq_s8(v1701, v1133))), vaddq_f32(vaddq_f32(vandq_s8(v977, v1135), vandq_s8(v1117, v1132)), vaddq_f32(vandq_s8(v976, v1134), vandq_s8(v974, v1133))))), ReciprocalTable[v1137.u16[0]]));
              }

              v1138 = vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(vdupq_laneq_s32(v1111, 3), vdupq_laneq_s32(v1077, 3))), 0);
              v1139 = v1111;
              v1139.i32[3] = 0;
              v763 = vbslq_s8(v1138, v1139, v1111);
              v1140 = v1077;
              v1140.i32[3] = 0;
              v762 = vbslq_s8(v1138, v1077, v1140);
            }

            goto LABEL_200;
          }

          v762 = 0uLL;
        }

        else
        {
          v1061 = vdupq_lane_s32(*&vcgtq_f32(vdupq_laneq_s32(v763, 3), vdupq_laneq_s32(v1732, 3)), 0);
          v763 = vandq_s8(v763, v1061);
          v762 = vbicq_s8(v1732, v1061);
        }
      }
    }

    else
    {
      v737 = *(v8 + 416);
      v736 = *(v8 + 432);
      v739 = *(v8 + 384);
      v738 = *(v8 + 400);
      v741 = *(v8 + 96);
      v740 = *(v8 + 112);
      v743 = *(v8 + 64);
      v742 = *(v8 + 80);
      v744 = vmaxnmq_f32(vmaxnmq_f32(v739, v737), vmaxnmq_f32(v738, v736));
      v745 = vmaxnmq_f32(vmaxnmq_f32(v743, v741), vmaxnmq_f32(v742, v740));
      v746 = vminnmq_f32(vminnmq_f32(v739, v737), vminnmq_f32(v738, v736));
      v747 = vminnmq_f32(vminnmq_f32(v743, v741), vminnmq_f32(v742, v740));
      v748 = vmaxnmq_f32(vzip1q_s32(v744, v745), vzip2q_s32(v744, v745));
      v749 = vminnmq_f32(vzip1q_s32(v746, v747), vzip2q_s32(v746, v747));
      v750 = vmaxnmq_f32(v748, vextq_s8(v748, v748, 8uLL));
      v751 = vminnmq_f32(v749, vextq_s8(v749, v749, 8uLL));
      v752 = vzip1q_s32(v750, v750);
      v752.i32[2] = v750.i32[0];
      v1725 = v752;
      v753 = vzip1q_s32(v751, v751);
      v753.i32[2] = v751.i32[0];
      v1730 = v753;
      v754 = vdupq_lane_s32(*v751.i8, 0);
      v755 = vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v737, v754)), vcgtq_f32(v735, vsubq_f32(v736, v754)));
      v756 = vdupq_lane_s32(*v750.i8, 0);
      v757 = vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v756, v737)), vcgtq_f32(v735, vsubq_f32(v756, v736)));
      v758 = vdupq_lane_s32(*v751.i8, 1);
      v759 = vdupq_lane_s32(*v750.i8, 1);
      v760 = vorrq_s8(vandq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(vorr_s8(vorr_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v759, v743)), vcgtq_f32(v735, vsubq_f32(v759, v742)))), vmovn_s16(vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v756, v739)), vcgtq_f32(v735, vsubq_f32(v756, v738))))), vorr_s8(vmovn_s16(vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v739, v754)), vcgtq_f32(v735, vsubq_f32(v738, v754)))), vmovn_s16(vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v743, v758)), vcgtq_f32(v735, vsubq_f32(v742, v758))))))), 0xFuLL)), xmmword_298495650), vandq_s8(vorrq_s8(vorrq_s8(vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v759, v741)), vcgtq_f32(v735, vsubq_f32(v759, v740))), v757), vorrq_s8(v755, vuzp1q_s16(vcgtq_f32(v735, vsubq_f32(v741, v758)), vcgtq_f32(v735, vsubq_f32(v740, v758))))), xmmword_298495640));
      v760.i16[0] = vaddvq_s16(v760);
      *v760.i8 = vcnt_s8(*v760.i8);
      v760.i16[0] = vaddlv_u8(*v760.i8);
      v761 = WeightInfoForSingleLineDualWeight_4x4(v760.i32[0], 4);
      v763 = v1725;
      v762 = v1730;
      v1739 = v761;
    }

LABEL_200:
    v1141 = *(a1 + 32);
    v1745 = v763;
    v1744 = v762;
    FindColorVectors(&v1744, v1141, 2, 324, &v1739, &v1752);
    v1142 = __clz(__rbit32(v732));
    v1143 = *(a1 + 144);
    v1144 = vdupq_lane_s32(*v1752.f32, 0);
    v1665 = *(a1 + 192);
    v1666 = *(a1 + 160);
    v1667 = *(a1 + 176);
    v1145 = *(a1 + 240);
    v1147 = *(a1 + 208);
    v1146 = *(a1 + 224);
    v1148 = vdupq_lane_s32(*v1752.f32, 1);
    v1661 = *(a1 + 256);
    v1150 = *(v8 + 32);
    v1149 = *(v8 + 48);
    v1151 = vdupq_laneq_s32(v1752, 2);
    v1152 = *v8;
    v1664 = *(v8 + 16);
    v1734 = v1753;
    v1153 = vbicq_s8(v1753, vcltzq_s32(FindDualWeights_6x5_kVectorMask[v1142]));
    v1154 = vmulq_f32(v1153, v1153);
    v1155 = vadd_f32(*v1154.i8, *&vextq_s8(v1154, v1154, 8uLL));
    v1157 = *(v8 + 64);
    v1156 = *(v8 + 80);
    v1159 = *(v8 + 96);
    v1158 = *(v8 + 112);
    v1160 = vdupq_laneq_s32(v1752, 3);
    v1161 = vsubq_f32(v1158, v1160);
    v1162 = vsubq_f32(v1159, v1160);
    v1163 = vsubq_f32(v1156, v1160);
    v1164 = vsubq_f32(v1157, v1160);
    v1727 = v1754.i64[0];
    v1165 = vrecpes_f32(vaddv_f32(v1155));
    v1166 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1661, v1148), *v1153.f32, 1), vsubq_f32(v1665, v1144), v1153.f32[0]), vsubq_f32(v1149, v1151), v1153, 2), v1161, v1153, 3), v1165);
    v1167 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1145, v1148), *v1153.f32, 1), vsubq_f32(v1667, v1144), v1153.f32[0]), vsubq_f32(v1150, v1151), v1153, 2), v1162, v1153, 3), v1165);
    v1168 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1146, v1148), *v1153.f32, 1), vsubq_f32(v1666, v1144), v1153.f32[0]), vsubq_f32(v1664, v1151), v1153, 2), v1163, v1153, 3), v1165);
    v1169 = vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1147, v1148), *v1153.f32, 1), vsubq_f32(v1143, v1144), v1153.f32[0]), vsubq_f32(*v8, v1151), v1153, 2), v1164, v1153, 3), v1165);
    __asm { FMOV            V1.4S, #1.0 }

    v1171 = vminnmq_f32(v1168, _Q1);
    v1172 = vmaxnmq_f32(vminnmq_f32(v1169, _Q1), 0);
    v1173 = vmaxnmq_f32(v1171, 0);
    v1174 = vmaxnmq_f32(vminnmq_f32(v1167, _Q1), 0);
    v1175 = vmaxnmq_f32(vminnmq_f32(v1166, _Q1), 0);
    if (v732 != 8 && *(a1 + 134) >= 1)
    {
      v1176 = 0.0;
      if (fabsf(*&v1753.i32[3]) >= 0.0039216)
      {
        v1176 = vrecpes_f32(*&v1753.i32[3]);
      }

      v1173 = vbslq_s8(vcltzq_s32(*(v8 + 464)), vmulq_n_f32(v1163, v1176), v1173);
      v1172 = vbslq_s8(vcltzq_s32(*(v8 + 448)), vmulq_n_f32(v1164, v1176), v1172);
      v1174 = vbslq_s8(vcltzq_s32(*(v8 + 480)), vmulq_n_f32(v1162, v1176), v1174);
      v1175 = vbslq_s8(vcltzq_s32(*(v8 + 496)), vmulq_n_f32(v1161, v1176), v1175);
    }

    v1177 = (v731 + (v1142 << 6));
    v1178 = v1177[2];
    v1179 = v1177[3];
    v1181 = *v1177;
    v1180 = v1177[1];
    v1736 = v1753;
    v1182 = *(&v1736 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1142 & 3)));
    v1183 = 0.0;
    if (fabsf(v1182) >= 0.00024414)
    {
      v1183 = vrecpes_f32(v1182);
    }

    v1184 = (&v1735 & 0xFFFFFFFFFFFFFFF3 | (4 * (v1142 & 3)));
    v1735 = v1752;
    v1185 = vld1q_dup_f32(v1184);
    v1186 = vsubq_f32(v1181, v1185);
    v1187 = vsubq_f32(v1180, v1185);
    v1188 = vsubq_f32(v1178, v1185);
    v1189 = vmulq_n_f32(vsubq_f32(v1179, v1185), v1183);
    v1190 = vmulq_n_f32(v1188, v1183);
    v1191 = vmulq_n_f32(v1187, v1183);
    v1192 = vmulq_n_f32(v1186, v1183);
    v1193 = v1739 >> 27;
    v1194 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1173, 0), _Q1), v1193));
    v1195 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1172, 0), _Q1), v1193));
    v1196 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1175, 0), _Q1), v1193));
    v1197 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1190, 0), _Q1), v1193));
    v1198 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1191, 0), _Q1), v1193));
    v1199 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1192, 0), _Q1), v1193));
    v1191.f32[0] = ReciprocalTable[v1193];
    v1702 = v1194;
    v1708 = v1196;
    v1200 = vmulq_n_f32(v1196, v1191.f32[0]);
    v1688 = v1197;
    v1694 = v1195;
    v1201 = vmulq_n_f32(v1195, v1191.f32[0]);
    v1202 = vmulq_n_f32(v1194, v1191.f32[0]);
    v1714 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1174, 0), _Q1), v1193));
    v1203 = vmulq_n_f32(v1714, v1191.f32[0]);
    v1745 = v1202;
    v1744 = v1201;
    v1746 = v1203;
    v1747 = v1200;
    v1674 = v1199;
    v1678 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1189, 0), _Q1), v1193));
    v1204 = vmulq_n_f32(v1678, v1191.f32[0]);
    v1205 = vmulq_n_f32(v1199, v1191.f32[0]);
    v1683 = v1198;
    v1206 = vmulq_n_f32(v1198, v1191.f32[0]);
    v1207 = vmulq_n_f32(v1197, v1191.f32[0]);
    v1749 = v1206;
    v1748 = v1205;
    v1750 = v1207;
    v1751 = v1204;
    v1208 = *(a1 + 32);
    if (v1208)
    {
      _Q1 = vmulq_f32(*v1208, v1668);
    }

    v1209 = a1;
    do
    {
      v1210 = v1209;
      v1209 = *(v1209 + 40);
    }

    while (v1209);
    v1211 = *(v1210 + 132);
    if (v1211 == 392)
    {
      v1261 = 0;
      v1262 = vzip1q_s32(v1201, v1201);
      v1262.i32[2] = v1201.i32[0];
      v1633 = v1262;
      v1263 = vdupq_lane_s32(*v1201.i8, 1);
      v1263.i32[3] = v1201.i32[2];
      v1662 = vextq_s8(v1201, vdupq_laneq_s32(v1201, 3), 8uLL);
      v1642 = vzip2q_s32(vextq_s8(v1201, v1201, 0xCuLL), v1201);
      v1264 = vzip2q_s32(vextq_s8(v1202, v1202, 0xCuLL), v1202);
      v1265 = vextq_s8(v1202, vdupq_laneq_s32(v1202, 3), 8uLL);
      v1654 = v1204;
      v1266 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1662, xmmword_298495A40), xmmword_298495A50, v1642), xmmword_298495A80, v1264), xmmword_298495A90, v1265);
      v1649 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1662, xmmword_298495AC0), xmmword_298495AD0, v1642), xmmword_298495B00, v1264), xmmword_298495B10, v1265);
      v1267 = vzip2q_s32(vextq_s8(v1203, v1203, 0xCuLL), v1203);
      v1268 = vextq_s8(v1203, vdupq_laneq_s32(v1203, 3), 8uLL);
      v1645 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1265, xmmword_298495B40), xmmword_298495B50, v1264), xmmword_298495B80, v1267), xmmword_298495B90, v1268);
      v1639 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1265, xmmword_298495B90), xmmword_298495B80, v1264), xmmword_298495B50, v1267), xmmword_298495B40, v1268);
      v1269 = vmlaq_f32(vmulq_f32(v1268, xmmword_298495B10), xmmword_298495B00, v1267);
      v1636 = vmlaq_f32(vmulq_f32(v1268, xmmword_298495A90), xmmword_298495A80, v1267);
      v1616 = vzip2q_s32(vextq_s8(v1205, v1205, 0xCuLL), v1205);
      v1618 = vextq_s8(v1205, vdupq_laneq_s32(v1205, 3), 8uLL);
      v1270 = vzip2q_s32(vextq_s8(v1206, v1206, 0xCuLL), v1206);
      v1271 = vextq_s8(v1206, vdupq_laneq_s32(v1206, 3), 8uLL);
      v1629 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1618, xmmword_298495A40), xmmword_298495A50, v1616), xmmword_298495A80, v1270), xmmword_298495A90, v1271);
      v1615 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1618, xmmword_298495AC0), xmmword_298495AD0, v1616), xmmword_298495B00, v1270), xmmword_298495B10, v1271);
      v1272 = vmlaq_f32(vmulq_f32(v1271, xmmword_298495B40), xmmword_298495B50, v1270);
      v1273 = vmlaq_f32(vmulq_f32(v1271, xmmword_298495B90), xmmword_298495B80, v1270);
      v1274 = vzip2q_s32(vextq_s8(v1207, v1207, 0xCuLL), v1207);
      v1275 = vextq_s8(v1207, vdupq_laneq_s32(v1207, 3), 8uLL);
      v1276 = vmlaq_f32(vmlaq_f32(v1272, xmmword_298495B80, v1274), xmmword_298495B90, v1275);
      v1611 = vmlaq_f32(vmlaq_f32(v1273, xmmword_298495B50, v1274), xmmword_298495B40, v1275);
      v1277 = vmlaq_f32(vmulq_f32(v1275, xmmword_298495B10), xmmword_298495B00, v1274);
      v1278 = vmlaq_f32(vmulq_f32(v1275, xmmword_298495A90), xmmword_298495A80, v1274);
      v1279 = vdupq_n_s32(0x3D800000u);
      v1753 = vmulq_f32(vmlaq_f32(vmulq_f32(v1662, xmmword_298495A00), xmmword_298495A10, v1642), v1279);
      v1280 = vzip1q_s32(v1202, v1202);
      v1280.i32[2] = v1202.i32[0];
      v1752 = vmulq_f32(vmlaq_f32(vmulq_f32(v1263, xmmword_2984959F0), xmmword_298495A20, v1633), v1279);
      v1281 = vdupq_lane_s32(*v1202.i8, 1);
      v1281.i32[3] = v1202.i32[2];
      v1755 = vmulq_f32(v1266, v1279);
      v1754 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1263, xmmword_298495A30), xmmword_298495A60, v1633), xmmword_298495A70, v1280), xmmword_298495AA0, v1281), v1279);
      v1757 = vmulq_f32(v1649, v1279);
      v1756 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1263, xmmword_298495AB0), xmmword_298495AE0, v1633), xmmword_298495AF0, v1280), xmmword_298495B20, v1281), v1279);
      v1282 = vzip1q_s32(v1203, v1203);
      v1282.i32[2] = v1203.i32[0];
      v1283 = vdupq_lane_s32(*v1203.i8, 1);
      v1283.i32[3] = v1203.i32[2];
      v1759 = vmulq_f32(v1645, v1279);
      v1758 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1281, xmmword_298495B30), xmmword_298495B60, v1280), xmmword_298495B70, v1282), xmmword_298495BA0, v1283), v1279);
      v1284 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1281, xmmword_298495BA0), xmmword_298495B70, v1280), xmmword_298495B60, v1282), xmmword_298495B30, v1283), v1279);
      v1761 = vmulq_f32(v1639, v1279);
      v1285 = vzip1q_s32(v1200, v1200);
      v1285.i32[2] = v1200.i32[0];
      v1286 = vdupq_lane_s32(*v1200.i8, 1);
      v1760 = v1284;
      v1286.i32[3] = v1200.i32[2];
      v1287 = vzip2q_s32(vextq_s8(v1200, v1200, 0xCuLL), v1200);
      v1288 = vextq_s8(v1200, vdupq_laneq_s32(v1200, 3), 8uLL);
      v1763 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1269, xmmword_298495AD0, v1287), xmmword_298495AC0, v1288), v1279);
      v1762 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1283, xmmword_298495B20), xmmword_298495AF0, v1282), xmmword_298495AE0, v1285), xmmword_298495AB0, v1286), v1279);
      v1765 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1636, xmmword_298495A50, v1287), xmmword_298495A40, v1288), v1279);
      v1764 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1283, xmmword_298495AA0), xmmword_298495A70, v1282), xmmword_298495A60, v1285), xmmword_298495A30, v1286), v1279);
      v1289 = vmlaq_f32(vmulq_f32(v1288, xmmword_298495A00), xmmword_298495A10, v1287);
      v1290 = vmulq_f32(v1286, xmmword_2984959F0);
      v1291 = vzip1q_s32(v1205, v1205);
      v1291.i32[2] = v1205.i32[0];
      v1292 = vdupq_lane_s32(*v1205.i8, 1);
      v1292.i32[3] = v1205.i32[2];
      v1767 = vmulq_f32(v1289, v1279);
      v1766 = vmulq_f32(vmlaq_f32(v1290, xmmword_298495A20, v1285), v1279);
      v1769 = vmulq_f32(vmlaq_f32(vmulq_f32(v1618, xmmword_298495A00), xmmword_298495A10, v1616), v1279);
      v1768 = vmulq_f32(vmlaq_f32(vmulq_f32(v1292, xmmword_2984959F0), xmmword_298495A20, v1291), v1279);
      v1293 = vzip1q_s32(v1206, v1206);
      v1293.i32[2] = v1206.i32[0];
      v1294 = vdupq_lane_s32(*v1206.i8, 1);
      v1294.i32[3] = v1206.i32[2];
      v1771 = vmulq_f32(v1629, v1279);
      v1770 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1292, xmmword_298495A30), xmmword_298495A60, v1291), xmmword_298495A70, v1293), xmmword_298495AA0, v1294), v1279);
      v1773 = vmulq_f32(v1615, v1279);
      v1772 = vmulq_f32(vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1292, xmmword_298495AB0), xmmword_298495AE0, v1291), xmmword_298495AF0, v1293), xmmword_298495B20, v1294), v1279);
      v1295 = vmlaq_f32(vmulq_f32(v1294, xmmword_298495B30), xmmword_298495B60, v1293);
      v1296 = vmlaq_f32(vmulq_f32(v1294, xmmword_298495BA0), xmmword_298495B70, v1293);
      v1297 = vzip1q_s32(v1207, v1207);
      v1297.i32[2] = v1207.i32[0];
      v1298 = vdupq_lane_s32(*v1207.i8, 1);
      v1298.i32[3] = v1207.i32[2];
      v1775 = vmulq_f32(v1276, v1279);
      v1774 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1295, xmmword_298495B70, v1297), xmmword_298495BA0, v1298), v1279);
      v1777 = vmulq_f32(v1611, v1279);
      v1776 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1296, xmmword_298495B60, v1297), xmmword_298495B30, v1298), v1279);
      v1299 = v1654;
      v1300 = vzip1q_s32(v1299, v1299);
      v1300.i32[2] = v1654.i32[0];
      v1301 = vmlaq_f32(vmlaq_f32(vmulq_f32(v1298, xmmword_298495B20), xmmword_298495AF0, v1297), xmmword_298495AE0, v1300);
      v1302 = vzip2q_s32(vextq_s8(v1299, v1299, 0xCuLL), v1654);
      v1303 = vmlaq_f32(vmulq_f32(v1298, xmmword_298495AA0), xmmword_298495A70, v1297);
      v1304 = vdupq_lane_s32(*v1654.i8, 1);
      v1304.i32[3] = v1654.i32[2];
      v1305 = vextq_s8(v1654, vdupq_laneq_s32(v1654, 3), 8uLL);
      v1779 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1277, xmmword_298495AD0, v1302), xmmword_298495AC0, v1305), v1279);
      v1778 = vmulq_f32(vmlaq_f32(v1301, xmmword_298495AB0, v1304), v1279);
      v1306 = vmlaq_f32(vmlaq_f32(v1278, xmmword_298495A50, v1302), xmmword_298495A40, v1305);
      v1781 = vmulq_f32(v1306, v1279);
      v1780 = vmulq_f32(vmlaq_f32(vmlaq_f32(v1303, xmmword_298495A60, v1300), xmmword_298495A30, v1304), v1279);
      v1783 = vmulq_f32(vmlaq_f32(vmulq_f32(v1305, xmmword_298495A00), xmmword_298495A10, v1302), v1279);
      v1782 = vmulq_f32(vmlaq_f32(vmulq_f32(v1304, xmmword_2984959F0), xmmword_298495A20, v1300), v1279);
      v1307 = vdupq_lane_s32(*v1734.i8, 0);
      v1308 = vdupq_lane_s32(*v1734.i8, 1);
      v1309 = &v1752 + 16 * (v732 >> 3);
      v1310 = vdupq_laneq_s32(v1734, 2);
      v1311 = vdupq_laneq_s32(v1734, 3);
      v1312 = &v1752 + 16 * ((v732 >> 2) & 1);
      v1313 = &v1752 + 16 * ((v732 >> 1) & 1);
      v1314 = &v1752 + 16 * (v732 & 1);
      v1315 = 0uLL;
      v1316 = 0uLL;
      v1317 = 0uLL;
      v1318 = 0uLL;
      v1319 = 0uLL;
      v1320 = 0uLL;
      v1321 = 0uLL;
      v1322 = 0uLL;
      do
      {
        v1306.i32[0] = *(a1 + 135);
        v1323 = vdupq_lane_s8(*&vceqq_s8(v1306, v1593), 0);
        v1324 = vsubq_f32(vmlaq_f32(v1151, v1312[v1261], v1310), *(v1210 + v1261 * 16 + 656));
        v1325 = *(v1210 + v1261 * 16 + 912);
        v1326 = *(v1210 + v1261 * 16 + 928);
        v1327 = vbslq_s8(v1323, v1324, vmulq_f32(v1324, v1325));
        v1328 = vsubq_f32(vmlaq_f32(v1151, v1312[v1261 + 1], v1310), *(v1210 + v1261 * 16 + 672));
        v1329 = vbslq_s8(v1323, v1328, vmulq_f32(v1328, v1326));
        v1330 = vsubq_f32(vmlaq_f32(v1148, v1313[v1261], v1308), *(v1210 + v1261 * 16 + 400));
        v1331 = vbslq_s8(v1323, v1330, vmulq_f32(v1330, v1325));
        v1332 = vsubq_f32(vmlaq_f32(v1148, v1313[v1261 + 1], v1308), *(v1210 + v1261 * 16 + 416));
        v1333 = vbslq_s8(v1323, v1332, vmulq_f32(v1332, v1326));
        v1334 = vsubq_f32(vmlaq_f32(v1144, v1314[v1261], v1307), *(v1210 + v1261 * 16 + 144));
        v1335 = vbslq_s8(v1323, v1334, vmulq_f32(v1334, v1325));
        v1336 = vsubq_f32(vmlaq_f32(v1144, v1314[v1261 + 1], v1307), *(v1210 + v1261 * 16 + 160));
        v1306 = vbslq_s8(v1323, v1336, vmulq_f32(v1336, v1326));
        v1337 = vsubq_f32(vmlaq_f32(v1160, v1309[v1261], v1311), v1325);
        v1338 = vsubq_f32(vmlaq_f32(v1160, v1309[v1261 + 1], v1311), v1326);
        v1322 = vmlaq_f32(v1322, v1306, v1306);
        v1321 = vmlaq_f32(v1321, v1335, v1335);
        v1320 = vmlaq_f32(v1320, v1333, v1333);
        v1319 = vmlaq_f32(v1319, v1331, v1331);
        v1318 = vmlaq_f32(v1318, v1329, v1329);
        v1317 = vmlaq_f32(v1317, v1327, v1327);
        v1316 = vmlaq_f32(v1316, v1338, v1338);
        v1315 = vmlaq_f32(v1315, v1337, v1337);
        v1261 += 2;
      }

      while (v1261 != 16);
      v1260 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1319, *_Q1.f32, 1), v1321, _Q1.f32[0]), v1317, _Q1, 2), v1315, _Q1, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v1320, *_Q1.f32, 1), v1322, _Q1.f32[0]), v1318, _Q1, 2), v1316, _Q1, 3));
LABEL_217:
      v1339 = vpaddq_f32(v1260, v1260).u64[0];
      v1340 = vpadd_f32(v1339, v1339).f32[0];
      v546 = v1719;
      if (v1340 < v1719.f32[0])
      {
        v1599 = v1739;
        v1598 = v732;
        if (a4)
        {
          a4[8].f32[0] = v1340;
        }

        v546.f32[0] = v1340;
        v1596 = v1683;
        v1597 = v1674;
        v1594 = v1678;
        v1595 = v1688;
        v1623 = v1694;
        v1625 = v1702;
        v1620 = v1708;
        v1621 = v1714;
        v1607 = v1727;
      }

      goto LABEL_222;
    }

    if (v1211 == 324)
    {
      v1212 = &v1744 + 4 * (v732 & 1);
      v1213 = vmlaq_n_f32(v1144, v1212[2], *v1753.i32);
      v1214 = vmlaq_n_f32(v1144, *v1212, *v1753.i32);
      v1215 = vmlaq_n_f32(v1144, v1212[3], *v1753.i32);
      v1216 = vmlaq_n_f32(v1144, v1212[1], *v1753.i32);
      v1217 = &v1744 + 4 * ((v732 >> 1) & 1);
      v1218 = vmlaq_lane_f32(v1148, v1217[1], *v1753.i8, 1);
      v1219 = vmlaq_lane_f32(v1148, v1217[3], *v1753.i8, 1);
      v1220 = vmlaq_lane_f32(v1148, *v1217, *v1753.i8, 1);
      v1221 = vmlaq_lane_f32(v1148, v1217[2], *v1753.i8, 1);
      v1222 = &v1744 + 4 * ((v732 >> 2) & 1);
      v1223 = vmlaq_laneq_f32(v1151, v1222[1], v1753, 2);
      v1224 = vmlaq_laneq_f32(v1151, v1222[3], v1753, 2);
      v1225 = vmlaq_laneq_f32(v1151, *v1222, v1753, 2);
      v1226 = vmlaq_laneq_f32(v1151, v1222[2], v1753, 2);
      v1227 = &v1744 + 4 * (v732 >> 3);
      v1228 = vmlaq_laneq_f32(v1160, v1227[1], v1753, 3);
      v1229 = vmlaq_laneq_f32(v1160, v1227[3], v1753, 3);
      v1230 = vmlaq_laneq_f32(v1160, *v1227, v1753, 3);
      v1231 = vsubq_f32(v1216, v1666);
      v1232 = vsubq_f32(v1215, v1665);
      v1233 = vsubq_f32(v1214, v1143);
      v1234 = vsubq_f32(v1213, v1667);
      v1235 = vsubq_f32(v1221, v1145);
      v1236 = vsubq_f32(v1220, v1147);
      v1237 = vsubq_f32(v1219, v1661);
      v1238 = vsubq_f32(v1218, v1146);
      v1239 = vsubq_f32(v1226, v1150);
      v1240 = vsubq_f32(v1225, v1152);
      v1241 = vsubq_f32(v1224, v1149);
      v1225.i8[0] = *(a1 + 135);
      v1242 = vdupq_lane_s8(*&vceqq_s8(v1225, v1592), 0);
      v1243 = vsubq_f32(v1223, v1664);
      v1244 = vbslq_s8(v1242, v1243, vmulq_f32(v1156, v1243));
      v1245 = vbslq_s8(v1242, v1241, vmulq_f32(v1158, v1241));
      v1246 = vbslq_s8(v1242, v1240, vmulq_f32(v1157, v1240));
      v1247 = vbslq_s8(v1242, v1239, vmulq_f32(v1159, v1239));
      v1248 = vbslq_s8(v1242, v1238, vmulq_f32(v1156, v1238));
      v1249 = vbslq_s8(v1242, v1237, vmulq_f32(v1158, v1237));
      v1250 = vbslq_s8(v1242, v1236, vmulq_f32(v1157, v1236));
      v1251 = vbslq_s8(v1242, v1235, vmulq_f32(v1159, v1235));
      v1252 = vbslq_s8(v1242, v1234, vmulq_f32(v1159, v1234));
      v1253 = vbslq_s8(v1242, v1233, vmulq_f32(v1157, v1233));
      v1254 = vbslq_s8(v1242, v1232, vmulq_f32(v1158, v1232));
      v1255 = vbslq_s8(v1242, v1231, vmulq_f32(v1156, v1231));
      v1256 = vsubq_f32(vmlaq_laneq_f32(v1160, v1227[2], v1753, 3), v1159);
      v1257 = vsubq_f32(v1230, v1157);
      v1258 = vsubq_f32(v1229, v1158);
      v1259 = vsubq_f32(v1228, v1156);
      v1260 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1250, v1250), *_Q1.f32, 1), vmulq_f32(v1253, v1253), _Q1.f32[0]), vmulq_f32(v1246, v1246), _Q1, 2), vmulq_f32(v1257, v1257), _Q1, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1251, v1251), *_Q1.f32, 1), vmulq_f32(v1252, v1252), _Q1.f32[0]), vmulq_f32(v1247, v1247), _Q1, 2), vmulq_f32(v1256, v1256), _Q1, 3)), vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1248, v1248), *_Q1.f32, 1), vmulq_f32(v1255, v1255), _Q1.f32[0]), vmulq_f32(v1244, v1244), _Q1, 2), vmulq_f32(v1259, v1259), _Q1, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vmulq_f32(v1249, v1249), *_Q1.f32, 1), vmulq_f32(v1254, v1254), _Q1.f32[0]), vmulq_f32(v1245, v1245), _Q1, 2), vmulq_f32(v1258, v1258), _Q1, 3)));
      goto LABEL_217;
    }

    v546 = v1719;
LABEL_222:
    _CF = v732 >= 5;
    v732 *= 2;
    if (_CF)
    {
      break;
    }
  }

  v637 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v1597), vcvtq_s32_f32(v1596)), vuzp1q_s16(vcvtq_s32_f32(v1595), vcvtq_s32_f32(v1594)));
  a2 = v1589;
  v467 = v1599;
  v629 = v1598;
LABEL_225:
  v1341 = *v5;
  if (v546.f32[0] >= *v5)
  {
    v1345 = 0;
    v629 = 0;
    v1343 = 0;
    LOBYTE(v1344) = 0;
    v1346 = 0;
    v637 = 0uLL;
    v1342 = 0uLL;
  }

  else
  {
    v1342 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v1623), vcvtq_s32_f32(v1625)), vuzp1q_s16(vcvtq_s32_f32(v1621), vcvtq_s32_f32(v1620)));
    v1343 = v467 >> 27;
    v1344 = HIDWORD(v467);
    v1345 = v467 & 0x1E7F3;
    v1346 = ((v467 >> 14) & 6) + 2;
    *v5 = v546.f32[0];
    v1590 = vmovl_u8(v1607);
    v1341 = v546.f32[0];
  }

  if (v1591 > v1341)
  {
    v1347 = v1344 + 1;
    v1348 = __clz(__rbit32(v1347));
    v1349 = v1347 >> v1348;
    v1350 = (v1347 >> v1348);
    if (!v1348 || v1350 == 1)
    {
      v1356 = v1590;
    }

    else
    {
      v1351 = vsubq_s16(vdupq_n_s16(v1344), v1590);
      if (v1350 == 3)
      {
        v1352 = 21846;
      }

      else
      {
        v1352 = 13108;
      }

      v1353 = vdupq_n_s16(v1352);
      v1354 = vminq_u16(v1590, v1351);
      v1355 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1354.i8, *v1353.i8), 0x10uLL), vmull_high_u16(v1354, v1353), 0x10uLL);
      v1353.i64[0] = 0x1000100010001;
      v1353.i64[1] = 0x1000100010001;
      v1356 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1354, v1355, vmovl_u8(vdup_n_s8(v1349))), vdupq_n_s16(v1348)), vaddq_s16(v1355, v1355)), vbicq_s8(v1353, vceqq_s16(v1354, v1590)));
    }

    v1357 = vandq_s8(v1356, vcgtq_u16(vdupq_n_s16(v1346), xmmword_298495BB0));
    switch(v1350)
    {
      case 5:
        v1392 = vdupq_n_s16(v1348);
        v1393 = vshlq_u16(v1357, vnegq_s16(v1392));
        *v1393.i8 = vmovn_s16(v1393);
        v1394 = vqtbl1q_s8(v1393, xmmword_298495BC0);
        v1395 = vqtbl1q_s8(v1393, xmmword_298495BD0);
        v1396 = vpaddq_s16(vmull_u8(*v1394.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v1394, v1394, 8uLL), 0x2001200120012001));
        v1394.i64[0] = 0x7000700070007;
        v1394.i64[1] = 0x7000700070007;
        v1397 = vandq_s8(v1396, v1394);
        v1398 = vandq_s8(vshrq_n_u16(v1396, 5uLL), v1394);
        v1399.i64[0] = 0x4000400040004;
        v1399.i64[1] = 0x4000400040004;
        v1400 = vceqq_s16(v1395, v1399);
        v1401 = vceqq_s16(v1398, v1399);
        v1402 = vsubq_s8(vaddq_s16(v1396, vshlq_n_s16(v1395, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1397), v1401));
        if ((vmaxvq_u16(v1400) & 0x8000) != 0)
        {
          v1403.i64[0] = 0x18001800180018;
          v1403.i64[1] = 0x18001800180018;
          v1402.i64[0] = vsubq_s8(v1402, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1397), v1400), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1397), v1400), v1401)), vandq_s8(vmulq_s16(v1398, v1403), vandq_s8(vceqq_s16(v1397, v1399), v1400)))).u64[0];
        }

        v1402.i64[1] = v1402.i64[0];
        v1404 = vshlq_u16(vorrq_s8(vshlq_u16(vmovl_u8(vshl_u8(vand_s8(vqtbl1_s8(v1402, 0x404020202000000), 0x1807601807601807), 0xFD00FBFD00FBFD00)), v1392), vandq_s8(v1357, vdupq_n_s16(~(-1 << v1348)))), vaddq_s16(vdupq_n_s32(v1348 << 16), xmmword_298495C10));
        v1405 = vshlq_u32(vmovl_u16(*&vpaddq_s16(v1404, v1404)), vaddq_s32(vdupq_n_s64(v1348 << 33), xmmword_298495C20));
        v1405.i64[0] = vpaddq_s32(v1405, v1405).u64[0];
        v1365 = v1405.u32[0];
        v1366 = (v1405.i64[0] & 0xFFFFFFFF00000000) >> (22 - 4 * v1348);
LABEL_246:
        v1391 = v1366 | v1365;
        break;
      case 3:
        *v1357.i8 = vmovn_s16(v1357);
        v1367 = vandq_s8(v1357, xmmword_298495C30);
        v1368 = vdupq_n_s8(v1348);
        v1369 = vshlq_u8(v1367, vnegq_s8(v1368));
        v1370 = vqtbl1q_s8(v1369, xmmword_298495C40);
        v1371 = vqtbl1q_s8(v1369, xmmword_298495C50);
        v1372 = vpaddq_s16(vmull_u8(*v1370.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1370, v1370, 8uLL), 0x8010040180100401));
        v1372.i64[0] = vpaddq_s16(v1372, v1372).u64[0];
        v1373 = vmovl_s16(*v1372.i8);
        v1374 = vshlq_n_s32(v1371, 5uLL);
        v1370.i64[0] = 0x3000000030;
        v1370.i64[1] = 0x3000000030;
        v1375.i64[0] = 0x2000000020;
        v1375.i64[1] = 0x2000000020;
        v1376 = vceqq_s32(vandq_s8(v1373, v1370), v1375);
        v1377 = vaddw_s16(v1374, *v1372.i8);
        v1375.i64[0] = 0xFF000000FFLL;
        v1375.i64[1] = 0xFF000000FFLL;
        v1378 = vcgtq_s32(v1377, v1375);
        if ((vmaxvq_u32(vorrq_s8(v1376, v1378)) & 0x80000000) != 0)
        {
          v1379.i64[0] = 0x200000002;
          v1379.i64[1] = 0x200000002;
          v1380 = vceqq_s32(v1371, v1379);
          v1381 = vshrq_n_u32(v1373, 2uLL);
          v1382 = vandq_s8(v1378, v1380);
          v1383.i64[0] = 0xF0000000FLL;
          v1383.i64[1] = 0xF0000000FLL;
          v1384 = vandq_s8(v1373, v1383);
          v1385.i64[0] = 0x303030303030303;
          v1385.i64[1] = 0x303030303030303;
          v1386.i64[0] = 0x6060606060606060;
          v1386.i64[1] = 0x6060606060606060;
          v1377.i64[0] = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v1386, v1374, v1385), v1378), v1377), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1384), v1376), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v1381, v1383)), v1382))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1384), vandq_s8(v1376, v1382))).u64[0];
        }

        v1377.i64[1] = v1377.i64[0];
        v1387 = vmovl_u8(vorr_s8(vshl_u8(vshl_u8(vand_s8(vqtbl1_s8(v1377, 0x404040000000000), 0x100C038060100C03), 0xFCFE00F9FBFCFE00), *v1368.i8), vand_s8(*v1367.i8, vdup_n_s8((1 << v1348) - 1))));
        v1388 = vadd_s32(vdup_n_s32(2 * v1348), 0x300000004);
        v1389.i64[0] = v1388.u32[0];
        v1389.i64[1] = v1388.u32[1];
        v1390 = vshlq_u32(vmlal_u16((*&v1387 & __PAIR128__(0xFF00FFFFFF00FFFFLL, 0xFF00FFFFFF00FFFFLL)), vshrn_n_s32(v1387, 0x10uLL), vshl_u16(vdup_n_s16(1 << v1348), 0x2000100010002)), vtrn1q_s32(0, v1389));
        v1390.i64[0] = vpaddq_s32(v1390, v1390).u64[0];
        v1391 = (v1390.u32[1] << (4 * v1348 + 7)) | v1390.u32[0];
        break;
      case 1:
        v1358.i64[0] = 0xFFFF0000FFFFLL;
        v1358.i64[1] = 0xFFFF0000FFFFLL;
        v1359.i64[0] = 0xFFFF0000FFFF0000;
        v1359.i64[1] = 0xFFFF0000FFFF0000;
        v1360 = vorrq_s8(vshlq_u32(vandq_s8(v1357, v1359), vnegq_s32(vdupq_n_s32(16 - v1348))), vandq_s8(v1357, v1358));
        v1358.i64[0] = 0xFFFFFFFFLL;
        v1358.i64[1] = 0xFFFFFFFFLL;
        v1361 = vandq_s8(v1360, v1358);
        v1359.i64[0] = 0xFFFFFFFF00000000;
        v1359.i64[1] = 0xFFFFFFFF00000000;
        v1362 = vandq_s8(v1360, v1359);
        *v1359.i8 = vdup_n_s32(2 * (16 - v1348));
        v1363.i64[0] = v1359.u32[0];
        v1363.i64[1] = v1359.u32[1];
        v1364 = vorrq_s8(vshlq_u64(v1362, vnegq_s64(v1363)), v1361);
        v1365 = v1364.i64[0];
        v1366 = v1364.i64[1] << (4 * v1348);
        goto LABEL_246;
      default:
        v1391 = 0;
        break;
    }

    v1406 = __clz(__rbit32(v1343 + 1));
    v1407 = (v1343 + 1) >> v1406;
    if ((v1345 & 0x400) != 0)
    {
      if (v1407 == 1)
      {
        v1419 = vzip2q_s8(v1342, v637);
        v1420 = vzip1q_s8(v1342, v637);
        v1421 = 32 * v1406;
        v1422 = vdupq_n_s16(v1406 << 8);
        v1423 = vpaddq_s8(vshlq_u8(v1420, v1422), vshlq_u8(v1419, v1422));
        v1424 = vdupq_n_s16(8 - 2 * v1406);
        v1425 = vshlq_u8(v1423, v1424);
        v1426 = vmovl_s8(vmul_s16(*v1424.i8, 0xFE00FE00FE00FELL));
        v1427 = vshlq_u16(v1425, v1426);
        v1428 = vmull_s16(*v1426.i8, 0x2000200020002);
        v1429 = vshlq_u32(v1427, v1428);
        v1430 = vmull_s32(*v1428.i8, 0x200000002);
        v1431 = vqtbl1q_s8(vshlq_u64(v1429, v1430), vaddq_s8(vdupq_n_s8(v1430.i8[0] >> 2), xmmword_298451AC0));
      }

      else
      {
        if (v1406)
        {
          v1476 = vmovl_u8(*v1342.i8);
          v1477 = vmovl_high_u8(v1342);
          v1478 = vdupq_n_s16(v1343);
          v1479 = vsubw_u8(v1478, *v1342.i8);
          v1480 = vsubw_high_u8(v1478, v1342);
          v1481 = vminq_u16(v1480, v1477);
          v1482 = vminq_u16(v1479, v1476);
          if (v1407 == 3)
          {
            v1483 = 21846;
          }

          else
          {
            v1483 = 13108;
          }

          v1484 = vdupq_n_s16(v1483);
          v1485 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1482.i8, *v1484.i8), 0x10uLL), vmull_high_u16(v1482, v1484), 0x10uLL);
          v1486 = vdupq_n_s16(v1407);
          v1487 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1481.i8, *v1484.i8), 0x10uLL), vmull_high_u16(v1481, v1484), 0x10uLL);
          v1488 = vdupq_n_s16(v1406);
          v1489 = vcgtq_u16(v1476, v1479);
          v1490.i64[0] = 0x1000100010001;
          v1490.i64[1] = 0x1000100010001;
          v1342 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1482, v1485, v1486), v1488), vaddq_s16(v1485, v1485)), vandq_s8(v1489, v1490)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1481, v1487, v1486), v1488), vaddq_s16(v1487, v1487)), vandq_s8(vcgtq_u16(v1477, v1480), v1490)));
          v1491 = vmovl_u8(*v637.i8);
          v1492 = vmovl_high_u8(v637);
          v1493 = vsubw_u8(v1478, *v637.i8);
          v1494 = vsubw_high_u8(v1478, v637);
          v1495 = vminq_u16(v1494, v1492);
          v1496 = vminq_u16(v1493, v1491);
          v1497 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1496.i8, *v1484.i8), 0x10uLL), vmull_high_u16(v1496, v1484), 0x10uLL);
          v1498 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1495.i8, *v1484.i8), 0x10uLL), vmull_high_u16(v1495, v1484), 0x10uLL);
          v637 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1496, v1497, v1486), v1488), vaddq_s16(v1497, v1497)), vandq_s8(vcgtq_u16(v1491, v1493), v1490)), vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v1495, v1498, v1486), v1488), vaddq_s16(v1498, v1498)), vandq_s8(vcgtq_u16(v1492, v1494), v1490)));
        }

        v1499 = vzip2q_s8(v1342, v637);
        v1500 = vzip1q_s8(v1342, v637);
        v1421 = 32 * v1406;
        if (v1407 == 5)
        {
          v1571 = vqtbl1q_s8(v1500, xmmword_298495D60);
          v1572 = vqtbl1q_s8(v1499, xmmword_298495D70);
          v1573 = vuzp1q_s8(vpaddq_s16(vmull_u8(*v1571.i8, 0x801080108010801), vmull_u8(*&vextq_s8(v1571, v1571, 8uLL), 0x801080108010801)), vpaddq_s16(vmull_u8(*v1572.i8, 0x801080108010801), vmull_u8(*&vextq_s8(v1572, v1572, 8uLL), 0x801080108010801)));
          v1574 = vuzp1q_s8(vqtbl1q_s8(v1500, xmmword_298495D80), vqtbl1q_s8(v1499, xmmword_298495BD0));
          v1575 = vaddq_s8(v1573, vqtbl1q_s8(v1573, xmmword_298495D90));
          v1576 = vaddq_s8(vqtbl1q_s8(v1574, xmmword_298495D90), v1574);
          v1573.i64[0] = 0x707070707070707;
          v1573.i64[1] = 0x707070707070707;
          v1577 = vandq_s8(v1575, v1573);
          v1573.i64[0] = 0xF8F8F8F8F8F8F8F8;
          v1573.i64[1] = 0xF8F8F8F8F8F8F8F8;
          v1578.i64[0] = 0x2020202020202020;
          v1578.i64[1] = 0x2020202020202020;
          v1579 = vceqq_s8(vandq_s8(v1575, v1573), v1578);
          v1573.i64[0] = 0x404040404040404;
          v1573.i64[1] = 0x404040404040404;
          v1580 = vceqq_s8(v1576, v1573);
          v1581 = vsubq_s8(vaddq_s8(vshlq_n_s8(v1576, 5uLL), v1575), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1577), v1580));
          if ((vmaxvq_u8(v1579) & 0x80) != 0)
          {
            v1582.i64[0] = 0x2424242424242424;
            v1582.i64[1] = 0x2424242424242424;
            v1583.i64[0] = 0x18001800180018;
            v1583.i64[1] = 0x18001800180018;
            v1581 = vsubq_s8(v1581, vaddq_s8(vaddq_s8(vandq_s8(vmulq_s16(v1576, v1583), vceqq_s8(v1575, v1582)), vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1577), v1579)), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1577), v1580), v1579)));
          }

          v1584.i64[0] = 0x1000100010001;
          v1584.i64[1] = 0x1000100010001;
          v1585 = vshlq_u64(vshlq_u32(vshlq_u16(vshlq_u8(vqtbl1q_s8(v1581, xmmword_298495DA0), v1584), xmmword_298495DB0), xmmword_298495DC0), xmmword_298495DD0);
          v1431 = vextq_s8(v1585, v1585, 1uLL);
          v1421 += 75;
        }

        else if (v1407 == 3)
        {
          v1501 = vdupq_n_s8(v1406);
          v1502 = vnegq_s8(v1501);
          v1503 = vshlq_u8(v1499, v1502);
          v1504 = vshlq_u8(v1500, v1502);
          v1505 = vqtbl1q_s8(v1504, xmmword_298495C40);
          v1506 = vqtbl1q_s8(v1503, xmmword_298495C90);
          v1507 = vpaddq_s16(vpaddq_s16(vmull_u8(*v1505.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1505, v1505, 8uLL), 0x8010040180100401)), vpaddq_s16(vmull_u8(*v1506.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1506, v1506, 8uLL), 0x8010040180100401)));
          v1508 = vuzp1q_s16(vqtbl1q_s8(v1504, xmmword_298495C50), vqtbl1q_s8(v1503, xmmword_298495CA0));
          v1509 = vaddq_s16(v1507, vqtbl1q_s8(v1507, xmmword_298495CB0));
          v1510 = v1509;
          v1510.i16[3] = 0;
          v1503.i64[0] = 0x20002000200020;
          v1503.i64[1] = 0x20002000200020;
          v1511 = vceqq_s16(vandq_s8(v1509, xmmword_298495CC0), v1503);
          v1504.i64[0] = 0xFF00FF00FF00FFLL;
          v1504.i64[1] = 0xFF00FF00FF00FFLL;
          v1512 = vcgtq_u16(v1510, v1504);
          v1513 = vshlq_n_s16(v1508, 5uLL);
          v1514 = vaddq_s16(v1510, v1513);
          if ((vmaxvq_u16(vorrq_s8(v1511, v1512)) & 0x8000) != 0)
          {
            v1515.i64[0] = 0x2000200020002;
            v1515.i64[1] = 0x2000200020002;
            v1516 = vandq_s8(v1512, vceqq_s16(v1508, v1515));
            v1517 = vandq_s8(v1509, xmmword_298495CD0);
            v1518.i64[0] = 0x303030303030303;
            v1518.i64[1] = 0x303030303030303;
            v1519.i64[0] = 0x6060606060606060;
            v1519.i64[1] = 0x6060606060606060;
            v1520 = vmlaq_s8(v1519, v1513, v1518);
            v1521.i64[0] = 0xF000F000F000FLL;
            v1521.i64[1] = 0xF000F000F000FLL;
            v1514 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(v1520, v1512), v1514), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1517), v1511), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(vshrq_n_u16(v1510, 2uLL), v1521)), v1516))), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1517), v1511), v1516));
          }

          v1522 = vdupq_n_s8((1 << v1406) - 1);
          v1523 = vandq_s8(v1500, v1522);
          v1524 = vandq_s8(v1499, v1522);
          v1525 = vqtbl1q_s8(v1514, xmmword_298495CE0);
          v1526 = vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1514, xmmword_298495CF0), xmmword_298495D00), xmmword_298495D30), v1501);
          v1527 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(v1525, xmmword_298495D10), xmmword_298495D20), v1501), v1524);
          v1528 = vorrq_s8(v1526, v1523);
          v1529 = vaddq_s8(vshlq_u8(vmulq_s8(vdupq_n_s8(1 << v1406), vuzp2q_s8(v1528, v1527)), xmmword_298495D40), vuzp1q_s8(v1528, v1527));
          v1530 = *&v1529 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          v1531 = vshlq_u16((*&v1529 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(5 - 2 * v1406)));
          v1532 = vaddq_s16(vaddq_s16(v1531, v1530), vandq_s8(v1531, xmmword_298495D50));
          *&v1530 = 0xFFFF0000FFFFLL;
          *(&v1530 + 1) = 0xFFFF0000FFFFLL;
          v1533 = vandq_s8(v1532, v1530);
          v1524.i64[0] = 0xFFFF0000FFFF0000;
          v1524.i64[1] = 0xFFFF0000FFFF0000;
          v1534 = vshlq_u32(vandq_s8(v1532, v1524), vnegq_s32(vdupq_n_s32(10 - 4 * v1406)));
          v1535 = vaddq_s32(vaddq_s32(v1534, v1533), v1534.u64[0]);
          v1533.i64[0] = 0xFFFFFFFFLL;
          v1533.i64[1] = 0xFFFFFFFFLL;
          v1536 = vandq_s8(v1535, v1533);
          v1524.i64[0] = 0xFFFFFFFF00000000;
          v1524.i64[1] = 0xFFFFFFFF00000000;
          v1537 = vandq_s8(v1535, v1524);
          *v1524.i8 = vdup_n_s32(19 - 8 * v1406);
          v1538.i64[0] = v1524.u32[0];
          v1538.i64[1] = v1524.u32[1];
          v1539 = vaddq_s64(vshlq_u64(v1537, vnegq_s64(v1538)), v1536);
          v1431.i64[0] = (v1539.i64[1] << (16 * v1406 + 26)) | v1539.i64[0];
          v1431.i64[1] = v1539.i64[1] >> (38 - 16 * v1406);
          v1421 += 52;
        }

        else
        {
          v1431 = 0uLL;
        }
      }

      v1586 = vqtbl1q_s8((31 - __clz(v629)), vsubq_s8(xmmword_298451AC0, vdupq_n_s8((126 - v1421) >> 3)));
      v1570 = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v1586, xmmword_298451AD0), vdupq_n_s64((126 - v1421) | 0xFFFFFFFFFFFFFFF8)), vshlq_u64(v1586, vdupq_n_s64((126 - v1421) & 7))), vqtbl1q_s8(vrbitq_s8(v1431), xmmword_298495DE0));
    }

    else
    {
      if (v1407 == 1)
      {
        v1408 = vorrq_s8(vshlq_u16((*&v1342 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(8 - v1406))), (*&v1342 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
        v1409.i64[0] = 0xFFFF0000FFFFLL;
        v1409.i64[1] = 0xFFFF0000FFFFLL;
        v1410.i64[0] = 0xFFFF0000FFFF0000;
        v1410.i64[1] = 0xFFFF0000FFFF0000;
        v1411 = vorrq_s8(vshlq_u32(vandq_s8(v1408, v1410), vnegq_s32(vdupq_n_s32(2 * (8 - v1406)))), vandq_s8(v1408, v1409));
        v1409.i64[0] = 0xFFFFFFFFLL;
        v1409.i64[1] = 0xFFFFFFFFLL;
        v1412 = vandq_s8(v1411, v1409);
        v1410.i64[0] = 0xFFFFFFFF00000000;
        v1410.i64[1] = 0xFFFFFFFF00000000;
        v1413 = vandq_s8(v1411, v1410);
        *v1410.i8 = vdup_n_s32(4 * (8 - v1406));
        v1414.i64[0] = v1410.u32[0];
        v1414.i64[1] = v1410.u32[1];
        v1415 = vorrq_s8(vshlq_u64(v1413, vnegq_s64(v1414)), v1412);
        v1416 = v1415.u64[1];
        v1417 = 8 * v1406;
        v1418 = (v1415.i64[1] << v1417) | v1415.i64[0];
        v1406 = -v1417;
        goto LABEL_277;
      }

      if (v1406)
      {
        v1432 = vmovl_u8(*v1342.i8);
        v1433 = vmovl_high_u8(v1342);
        v1434 = vdupq_n_s16(v1343);
        v1435 = vsubw_u8(v1434, *v1342.i8);
        v1436 = vsubw_high_u8(v1434, v1342);
        v1437 = vminq_u16(v1436, v1433);
        v1438 = vminq_u16(v1435, v1432);
        if (v1407 == 3)
        {
          v1439 = 21846;
        }

        else
        {
          v1439 = 13108;
        }

        v1440 = vdupq_n_s16(v1439);
        v1441 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1438.i8, *v1440.i8), 0x10uLL), vmull_high_u16(v1438, v1440), 0x10uLL);
        v1442 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v1437.i8, *v1440.i8), 0x10uLL), vmull_high_u16(v1437, v1440), 0x10uLL);
        v1443 = vdupq_n_s16(v1407);
        v1444 = vmlsq_s16(v1438, v1441, v1443);
        v1445 = vmlsq_s16(v1437, v1442, v1443);
        v1446 = vdupq_n_s16(v1406);
        v1447 = vcgtq_u16(v1432, v1435);
        v1448.i64[0] = 0x1000100010001;
        v1448.i64[1] = 0x1000100010001;
        v1342 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v1444, v1446), vaddq_s16(v1441, v1441)), vandq_s8(v1447, v1448)), vorrq_s8(vaddq_s16(vshlq_u16(v1445, v1446), vaddq_s16(v1442, v1442)), vandq_s8(vcgtq_u16(v1433, v1436), v1448)));
      }

      if (v1407 == 3)
      {
        v1540 = vdupq_n_s8(v1406);
        v1541 = vshlq_u8(v1342, vnegq_s8(v1540));
        v1542 = vqtbl1q_s8(v1541, xmmword_298495C40);
        v1543 = vqtbl1q_s8(v1541, xmmword_298495C50);
        v1544 = vpaddq_s16(vmull_u8(*v1542.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v1542, v1542, 8uLL), 0x8010040180100401));
        v1544.i64[0] = vpaddq_s16(v1544, v1544).u64[0];
        v1545 = vmovl_s16(*v1544.i8);
        v1546 = vshlq_n_s32(v1543, 5uLL);
        v1542.i64[0] = 0x3000000030;
        v1542.i64[1] = 0x3000000030;
        v1547.i64[0] = 0x2000000020;
        v1547.i64[1] = 0x2000000020;
        v1548 = vceqq_s32(vandq_s8(v1545, v1542), v1547);
        v1549 = vaddw_s16(v1546, *v1544.i8);
        v1547.i64[0] = 0xFF000000FFLL;
        v1547.i64[1] = 0xFF000000FFLL;
        v1550 = vcgtq_s32(v1549, v1547);
        if ((vmaxvq_u32(vorrq_s8(v1548, v1550)) & 0x80000000) != 0)
        {
          v1551.i64[0] = 0x200000002;
          v1551.i64[1] = 0x200000002;
          v1552 = vceqq_s32(v1543, v1551);
          v1553 = vshrq_n_u32(v1545, 2uLL);
          v1554 = vandq_s8(v1550, v1552);
          v1555.i64[0] = 0xF0000000FLL;
          v1555.i64[1] = 0xF0000000FLL;
          v1556 = vandq_s8(v1545, v1555);
          v1557.i64[0] = 0x303030303030303;
          v1557.i64[1] = 0x303030303030303;
          v1558.i64[0] = 0x6060606060606060;
          v1558.i64[1] = 0x6060606060606060;
          v1549 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v1558, v1546, v1557), v1550), v1549), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v1556), v1548), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v1553, v1555)), v1554))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v1556), vandq_s8(v1548, v1554)));
        }

        v1559 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1549, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v1540), vandq_s8(v1342, vdupq_n_s8((1 << v1406) - 1)));
        v1560 = vaddq_s16(vshlq_u16(vshlq_u16((*&v1559 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - v1406))), xmmword_298495E00), (*&v1559 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
        v1561.i64[0] = 0xFFFF0000FFFFLL;
        v1561.i64[1] = 0xFFFF0000FFFFLL;
        v1562 = vandq_s8(v1560, v1561);
        v1563.i64[0] = 0xFFFF0000FFFF0000;
        v1563.i64[1] = 0xFFFF0000FFFF0000;
        v1564 = vshlq_u32(vandq_s8(v1560, v1563), vnegq_s32(vdupq_n_s32(13 - 2 * v1406)));
        v1565 = vaddq_s32(vaddq_s32(v1564, v1562), v1564.u32[0]);
        v1562.i64[0] = 0xFFFFFFFFLL;
        v1562.i64[1] = 0xFFFFFFFFLL;
        v1566 = vandq_s8(v1565, v1562);
        v1563.i64[0] = 0xFFFFFFFF00000000;
        v1563.i64[1] = 0xFFFFFFFF00000000;
        v1567 = vandq_s8(v1565, v1563);
        *v1563.i8 = vdup_n_s32(25 - 4 * v1406);
        v1568.i64[0] = v1563.u32[0];
        v1568.i64[1] = v1563.u32[1];
        v1569 = vaddq_s64(vshlq_u64(v1567, vnegq_s64(v1568)), v1566);
        v1416 = v1569.u64[1];
        v1418 = (v1569.i64[1] << (8 * v1406 + 13)) | v1569.i64[0];
        v1475 = 51;
        goto LABEL_276;
      }

      v1449 = 0uLL;
      if (v1407 == 5)
      {
        v1450 = vdupq_n_s8(v1406);
        v1451 = vshlq_u8(v1342, vnegq_s8(v1450));
        v1452 = vqtbl1q_s8(v1451, xmmword_298495BC0);
        v1453 = vqtbl1q_s8(v1451, xmmword_298495BD0);
        v1454 = vpaddq_s16(vmull_u8(*v1452.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v1452, v1452, 8uLL), 0x2001200120012001));
        v1452.i64[0] = 0x7000700070007;
        v1452.i64[1] = 0x7000700070007;
        v1455 = vandq_s8(v1454, v1452);
        v1456 = vandq_s8(vshrq_n_u16(v1454, 5uLL), v1452);
        v1457.i64[0] = 0x4000400040004;
        v1457.i64[1] = 0x4000400040004;
        v1458 = vceqq_s16(v1453, v1457);
        v1459 = vceqq_s16(v1456, v1457);
        v1460 = vsubq_s8(vaddq_s16(v1454, vshlq_n_s16(v1453, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v1455), v1459));
        if ((vmaxvq_u16(v1458) & 0x8000) != 0)
        {
          v1461.i64[0] = 0x18001800180018;
          v1461.i64[1] = 0x18001800180018;
          v1460 = vsubq_s8(v1460, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v1455), v1458), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v1455), v1458), v1459)), vandq_s8(vmulq_s16(v1456, v1461), vandq_s8(vceqq_s16(v1455, v1457), v1458))));
        }

        v1462 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v1460, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v1450), vandq_s8(v1342, vdupq_n_s8((1 << v1406) - 1)));
        v1463 = vaddq_s16(vshlq_u16(vshlq_u16((*&v1462 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - v1406))), xmmword_298495E40), (*&v1462 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
        v1464.i64[0] = 0xFFFF0000FFFFLL;
        v1464.i64[1] = 0xFFFF0000FFFFLL;
        v1465 = vandq_s8(v1463, v1464);
        v1466.i64[0] = 0xFFFF0000FFFF0000;
        v1466.i64[1] = 0xFFFF0000FFFF0000;
        v1467 = vshlq_u32(vandq_s8(v1463, v1466), vnegq_s32(vdupq_n_s32(12 - 2 * v1406)));
        v1468 = vaddq_s32(v1467, v1465);
        v1467.i32[1] = 0;
        v1469 = vaddq_s32(v1468, v1467);
        v1468.i64[0] = 0xFFFFFFFFLL;
        v1468.i64[1] = 0xFFFFFFFFLL;
        v1470 = vandq_s8(v1469, v1468);
        v1466.i64[0] = 0xFFFFFFFF00000000;
        v1466.i64[1] = 0xFFFFFFFF00000000;
        LODWORD(v1471) = 0;
        HIDWORD(v1471) = v1469.i32[1];
        v1472 = vaddq_s64(vandq_s8(v1469, v1466), v1471);
        *v1466.i8 = vdup_n_s32(23 - 4 * v1406);
        v1473.i64[0] = v1466.u32[0];
        v1473.i64[1] = v1466.u32[1];
        v1474 = vaddq_s64(vshlq_u64(v1472, vnegq_s64(v1473)), v1470);
        v1416 = v1474.u64[1];
        v1418 = (v1474.i64[1] << (8 * v1406 + 19)) | v1474.i64[0];
        v1475 = 45;
LABEL_276:
        LOBYTE(v1406) = v1475 - 8 * v1406;
LABEL_277:
        v1449.i64[0] = v1418;
        v1449.i64[1] = v1416 >> v1406;
      }

      v1570 = vqtbl1q_s8(vrbitq_s8(v1449), xmmword_298495DE0);
    }

    v1587.i64[0] = v1345 | (v1391 << 17);
    v1587.i64[1] = v1391 >> 47;
    *a2 = vorrq_s8(v1570, v1587);
  }
}

uint64_t FillBlockStorageRow(uint64_t result, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, float a8)
{
  v9 = a6;
  v10 = a3;
  v11 = result;
  v59 = *MEMORY[0x29EDCA608];
  v12 = *(result + 200);
  v13 = *(result + 120);
  v56 = a5;
  if ((a4 & 0x8000000000000000) == 0 || a5 < 0)
  {
    v26 = a4;
    v27 = a3;
  }

  else
  {
    v50 = *(result + 120);
    v53 = a4;
    v14 = a2;
    if (*(result + 64))
    {
      v15 = 0;
      v16 = *(result + 80);
      v17 = v58;
      v18 = a6;
      do
      {
        v57[v15] = v16;
        v12(v17, v18);
        v16 = *(v11 + 80);
        v17 += v16;
        v18 += *(a7 + 8 * v15++);
      }

      while (v15 < *(v11 + 64));
    }

    v48 = v12;
    v51 = a7;
    v19 = 0;
    v20 = -v53;
    v21 = v10;
    v22 = v10;
    v23 = v14;
    do
    {
      v24 = (v23 + v19 * 8);
      v25 = &v10[v19];
      result = ReadBlock(v11, &v10[v19], v58, v57, a8);
      v23 = v14;
      v25[9] = v21;
      v25[10] = v25;
      v25[11] = &v10[344 * (v20 == 1) + v19];
      v25[6] = v24[9];
      v25[7] = v24;
      v25[8] = v24[11];
      if (v10 != v14)
      {
        v24[12] = v21;
        v24[13] = v25[10];
        v24[14] = v25[11];
      }

      v21 = v22;
      v22 += 344;
      v25[12] = 0;
      v25[13] = 0;
      v25[14] = 0;
      v19 += 344;
      --v20;
    }

    while (v20);
    v26 = 0;
    a2 = (v14 + v19 * 8);
    v10 = (v10 + v19 * 8);
    v27 = v10 - 344;
    a4 = v53;
    a5 = v56;
    v13 = v50;
    a7 = v51;
    v12 = v48;
  }

  if (v26 <= a5)
  {
    v28 = v13 - a4;
    if (v13 - a4 < 1)
    {
      v39 = v10;
      v10 = v27;
      goto LABEL_27;
    }

    v54 = a2;
    result = ReadBlock(v11, v10, v9, a7, a8);
    v29 = v54;
    v30 = *(v11 + 80);
    v10[9] = v27;
    v10[10] = v10;
    v10[11] = &v10[344 * (v26 < v56)];
    v10[6] = v54[9];
    v10[7] = v54;
    v10[8] = v54[11];
    if (v54 != v10)
    {
      v54[12] = v27;
      v54[13] = v10[10];
      v54[14] = v10[11];
    }

    v10[12] = 0;
    v10[13] = 0;
    v10[14] = 0;
    if (v26 < v56)
    {
      v9 += v30;
      ++v26;
      v31 = v28 - 1;
      if (v28 != 1)
      {
        v52 = a7;
        v32 = 0;
        v49 = v12;
        v33 = v26;
        do
        {
          v34 = &v10[v32];
          v35 = &v29[v32];
          v36 = &v29[v32 + 344];
          result = ReadBlock(v11, &v10[v32 + 344], v9, v52, a8);
          v29 = v54;
          v34[353] = v34;
          v34[354] = &v10[v32 + 344];
          v34[355] = &v10[v32 + 688];
          v34[350] = v35[353];
          v34[351] = v36;
          v34[352] = v35[355];
          if (v10 != v54)
          {
            v35[356] = v34;
            v35[357] = v34[354];
            v35[358] = v34[355];
          }

          v34[358] = 0;
          a8 = 0.0;
          *(v34 + 178) = 0u;
          v9 += *(v11 + 80);
          v26 = v33 + 1;
          v32 += 344;
          v37 = v56;
          if (v33 >= v56)
          {
            break;
          }

          ++v33;
        }

        while (v31-- > 1);
        v10 = (v10 + v32 * 8);
        a2 = &v54[v32 + 344];
        v39 = v10 + 344;
        a7 = v52;
        v12 = v49;
        goto LABEL_28;
      }

      a2 = v54 + 344;
      v39 = v10 + 344;
LABEL_27:
      v37 = v56;
LABEL_28:
      if (v26 <= v37)
      {
        v55 = a2;
        if (*(v11 + 64))
        {
          v40 = 0;
          v41 = *(v11 + 80);
          v42 = v58;
          do
          {
            v57[v40] = v41;
            v12(v42, v9);
            v41 = *(v11 + 80);
            v42 += v41;
            v9 += *(a7 + 8 * v40++);
          }

          while (v40 < *(v11 + 64));
        }

        else
        {
          v42 = v58;
        }

        v43 = 0;
        v44 = v55;
        v45 = v39;
        do
        {
          v46 = (v44 + v43 * 8);
          v47 = &v39[v43];
          result = ReadBlock(v11, &v39[v43], v42, v57, a8);
          v44 = v55;
          v47[9] = v10;
          v47[10] = v47;
          v47[11] = &v39[344 * (v26 < v56) + v43];
          v47[6] = v46[9];
          v47[7] = v46;
          v47[8] = v46[11];
          if (v39 != v55)
          {
            v46[12] = v10;
            v46[13] = v47[10];
            v46[14] = v47[11];
          }

          v10 = v45;
          v45 += 344;
          ++v26;
          v47[12] = 0;
          v47[13] = 0;
          v47[14] = 0;
          v43 += 344;
        }

        while (v56 + 1 != v26);
      }
    }
  }

  return result;
}

uint64_t ReadBlock(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float a5)
{
  v5 = MEMORY[0x2A1C7C4A8](a1, a2, a3, a4, a5);
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v15 = v5;
  STACK[0x1498] = *MEMORY[0x29EDCA608];
  v16 = *(v5 + 48);
  if (*(v5 + 60) + v6 > v16)
  {
    v17 = v6;
    v18 = *(v5 + 80);
    __pattern8 = v18;
    memset_pattern8(&STACK[0xB20], &__pattern8, 0x60uLL);
    if (*(v15 + 64))
    {
      v29 = v8;
      v19 = 0;
      v20 = *(v15 + 200);
      v21 = v16 + ~v17;
      v22 = v12 + *(v15 + 72) * v21;
      v23 = &STACK[0xB80];
      do
      {
        v20(v23, v22, *(v15 + 72) * *(v15 + 60));
        v23 = (v23 + v18);
        v22 += v10[v19++];
        v24 = *(v15 + 64);
      }

      while (v19 < v24);
      v8 = v29;
      if (v21 >= 1)
      {
        if (v24)
        {
          v25 = 0;
          v26 = &STACK[0xB80];
          do
          {
            memcpy(v26, v12, *(v15 + 72) * v21);
            v26 = (v26 + v18);
            v12 = (v12 + v10[v25++]);
          }

          while (v25 < *(v15 + 64));
        }
      }
    }

    v12 = &STACK[0xB80];
    v10 = &STACK[0xB20];
  }

  v27 = *(v15 + 184);
  (*(v15 + 176))(&__pattern8, v12, v10, v8);
  memcpy(v14, &__pattern8, 0xAC0uLL);
  *v14 = *v15;
  *(v14 + 4) = *(v15 + 16);
  *(v14 + 32) = *(v15 + 140);
  *(v14 + 135) = *(v15 + 144) != 2;
  return v27(v14);
}

uint64_t ReadBlock(uint64_t a1, _OWORD *a2, unint64_t *a3, unint64_t *a4, uint64_t a5, uint64_t a6)
{
  STACK[0x18B8] = *MEMORY[0x29EDCA608];
  v11 = *(a1 + 48);
  if (*(a1 + 60) + a6 > v11)
  {
    v13 = *(a1 + 80);
    __pattern8 = v13;
    memset_pattern8(&STACK[0x1780], &__pattern8, 0x20uLL);
    if (*(a1 + 64))
    {
      v24 = a5;
      v14 = 0;
      v15 = *(a1 + 208);
      v16 = v11 + ~a6;
      v17 = a3 + *(a1 + 72) * v16;
      v18 = &STACK[0x17A0];
      do
      {
        v15(v18, v17, *(a1 + 72) * *(a1 + 60));
        v18 = (v18 + v13);
        v17 += a4[v14++];
        v19 = *(a1 + 64);
      }

      while (v14 < v19);
      a5 = v24;
      if (v16 >= 1)
      {
        if (v19)
        {
          v20 = 0;
          v21 = &STACK[0x17A0];
          do
          {
            memcpy(v21, a3, *(a1 + 72) * v16);
            v21 = (v21 + v13);
            a3 = (a3 + a4[v20++]);
          }

          while (v20 < *(a1 + 64));
        }
      }
    }

    a3 = &STACK[0x17A0];
    a4 = &STACK[0x1780];
  }

  v22 = *(a1 + 192);
  (*(a1 + 184))(&__pattern8, a3, a4, a5);
  memcpy(a2, &__pattern8, 0xAC0uLL);
  *a2 = *a1;
  *(a2 + 4) = *(a1 + 16);
  *(a2 + 32) = *(a1 + 148);
  *(a2 + 135) = *(a1 + 152) != 2;
  return v22(a2);
}

unint64_t WeightInfoForSingleLineSingleWeight_4x4(int a1, uint64_t a2)
{
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  v3 = (&kSingleWeightsInfoTable + 8 * kSingleLineSingleWeightIndexTable[4 * a1 + v2]);
  return *v3 & 0xFFE00000FFFE1FFFLL | (*(v3 + v2 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

void FindColorVectors(float32x4_t *result@<X0>, float32x4_t *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  v7 = a4;
  v11 = *a5;
  v12 = HIDWORD(*a5);
  v13 = BYTE4(*a5);
  v14 = ReciprocalTable[v13];
  if ((v12 & 0xFE) == 0)
  {
    LODWORD(v13) = 1;
  }

  v15.i64[0] = 0;
  v16 = vmaxnmq_f32(*result, 0);
  __asm { FMOV            V3.4S, #1.0 }

  v21 = vminnmq_f32(v16, _Q3);
  v22 = vminnmq_f32(vmaxnmq_f32(result[1], 0), _Q3);
  v264 = v21;
  v265 = v22;
  if (a2)
  {
    _Q3 = *a2;
  }

  v23 = v13;
  if (((v11 >> 13) & 0xF) > 4)
  {
    v26 = 0uLL;
    v260 = 0;
    HIDWORD(v28) = (v11 >> 13) & 0xF;
    LODWORD(v28) = HIDWORD(v28);
    v27 = v28 >> 1;
    if (v27 <= 2)
    {
      if (v27)
      {
        _ZF = v27 == 2;
      }

      else
      {
        _ZF = 1;
      }

      if (!_ZF)
      {
        goto LABEL_99;
      }

      if ((v11 & 0x1F000000000000) != 0)
      {
        v232 = _Q3;
        v238 = v23;
        v246 = v21;
        v253 = v22;
        if (a3 == 1)
        {
          v30 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
        }

        else
        {
          v30 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
        }

        v62 = BYTE4(v30);
        v11 = *a5;
        v21 = v246;
        v22 = v253;
        if (BYTE4(v30) == BYTE4(*a5))
        {
          v23 = v238;
        }

        else
        {
          v63 = BYTE4(v11);
          v31.f32[0] = ReciprocalTable[BYTE4(v11)];
          v32.f32[0] = ReciprocalTable[BYTE4(v30)];
          v64 = vmlsq_lane_f32(v253, vrndxq_f32(vmulq_n_f32(v253, v63)), v31, 0);
          v65 = vmlsq_lane_f32(v246, vrndxq_f32(vmulq_n_f32(v246, v63)), v31, 0);
          v66 = vmlsq_lane_f32(v253, vrndxq_f32(vmulq_n_f32(v253, BYTE4(v30))), v32, 0);
          v67 = vmlsq_lane_f32(v246, vrndxq_f32(vmulq_n_f32(v246, BYTE4(v30))), v32, 0);
          v23 = v238;
          v68 = vmlaq_f32(vmulq_f32(v232, vmulq_f32(v64, v64)), vmulq_f32(v65, v65), v232);
          v65.i64[0] = vpaddq_f32(v68, v68).u64[0];
          v69 = vmlaq_f32(vmulq_f32(v232, vmulq_f32(v66, v66)), vmulq_f32(v67, v67), v232);
          v69.i64[0] = vpaddq_f32(v69, v69).u64[0];
          v70 = vpadd_f32(*v69.f32, *v69.f32);
          if ((vcgt_f32(v70, vpadd_f32(*v65.f32, *v65.f32)).u8[0] & 1) == 0 || v70.f32[0] <= 0.000015259)
          {
            v12 = HIDWORD(v30);
            *a5 = v30;
            if ((v30 & 0xFE00000000) == 0)
            {
              v62 = 1;
            }

            v23 = v62;
            v11 = v30;
          }
        }
      }

      v71 = vrndxq_f32(vmulq_n_f32(v21, v23));
      v72 = vrndxq_f32(vmulq_n_f32(v22, v23));
      v26 = vuzp1q_s16(vcvtq_s32_f32(v71), vcvtq_s32_f32(v72));
      *v26.f32 = vmovn_s16(v26);
      goto LABEL_98;
    }

    if (v27 == 3)
    {
      if ((v11 & 0x1F000000000000) != 0)
      {
        v227 = v14;
        v233 = _Q3;
        v239 = v23;
        v247 = v21;
        v254 = v22;
        if (a3 == 1)
        {
          v51 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
        }

        else
        {
          v51 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
        }

        v73 = BYTE4(v51);
        v11 = *a5;
        v21 = v247;
        v22 = v254;
        if (BYTE4(v51) == BYTE4(*a5))
        {
          v23 = v239;
          v14 = v227;
        }

        else
        {
          v74 = BYTE4(v11);
          v75 = vrndxq_f32(vmulq_n_f32(v247, v74));
          v76 = vrndxq_f32(vmulq_n_f32(v254, v74));
          v52.f32[0] = ReciprocalTable[BYTE4(v11)];
          v78 = vmulq_n_f32(v247, BYTE4(v51));
          v77 = vrndxq_f32(v78);
          v78.f32[0] = ReciprocalTable[BYTE4(v51)];
          v79 = vmlsq_lane_f32(v254, v76, v52, 0);
          v80 = vmlsq_lane_f32(v247, v75, v52, 0);
          v81 = vmlsq_lane_f32(v254, vrndxq_f32(vmulq_n_f32(v254, BYTE4(v51))), *v78.f32, 0);
          v82 = vmlsq_lane_f32(v247, v77, *v78.f32, 0);
          v14 = v227;
          v83 = vmlaq_f32(vmulq_f32(v233, vmulq_f32(v79, v79)), vmulq_f32(v80, v80), v233);
          v80.i64[0] = vpaddq_f32(v83, v83).u64[0];
          *v83.f32 = vpadd_f32(*v80.f32, *v80.f32);
          v84 = vmlaq_f32(vmulq_f32(v233, vmulq_f32(v81, v81)), vmulq_f32(v82, v82), v233);
          v80.i64[0] = vpaddq_f32(v84, v84).u64[0];
          v85 = vpadd_f32(*v80.f32, *v80.f32);
          v84.i8[0] = vcgt_f32(v85, *v83.f32).u8[0];
          v23 = v239;
          if ((v84.i8[0] & 1) == 0 || v85.f32[0] <= 0.000015259)
          {
            *a5 = v51;
            if ((v51 & 0xFE00000000) == 0)
            {
              v73 = 1;
            }

            v23 = v73;
            v11 = v51;
            v14 = v78.f32[0];
          }
        }
      }

      v86 = vrndxq_f32(vmulq_n_f32(v22, v23));
      v87 = v86.f32[2] + vaddv_f32(*v86.f32);
      if (v87 != 0.0)
      {
        v88 = vrndxq_f32(vmulq_n_f32(v21, v23));
        v87 = (v88.f32[2] + vaddv_f32(*v88.f32)) / v87;
      }

      v26 = vcvtq_s32_f32(v86);
      *v26.f32 = vmovn_s32(v26);
      *v26.f32 = vand_s8(vuzp1_s8(*v26.f32, *v26.f32), 0xFFFFFFLL);
      v26.i8[3] = rintf(v23 * fminf(fmaxf(v87, 0.0), 0.99609));
      v22 = vmulq_n_f32(v22, v14);
      v21 = vmulq_n_f32(v21, v14);
      goto LABEL_99;
    }

    if (v27 != 4)
    {
      if (v27 != 6)
      {
        goto LABEL_99;
      }

      goto LABEL_41;
    }

    v16.i64[0] = 0x400000008;
    v26 = vandq_s8(vcgtq_f32(v21, v22), xmmword_298495670);
    v26.i32[0] = vaddvq_s32(v26);
    if (v26.i8[0])
    {
      if (v26.u8[0] != 7)
      {
        goto LABEL_41;
      }

      v53 = v21;
      v264 = v22;
      v265 = v21;
      v21 = v22;
      v22 = v53;
    }

    v54 = vmulq_f32(v21, v22);
    v54.i64[0] = vpaddq_f32(v54, v54).u64[0];
    v16 = vmulq_f32(v22, v22);
    v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
    *v16.f32 = vpadd_f32(*v16.f32, *v16.f32);
    v55 = fminf(vrecpes_f32(v16.f32[0]), 1.8447e19) * vpadd_f32(*v54.f32, *v54.f32).f32[0];
    v15 = vmulq_n_f32(v22, v55);
    v56 = vsubq_f32(v15, v21);
    v26 = vmulq_f32(v56, v56);
    v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
    *v26.f32 = vpadd_f32(*v26.f32, *v26.f32);
    v16.f32[0] = v14 * (v14 * 0.25);
    if (v26.f32[0] >= v16.f32[0])
    {
LABEL_41:
      if ((~v11 & 0x18000) == 0)
      {
        v16.i64[0] = 0x400000008;
        v26 = vandq_s8(vcgtq_f32(v21, v22), xmmword_298495670);
        v26.i32[0] = vaddvq_s32(v26);
        if ((v26.i8[0] & 7) == 0)
        {
          v60 = v22;
          v61 = v21;
LABEL_66:
          v89 = vmulq_f32(v61, v60);
          v89.i64[0] = vpaddq_f32(v89, v89).u64[0];
          v16 = vmulq_f32(v22, v22);
          v16.i64[0] = vpaddq_f32(v16, v16).u64[0];
          *v16.f32 = vpadd_f32(*v16.f32, *v16.f32);
          v15.f32[0] = fminf(vrecpes_f32(v16.f32[0]), 1.8447e19) * vpadd_f32(*v89.f32, *v89.f32).f32[0];
          v90 = vmulq_n_f32(v22, v15.f32[0]);
          v90.i32[3] = v21.i32[3];
          v91 = vsubq_f32(v90, v61);
          v26 = vmulq_f32(v91, v91);
          v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
          *v26.f32 = vpadd_f32(*v26.f32, *v26.f32);
          v16.f32[0] = v14 * (v14 * 0.25);
          if (v26.f32[0] < v16.f32[0])
          {
            v235 = _Q3;
            v241 = v15.f32[0];
            v224 = v61;
            v229 = v60;
            v249 = v21;
            v256 = v22;
            v92 = HIWORD(v11) & 0x1F;
            if (a3 == 2)
            {
              v93 = WeightInfoForSingleLineDualWeight(v92, 6, a4);
              *a5 = v93;
              if ((v93 & 0x1F000000000000) != 0)
              {
                v94 = v93 >> 40;
                goto LABEL_112;
              }
            }

            else
            {
              v93 = WeightInfoForSingleLineSingleWeight(v92, 6, a4);
              *a5 = v93;
              if ((v93 & 0x1F000000000000) != 0)
              {
                v94 = v93 >> 40;
                if (a3 == 1)
                {
                  v152 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v93), v7);
LABEL_113:
                  v155 = v152;
                  v156 = BYTE4(v152);
                  v93 = *a5;
                  v158 = v249;
                  v157 = v256;
                  v159 = v241;
                  if (v156 != BYTE4(*a5))
                  {
                    v160 = BYTE4(v93);
                    v153.f32[0] = ReciprocalTable[BYTE4(v93)];
                    v154.f32[0] = ReciprocalTable[v156];
                    v161 = vmlsq_lane_f32(v256, vrndxq_f32(vmulq_n_f32(v256, v160)), v153, 0);
                    v162 = vmlsq_lane_f32(v249, vrndxq_f32(vmulq_n_f32(v249, v160)), v153, 0);
                    v163 = vmlsq_lane_f32(v256, vrndxq_f32(vmulq_n_f32(v256, v156)), v154, 0);
                    v164 = vmlsq_lane_f32(v249, vrndxq_f32(vmulq_n_f32(v249, v156)), v154, 0);
                    v165 = vmlaq_f32(vmulq_f32(v235, vmulq_f32(v161, v161)), vmulq_f32(v162, v162), v235);
                    v162.i64[0] = vpaddq_f32(v165, v165).u64[0];
                    v166 = vmlaq_f32(vmulq_f32(v235, vmulq_f32(v163, v163)), vmulq_f32(v164, v164), v235);
                    v166.i64[0] = vpaddq_f32(v166, v166).u64[0];
                    *v166.f32 = vpadd_f32(*v166.f32, *v166.f32);
                    if ((vcgt_f32(*v166.f32, vpadd_f32(*v162.f32, *v162.f32)).u32[0] & (v166.f32[0] > 0.000015259)) == 0)
                    {
                      v93 = v155;
                    }
                  }

                  goto LABEL_137;
                }

LABEL_112:
                v152 = WeightInfoForSingleLineDualWeight(0, v94, v7);
                goto LABEL_113;
              }
            }

            v158 = v249;
            v157 = v256;
            v159 = v241;
LABEL_137:
            if ((v93 & 0xFE00000000) != 0)
            {
              v199 = BYTE4(v93);
            }

            else
            {
              v199 = 1;
            }

            v263 = BYTE4(v93);
            v200 = ReciprocalTable[BYTE4(v93)];
            v201 = vdupq_laneq_s32(v157, 3);
            v157.i32[3] = fminf(fmaxf(v159, 0.0), 0.99609);
            v202 = vrndxq_f32(vmulq_n_f32(v157, v199));
            v203 = vrndxq_f32(vmulq_n_f32(vextq_s8(v158, v201, 0xCuLL), v199));
            v26 = vuzp1q_s16(vcvtq_s32_f32(v202), vcvtq_s32_f32(v203));
            *v26.f32 = vmovn_s16(v26);
            v204 = vmulq_n_f32(v203, v200);
            v205 = vmulq_n_f32(v202, v200);
            v22 = v205;
            v22.i32[3] = v204.i32[1];
            v206 = v205;
            v206.i32[3] = v204.i32[0];
            v207 = v205;
            v207.i32[0] = 1.0;
            v21 = vmulq_f32(v206, vextq_s8(vdupq_laneq_s32(v207, 3), v207, 4uLL));
            v11 = v93 & 0xFFFFFFFFFFFE1FFFLL | 0x14000;
            *a5 = v11;
            if (a3 != 1)
            {
              goto LABEL_99;
            }

            if (v205.f32[0] != v205.f32[1] || v205.f32[0] != v205.f32[2])
            {
              goto LABEL_99;
            }

            v251 = v21;
            v258 = v22;
            v244 = v204;
            if (a2)
            {
              v209 = *a2;
              v209.i32[3] = 0;
            }

            else
            {
              v209 = xmmword_2984959B0;
            }

            v210 = v229;
            v211 = vmulq_f32(v224, v209);
            v225 = vadd_f32(*v211.i8, *&vextq_s8(v211, v211, 8uLL));
            v230 = vdup_lane_s32(v225, 1);
            v212 = vmulq_f32(v210, v209);
            v222 = vadd_f32(*v212.i8, *&vextq_s8(v212, v212, 8uLL));
            v223 = vdup_lane_s32(v222, 1);
            *a5 = WeightInfoForSingleLineSingleWeight(HIWORD(v93) & 0x1F, 4, v7);
            v259[0] = v251;
            v259[1] = v258;
            CheckForReducedColorFidelity(a5, v7, 1, v259, &v263, v262, v261, v235);
            if ((*a5 & 0xFE00000000) != 0)
            {
              v213 = BYTE4(*a5);
            }

            else
            {
              v213 = 1;
            }

            v214 = ReciprocalTable[BYTE4(*a5)];
            *v215.f32 = v225;
            *&v215.u32[2] = v222;
            *v216.f32 = v230;
            *&v216.u32[2] = v223;
            v217 = vaddq_f32(v215, v216);
            v218 = vextq_s8(v251, v244, 8uLL);
            v219 = vrndxq_f32(vmulq_n_f32(vtrn2q_s32(vtrn1q_s32(v218, v217), v218), v213));
            v220 = vzip1q_s32(v219, v219);
            v220.i32[2] = v219.i32[0];
            v221 = vzip2q_s32(vtrn1q_s32(v219, v219), v219);
            v26 = vuzp1q_s16(vcvtq_s32_f32(v220), vcvtq_s32_f32(v221));
            *v26.f32 = vmovn_s16(v26);
            v22 = vmulq_n_f32(v221, v214);
            v21 = vmulq_n_f32(v220, v214);
            v11 = *a5 & 0xFFFFFFFFFFFE1FFFLL | 0x8000;
            goto LABEL_122;
          }

          goto LABEL_70;
        }

        if ((v26.i8[0] & 7) == 7)
        {
          v60 = v21;
          v264 = v22;
          v265 = v21;
          v61 = v22;
          v21 = v22;
          v22 = v60;
          goto LABEL_66;
        }
      }

LABEL_70:
      if ((v11 & 0x1F000000000000) != 0)
      {
        v236 = _Q3;
        v242 = v23;
        v250 = v21;
        v257 = v22;
        if (a3 == 1)
        {
          v95 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
        }

        else
        {
          v95 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
        }

        v97 = BYTE4(v95);
        v11 = *a5;
        v21 = v250;
        v22 = v257;
        if (BYTE4(v95) == BYTE4(*a5))
        {
          v23 = v242;
        }

        else
        {
          v98 = BYTE4(v11);
          v15.f32[0] = ReciprocalTable[BYTE4(v11)];
          v96.f32[0] = ReciprocalTable[BYTE4(v95)];
          v99 = vmlsq_lane_f32(v257, vrndxq_f32(vmulq_n_f32(v257, v98)), *v15.f32, 0);
          v16 = vmlsq_lane_f32(v250, vrndxq_f32(vmulq_n_f32(v250, v98)), *v15.f32, 0);
          v100 = vmlsq_lane_f32(v257, vrndxq_f32(vmulq_n_f32(v257, BYTE4(v95))), v96, 0);
          v101 = vmlsq_lane_f32(v250, vrndxq_f32(vmulq_n_f32(v250, BYTE4(v95))), v96, 0);
          v23 = v242;
          _Q3 = vmlaq_f32(vmulq_f32(v236, vmulq_f32(v99, v99)), vmulq_f32(v16, v16), v236);
          v16.i64[0] = vpaddq_f32(_Q3, _Q3).u64[0];
          v15 = vmulq_f32(v101, v101);
          v26 = vmlaq_f32(vmulq_f32(v236, vmulq_f32(v100, v100)), v15, v236);
          v26.i64[0] = vpaddq_f32(v26, v26).u64[0];
          *v26.f32 = vpadd_f32(*v26.f32, *v26.f32);
          *v16.f32 = vcgt_f32(*v26.f32, vpadd_f32(*v16.f32, *v16.f32));
          if ((v16.i8[0] & 1) == 0 || (v16.i32[0] = 931135616, v26.f32[0] <= 0.000015259))
          {
            v12 = HIDWORD(v95);
            *a5 = v95;
            if ((v95 & 0xFE00000000) == 0)
            {
              v97 = 1;
            }

            v23 = v97;
            v11 = v95;
          }
        }
      }

      if (v12 != 0xFF)
      {
        v243 = v23;
        v259[0].i32[0] = (v11 >> 13) & 0xF;
        if (EncodeBitTransferSigned(&v264, v12, v259, &v260, *v26.i64, *v16.i64, *v15.i64, _Q3))
        {
          v11 = v11 & 0xFFFFFFFFFFFE1FFFLL | ((v259[0].i8[0] & 0xF) << 13);
          *a5 = v11;
          *v26.f32 = v260;
          v21 = v264;
          v22 = v265;
LABEL_99:
          v50 = vqtbl1_s8(v26, ShuffleColorEndpointPair_mapTable[(v11 >> 13) & 0xF]);
          *a6 = v21;
          *(a6 + 16) = vsubq_f32(v22, v21);
          goto LABEL_100;
        }

        v21 = v264;
        v22 = v265;
        v26.f32[0] = v12;
        v102 = vdupq_lane_s32(*v26.f32, 0);
        v103 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v264, v26.f32[0]), xmmword_298496500));
        v104 = vrndxq_f32(vmulq_f32(vmulq_n_f32(v265, v26.f32[0]), xmmword_298496500));
        v105 = vsubq_f32(v103, vdupq_laneq_s32(v103, 2).u64[0]);
        v106 = vsubq_f32(v104, vdupq_laneq_s32(v104, 2).u64[0]);
        v107 = vmovn_s16(vandq_s8(vuzp1q_s16(vcgezq_f32(v105), vcgezq_f32(v106)), vuzp1q_s16(vcgeq_f32(v102, v105), vcgeq_f32(v102, v106))));
        if ((vminvq_u32(vcltzq_s32(vshlq_n_s32(vmovl_u16(vand_s8(vzip1_s8(v107, v107), vzip2_s8(v107, v107))), 0x1FuLL))) & 0x80000000) != 0)
        {
          v26 = vuzp1q_s16(vcvtq_s32_f32(v105), vcvtq_s32_f32(v106));
          v170 = vsubq_f32(v105, v106);
          v171 = v170.f32[2] + vaddv_f32(*v170.f32);
          if (fabsf(v171) > 1.0)
          {
            goto LABEL_133;
          }

          v172 = v12 + 1;
          v173 = __clz(__rbit32(v172));
          v174 = v172 >> v173;
          v175 = (v172 >> v173);
          v176 = *&v26 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
          if (v173 && v175 != 1)
          {
            v177 = vminq_u16(v176, vsubq_s16(vdupq_n_s16(v12), v176));
            if (v175 == 3)
            {
              v178 = 21846;
            }

            else
            {
              v178 = 13108;
            }

            v179 = vdupq_n_s16(v178);
            v180 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v177.i8, *v179.i8), 0x10uLL), vmull_high_u16(v177, v179), 0x10uLL);
            v179.i64[0] = 0x1000100010001;
            v179.i64[1] = 0x1000100010001;
            v176 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v177, v180, vdupq_n_s16(v174)), vdupq_n_s16(v173)), vaddq_s16(v180, v180)), vbicq_s8(v179, vceqq_s16(v177, v176)));
          }

          v181 = v174 - 6;
          _ZF = v175 == 1;
          v182 = -8;
          if (!_ZF)
          {
            v182 = v181;
          }

          v183 = GetUnquantizationData_UnquantizationInfo[3 * v173 + v182];
          v184 = vshlq_u16(v176, vnegq_s16(vdupq_n_s16(WORD1(v183) & 7)));
          v185 = vandq_s8(vdupq_n_s16(BYTE1(v183)), v176);
          v186 = vshlq_u16(vmulq_s16(vshrq_n_u16(v185, 1uLL), vdupq_n_s16((v183 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v183 >> 37) & 7)));
          v187 = vandq_s8(vdupq_n_s16((v183 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v185, 0xFuLL)));
          v188 = veorq_s8(vmlaq_s16(v186, v184, vmovl_u8(vdup_n_s8(v183 >> 40))), v187);
          v186.i64[0] = 0x80008000800080;
          v186.i64[1] = 0x80008000800080;
          v189 = vorrq_s8(vshrq_n_u16(v188, 2uLL), vandq_s8(v187, v186));
          v190 = vmovl_high_u16(v189);
          v191 = vdupq_n_s32(0x4B400000u);
          v192 = vorrq_s8(vmovl_u16(*v189.i8), v191);
          v193 = vorrq_s8(v190, v191);
          v194 = vdupq_n_s32(0xCB400000);
          v195 = vsubq_f32(vaddq_f32(v192, v194), vaddq_f32(v193, v194));
          v171 = v195.f32[2] + vaddv_f32(*v195.f32);
          if (v171 != 0.0)
          {
LABEL_133:
            v196 = vmovn_s16(v26);
            if (v171 > 0.0)
            {
              v196 = vext_s8(v196, v196, 4uLL);
              v197 = v103;
              v103 = v104;
              v104 = v197;
            }

            *v26.f32 = vext_s8(v196, v196, 4uLL);
            v198 = ReciprocalTable[v12];
            v22 = vmulq_f32(vmulq_n_f32(v104, v198), xmmword_298496510);
            v21 = vmulq_f32(vmulq_n_f32(v103, v198), xmmword_298496510);
            goto LABEL_99;
          }
        }

        v23 = v243;
      }

      v71 = vrndxq_f32(vmulq_n_f32(v21, v23));
      v72 = vrndxq_f32(vmulq_n_f32(v22, v23));
      v26 = vuzp1q_s16(vcvtq_s32_f32(v71), vcvtq_s32_f32(v72));
      v108 = vsubq_f32(v71, v72);
      v109 = v108.f32[2] + vaddv_f32(*v108.f32);
      if (fabsf(v109) <= 1.0)
      {
        v110 = v12 + 1;
        v111 = __clz(__rbit32(v110));
        v112 = v110 >> v111;
        v113 = (v110 >> v111);
        v114 = *&v26 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
        if (v111 && v113 != 1)
        {
          v115 = vsubq_s16(vdupq_n_s16(v12), v114);
          if (v113 == 3)
          {
            v116 = 21846;
          }

          else
          {
            v116 = 13108;
          }

          v117 = vdupq_n_s16(v116);
          v118 = vminq_u16(v114, v115);
          v119 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v118.i8, *v117.i8), 0x10uLL), vmull_high_u16(v118, v117), 0x10uLL);
          v117.i64[0] = 0x1000100010001;
          v117.i64[1] = 0x1000100010001;
          v114 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v118, v119, vmovl_u8(vdup_n_s8(v112))), vdupq_n_s16(v111)), vaddq_s16(v119, v119)), vbicq_s8(v117, vceqq_s16(v118, v114)));
        }

        v120 = v113 - 6;
        _ZF = v113 == 1;
        v121 = -8;
        if (!_ZF)
        {
          v121 = v120;
        }

        v122 = GetUnquantizationData_UnquantizationInfo[3 * v111 + v121];
        v123 = vshlq_u16(v114, vnegq_s16(vdupq_n_s16(WORD1(v122) & 7)));
        v124 = vandq_s8(vdupq_n_s16(BYTE1(v122)), v114);
        v125 = vshlq_u16(vmulq_s16(vshrq_n_u16(v124, 1uLL), vdupq_n_s16((v122 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v122 >> 37) & 7)));
        v126 = vandq_s8(vdupq_n_s16((v122 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v124, 0xFuLL)));
        v127 = veorq_s8(vmlaq_s16(v125, v123, vmovl_u8(vdup_n_s8(v122 >> 40))), v126);
        v125.i64[0] = 0x80008000800080;
        v125.i64[1] = 0x80008000800080;
        v128 = vorrq_s8(vshrq_n_u16(v127, 2uLL), vandq_s8(v126, v125));
        v129 = vmovl_high_u16(v128);
        v130 = vdupq_n_s32(0x4B400000u);
        v131 = vorrq_s8(vmovl_u16(*v128.i8), v130);
        v132 = vorrq_s8(v129, v130);
        v133 = vdupq_n_s32(0xCB400000);
        v134 = vsubq_f32(vaddq_f32(v131, v133), vaddq_f32(v132, v133));
        v109 = v134.f32[2] + vaddv_f32(*v134.f32);
      }

      *v26.f32 = vmovn_s16(v26);
      if (v109 > 0.0)
      {
        *v26.f32 = vext_s8(*v26.f32, *v26.f32, 4uLL);
        v135 = v71;
        v71 = v72;
        v72 = v135;
      }

LABEL_98:
      v136 = ReciprocalTable[v12];
      v22 = vmulq_n_f32(v72, v136);
      v21 = vmulq_n_f32(v71, v136);
      goto LABEL_99;
    }

    v228 = v55;
    v234 = _Q3;
    v240 = v15;
    v248 = v21;
    v255 = v22;
    v57 = HIWORD(v11) & 0x1F;
    if (a3 == 2)
    {
      v58 = WeightInfoForSingleLineDualWeight(v57, 4, a4);
      *a5 = v58;
      if ((v58 & 0x1F000000000000) != 0)
      {
        v59 = v58 >> 40;
        goto LABEL_104;
      }
    }

    else
    {
      v58 = WeightInfoForSingleLineSingleWeight(v57, 4, a4);
      *a5 = v58;
      if ((v58 & 0x1F000000000000) != 0)
      {
        v59 = v58 >> 40;
        if (a3 == 1)
        {
          v137 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v58), v7);
LABEL_105:
          v140 = v137;
          v141 = BYTE4(v137);
          v58 = *a5;
          v142 = v255;
          v143 = v240;
          v144 = v228;
          if (v141 != BYTE4(*a5))
          {
            v145 = BYTE4(v58);
            v138.f32[0] = ReciprocalTable[BYTE4(v58)];
            v139.f32[0] = ReciprocalTable[v141];
            v146 = vmlsq_lane_f32(v255, vrndxq_f32(vmulq_n_f32(v255, v145)), v138, 0);
            v147 = vmlsq_lane_f32(v248, vrndxq_f32(vmulq_n_f32(v248, v145)), v138, 0);
            v148 = vmlsq_lane_f32(v255, vrndxq_f32(vmulq_n_f32(v255, v141)), v139, 0);
            v149 = vmlsq_lane_f32(v248, vrndxq_f32(vmulq_n_f32(v248, v141)), v139, 0);
            v150 = vmlaq_f32(vmulq_f32(v234, vmulq_f32(v146, v146)), vmulq_f32(v147, v147), v234);
            v147.i64[0] = vpaddq_f32(v150, v150).u64[0];
            v151 = vmlaq_f32(vmulq_f32(v234, vmulq_f32(v148, v148)), vmulq_f32(v149, v149), v234);
            v151.i64[0] = vpaddq_f32(v151, v151).u64[0];
            *v151.f32 = vpadd_f32(*v151.f32, *v151.f32);
            if ((vcgt_f32(*v151.f32, vpadd_f32(*v147.f32, *v147.f32)).u32[0] & (v151.f32[0] > 0.000015259)) == 0)
            {
              v58 = v140;
            }
          }

          goto LABEL_118;
        }

LABEL_104:
        v137 = WeightInfoForSingleLineDualWeight(0, v59, v7);
        goto LABEL_105;
      }
    }

    v142 = v255;
    v143 = v240;
    v144 = v228;
LABEL_118:
    if ((v58 & 0xFE00000000) != 0)
    {
      v167 = BYTE4(v58);
    }

    else
    {
      v167 = 1;
    }

    v168 = ReciprocalTable[BYTE4(v58)];
    v142.i32[3] = fminf(fmaxf(v144, 0.0), 0.99609);
    v169 = vrndxq_f32(vmulq_n_f32(v142, v167));
    v26 = vcvtq_s32_f32(v169);
    *v26.f32 = vmovn_s32(v26);
    *v26.f32 = vand_s8(vuzp1_s8(*v26.f32, *v26.f32), 0xFFFFFFFFLL);
    v22 = vmulq_n_f32(v169, v168);
    v22.i32[3] = 1.0;
    v21 = vmulq_n_f32(vrndxq_f32(vmulq_n_f32(v143, v167)), v168);
    v21.i32[3] = 1.0;
    v11 = v58 & 0xFFFFFFFFFFFE1FFFLL | 0xC000;
LABEL_122:
    *a5 = v11;
    goto LABEL_99;
  }

  if ((v11 & 0x1F000000000000) != 0)
  {
    v226 = v14;
    v231 = _Q3;
    v237 = v13;
    v245 = v21;
    v252 = v22;
    if (a3 == 1)
    {
      v24 = WeightInfoForSingleLineSingleWeight(0, BYTE5(v11), a4);
    }

    else
    {
      v24 = WeightInfoForSingleLineDualWeight(0, BYTE5(v11), a4);
    }

    v33 = BYTE4(v24);
    v11 = *a5;
    v21 = v245;
    v22 = v252;
    if (BYTE4(v24) == BYTE4(*a5))
    {
      v23 = v237;
      v14 = v226;
    }

    else
    {
      v34 = BYTE4(v11);
      v35 = vrndxq_f32(vmulq_n_f32(v245, v34));
      v36 = vrndxq_f32(vmulq_n_f32(v252, v34));
      v25.f32[0] = ReciprocalTable[BYTE4(v11)];
      v38 = vmulq_n_f32(v245, BYTE4(v24));
      v37 = vrndxq_f32(v38);
      v38.f32[0] = ReciprocalTable[BYTE4(v24)];
      v39 = vmlsq_lane_f32(v252, v36, v25, 0);
      v40 = vmlsq_lane_f32(v245, v35, v25, 0);
      v41 = vmlsq_lane_f32(v252, vrndxq_f32(vmulq_n_f32(v252, BYTE4(v24))), *v38.f32, 0);
      v42 = vmlsq_lane_f32(v245, v37, *v38.f32, 0);
      v14 = v226;
      v43 = vmlaq_f32(vmulq_f32(v231, vmulq_f32(v39, v39)), vmulq_f32(v40, v40), v231);
      v40.i64[0] = vpaddq_f32(v43, v43).u64[0];
      *v43.f32 = vpadd_f32(*v40.f32, *v40.f32);
      v44 = vmlaq_f32(vmulq_f32(v231, vmulq_f32(v41, v41)), vmulq_f32(v42, v42), v231);
      v40.i64[0] = vpaddq_f32(v44, v44).u64[0];
      v45 = vpadd_f32(*v40.f32, *v40.f32);
      v44.i8[0] = vcgt_f32(v45, *v43.f32).u8[0];
      v23 = v237;
      if ((v44.i8[0] & 1) == 0 || v45.f32[0] <= 0.000015259)
      {
        *a5 = v24;
        if ((v24 & 0xFE00000000) == 0)
        {
          v33 = 1;
        }

        v23 = v33;
        v11 = v24;
        v14 = v38.f32[0];
      }
    }
  }

  v46 = vrndxq_f32(vmulq_n_f32(v22, v23));
  v47 = vrndxq_f32(vmulq_n_f32(v21, v23));
  v48 = vmulq_n_f32(v47, v14);
  *a6 = v48;
  *(a6 + 16) = vmlaq_n_f32(vnegq_f32(v48), v46, v14);
  v49 = vuzp1q_s16(vcvtq_s32_f32(v47), vcvtq_s32_f32(v46));
  *v49.i8 = vmovn_s16(v49);
  v50 = vqtbl1_s8(v49, ShuffleColorEndpointPair_mapTable[(v11 >> 13) & 0xF]);
LABEL_100:
  *(a6 + 32) = v50;
}

float32x4_t Read_4x4_RGBA8_vec@<Q0>(int8x16_t *a1@<X0>, void *a2@<X1>, float32x4_t *a3@<X8>)
{
  bzero(a3, 0xAC0uLL);
  v6 = *a1;
  v7 = (a1 + *a2);
  v8.i64[0] = 0xFF000000FFLL;
  v8.i64[1] = 0xFF000000FFLL;
  v9 = *v7;
  v10 = vandq_s8(*v7, v8);
  v11 = (v7 + a2[1]);
  v12 = *(v11 + a2[2]);
  v13 = *v11;
  v14 = *&vandq_s8(*v11, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v15 = *&vandq_s8(v12, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v16 = *&vandq_s8(*a1, v8) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000);
  v8.i64[0] = 0xCB000000CB000000;
  v8.i64[1] = 0xCB000000CB000000;
  v17 = vaddq_f32(v16, v8);
  a3[8].i16[2] = 324;
  v18 = vdupq_n_s32(0x3B808081u);
  a3[8].i8[6] = -1;
  a3[8].i8[8] = -1;
  a3[9] = vmulq_f32(v17, v18);
  a3[10] = vmulq_f32(vaddq_f32((*&v10 | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  v10.i64[0] = 0xFF000000FF00;
  v10.i64[1] = 0xFF000000FF00;
  a3[11] = vmulq_f32(vaddq_f32(v14, v8), v18);
  a3[12] = vmulq_f32(vaddq_f32(v15, v8), v18);
  v19 = vdupq_n_s32(0x37808081u);
  a3[13] = vmulq_f32(vaddq_f32((*&vandq_s8(v6, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  a3[14] = vmulq_f32(vaddq_f32((*&vandq_s8(v9, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  a3[15] = vmulq_f32(vaddq_f32((*&vandq_s8(v13, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  a3[16] = vmulq_f32(vaddq_f32((*&vandq_s8(v12, v10) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v19);
  v20 = vshrq_n_u32(v13, 0x10uLL);
  v21 = vshrq_n_u32(v12, 0x10uLL);
  v22 = vshrq_n_u32(v9, 0x10uLL);
  v23 = vshrq_n_u32(v6, 0x10uLL);
  v20.i32[0] = v20.i32[0] & 0xB4FF00FF | 0x4B000000;
  v20.i32[1] = v20.i32[1] & 0xB4FF00FF | 0x4B000000;
  v20.i32[2] = v20.i32[2] & 0xB4FF00FF | 0x4B000000;
  v20.i32[3] = v20.i32[3] & 0xB4FF00FF | 0x4B000000;
  v21.i32[0] = v21.i32[0] & 0xB4FF00FF | 0x4B000000;
  v21.i32[1] = v21.i32[1] & 0xB4FF00FF | 0x4B000000;
  v21.i32[2] = v21.i32[2] & 0xB4FF00FF | 0x4B000000;
  v21.i32[3] = v21.i32[3] & 0xB4FF00FF | 0x4B000000;
  v22.i32[0] = v22.i32[0] & 0xB4FF00FF | 0x4B000000;
  v22.i32[1] = v22.i32[1] & 0xB4FF00FF | 0x4B000000;
  v22.i32[2] = v22.i32[2] & 0xB4FF00FF | 0x4B000000;
  v22.i32[3] = v22.i32[3] & 0xB4FF00FF | 0x4B000000;
  v23.i32[0] = v23.i32[0] & 0xB4FF00FF | 0x4B000000;
  v23.i32[1] = v23.i32[1] & 0xB4FF00FF | 0x4B000000;
  v23.i32[2] = v23.i32[2] & 0xB4FF00FF | 0x4B000000;
  v23.i32[3] = v23.i32[3] & 0xB4FF00FF | 0x4B000000;
  a3[17] = vmulq_f32(vaddq_f32(v23, v8), v18);
  a3[18] = vmulq_f32(vaddq_f32(v22, v8), v18);
  a3[19] = vmulq_f32(vaddq_f32(v20, v8), v18);
  a3[20] = vmulq_f32(vaddq_f32(v21, v8), v18);
  a3[21] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v6, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[22] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v9, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  result = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v12, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[23] = vmulq_f32(vaddq_f32((*&vshrq_n_u32(v13, 0x18uLL) | __PAIR128__(0x4B0000004B000000, 0x4B0000004B000000)), v8), v18);
  a3[24] = result;
  return result;
}

void EncodeASTC_4x4_RGBA_vec(float32x4_t *a1, float *a2, int8x16_t *a3)
{
  v46 = *MEMORY[0x29EDCA608];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  EncodeBasicBlock_4x4(a1, a3, a2, &v35);
  v6 = *a2;
  if (*a2 >= a2[1])
  {
    memset(v34, 0, sizeof(v34));
    v7 = vmaxnmq_f32(vmaxnmq_f32(v39, v41), vmaxnmq_f32(v40, v42));
    v8 = vminnmq_f32(vminnmq_f32(v39, v41), vminnmq_f32(v40, v42));
    v9 = vmaxnmq_f32(v7, vextq_s8(vrev64q_s32(v7), v7, 8uLL));
    v10 = vminnmq_f32(v8, vextq_s8(vrev64q_s32(v8), v8, 8uLL));
    __asm { FMOV            V6.4S, #3.0 }

    v9.i64[0] = vmlaq_f32(vmaxnmq_f32(v9, vrev64q_s32(v9)), _Q6, vminnmq_f32(v10, vrev64q_s32(v10))).u64[0];
    v9.f32[0] = 0.25 * v9.f32[0];
    v16 = vdupq_lane_s32(*v9.f32, 0);
    v17 = vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v16, v39), vcgtq_f32(v16, v40)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v16, v41), vcgtq_f32(v16, v42)), xmmword_298495640));
    v17.i16[0] = vaddvq_s16(v17);
    v18 = v17.i16[0];
    GetDualPartitionPatterns(v17.u32[0], v44);
    for (i = 0; i != 3; ++i)
    {
      EncodeStandardDualPartitionBlock(a1, v34, &v44[i], v6);
      if (v6 >= v20)
      {
        v6 = v20;
      }
    }

    if (v6 > a2[1])
    {
      if (a1[8].i8[8])
      {
        goto LABEL_8;
      }

      __asm { FMOV            V4.4S, #1.0 }

      v26 = vaddvq_s16(vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(_Q4, a1[21]), vcgtq_f32(_Q4, a1[22])), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(_Q4, a1[23]), vcgtq_f32(_Q4, a1[24])), xmmword_298495640)));
      if (v26 == 0xFFFF)
      {
LABEL_8:
        v21 = vmaxnmq_f32(vmaxnmq_f32(v35, v37), vmaxnmq_f32(v36, v38));
        v22 = vminnmq_f32(vminnmq_f32(v35, v37), vminnmq_f32(v36, v38));
        v23 = vmaxnmq_f32(v21, vextq_s8(vrev64q_s32(v21), v21, 8uLL));
        v24 = vminnmq_f32(v22, vextq_s8(vrev64q_s32(v22), v22, 8uLL));
        v23.i64[0] = vaddq_f32(vmaxnmq_f32(v23, vrev64q_s32(v23)), vminnmq_f32(v24, vrev64q_s32(v24))).u64[0];
        v23.f32[0] = 0.5 * v23.f32[0];
        v25 = vdupq_lane_s32(*v23.f32, 0);
        v26 = vaddvq_s16(vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v25, v35), vcgtq_f32(v25, v36)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v25, v37), vcgtq_f32(v25, v38)), xmmword_298495640)));
      }

      if (v26 != v18 && (v26 - 1) <= 0xFFFDu)
      {
        GetDualPartitionPatterns(v26, v45);
        for (j = 3; j != 6; ++j)
        {
          v29 = 0;
          v30 = 0;
          v31 = &v44[j];
          do
          {
            v30 |= *v31 == LOWORD(v44[v29++]);
          }

          while (v29 != 3);
          if (!v30)
          {
            EncodeStandardDualPartitionBlock(a1, v34, v31, v6);
            if (v6 >= v32)
            {
              v6 = v32;
            }
          }
        }
      }
    }

    if (v6 < *a2)
    {
      *a2 = v6;
      *v33.i64 = PackDualBlock_4x4(v34);
      *a3 = v33;
    }
  }
}

uint64_t GetDualPartitionPatterns(uint64_t result, _DWORD *a2)
{
  v2 = kDualPatternList[result];
  *a2 = kDualPartitionPatterns[v2 & 0x1FF];
  a2[1] = kDualPartitionPatterns[(v2 >> 10) & 0x1FF];
  a2[2] = kDualPartitionPatterns[(v2 >> 20) & 0x1FF];
  return result;
}

uint64_t ClampPremultiplied_4x4_vec(uint64_t result)
{
  v2 = *(result + 368);
  v1 = *(result + 384);
  v4 = *(result + 336);
  v3 = *(result + 352);
  v5 = vminnmq_f32(*(result + 144), v4);
  v6 = vminnmq_f32(*(result + 160), v3);
  v7 = vminnmq_f32(*(result + 176), v2);
  v8 = vminnmq_f32(*(result + 192), v1);
  *(result + 176) = v7;
  *(result + 192) = v8;
  *(result + 144) = v5;
  *(result + 160) = v6;
  v9 = vminnmq_f32(*(result + 208), v4);
  v10 = vminnmq_f32(*(result + 224), v3);
  v11 = vminnmq_f32(*(result + 240), v2);
  v12 = vminnmq_f32(*(result + 256), v1);
  *(result + 240) = v11;
  *(result + 256) = v12;
  *(result + 208) = v9;
  *(result + 224) = v10;
  v13 = vminnmq_f32(*(result + 272), v4);
  v14 = vminnmq_f32(*(result + 288), v3);
  v15 = vminnmq_f32(*(result + 304), v2);
  v16 = vminnmq_f32(*(result + 320), v1);
  *(result + 304) = v15;
  *(result + 320) = v16;
  v17 = *(result + 124);
  *(result + 272) = v13;
  *(result + 288) = v14;
  if (v17 < 0.0)
  {
    v18 = *(result + 32);
    if (v18)
    {
      v19 = *v18;
    }

    else
    {
      v19 = xmmword_2984959B0;
    }

    v20 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v12, *v19.f32, 1), v8, v19.f32[0]), v16, v19, 2);
    v21 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v19.f32, 1), v7, v19.f32[0]), v15, v19, 2);
    v22 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10, *v19.f32, 1), v6, v19.f32[0]), v14, v19, 2);
    v23 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v9, *v19.f32, 1), v5, v19.f32[0]), v13, v19, 2);
    *(result + 656) = v23;
    *(result + 672) = v22;
    *(result + 688) = v21;
    *(result + 704) = v20;
    v24 = vsubq_f32(v6, v22);
    v25 = vsubq_f32(v8, v20);
    v26 = vsubq_f32(v5, v23);
    v27 = vsubq_f32(v7, v21);
    v28 = vsubq_f32(v11, v21);
    v29 = vsubq_f32(v9, v23);
    v30 = vsubq_f32(v12, v20);
    v31 = vsubq_f32(v10, v22);
    v32 = vsubq_f32(v15, v21);
    v33 = vsubq_f32(v13, v23);
    v34 = vsubq_f32(v16, v20);
    v35 = vsubq_f32(v14, v22);
    v36 = vaddq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v29, v29), v26, v26), v33, v33), vmlaq_f32(vmlaq_f32(vmulq_f32(v28, v28), v27, v27), v32, v32)), vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v31, v31), v24, v24), v35, v35), vmlaq_f32(vmlaq_f32(vmulq_f32(v30, v30), v25, v25), v34, v34)));
    v36.i64[0] = vpaddq_f32(v36, v36).u64[0];
    v36.f32[0] = vrecpes_f32(vpadd_f32(*v36.f32, *v36.f32).f32[0]);
    *(result + 124) = (v36.f32[0] * 3.0) + (v36.f32[0] * 3.0);
  }

  if (*(result + 134) < 0)
  {
    v37 = vdupq_n_s32(0x3B808081u);
    v38 = vcgeq_f32(v37, v2);
    v39 = vcgeq_f32(v37, v1);
    v40 = vcgeq_f32(v37, v3);
    v41 = vcgeq_f32(v37, v4);
    *(result + 720) = v41;
    *(result + 736) = v40;
    *(result + 752) = v38;
    *(result + 768) = v39;
    v42 = vorrq_s8(vandq_s8(vuzp1q_s16(v41, v40), xmmword_298495650), vandq_s8(vuzp1q_s16(v38, v39), xmmword_298495640));
    v42.i16[0] = vaddvq_s16(v42);
    *(result + 784) = v42.i16[0];
    *(result + 134) = vaddlv_u8(vcnt_s8(*v42.i8));
  }

  v43 = vzip1q_s32(v6, v14);
  v44 = vzip1q_s32(v5, v13);
  v45 = vzip2q_s32(v6, v14);
  v46 = vzip2q_s32(v5, v13);
  v47 = vzip2q_s32(v9, v4);
  v48 = vzip1q_s32(v46, v47);
  v49 = vzip2q_s32(v46, v47);
  v50 = vzip2q_s32(v44, vuzp2q_s32(v44, v9));
  v50.i32[3] = v4.i32[1];
  v51 = vzip1q_s32(v44, v9);
  v51.i32[3] = v4.i32[0];
  *(result + 432) = v48;
  *(result + 448) = v49;
  v52 = vzip2q_s32(v43, vuzp2q_s32(v43, v10));
  v52.i32[3] = v3.i32[1];
  *(result + 400) = v51;
  *(result + 416) = v50;
  v53 = vzip1q_s32(v43, v10);
  v53.i32[3] = v3.i32[0];
  v54 = vextq_s8(vzip2q_s32(v10, v45), v45, 4uLL);
  v54.i32[3] = v3.i32[3];
  v55 = vzip2q_s32(vextq_s8(v45, v45, 8uLL), v10);
  v55.i32[3] = v3.i32[2];
  *(result + 496) = v55;
  *(result + 512) = v54;
  *(result + 464) = v53;
  *(result + 480) = v52;
  v56 = vzip1q_s32(v8, v16);
  v57 = vzip1q_s32(v7, v15);
  v58 = vzip2q_s32(v8, v16);
  v59 = vzip2q_s32(v7, v15);
  v60 = vzip2q_s32(v11, v2);
  v61 = vzip1q_s32(v59, v60);
  v62 = vzip2q_s32(v57, vuzp2q_s32(v57, v11));
  v62.i32[3] = v2.i32[1];
  v63 = vzip1q_s32(v57, v11);
  v63.i32[3] = v2.i32[0];
  v64 = vzip2q_s32(v56, vuzp2q_s32(v56, v12));
  v64.i32[3] = v1.i32[1];
  v65 = vzip1q_s32(v56, v12);
  v65.i32[3] = v1.i32[0];
  v66 = vzip2q_s32(v59, v60);
  v67 = vextq_s8(vzip2q_s32(v12, v58), v58, 4uLL);
  v67.i32[3] = v1.i32[3];
  *(result + 560) = v61;
  *(result + 576) = v66;
  v68 = vzip2q_s32(vextq_s8(v58, v58, 8uLL), v12);
  v68.i32[3] = v1.i32[2];
  *(result + 528) = v63;
  *(result + 544) = v62;
  *(result + 624) = v68;
  *(result + 640) = v67;
  *(result + 592) = v65;
  *(result + 608) = v64;
  v69 = vmulq_f32(v1, v1);
  v70 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(v5, v7), vaddq_f32(v6, v8)), vaddq_f32(vaddq_f32(v9, v11), vaddq_f32(v10, v12))), vpaddq_f32(vaddq_f32(vaddq_f32(v13, v15), vaddq_f32(v14, v16)), vaddq_f32(vaddq_f32(v4, v2), vaddq_f32(v3, v1))));
  v71 = vpaddq_f32(vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v7, v7), v5, v5), vmlaq_f32(vmulq_f32(v8, v8), v6, v6)), vaddq_f32(vmlaq_f32(vmulq_f32(v11, v11), v9, v9), vmlaq_f32(vmulq_f32(v12, v12), v10, v10))), vpaddq_f32(vaddq_f32(vmlaq_f32(vmulq_f32(v15, v15), v13, v13), vmlaq_f32(vmulq_f32(v16, v16), v14, v14)), vaddq_f32(vmlaq_f32(vmulq_f32(v2, v2), v4, v4), vmlaq_f32(v69, v3, v3))));
  v72 = vmulq_f32(v70, vdupq_n_s32(0x3D800000u));
  v73 = vmlsq_f32(v71, v72, v70);
  *(result + 16) = v72;
  v73.i64[0] = vpaddq_f32(v73, v73).u64[0];
  *(result + 120) = vpadd_f32(*v73.f32, *v73.f32).u32[0];
  if (*(result + 136) <= 0)
  {
    *(result + 136) = v72.f32[3] >= 0.99988;
  }

  return result;
}

uint64_t WeightInfoForSingleLineSingleWeight(int a1, uint64_t a2, int a3)
{
  v3 = 0;
  if (a3 > 374)
  {
    if (a3 != 375)
    {
      if (a3 != 392)
      {
        return v3;
      }

      v6 = (a2 << 40) | (WeightInfoForSingleLineSingleWeight_8x8_kSingleLineSingleWeight_8x8[((a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1) + 4] << 32) | ((a1 & 0x1F) << 48);
      v7 = ((((a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1) & 3u) << 15) | 0x2FA0000008000544;
      return v6 | v7;
    }

    v8 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v11 = a1 == 49 && a2 > 2;
    v6 = *(&WeightInfoForSingleLineSingleWeight_7x7_kSingleLineSingleWeight_7x7 + v11) & 0xFFE00000FFFE1FFFLL | (*(&WeightInfoForSingleLineSingleWeight_7x7_kSingleLineSingleWeight_7x7 + 8 * v11 + v8 + 4) << 32) | (a2 << 40) | ((a1 & 0x1F) << 48);
LABEL_16:
    v7 = (v8 & 3) << 15;
    return v6 | v7;
  }

  if (a3 == 324)
  {
    v8 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v9 = (&kSingleWeightsInfoTable + 8 * kSingleLineSingleWeightIndexTable[4 * a1 + v8]);
    v6 = *v9 & 0xFFE00000FFFE1FFFLL | (*(v9 + v8 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48);
    goto LABEL_16;
  }

  if (a3 == 342)
  {
    v4 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v5 = (&WeightInfoForSingleLineSingleWeight_6x5_kSingleLineSingleWeight_6x5 + 8 * WeightInfoForSingleLineSingleWeight_6x5_IndexTable_6x5[4 * a1 + v4]);
    return *v5 & 0xFFE00000FFFE1FFFLL | (*(v5 + v4 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v4 & 3) << 15);
  }

  return v3;
}

uint64_t EncodeBitTransferSigned(float32x4_t *a1, unsigned int a2, _DWORD *a3, int8x8_t *a4, double a5, double a6, double a7, float32x4_t a8)
{
  v8 = a1[1];
  v9 = vsubq_f32(v8, *a1);
  v9.f32[0] = v9.f32[2] + vaddv_f32(*v9.f32);
  a8.i64[0] = 0;
  v10 = vdupq_lane_s32(*&vcgtq_f32(a8, v9), 0);
  v11 = vbslq_s8(v10, *a1, v8);
  v12 = vbslq_s8(v10, v8, *a1);
  if (v9.f32[0] >= 0.0)
  {
    v13 = 1;
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  v14 = ReciprocalTable[a2];
  v15 = (v14 * 63.75) + -0.5;
  *&v15 = v15;
  v16 = vdupq_lane_s32(*&v15, 0);
  *&v15 = (v14 * 63.75);
  v17.i64[0] = 0x3F0000003F000000;
  v17.i64[1] = 0x3F0000003F000000;
  v18 = vdupq_lane_s32(*&v15, 0);
  v19 = vmulq_f32(vaddq_f32(vbicq_s8(v18, vcgtq_f32(v17, v12)), vandq_s8(v16, vcgtq_f32(v12, v11))), vdupq_n_s32(0x3B808081u));
  v20 = (2 * a2);
  v21 = vrndxq_f32(vmulq_n_f32(vsubq_f32(v11, v19), v20));
  v22 = vrndxq_f32(vmulq_n_f32(v12, v20));
  *v23.i8 = vmovn_s32(vcvtq_s32_f32(v22));
  v24 = vsub_s16(vmovn_s32(vcvtq_s32_f32(v21)), *v23.i8);
  v25 = vdup_n_s16(a2 >> 2);
  v26 = vdup_n_s16(~(a2 >> 2));
  if ((vmaxv_u16(vorr_s8(vcgt_s16(v24, v25), vcgt_s16(v26, v24))) & 0x8000) != 0)
  {
    return 0;
  }

  v23.u64[1] = v24;
  v27 = v24.i16[0] + v24.i16[1] + v24.i16[2];
  if (v27 >= 0)
  {
    v28 = v24.i16[0] + v24.i16[1] + v24.i16[2];
  }

  else
  {
    v28 = -v27;
  }

  if (v28 <= 2)
  {
    v29 = __clz(__rbit32(a2 + 1));
    v30 = ((a2 + 1) >> v29);
    v31 = vqtbl1q_s8(v23, xmmword_298496520);
    v32 = vdupq_n_s32(a2 & 0xFF80FFFF | ((((a2 + 1) >> 2) & 0x7F) << 16));
    v33 = vcgtq_u16(v31, v32);
    v34.i64[0] = 0x200000002;
    v34.i64[1] = 0x200000002;
    v35 = *&vaddq_s16(vaddq_s16(vandq_s8(vmulq_s16(v32, v34), v33), v31), vandq_s8(vdupq_n_s16((a2 + 1) >> 1), vshlq_n_s32(v33, 0x10uLL))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
    if (v29 && v30 != 1)
    {
      v36 = vsubq_s16(vdupq_n_s16(a2), v35);
      if (v30 == 3)
      {
        v37 = 21846;
      }

      else
      {
        v37 = 13108;
      }

      v38 = vdupq_n_s16(v37);
      v39 = vminq_u16(v35, v36);
      v40 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v39.i8, *v38.i8), 0x10uLL), vmull_high_u16(v39, v38), 0x10uLL);
      v38.i64[0] = 0x1000100010001;
      v38.i64[1] = 0x1000100010001;
      v35 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v39, v40, vmovl_u8(vdup_n_s8((a2 + 1) >> v29))), vdupq_n_s16(v29)), vaddq_s16(v40, v40)), vbicq_s8(v38, vceqq_s16(v39, v35)));
    }

    v41 = v30 - 6;
    _ZF = v30 == 1;
    v43 = -8;
    if (!_ZF)
    {
      v43 = v41;
    }

    v44 = GetUnquantizationData_UnquantizationInfo[3 * v29 + v43];
    v45 = vshlq_u16(v35, vnegq_s16(vdupq_n_s16(WORD1(v44) & 7)));
    v46 = vandq_s8(vdupq_n_s16(BYTE1(v44)), v35);
    v47 = vshlq_u16(vmulq_s16(vshrq_n_u16(v46, 1uLL), vdupq_n_s16((v44 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v44 >> 37) & 7)));
    v48 = vandq_s8(vdupq_n_s16((v44 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v46, 0xFuLL)));
    v49 = veorq_s8(vmlaq_s16(v47, v45, vmovl_u8(vdup_n_s8(v44 >> 40))), v48);
    v47.i64[0] = 0x80008000800080;
    v47.i64[1] = 0x80008000800080;
    v50 = vshrq_n_u16(v49, 2uLL);
    *v48.i8 = vand_s8(vshr_n_u8(vmovn_s16(vorrq_s8(v50, vandq_s8(v48, v47))), 1uLL), 0x3F3F3F3F3F3F3F3FLL);
    v47.i64[0] = 0x40004000400040;
    v47.i64[1] = 0x40004000400040;
    v51 = vsubq_s16(vmovl_u8(*v48.i8), vandq_s8(v50, v47));
    v27 = (v51.i16[1] + v51.i16[3] + v51.i16[5]);
  }

  if (v27 < 0)
  {
    v65.i64[0] = 0x3F0000003F000000;
    v65.i64[1] = 0x3F0000003F000000;
    v19 = vmulq_f32(vaddq_f32(vandq_s8(v16, vcgtq_f32(v11, v12)), vbicq_s8(v18, vcgtq_f32(v65, v11))), vdupq_n_s32(0x3B808081u));
    v21 = vrndxq_f32(vmulq_n_f32(vsubq_f32(v12, v19), v20));
    v22 = vrndxq_f32(vmulq_n_f32(v11, v20));
    *v23.i8 = vmovn_s32(vcvtq_s32_f32(v22));
    v66 = vsub_s16(vmovn_s32(vcvtq_s32_f32(v21)), *v23.i8);
    if ((vmaxv_u16(vorr_s8(vcgt_s16(v66, v25), vcgt_s16(v26, v66))) & 0x8000) != 0)
    {
      return 0;
    }

    v23.u64[1] = v66;
    v67 = v66.i16[0] + v66.i16[1] + v66.i16[2];
    if (v67 >= 0)
    {
      v68 = v66.i16[0] + v66.i16[1] + v66.i16[2];
    }

    else
    {
      v68 = -v67;
    }

    if (v68 <= 2)
    {
      v69 = __clz(__rbit32(a2 + 1));
      v70 = ((a2 + 1) >> v69);
      v71 = vqtbl1q_s8(v23, xmmword_298496520);
      v72 = vdupq_n_s32(a2 & 0xFF80FFFF | ((((a2 + 1) >> 2) & 0x7F) << 16));
      v73 = vcgtq_u16(v71, v72);
      v74.i64[0] = 0x200000002;
      v74.i64[1] = 0x200000002;
      v75 = *&vaddq_s16(vaddq_s16(vandq_s8(vmulq_s16(v72, v74), v73), v71), vandq_s8(vdupq_n_s16((a2 + 1) >> 1), vshlq_n_s32(v73, 0x10uLL))) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v69 && v70 != 1)
      {
        v76 = vsubq_s16(vdupq_n_s16(a2), v75);
        if (v70 == 3)
        {
          v77 = 21846;
        }

        else
        {
          v77 = 13108;
        }

        v78 = vdupq_n_s16(v77);
        v79 = vminq_u16(v75, v76);
        v80 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v79.i8, *v78.i8), 0x10uLL), vmull_high_u16(v79, v78), 0x10uLL);
        v78.i64[0] = 0x1000100010001;
        v78.i64[1] = 0x1000100010001;
        v75 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v79, v80, vmovl_u8(vdup_n_s8((a2 + 1) >> v69))), vdupq_n_s16(v69)), vaddq_s16(v80, v80)), vbicq_s8(v78, vceqq_s16(v79, v75)));
      }

      v81 = v70 - 6;
      _ZF = v70 == 1;
      v82 = -8;
      if (!_ZF)
      {
        v82 = v81;
      }

      v83 = GetUnquantizationData_UnquantizationInfo[3 * v69 + v82];
      v84 = vshlq_u16(v75, vnegq_s16(vdupq_n_s16(WORD1(v83) & 7)));
      v85 = vandq_s8(vdupq_n_s16(BYTE1(v83)), v75);
      v86 = vshlq_u16(vmulq_s16(vshrq_n_u16(v85, 1uLL), vdupq_n_s16((v83 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v83 >> 37) & 7)));
      v87 = vandq_s8(vdupq_n_s16((v83 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v85, 0xFuLL)));
      v88 = veorq_s8(vmlaq_s16(v86, v84, vmovl_u8(vdup_n_s8(v83 >> 40))), v87);
      v86.i64[0] = 0x80008000800080;
      v86.i64[1] = 0x80008000800080;
      v89 = vshrq_n_u16(v88, 2uLL);
      *v87.i8 = vand_s8(vshr_n_u8(vmovn_s16(vorrq_s8(v89, vandq_s8(v87, v86))), 1uLL), 0x3F3F3F3F3F3F3F3FLL);
      v86.i64[0] = 0x40004000400040;
      v86.i64[1] = 0x40004000400040;
      v90 = vsubq_s16(vmovl_u8(*v87.i8), vandq_s8(v89, v86));
      v67 = (v90.i16[1] + v90.i16[3] + v90.i16[5]);
    }

    if (v67 < 0)
    {
      return 0;
    }
  }

  v52 = vqtbl1q_s8(v23, xmmword_298496520);
  v53 = vdupq_n_s32(a2 & 0xFF80FFFF | ((((a2 + 1) >> 2) & 0x7F) << 16));
  v54 = vcgtq_u16(v52, v53);
  v55.i64[0] = 0x200000002;
  v55.i64[1] = 0x200000002;
  v56 = vaddq_s16(vaddq_s16(vandq_s8(vmulq_s16(v53, v55), v54), v52), vandq_s8(vdupq_n_s16((a2 + 1) >> 1), vshlq_n_s32(v54, 0x10uLL)));
  *a4 = vqtbl1_s8(vuzp1q_s8(v56, v56), 0x705030106040200);
  v57 = v14 * 0.5;
  v58 = vmlaq_n_f32(v19, v21, v57);
  v59 = vmaxnmq_f32(vmulq_n_f32(v22, v57), 0);
  v60 = vmaxnmq_f32(v58, 0);
  __asm { FMOV            V1.4S, #1.0 }

  *a1 = vminnmq_f32(v59, _Q1);
  a1[1] = vminnmq_f32(v60, _Q1);
  ++*a3;
  return v13;
}

unint64_t WeightInfoForSingleLineDualWeight_4x4(int a1, uint64_t a2)
{
  v2 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
  v3 = (&kSingleLineDualWeightTable + 8 * kSingleLineDualWeightIndexTable[4 * a1 + v2]);
  return *v3 & 0xFFE00000FFFE1FFFLL | (*(v3 + v2 + 4) << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((a1 & 0x1F) << 48) | ((v2 & 3) << 15);
}

void *EncodeStandardDualPartitionBlock(uint64_t a1, uint64_t a2, unsigned __int16 *a3, float a4)
{
  v1415 = *MEMORY[0x29EDCA608];
  v7 = a3[1];
  v8 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v9 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v10 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v11 = VectorMaskForBitMask[v7 & 0xF];
  if (*(a1 + 135))
  {
    v1355 = vmvnq_s8(v10);
    v1360 = vmvnq_s8(v8);
    v1343 = vmvnq_s8(v11);
    v1349 = vmvnq_s8(v9);
    v12 = *(a1 + 720);
    v13 = *(a1 + 736);
    v14 = vorrq_s8(v13, v9);
    v15 = vorrq_s8(v12, v8);
    v17 = *(a1 + 752);
    v16 = *(a1 + 768);
    v18 = vorrq_s8(v17, v10);
    v19 = vorrq_s8(v16, v11);
    v20 = vornq_s8(v13, v9);
    v21 = vornq_s8(v12, v8);
    v22 = vornq_s8(v17, v10);
    v23 = vornq_s8(v16, v11);
  }

  else
  {
    v21 = vmvnq_s8(v8);
    v20 = vmvnq_s8(v9);
    v22 = vmvnq_s8(v10);
    v15 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
    v14 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
    v18 = *(VectorMaskForBitMask + (v7 & 0xF0));
    v19 = VectorMaskForBitMask[v7 & 0xF];
    v23 = vmvnq_s8(v11);
    v1355 = v22;
    v1360 = v21;
    v1343 = v23;
    v1349 = v20;
  }

  v1309 = v15;
  v1335 = v14;
  v25 = *(a1 + 240);
  v24 = *(a1 + 256);
  v27 = *(a1 + 208);
  v26 = *(a1 + 224);
  v28 = *(a1 + 320);
  v30 = *(a1 + 272);
  v29 = *(a1 + 288);
  v31 = *(a1 + 384);
  v1365 = *(a1 + 368);
  v32 = *(a1 + 336);
  v33 = *(a1 + 352);
  v1381 = VectorMaskForBitMask[v7 & 0xF];
  v1386 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v1394 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v34 = vcltzq_s32(v8);
  v35 = vcltzq_s32(v11);
  v1390 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v36 = vcgezq_s32(v18);
  v37 = vcgezq_s32(v15);
  v38 = v19;
  v39 = vcgezq_s32(v19);
  v40 = vcgezq_s32(v14);
  v1229 = *(a1 + 304);
  v41 = v18;
  v42 = *(a1 + 144);
  v43 = *(a1 + 160);
  v45 = *(a1 + 176);
  v44 = *(a1 + 192);
  v46 = vcgezq_s32(v22);
  v47 = vcgezq_s32(v21);
  v48 = vcgezq_s32(v23);
  v49 = vcgezq_s32(v20);
  v1329 = vcltzq_s32(v10);
  v1331 = v34;
  v1323 = vcltzq_s32(v9);
  v1326 = v35;
  v1316 = vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v42, v47), vandq_s8(v45, v46)), vaddq_f32(vandq_s8(v43, v49), vandq_s8(v44, v48))), vaddq_f32(vaddq_f32(vandq_s8(v27, v47), vandq_s8(v25, v46)), vaddq_f32(vandq_s8(v26, v49), vandq_s8(v24, v48)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v30, v47), vandq_s8(v1229, v46)), vaddq_f32(vandq_s8(v29, v49), vandq_s8(v28, v48))), vaddq_f32(vaddq_f32(vandq_s8(v32, v34), vandq_s8(v1365, v1329)), vaddq_f32(vandq_s8(v33, v1323), vandq_s8(v31, v35)))));
  v50 = vorrq_s8(vandq_s8(vuzp1q_s16(v1309, v1335), xmmword_298495650), vandq_s8(vuzp1q_s16(v41, v38), xmmword_298495640));
  v50.i16[0] = vaddvq_s16(v50);
  *v50.i8 = vcnt_s8(*v50.i8);
  v50.i16[0] = vaddlv_u8(*v50.i8);
  v51 = v50.i32[0];
  v52 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v42, v37), vandq_s8(v45, v36)), vaddq_f32(vandq_s8(v43, v40), vandq_s8(v44, v39))), vaddq_f32(vaddq_f32(vandq_s8(v27, v37), vandq_s8(v25, v36)), vaddq_f32(vandq_s8(v26, v40), vandq_s8(v24, v39)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v30, v37), vandq_s8(v1229, v36)), vaddq_f32(vandq_s8(v29, v40), vandq_s8(v28, v39))), vaddq_f32(vaddq_f32(vbicq_s8(v32, v34), vbicq_s8(v1365, v1329)), vaddq_f32(vbicq_s8(v33, v1323), vbicq_s8(v31, v35))))), ReciprocalTable[(16 - v50.i16[0])]);
  v53 = vdupq_lane_s32(*v52.i8, 0);
  v1270 = v43;
  v1277 = v42;
  v54 = vsubq_f32(v42, v53);
  v55 = vsubq_f32(v43, v53);
  v1284 = v45;
  v56 = vsubq_f32(v45, v53);
  v57 = vsubq_f32(v44, v53);
  v58 = vdupq_lane_s32(*v52.i8, 1);
  v1234 = v27;
  v59 = vsubq_f32(v27, v58);
  v60 = vsubq_f32(v26, v58);
  v61 = v25;
  v62 = vsubq_f32(v25, v58);
  v63 = vsubq_f32(v24, v58);
  v64 = vdupq_laneq_s32(v52, 2);
  v65 = vsubq_f32(v30, v64);
  v1336 = v29;
  v66 = vsubq_f32(v29, v64);
  v67 = vsubq_f32(v1229, v64);
  v69 = vsubq_f32(v28, v64);
  v1204 = v52;
  v70 = vdupq_laneq_s32(v52, 3);
  v1307 = v32;
  v71 = vsubq_f32(v32, v70);
  v72 = vsubq_f32(v33, v70);
  v73 = vsubq_f32(v1365, v70);
  v74 = vsubq_f32(v31, v70);
  v75 = *(a1 + 32);
  v76 = vmulq_f32(v57, v57);
  v77 = vmulq_f32(v56, v56);
  v78 = vmulq_f32(v55, v55);
  v79 = vmulq_f32(v54, v54);
  v80 = vmulq_f32(v63, v63);
  v81 = vmulq_f32(v62, v62);
  v82 = vmulq_f32(v60, v60);
  v83 = vmulq_f32(v59, v59);
  v84 = vmulq_f32(v69, v69);
  v85 = vmulq_f32(v67, v67);
  v86 = vmulq_f32(v66, v66);
  v87 = vmulq_f32(v65, v65);
  v88 = vmulq_f32(v74, v74);
  v89 = vmulq_f32(v73, v73);
  v90 = vmulq_f32(v72, v72);
  v91 = vmulq_f32(v71, v71);
  __asm { FMOV            V5.4S, #3.0 }

  if (v75)
  {
    v96 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v80, *v75, 1), v76, COERCE_FLOAT(*v75->f32)), v84, *v75->f32, 2), v88, *v75->f32, 3);
    v97 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v82, *v75, 1), v78, COERCE_FLOAT(*v75->f32)), v86, *v75->f32, 2), v90, *v75->f32, 3), _Q5);
    v98 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v83, *v75, 1), v79, COERCE_FLOAT(*v75->f32)), v87, *v75->f32, 2), v91, *v75->f32, 3), _Q5);
    v99 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v81, *v75, 1), v77, COERCE_FLOAT(*v75->f32)), v85, *v75->f32, 2), v89, *v75->f32, 3), _Q5);
    v100 = vmulq_f32(v96, _Q5);
  }

  else
  {
    v101 = vaddq_f32(v84, vaddq_f32(v76, v80));
    v98 = vaddq_f32(v91, vaddq_f32(v87, vaddq_f32(v79, v83)));
    v97 = vaddq_f32(v90, vaddq_f32(v86, vaddq_f32(v78, v82)));
    v99 = vaddq_f32(v89, vaddq_f32(v85, vaddq_f32(v77, v81)));
    v100 = vaddq_f32(v88, v101);
  }

  v1255 = vmulq_n_f32(v1316, ReciprocalTable[v51]);
  v1261 = _Q5;
  v102 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v103 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v104 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v105 = VectorMaskForBitMask[v7 & 0xF];
  v1264 = *(a1 + 256);
  v106 = *(a1 + 224);
  if (*(a1 + 135))
  {
    v103 = vorrq_s8(*(a1 + 736), v1390);
    v102 = vorrq_s8(*(a1 + 720), v1394);
    v104 = vorrq_s8(*(a1 + 752), v1386);
    v105 = vorrq_s8(*(a1 + 768), v1381);
  }

  v107.i64[0] = 0x7F0000007FLL;
  v107.i64[1] = 0x7F0000007FLL;
  v1141 = v97;
  v1143 = v100;
  v108 = vbslq_s8(vcltzq_s32(v103), v107, v97);
  v109 = vbslq_s8(vcltzq_s32(v105), v107, v100);
  v1145 = v98;
  v1148 = v99;
  v110 = vbslq_s8(vcltzq_s32(v102), v107, v98);
  v111 = vbslq_s8(vcltzq_s32(v104), v107, v99);
  v112 = a1 + 400;
  v113 = vmaxnmq_f32(v110, v111);
  v114 = vmaxnmq_f32(v108, v109);
  v115 = vbslq_s8(vcgtq_f32(v111, v110), xmmword_298495610, xmmword_298495600);
  v116 = vmaxnmq_f32(v113, v114);
  v117 = vbslq_s8(vcgtq_f32(v114, v113), vbslq_s8(vcgtq_f32(v109, v108), xmmword_298495630, xmmword_298495620), v115);
  v109.i64[0] = vextq_s8(v116, v116, 8uLL).u64[0];
  *v108.f32 = vmaxnm_f32(*v116.i8, *v109.f32);
  v118 = vbsl_s8(vcgt_f32(*v109.f32, *v116.i8), *&vextq_s8(v117, v117, 8uLL), *v117.i8);
  if (vmvn_s8(vcge_f32(*v108.f32, vdup_lane_s32(*v108.f32, 1))).u8[0])
  {
    v119 = v118.i32[1];
  }

  else
  {
    v119 = v118.i32[0];
  }

  v120 = vdupq_lane_s32(*v1255.f32, 0);
  v121 = vsubq_f32(v44, v120);
  v122 = vsubq_f32(v1277, v120);
  v123 = vsubq_f32(v1270, v120);
  v124 = vsubq_f32(v1284, v120);
  v125 = vdupq_lane_s32(*v1255.f32, 1);
  v126 = vsubq_f32(*(a1 + 256), v125);
  v127 = vsubq_f32(v1234, v125);
  v128 = vsubq_f32(*(a1 + 224), v125);
  v129 = vsubq_f32(v61, v125);
  v130 = vdupq_laneq_s32(v1255, 2);
  v68 = *(a1 + 320);
  v131 = vsubq_f32(v68, v130);
  v132 = vsubq_f32(v30, v130);
  v133 = vsubq_f32(v1336, v130);
  v134 = vsubq_f32(v1229, v130);
  v135 = vdupq_laneq_s32(v1255, 3);
  v136 = vsubq_f32(v31, v135);
  v137 = vsubq_f32(v1307, v135);
  v138 = vsubq_f32(v33, v135);
  v139 = vsubq_f32(v1365, v135);
  v140 = vmulq_f32(v124, v124);
  v141 = vmulq_f32(v123, v123);
  v142 = vmulq_f32(v122, v122);
  v143 = vmulq_f32(v121, v121);
  v144 = vmulq_f32(v129, v129);
  v145 = vmulq_f32(v128, v128);
  v146 = vmulq_f32(v127, v127);
  v147 = vmulq_f32(v126, v126);
  v148 = vmulq_f32(v134, v134);
  v149 = vmulq_f32(v133, v133);
  v150 = vmulq_f32(v132, v132);
  v151 = vmulq_f32(v131, v131);
  v152 = vmulq_f32(v139, v139);
  v153 = vmulq_f32(v138, v138);
  v154 = vmulq_f32(v137, v137);
  v155 = vmulq_f32(v136, v136);
  if (v75)
  {
    v156 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v144, *v75, 1), v140, COERCE_FLOAT(*v75->f32)), v148, *v75->f32, 2), v152, *v75->f32, 3);
    v157 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v146, *v75, 1), v142, COERCE_FLOAT(*v75->f32)), v150, *v75->f32, 2), v154, *v75->f32, 3);
    v158 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v145, *v75, 1), v141, COERCE_FLOAT(*v75->f32)), v149, *v75->f32, 2), v153, *v75->f32, 3), v1261);
    v159 = vmulq_f32(v157, v1261);
    v160 = vmulq_f32(v156, v1261);
    v161 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v147, *v75, 1), v143, COERCE_FLOAT(*v75->f32)), v151, *v75->f32, 2), v155, *v75->f32, 3), v1261);
  }

  else
  {
    v162 = vaddq_f32(v148, vaddq_f32(v140, v144));
    v159 = vaddq_f32(v154, vaddq_f32(v150, vaddq_f32(v142, v146)));
    v158 = vaddq_f32(v153, vaddq_f32(v149, vaddq_f32(v141, v145)));
    v160 = vaddq_f32(v152, v162);
    v161 = vaddq_f32(v155, vaddq_f32(v151, vaddq_f32(v143, v147)));
  }

  v163 = *(v112 + 16 * v119);
  v164 = v1360;
  v165 = v1349;
  v166 = v1355;
  v167 = v1343;
  if (*(a1 + 135))
  {
    v165 = vorrq_s8(*(a1 + 736), v1349);
    v164 = vorrq_s8(*(a1 + 720), v1360);
    v166 = vorrq_s8(*(a1 + 752), v1355);
    v167 = vorrq_s8(*(a1 + 768), v1343);
  }

  v168.i64[0] = 0x7F0000007FLL;
  v168.i64[1] = 0x7F0000007FLL;
  v169 = vbslq_s8(vcltzq_s32(v165), v168, v158);
  v170 = vbslq_s8(vcltzq_s32(v167), v168, v161);
  v171 = vbslq_s8(vcltzq_s32(v164), v168, v159);
  v172 = vbslq_s8(vcltzq_s32(v166), v168, v160);
  v173 = vmaxnmq_f32(v171, v172);
  v174 = vmaxnmq_f32(v169, v170);
  v175 = vbslq_s8(vcgtq_f32(v172, v171), xmmword_298495610, xmmword_298495600);
  v176 = vmaxnmq_f32(v173, v174);
  v177 = vbslq_s8(vcgtq_f32(v174, v173), vbslq_s8(vcgtq_f32(v170, v169), xmmword_298495630, xmmword_298495620), v175);
  v170.i64[0] = vextq_s8(v176, v176, 8uLL).u64[0];
  *v169.f32 = vmaxnm_f32(*v176.i8, *v170.f32);
  v178 = vbsl_s8(vcgt_f32(*v170.f32, *v176.i8), *&vextq_s8(v177, v177, 8uLL), *v177.i8);
  if (vmvn_s8(vcge_f32(*v169.f32, vdup_lane_s32(*v169.f32, 1))).u8[0])
  {
    v179 = v178.i32[1];
  }

  else
  {
    v179 = v178.i32[0];
  }

  v1310 = *(v112 + 16 * v179);
  v180 = vsubq_f32(v1255, v1310);
  v181 = vsubq_f32(v1204, v163);
  v1158 = v159;
  v1161 = v158;
  v1151 = v161;
  v1155 = v160;
  if (v75)
  {
    v180 = vmulq_f32(v180, *v75->f32);
    v181 = vmulq_f32(v181, *v75->f32);
  }

  v182 = vdupq_lane_s32(*v163.f32, 0);
  v183 = vsubq_f32(v44, v182);
  v184 = vsubq_f32(v1284, v182);
  v185 = vsubq_f32(v1277, v182);
  v1193 = v182;
  v1218 = vdupq_lane_s32(*v163.f32, 1);
  v186 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v106, v1218), *v181.f32, 1), vsubq_f32(v1270, v182), v181.f32[0]);
  v1200 = vdupq_laneq_s32(v163, 2);
  v1317 = v163;
  v187 = vdupq_laneq_s32(v163, 3);
  v188 = vmlaq_laneq_f32(vmlaq_laneq_f32(v186, vsubq_f32(v1336, v1200), v181, 2), vsubq_f32(v33, v187), v181, 3);
  v1188 = v187;
  v189 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1234, v1218), *v181.f32, 1), v185, v181.f32[0]), vsubq_f32(v30, v1200), v181, 2), vsubq_f32(v1307, v187), v181, 3);
  v190 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v61, v1218), *v181.f32, 1), v184, v181.f32[0]), vsubq_f32(v1229, v1200), v181, 2), vsubq_f32(v1365, v187), v181, 3);
  v191 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1264, v1218), *v181.f32, 1), v183, v181.f32[0]), vsubq_f32(v68, v1200), v181, 2), vsubq_f32(v31, v187), v181, 3);
  v192 = *(VectorMaskForBitMask + ((v7 >> 8) & 0xF0));
  v193 = *(VectorMaskForBitMask + ((v7 >> 4) & 0xF0));
  v194 = *(VectorMaskForBitMask + (v7 & 0xF0));
  v195 = VectorMaskForBitMask[v7 & 0xF];
  if (*(a1 + 135))
  {
    v193 = vorrq_s8(*(a1 + 736), v1390);
    v192 = vorrq_s8(*(a1 + 720), v1394);
    v194 = vorrq_s8(*(a1 + 752), v1386);
    v195 = vorrq_s8(*(a1 + 768), v1381);
  }

  v196 = vcltzq_s32(v193);
  v197.i64[0] = 0x7F0000007FLL;
  v197.i64[1] = 0x7F0000007FLL;
  v198 = vbslq_s8(v196, v197, v188);
  v199 = vbslq_s8(vcltzq_s32(v195), v197, v191);
  v200 = vbslq_s8(vcltzq_s32(v192), v197, v189);
  v201 = vbslq_s8(vcltzq_s32(v194), v197, v190);
  v202 = vmaxnmq_f32(v198, v199);
  v203 = vcgtq_f32(v199, v198);
  v204 = vmaxnmq_f32(v200, v201);
  v205 = vbslq_s8(vcgtq_f32(v201, v200), xmmword_298495610, xmmword_298495600);
  v206 = vmaxnmq_f32(v204, v202);
  v207 = vbslq_s8(vcgtq_f32(v202, v204), vbslq_s8(v203, xmmword_298495630, xmmword_298495620), v205);
  v204.i64[0] = vextq_s8(v206, v206, 8uLL).u64[0];
  v208 = vbsl_s8(vcgt_f32(*v204.f32, *v206.i8), *&vextq_s8(v207, v207, 8uLL), *v207.i8);
  *v204.f32 = vmaxnm_f32(*v206.i8, *v204.f32);
  v209 = vmvn_s8(vcge_f32(*v204.f32, vdup_lane_s32(*v204.f32, 1))).u8[0];
  v210 = vdupq_lane_s32(*v1310.f32, 0);
  v211 = vdupq_lane_s32(*v1310.f32, 1);
  v212 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v106, v211), *v180.f32, 1), vsubq_f32(v1270, v210), v180.f32[0]);
  v213 = vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1234, v211), *v180.f32, 1), vsubq_f32(v1277, v210), v180.f32[0]);
  v1271 = v210;
  v1278 = v211;
  v214 = vdupq_laneq_s32(v1310, 2);
  v215 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v1264, v211), *v180.f32, 1), vsubq_f32(v44, v210), v180.f32[0]), vsubq_f32(v68, v214), v180, 2);
  v216 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(v61, v211), *v180.f32, 1), vsubq_f32(v1284, v210), v180.f32[0]), vsubq_f32(v1229, v214), v180, 2);
  v217 = vmlaq_laneq_f32(v213, vsubq_f32(v30, v214), v180, 2);
  if (v209)
  {
    v218 = v208.i32[1];
  }

  else
  {
    v218 = v208.i32[0];
  }

  v1265 = v214;
  v219 = vdupq_laneq_s32(v1310, 3);
  v220 = vmlaq_laneq_f32(vmlaq_laneq_f32(v212, vsubq_f32(v1336, v214), v180, 2), vsubq_f32(*(a1 + 352), v219), v180, 3);
  v1337 = *(v112 + 16 * v218);
  v1301 = v219;
  v221 = vmlaq_laneq_f32(v217, vsubq_f32(v1307, v219), v180, 3);
  v222 = vmlaq_laneq_f32(v216, vsubq_f32(v1365, v219), v180, 3);
  v223 = vmlaq_laneq_f32(v215, vsubq_f32(v31, v219), v180, 3);
  v224 = v1360;
  v225 = v1349;
  v226 = v1355;
  v227 = v1343;
  if (*(a1 + 135))
  {
    v225 = vorrq_s8(*(a1 + 736), v1349);
    v224 = vorrq_s8(*(a1 + 720), v1360);
    v226 = vorrq_s8(*(a1 + 752), v1355);
    v227 = vorrq_s8(*(a1 + 768), v1343);
  }

  v228 = vbslq_s8(vcltzq_s32(v225), v197, v220);
  v229 = vbslq_s8(vcltzq_s32(v227), v197, v223);
  v230 = vbslq_s8(vcltzq_s32(v224), v197, v221);
  v231 = vbslq_s8(vcltzq_s32(v226), v197, v222);
  v232 = vmaxnmq_f32(v230, v231);
  v233 = vmaxnmq_f32(v228, v229);
  v234 = vbslq_s8(vcgtq_f32(v231, v230), xmmword_298495610, xmmword_298495600);
  v235 = vmaxnmq_f32(v232, v233);
  v236 = vbslq_s8(vcgtq_f32(v233, v232), vbslq_s8(vcgtq_f32(v229, v228), xmmword_298495630, xmmword_298495620), v234);
  v234.i64[0] = vextq_s8(v235, v235, 8uLL).u64[0];
  *v229.f32 = vmaxnm_f32(*v235.i8, *v234.i8);
  v237 = vbsl_s8(vcgt_f32(*v234.i8, *v235.i8), *&vextq_s8(v236, v236, 8uLL), *v236.i8);
  if (vmvn_s8(vcge_f32(*v229.f32, vdup_lane_s32(*v229.f32, 1))).u8[0])
  {
    v238 = v237.i32[1];
  }

  else
  {
    v238 = v237.i32[0];
  }

  v1366 = *(v112 + 16 * v238);
  if (*(a1 + 124) <= 65025.0)
  {
    v239 = 0;
  }

  else
  {
    v239 = 1073741822;
  }

  v240 = 4 * (v239 - *(a1 + 136));
  DualPartitionBlockInfo = GetDualPartitionBlockInfo(4u, v240 + 16);
  v242 = vdupq_n_s32(0x3B808081u);
  v243 = vsubq_f32(v1337, v1317);
  v244.i64[0] = 0x8000000080000000;
  v244.i64[1] = 0x8000000080000000;
  __asm { FMOV            V4.4S, #1.0 }

  v246 = vdivq_f32(_Q4, vbslq_s8(vcgtq_f32(v242, vabdq_f32(v1337, v1317)), vorrq_s8(vandq_s8(v243, v244), v242), v243));
  v247 = vsubq_f32(v1366, v1310);
  v1308 = _Q4;
  v248 = vdivq_f32(_Q4, vbslq_s8(vcgtq_f32(v242, vabdq_f32(v1366, v1310)), vorrq_s8(vandq_s8(v247, v244), v242), v247));
  v249 = *(a1 + 176);
  v250 = *(a1 + 144);
  v251 = vmulq_n_f32(vsubq_f32(v250, v1193), v246.f32[0]);
  v1230 = *(a1 + 160);
  v252 = vmulq_n_f32(vsubq_f32(v250, v1271), v248.f32[0]);
  v1179 = vuzp1q_s16(v1331, v1323);
  *v250.f32 = vmovn_s16(v1179);
  v253 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v250.f32, *v251.i8)), 0x1FuLL));
  v1235 = vbslq_s8(v253, v252, v251);
  v254 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v250.f32, *v1235.f32)), 0x1FuLL));
  v1171 = vbslq_s8(v254, vmulq_n_f32(vsubq_f32(v1230, v1271), v248.f32[0]), vmulq_n_f32(vsubq_f32(v1230, v1193), v246.f32[0]));
  v255 = *(a1 + 208);
  v1208 = *(a1 + 224);
  v256 = vbslq_s8(v254, vmulq_lane_f32(vsubq_f32(v1208, v1278), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v1208, v1218), *v246.f32, 1));
  v1169 = vbslq_s8(v253, vmulq_lane_f32(vsubq_f32(v255, v1278), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v255, v1218), *v246.f32, 1));
  v257 = *(a1 + 272);
  v258 = *(a1 + 288);
  v1166 = vbslq_s8(v254, vmulq_laneq_f32(vsubq_f32(v258, v1265), v248, 2), vmulq_laneq_f32(vsubq_f32(v258, v1200), v246, 2));
  v259 = vbslq_s8(v253, vmulq_laneq_f32(vsubq_f32(v257, v1265), v248, 2), vmulq_laneq_f32(vsubq_f32(v257, v1200), v246, 2));
  v260 = *(a1 + 336);
  v261 = vbslq_s8(v253, vmulq_laneq_f32(vsubq_f32(v260, v1301), v248, 3), vmulq_laneq_f32(vsubq_f32(v260, v1188), v246, 3));
  v262 = *(a1 + 352);
  v263 = vbslq_s8(v254, vmulq_laneq_f32(vsubq_f32(v262, v1301), v248, 3), vmulq_laneq_f32(vsubq_f32(v262, v1188), v246, 3));
  v1225 = v249;
  v264 = vmulq_n_f32(vsubq_f32(v249, v1271), v248.f32[0]);
  v1175 = vuzp1q_s16(v1329, v1326);
  *v247.i8 = vmovn_s16(v1175);
  v265 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v247.i8, *v264.i8)), 0x1FuLL));
  v266 = vbslq_s8(v265, v264, vmulq_n_f32(vsubq_f32(v249, v1193), v246.f32[0]));
  v267 = *(a1 + 240);
  v268 = *(a1 + 256);
  v269 = vbslq_s8(v265, vmulq_lane_f32(vsubq_f32(v267, v1278), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v267, v1218), *v246.f32, 1));
  v270 = *(a1 + 304);
  v271 = *(a1 + 320);
  v272 = vbslq_s8(v265, vmulq_laneq_f32(vsubq_f32(v270, v1265), v248, 2), vmulq_laneq_f32(vsubq_f32(v270, v1200), v246, 2));
  v273 = *(a1 + 368);
  v274 = vbslq_s8(v265, vmulq_laneq_f32(vsubq_f32(v273, v1301), v248, 3), vmulq_laneq_f32(vsubq_f32(v273, v1188), v246, 3));
  v275 = *(a1 + 192);
  v276 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v247.i8, *v266.f32)), 0x1FuLL));
  v277 = vbslq_s8(v276, vmulq_n_f32(vsubq_f32(v275, v1271), v248.f32[0]), vmulq_n_f32(vsubq_f32(v275, v1193), v246.f32[0]));
  v278 = vbslq_s8(v276, vmulq_lane_f32(vsubq_f32(v268, v1278), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v268, v1218), *v246.f32, 1));
  v279 = vbslq_s8(v276, vmulq_laneq_f32(vsubq_f32(v271, v1265), v248, 2), vmulq_laneq_f32(vsubq_f32(v271, v1200), v246, 2));
  v280 = *(a1 + 384);
  v281 = vbslq_s8(v276, vmulq_laneq_f32(vsubq_f32(v280, v1301), v248, 3), vmulq_laneq_f32(vsubq_f32(v280, v1188), v246, 3));
  v282 = vmlaq_f32(vmulq_f32(v269, v269), v266, v266);
  v283 = vmlaq_f32(vmlaq_f32(vmulq_f32(v256, v256), v1171, v1171), v1166, v1166);
  v256.f32[0] = ReciprocalTable[BYTE4(DualPartitionBlockInfo)] * ReciprocalTable[BYTE4(DualPartitionBlockInfo)];
  v284 = vmlaq_f32(vmlaq_f32(v282, v272, v272), v274, v274);
  v285 = vdupq_lane_s32(*v256.f32, 0);
  v286 = vcgtq_f32(v285, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1169, v1169), v1235, v1235), v259, v259), v261, v261));
  v287 = vcgtq_f32(v285, vmlaq_f32(v283, v263, v263));
  v1236 = vcgtq_f32(v285, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v278, v278), v277, v277), v279, v279), v281, v281));
  v288 = vandq_s8(v1343, v1236);
  v1266 = vcgtq_f32(v285, v284);
  v1272 = v287;
  v289 = vandq_s8(v1355, v1266);
  v290 = vandq_s8(v1349, v287);
  v291 = vandq_s8(v1360, v286);
  v292 = vorrq_s8(vandq_s8(vuzp1q_s16(v291, v290), xmmword_298495650), vandq_s8(vuzp1q_s16(v289, v288), xmmword_298495640));
  v292.i16[0] = vaddvq_s16(v292);
  *v292.i8 = vcnt_s8(*v292.i8);
  v292.i16[0] = vaddlv_u8(*v292.i8);
  v293 = v292.i16[0];
  v1215 = v255;
  v1219 = v268;
  v1285 = v275;
  v1290 = v273;
  v1295 = v270;
  v1212 = v257;
  if (v292.i32[0] < 2u)
  {
    v304 = *(a1 + 336);
    v306 = v1394;
    v308 = v1386;
    v307 = v1390;
    v309 = v1381;
    v305 = v1317;
    v310 = *(a1 + 176);
    v298 = *(a1 + 160);
    v300 = *(a1 + 144);
  }

  else
  {
    v294 = vcltzq_s32(v289);
    v295 = vcltzq_s32(v291);
    v296 = vcltzq_s32(v288);
    v297 = vcltzq_s32(v290);
    v298 = *(a1 + 160);
    v299 = vandq_s8(v297, v1230);
    v300 = *(a1 + 144);
    v301 = vandq_s8(v297, v1208);
    v302 = vandq_s8(v297, v258);
    v303 = vandq_s8(v297, v262);
    v304 = *(a1 + 336);
    v305 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v295, v300), vandq_s8(v294, v1225)), vaddq_f32(v299, vandq_s8(v296, v275))), vaddq_f32(vaddq_f32(vandq_s8(v295, v255), vandq_s8(v294, v267)), vaddq_f32(v301, vandq_s8(v296, v268)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v295, v257), vandq_s8(v294, v270)), vaddq_f32(v302, vandq_s8(v296, v271))), vaddq_f32(vaddq_f32(vandq_s8(v295, v260), vandq_s8(v294, v273)), vaddq_f32(v303, vandq_s8(v296, v280))))), ReciprocalTable[v293]);
    v306 = v1394;
    v308 = v1386;
    v307 = v1390;
    v309 = v1381;
    v310 = *(a1 + 176);
  }

  v1302 = vuzp1q_s8(v1179, v1175);
  v1189 = v286;
  v311 = vandq_s8(v306, v286);
  v312 = vandq_s8(v307, v1272);
  v313 = vandq_s8(v308, v1266);
  v314 = vandq_s8(v309, v1236);
  v315 = vorrq_s8(vandq_s8(vuzp1q_s16(v311, v312), xmmword_298495650), vandq_s8(vuzp1q_s16(v313, v314), xmmword_298495640));
  v315.i16[0] = vaddvq_s16(v315);
  v316 = vcnt_s8(*v315.i8);
  v316.i16[0] = vaddlv_u8(v316);
  v1318 = v305;
  v1279 = *(a1 + 384);
  if (v316.i32[0] < 2u)
  {
    v325 = v300;
    v324 = v304;
    v323 = *(a1 + 352);
    v322 = *(a1 + 256);
    v321 = *(a1 + 192);
  }

  else
  {
    v317 = vcltzq_s32(v313);
    v318 = vcltzq_s32(v311);
    v319 = vcltzq_s32(v314);
    v320 = vcltzq_s32(v312);
    v321 = *(a1 + 192);
    v322 = *(a1 + 256);
    v323 = *(a1 + 352);
    v324 = v304;
    v1310 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v318, v300), vandq_s8(v317, v310)), vaddq_f32(vandq_s8(v320, v298), vandq_s8(v319, v275))), vaddq_f32(vaddq_f32(vandq_s8(v318, v255), vandq_s8(v317, v267)), vaddq_f32(vandq_s8(v320, v1208), vandq_s8(v319, v268)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v318, v1212), vandq_s8(v317, v270)), vaddq_f32(vandq_s8(v320, v258), vandq_s8(v319, v271))), vaddq_f32(vaddq_f32(vandq_s8(v318, v304), vandq_s8(v317, v1290)), vaddq_f32(vandq_s8(v320, v323), vandq_s8(v319, v280))))), ReciprocalTable[v316.u16[0]]);
    v325 = v300;
  }

  v326 = vdupq_lane_s32(*v1337.f32, 0);
  v327 = vdupq_lane_s32(*v1366.f32, 0);
  v328 = vsubq_f32(v327, v321);
  v329 = vmulq_n_f32(v328, v248.f32[0]);
  v330 = vextq_s8(v1302, v1302, 8uLL).u64[0];
  v331 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v330, *v328.f32)), 0x1FuLL));
  v1184 = vbslq_s8(v331, v329, vmulq_n_f32(vsubq_f32(v326, v321), v246.f32[0]));
  v1201 = v330;
  v332 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v330, *v331.i8)), 0x1FuLL));
  v1180 = vbslq_s8(v332, vmulq_n_f32(vsubq_f32(v327, v310), v248.f32[0]), vmulq_n_f32(vsubq_f32(v326, v310), v246.f32[0]));
  v333 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1302.i8, *v331.i8)), 0x1FuLL));
  v334 = vbslq_s8(v333, vmulq_n_f32(vsubq_f32(v327, v298), v248.f32[0]), vmulq_n_f32(vsubq_f32(v326, v298), v246.f32[0]));
  v335 = vdupq_lane_s32(*v1337.f32, 1);
  v336 = vdupq_lane_s32(*v1366.f32, 1);
  v337 = vbslq_s8(v333, vmulq_lane_f32(vsubq_f32(v336, v1208), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v335, v1208), *v246.f32, 1));
  v338 = vbslq_s8(v332, vmulq_lane_f32(vsubq_f32(v336, v267), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v335, v267), *v246.f32, 1));
  v339 = vbslq_s8(v331, vmulq_lane_f32(vsubq_f32(v336, v322), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v335, v322), *v246.f32, 1));
  v340 = vdupq_laneq_s32(v1337, 2);
  v341 = vdupq_laneq_s32(v1366, 2);
  v1194 = *(a1 + 288);
  v342 = v322;
  v343 = vbslq_s8(v333, vmulq_laneq_f32(vsubq_f32(v341, v258), v248, 2), vmulq_laneq_f32(vsubq_f32(v340, v258), v246, 2));
  v344 = vbslq_s8(v332, vmulq_laneq_f32(vsubq_f32(v341, v1295), v248, 2), vmulq_laneq_f32(vsubq_f32(v340, v1295), v246, 2));
  v345 = vdupq_laneq_s32(v1337, 3);
  v346 = vbslq_s8(v331, vmulq_laneq_f32(vsubq_f32(v341, v271), v248, 2), vmulq_laneq_f32(vsubq_f32(v340, v271), v246, 2));
  v347 = vdupq_laneq_s32(v1366, 3);
  v348 = vbslq_s8(v331, vmulq_laneq_f32(vsubq_f32(v347, v280), v248, 3), vmulq_laneq_f32(vsubq_f32(v345, v280), v246, 3));
  v349 = vbslq_s8(v332, vmulq_laneq_f32(vsubq_f32(v347, v1290), v248, 3), vmulq_laneq_f32(vsubq_f32(v345, v1290), v246, 3));
  v350 = vbslq_s8(v333, vmulq_laneq_f32(vsubq_f32(v347, v323), v248, 3), vmulq_laneq_f32(vsubq_f32(v345, v323), v246, 3));
  v351 = vmulq_n_f32(vsubq_f32(v326, v325), v246.f32[0]);
  v352 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v1302.i8, *v348.f32)), 0x1FuLL));
  v353 = vbslq_s8(v352, vmulq_n_f32(vsubq_f32(v327, v325), v248.f32[0]), v351);
  v354 = vbslq_s8(v352, vmulq_lane_f32(vsubq_f32(v336, v1215), *v248.f32, 1), vmulq_lane_f32(vsubq_f32(v335, v1215), *v246.f32, 1));
  v355 = vbslq_s8(v352, vmulq_laneq_f32(vsubq_f32(v341, v1212), v248, 2), vmulq_laneq_f32(vsubq_f32(v340, v1212), v246, 2));
  v356 = vbslq_s8(v352, vmulq_laneq_f32(vsubq_f32(v347, v324), v248, 3), vmulq_laneq_f32(vsubq_f32(v345, v324), v246, 3));
  v357 = vuzp1q_s8(vuzp1q_s16(v1189, v1272), vuzp1q_s16(v1266, v1236));
  v358 = vcgtq_f32(v285, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v339, v339), v1184, v1184), v346, v346), v348, v348));
  v359 = vcgtq_f32(v285, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v338, v338), v1180, v1180), v344, v344), v349, v349));
  v360 = vcgtq_f32(v285, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v337, v337), v334, v334), v343, v343), v350, v350));
  v361 = vcgtq_f32(v285, vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v354, v354), v353, v353), v355, v355), v356, v356));
  v362 = vuzp1q_s8(vuzp1q_s16(v361, v360), vuzp1q_s16(v359, v358));
  v363 = vandq_s8(v1343, v358);
  v364 = vandq_s8(v1355, v359);
  v365 = vandq_s8(v1349, v360);
  v366 = vandq_s8(v1360, v361);
  v367 = vorrq_s8(vandq_s8(vuzp1q_s16(v366, v365), xmmword_298495650), vandq_s8(vuzp1q_s16(v364, v363), xmmword_298495640));
  v367.i16[0] = vaddvq_s16(v367);
  v368 = vcnt_s8(*v367.i8);
  v368.i16[0] = vaddlv_u8(v368);
  if (v368.i32[0] < 2u)
  {
    v377 = v1394;
    v379 = v1386;
    v378 = v1390;
    v380 = v1381;
    v381 = *(a1 + 176);
    v373 = *(a1 + 160);
    v376 = *(a1 + 368);
    v375 = *(a1 + 304);
  }

  else
  {
    v369 = vcltzq_s32(v364);
    v370 = vcltzq_s32(v366);
    v371 = vcltzq_s32(v363);
    v372 = vcltzq_s32(v365);
    v373 = *(a1 + 160);
    v374 = vandq_s8(v369, v267);
    v376 = *(a1 + 368);
    v375 = *(a1 + 304);
    v1337 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v370, v325), vandq_s8(v369, v1225)), vaddq_f32(vandq_s8(v372, v1230), vandq_s8(v371, v1285))), vaddq_f32(vaddq_f32(vandq_s8(v370, v1215), v374), vaddq_f32(vandq_s8(v372, v1208), vandq_s8(v371, v342)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v370, v1212), vandq_s8(v369, v1295)), vaddq_f32(vandq_s8(v372, v1194), vandq_s8(v371, v271))), vaddq_f32(vaddq_f32(vandq_s8(v370, v324), vandq_s8(v369, v1290)), vaddq_f32(vandq_s8(v372, v323), vandq_s8(v371, v1279))))), ReciprocalTable[v368.u16[0]]);
    v377 = v1394;
    v379 = v1386;
    v378 = v1390;
    v380 = v1381;
    v381 = *(a1 + 176);
  }

  v382 = vorrq_s8(v362, v357);
  v383 = vandq_s8(v377, v361);
  v384 = vandq_s8(v378, v360);
  v385 = vandq_s8(v379, v359);
  v386 = vandq_s8(v380, v358);
  v387 = vorrq_s8(vandq_s8(vuzp1q_s16(v383, v384), xmmword_298495650), vandq_s8(vuzp1q_s16(v385, v386), xmmword_298495640));
  v387.i16[0] = vaddvq_s16(v387);
  v388 = vcnt_s8(*v387.i8);
  v388.i16[0] = vaddlv_u8(v388);
  if (v388.i32[0] >= 2u)
  {
    v389 = vcltzq_s32(v385);
    v390 = vcltzq_s32(v383);
    v391 = vcltzq_s32(v386);
    v392 = vcltzq_s32(v384);
    v1366 = vmulq_n_f32(vpaddq_f32(vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v390, v325), vandq_s8(v389, v381)), vaddq_f32(vandq_s8(v392, v373), vandq_s8(v391, v1285))), vaddq_f32(vaddq_f32(vandq_s8(v390, v1215), vandq_s8(v389, *(a1 + 240))), vaddq_f32(vandq_s8(v392, v1208), vandq_s8(v391, v1219)))), vpaddq_f32(vaddq_f32(vaddq_f32(vandq_s8(v390, v1212), vandq_s8(v389, v375)), vaddq_f32(vandq_s8(v392, v1194), vandq_s8(v391, v271))), vaddq_f32(vaddq_f32(vandq_s8(v390, v324), vandq_s8(v389, v376)), vaddq_f32(vandq_s8(v392, v323), vandq_s8(v391, v1279))))), ReciprocalTable[v388.u16[0]]);
  }

  v393 = vorrq_s8(vandq_s8(vcltzq_s16(vshlq_n_s16(vmovl_u8(*v382.i8), 0xFuLL)), xmmword_298495650), vandq_s8(vcltzq_s16(vshlq_n_s16(vmovl_high_u8(v382), 0xFuLL)), xmmword_298495640));
  v393.i16[0] = vaddvq_s16(v393);
  *v393.i8 = vcnt_s8(*v393.i8);
  v393.i16[0] = vaddlv_u8(*v393.i8);
  v394 = GetDualPartitionBlockInfo(v393.u32[0], v240 + 16);
  v397 = v394;
  v398 = HIBYTE(v394);
  v399 = *(a1 + 784);
  v1291 = vcgezq_s32(v1386);
  v1296 = vcgezq_s32(v1381);
  v400 = vcgezq_s32(v1390);
  v1280 = vcgezq_s32(v1394);
  v1286 = v400;
  if ((v399 & ~v7) == 0)
  {
    v402 = xmmword_298495610;
    v401 = xmmword_298495600;
    v404 = xmmword_298495630;
    v403 = xmmword_298495620;
    v405 = v1310;
    v406 = v1318;
    v407 = v1337;
    goto LABEL_67;
  }

  v402 = xmmword_298495610;
  v401 = xmmword_298495600;
  v404 = xmmword_298495630;
  v403 = xmmword_298495620;
  v405 = v1310;
  v406 = v1318;
  v407 = v1337;
  if (!*(a1 + 135))
  {
    if (v1318.f32[3] >= v1337.f32[3])
    {
      v407 = 0uLL;
      goto LABEL_67;
    }

    goto LABEL_59;
  }

  v408 = vsubq_f32(v1337, v1318);
  v400.i32[0] = v408.i32[3];
  if (v408.f32[3] != 0.0)
  {
    goto LABEL_51;
  }

  v395.i32[0] = v399 & ~v7;
  v409 = vcnt_s8(*v395.f32);
  v409.i16[0] = vaddlv_u8(v409);
  v410 = v409.i32[0];
  v396 = vandq_s8(vuzp1q_s16(vandq_s8(*(a1 + 720), v1360), vandq_s8(*(a1 + 736), v1349)), xmmword_298495650);
  v395 = vorrq_s8(v396, vandq_s8(vuzp1q_s16(vandq_s8(*(a1 + 752), v1355), vandq_s8(*(a1 + 768), v1343)), xmmword_298495640));
  v395.i16[0] = vaddvq_s16(v395);
  *v395.f32 = vcnt_s8(*v395.f32);
  v395.i16[0] = vaddlv_u8(*v395.f32);
  if (15 - v410 == v395.i32[0])
  {
LABEL_59:
    v406 = 0uLL;
    goto LABEL_67;
  }

  v395.i64[0] = 0x3F0000003FLL;
  v395.i64[1] = 0x3F0000003FLL;
  v406 = vnegq_f32(v395);
  v407 = v406;
LABEL_51:
  v395.i64[0] = 0;
  v400 = vdupq_lane_s32(*&vcgtq_f32(v395, v400), 0);
  v411 = vbslq_s8(v400, vnegq_f32(v408), v408);
  v412 = vbslq_s8(v400, v407, v406);
  *v396.i32 = v412.f32[3] / v411.f32[3];
  v413 = vmlsq_lane_f32(v412, v411, *v396.i8, 0);
  v395 = vandq_s8(vcgtq_f32(v413, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v413));
  if ((vminvq_u32(v395) & 0x80000000) != 0)
  {
    v407 = vbslq_s8(v400, v406, v407);
    v400.i32[1] = v1308.i32[1];
    v406 = vminnmq_f32(vmaxnmq_f32(v413, 0), v1308);
  }

  else
  {
    v414.i64[0] = 0x7F0000007FLL;
    v414.i64[1] = 0x7F0000007FLL;
    v415 = vandq_s8(v1331, v414);
    v416 = vandq_s8(v1323, v414);
    v417 = vandq_s8(v1329, v414);
    v418 = vandq_s8(v1326, v414);
    v419 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1302.i8, *v415.i8)), 0x1FuLL)), v414, v1141);
    v420 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v1201, *v415.i8)), 0x1FuLL)), v414, v1143);
    v421 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v1302.i8, *v415.i8)), 0x1FuLL)), v414, v1145);
    v422 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v1201, *v415.i8)), 0x1FuLL)), v414, v1148);
    v423 = vmaxnmq_f32(v421, v422);
    v424 = vmaxnmq_f32(v419, v420);
    v425 = vbslq_s8(vcgtq_f32(v420, v419), xmmword_298495630, xmmword_298495620);
    v426 = vmaxnmq_f32(v423, v424);
    v427 = vbslq_s8(vcgtq_f32(v424, v423), v425, vbslq_s8(vcgtq_f32(v422, v421), xmmword_298495610, xmmword_298495600));
    v425.i64[0] = vextq_s8(v426, v426, 8uLL).u64[0];
    *v421.f32 = vmaxnm_f32(*v426.i8, *v425.i8);
    v428 = vbsl_s8(vcgt_f32(*v425.i8, *v426.i8), *&vextq_s8(v427, v427, 8uLL), *v427.i8);
    if (vmvn_s8(vcge_f32(*v421.f32, vdup_lane_s32(*v421.f32, 1))).u8[0])
    {
      v429 = v428.i32[1];
    }

    else
    {
      v429 = v428.i32[0];
    }

    v430 = *(v112 + 16 * v429);
    v431 = *(a1 + 32);
    v432 = vsubq_f32(v1204, v430);
    if (v431)
    {
      v433 = *v431;
    }

    else
    {
      v433 = vdupq_n_s32(0x3EAAAAABu);
    }

    v434 = vmulq_f32(v432, v433);
    v435 = vdupq_lane_s32(*v430.f32, 0);
    v436 = vdupq_lane_s32(*v430.f32, 1);
    v437 = vdupq_laneq_s32(v430, 2);
    v438 = vdupq_laneq_s32(v430, 3);
    v439 = vorrq_s8(vandq_s8(v1296, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 256), v436), *v434.f32, 1), vsubq_f32(*(a1 + 192), v435), v434.f32[0]), vsubq_f32(*(a1 + 320), v437), v434, 2), vsubq_f32(*(a1 + 384), v438), v434, 3)), v418);
    v440 = vorrq_s8(vandq_s8(v1286, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 224), v436), *v434.f32, 1), vsubq_f32(*(a1 + 160), v435), v434.f32[0]), vsubq_f32(*(a1 + 288), v437), v434, 2), vsubq_f32(*(a1 + 352), v438), v434, 3)), v416);
    v441 = vorrq_s8(vandq_s8(v1291, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 240), v436), *v434.f32, 1), vsubq_f32(*(a1 + 176), v435), v434.f32[0]), vsubq_f32(*(a1 + 304), v437), v434, 2), vsubq_f32(*(a1 + 368), v438), v434, 3)), v417);
    v442 = vorrq_s8(vandq_s8(v1280, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 208), v436), *v434.f32, 1), vsubq_f32(*(a1 + 144), v435), v434.f32[0]), vsubq_f32(*(a1 + 272), v437), v434, 2), vsubq_f32(*(a1 + 336), v438), v434, 3)), v415);
    v443 = vmaxnmq_f32(v442, v441);
    v444 = vmaxnmq_f32(v440, v439);
    v445 = vbslq_s8(vcgtq_f32(v441, v442), xmmword_298495610, xmmword_298495600);
    v446 = vmaxnmq_f32(v443, v444);
    v447 = vbslq_s8(vcgtq_f32(v444, v443), vbslq_s8(vcgtq_f32(v439, v440), xmmword_298495630, xmmword_298495620), v445);
    v440.i64[0] = vextq_s8(v446, v446, 8uLL).u64[0];
    *v439.f32 = vmaxnm_f32(*v446.i8, *v440.f32);
    v448 = vbsl_s8(vcgt_f32(*v440.f32, *v446.i8), *&vextq_s8(v447, v447, 8uLL), *v447.i8);
    if (vmvn_s8(vcge_f32(*v439.f32, vdup_lane_s32(*v439.f32, 1))).u8[0])
    {
      v449 = v448.i32[1];
    }

    else
    {
      v449 = v448.i32[0];
    }

    v450 = *(v112 + 16 * v449);
    v395 = v430;
    v395.i32[3] = 0;
    v451 = v450;
    v451.i32[3] = 0;
    v400 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v450, v430)), 3)), 0x1FuLL));
    v407 = vbslq_s8(v400, v450, v451);
    v406 = vbslq_s8(v400, v395, v430);
    v405 = v1310;
  }

LABEL_67:
  v452 = v399 & v7;
  if (!v452)
  {
    goto LABEL_89;
  }

  if (!*(a1 + 135))
  {
    if (v405.f32[3] >= v1366.f32[3])
    {
      v1366 = 0u;
      goto LABEL_89;
    }

    goto LABEL_81;
  }

  v453 = vsubq_f32(v1366, v405);
  v400.i32[0] = v453.i32[3];
  if (v453.f32[3] == 0.0)
  {
    v395.i32[0] = v452;
    v454 = vcnt_s8(*v395.f32);
    v454.i16[0] = vaddlv_u8(v454);
    v455 = v454.i32[0];
    v454.i32[0] = v7;
    v456 = vcnt_s8(v454);
    v456.i16[0] = vaddlv_u8(v456);
    if (v456.i32[0] - 1 != v455)
    {
      v457.i64[0] = 0x3F0000003FLL;
      v457.i64[1] = 0x3F0000003FLL;
      v405 = vnegq_f32(v457);
      v1366 = v405;
      goto LABEL_72;
    }

LABEL_81:
    v405 = 0uLL;
    goto LABEL_89;
  }

LABEL_72:
  if (v453.f32[3] < 0.0)
  {
    v458 = v405;
    v453 = vnegq_f32(v453);
    v400.i32[0] = v453.i32[3];
    v405 = v1366;
    v1366 = v458;
  }

  v400.f32[0] = v405.f32[3] / v400.f32[0];
  v459 = vmlsq_lane_f32(v405, v453, *v400.f32, 0);
  if ((vminvq_u32(vandq_s8(vcgtq_f32(v459, vdupq_n_s32(0xBB800000)), vcgtq_f32(vdupq_n_s32(0x3F808081u), v459))) & 0x80000000) != 0)
  {
    v405 = vminnmq_f32(vmaxnmq_f32(v459, 0), v1308);
  }

  else
  {
    v460.i64[0] = 0x7F0000007FLL;
    v460.i64[1] = 0x7F0000007FLL;
    v461 = vandq_s8(v1291, v460);
    v462 = vandq_s8(v1280, v460);
    v463 = vandq_s8(v1296, v460);
    v464 = vandq_s8(v1286, v460);
    v465 = vorrq_s8(vandq_s8(v1323, v1161), v464);
    v466 = vorrq_s8(vandq_s8(v1326, v1151), v463);
    v467 = vorrq_s8(vandq_s8(v1331, v1158), v462);
    v468 = vorrq_s8(vandq_s8(v1329, v1155), v461);
    v469 = vmaxnmq_f32(v467, v468);
    v470 = vmaxnmq_f32(v465, v466);
    v471 = vbslq_s8(vcgtq_f32(v468, v467), v402, v401);
    v472 = vbslq_s8(vcgtq_f32(v466, v465), v404, v403);
    v473 = vmaxnmq_f32(v469, v470);
    v474 = vbslq_s8(vcgtq_f32(v470, v469), v472, v471);
    v472.i64[0] = vextq_s8(v473, v473, 8uLL).u64[0];
    *v465.f32 = vmaxnm_f32(*v473.i8, *v472.i8);
    v475 = vbsl_s8(vcgt_f32(*v472.i8, *v473.i8), *&vextq_s8(v474, v474, 8uLL), *v474.i8);
    if (vmvn_s8(vcge_f32(*v465.f32, vdup_lane_s32(*v465.f32, 1))).u8[0])
    {
      v476 = v475.i32[1];
    }

    else
    {
      v476 = v475.i32[0];
    }

    v477 = *(v112 + 16 * v476);
    v478 = *(a1 + 32);
    v479 = vsubq_f32(v1255, v477);
    v480 = v406;
    if (v478)
    {
      v481 = *v478;
    }

    else
    {
      v481 = vdupq_n_s32(0x3EAAAAABu);
    }

    v482 = vmulq_f32(v479, v481);
    v483 = vdupq_lane_s32(*v477.f32, 0);
    v484 = vdupq_lane_s32(*v477.f32, 1);
    v485 = vdupq_laneq_s32(v477, 2);
    v486 = vdupq_laneq_s32(v477, 3);
    v487 = vorrq_s8(vandq_s8(v1326, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 256), v484), *v482.f32, 1), vsubq_f32(*(a1 + 192), v483), v482.f32[0]), vsubq_f32(*(a1 + 320), v485), v482, 2), vsubq_f32(*(a1 + 384), v486), v482, 3)), v463);
    v488 = vorrq_s8(vandq_s8(v1323, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 224), v484), *v482.f32, 1), vsubq_f32(*(a1 + 160), v483), v482.f32[0]), vsubq_f32(*(a1 + 288), v485), v482, 2), vsubq_f32(*(a1 + 352), v486), v482, 3)), v464);
    v489 = vorrq_s8(vandq_s8(v1329, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 240), v484), *v482.f32, 1), vsubq_f32(*(a1 + 176), v483), v482.f32[0]), vsubq_f32(*(a1 + 304), v485), v482, 2), vsubq_f32(*(a1 + 368), v486), v482, 3)), v461);
    v490 = vorrq_s8(vandq_s8(v1331, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(vsubq_f32(*(a1 + 208), v484), *v482.f32, 1), vsubq_f32(*(a1 + 144), v483), v482.f32[0]), vsubq_f32(*(a1 + 272), v485), v482, 2), vsubq_f32(*(a1 + 336), v486), v482, 3)), v462);
    v491 = vmaxnmq_f32(v490, v489);
    v492 = vmaxnmq_f32(v488, v487);
    v493 = vbslq_s8(vcgtq_f32(v489, v490), v402, v401);
    v494 = vbslq_s8(vcgtq_f32(v487, v488), v404, v403);
    v495 = vmaxnmq_f32(v491, v492);
    v496 = vbslq_s8(vcgtq_f32(v492, v491), v494, v493);
    v494.i64[0] = vextq_s8(v495, v495, 8uLL).u64[0];
    *v487.f32 = vmaxnm_f32(*v495.i8, *v494.i8);
    v497 = vbsl_s8(vcgt_f32(*v494.i8, *v495.i8), *&vextq_s8(v496, v496, 8uLL), *v496.i8);
    if (vmvn_s8(vcge_f32(*v487.f32, vdup_lane_s32(*v487.f32, 1))).u8[0])
    {
      v498 = v497.i32[1];
    }

    else
    {
      v498 = v497.i32[0];
    }

    v499 = *(v112 + 16 * v498);
    v500 = v477;
    v500.i32[3] = 0;
    v501 = v499;
    v501.i32[3] = 0;
    v502 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vdup_lane_s16(vmovn_s32(vcgtq_f32(v499, v477)), 3)), 0x1FuLL));
    v1366 = vbslq_s8(v502, v499, v501);
    v405 = vbslq_s8(v502, v500, v477);
    v406 = v480;
  }

LABEL_89:
  v1413 = 0u;
  v1412 = 0u;
  v1411 = 0u;
  v1410 = 0u;
  v1409 = 0u;
  v1408 = 0u;
  v1407 = 0u;
  v1406 = 0u;
  v1405 = 0u;
  v1404 = 0u;
  v503 = (v394 >> 25) & 0xF;
  if (v398 <= 1)
  {
    v504 = 1;
  }

  else
  {
    v504 = HIBYTE(v394);
  }

  v505 = ReciprocalTable[v398];
  v506 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v406, 0), v1308), v504));
  v507 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v407, 0), v1308), v504));
  v508 = vmaxnmq_f32(v405, 0);
  v405.i64[1] = v1366.i64[1];
  v509 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(v508, v1308), v504));
  v510 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1366, 0), v1308), v504));
  if (v503 > 4)
  {
    v514 = vsubq_f32(v506, v507);
    v514.f32[0] = v514.f32[2] + vaddv_f32(*v514.f32);
    if (fabsf(v514.f32[0]) <= 1.0)
    {
      v515 = __clz(__rbit32(v398 + 1));
      v516 = ((v398 + 1) >> v515);
      v517 = *&vuzp1q_s16(vcvtq_s32_f32(v506), vcvtq_s32_f32(v507)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v515 && v516 != 1)
      {
        v518 = vsubq_s16(vdupq_n_s16(v398), v517);
        if (v516 == 3)
        {
          v519 = 21846;
        }

        else
        {
          v519 = 13108;
        }

        v520 = vdupq_n_s16(v519);
        v521 = vminq_u16(v517, v518);
        v522 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v521.i8, *v520.i8), 0x10uLL), vmull_high_u16(v521, v520), 0x10uLL);
        v520.i64[0] = 0x1000100010001;
        v520.i64[1] = 0x1000100010001;
        v517 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v521, v522, vmovl_u8(vdup_n_s8((v398 + 1) >> v515))), vdupq_n_s16(v515)), vaddq_s16(v522, v522)), vbicq_s8(v520, vceqq_s16(v521, v517)));
      }

      v523 = v516 - 6;
      _ZF = v516 == 1;
      v524 = -8;
      if (!_ZF)
      {
        v524 = v523;
      }

      v525 = GetUnquantizationData_UnquantizationInfo[3 * v515 + v524];
      v526 = vshlq_u16(v517, vnegq_s16(vdupq_n_s16(WORD1(v525) & 7)));
      v527 = vandq_s8(vdupq_n_s16(BYTE1(v525)), v517);
      v528 = vshlq_u16(vmulq_s16(vshrq_n_u16(v527, 1uLL), vdupq_n_s16((v525 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v525 >> 37) & 7)));
      v529 = vandq_s8(vdupq_n_s16((v525 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v527, 0xFuLL)));
      v530 = veorq_s8(vmlaq_s16(v528, v526, vmovl_u8(vdup_n_s8(v525 >> 40))), v529);
      v528.i64[0] = 0x80008000800080;
      v528.i64[1] = 0x80008000800080;
      v531 = vorrq_s8(vshrq_n_u16(v530, 2uLL), vandq_s8(v529, v528));
      v532 = vdupq_n_s32(0x4B400000u);
      v533 = vdupq_n_s32(0xCB400000);
      v405 = vaddq_f32(vorrq_s8(vmovl_u16(*v531.i8), v532), v533);
      v514 = vsubq_f32(v405, vaddq_f32(vorrq_s8(vmovl_high_u16(v531), v532), v533));
      v514.f32[0] = v514.f32[2] + vaddv_f32(*v514.f32);
    }

    v405.i64[0] = 0;
    v534 = vdupq_lane_s32(*&vcgtq_f32(v514, v405), 0);
    v535 = vbslq_s8(v534, v507, v506);
    v536 = vbslq_s8(v534, v506, v507);
    v537 = vuzp1q_s16(vcvtq_s32_f32(v535), vcvtq_s32_f32(v536));
    *v537.i8 = vmovn_s16(v537);
    v538 = ShuffleColorEndpointPair_mapTable[v503];
    v539 = vqtbl1_s8(v537, v538);
    v540 = vsubq_f32(v509, v510);
    v540.f32[0] = v540.f32[2] + vaddv_f32(*v540.f32);
    if (fabsf(v540.f32[0]) <= 1.0)
    {
      v541 = __clz(__rbit32(v398 + 1));
      v542 = ((v398 + 1) >> v541);
      v543 = *&vuzp1q_s16(vcvtq_s32_f32(v509), vcvtq_s32_f32(v510)) & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
      if (v541 && v542 != 1)
      {
        v544 = vsubq_s16(vdupq_n_s16(v398), v543);
        if (v542 == 3)
        {
          v545 = 21846;
        }

        else
        {
          v545 = 13108;
        }

        v546 = vdupq_n_s16(v545);
        v547 = vminq_u16(v543, v544);
        v548 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v547.i8, *v546.i8), 0x10uLL), vmull_high_u16(v547, v546), 0x10uLL);
        v546.i64[0] = 0x1000100010001;
        v546.i64[1] = 0x1000100010001;
        v543 = vorrq_s8(vaddq_s16(vshlq_u16(vmlsq_s16(v547, v548, vmovl_u8(vdup_n_s8((v398 + 1) >> v541))), vdupq_n_s16(v541)), vaddq_s16(v548, v548)), vbicq_s8(v546, vceqq_s16(v547, v543)));
      }

      v549 = v542 - 6;
      _ZF = v542 == 1;
      v550 = -8;
      if (!_ZF)
      {
        v550 = v549;
      }

      v551 = GetUnquantizationData_UnquantizationInfo[3 * v541 + v550];
      v552 = vshlq_u16(v543, vnegq_s16(vdupq_n_s16(WORD1(v551) & 7)));
      v553 = vandq_s8(vdupq_n_s16(BYTE1(v551)), v543);
      v554 = vshlq_u16(vmulq_s16(vshrq_n_u16(v553, 1uLL), vdupq_n_s16((v551 >> 28) & 0x1FF)), vnegq_s16(vdupq_n_s16((v551 >> 37) & 7)));
      v555 = vandq_s8(vdupq_n_s16((v551 >> 19) & 0x1FF), vcltzq_s16(vshlq_n_s16(v553, 0xFuLL)));
      v556 = veorq_s8(vmlaq_s16(v554, v552, vmovl_u8(vdup_n_s8(v551 >> 40))), v555);
      v554.i64[0] = 0x80008000800080;
      v554.i64[1] = 0x80008000800080;
      v557 = vorrq_s8(vshrq_n_u16(v556, 2uLL), vandq_s8(v555, v554));
      v558 = vdupq_n_s32(0x4B400000u);
      v559 = vdupq_n_s32(0xCB400000);
      v540 = vaddq_f32(vorrq_s8(vmovl_u16(*v557.i8), v558), v559);
      v560 = vsubq_f32(v540, vaddq_f32(vorrq_s8(vmovl_high_u16(v557), v558), v559));
      v540.f32[0] = v560.f32[2] + vaddv_f32(*v560.f32);
    }

    v561 = vdupq_lane_s32(*&vcgtq_f32(v540, v405), 0);
    v562 = vbslq_s8(v561, v510, v509);
    v563 = vbslq_s8(v561, v509, v510);
    v564 = vuzp1q_s16(vcvtq_s32_f32(v562), vcvtq_s32_f32(v563));
    *v564.i8 = vmovn_s16(v564);
    v1404 = v1394;
    v1405 = v1390;
    v1406 = v1386;
    v1407 = v1381;
    v1273 = vmulq_n_f32(v535, v505);
    v1408 = v1273;
    v1409 = vmlaq_n_f32(vnegq_f32(v1273), v536, v505);
    *v1410.i8 = v539;
    v1311 = vmulq_n_f32(v562, v505);
    v1411 = v1311;
    v1338 = vmlaq_n_f32(vnegq_f32(v1311), v563, v505);
    v1344 = v1409;
    v1412 = v1338;
    *&v1413 = vqtbl1_s8(v564, v538);
  }

  else
  {
    v1404 = v1394;
    v1405 = v1390;
    v1406 = v1386;
    v1407 = v1381;
    v1273 = vmulq_n_f32(v506, v505);
    v1408 = v1273;
    v1409 = vmlaq_n_f32(vnegq_f32(v1273), v507, v505);
    v511 = vuzp1q_s16(vcvtq_s32_f32(v506), vcvtq_s32_f32(v507));
    *v511.i8 = vmovn_s16(v511);
    v512 = ShuffleColorEndpointPair_mapTable[v503];
    *v1410.i8 = vqtbl1_s8(v511, v512);
    v1311 = vmulq_n_f32(v509, v505);
    v1411 = v1311;
    v1338 = vmlaq_n_f32(vnegq_f32(v1311), v510, v505);
    v1344 = v1409;
    v1412 = v1338;
    v513 = vuzp1q_s16(vcvtq_s32_f32(v509), vcvtq_s32_f32(v510));
    *v513.i8 = vmovn_s16(v513);
    *&v1413 = vqtbl1_s8(v513, v512);
  }

  FindWeights_4x4(a1, &v1404, (v394 >> 25) & 0xF, v1403);
  v1361 = v1403[1];
  v1367 = v1403[2];
  v1350 = v1403[3];
  v1356 = v1403[0];
  v1405 = vmvnq_s8(v1390);
  v1404 = vmvnq_s8(v1394);
  v1406 = vmvnq_s8(v1386);
  v1407 = vmvnq_s8(v1381);
  result = FindWeights_4x4(a1, &v1404, (v397 >> 25) & 0xF, &v1399);
  v567 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v1302.i8, v566)), 0x1FuLL));
  v568 = vbslq_s8(v567, v1399, v1356);
  v569 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1302.i8, *v567.i8)), 0x1FuLL));
  v570 = vbslq_s8(v569, v1400, v1361);
  v571 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v1201, *v569.i8)), 0x1FuLL));
  v572 = vbslq_s8(v571, v1401, v1367);
  v573 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v1201, *v571.i8)), 0x1FuLL)), v1402, v1350);
  v574 = vorrq_s8(vandq_s8(v1280, v1399), vandq_s8(v1331, v1356));
  v575 = vorrq_s8(vandq_s8(v1286, v1400), vandq_s8(v1323, v1361));
  v576 = vorrq_s8(vandq_s8(v1291, v1401), vandq_s8(v1329, v1367));
  v577 = vorrq_s8(vandq_s8(v1296, v1402), vandq_s8(v1326, v1350));
  v578 = vdupq_lane_s32(*v1273.f32, 0);
  v579 = vmlaq_n_f32(v578, v573, v1344.f32[0]);
  v580 = vmlaq_n_f32(v578, v572, v1344.f32[0]);
  v581 = vmlaq_n_f32(v578, v570, v1344.f32[0]);
  v1319 = v578;
  v582 = vmlaq_n_f32(v578, v568, v1344.f32[0]);
  v583 = vdupq_lane_s32(*v1311.f32, 0);
  v584 = vdupq_lane_s32(*v1273.f32, 1);
  v1256 = vmlaq_n_f32(v583, v577, v1338.f32[0]);
  v585 = vmlaq_lane_f32(v584, v573, *v1344.f32, 1);
  v586 = vmlaq_lane_f32(v584, v572, *v1344.f32, 1);
  v587 = vmlaq_lane_f32(v584, v570, *v1344.f32, 1);
  v1297 = v584;
  v588 = vmlaq_lane_f32(v584, v568, *v1344.f32, 1);
  v589 = vdupq_lane_s32(*v1311.f32, 1);
  v1251 = vmlaq_lane_f32(v589, v577, *v1338.f32, 1);
  v590 = vdupq_laneq_s32(v1273, 2);
  v591 = vmlaq_laneq_f32(v590, v573, v1344, 2);
  v592 = vmlaq_laneq_f32(v590, v572, v1344, 2);
  v593 = vmlaq_laneq_f32(v590, v570, v1344, 2);
  v1287 = v590;
  v594 = vdupq_laneq_s32(v1311, 2);
  v595 = vmlaq_laneq_f32(v590, v568, v1344, 2);
  v596 = vdupq_laneq_s32(v1273, 3);
  v597 = vmlaq_laneq_f32(v596, v573, v1344, 3);
  v598 = vmlaq_laneq_f32(v596, v572, v1344, 3);
  v599 = vmlaq_laneq_f32(v596, v570, v1344, 3);
  v1274 = v596;
  v600 = vmlaq_laneq_f32(v596, v568, v1344, 3);
  v601 = vdupq_laneq_s32(v1311, 3);
  v1243 = vmlaq_laneq_f32(v601, v577, v1338, 3);
  v1247 = vmlaq_laneq_f32(v594, v577, v1338, 2);
  v1226 = vmlaq_n_f32(v583, v576, v1338.f32[0]);
  v1231 = vmlaq_lane_f32(v589, v576, *v1338.f32, 1);
  v1237 = vmlaq_laneq_f32(v594, v576, v1338, 2);
  v1240 = vmlaq_laneq_f32(v601, v576, v1338, 3);
  v602 = vmlaq_n_f32(v583, v575, v1338.f32[0]);
  v603 = vmlaq_lane_f32(v589, v575, *v1338.f32, 1);
  v1220 = vmlaq_laneq_f32(v594, v575, v1338, 2);
  v1223 = vmlaq_laneq_f32(v601, v575, v1338, 3);
  v1312 = v583;
  v604 = vmlaq_n_f32(v583, v574, v1338.f32[0]);
  v1292 = v589;
  v605 = vmlaq_lane_f32(v589, v574, *v1338.f32, 1);
  v1281 = v594;
  v606 = vmlaq_laneq_f32(v594, v574, v1338, 2);
  v1267 = v601;
  v607 = vmlaq_laneq_f32(v601, v574, v1338, 3);
  v1213 = *(a1 + 160);
  v1216 = *(a1 + 144);
  v608 = vsubq_f32(v582, v1216);
  v609 = vsubq_f32(v581, v1213);
  v1209 = *(a1 + 176);
  v610 = vsubq_f32(v580, v1209);
  v1202 = *(a1 + 192);
  v611 = vsubq_f32(v579, v1202);
  v1205 = *(a1 + 208);
  v612 = vsubq_f32(v588, v1205);
  v1197 = *(a1 + 224);
  v613 = vsubq_f32(v587, v1197);
  v1195 = *(a1 + 240);
  v614 = vsubq_f32(v586, v1195);
  v1185 = *(a1 + 256);
  v615 = vsubq_f32(v585, v1185);
  v1190 = *(a1 + 272);
  v616 = vsubq_f32(v595, v1190);
  v1181 = *(a1 + 288);
  v617 = vsubq_f32(v593, v1181);
  v618 = *(a1 + 320);
  v1176 = *(a1 + 304);
  v619 = vsubq_f32(v592, v1176);
  v620 = vsubq_f32(v591, v618);
  v621 = *(a1 + 352);
  v1172 = *(a1 + 336);
  v622 = vsubq_f32(v600, v1172);
  v623 = vsubq_f32(v599, v621);
  v624 = *(a1 + 368);
  v625 = *(a1 + 384);
  v626 = vsubq_f32(v598, v624);
  v627 = vsubq_f32(v597, v625);
  v628 = *(a1 + 32);
  v629 = vmulq_f32(v611, v611);
  v630 = vmulq_f32(v610, v610);
  v631 = vmulq_f32(v609, v609);
  v632 = vmulq_f32(v608, v608);
  v633 = vmulq_f32(v615, v615);
  v634 = vmulq_f32(v614, v614);
  v635 = vmulq_f32(v613, v613);
  v636 = vmulq_f32(v612, v612);
  v637 = vmulq_f32(v620, v620);
  v638 = vmulq_f32(v619, v619);
  v639 = vmulq_f32(v617, v617);
  v640 = vmulq_f32(v616, v616);
  v641 = vmulq_f32(v627, v627);
  v642 = vmulq_f32(v626, v626);
  v643 = vmulq_f32(v623, v623);
  v644 = vmulq_f32(v622, v622);
  if (v628)
  {
    v645 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v633, *v628, 1), v629, COERCE_FLOAT(*v628->f32)), v637, *v628->f32, 2), v641, *v628->f32, 3);
    v646 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v635, *v628, 1), v631, COERCE_FLOAT(*v628->f32)), v639, *v628->f32, 2), v643, *v628->f32, 3), v1261);
    v647 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v636, *v628, 1), v632, COERCE_FLOAT(*v628->f32)), v640, *v628->f32, 2), v644, *v628->f32, 3), v1261);
    v648 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v634, *v628, 1), v630, COERCE_FLOAT(*v628->f32)), v638, *v628->f32, 2), v642, *v628->f32, 3), v1261);
    v649 = vmulq_f32(v645, v1261);
  }

  else
  {
    v650 = vaddq_f32(v630, v634);
    v651 = vaddq_f32(vaddq_f32(v629, v633), v637);
    v652 = vaddq_f32(vaddq_f32(v631, v635), v639);
    v647 = vaddq_f32(vaddq_f32(vaddq_f32(v632, v636), v640), v644);
    v646 = vaddq_f32(v652, v643);
    v648 = vaddq_f32(vaddq_f32(v650, v638), v642);
    v649 = vaddq_f32(v651, v641);
  }

  v653 = vsubq_f32(v1256, v1202);
  v654 = HIDWORD(v397);
  v655 = vsubq_f32(v1226, v1209);
  v656 = vsubq_f32(v602, v1213);
  v657 = vsubq_f32(v604, v1216);
  v658 = vsubq_f32(v1251, v1185);
  v659 = vsubq_f32(v1231, v1195);
  v660 = vsubq_f32(v603, v1197);
  v661 = vsubq_f32(v605, v1205);
  v662 = vsubq_f32(v1247, v618);
  v663 = vsubq_f32(v1237, v1176);
  v664 = vsubq_f32(v1220, v1181);
  v665 = vsubq_f32(v606, v1190);
  v666 = vsubq_f32(v1243, v625);
  v667 = vsubq_f32(v1240, v624);
  v668 = vsubq_f32(v1223, v621);
  v669 = vsubq_f32(v607, v1172);
  v670 = vmulq_f32(v657, v657);
  v671 = vmulq_f32(v656, v656);
  v672 = vmulq_f32(v655, v655);
  v673 = vmulq_f32(v653, v653);
  v674 = vmulq_f32(v661, v661);
  v675 = vmulq_f32(v660, v660);
  v676 = vmulq_f32(v659, v659);
  v677 = vmulq_f32(v658, v658);
  v678 = vmulq_f32(v665, v665);
  v679 = vmulq_f32(v664, v664);
  v680 = vmulq_f32(v663, v663);
  v681 = vmulq_f32(v662, v662);
  v682 = vmulq_f32(v669, v669);
  v683 = vmulq_f32(v668, v668);
  v684 = vmulq_f32(v667, v667);
  v685 = vmulq_f32(v666, v666);
  if (v628)
  {
    v686 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v675, *v628, 1), v671, COERCE_FLOAT(*v628->f32)), v679, *v628->f32, 2), v683, *v628->f32, 3), v1261);
    v687 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v674, *v628, 1), v670, COERCE_FLOAT(*v628->f32)), v678, *v628->f32, 2), v682, *v628->f32, 3), v1261);
    v688 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v676, *v628, 1), v672, COERCE_FLOAT(*v628->f32)), v680, *v628->f32, 2), v684, *v628->f32, 3), v1261);
    v689 = vmulq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v677, *v628, 1), v673, COERCE_FLOAT(*v628->f32)), v681, *v628->f32, 2), v685, *v628->f32, 3), v1261);
  }

  else
  {
    v687 = vaddq_f32(vaddq_f32(vaddq_f32(v670, v674), v678), v682);
    v686 = vaddq_f32(vaddq_f32(vaddq_f32(v671, v675), v679), v683);
    v688 = vaddq_f32(vaddq_f32(vaddq_f32(v672, v676), v680), v684);
    v689 = vaddq_f32(vaddq_f32(vaddq_f32(v673, v677), v681), v685);
  }

  v690 = vdupq_lane_s32(*v1344.f32, 0);
  v691 = vdupq_lane_s32(*v1338.f32, 0);
  v692 = vdupq_lane_s32(*v1344.f32, 1);
  v693 = vdupq_lane_s32(*v1338.f32, 1);
  v694 = vdupq_laneq_s32(v1344, 2);
  v695 = vdupq_laneq_s32(v1338, 2);
  v696 = vdupq_laneq_s32(v1338, 3);
  v1339 = vdupq_laneq_s32(v1344, 3);
  v1345 = v696;
  v697 = vaddvq_s16(vorrq_s8(vandq_s8(vuzp1q_s16(vcgtq_f32(v647, v687), vcgtq_f32(v646, v686)), xmmword_298495650), vandq_s8(vuzp1q_s16(vcgtq_f32(v648, v688), vcgtq_f32(v649, v689)), xmmword_298495640)));
  v698 = *a3;
  if (a3[1] == v697)
  {
    v699 = v1394;
    v700 = v1386;
    v701 = v1390;
    v702 = v1350;
  }

  else
  {
    v1244 = v691;
    v1248 = v690;
    v1252 = v693;
    v1257 = v692;
    v1371 = v695;
    v1376 = v694;
    result = GetDualPartitionPatterns(v697, v1414);
    v704 = 0;
    v705 = 0;
    v706 = a3[1];
    v707 = v706;
    v699 = v1394;
    v700 = v1386;
    v701 = v1390;
    v702 = v1350;
    do
    {
      v708 = HIWORD(v1414[v704]);
      _ZF = v708 != v706 && ((v708 ^ v706) & (v706 ^ ~v697 | 0xFFFF0000)) == 0;
      v703.i32[0] = v708 ^ v706;
      v703 = vcnt_s8(v703);
      v703.i16[0] = vaddlv_u8(v703);
      if (_ZF && v703.i32[0] > v705)
      {
        v698 = LOWORD(v1414[v704]);
        v707 = HIWORD(v1414[v704]);
        v705 = v703.i32[0];
      }

      ++v704;
    }

    while (v704 != 3);
    if (v705)
    {
      v1395 = *(VectorMaskForBitMask + ((v707 >> 8) & 0xF0));
      v1387 = *(VectorMaskForBitMask + (v707 & 0xF0));
      v1391 = *(VectorMaskForBitMask + ((v707 >> 4) & 0xF0));
      v1407 = VectorMaskForBitMask[v707 & 0xF];
      v1381 = v1407;
      v1406 = v1387;
      v1405 = v1391;
      v1404 = v1395;
      result = FindWeights_4x4(a1, &v1404, (v397 >> 25) & 0xF, v1398);
      v700 = v1387;
      v701 = v1391;
      v699 = v1395;
      v702 = v1398[3];
      v1361 = v1398[1];
      v1367 = v1398[2];
      v1356 = v1398[0];
      v1326 = vcltzq_s32(v1381);
      v1329 = vcltzq_s32(v1387);
      v1331 = vcltzq_s32(v1395);
      v1323 = vcltzq_s32(v1391);
      v1302 = vuzp1q_s8(vuzp1q_s16(v1331, v1323), vuzp1q_s16(v1329, v1326));
    }

    v628 = *(a1 + 32);
    v654 = HIDWORD(v397);
    v695 = v1371;
    v694 = v1376;
    v693 = v1252;
    v692 = v1257;
    v691 = v1244;
    v690 = v1248;
  }

  v711 = vextq_s8(v1302, v1302, 8uLL).u64[0];
  v712 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v711, v711)), 0x1FuLL));
  v713 = vshlq_n_s32(vmovl_u16(vzip1_s8(v711, v711)), 0x1FuLL);
  v714 = vcltzq_s32(v713);
  v715 = vshlq_n_s32(vmovl_u16(vzip1_s8(*v1302.i8, *v713.i8)), 0x1FuLL);
  v716 = vcltzq_s32(v715);
  v717 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v1302.i8, *v715.i8)), 0x1FuLL));
  v1396 = vbslq_s8(v712, v1312, v1319);
  v1372 = vbslq_s8(v714, v1312, v1319);
  v1351 = vbslq_s8(v716, v1312, v1319);
  v718 = vbslq_s8(v717, v1312, v1319);
  v1320 = vbslq_s8(v712, v691, v690);
  v1313 = vbslq_s8(v714, v691, v690);
  v1258 = vbslq_s8(v716, v691, v690);
  v719 = vbslq_s8(v717, v691, v690);
  v1392 = vbslq_s8(v712, v1292, v1297);
  v1388 = vbslq_s8(v714, v1292, v1297);
  v720 = vbslq_s8(v716, v1292, v1297);
  v721 = vbslq_s8(v717, v1292, v1297);
  v1303 = vbslq_s8(v712, v693, v692);
  v722 = vbslq_s8(v714, v693, v692);
  v723 = vbslq_s8(v716, v693, v692);
  v724 = vbslq_s8(v717, v693, v692);
  v1377 = vbslq_s8(v712, v1281, v1287);
  v725 = vbslq_s8(v714, v1281, v1287);
  v726 = vbslq_s8(v716, v1281, v1287);
  v727 = vbslq_s8(v717, v1281, v1287);
  v728 = vbslq_s8(v712, v695, v694);
  v729 = vbslq_s8(v714, v695, v694);
  v730 = vbslq_s8(v716, v695, v694);
  v731 = vbslq_s8(v717, v695, v694);
  v732 = vbslq_s8(v712, v1267, v1274);
  v733 = vbslq_s8(v714, v1267, v1274);
  v734 = vbslq_s8(v716, v1267, v1274);
  v735 = vbslq_s8(v717, v1267, v1274);
  v736 = v654;
  v737 = vorrq_s8(vandq_s8(v1326, v1345), vandq_s8(vcgezq_s32(v1381), v1339));
  v738 = vorrq_s8(vandq_s8(v1329, v1345), vandq_s8(vcgezq_s32(v700), v1339));
  v739 = vorrq_s8(vandq_s8(v1331, v1345), vandq_s8(vcgezq_s32(v699), v1339));
  v740 = vorrq_s8(vandq_s8(v1323, v1345), vandq_s8(vcgezq_s32(v701), v1339));
  v741 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1361, 0), v1308), v736));
  v742 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1356, 0), v1308), v736));
  v743 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v1367, 0), v1308), v736));
  v744 = vrndxq_f32(vmulq_n_f32(vminnmq_f32(vmaxnmq_f32(v702, 0), v1308), v736));
  *v712.i32 = ReciprocalTable[BYTE4(v397)];
  v745 = vmulq_n_f32(v744, *v712.i32);
  v746 = vmulq_n_f32(v743, *v712.i32);
  v747 = vmulq_n_f32(v742, *v712.i32);
  v748 = vmulq_n_f32(v741, *v712.i32);
  if (v628)
  {
    v1308 = vmulq_f32(*v628->f32, v1261);
  }

  v749 = vmlaq_f32(v718, v748, v719);
  v750 = vmlaq_f32(v721, v748, v724);
  v751 = vmlaq_f32(v727, v748, v731);
  v752 = vmlaq_f32(v735, v748, v740);
  v753 = vmlaq_f32(v1351, v747, v1258);
  v754 = vmlaq_f32(v720, v747, v723);
  v755 = vmlaq_f32(v726, v747, v730);
  v756 = vmlaq_f32(v734, v747, v739);
  v757 = vmlaq_f32(v1372, v746, v1313);
  v758 = vmlaq_f32(v1388, v746, v722);
  v759 = vmlaq_f32(v725, v746, v729);
  v760 = vmlaq_f32(v733, v746, v738);
  v761 = vmlaq_f32(v1396, v745, v1320);
  v762 = v1303;
  v763 = vmlaq_f32(v1392, v745, v1303);
  v764 = vmlaq_f32(v1377, v745, v728);
  v765 = vmlaq_f32(v732, v745, v737);
  v766 = a1;
  do
  {
    v767 = v766;
    v766 = *(v766 + 40);
  }

  while (v766);
  v768 = v767[8].u16[2];
  if (v768 == 392)
  {
    v1389 = v744;
    v1393 = v743;
    v1330 = v742;
    v1397 = v741;
    v818 = vzip1q_s32(v753, v753);
    v818.i32[2] = v753.i32[0];
    v819 = v753;
    v820 = v818;
    v821 = vdupq_lane_s32(*v819.i8, 1);
    v821.i32[3] = v819.i32[2];
    v1304 = v821;
    v822 = vmlaq_f32(vmulq_f32(v821, xmmword_298495A30), xmmword_298495A60, v820);
    v823 = v820;
    v1298 = v820;
    v824 = v749;
    v825 = vzip1q_s32(v749, v749);
    v825.i32[2] = v749.i32[0];
    v826 = vdupq_lane_s32(*v749.f32, 1);
    v826.i32[3] = v824.i32[2];
    v827 = v750;
    v828 = v751;
    v1327 = vmlaq_f32(vmlaq_f32(v822, xmmword_298495A70, v825), xmmword_298495AA0, v826);
    v1324 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1304, xmmword_298495AB0), xmmword_298495AE0, v823), xmmword_298495AF0, v825), xmmword_298495B20, v826);
    v829 = vmlaq_f32(vmulq_f32(v826, xmmword_298495B30), xmmword_298495B60, v825);
    v830 = v754;
    v831 = vmlaq_f32(vmulq_f32(v826, xmmword_298495BA0), xmmword_298495B70, v825);
    v832 = vzip1q_s32(v757, v757);
    v832.i32[2] = v757.i32[0];
    v833 = vdupq_lane_s32(*v757.f32, 1);
    v833.i32[3] = v757.i32[2];
    v1314 = vmlaq_f32(vmlaq_f32(v831, xmmword_298495B60, v832), xmmword_298495B30, v833);
    v1321 = vmlaq_f32(vmlaq_f32(v829, xmmword_298495B70, v832), xmmword_298495BA0, v833);
    v1383 = vmlaq_f32(vmulq_f32(v833, xmmword_298495B20), xmmword_298495AF0, v832);
    v834 = vzip1q_s32(v830, v830);
    v834.i32[2] = v754.i32[0];
    v1378 = vmlaq_f32(vmulq_f32(v833, xmmword_298495AA0), xmmword_298495A70, v832);
    v835 = vdupq_lane_s32(*v754.f32, 1);
    v835.i32[3] = v754.i32[2];
    v1262 = v834;
    v1268 = v835;
    v836 = vzip1q_s32(v827, v827);
    v836.i32[2] = v827.i32[0];
    v837 = vdupq_lane_s32(*v827.i8, 1);
    v837.i32[3] = v827.i32[2];
    v1293 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v835, xmmword_298495A30), xmmword_298495A60, v834), xmmword_298495A70, v836), xmmword_298495AA0, v837);
    v1288 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v835, xmmword_298495AB0), xmmword_298495AE0, v834), xmmword_298495AF0, v836), xmmword_298495B20, v837);
    v838 = vmlaq_f32(vmulq_f32(v837, xmmword_298495B30), xmmword_298495B60, v836);
    v839 = vmlaq_f32(vmulq_f32(v837, xmmword_298495BA0), xmmword_298495B70, v836);
    v840 = vzip1q_s32(v758, v758);
    v840.i32[2] = v758.i32[0];
    v841 = vdupq_lane_s32(*v758.f32, 1);
    v841.i32[3] = v758.i32[2];
    v1275 = vmlaq_f32(vmlaq_f32(v839, xmmword_298495B60, v840), xmmword_298495B30, v841);
    v1282 = vmlaq_f32(vmlaq_f32(v838, xmmword_298495B70, v840), xmmword_298495BA0, v841);
    v1368 = vmlaq_f32(vmulq_f32(v841, xmmword_298495AA0), xmmword_298495A70, v840);
    v1373 = vmlaq_f32(vmulq_f32(v841, xmmword_298495B20), xmmword_298495AF0, v840);
    v842 = vzip1q_s32(v755, v755);
    v842.i32[2] = v755.i32[0];
    v843 = vdupq_lane_s32(*v755.f32, 1);
    v843.i32[3] = v755.i32[2];
    v844 = v843;
    v1232 = v842;
    v1238 = v843;
    v845 = vmlaq_f32(vmulq_f32(v843, xmmword_298495A30), xmmword_298495A60, v842);
    v846 = v842;
    v847 = vzip1q_s32(v828, v828);
    v847.i32[2] = v751.i32[0];
    v848 = vdupq_lane_s32(*v751.f32, 1);
    v848.i32[3] = v751.i32[2];
    v1259 = vmlaq_f32(vmlaq_f32(v845, xmmword_298495A70, v847), xmmword_298495AA0, v848);
    v1253 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v844, xmmword_298495AB0), xmmword_298495AE0, v846), xmmword_298495AF0, v847), xmmword_298495B20, v848);
    v849 = vmlaq_f32(vmulq_f32(v848, xmmword_298495B30), xmmword_298495B60, v847);
    v850 = vmlaq_f32(vmulq_f32(v848, xmmword_298495BA0), xmmword_298495B70, v847);
    v851 = vzip1q_s32(v759, v759);
    v851.i32[2] = v759.i32[0];
    v852 = vdupq_lane_s32(*v759.f32, 1);
    v852.i32[3] = v759.i32[2];
    v1241 = vmlaq_f32(vmlaq_f32(v850, xmmword_298495B60, v851), xmmword_298495B30, v852);
    v1245 = vmlaq_f32(vmlaq_f32(v849, xmmword_298495B70, v851), xmmword_298495BA0, v852);
    v1362 = vmlaq_f32(vmulq_f32(v852, xmmword_298495B20), xmmword_298495AF0, v851);
    v853 = vzip1q_s32(v756, v756);
    v853.i32[2] = v756.i32[0];
    v854 = vdupq_lane_s32(*v756.f32, 1);
    v1357 = vmlaq_f32(vmulq_f32(v852, xmmword_298495AA0), xmmword_298495A70, v851);
    v854.i32[3] = v756.i32[2];
    v855 = vmlaq_f32(vmulq_f32(v854, xmmword_298495A30), xmmword_298495A60, v853);
    v856 = v853;
    v1206 = v853;
    v857 = vzip1q_s32(v752, v752);
    v857.i32[2] = v752.i32[0];
    v858 = vdupq_lane_s32(*v752.f32, 1);
    v858.i32[3] = v752.i32[2];
    v1227 = vmlaq_f32(vmlaq_f32(v855, xmmword_298495A70, v857), xmmword_298495AA0, v858);
    v1221 = v854;
    v1224 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v854, xmmword_298495AB0), xmmword_298495AE0, v856), xmmword_298495AF0, v857), xmmword_298495B20, v858);
    v859 = vmlaq_f32(vmulq_f32(v858, xmmword_298495B30), xmmword_298495B60, v857);
    v860 = vzip1q_s32(v760, v760);
    v860.i32[2] = v760.i32[0];
    v861 = vmlaq_f32(vmulq_f32(v858, xmmword_298495BA0), xmmword_298495B70, v857);
    v862 = vdupq_lane_s32(*v760.f32, 1);
    v862.i32[3] = v760.i32[2];
    v1210 = vmlaq_f32(vmlaq_f32(v861, xmmword_298495B60, v860), xmmword_298495B30, v862);
    v1214 = vmlaq_f32(vmlaq_f32(v859, xmmword_298495B70, v860), xmmword_298495BA0, v862);
    v1352 = vmlaq_f32(vmulq_f32(v862, xmmword_298495B20), xmmword_298495AF0, v860);
    v1346 = vmlaq_f32(vmulq_f32(v862, xmmword_298495AA0), xmmword_298495A70, v860);
    v863 = vzip2q_s32(vextq_s8(v819, v819, 0xCuLL), v819);
    v1167 = vextq_s8(v819, vdupq_laneq_s32(v819, 3), 8uLL);
    v864 = vzip2q_s32(vextq_s8(v824, v824, 0xCuLL), v824);
    v865 = vextq_s8(v824, vdupq_laneq_s32(v824, 3), 8uLL);
    v866 = vzip2q_s32(vextq_s8(v757, v757, 0xCuLL), v757);
    v867 = vextq_s8(v757, vdupq_laneq_s32(v757, 3), 8uLL);
    v868 = v756;
    v869 = v761;
    v1191 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1167, xmmword_298495A40), xmmword_298495A50, v863), xmmword_298495A80, v864), xmmword_298495A90, v865);
    v1186 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1167, xmmword_298495AC0), xmmword_298495AD0, v863), xmmword_298495B00, v864), xmmword_298495B10, v865);
    v1177 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v865, xmmword_298495B90), xmmword_298495B80, v864), xmmword_298495B50, v866), xmmword_298495B40, v867);
    v1182 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v865, xmmword_298495B40), xmmword_298495B50, v864), xmmword_298495B80, v866), xmmword_298495B90, v867);
    v1332 = vmlaq_f32(vmulq_f32(v867, xmmword_298495B10), xmmword_298495B00, v866);
    v1340 = vmlaq_f32(vmulq_f32(v867, xmmword_298495A90), xmmword_298495A80, v866);
    v1164 = vzip2q_s32(vextq_s8(v830, v830, 0xCuLL), v754);
    v870 = vextq_s8(v754, vdupq_laneq_s32(v754, 3), 8uLL);
    v871 = vzip2q_s32(vextq_s8(v827, v827, 0xCuLL), v827);
    v872 = vextq_s8(v827, vdupq_laneq_s32(v827, 3), 8uLL);
    v873 = vzip2q_s32(vextq_s8(v758, v758, 0xCuLL), v758);
    v874 = vextq_s8(v758, vdupq_laneq_s32(v758, 3), 8uLL);
    v1173 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v870, xmmword_298495A40), xmmword_298495A50, v1164), xmmword_298495A80, v871), xmmword_298495A90, v872);
    v1159 = v870;
    v1162 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v870, xmmword_298495AC0), xmmword_298495AD0, v1164), xmmword_298495B00, v871), xmmword_298495B10, v872);
    v875 = v759;
    v1139 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v872, xmmword_298495B40), xmmword_298495B50, v871), xmmword_298495B80, v873), xmmword_298495B90, v874);
    v1140 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v872, xmmword_298495B90), xmmword_298495B80, v871), xmmword_298495B50, v873), xmmword_298495B40, v874);
    v876 = vmlaq_f32(vmulq_f32(v874, xmmword_298495B10), xmmword_298495B00, v873);
    v877 = v764;
    v878 = vmlaq_f32(vmulq_f32(v874, xmmword_298495A90), xmmword_298495A80, v873);
    v1152 = vextq_s8(v755, vdupq_laneq_s32(v755, 3), 8uLL);
    v1156 = vzip2q_s32(vextq_s8(v755, v755, 0xCuLL), v755);
    v879 = vzip2q_s32(vextq_s8(v828, v828, 0xCuLL), v828);
    v880 = vextq_s8(v828, vdupq_laneq_s32(v828, 3), 8uLL);
    v881 = vzip2q_s32(vextq_s8(v875, v875, 0xCuLL), v875);
    v882 = vextq_s8(v875, vdupq_laneq_s32(v875, 3), 8uLL);
    v883 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1152, xmmword_298495A40), xmmword_298495A50, v1156), xmmword_298495A80, v879), xmmword_298495A90, v880);
    v884 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1152, xmmword_298495AC0), xmmword_298495AD0, v1156), xmmword_298495B00, v879), xmmword_298495B10, v880);
    v885 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v880, xmmword_298495B40), xmmword_298495B50, v879), xmmword_298495B80, v881), xmmword_298495B90, v882);
    v886 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v880, xmmword_298495B90), xmmword_298495B80, v879), xmmword_298495B50, v881), xmmword_298495B40, v882);
    v887 = vmlaq_f32(vmulq_f32(v882, xmmword_298495B10), xmmword_298495B00, v881);
    v888 = vmlaq_f32(vmulq_f32(v882, xmmword_298495A90), xmmword_298495A80, v881);
    v1146 = vzip2q_s32(vextq_s8(v868, v868, 0xCuLL), v868);
    v1149 = vextq_s8(v868, vdupq_laneq_s32(v868, 3), 8uLL);
    v889 = vzip2q_s32(vextq_s8(v752, v752, 0xCuLL), v752);
    v890 = vextq_s8(v752, vdupq_laneq_s32(v752, 3), 8uLL);
    v891 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1149, xmmword_298495A40), xmmword_298495A50, v1146), xmmword_298495A80, v889), xmmword_298495A90, v890);
    v892 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v1149, xmmword_298495AC0), xmmword_298495AD0, v1146), xmmword_298495B00, v889), xmmword_298495B10, v890);
    v893 = vmlaq_f32(vmulq_f32(v890, xmmword_298495B40), xmmword_298495B50, v889);
    v894 = vmlaq_f32(vmulq_f32(v890, xmmword_298495B90), xmmword_298495B80, v889);
    v895 = vzip2q_s32(vextq_s8(v760, v760, 0xCuLL), v760);
    v896 = vextq_s8(v760, vdupq_laneq_s32(v760, 3), 8uLL);
    v897 = vmlaq_f32(vmlaq_f32(v893, xmmword_298495B80, v895), xmmword_298495B90, v896);
    v898 = vmlaq_f32(vmlaq_f32(v894, xmmword_298495B50, v895), xmmword_298495B40, v896);
    v899 = vmlaq_f32(vmulq_f32(v896, xmmword_298495B10), xmmword_298495B00, v895);
    v900 = vmlaq_f32(vmulq_f32(v896, xmmword_298495A90), xmmword_298495A80, v895);
    v1249 = vmlaq_f32(vmulq_f32(v1304, xmmword_2984959F0), xmmword_298495A20, v1298);
    v901 = vzip1q_s32(v869, v869);
    v901.i32[2] = v869.i32[0];
    v902 = vdupq_lane_s32(*v869.i8, 1);
    v902.i32[3] = v869.i32[2];
    v1384 = vmlaq_f32(vmlaq_f32(v1383, xmmword_298495AE0, v901), xmmword_298495AB0, v902);
    v1379 = vmlaq_f32(vmlaq_f32(v1378, xmmword_298495A60, v901), xmmword_298495A30, v902);
    v1299 = vmlaq_f32(vmulq_f32(v902, xmmword_2984959F0), xmmword_298495A20, v901);
    v903 = vzip1q_s32(v763, v763);
    v903.i32[2] = v763.i32[0];
    v904 = vdupq_lane_s32(*v763.f32, 1);
    v904.i32[3] = v763.i32[2];
    v1374 = vmlaq_f32(vmlaq_f32(v1373, xmmword_298495AE0, v903), xmmword_298495AB0, v904);
    v1369 = vmlaq_f32(vmlaq_f32(v1368, xmmword_298495A60, v903), xmmword_298495A30, v904);
    v1305 = vmlaq_f32(vmulq_f32(v904, xmmword_2984959F0), xmmword_298495A20, v903);
    v905 = vmlaq_f32(vmulq_f32(v1238, xmmword_2984959F0), xmmword_298495A20, v1232);
    v906 = vzip1q_s32(v877, v877);
    v906.i32[2] = v877.i32[0];
    v907 = vdupq_lane_s32(*v877.i8, 1);
    v907.i32[3] = v877.i32[2];
    v1363 = vmlaq_f32(vmlaq_f32(v1362, xmmword_298495AE0, v906), xmmword_298495AB0, v907);
    v1358 = vmlaq_f32(vmlaq_f32(v1357, xmmword_298495A60, v906), xmmword_298495A30, v907);
    v1138 = vmlaq_f32(vmulq_f32(v907, xmmword_2984959F0), xmmword_298495A20, v906);
    v1137 = vmlaq_f32(vmulq_f32(v1221, xmmword_2984959F0), xmmword_298495A20, v1206);
    v908 = vzip1q_s32(v765, v765);
    v908.i32[2] = v765.i32[0];
    v909 = vdupq_lane_s32(*v765.f32, 1);
    v909.i32[3] = v765.i32[2];
    v1353 = vmlaq_f32(vmlaq_f32(v1352, xmmword_298495AE0, v908), xmmword_298495AB0, v909);
    v1347 = vmlaq_f32(vmlaq_f32(v1346, xmmword_298495A60, v908), xmmword_298495A30, v909);
    v910 = vmlaq_f32(vmulq_f32(v909, xmmword_2984959F0), xmmword_298495A20, v908);
    v911 = vzip2q_s32(vextq_s8(v869, v869, 0xCuLL), v869);
    v912 = vextq_s8(v869, vdupq_laneq_s32(v869, 3), 8uLL);
    v1333 = vmlaq_f32(vmlaq_f32(v1332, xmmword_298495AD0, v911), xmmword_298495AC0, v912);
    v1341 = vmlaq_f32(vmlaq_f32(v1340, xmmword_298495A50, v911), xmmword_298495A40, v912);
    v913 = vmlaq_f32(vmulq_f32(v912, xmmword_298495A00), xmmword_298495A10, v911);
    v914 = vmlaq_f32(vmulq_f32(v1159, xmmword_298495A00), xmmword_298495A10, v1164);
    v915 = vzip2q_s32(vextq_s8(v763, v763, 0xCuLL), v763);
    v916 = vextq_s8(v763, vdupq_laneq_s32(v763, 3), 8uLL);
    v917 = vmlaq_f32(vmlaq_f32(v876, xmmword_298495AD0, v915), xmmword_298495AC0, v916);
    v918 = vmlaq_f32(vmlaq_f32(v878, xmmword_298495A50, v915), xmmword_298495A40, v916);
    v919 = vmlaq_f32(vmulq_f32(v916, xmmword_298495A00), xmmword_298495A10, v915);
    v920 = vmlaq_f32(vmulq_f32(v1152, xmmword_298495A00), xmmword_298495A10, v1156);
    v921 = vzip2q_s32(vextq_s8(v877, v877, 0xCuLL), v877);
    v922 = vextq_s8(v877, vdupq_laneq_s32(v877, 3), 8uLL);
    v923 = vmlaq_f32(vmlaq_f32(v887, xmmword_298495AD0, v921), xmmword_298495AC0, v922);
    v924 = vmlaq_f32(vmlaq_f32(v888, xmmword_298495A50, v921), xmmword_298495A40, v922);
    v925 = vmlaq_f32(vmulq_f32(v922, xmmword_298495A00), xmmword_298495A10, v921);
    v926 = vmlaq_f32(vmulq_f32(v1149, xmmword_298495A00), xmmword_298495A10, v1146);
    v927 = vzip2q_s32(vextq_s8(v765, v765, 0xCuLL), v765);
    v928 = vextq_s8(v765, vdupq_laneq_s32(v765, 3), 8uLL);
    v929 = vmlaq_f32(vmlaq_f32(v899, xmmword_298495AD0, v927), xmmword_298495AC0, v928);
    v930 = vmlaq_f32(vmlaq_f32(v900, xmmword_298495A50, v927), xmmword_298495A40, v928);
    v931 = vmlaq_f32(vmulq_f32(v928, xmmword_298495A00), xmmword_298495A10, v927);
    v932 = vdupq_n_s32(0x3D800000u);
    v933 = vmulq_f32(vmlaq_f32(vmulq_f32(v1167, xmmword_298495A00), xmmword_298495A10, v863), v932);
    v934 = vmulq_f32(v1249, v932);
    v935 = vmulq_f32(v1191, v932);
    v936 = vmulq_f32(v1327, v932);
    v937 = vmulq_f32(v1186, v932);
    v1136 = vmulq_f32(v1324, v932);
    v938 = vmulq_f32(v1321, v932);
    v1147 = vmulq_f32(v1177, v932);
    v1142 = vmulq_f32(v1182, v932);
    v1144 = vmulq_f32(v1314, v932);
    v1150 = vmulq_f32(v1384, v932);
    v1153 = vmulq_f32(v1333, v932);
    v1157 = vmulq_f32(v1379, v932);
    v1160 = vmulq_f32(v1341, v932);
    v1385 = vmulq_f32(v913, v932);
    v1165 = vmulq_f32(v1299, v932);
    v1168 = vmulq_f32(vmlaq_f32(vmulq_f32(v1268, xmmword_2984959F0), xmmword_298495A20, v1262), v932);
    v939 = vmulq_f32(v1173, v932);
    v1170 = vmulq_f32(v914, v932);
    v1174 = vmulq_f32(v1293, v932);
    v1178 = v939;
    v1183 = vmulq_f32(v1162, v932);
    v1163 = vmulq_f32(v1288, v932);
    v1187 = vmulq_f32(v1282, v932);
    v1192 = vmulq_f32(v1139, v932);
    v1196 = vmulq_f32(v1275, v932);
    v1198 = vmulq_f32(v1140, v932);
    v1203 = vmulq_f32(v1374, v932);
    v1207 = vmulq_f32(v917, v932);
    v1217 = vmulq_f32(v1369, v932);
    v1222 = vmulq_f32(v918, v932);
    v1233 = vmulq_f32(v1305, v932);
    v1239 = vmulq_f32(v919, v932);
    v1250 = vmulq_f32(v905, v932);
    v1263 = vmulq_f32(v920, v932);
    v1269 = vmulq_f32(v1259, v932);
    v1276 = vmulq_f32(v883, v932);
    v1283 = vmulq_f32(v1253, v932);
    v1289 = vmulq_f32(v884, v932);
    v1294 = vmulq_f32(v885, v932);
    v940 = vmulq_f32(v1245, v932);
    v1306 = vmulq_f32(v886, v932);
    v1300 = vmulq_f32(v1241, v932);
    v941 = vmulq_f32(v923, v932);
    v1325 = vmulq_f32(v924, v932);
    v1315 = vmulq_f32(v1363, v932);
    v1322 = vmulq_f32(v1358, v932);
    v942 = vmulq_f32(v925, v932);
    v1328 = vmulq_f32(v1138, v932);
    v1334 = vmulq_f32(v926, v932);
    v1342 = vmulq_f32(v1137, v932);
    v1359 = vmulq_f32(v1227, v932);
    v1364 = vmulq_f32(v891, v932);
    v1370 = vmulq_f32(v892, v932);
    v1375 = vmulq_f32(v1224, v932);
    v943 = vmulq_f32(v897, v932);
    v1380 = vmulq_f32(v1214, v932);
    v944 = vmulq_f32(v898, v932);
    v945 = vmulq_f32(v1210, v932);
    v946 = vmulq_f32(v929, v932);
    v947 = vmulq_f32(v1353, v932);
    v1354 = vmulq_f32(v930, v932);
    v948 = vmulq_f32(v1347, v932);
    v949 = vmulq_f32(v931, v932);
    v950 = vmulq_f32(v910, v932);
    v951 = v767 + 17;
    if (*(a1 + 135))
    {
      v1254 = v947;
      v952 = v767[58];
      v953 = vmulq_f32(vsubq_f32(v933, v767[10]), v952);
      v954 = vmulq_f32(v953, v953);
      v1228 = v943;
      v956 = v767[59];
      v955 = v767[60];
      v957 = vmulq_f32(vsubq_f32(v935, v767[12]), v955);
      v958 = vmlaq_f32(v954, v957, v957);
      v959 = v767[57];
      v960 = vmulq_f32(vsubq_f32(v934, v767[9]), v959);
      v961 = vmulq_f32(v960, v960);
      v962 = vmulq_f32(vsubq_f32(v936, v767[11]), v956);
      v963 = vmlaq_f32(v961, v962, v962);
      v965 = v767[62];
      v964 = v767[63];
      v966 = vmulq_f32(vsubq_f32(v937, v767[14]), v965);
      v1242 = v944;
      v967 = v767[64];
      v968 = vmulq_f32(vsubq_f32(v1142, v767[16]), v967);
      v969 = vmlaq_f32(vmulq_f32(v966, v966), v968, v968);
      v1211 = v940;
      v970 = v767[61];
      v971 = vmulq_f32(vsubq_f32(v1136, v767[13]), v970);
      v972 = vmulq_f32(v971, v971);
      v973 = vmulq_f32(vsubq_f32(v938, v767[15]), v964);
      v974 = vmlaq_f32(v972, v973, v973);
      v975 = v767[66];
      v976 = v767[67];
      v977 = vmulq_f32(vsubq_f32(v1147, v767[18]), v975);
      v1348 = v948;
      v978 = v767[68];
      v979 = vmulq_f32(vsubq_f32(v1153, v767[20]), v978);
      v980 = vmlaq_f32(vmulq_f32(v977, v977), v979, v979);
      v1154 = v941;
      v981 = v767[65];
      v982 = vmulq_f32(vsubq_f32(v1144, *v951), v981);
      v983 = vmulq_f32(v982, v982);
      v984 = vmulq_f32(vsubq_f32(v1150, v767[19]), v976);
      v985 = vmlaq_f32(v983, v984, v984);
      v986 = v949;
      v1246 = v945;
      v987 = v767[70];
      v988 = vmulq_f32(vsubq_f32(v1160, v767[22]), v987);
      v989 = vmulq_f32(v988, v988);
      v990 = v767[71];
      v991 = v767[72];
      v992 = vmulq_f32(vsubq_f32(v1385, v767[24]), v991);
      v993 = vmlaq_f32(v989, v992, v992);
      v1260 = v950;
      v994 = v767[69];
      v995 = vmulq_f32(vsubq_f32(v1157, v767[21]), v994);
      v996 = vmulq_f32(vsubq_f32(v1165, v767[23]), v990);
      v805 = vpaddq_f32(v963, v958);
      v804 = vpaddq_f32(v974, v969);
      v997 = vpaddq_f32(v985, v980);
      v1382 = vpaddq_f32(vmlaq_f32(vmulq_f32(v995, v995), v996, v996), v993);
      v998 = vmulq_f32(v952, vsubq_f32(v1170, v767[26]));
      v999 = vmulq_f32(v955, vsubq_f32(v1178, v767[28]));
      v1000 = vmlaq_f32(vmulq_f32(v998, v998), v999, v999);
      v1001 = vmulq_f32(v959, vsubq_f32(v1168, v767[25]));
      v1002 = vmulq_f32(v956, vsubq_f32(v1174, v767[27]));
      v1003 = vmlaq_f32(vmulq_f32(v1001, v1001), v1002, v1002);
      v1004 = vmulq_f32(v965, vsubq_f32(v1183, v767[30]));
      v1005 = vmulq_f32(v967, vsubq_f32(v1192, v767[32]));
      v1006 = vmlaq_f32(vmulq_f32(v1004, v1004), v1005, v1005);
      v1007 = vmulq_f32(v970, vsubq_f32(v1163, v767[29]));
      v1008 = vmulq_f32(v1007, v1007);
      v1009 = vmulq_f32(v964, vsubq_f32(v1187, v767[31]));
      v1010 = vmlaq_f32(v1008, v1009, v1009);
      v1011 = vmulq_f32(v975, vsubq_f32(v1198, v767[34]));
      v1012 = vmulq_f32(v978, vsubq_f32(v1207, v767[36]));
      v1013 = vmlaq_f32(vmulq_f32(v1011, v1011), v1012, v1012);
      v1014 = vmulq_f32(v981, vsubq_f32(v1196, v767[33]));
      v1015 = vmulq_f32(v1014, v1014);
      v1016 = vmulq_f32(v976, vsubq_f32(v1203, v767[35]));
      v1017 = vmlaq_f32(v1015, v1016, v1016);
      v1018 = vmulq_f32(v987, vsubq_f32(v1222, v767[38]));
      v1019 = vmulq_f32(v991, vsubq_f32(v1239, v767[40]));
      v1020 = vmlaq_f32(vmulq_f32(v1018, v1018), v1019, v1019);
      v1021 = vmulq_f32(v994, vsubq_f32(v1217, v767[37]));
      v1022 = vmulq_f32(v1021, v1021);
      v1023 = vmulq_f32(v990, vsubq_f32(v1233, v767[39]));
      v1024 = vmlaq_f32(v1022, v1023, v1023);
      v808 = vpaddq_f32(v1003, v1000);
      v807 = vpaddq_f32(v1010, v1006);
      v806 = vpaddq_f32(v1017, v1013);
      v809 = vpaddq_f32(v1024, v1020);
      v949 = v986;
      v803 = v997;
      v1025 = vmulq_f32(v952, vsubq_f32(v1263, v767[42]));
      v947 = v1254;
      v1026 = vmulq_f32(v959, vsubq_f32(v1250, v767[41]));
      v1027 = vmulq_f32(v956, vsubq_f32(v1269, v767[43]));
      v943 = v1228;
      v1028 = vmulq_f32(v955, vsubq_f32(v1276, v767[44]));
      v1029 = vmlaq_f32(vmulq_f32(v1025, v1025), v1028, v1028);
      v1030 = vmlaq_f32(vmulq_f32(v1026, v1026), v1027, v1027);
      v1031 = vmulq_f32(v965, vsubq_f32(v1289, v767[46]));
      v1032 = vmulq_f32(v970, vsubq_f32(v1283, v767[45]));
      v1033 = vmulq_f32(v964, vsubq_f32(v1211, v767[47]));
      v1034 = vmulq_f32(v967, vsubq_f32(v1294, v767[48]));
      v944 = v1242;
      v1035 = vmlaq_f32(vmulq_f32(v1031, v1031), v1034, v1034);
      v1036 = vmlaq_f32(vmulq_f32(v1032, v1032), v1033, v1033);
      v1037 = vmulq_f32(v975, vsubq_f32(v1306, v767[50]));
      v1038 = vmulq_f32(v981, vsubq_f32(v1300, v767[49]));
      v1039 = vmulq_f32(v976, vsubq_f32(v1315, v767[51]));
      v948 = v1348;
      v1040 = vmulq_f32(v978, vsubq_f32(v1154, v767[52]));
      v1041 = vmlaq_f32(vmulq_f32(v1037, v1037), v1040, v1040);
      v1042 = vmlaq_f32(vmulq_f32(v1038, v1038), v1039, v1039);
      v1043 = vmulq_f32(v987, vsubq_f32(v1325, v767[54]));
      v1044 = vmulq_f32(v994, vsubq_f32(v1322, v767[53]));
      v950 = v1260;
      v1045 = vmulq_f32(v990, vsubq_f32(v1328, v767[55]));
      v1046 = vmulq_f32(v991, vsubq_f32(v942, v767[56]));
      v1047 = vmlaq_f32(vmulq_f32(v1043, v1043), v1046, v1046);
      v1048 = vmlaq_f32(vmulq_f32(v1044, v1044), v1045, v1045);
      v945 = v1246;
    }

    else
    {
      v1051 = vsubq_f32(v933, v767[10]);
      v1052 = vsubq_f32(v934, v767[9]);
      v1053 = vsubq_f32(v936, v767[11]);
      v1054 = vsubq_f32(v935, v767[12]);
      v1055 = vmlaq_f32(vmulq_f32(v1051, v1051), v1054, v1054);
      v1056 = vmlaq_f32(vmulq_f32(v1052, v1052), v1053, v1053);
      v1057 = vsubq_f32(v937, v767[14]);
      v1058 = vsubq_f32(v1136, v767[13]);
      v1059 = vsubq_f32(v938, v767[15]);
      v1060 = vsubq_f32(v1142, v767[16]);
      v1061 = vmlaq_f32(vmulq_f32(v1057, v1057), v1060, v1060);
      v1062 = vmlaq_f32(vmulq_f32(v1058, v1058), v1059, v1059);
      v1063 = vsubq_f32(v1147, v767[18]);
      v1064 = vsubq_f32(v1144, *v951);
      v1065 = vsubq_f32(v1150, v767[19]);
      v1066 = vsubq_f32(v1153, v767[20]);
      v1067 = vmlaq_f32(vmulq_f32(v1063, v1063), v1066, v1066);
      v1068 = vmlaq_f32(vmulq_f32(v1064, v1064), v1065, v1065);
      v1069 = vsubq_f32(v1160, v767[22]);
      v1070 = vsubq_f32(v1157, v767[21]);
      v1071 = vsubq_f32(v1165, v767[23]);
      v1072 = vsubq_f32(v1385, v767[24]);
      v805 = vpaddq_f32(v1056, v1055);
      v804 = vpaddq_f32(v1062, v1061);
      v803 = vpaddq_f32(v1068, v1067);
      v1382 = vpaddq_f32(vmlaq_f32(vmulq_f32(v1070, v1070), v1071, v1071), vmlaq_f32(vmulq_f32(v1069, v1069), v1072, v1072));
      v1073 = vsubq_f32(v1170, v767[26]);
      v1074 = vsubq_f32(v1168, v767[25]);
      v1075 = vsubq_f32(v1174, v767[27]);
      v1076 = vsubq_f32(v1178, v767[28]);
      v1077 = vmlaq_f32(vmulq_f32(v1073, v1073), v1076, v1076);
      v1078 = vmlaq_f32(vmulq_f32(v1074, v1074), v1075, v1075);
      v1079 = vsubq_f32(v1183, v767[30]);
      v1080 = vsubq_f32(v1163, v767[29]);
      v1081 = vsubq_f32(v1187, v767[31]);
      v1082 = vsubq_f32(v1192, v767[32]);
      v1083 = vmlaq_f32(vmulq_f32(v1079, v1079), v1082, v1082);
      v1084 = vmlaq_f32(vmulq_f32(v1080, v1080), v1081, v1081);
      v1085 = vsubq_f32(v1198, v767[34]);
      v1086 = vsubq_f32(v1196, v767[33]);
      v1087 = vsubq_f32(v1203, v767[35]);
      v1088 = vsubq_f32(v1207, v767[36]);
      v1089 = vmlaq_f32(vmulq_f32(v1085, v1085), v1088, v1088);
      v1090 = vmlaq_f32(vmulq_f32(v1086, v1086), v1087, v1087);
      v1091 = vsubq_f32(v1222, v767[38]);
      v1092 = vsubq_f32(v1217, v767[37]);
      v1093 = vsubq_f32(v1233, v767[39]);
      v1094 = vsubq_f32(v1239, v767[40]);
      v1095 = vmlaq_f32(vmulq_f32(v1091, v1091), v1094, v1094);
      v1096 = vmlaq_f32(vmulq_f32(v1092, v1092), v1093, v1093);
      v808 = vpaddq_f32(v1078, v1077);
      v807 = vpaddq_f32(v1084, v1083);
      v806 = vpaddq_f32(v1090, v1089);
      v809 = vpaddq_f32(v1096, v1095);
      v1097 = vsubq_f32(v1263, v767[42]);
      v1098 = vsubq_f32(v1250, v767[41]);
      v1099 = vsubq_f32(v1269, v767[43]);
      v1100 = vsubq_f32(v1276, v767[44]);
      v1029 = vmlaq_f32(vmulq_f32(v1097, v1097), v1100, v1100);
      v1030 = vmlaq_f32(vmulq_f32(v1098, v1098), v1099, v1099);
      v1101 = vsubq_f32(v1289, v767[46]);
      v1102 = vsubq_f32(v1283, v767[45]);
      v1103 = vsubq_f32(v940, v767[47]);
      v1104 = vsubq_f32(v1294, v767[48]);
      v1035 = vmlaq_f32(vmulq_f32(v1101, v1101), v1104, v1104);
      v1036 = vmlaq_f32(vmulq_f32(v1102, v1102), v1103, v1103);
      v1105 = vsubq_f32(v1306, v767[50]);
      v1106 = vsubq_f32(v1300, v767[49]);
      v1107 = vsubq_f32(v1315, v767[51]);
      v1108 = vsubq_f32(v941, v767[52]);
      v1041 = vmlaq_f32(vmulq_f32(v1105, v1105), v1108, v1108);
      v1042 = vmlaq_f32(vmulq_f32(v1106, v1106), v1107, v1107);
      v1109 = vsubq_f32(v1325, v767[54]);
      v1110 = vsubq_f32(v1322, v767[53]);
      v1111 = vsubq_f32(v1328, v767[55]);
      v1112 = vsubq_f32(v942, v767[56]);
      v1047 = vmlaq_f32(vmulq_f32(v1109, v1109), v1112, v1112);
      v1048 = vmlaq_f32(vmulq_f32(v1110, v1110), v1111, v1111);
    }

    v812 = vpaddq_f32(v1030, v1029);
    v811 = vpaddq_f32(v1036, v1035);
    v810 = vpaddq_f32(v1042, v1041);
    v813 = vpaddq_f32(v1048, v1047);
    v1113 = vsubq_f32(v1334, v767[58]);
    v1114 = vsubq_f32(v1342, v767[57]);
    v1115 = vsubq_f32(v1359, v767[59]);
    v1116 = vsubq_f32(v1364, v767[60]);
    v1117 = vmlaq_f32(vmulq_f32(v1113, v1113), v1116, v1116);
    v1118 = vmlaq_f32(vmulq_f32(v1114, v1114), v1115, v1115);
    v1119 = vsubq_f32(v1370, v767[62]);
    v1120 = vsubq_f32(v1375, v767[61]);
    v1121 = vsubq_f32(v1380, v767[63]);
    v1122 = vsubq_f32(v943, v767[64]);
    v1123 = vmlaq_f32(vmulq_f32(v1119, v1119), v1122, v1122);
    v1124 = vmlaq_f32(vmulq_f32(v1120, v1120), v1121, v1121);
    v1125 = vsubq_f32(v944, v767[66]);
    v1126 = vsubq_f32(v945, v767[65]);
    v1127 = vsubq_f32(v947, v767[67]);
    v1128 = vsubq_f32(v946, v767[68]);
    v1129 = vmlaq_f32(vmulq_f32(v1125, v1125), v1128, v1128);
    v1130 = vmlaq_f32(vmulq_f32(v1126, v1126), v1127, v1127);
    v1131 = vsubq_f32(v1354, v767[70]);
    v1132 = vsubq_f32(v948, v767[69]);
    v1133 = vsubq_f32(v950, v767[71]);
    v1134 = vsubq_f32(v949, v767[72]);
    v815 = vpaddq_f32(v1118, v1117);
    v814 = vpaddq_f32(v1124, v1123);
    v816 = vpaddq_f32(v1130, v1129);
    v817 = vpaddq_f32(vmlaq_f32(vmulq_f32(v1132, v1132), v1133, v1133), vmlaq_f32(vmulq_f32(v1131, v1131), v1134, v1134));
    v742 = v1330;
  }

  else
  {
    if (v768 != 324)
    {
      v1049 = INFINITY;
      v1050 = a4;
      goto LABEL_149;
    }

    v1389 = v744;
    v1393 = v743;
    v1397 = v741;
    v762.i32[0] = 0;
    v769 = v753;
    v770 = vsubq_f32(v757, *(a1 + 176));
    v771 = vsubq_f32(v749, *(a1 + 160));
    v772 = vsubq_f32(v769, *(a1 + 144));
    v773 = vsubq_f32(v761, *(a1 + 192));
    v774 = vsubq_f32(v758, *(a1 + 240));
    v775 = vsubq_f32(v750, *(a1 + 224));
    v776 = vsubq_f32(v754, *(a1 + 208));
    v777 = vsubq_f32(v763, *(a1 + 256));
    v778 = vsubq_f32(v759, *(a1 + 304));
    v779 = vsubq_f32(v751, *(a1 + 288));
    v780 = vsubq_f32(v755, *(a1 + 272));
    v781 = vsubq_f32(v764, *(a1 + 320));
    v783 = *(a1 + 336);
    v782 = *(a1 + 352);
    v784 = *(a1 + 368);
    v785 = *(a1 + 384);
    v786 = vsubq_f32(v765, v785);
    v787 = vsubq_f32(v760, v784);
    v788 = vsubq_f32(v756, v783);
    v789 = vsubq_f32(v752, v782);
    v737.i8[0] = *(a1 + 135);
    v790 = vdupq_lane_s8(*&vceqq_s8(v737, v762), 0);
    v791 = vbslq_s8(v790, v781, vmulq_f32(v781, v785));
    v792 = vbslq_s8(v790, v780, vmulq_f32(v780, v783));
    v793 = vbslq_s8(v790, v779, vmulq_f32(v779, v782));
    v794 = vbslq_s8(v790, v778, vmulq_f32(v778, v784));
    v795 = vbslq_s8(v790, v777, vmulq_f32(v777, v785));
    v796 = vbslq_s8(v790, v776, vmulq_f32(v776, v783));
    v797 = vbslq_s8(v790, v775, vmulq_f32(v775, v782));
    v798 = vbslq_s8(v790, v774, vmulq_f32(v774, v784));
    v799 = vbslq_s8(v790, v773, vmulq_f32(v773, v785));
    v800 = vbslq_s8(v790, v772, vmulq_f32(v772, v783));
    v801 = vbslq_s8(v790, v771, vmulq_f32(v771, v782));
    v802 = vbslq_s8(v790, v770, vmulq_f32(v770, v784));
    v803 = vmulq_f32(v802, v802);
    v804 = vmulq_f32(v801, v801);
    v805 = vmulq_f32(v800, v800);
    v1382 = vmulq_f32(v799, v799);
    v806 = vmulq_f32(v798, v798);
    v807 = vmulq_f32(v797, v797);
    v808 = vmulq_f32(v796, v796);
    v809 = vmulq_f32(v795, v795);
    v810 = vmulq_f32(v794, v794);
    v811 = vmulq_f32(v793, v793);
    v812 = vmulq_f32(v792, v792);
    v813 = vmulq_f32(v791, v791);
    v814 = vmulq_f32(v789, v789);
    v815 = vmulq_f32(v788, v788);
    v816 = vmulq_f32(v787, v787);
    v817 = vmulq_f32(v786, v786);
  }

  v744 = v1389;
  v1135 = vaddq_f32(vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v808, *v1308.f32, 1), v805, v1308.f32[0]), v812, v1308, 2), v815, v1308, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v806, *v1308.f32, 1), v803, v1308.f32[0]), v810, v1308, 2), v816, v1308, 3)), vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v807, *v1308.f32, 1), v804, v1308.f32[0]), v811, v1308, 2), v814, v1308, 3), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v809, *v1308.f32, 1), v1382, v1308.f32[0]), v813, v1308, 2), v817, v1308, 3)));
  v1135.i64[0] = vpaddq_f32(v1135, v1135).u64[0];
  LODWORD(v1049) = vpadd_f32(*v1135.f32, *v1135.f32).u32[0];
  v1050 = a4;
  v741 = v1397;
  v743 = v1393;
LABEL_149:
  if (v1049 < v1050)
  {
    *(a2 + 32) = vandq_s8(v1410, xmmword_298495C30);
    *a2 = vuzp1q_s8(vuzp1q_s16(vcvtq_s32_f32(v742), vcvtq_s32_f32(v741)), vuzp1q_s16(vcvtq_s32_f32(v743), vcvtq_s32_f32(v744)));
    *(a2 + 16) = 0u;
    *(a2 + 48) = v397 | (v698 << 13);
    *(a2 + 52) = v654;
    *(a2 + 53) = v398;
    *(a2 + 54) = BYTE5(v397);
    *(a2 + 55) = 29;
    *(((v397 >> 41) & 0x7F) + a2 + 32) = v1413;
  }

  return result;
}

unint64_t GetDualPartitionBlockInfo(unsigned int a1, int a2)
{
  v2 = (a2 - 4);
  v4 = kDualLineSingleWeightTable[kDualLineSingleWeightIndexTable[4 * a1 + (v2 >> 2)]];
  return (a2 << 40) | (*(&v4 + (v2 >> 2) + 4) << 56) | ((v4 >> 27) << 32) | 0x1D000000000000 | (v2 << 25) & 0x18000000 | v4 & 0x1FFFFFF;
}

unint64_t WeightInfoForSingleLineDualWeight(int a1, uint64_t a2, int a3)
{
  if (a3 == 342)
  {
    v3 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v4 = a1;
    v5 = v3;
    v6 = &WeightInfoForSingleLineDualWeight_6x5_Table_6x5 + 8 * WeightInfoForSingleLineDualWeight_6x5_Indices_6x5[4 * a1 + v3];
    return *v6 & 0xFFE00000FFFE1FFFLL | (v6[v5 + 4] << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((v4 & 0x1F) << 48) | ((v3 & 3) << 15);
  }

  if (a3 == 324)
  {
    v3 = (a2 - 2 + (((a2 - 2) & 0x8000u) >> 15)) >> 1;
    v4 = a1;
    v5 = v3;
    v6 = &kSingleLineDualWeightTable + 8 * kSingleLineDualWeightIndexTable[4 * a1 + v3];
    return *v6 & 0xFFE00000FFFE1FFFLL | (v6[v5 + 4] << 32) & 0xFFE0FFFFFFFFFFFFLL | (a2 << 40) & 0xFFE0FFFFFFFFFFFFLL | ((v4 & 0x1F) << 48) | ((v3 & 3) << 15);
  }

  return 0;
}

uint64_t FindWeights_4x4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, float32x4_t *a4@<X8>)
{
  v4 = *(a2 + 80);
  if (a3 > 5)
  {
    v45 = *(a2 + 128);
    v46 = *(result + 32);
    v47 = v45;
    v48 = *(a2 + 80);
    if (v46)
    {
      v47 = *v46;
      v48 = *v46;
    }

    v49 = vcgezq_s32(gNormalMasks[a3]);
    v50 = vandq_s8(v48, v49);
    v51 = vandq_s8(v47, v49);
    v52 = vmulq_f32(v4, v50);
    v53 = vaddv_f32(vadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL)));
    v54 = vmulq_f32(v45, v51);
    v55 = vaddv_f32(vadd_f32(*v54.i8, *&vextq_s8(v54, v54, 8uLL)));
    if (fabsf(v53) < 0.0039062)
    {
      v56 = vmulq_f32(v4, v4);
      v53 = vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)));
      v50 = *(a2 + 80);
    }

    if (fabsf(v55) < 0.0039062)
    {
      v57 = vmulq_f32(v45, v45);
      v55 = vaddv_f32(vadd_f32(*v57.i8, *&vextq_s8(v57, v57, 8uLL)));
      v51 = *(a2 + 128);
    }

    v58 = *(a2 + 48);
    v59 = *(a2 + 64);
    v60 = vdupq_lane_s32(*v59.i8, 0);
    v61 = *(a2 + 112);
    v62 = vdupq_lane_s32(*v61.i8, 0);
    v63 = *(a2 + 32);
    v195 = *(a2 + 16);
    v64 = vcltzq_s32(v58);
    v65 = vcltzq_s32(v63);
    v66 = vuzp1q_s16(v65, v64);
    v196 = vcltzq_s32(*a2);
    v197 = vcltzq_s32(v195);
    v67 = vuzp1q_s16(v196, v197);
    v68 = vmovn_s16(v67);
    v69 = vmovn_s16(v66);
    v70 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v69, *v4.f32)), 0x1FuLL));
    v71 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v69, *v4.f32)), 0x1FuLL));
    v72 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v68, *v4.f32)), 0x1FuLL));
    v73 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v68, *v4.f32)), 0x1FuLL));
    v74 = vsubq_f32(*(result + 144), vbslq_s8(v73, v62, v60));
    v75 = vsubq_f32(*(result + 160), vbslq_s8(v72, v62, v60));
    v76 = vsubq_f32(*(result + 176), vbslq_s8(v71, v62, v60));
    v77 = vdupq_lane_s32(*v59.i8, 1);
    v78 = vdupq_lane_s32(*v61.i8, 1);
    v79 = vsubq_f32(*(result + 256), vbslq_s8(v70, v78, v77));
    v80 = vsubq_f32(*(result + 240), vbslq_s8(v71, v78, v77));
    v81 = vsubq_f32(*(result + 224), vbslq_s8(v72, v78, v77));
    v82 = vsubq_f32(*(result + 208), vbslq_s8(v73, v78, v77));
    v83 = vdupq_lane_s32(*v50.f32, 0);
    v84 = vdupq_lane_s32(*v51.f32, 0);
    v85 = vdupq_lane_s32(*v50.f32, 1);
    v86 = vdupq_lane_s32(*v51.f32, 1);
    v87 = vmlaq_f32(vmulq_f32(vbslq_s8(v70, v86, v85), v79), vbslq_s8(v70, v84, v83), vsubq_f32(*(result + 192), vbslq_s8(v70, v62, v60)));
    v88 = vmlaq_f32(vmulq_f32(vbslq_s8(v71, v86, v85), v80), vbslq_s8(v71, v84, v83), v76);
    v89 = vdupq_laneq_s32(v59, 2);
    v90 = vmlaq_f32(vmulq_f32(vbslq_s8(v72, v86, v85), v81), vbslq_s8(v72, v84, v83), v75);
    v91 = vdupq_laneq_s32(v61, 2);
    v92 = vmlaq_f32(vmulq_f32(vbslq_s8(v73, v86, v85), v82), vbslq_s8(v73, v84, v83), v74);
    v93 = vdupq_laneq_s32(v50, 2);
    v94 = vdupq_laneq_s32(v51, 2);
    v95 = vmlaq_f32(v92, vbslq_s8(v73, v94, v93), vsubq_f32(*(result + 272), vbslq_s8(v73, v91, v89)));
    v96 = vmlaq_f32(v90, vbslq_s8(v72, v94, v93), vsubq_f32(*(result + 288), vbslq_s8(v72, v91, v89)));
    v97 = vmlaq_f32(v88, vbslq_s8(v71, v94, v93), vsubq_f32(*(result + 304), vbslq_s8(v71, v91, v89)));
    v98 = vsubq_f32(*(result + 320), vbslq_s8(v70, v91, v89));
    v99 = vdupq_laneq_s32(v59, 3);
    v100 = vdupq_laneq_s32(v61, 3);
    v101 = vbslq_s8(v70, v94, v93);
    v102 = vbslq_s8(v70, v100, v99);
    v103 = vmlaq_f32(v87, v101, v98);
    v104 = vbslq_s8(v71, v100, v99);
    v105 = vbslq_s8(v72, v100, v99);
    v106 = vsubq_f32(*(result + 336), vbslq_s8(v73, v100, v99));
    v107 = vsubq_f32(*(result + 352), v105);
    v108 = vsubq_f32(*(result + 368), v104);
    v109 = vsubq_f32(*(result + 384), v102);
    v110 = vdupq_laneq_s32(v50, 3);
    v111 = vdupq_laneq_s32(v51, 3);
    v112 = vbslq_s8(v73, v111, v110);
    v113 = vbslq_s8(v72, v111, v110);
    v114 = vbslq_s8(v71, v111, v110);
    v115 = vbslq_s8(v70, v111, v110);
    v116 = 0;
    v117 = 0;
    if (fabsf(v53) >= 0.00024414)
    {
      *v117.i32 = vrecpes_f32(v53);
    }

    v118 = vuzp1q_s8(v67, v66);
    v119 = vmlaq_f32(v103, v115, v109);
    v120 = vmlaq_f32(v97, v114, v108);
    v121 = vmlaq_f32(v96, v113, v107);
    v122 = vmlaq_f32(v95, v112, v106);
    if (fabsf(v55) >= 0.00024414)
    {
      *v116.i32 = vrecpes_f32(v55);
    }

    v123 = vdupq_lane_s32(v117, 0);
    v124 = vdupq_lane_s32(v116, 0);
    v125 = vextq_s8(v118, v118, 8uLL).u64[0];
    v126 = vmulq_f32(v121, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v118.i8, *v4.f32)), 0x1FuLL)), v124, v123));
    v127 = vmulq_f32(v122, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v118.i8, *v4.f32)), 0x1FuLL)), v124, v123));
    v128 = vmulq_f32(v119, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v125, *v4.f32)), 0x1FuLL)), v124, v123));
    v129 = vmulq_f32(v120, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v125, *v4.f32)), 0x1FuLL)), v124, v123));
    if (*(result + 134) >= 1)
    {
      v4.i64[0] = 0;
      v130 = 0;
      if (fabsf(v4.f32[3]) >= 0.0039062)
      {
        *v130.i32 = vrecpes_f32(v4.f32[3]);
      }

      if (fabsf(v45.f32[3]) >= 0.0039062)
      {
        v4.f32[0] = vrecpes_f32(v45.f32[3]);
      }

      v131 = vdupq_lane_s32(v130, 0);
      v132 = vdupq_lane_s32(*v4.f32, 0);
      v126 = vbslq_s8(vcltzq_s32(*(result + 736)), vmulq_f32(v107, vorrq_s8(vandq_s8(v132, v197), vandq_s8(vcgezq_s32(v195), v131))), v126);
      v127 = vbslq_s8(vcltzq_s32(*(result + 720)), vmulq_f32(v106, vorrq_s8(vandq_s8(v132, v196), vandq_s8(vcgezq_s32(*a2), v131))), v127);
      v129 = vbslq_s8(vcltzq_s32(*(result + 752)), vmulq_f32(v108, vorrq_s8(vandq_s8(v132, v65), vandq_s8(vcgezq_s32(v63), v131))), v129);
      v128 = vbslq_s8(vcltzq_s32(*(result + 768)), vmulq_f32(v109, vorrq_s8(vandq_s8(v132, v64), vandq_s8(vcgezq_s32(v58), v131))), v128);
    }

    __asm { FMOV            V0.4S, #1.0 }

    v134 = vminnmq_f32(v126, _Q0);
    v135 = vminnmq_f32(v129, _Q0);
    v136 = vminnmq_f32(v128, _Q0);
    v41 = vmaxnmq_f32(vminnmq_f32(v127, _Q0), 0);
    v42 = vmaxnmq_f32(v134, 0);
    v43 = vmaxnmq_f32(v135, 0);
    v44 = vmaxnmq_f32(v136, 0);
  }

  else
  {
    v5 = *(a2 + 48);
    v6 = *(a2 + 64);
    v7 = vdupq_lane_s32(*v6.i8, 0);
    v9 = *(a2 + 112);
    v8 = *(a2 + 128);
    v10 = vdupq_lane_s32(*v9.i8, 0);
    v12 = *(a2 + 16);
    v11 = *(a2 + 32);
    v13 = vcltzq_s32(v12);
    v14 = vcltzq_s32(*a2);
    v15 = vcltzq_s32(v5);
    v16 = vcltzq_s32(v11);
    v17 = vuzp1q_s16(v16, v15);
    v18 = vuzp1q_s16(v14, v13);
    v19 = vmovn_s16(v17);
    v20 = vmovn_s16(v18);
    v21 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v20, *v4.f32)), 0x1FuLL)), v10, v7);
    v22 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v20, *v4.f32)), 0x1FuLL)), v10, v7);
    v23 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v19, *v4.f32)), 0x1FuLL)), v10, v7);
    v24 = vsubq_f32(*(result + 704), vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v19, *v4.f32)), 0x1FuLL)), v10, v7));
    v25 = vsubq_f32(*(result + 688), v23);
    v26 = vsubq_f32(*(result + 672), v22);
    v27 = vsubq_f32(*(result + 656), v21);
    if (a3 > 3)
    {
      v137 = vuzp1q_s8(v18, v17);
      LODWORD(v138) = HIDWORD(*(a2 + 80));
      LODWORD(v139) = HIDWORD(*(a2 + 128));
      v140 = vdupq_laneq_s32(v6, 3);
      v141 = vdupq_laneq_s32(v9, 3);
      v151 = *(result + 352);
      v142 = vextq_s8(v137, v137, 8uLL).u64[0];
      v143 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v142, *v4.f32)), 0x1FuLL)), v141, v140);
      v144 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v142, *v4.f32)), 0x1FuLL)), v141, v140);
      v145 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v137.i8, *v4.f32)), 0x1FuLL)), v141, v140);
      v146 = vsubq_f32(v151, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v137.i8, *v4.f32)), 0x1FuLL)), v141, v140));
      v147 = vsubq_f32(*(result + 336), v145);
      v148 = vsubq_f32(*(result + 384), v144);
      v149 = vsubq_f32(*(result + 368), v143);
      v150 = vmuls_lane_f32(v4.f32[3], v4, 3) + (v4.f32[0] * v4.f32[0]);
      v151.f32[0] = vmuls_lane_f32(v8.f32[3], v8, 3) + (v8.f32[0] * v8.f32[0]);
      v152 = 0;
      if (fabsf(v150) >= 0.000015259)
      {
        *v152.i32 = vrecpes_f32(v150);
      }

      v153 = fabsf(v151.f32[0]);
      v151.f32[0] = vrecpes_f32(v151.f32[0]);
      if (v153 < 0.000015259)
      {
        v151.f32[0] = 0.0;
      }

      v154 = vdupq_lane_s32(*v4.f32, 0);
      v155 = vdupq_lane_s32(*v8.f32, 0);
      v156 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v137.i8, *v4.f32)), 0x1FuLL));
      v157 = vbslq_s8(v156, v155, v154);
      v158 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v137.i8, *v4.f32)), 0x1FuLL));
      v159 = vbslq_s8(v158, v155, v154);
      v160 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v142, *v4.f32)), 0x1FuLL));
      v161 = vbslq_s8(v160, v155, v154);
      v162 = vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v142, *v4.f32)), 0x1FuLL));
      v163 = vbslq_s8(v162, v155, v154);
      v164 = vdupq_laneq_s32(v4, 3);
      v165 = vdupq_laneq_s32(v8, 3);
      v166 = vbslq_s8(v162, v165, v164);
      v167 = vbslq_s8(v160, v165, v164);
      v168 = vbslq_s8(v158, v165, v164);
      v169 = vmulq_f32(vbslq_s8(v156, v165, v164), v146);
      v170 = vmlaq_f32(vmulq_f32(v166, v149), v163, v25);
      v171 = vmlaq_f32(vmulq_f32(v167, v148), v161, v24);
      v172 = vmlaq_f32(vmulq_f32(v168, v147), v159, v27);
      v173 = vmlaq_f32(v169, v157, v26);
      v174 = vdupq_lane_s32(v152, 0);
      v175 = vdupq_lane_s32(*v151.f32, 0);
      v176 = vbslq_s8(v162, v175, v174);
      v177 = vbslq_s8(v160, v175, v174);
      v178 = vmulq_f32(v173, vbslq_s8(v156, v175, v174));
      v179 = vmulq_f32(v172, vbslq_s8(v158, v175, v174));
      v180 = vmulq_f32(v171, v177);
      v181 = vmulq_f32(v170, v176);
      if (*(result + 134) >= 1)
      {
        v182 = 0;
        v183 = 0;
        if (fabsf(v138) >= 0.000015259)
        {
          *v183.i32 = vrecpes_f32(v138);
        }

        if (fabsf(v139) >= 0.000015259)
        {
          *v182.i32 = vrecpes_f32(v139);
        }

        v184 = vdupq_lane_s32(v183, 0);
        v185 = vdupq_lane_s32(v182, 0);
        v186 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(*v137.i8, *v178.f32)), 0x1FuLL)), v185, v184);
        v187 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(*v137.i8, *v178.f32)), 0x1FuLL)), v185, v184);
        v188 = vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip2_s8(v142, *v178.f32)), 0x1FuLL)), v185, v184);
        v189 = vmulq_f32(v149, vbslq_s8(vcltzq_s32(vshlq_n_s32(vmovl_u16(vzip1_s8(v142, *v178.f32)), 0x1FuLL)), v185, v184));
        v178 = vbslq_s8(vcltzq_s32(*(result + 736)), vmulq_f32(v146, v186), v178);
        v179 = vbslq_s8(vcltzq_s32(*(result + 720)), vmulq_f32(v147, v187), v179);
        v180 = vbslq_s8(vcltzq_s32(*(result + 768)), vmulq_f32(v148, v188), v180);
        v181 = vbslq_s8(vcltzq_s32(*(result + 752)), v189, v181);
      }

      __asm { FMOV            V1.4S, #1.0 }

      v191 = vminnmq_f32(v179, _Q1);
      v192 = vminnmq_f32(v178, _Q1);
      v193 = vminnmq_f32(v181, _Q1);
      v194 = vminnmq_f32(v180, _Q1);
      v41 = vmaxnmq_f32(v191, 0);
      v42 = vmaxnmq_f32(v192, 0);
      v43 = vmaxnmq_f32(v193, 0);
      v44 = vmaxnmq_f32(v194, 0);
    }

    else
    {
      v28 = fabsf(v4.f32[0]);
      v4.f32[0] = vrecpes_f32(v4.f32[0]);
      if (v28 < 0.000015259)
      {
        v4.f32[0] = 0.0;
      }

      v29 = fabsf(v8.f32[0]);
      v8.f32[0] = vrecpes_f32(v8.f32[0]);
      if (v29 < 0.000015259)
      {
        v8.f32[0] = 0.0;
      }

      v30 = vdupq_lane_s32(*v4.f32, 0);
      v31 = vdupq_lane_s32(*v8.f32, 0);
      v32 = vandq_s8(vcgezq_s32(v5), v30);
      v33 = vandq_s8(vcgezq_s32(v11), v30);
      v34 = vandq_s8(vcgezq_s32(v12), v30);
      v35 = vmaxnmq_f32(vmulq_f32(v27, vorrq_s8(vandq_s8(v31, v14), vandq_s8(vcgezq_s32(*a2), v30))), 0);
      __asm { FMOV            V4.4S, #1.0 }

      v41 = vminnmq_f32(v35, _Q4);
      v42 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v26, vorrq_s8(vandq_s8(v31, v13), v34)), 0), _Q4);
      v43 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v25, vorrq_s8(vandq_s8(v31, v16), v33)), 0), _Q4);
      v44 = vminnmq_f32(vmaxnmq_f32(vmulq_f32(v24, vorrq_s8(vandq_s8(v31, v15), v32)), 0), _Q4);
    }
  }

  *a4 = v41;
  a4[1] = v42;
  a4[2] = v43;
  a4[3] = v44;
  return result;
}

double PackDualBlock_4x4(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 53);
  v4 = __clz(__rbit32(v3 + 1));
  v5 = (v3 + 1) >> v4;
  v108 = v4;
  v107 = v3 | (v5 << 8);
  *v6.i64 = EncodeValues(&v107, *(a1 + 32));
  v7 = (a1 + 54);
  v8 = vld1q_dup_s8(v7);
  v9 = xmmword_298451AC0;
  v10 = vandq_s8(v6, vcgtq_u8(v8, xmmword_298451AC0));
  if (v5 == 5)
  {
    v106 = xmmword_298451AC0;
    *v11.i64 = pack_quints_vec(v4, v10);
  }

  else if (v5 == 3)
  {
    v106 = xmmword_298451AC0;
    *v11.i64 = pack_trits_vec(v4, v10);
  }

  else
  {
    v11 = 0uLL;
    if (v5 != 1)
    {
      goto LABEL_8;
    }

    v106 = xmmword_298451AC0;
    *v11.i64 = pack_bits_vec(v4, v10);
  }

  v9 = v106;
LABEL_8:
  v12 = *(a1 + 55);
  v13 = *(a1 + 52);
  v14 = __clz(__rbit32(v13 + 1));
  v15 = (v13 + 1) >> v14;
  v16 = *a1;
  if (v15 == 1)
  {
    v17 = vorrq_s8(vshlq_u16((*&v16 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(8 - v14))), (*&v16 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v18.i64[0] = 0xFFFF0000FFFFLL;
    v18.i64[1] = 0xFFFF0000FFFFLL;
    v19.i64[0] = 0xFFFF0000FFFF0000;
    v19.i64[1] = 0xFFFF0000FFFF0000;
    v20 = vorrq_s8(vshlq_u32(vandq_s8(v17, v19), vnegq_s32(vdupq_n_s32(2 * (8 - v14)))), vandq_s8(v17, v18));
    v18.i64[0] = 0xFFFFFFFFLL;
    v18.i64[1] = 0xFFFFFFFFLL;
    v21 = vandq_s8(v20, v18);
    v19.i64[0] = 0xFFFFFFFF00000000;
    v19.i64[1] = 0xFFFFFFFF00000000;
    v22 = vandq_s8(v20, v19);
    *v19.i8 = vdup_n_s32(4 * (8 - v14));
    v23.i64[0] = v19.u32[0];
    v23.i64[1] = v19.u32[1];
    v24 = vorrq_s8(vshlq_u64(v22, vnegq_s64(v23)), v21);
    v25 = v24.u64[1];
    v26 = 8 * v14;
    v27 = (v24.i64[1] << v26) | v24.i64[0];
    v14 = -v26;
LABEL_24:
    v45.i64[0] = v27;
    v45.i64[1] = v25 >> v14;
    goto LABEL_25;
  }

  if (v14)
  {
    v28 = vmovl_u8(*v16.i8);
    v29 = vmovl_high_u8(v16);
    v30 = vdupq_n_s16(v13);
    v31 = vsubw_u8(v30, *v16.i8);
    v32 = vsubw_high_u8(v30, v16);
    v33 = vminq_u16(v32, v29);
    v34 = vminq_u16(v31, v28);
    if (v15 == 3)
    {
      v35 = 21846;
    }

    else
    {
      v35 = 13108;
    }

    v36 = vdupq_n_s16(v35);
    v37 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v34.i8, *v36.i8), 0x10uLL), vmull_high_u16(v34, v36), 0x10uLL);
    v38 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*v33.i8, *v36.i8), 0x10uLL), vmull_high_u16(v33, v36), 0x10uLL);
    v39 = vdupq_n_s16(v15);
    v40 = vmlsq_s16(v34, v37, v39);
    v41 = vmlsq_s16(v33, v38, v39);
    v42 = vdupq_n_s16(v14);
    v43 = vcgtq_u16(v28, v31);
    v44.i64[0] = 0x1000100010001;
    v44.i64[1] = 0x1000100010001;
    v16 = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v40, v42), vaddq_s16(v37, v37)), vandq_s8(v43, v44)), vorrq_s8(vaddq_s16(vshlq_u16(v41, v42), vaddq_s16(v38, v38)), vandq_s8(vcgtq_u16(v29, v32), v44)));
  }

  if (v15 == 3)
  {
    v74 = vdupq_n_s8(v14);
    v75 = vshlq_u8(v16, vnegq_s8(v74));
    v76 = vqtbl1q_s8(v75, xmmword_298495C40);
    v77 = vqtbl1q_s8(v75, xmmword_298495C50);
    v78 = vpaddq_s16(vmull_u8(*v76.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v76, v76, 8uLL), 0x8010040180100401));
    v78.i64[0] = vpaddq_s16(v78, v78).u64[0];
    v79 = vmovl_s16(*v78.i8);
    v80 = vshlq_n_s32(v77, 5uLL);
    v76.i64[0] = 0x3000000030;
    v76.i64[1] = 0x3000000030;
    v81.i64[0] = 0x2000000020;
    v81.i64[1] = 0x2000000020;
    v82 = vceqq_s32(vandq_s8(v79, v76), v81);
    v83 = vaddw_s16(v80, *v78.i8);
    v81.i64[0] = 0xFF000000FFLL;
    v81.i64[1] = 0xFF000000FFLL;
    v84 = vcgtq_s32(v83, v81);
    if ((vmaxvq_u32(vorrq_s8(v82, v84)) & 0x80000000) != 0)
    {
      v85.i64[0] = 0x200000002;
      v85.i64[1] = 0x200000002;
      v86 = vceqq_s32(v77, v85);
      v87 = vshrq_n_u32(v79, 2uLL);
      v88 = vandq_s8(v84, v86);
      v89.i64[0] = 0xF0000000FLL;
      v89.i64[1] = 0xF0000000FLL;
      v90 = vandq_s8(v79, v89);
      v91.i64[0] = 0x303030303030303;
      v91.i64[1] = 0x303030303030303;
      v92.i64[0] = 0x6060606060606060;
      v92.i64[1] = 0x6060606060606060;
      v83 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v92, v80, v91), v84), v83), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v90), v82), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v87, v89)), v88))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v90), vandq_s8(v82, v88)));
    }

    v93 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v83, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v74), vandq_s8(v16, vdupq_n_s8((1 << v14) - 1)));
    v94 = vaddq_s16(vshlq_u16(vshlq_u16((*&v93 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - v14))), xmmword_298495E00), (*&v93 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v95.i64[0] = 0xFFFF0000FFFFLL;
    v95.i64[1] = 0xFFFF0000FFFFLL;
    v96 = vandq_s8(v94, v95);
    v97.i64[0] = 0xFFFF0000FFFF0000;
    v97.i64[1] = 0xFFFF0000FFFF0000;
    v98 = vshlq_u32(vandq_s8(v94, v97), vnegq_s32(vdupq_n_s32(13 - 2 * v14)));
    v99 = vaddq_s32(vaddq_s32(v98, v96), v98.u32[0]);
    v96.i64[0] = 0xFFFFFFFFLL;
    v96.i64[1] = 0xFFFFFFFFLL;
    v100 = vandq_s8(v99, v96);
    v97.i64[0] = 0xFFFFFFFF00000000;
    v97.i64[1] = 0xFFFFFFFF00000000;
    v101 = vandq_s8(v99, v97);
    *v97.i8 = vdup_n_s32(25 - 4 * v14);
    v102.i64[0] = v97.u32[0];
    v102.i64[1] = v97.u32[1];
    v103 = vaddq_s64(vshlq_u64(v101, vnegq_s64(v102)), v100);
    v25 = v103.u64[1];
    v27 = (v103.i64[1] << (8 * v14 + 13)) | v103.i64[0];
    v73 = 51;
    goto LABEL_23;
  }

  v45 = 0uLL;
  if (v15 == 5)
  {
    v46 = vdupq_n_s8(v14);
    v47 = vshlq_u8(v16, vnegq_s8(v46));
    v48 = vqtbl1q_s8(v47, xmmword_298495BC0);
    v49 = vqtbl1q_s8(v47, xmmword_298495BD0);
    v50 = vpaddq_s16(vmull_u8(*v48.i8, 0x2001200120012001), vmull_u8(*&vextq_s8(v48, v48, 8uLL), 0x2001200120012001));
    v48.i64[0] = 0x7000700070007;
    v48.i64[1] = 0x7000700070007;
    v51 = vandq_s8(v50, v48);
    v52 = vandq_s8(vshrq_n_u16(v50, 5uLL), v48);
    v53.i64[0] = 0x4000400040004;
    v53.i64[1] = 0x4000400040004;
    v54 = vceqq_s16(v49, v53);
    v55 = vceqq_s16(v52, v53);
    v56 = vsubq_s8(vaddq_s16(v50, vshlq_n_s16(v49, 3uLL)), vandq_s8(vqtbl1q_s8(xmmword_298495BE0, v51), v55));
    if ((vmaxvq_u16(v54) & 0x8000) != 0)
    {
      v57 = v9;
      v58.i64[0] = 0x18001800180018;
      v58.i64[1] = 0x18001800180018;
      v59 = vmulq_s16(v52, v58);
      v9 = v57;
      v56 = vsubq_s8(v56, vaddq_s8(vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495BF0, v51), v54), vandq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C00, v51), v54), v55)), vandq_s8(v59, vandq_s8(vceqq_s16(v51, v53), v54))));
    }

    v60 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v56, xmmword_298495E10), xmmword_298495E20), xmmword_298495E30), v46), vandq_s8(v16, vdupq_n_s8((1 << v14) - 1)));
    v61 = vaddq_s16(vshlq_u16(vshlq_u16((*&v60 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(6 - v14))), xmmword_298495E40), (*&v60 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
    v62.i64[0] = 0xFFFF0000FFFFLL;
    v62.i64[1] = 0xFFFF0000FFFFLL;
    v63 = vandq_s8(v61, v62);
    v64.i64[0] = 0xFFFF0000FFFF0000;
    v64.i64[1] = 0xFFFF0000FFFF0000;
    v65 = vshlq_u32(vandq_s8(v61, v64), vnegq_s32(vdupq_n_s32(12 - 2 * v14)));
    v66 = vaddq_s32(v65, v63);
    v65.i32[1] = 0;
    v67 = vaddq_s32(v66, v65);
    v66.i64[0] = 0xFFFFFFFFLL;
    v66.i64[1] = 0xFFFFFFFFLL;
    v68 = vandq_s8(v67, v66);
    v64.i64[0] = 0xFFFFFFFF00000000;
    v64.i64[1] = 0xFFFFFFFF00000000;
    LODWORD(v69) = 0;
    HIDWORD(v69) = v67.i32[1];
    v70 = vaddq_s64(vandq_s8(v67, v64), v69);
    *v64.i8 = vdup_n_s32(23 - 4 * v14);
    v71.i64[0] = v64.u32[0];
    v71.i64[1] = v64.u32[1];
    v72 = vaddq_s64(vshlq_u64(v70, vnegq_s64(v71)), v68);
    v25 = v72.u64[1];
    v27 = (v72.i64[1] << (8 * v14 + 19)) | v72.i64[0];
    v73 = 45;
LABEL_23:
    LOBYTE(v14) = v73 - 8 * v14;
    goto LABEL_24;
  }

LABEL_25:
  v104 = vqtbl1q_s8(v11, vsubq_s8(v9, vdupq_n_s8(v12 >> 3)));
  *&result = vorrq_s8(vorrq_s8(vshlq_u64(vqtbl1q_s8(v104, xmmword_298451AD0), vdupq_n_s64(*&v12 | 0xFFFFFFFFFFFFFFF8)), vorrq_s8(v2, vshlq_u64(v104, vdupq_n_s64(v12 & 7)))), vqtbl1q_s8(vrbitq_s8(v45), xmmword_298495DE0)).u64[0];
  return result;
}

double EncodeValues(unsigned __int8 *a1, uint8x16_t a2)
{
  v2 = a1[1];
  if (v2 != 1)
  {
    v3 = a1[2];
    if (a1[2])
    {
      v4 = vmovl_high_u8(a2);
      v5 = vmovl_u8(*a2.i8);
      v6 = vdupq_n_s16(*a1);
      v7 = vsubw_high_u8(v6, a2);
      v20 = v4;
      v21 = v7;
      v8 = vsubw_u8(v6, *a2.i8);
      v18 = v5;
      v19 = v8;
      if (v2 == 3)
      {
        v9 = 21846;
      }

      else
      {
        v9 = 13108;
      }

      v16 = vminq_u16(v8, v5);
      v17 = vminq_u16(v7, v4);
      v23[0] = v16;
      v23[1] = v17;
      v22[0] = vdupq_n_s16(v9);
      v22[1] = v22[0];
      mul_hi(v23, v22, &v24);
      v10 = vmovl_u8(vdup_n_s8(v2));
      v11 = vmlsq_s16(v16, v24, v10);
      v12 = vmlsq_s16(v17, v25, v10);
      v13 = vdupq_n_s16(v3);
      v14 = vaddq_s16(vshlq_u16(v12, v13), vaddq_s16(v25, v25));
      v12.i64[0] = 0x1000100010001;
      v12.i64[1] = 0x1000100010001;
      a2.i64[0] = vuzp1q_s8(vorrq_s8(vaddq_s16(vshlq_u16(v11, v13), vaddq_s16(v24, v24)), vandq_s8(vcgtq_u16(v18, v19), v12)), vorrq_s8(v14, vandq_s8(vcgtq_u16(v20, v21), v12))).u64[0];
    }
  }

  return *a2.i64;
}

void ASTCEncoder::~ASTCEncoder(void **this)
{
  *this = &unk_2A1EE71B8;
  freePartitionTables2D(this[12]);
}

{
  ASTCEncoder::~ASTCEncoder(this);

  JUMPOUT(0x29C28AB80);
}

uint32x4_t mul_hi@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint16x8_t *a3@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a2 + 16);
  v5 = vqshrn_n_u32(vmull_u16(*v3.i8, *v4.i8), 0x10uLL);
  result = vmull_high_u16(v3, v4);
  *a3 = vqshrn_high_n_u32(vqshrn_n_u32(vmull_u16(*a1, *a2), 0x10uLL), vmull_high_u16(*a1, *a2), 0x10uLL);
  a3[1] = vqshrn_high_n_u32(v5, result, 0x10uLL);
  return result;
}

double pack_bits_vec(char a1, uint16x8_t a2)
{
  v2 = *&a2 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL);
  a2.i32[0] &= 0xFF00FF00;
  a2.i16[2] &= 0xFF00u;
  a2.i16[3] &= 0xFF00u;
  a2.i16[4] &= 0xFF00u;
  a2.i16[5] &= 0xFF00u;
  a2.i16[6] &= 0xFF00u;
  a2.i16[7] &= 0xFF00u;
  v3 = vorrq_s8(vshlq_u16(a2, vnegq_s16(vdupq_n_s16((8 - a1)))), v2);
  *&v2 = 0xFFFF0000FFFFLL;
  *(&v2 + 1) = 0xFFFF0000FFFFLL;
  v4.i64[0] = 0xFFFF0000FFFF0000;
  v4.i64[1] = 0xFFFF0000FFFF0000;
  v5 = vorrq_s8(vshlq_u32(vandq_s8(v3, v4), vnegq_s32(vdupq_n_s32(2 * ((8 - a1) & 0x7Fu)))), vandq_s8(v3, v2));
  *&v2 = 0xFFFFFFFFLL;
  *(&v2 + 1) = 0xFFFFFFFFLL;
  v6 = vandq_s8(v5, v2);
  v4.i64[0] = 0xFFFFFFFF00000000;
  v4.i64[1] = 0xFFFFFFFF00000000;
  v7 = vandq_s8(v5, v4);
  *v4.i8 = vdup_n_s32(4 * ((8 - a1) & 0x3Fu));
  v8.i64[0] = v4.u32[0];
  v8.i64[1] = v4.u32[1];
  v9 = vorrq_s8(vshlq_u64(v7, vnegq_s64(v8)), v6);
  *&result = (v9.i64[1] << (8 * a1)) | v9.i64[0];
  return result;
}

uint64_t ATEncoder_dtor(uint64_t result)
{
  if (result)
  {
    return (**(result + 80))();
  }

  return result;
}

double pack_trits_vec(unsigned int a1, uint8x16_t a2)
{
  v2 = vdupq_n_s8(a1);
  v3 = vshlq_u8(a2, vnegq_s8(v2));
  v4 = vqtbl1q_s8(v3, xmmword_298495C40);
  v5 = vqtbl1q_s8(v3, xmmword_298495C50);
  v6 = vpaddq_s16(vmull_u8(*v4.i8, 0x8010040180100401), vmull_u8(*&vextq_s8(v4, v4, 8uLL), 0x8010040180100401));
  v6.i64[0] = vpaddq_s16(v6, v6).u64[0];
  v7 = vmovl_s16(*v6.i8);
  v8 = vshlq_n_s32(v5, 5uLL);
  v4.i64[0] = 0x3000000030;
  v4.i64[1] = 0x3000000030;
  v9.i64[0] = 0x2000000020;
  v9.i64[1] = 0x2000000020;
  v10 = vceqq_s32(vandq_s8(v7, v4), v9);
  v11 = vaddw_s16(v8, *v6.i8);
  v9.i64[0] = 0xFF000000FFLL;
  v9.i64[1] = 0xFF000000FFLL;
  v12 = vcgtq_s32(v11, v9);
  if ((vmaxvq_u32(vorrq_s8(v10, v12)) & 0x80000000) != 0)
  {
    v13.i64[0] = 0x200000002;
    v13.i64[1] = 0x200000002;
    v14 = vceqq_s32(v5, v13);
    v15 = vshrq_n_u32(v7, 2uLL);
    v16 = vandq_s8(v12, v14);
    v17.i64[0] = 0xF0000000FLL;
    v17.i64[1] = 0xF0000000FLL;
    v18 = vandq_s8(v7, v17);
    v19.i64[0] = 0x303030303030303;
    v19.i64[1] = 0x303030303030303;
    v20.i64[0] = 0x6060606060606060;
    v20.i64[1] = 0x6060606060606060;
    v11 = vaddq_s8(vsubq_s8(vaddq_s8(vandq_s8(vmlaq_s8(v20, v8, v19), v12), v11), vaddq_s8(vandq_s8(vqtbl1q_s8(xmmword_298495C60, v18), v10), vandq_s8(vqtbl1q_s8(xmmword_298495C70, vandq_s8(v15, v17)), v16))), vandq_s8(vqtbl1q_s8(xmmword_298495C80, v18), vandq_s8(v10, v16)));
  }

  v21 = vorrq_s8(vshlq_u8(vshlq_u8(vandq_s8(vqtbl1q_s8(v11, xmmword_298495DF0), xmmword_298495D00), xmmword_298495D30), v2), vandq_s8(vdupq_n_s8((1 << a1) - 1), a2));
  v22 = vaddq_s16(vshlq_u16(vshlq_u16((*&v21 & __PAIR128__(0xFF00FF00FF00FF00, 0xFF00FF00FF00FF00)), vnegq_s16(vdupq_n_s16(7 - a1))), xmmword_298495E00), (*&v21 & __PAIR128__(0xFF00FF00FF00FFLL, 0xFF00FF00FF00FFLL)));
  v23.i64[0] = 0xFFFF0000FFFFLL;
  v23.i64[1] = 0xFFFF0000FFFFLL;
  v24 = vandq_s8(v22, v23);
  v25.i64[0] = 0xFFFF0000FFFF0000;
  v25.i64[1] = 0xFFFF0000FFFF0000;
  v26 = vshlq_u32(vandq_s8(v22, v25), vnegq_s32(vdupq_n_s32(13 - 2 * a1)));
  v27 = vaddq_s32(vaddq_s32(v26, v24), v26.u32[0]);
  v24.i64[0] = 0xFFFFFFFFLL;
  v24.i64[1] = 0xFFFFFFFFLL;
  v28 = vandq_s8(v27, v24);
  v25.i64[0] = 0xFFFFFFFF00000000;
  v25.i64[1] = 0xFFFFFFFF00000000;
  v29 = vandq_s8(v27, v25);
  *v25.i8 = vdup_n_s32(25 - 4 * a1);
  v30.i64[0] = v25.u32[0];
  v30.i64[1] = v25.u32[1];
  v31 = vaddq_s64(vshlq_u64(v29, vnegq_s64(v30)), v28);
  *&result = (v31.i64[1] << (8 * a1 + 13)) | v31.i64[0];
  return result;
}

void freePartitionTables2D(char *a1)
{
  if (a1)
  {
    for (i = 0; i != 24576; i += 8)
    {
      v3 = *&a1[i];
      if (v3)
      {
        free(v3);
      }
    }

    free(a1);
  }
}

void *___ZN11ASTCEncoderC2ERK10CommonData_block_invoke()
{
  v0 = dlopen("/System/Library/Frameworks/Accelerate.framework/Accelerate", 261);
  if (!v0)
  {
    result = _vDSP_meanv;
    if (_vDSP_meanv)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  result = dlsym(v0, "vDSP_meanv");
  _vDSP_meanv = result;
  if (!result)
  {
LABEL_3:
    _vDSP_meanv = my_meanv;
  }

LABEL_4:
  kAlphaProcs4x4[0] = PassThrough_4x4_vec;
  qword_2A1898BC8 = FlattenNon_4x4_vec;
  qword_2A1898BD0 = Premultiply_4x4_vec;
  qword_2A1898BD8 = SetAlphaOne_4x4_vec;
  unk_2A1898BE0 = SetAlphaOne_4x4_vec;
  qword_2A1898BE8 = SetAlphaOne_4x4_vec;
  qword_2A1898BF0 = Unpremultiply_4x4_vec;
  qword_2A1898BF8 = FlattenPre_4x4_vec;
  qword_2A1898C00 = ClampPremultiplied_4x4_vec;
  kAlphaProcs8x8[0] = PassThrough_8x8_vec;
  qword_2A1898B80 = FlattenNon_8x8_vec;
  qword_2A1898B88 = Premultiply_8x8_vec;
  qword_2A1898B90 = SetAlphaOne_8x8_vec;
  unk_2A1898B98 = SetAlphaOne_8x8_vec;
  qword_2A1898BA0 = SetAlphaOne_8x8_vec;
  qword_2A1898BA8 = Unpremultiply_8x8_vec;
  qword_2A1898BB0 = FlattenPre_8x8_vec;
  qword_2A1898BB8 = ClampPremultiplied_8x8_vec;
  kEncodeProcs4x4 = EncodeASTC_4x4_RGBA_vec;
  kEncodeProcs8x8 = EncodeASTC_8x8_RGBA_vec;
  kDecodeProcs = DecodeASTC_RGBA_vec;
  kReadProcs4x4[0] = Read_4x4_R8_vec;
  qword_2A1898CA8 = Read_4x4_RA8_vec;
  qword_2A1898CB0 = Read_4x4_RGBA8_vec;
  qword_2A1898CB8 = Read_4x4_BGRA8_vec;
  qword_2A1898CC0 = Read_4x4_R16_vec;
  qword_2A1898CC8 = Read_4x4_RA16_vec;
  qword_2A1898CD0 = Read_4x4_RGBA16_vec;
  qword_2A1898CD8 = Read_4x4_Rf16_vec;
  qword_2A1898CE0 = Read_4x4_RAf16_vec;
  qword_2A1898CE8 = Read_4x4_RGBAf16_vec;
  kReadProcs8x8[0] = Read_8x8_R8_vec;
  qword_2A1898C58 = Read_8x8_RA8_vec;
  qword_2A1898C60 = Read_8x8_RGBA8_vec;
  qword_2A1898C68 = Read_8x8_BGRA8_vec;
  qword_2A1898C70 = Read_8x8_R16_vec;
  qword_2A1898C78 = Read_8x8_RA16_vec;
  qword_2A1898C80 = Read_8x8_RGBA16_vec;
  qword_2A1898C88 = Read_8x8_Rf16_vec;
  qword_2A1898C90 = Read_8x8_RAf16_vec;
  qword_2A1898C98 = Read_8x8_RGBAf16_vec;
  kWriteProcs[0] = Write_R8_vec;
  qword_2A1898D58 = Write_RA8_vec;
  qword_2A1898D60 = Write_RGBA8_vec;
  qword_2A1898D68 = Write_BGRA8_vec;
  qword_2A1898D70 = Write_R16_vec;
  qword_2A1898D78 = Write_RA16_vec;
  qword_2A1898D80 = Write_RGBA16_vec;
  qword_2A1898D88 = Write_Rf16_vec;
  qword_2A1898D90 = Write_RAf16_vec;
  qword_2A1898D98 = Write_RGBAf16_vec;
  kTexelAlphaProcs[0] = PassThrough_vec;
  qword_2A1898AE0 = FlattenNon_vec;
  qword_2A1898AE8 = Premultiply_vec;
  qword_2A1898AF0 = SetAlphaOne_vec;
  unk_2A1898AF8 = SetAlphaOne_vec;
  qword_2A1898B00 = SetAlphaOne_vec;
  qword_2A1898B08 = Unpremultiply_vec;
  qword_2A1898B10 = FlattenPre_vec;
  qword_2A1898B18 = ClampPremultiplied_vec;
  return result;
}

uint32_t at_encoder_get_version(void)
{
  result = at_encoder_get_version::version;
  if (at_encoder_get_version::version)
  {
    return result;
  }

  result = dladdr(at_encoder_create, &v14);
  if (!result)
  {
    return result;
  }

  dli_fbase = v14.dli_fbase;
  if (!v14.dli_fbase)
  {
    return 0;
  }

  if (*v14.dli_fbase != -889275714 && *v14.dli_fbase != -1095041334)
  {
    goto LABEL_16;
  }

  v3 = *(v14.dli_fbase + 1);
  if (!v3)
  {
    return 0;
  }

  v4 = bswap32(v3);
  for (i = (v14.dli_fbase + 16); *(i - 2) != 16777228; i += 5)
  {
    if (!--v4)
    {
      return 0;
    }
  }

  v6 = *i;
  if (!v6)
  {
    return 0;
  }

  dli_fbase = v14.dli_fbase + v6;
LABEL_16:
  v8 = *(dli_fbase + 8);
  v7 = dli_fbase + 32;
  v9 = *(v7 - 3);
  v10 = v8 != 13;
  v11 = v8 != 13 && v9 >= 9;
  if (v11)
  {
    do
    {
      v12 = v7[1];
      v11 = v9 >= v12;
      v9 -= v12;
      if (!v11)
      {
        v9 = 0;
      }

      v7 = (v7 + v12);
      v10 = *v7 != 13;
    }

    while (*v7 != 13 && v9 > 8);
  }

  result = 0;
  if (v9 >= 8 && !v10)
  {
    result = v7[4];
    at_encoder_get_version::version = result;
  }

  return result;
}

char *getPartitionTable(uint64_t a1, int a2, unsigned int a3)
{
  if (a3 < 2)
  {
    return &getPartitionTable_kZeros;
  }

  v7 = a2 + (a3 << 10) - 2048;
  result = *(a1 + 8 * v7);
  if (!result)
  {
    result = malloc_type_malloc(*(a1 + 24577) * *(a1 + 24576), 0x100004077774924uLL);
    if (result)
    {
      v8 = *(a1 + 24577);
      if (*(a1 + 24577))
      {
        v9 = 0;
        v10 = *(a1 + 24576);
        v11 = (v8 * v10) < 0x1F;
        v12 = -287438703 * ((a2 + (a3 << 10) - 1024) ^ ((a2 + (a3 << 10) - 1024) >> 15));
        v13 = (65537 * (v12 ^ (v12 >> 5))) ^ ((65537 * (v12 ^ (v12 >> 5))) >> 7);
        v14 = v13 ^ (v13 >> 3) ^ ((v13 ^ (v13 >> 3)) << 6);
        v15 = v14 ^ (v14 >> 17);
        v16 = vdup_n_s32(v15);
        v17 = v15 >> 6;
        v18 = v15 >> 2;
        v19.i32[0] = v15;
        v19.i32[1] = v15 >> 8;
        v20 = (v14 >> 20) & 0xF;
        v21 = vand_s8(v19, 0xF0000000FLL);
        v22 = vand_s8(vshl_u32(v16, 0xFFFFFFF4FFFFFFFCLL), 0xF0000000FLL);
        if ((a2 & 2) != 0)
        {
          v23 = 4;
        }

        else
        {
          v23 = 5;
        }

        if (a3 == 3)
        {
          v24 = 6;
        }

        else
        {
          v24 = 5;
        }

        if (a2)
        {
          v25 = v23;
        }

        else
        {
          v25 = v24;
        }

        if ((a2 & 1) == 0)
        {
          v24 = v23;
        }

        v26 = HIBYTE(v14) & 0xF;
        v27 = (v14 >> 28) * (v14 >> 28);
        v28 = vshl_u32(v16, 0xFFFFFFF6FFFFFFF2);
        v29 = vshl_u32(vmul_s32(v21, v21), vneg_s32(vdup_n_s32(v25)));
        v30 = vshl_u32(vmul_s32(v22, v22), vneg_s32(vdup_n_s32(v24)));
        v31 = ((HIWORD(v14) & 0xF) * (HIWORD(v14) & 0xF)) >> v25;
        v32 = (v20 * v20) >> v24;
        v33 = (v26 * v26) >> v25;
        v34 = v27 >> v24;
        v35 = result;
        do
        {
          if (v10)
          {
            v36 = 0;
            v37 = vmla_s32(v28, vdup_n_s32(v9 << v11), v30);
            do
            {
              v38 = 0;
              v39 = vand_s8(vmla_s32(v37, vdup_n_s32(v36 << v11), v29), 0x3F0000003FLL);
              v40 = (v17 + (v9 << v11) * v32 + (v36 << v11) * v31) & 0x3F;
              v41 = (v18 + (v9 << v11) * v34 + (v36 << v11) * v33) & 0x3F;
              if (a3 < 4)
              {
                v41 = 0;
              }

              if (a3 == 2)
              {
                v40 = 0;
              }

              if (v39.i32[0] < v39.i32[1] || v39.i32[0] < v40 || v39.i32[0] < v41)
              {
                if (v39.i32[1] >= v40 && v39.i32[1] >= v41)
                {
                  v38 = 1;
                }

                else if (v40 >= v41)
                {
                  v38 = 2;
                }

                else
                {
                  v38 = 3;
                }
              }

              *v35++ = v38;
              ++v36;
            }

            while (v10 != v36);
          }

          ++v9;
        }

        while (v9 != v8);
      }

      v45 = 0;
      atomic_compare_exchange_strong((a1 + 8 * v7), &v45, result);
      if (v45)
      {
        free(result);
        return *(a1 + 8 * v7);
      }
    }

    else
    {
      return &getPartitionTable_kZeros;
    }
  }

  return result;
}

_BYTE *allocatePartitionTables2D(char a1, char a2)
{
  result = malloc_type_calloc(1uLL, 0x6008uLL, 0x10100404847D080uLL);
  if (result)
  {
    result[24576] = a1;
    result[24577] = a2;
  }

  return result;
}

uint64_t decode_bc1(unsigned __int16 *a1, uint64_t a2)
{
  v20 = *MEMORY[0x29EDCA608];
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 1);
  v5 = (138547333 * (0xFFFF * (v2 >> 11))) >> 32;
  v6 = (68174085 * (0xFFFF * ((v2 >> 5) & 0x3F))) >> 32;
  v7 = (138547333 * (0xFFFF * (v2 & 0x1F))) >> 32;
  v8 = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  v9 = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  v10 = 0xFFFF * (v3 & 0x1F);
  HIDWORD(v12) = 0xFFFF;
  LODWORD(v12) = (138547333 * (0xFFFF * (v2 >> 11))) >> 32;
  DWORD1(v12) = (68174085 * (0xFFFF * ((v2 >> 5) & 0x3F))) >> 32;
  v11 = (138547333 * v10) >> 32;
  DWORD2(v12) = (138547333 * (0xFFFF * (v2 & 0x1F))) >> 32;
  HIDWORD(v13) = 0xFFFF;
  HIDWORD(v14) = 0xFFFF;
  if (v2 <= v3)
  {
    v16 = 0;
    LODWORD(v14) = (v8 + v5) >> 1;
    DWORD1(v14) = (v9 + v6) >> 1;
    DWORD2(v14) = (v11 + v7) >> 1;
    v15 = v14;
    v14 = 0uLL;
  }

  else
  {
    HIDWORD(v15) = 0xFFFF;
    LODWORD(v15) = (1431655766 * (v8 + 2 * v5)) >> 32;
    DWORD1(v15) = (1431655766 * (v9 + 2 * v6)) >> 32;
    DWORD2(v15) = (1431655766 * (v11 + 2 * v7)) >> 32;
    LODWORD(v14) = (1431655766 * (v5 + 2 * v8)) >> 32;
    DWORD1(v14) = (1431655766 * (v6 + 2 * v9)) >> 32;
    DWORD2(v14) = (1431655766 * (v7 + 2 * v11)) >> 32;
    v16 = 1;
  }

  v17 = 0;
  v19[0] = v12;
  DWORD2(v13) = (138547333 * v10) >> 32;
  DWORD1(v13) = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  LODWORD(v13) = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  v19[1] = v13;
  v19[2] = v15;
  v19[3] = v14;
  *(a2 + 28) = v16;
  do
  {
    *(a2 + 288 + v17) = v19[v4 & 3];
    v4 >>= 2;
    v17 += 16;
  }

  while (v17 != 256);
  return 0;
}

uint64_t decode_bc2(uint64_t *a1, uint64_t a2)
{
  v2 = 0;
  v16 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 4);
  v4 = *(a1 + 5);
  v5 = *(a1 + 3);
  v6 = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  v7 = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  v8 = (138547333 * (0xFFFF * (v3 & 0x1F))) >> 32;
  *&v9 = __PAIR64__(v7, v6);
  *(&v9 + 1) = v8;
  HIDWORD(v10) = 0;
  HIDWORD(v11) = 0;
  LODWORD(v11) = (138547333 * (0xFFFF * (v4 >> 11))) >> 32;
  DWORD1(v11) = (68174085 * (0xFFFF * ((v4 >> 5) & 0x3F))) >> 32;
  DWORD2(v11) = (138547333 * (0xFFFF * (v4 & 0x1F))) >> 32;
  v15[0] = v9;
  v15[1] = v11;
  HIDWORD(v9) = 0;
  LODWORD(v9) = (1431655766 * (v11 + 2 * v6)) >> 32;
  DWORD1(v9) = (1431655766 * (DWORD1(v11) + 2 * v7)) >> 32;
  DWORD2(v9) = (1431655766 * (DWORD2(v11) + 2 * v8)) >> 32;
  LODWORD(v10) = (1431655766 * (v6 + 2 * v11)) >> 32;
  DWORD1(v10) = (1431655766 * (v7 + 2 * DWORD1(v11))) >> 32;
  DWORD2(v10) = (1431655766 * (v8 + 2 * DWORD2(v11))) >> 32;
  v12 = *a1;
  v15[2] = v9;
  v15[3] = v10;
  do
  {
    v13.i64[0] = 0;
    v13.i32[2] = 0;
    v13.i32[3] = 4369 * (v12 & 0xF);
    *(a2 + 288 + v2) = vaddq_s32(v15[v5 & 3], v13);
    v5 >>= 2;
    v12 >>= 4;
    v2 += 16;
  }

  while (v2 != 256);
  return 0;
}

uint64_t decode_bc3(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 8);
  v3 = *(a1 + 10);
  v4 = (138547333 * (0xFFFF * (v2 >> 11))) >> 32;
  v5 = (68174085 * (0xFFFF * ((v2 >> 5) & 0x3F))) >> 32;
  v6 = (138547333 * (0xFFFF * (v2 & 0x1F))) >> 32;
  *&v7 = __PAIR64__(v5, v4);
  *(&v7 + 1) = v6;
  v9.i32[3] = 0;
  v9.i32[0] = (138547333 * (0xFFFF * (v3 >> 11))) >> 32;
  HIDWORD(v8) = 0;
  v9.i32[1] = (68174085 * (0xFFFF * ((v3 >> 5) & 0x3F))) >> 32;
  v9.i32[2] = (138547333 * (0xFFFF * (v3 & 0x1F))) >> 32;
  v23[0] = v7;
  v23[1] = v9;
  HIDWORD(v7) = 0;
  LODWORD(v7) = (1431655766 * (v9.i32[0] + 2 * v4)) >> 32;
  DWORD1(v7) = (1431655766 * (v9.i32[1] + 2 * v5)) >> 32;
  DWORD2(v7) = (1431655766 * (v9.i32[2] + 2 * v6)) >> 32;
  LODWORD(v8) = (1431655766 * (v4 + 2 * v9.i32[0])) >> 32;
  DWORD1(v8) = (1431655766 * (v5 + 2 * v9.i32[1])) >> 32;
  DWORD2(v8) = (1431655766 * (v6 + 2 * v9.i32[2])) >> 32;
  v23[2] = v7;
  v23[3] = v8;
  v10 = *(a1 + 1);
  v22[0] = *a1;
  v22[1] = v10;
  v11 = 2 * v10;
  v12 = 3 * v10;
  if (v22[0] <= v10)
  {
    LOBYTE(v17) = 0;
    v13 = (13108 * (v10 + 4 * v22[0])) >> 16;
    v14 = (13108 * (v11 + 3 * v22[0])) >> 16;
    v15 = (13108 * (v12 + 2 * v22[0])) >> 16;
    v16 = (13108 * (v22[0] + 4 * v10)) >> 16;
    LOBYTE(v10) = -1;
  }

  else
  {
    v13 = (9363 * (v10 + 6 * v22[0])) >> 16;
    v14 = (9363 * (v11 + 5 * v22[0])) >> 16;
    v15 = (9363 * (v12 + 4 * v22[0])) >> 16;
    v16 = (9363 * (3 * v22[0] + 4 * v10)) >> 16;
    v17 = (9363 * (5 * v10 + 2 * v22[0])) >> 16;
    v10 = (9363 * (v22[0] + 6 * v10)) >> 16;
  }

  v18 = 0;
  v22[2] = v13;
  v22[3] = v14;
  v22[4] = v15;
  v22[5] = v16;
  v22[6] = v17;
  v22[7] = v10;
  v19 = *(a1 + 12);
  v20 = *(a1 + 2) | (*(a1 + 4) << 16);
  do
  {
    v9.i64[0] = 0;
    v9.i32[2] = 0;
    v9.i8[12] = v22[v20 & 7];
    v9.i8[13] = v9.i8[12];
    *(a2 + 288 + v18) = vaddq_s32(v9, v23[v19 & 3]);
    v19 >>= 2;
    v20 >>= 3;
    v18 += 16;
  }

  while (v18 != 256);
  return 0;
}

uint64_t decode_bc4(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v21 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 1);
  v20[0] = *a1;
  v20[1] = v3;
  v4 = (13108 * (v3 + 4 * v20[0])) >> 16;
  v5 = v20[0] > v3;
  v6 = 3 * v20[0];
  v7 = (13108 * (2 * v3 + v6)) >> 16;
  v8 = (13108 * (3 * v3 + 2 * v20[0])) >> 16;
  v9 = (13108 * (v20[0] + 4 * v3)) >> 16;
  v10 = (9363 * (v3 + 6 * v20[0])) >> 16;
  v11 = (9363 * (2 * v3 + 5 * v20[0])) >> 16;
  v12 = (9363 * (3 * v3 + 4 * v20[0])) >> 16;
  v13 = (9363 * (v6 + 4 * v3)) >> 16;
  v14 = v20[0] + 6 * v3;
  v15 = (9363 * (5 * v3 + 2 * v20[0])) >> 16;
  v16 = (9363 * v14) >> 16;
  if (v5)
  {
    LOBYTE(v4) = v10;
  }

  if (v5)
  {
    LOBYTE(v9) = v13;
  }

  else
  {
    LOBYTE(v11) = v7;
    LOBYTE(v12) = v8;
  }

  if (!v5)
  {
    LOBYTE(v15) = 0;
    LOBYTE(v16) = -1;
  }

  v20[2] = v4;
  v20[3] = v11;
  v20[4] = v12;
  v20[5] = v9;
  v20[6] = v15;
  v20[7] = v16;
  v17 = *(a1 + 2) | (*(a1 + 4) << 16);
  do
  {
    v18 = vdupq_n_s32(v20[v17 & 7] | (v20[v17 & 7] << 8));
    v18.i32[3] = 0xFFFF;
    *(a2 + 288 + v2) = v18;
    v17 >>= 3;
    v2 += 16;
  }

  while (v2 != 256);
  return 0;
}

uint64_t decode_bc4s(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v7 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 2) | (*(a1 + 4) << 16);
  do
  {
    v4 = vdupq_n_s32(v6[v3 & 7]);
    v4.i32[3] = 15360;
    *(a2 + 288 + v2) = v4;
    v3 >>= 3;
    v2 += 16;
  }

  while (v2 != 256);
  return 0;
}

uint64_t decode_bc5(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x29EDCA608];
  v2 = *(a1 + 1);
  v3 = *(a1 + 8);
  v4 = *(a1 + 9);
  v26[0] = *a1;
  v26[1] = v2;
  v25[0] = v3;
  v25[1] = v4;
  v5 = 2 * v2;
  v6 = 3 * v2;
  if (v26[0] <= v2)
  {
    LOBYTE(v11) = 0;
    v7 = (13108 * (v2 + 4 * v26[0])) >> 16;
    v8 = (13108 * (v5 + 3 * v26[0])) >> 16;
    v9 = (13108 * (v6 + 2 * v26[0])) >> 16;
    v10 = (13108 * (v26[0] + 4 * v2)) >> 16;
    LOBYTE(v12) = -1;
  }

  else
  {
    v7 = (9363 * (v2 + 6 * v26[0])) >> 16;
    v8 = (9363 * (v5 + 5 * v26[0])) >> 16;
    v9 = (9363 * (v6 + 4 * v26[0])) >> 16;
    v10 = (9363 * (3 * v26[0] + 4 * v2)) >> 16;
    v11 = (9363 * (5 * v2 + 2 * v26[0])) >> 16;
    v12 = (9363 * (v26[0] + 6 * v2)) >> 16;
  }

  v26[2] = v7;
  v26[3] = v8;
  v26[4] = v9;
  v13 = 2 * v4;
  v26[5] = v10;
  v26[6] = v11;
  v14 = 3 * v4;
  v26[7] = v12;
  if (v3 <= v4)
  {
    LOBYTE(v19) = 0;
    v15 = (13108 * (v4 + 4 * v3)) >> 16;
    v16 = (13108 * (v13 + 3 * v3)) >> 16;
    v17 = (13108 * (v14 + 2 * v3)) >> 16;
    v18 = (13108 * (v3 + 4 * v4)) >> 16;
    LOBYTE(v13) = -1;
  }

  else
  {
    v15 = (9363 * (v4 + 6 * v3)) >> 16;
    v16 = (9363 * (v13 + 5 * v3)) >> 16;
    v17 = (9363 * (v14 + 4 * v3)) >> 16;
    v18 = (9363 * (3 * v3 + 4 * v4)) >> 16;
    v19 = (9363 * (5 * v4 + 2 * v3)) >> 16;
    v13 = (9363 * (v3 + 6 * v4)) >> 16;
  }

  v20 = 0;
  v25[2] = v15;
  v25[3] = v16;
  v25[4] = v17;
  v25[5] = v18;
  v21 = *(a1 + 2) | (*(a1 + 4) << 16);
  v22 = *(a1 + 10) | (*(a1 + 12) << 16);
  v25[6] = v19;
  v25[7] = v13;
  do
  {
    LODWORD(v23) = v26[v21 & 7] | (v26[v21 & 7] << 8);
    DWORD1(v23) = v25[v22 & 7] | (v25[v22 & 7] << 8);
    *(&v23 + 1) = 0xFFFF00000000;
    *(a2 + 288 + v20) = v23;
    v21 >>= 3;
    v22 >>= 3;
    v20 += 16;
  }

  while (v20 != 256);
  return 0;
}