uint64_t C3DConvert_unorm10a2_to_float3(uint64_t result, int a2, uint64_t a3, int a4, unsigned int a5)
{
  if (a5)
  {
    v5 = 0;
    v6 = 0;
    v7 = a5;
    v8 = vdupq_n_s32(0x3A802008u);
    do
    {
      v9 = (a3 + v5);
      v10 = vld1q_dup_f32(v9);
      v11 = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v10, xmmword_21C281600), xmmword_21C2815E0)), v8);
      v12 = result + v6;
      *v12 = v11.i64[0];
      *(v12 + 8) = v11.i32[2];
      v6 += a2;
      v5 += a4;
      --v7;
    }

    while (v7);
  }

  return result;
}

void C3DConvert_uchar4n_to_float4(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    C3DConvert_uchar4n_to_float4_cold_1();
  }
}

void C3DConvert_char4n_to_float4(uint64_t a1, uint64_t a2)
{
  v2 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    C3DConvert_uchar4n_to_float4_cold_1();
  }
}

uint64_t C3DConvertIsConvertible(uint64_t a1, uint64_t a2)
{
  v3 = a1;
  if (C3DBaseTypeIsFloatingValue(a1, a2))
  {
    IsFloatingValue = C3DBaseTypeIsFloatingValue(a2, v4);
  }

  else
  {
    IsFloatingValue = 0;
  }

  return (C3DConvertGetConverter(v3, a2) != 0) | IsFloatingValue & 1u;
}

void C3DConvertBatch(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v6 = a2;
  v8 = (a2 >> 16);
  v9 = HIDWORD(a2);
  v10 = (a4 >> 16);
  if (HIDWORD(a2) != HIDWORD(a4))
  {
    v11 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
    {
      C3DConvertBatch_cold_1(v11);
    }
  }

  Converter = C3DConvertGetConverter(v8, v10);
  if (Converter)
  {
    Converter(a1, v6, a3, v4, v9);
  }

  else if (C3DBaseTypeIsFloatingValue(v8, v13) && C3DBaseTypeIsFloatingValue(v10, v14) && v9)
  {
    v18 = 0;
    v19 = 0;
    do
    {
      *v20.i64 = C3DConvertFloatingTypeToFloat4(v10, (a3 + v18), v15, v16, v17);
      C3DConvertFloatingTypeFromFloat4(v8, a1 + v19, v20);
      v19 += v6;
      v18 += v4;
      --v9;
    }

    while (v9);
  }
}

double C3DConvertFloatingTypeToFloat4(uint64_t result, float *a2, float32x4_t a3, float a4, float a5)
{
  v5 = result;
  switch(result)
  {
    case 1:
    case 7:
      a3.f32[0] = *a2;
      return *a3.i64;
    case 8:
      a3.i64[0] = *a2;
      return *a3.i64;
    case 9:
      a3.i64[0] = *a2;
      return *a3.i64;
    case 10:
      a3 = *a2;
      return *a3.i64;
    case 15:
      v30 = *a2;
      v31 = (v30 >> 10) & 0x1F;
      if (v31 == 31)
      {
        v32 = 2139095040;
      }

      else
      {
        v32 = (v30 >> 10) & 0x1F;
      }

      if (v31)
      {
        v33 = v31 == 31;
      }

      else
      {
        v33 = 1;
      }

      if (v33)
      {
        v34 = v32;
      }

      else
      {
        v34 = (v31 << 23) + 939524096;
      }

      LODWORD(v35) = v34 | (v30 << 16) & 0x80000000 | (v30 >> 7) & 7 | (8 * (v30 & 0x3FF)) & 0x1FFF | ((v30 & 0x3FF) << 13);
      goto LABEL_60;
    case 23:
      v37 = vld1q_dup_f32(a2);
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v37, xmmword_21C281600), xmmword_21C2815E0));
      v38 = xmmword_21C281620;
      goto LABEL_70;
    case 24:
      v39 = vld1q_dup_f32(a2);
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v39, xmmword_21C281600), xmmword_21C2815E0));
      v38 = xmmword_21C281610;
      goto LABEL_70;
    case 27:
      v47 = vld1q_dup_f32(a2);
      v48.i64[0] = 0xFF000000FFLL;
      v48.i64[1] = 0xFF000000FFLL;
      a3 = vcvtq_f32_u32(vandq_s8(vshlq_u32(v47, xmmword_21C280C00), v48));
      v17 = 998277249;
      goto LABEL_69;
    case 28:
      *v41.i8 = vshl_u32(vdup_n_s32(*a2), 0x1000000018);
      v41.i32[2] = *a2 << 8;
      v41.i32[3] = *a2;
      __asm { FMOV            V1.4S, #-1.0 }

      a3 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v41, 0x18uLL)), vdupq_n_s32(0x3C010204u)), _Q1);
      __asm { FMOV            V1.4S, #1.0 }

      a3.i64[0] = vminnmq_f32(a3, _Q1).u64[0];
      return *a3.i64;
    case 35:
      a3.i16[0] = *a2;
      a3.f32[0] = a3.u32[0];
      v18 = 0.000015259;
      goto LABEL_59;
    case 36:
      a3.i16[0] = *a2;
      v36.f32[0] = a3.u32[0];
      LOWORD(a4) = *(a2 + 1);
      v36.f32[1] = LODWORD(a4);
      *a3.f32 = vmul_f32(v36, vdup_n_s32(0x37800080u));
      return *a3.i64;
    case 37:
      a3.i16[0] = *a2;
      LOWORD(a4) = *(a2 + 1);
      LOWORD(a5) = *(a2 + 2);
      v19.f32[0] = a3.u32[0];
      v19.f32[1] = LODWORD(a4);
      v19.i64[1] = COERCE_UNSIGNED_INT(LODWORD(a5));
      a3.i64[0] = vmulq_f32(v19, vdupq_n_s32(0x37800080u)).u64[0];
      return *a3.i64;
    case 38:
      a3 = vcvtq_f32_u32(vmovl_u16(*a2));
      v17 = 931135616;
      goto LABEL_69;
    case 39:
      a3.f32[0] = *a2;
      v18 = 0.000030519;
LABEL_59:
      v35 = a3.f32[0] * v18;
LABEL_60:
      a3.i64[0] = LODWORD(v35);
      return *a3.i64;
    case 40:
      v40.i32[0] = *a2;
      v40.i32[1] = *(a2 + 1);
      *a3.f32 = vmul_f32(vadd_f32(vadd_s32(v40, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), vdup_n_s32(0x38000100u));
      return *a3.i64;
    case 41:
      v51.i32[0] = *a2;
      v51.i32[1] = *(a2 + 2);
      v49 = vdupq_n_s32(0xCB400000);
      v50 = vaddw_s16(vdupq_n_s32(0x4B400000u), v51);
      goto LABEL_68;
    case 42:
      v49 = vdupq_n_s32(0xCB400000);
      v50 = vaddw_s16(vdupq_n_s32(0x4B400000u), *a2);
LABEL_68:
      a3 = vaddq_f32(v50, v49);
      v17 = 939524352;
LABEL_69:
      v38 = vdupq_n_s32(v17);
LABEL_70:
      a3.i64[0] = vmulq_f32(a3, v38).u64[0];
      break;
    case 43:
      v8 = *a2;
      v9 = (v8 >> 10) & 0x1F;
      if (v9 == 31)
      {
        v10 = 2139095040;
      }

      else
      {
        v10 = (v8 >> 10) & 0x1F;
      }

      if (v9)
      {
        _ZF = v9 == 31;
      }

      else
      {
        _ZF = 1;
      }

      if (_ZF)
      {
        v12 = v10;
      }

      else
      {
        v12 = (v9 << 23) + 939524096;
      }

      v13 = *(a2 + 1);
      v14 = (v13 >> 10) & 0x1F;
      if (v14 == 31)
      {
        v15 = 2139095040;
      }

      else
      {
        v15 = (v13 >> 10) & 0x1F;
      }

      if (v14)
      {
        v16 = v14 == 31;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v15 = (v14 << 23) + 939524096;
      }

      a3.i32[0] = v12 | (v8 << 16) & 0x80000000 | (v8 >> 7) & 7 | (8 * (v8 & 0x3FF)) & 0x1FFF | ((v8 & 0x3FF) << 13);
      a3.i32[1] = v15 | (v13 << 16) & 0x80000000 | (v13 >> 7) & 7 | (8 * (v13 & 0x3FF)) & 0x1FFF | ((v13 & 0x3FF) << 13);
      break;
    case 44:
      v20 = *a2;
      v21 = (v20 >> 10) & 0x1F;
      if (v21 == 31)
      {
        v22 = 2139095040;
      }

      else
      {
        v22 = (v20 >> 10) & 0x1F;
      }

      if (v21)
      {
        v23 = v21 == 31;
      }

      else
      {
        v23 = 1;
      }

      if (v23)
      {
        v24 = v22;
      }

      else
      {
        v24 = (v21 << 23) + 939524096;
      }

      v25 = *(a2 + 1);
      v26 = (v25 >> 10) & 0x1F;
      if (v26 == 31)
      {
        v27 = 2139095040;
      }

      else
      {
        v27 = (v25 >> 10) & 0x1F;
      }

      v28 = (v26 << 23) + 939524096;
      if (v26)
      {
        v29 = v26 == 31;
      }

      else
      {
        v29 = 1;
      }

      if (v29)
      {
        v28 = v27;
      }

      a3.i32[0] = v24 | (v20 << 16) & 0x80000000 | (v20 >> 7) & 7 | (8 * (v20 & 0x3FF)) & 0x1FFF | ((v20 & 0x3FF) << 13);
      a3.i32[1] = v28 | (v25 << 16) & 0x80000000 | (v25 >> 7) & 7 | (8 * (v25 & 0x3FF)) & 0x1FFF | ((v25 & 0x3FF) << 13);
      break;
    case 45:

      *a3.i64 = unpack_half4_to_float(a2);
      break;
    default:
      v6 = scn_default_log(result, a2);
      v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
      a3.i64[0] = 0;
      if (v7)
      {
        C3DConvertFloatingTypeToFloat4_cold_1(v5, v6);
        a3.i64[0] = 0;
      }

      break;
  }

  return *a3.i64;
}

void C3DConvertFloatingTypeFromFloat4(uint64_t result, uint64_t a2, float32x4_t a3)
{
  v3 = result;
  switch(result)
  {
    case 1:
    case 7:
      *a2 = a3.i32[0];
      return;
    case 8:
      *a2 = a3.i64[0];
      return;
    case 9:
      *a2 = a3.i64[0];
      *(a2 + 8) = a3.i32[2];
      return;
    case 10:
      *a2 = a3;
      return;
    case 15:
      v14 = (a3.i32[0] >> 23);
      v15 = v14 - 112;
      v16 = v14 - 113;
      v17 = a3.i16[1] & 0x8000 | 0x7BFF;
      if ((a3.i32[0] & 0x7FFFFF) != 0)
      {
        v18 = (a3.i16[1] & 0x8000) + 1;
      }

      else
      {
        v18 = a3.i16[1] & 0x8000;
      }

      v19 = v18 | 0x7C00;
      if (v14 == 255)
      {
        v17 = v19;
      }

      if (v14 >= 0x71)
      {
        v20 = v17;
      }

      else
      {
        v20 = a3.i16[1] & 0x8000;
      }

      v9 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | (v15 << 10);
      if (v16 > 0x1D)
      {
        LOWORD(v9) = v20;
      }

      goto LABEL_28;
    case 23:
      __asm { FMOV            V1.4S, #-1.0; jumptable 000000021BFB7510 case 23 }

      v28 = vmaxnmq_f32(a3, _Q1);
      __asm { FMOV            V1.4S, #1.0 }

      v30 = vandq_s8(vcvtq_s32_f32(vmulq_f32(vminnmq_f32(v28, _Q1), xmmword_21C2815D0)), xmmword_21C2815E0);
      v31 = vextq_s8(v30, v30, 8uLL).u64[0];
      v32 = v30.i32[0] | (v30.i32[1] << 10);
      v33 = 0x1E00000014;
      goto LABEL_35;
    case 24:
      v34.i64[0] = 0x3F0000003F000000;
      v34.i64[1] = 0x3F0000003F000000;
      v35 = vcvtq_s32_f32(vmlaq_f32(v34, xmmword_21C2815F0, a3));
      v36 = vmovn_s32(v35).u32[0];
      v32 = v36 | (HIWORD(v36) << 10);
      v37 = vshl_u32(vand_s8(*&vextq_s8(v35, v35, 8uLL), 0xFFFF0000FFFFLL), 0x1E00000014);
      goto LABEL_36;
    case 27:
      v41.i64[0] = 0x3F0000003F000000;
      v41.i64[1] = 0x3F0000003F000000;
      v40 = vcvtq_s32_f32(vmlaq_f32(v41, vdupq_n_s32(0x437F0000u), a3));
      goto LABEL_34;
    case 28:
      __asm { FMOV            V2.4S, #-1.0 }

      v40 = vcvtq_s32_f32(vmlaq_f32(vandq_s8(_Q2, vcgezq_f32(a3)), vdupq_n_s32(0x42FF0000u), a3));
LABEL_34:
      v42.i64[0] = 0xFF000000FFLL;
      v42.i64[1] = 0xFF000000FFLL;
      v43 = vandq_s8(v40, v42);
      v31 = vextq_s8(v43, v43, 8uLL).u64[0];
      v32 = v43.i32[0] | (v43.i32[1] << 8);
      v33 = 0x1800000010;
LABEL_35:
      v37 = vshl_u32(v31, v33);
LABEL_36:
      *a2 = v32 | v37.i32[0] | v37.i32[1];
      return;
    case 35:
      v9 = vmla_n_f32(0x3F0000003F000000, vdup_n_s32(0x477FFF00u), a3.f32[0]).f32[0];
      goto LABEL_28;
    case 36:
      v21 = vcvt_s32_f32(vmla_f32(0x3F0000003F000000, vdup_n_s32(0x477FFF00u), *a3.f32));
      LOWORD(v22) = v21.i16[2];
      *a2 = v21.i16[0];
      goto LABEL_69;
    case 37:
      v10.i64[0] = 0x3F0000003F000000;
      v10.i64[1] = 0x3F0000003F000000;
      v11 = vcvtq_s32_f32(vmlaq_f32(v10, vdupq_n_s32(0x477FFF00u), a3));
      goto LABEL_40;
    case 38:
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      v8 = vcvtq_s32_f32(vmlaq_f32(v7, vdupq_n_s32(0x477FFF00u), a3));
      goto LABEL_38;
    case 39:
      v9 = (32767.0 * a3.f32[0]);
LABEL_28:
      *a2 = v9;
      break;
    case 40:
      v38 = vcvt_s32_f32(vmul_f32(*a3.f32, vdup_n_s32(0x46FFFE00u)));
      *a2 = v38.i16[0];
      *(a2 + 2) = v38.i16[2];
      break;
    case 41:
      v11 = vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x46FFFE00u)));
LABEL_40:
      v44 = vmovn_s32(v11);
      *a2 = v44.i32[0];
      *(a2 + 4) = v44.i16[2];
      break;
    case 42:
      v8 = vcvtq_s32_f32(vmulq_f32(a3, vdupq_n_s32(0x46FFFE00u)));
LABEL_38:
      *a2 = vmovn_s32(v8);
      break;
    case 43:
      LOWORD(v5) = a3.i16[1] & 0x8000;
      v6 = (a3.i32[0] >> 23);
      if (v6 - 113 > 0x1D)
      {
        if (v6 >= 0x71)
        {
          if (v6 == 255)
          {
            v47 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v47;
            }

            LOWORD(v5) = v47 | 0x7C00;
          }

          else
          {
            LOWORD(v5) = v5 | 0x7BFF;
          }
        }
      }

      else
      {
        v5 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v6 - 112) << 10);
      }

      *a2 = v5;
      v50 = (a3.i32[1] >> 23);
      v51 = v50 - 112;
      v52 = v50 - 113;
      v53 = a3.i16[3] & 0x8000 | 0x7BFF;
      if ((a3.i32[1] & 0x7FFFFF) != 0)
      {
        v54 = (a3.i16[3] & 0x8000) + 1;
      }

      else
      {
        v54 = a3.i16[3] & 0x8000;
      }

      v55 = v54 | 0x7C00;
      if (v50 == 255)
      {
        v53 = v55;
      }

      if (v50 >= 0x71)
      {
        v56 = v53;
      }

      else
      {
        v56 = a3.i16[3] & 0x8000;
      }

      v22 = a3.i16[3] & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | (v51 << 10);
      if (v52 > 0x1D)
      {
        LOWORD(v22) = v56;
      }

LABEL_69:
      *(a2 + 2) = v22;
      break;
    case 44:
      LOWORD(v12) = a3.i16[1] & 0x8000;
      v13 = (a3.i32[0] >> 23);
      if (v13 - 113 > 0x1D)
      {
        if (v13 >= 0x71)
        {
          if (v13 == 255)
          {
            v48 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v48;
            }

            LOWORD(v12) = v48 | 0x7C00;
          }

          else
          {
            LOWORD(v12) = v12 | 0x7BFF;
          }
        }
      }

      else
      {
        v12 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v13 - 112) << 10);
      }

      *a2 = v12;
      v57 = (a3.i32[1] >> 23);
      v58 = v57 - 112;
      v59 = v57 - 113;
      v60 = a3.i16[3] & 0x8000 | 0x7BFF;
      if ((a3.i32[1] & 0x7FFFFF) != 0)
      {
        v61 = (a3.i16[3] & 0x8000) + 1;
      }

      else
      {
        v61 = a3.i16[3] & 0x8000;
      }

      v62 = v61 | 0x7C00;
      if (v57 == 255)
      {
        v60 = v62;
      }

      if (v57 >= 0x71)
      {
        v63 = v60;
      }

      else
      {
        v63 = a3.i16[3] & 0x8000;
      }

      v64 = a3.i16[3] & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | (v58 << 10);
      if (v59 > 0x1D)
      {
        LOWORD(v64) = v63;
      }

      *(a2 + 2) = v64;
      v65 = (a3.i32[2] >> 23);
      v66 = v65 - 112;
      v67 = v65 - 113;
      v68 = a3.i16[5] & 0x8000 | 0x7BFF;
      if ((a3.i32[2] & 0x7FFFFF) != 0)
      {
        v69 = (a3.i16[5] & 0x8000) + 1;
      }

      else
      {
        v69 = a3.i16[5] & 0x8000;
      }

      v70 = v69 | 0x7C00;
      if (v65 == 255)
      {
        v68 = v70;
      }

      if (v65 >= 0x71)
      {
        v71 = v68;
      }

      else
      {
        v71 = a3.i16[5] & 0x8000;
      }

      v72 = a3.i16[5] & 0x8000 | (a3.i32[2] >> 13) & 0x3FF | (v66 << 10);
      if (v67 > 0x1D)
      {
        LOWORD(v72) = v71;
      }

      *(a2 + 4) = v72;
      break;
    case 45:
      LOWORD(v45) = a3.i16[1] & 0x8000;
      v46 = (a3.i32[0] >> 23);
      if (v46 - 113 > 0x1D)
      {
        if (v46 >= 0x71)
        {
          if (v46 == 255)
          {
            v49 = a3.i16[1] & 0x8000;
            if ((a3.i32[0] & 0x7FFFFF) != 0)
            {
              ++v49;
            }

            LOWORD(v45) = v49 | 0x7C00;
          }

          else
          {
            LOWORD(v45) = v45 | 0x7BFF;
          }
        }
      }

      else
      {
        v45 = a3.i16[1] & 0x8000 | (a3.i32[0] >> 13) & 0x3FF | ((v46 - 112) << 10);
      }

      *a2 = v45;
      LOWORD(v45) = a3.i16[3] & 0x8000;
      v73 = (a3.i32[1] >> 23);
      if (v73 - 113 > 0x1D)
      {
        if (v73 >= 0x71)
        {
          if (v73 == 255)
          {
            v74 = a3.i16[3] & 0x8000;
            if ((a3.i32[1] & 0x7FFFFF) != 0)
            {
              ++v74;
            }

            LOWORD(v45) = v74 | 0x7C00;
          }

          else
          {
            LOWORD(v45) = v45 | 0x7BFF;
          }
        }
      }

      else
      {
        v45 = a3.i16[3] & 0x8000 | (a3.i32[1] >> 13) & 0x3FF | ((v73 - 112) << 10);
      }

      *(a2 + 2) = v45;
      v75 = (a3.i32[2] >> 23);
      v76 = v75 - 112;
      v77 = v75 - 113;
      v78 = a3.i16[5] & 0x8000 | 0x7BFF;
      if ((a3.i32[2] & 0x7FFFFF) != 0)
      {
        v79 = (a3.i16[5] & 0x8000) + 1;
      }

      else
      {
        v79 = a3.i16[5] & 0x8000;
      }

      v80 = v79 | 0x7C00;
      if (v75 == 255)
      {
        v78 = v80;
      }

      if (v75 >= 0x71)
      {
        v81 = v78;
      }

      else
      {
        v81 = a3.i16[5] & 0x8000;
      }

      v82 = a3.i16[5] & 0x8000 | (a3.i32[2] >> 13) & 0x3FF | (v76 << 10);
      if (v77 > 0x1D)
      {
        LOWORD(v82) = v81;
      }

      *(a2 + 4) = v82;
      LOWORD(v82) = a3.i16[7] & 0x8000;
      v83 = (a3.i32[3] >> 23);
      if (v83 - 113 > 0x1D)
      {
        if (v83 >= 0x71)
        {
          LOWORD(v82) = v82 | 0x7BFF;
          v84 = (a3.i32[3] & 0x7FFFFF) != 0 ? (a3.i16[7] & 0x8000) + 1 : a3.i16[7] & 0x8000;
          v85 = v84 | 0x7C00;
          if (v83 == 255)
          {
            LOWORD(v82) = v85;
          }
        }
      }

      else
      {
        v82 = a3.i16[7] & 0x8000 | (a3.i32[3] >> 13) & 0x3FF | ((v83 - 112) << 10);
      }

      *(a2 + 6) = v82;
      break;
    default:
      v4 = scn_default_log(result, a2);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        C3DConvertFloatingTypeToFloat4_cold_1(v3, v4);
      }

      break;
  }
}

double unpack_half4_to_float(int16x4_t *a1)
{
  v1 = a1->u16[0];
  v2 = (v1 >> 10) & 0x1F;
  if (v2 == 31)
  {
    v3 = 2139095040;
  }

  else
  {
    v3 = (v1 >> 10) & 0x1F;
  }

  if (v2)
  {
    v4 = v2 == 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = (v2 << 23) + 939524096;
  }

  v6 = a1->u16[1];
  v7 = (v6 >> 10) & 0x1F;
  if (v7 == 31)
  {
    v8 = 2139095040;
  }

  else
  {
    v8 = (v6 >> 10) & 0x1F;
  }

  if (v7)
  {
    v9 = v7 == 31;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    v10 = v8;
  }

  else
  {
    v10 = (v7 << 23) + 939524096;
  }

  v11 = a1->u16[2];
  v12 = (v11 >> 10) & 0x1F;
  if (v12 && v12 != 31)
  {
    v13 = (v12 << 23) + 939524096;
  }

  else if (v12 == 31)
  {
    v13 = 2139095040;
  }

  else
  {
    v13 = (v11 >> 10) & 0x1F;
  }

  v14 = a1->u16[3];
  v15 = (v14 >> 10) & 0x1F;
  if (v15 && v15 != 31)
  {
    v15 = (v15 << 23) + 939524096;
  }

  else if (v15 == 31)
  {
    v15 = 2139095040;
  }

  v16.i32[0] = v1 & 0x3FF;
  v16.i32[1] = v6 & 0xFFFF03FF;
  v16.i32[2] = v11 & 0xFFFF03FF;
  v16.i32[3] = v14 & 0xFFFF03FF;
  v17.i64[0] = 0x8000000080000000;
  v17.i64[1] = 0x8000000080000000;
  v18 = vandq_s8(vmovl_s16(*a1), v17);
  v17.i64[0] = __PAIR64__(v10, v5);
  v17.i64[1] = __PAIR64__(v15, v13);
  *&result = vorrq_s8(vorrq_s8(v17, vsraq_n_u32(v18, v16, 7uLL)), vmull_u16(vmovn_s32(v16), vdup_n_s16(0x2008u))).u64[0];
  return result;
}

double (*C3DConvertGetReadToFloat4Function(_BOOL8 a1, uint64_t a2))()
{
  v2 = a1;
  if (a1 >= 46)
  {
    v3 = scn_default_log(a1, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DConvertGetReadToFloat4Function_cold_1(v3);
    }
  }

  if (v2 - 1) < 0x2D && ((0x1FFC0CC043C1uLL >> (v2 - 1)))
  {
    return off_282DC3C20[(v2 - 1)];
  }

  v5 = scn_default_log(a1, a2);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    C3DConvertFloatingTypeToFloat4_cold_1(v2, v5);
  }

  return scn_read_from_none;
}

double scn_read_from_char4n(unsigned int *a1)
{
  *v1.i8 = vshl_u32(vdup_n_s32(*a1), 0x1000000018);
  v1.i32[2] = *a1 << 8;
  v1.i32[3] = *a1;
  __asm { FMOV            V1.4S, #-1.0 }

  v7 = vmaxnmq_f32(vmulq_f32(vcvtq_f32_s32(vshrq_n_s32(v1, 0x18uLL)), vdupq_n_s32(0x3C010204u)), _Q1);
  __asm { FMOV            V1.4S, #1.0 }

  *&result = vminnmq_f32(v7, _Q1).u64[0];
  return result;
}

double scn_read_from_uchar4n(const float *a1)
{
  v1 = vld1q_dup_f32(a1);
  v2.i64[0] = 0xFF000000FFLL;
  v2.i64[1] = 0xFF000000FFLL;
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v1, xmmword_21C280C00), v2)), vdupq_n_s32(0x3B808081u)).u64[0];
  return result;
}

double scn_read_from_snorm10a2(const float *a1)
{
  v1 = vld1q_dup_f32(a1);
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v1, xmmword_21C281600), xmmword_21C2815E0)), xmmword_21C281620).u64[0];
  return result;
}

double scn_read_from_unorm10a2(const float *a1)
{
  v1 = vld1q_dup_f32(a1);
  *&result = vmulq_f32(vcvtq_f32_u32(vandq_s8(vshlq_u32(v1, xmmword_21C281600), xmmword_21C2815E0)), xmmword_21C281610).u64[0];
  return result;
}

float32x2_t scn_read_from_ushort2n(_WORD *a1, float a2, float a3)
{
  LOWORD(a2) = *a1;
  v3.f32[0] = LODWORD(a2);
  LOWORD(a3) = a1[1];
  v3.f32[1] = LODWORD(a3);
  return vmul_f32(v3, vdup_n_s32(0x37800080u));
}

double scn_read_from_ushort3n(_WORD *a1, float a2, float a3, float a4)
{
  LOWORD(a2) = *a1;
  LOWORD(a3) = a1[1];
  LOWORD(a4) = a1[2];
  v4.f32[0] = LODWORD(a2);
  v4.f32[1] = LODWORD(a3);
  v4.i64[1] = COERCE_UNSIGNED_INT(LODWORD(a4));
  *&result = vmulq_f32(v4, vdupq_n_s32(0x37800080u)).u64[0];
  return result;
}

float32x2_t scn_read_from_short2n(__int16 *a1)
{
  v1.i32[0] = *a1;
  v1.i32[1] = a1[1];
  return vmul_f32(vadd_f32(vadd_s32(v1, vdup_n_s32(0x4B400000u)), vdup_n_s32(0xCB400000)), vdup_n_s32(0x38000100u));
}

double scn_read_from_short3n(uint64_t a1)
{
  v1.i32[0] = *a1;
  v1.i32[1] = *(a1 + 4);
  *&result = vmulq_f32(vaddq_f32(vaddw_s16(vdupq_n_s32(0x4B400000u), v1), vdupq_n_s32(0xCB400000)), vdupq_n_s32(0x38000100u)).u64[0];
  return result;
}

float scn_read_from_half1(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = (v1 >> 10) & 0x1F;
  if (v2 == 31)
  {
    v3 = 2139095040;
  }

  else
  {
    v3 = (v1 >> 10) & 0x1F;
  }

  if (v2)
  {
    v4 = v2 == 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = (v2 << 23) + 939524096;
  }

  LODWORD(result) = v5 | (v1 << 16) & 0x80000000 | (v1 >> 7) & 7 | (8 * (v1 & 0x3FF)) & 0x1FFF | ((v1 & 0x3FF) << 13);
  return result;
}

float scn_read_from_half2(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = (v1 >> 10) & 0x1F;
  if (v2 == 31)
  {
    v3 = 2139095040;
  }

  else
  {
    v3 = (v1 >> 10) & 0x1F;
  }

  if (v2)
  {
    v4 = v2 == 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = (v2 << 23) + 939524096;
  }

  LODWORD(result) = v5 | (v1 << 16) & 0x80000000 | (v1 >> 7) & 7 | (8 * (v1 & 0x3FF)) & 0x1FFF | ((v1 & 0x3FF) << 13);
  return result;
}

__n64 scn_read_from_half3(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = (v1 >> 10) & 0x1F;
  if (v2 == 31)
  {
    v3 = 2139095040;
  }

  else
  {
    v3 = (v1 >> 10) & 0x1F;
  }

  if (v2)
  {
    v4 = v2 == 31;
  }

  else
  {
    v4 = 1;
  }

  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = (v2 << 23) + 939524096;
  }

  v6 = a1[1];
  v7 = (v6 >> 10) & 0x1F;
  if (v7 == 31)
  {
    v8 = 2139095040;
  }

  else
  {
    v8 = (v6 >> 10) & 0x1F;
  }

  v9 = (v7 << 23) + 939524096;
  if (v7)
  {
    v10 = v7 == 31;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    v9 = v8;
  }

  result.n64_u32[0] = v5 | (v1 << 16) & 0x80000000 | (v1 >> 7) & 7 | (8 * (v1 & 0x3FF)) & 0x1FFF | ((v1 & 0x3FF) << 13);
  result.n64_u32[1] = v9 | (v6 << 16) & 0x80000000 | (v6 >> 7) & 7 | (8 * (v6 & 0x3FF)) & 0x1FFF | ((v6 & 0x3FF) << 13);
  return result;
}

void sub_21BFB86B0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_21BFB8F04(void *a1)
{
  objc_begin_catch(a1);

  objc_end_catch();
}

void _C3DFramebufferCFFinalize(uint64_t a1, uint64_t a2)
{
  C3DFramebufferCleanup(a1, a2);
  CFRelease(*(a1 + 24));
  v3 = *(a1 + 32);

  CFRelease(v3);
}

CFStringRef _C3DFramebufferCFCopyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  if (*(a1 + 32))
  {
    v3 = 0;
    do
    {
      Value = CFDictionaryGetValue(*(a1 + 32), v3);
      if (Value)
      {
        CFStringAppendFormat(Mutable, 0, @"slot%d: %@ ", v3, Value);
      }

      ++v3;
    }

    while (v3 != 6);
  }

  v5 = CFGetAllocator(a1);
  v6 = C3DRenderBufferFormatToString(*(a1 + 48));
  v7 = C3DRenderBufferFormatToString(*(a1 + 112));
  v8 = CFStringCreateWithFormat(v5, 0, @"<C3DFramebuffer %p: color=%@ - depth=%@ color-samples=%d depth-samples=%d renderTargets:%@>", a1, v6, v7, *(a1 + 49), *(a1 + 113), Mutable);
  CFRelease(Mutable);
  return v8;
}

uint64_t __C3DFramebufferGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DFramebufferGetTypeID_typeID = result;
  return result;
}

uint64_t C3DFramebufferCreate()
{
  if (C3DFramebufferGetTypeID_onceToken != -1)
  {
    C3DFramebufferCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DFramebufferGetTypeID_typeID, 128);
  if (Instance)
  {
    *(Instance + 24) = CFDictionaryCreateMutable(0, 0, 0, 0);
    Mutable = CFDictionaryCreateMutable(0, 6, 0, MEMORY[0x277CBF150]);
    v2 = 0;
    *(Instance + 32) = Mutable;
    *(Instance + 120) = *(Instance + 120) & 0xF8 | 1;
    do
    {
      *(Instance + 49 + v2) = 1;
      v2 += 8;
    }

    while (v2 != 64);
    *(Instance + 113) = 1;
  }

  return Instance;
}

void C3DFramebufferSetFBO(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 16) = v2;
}

uint64_t C3DFramebufferGetFBO(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 16);
}

void C3DFramebufferAddRenderTarget(uint64_t a1, _DWORD *value, int a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, value);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  ++value[18];
  CFDictionarySetValue(*(a1 + 32), a3, value);
}

double C3DFramebufferGetSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

void C3DFramebufferSetSize(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 40) = a3;
}

void C3DFramebufferCleanup(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  C3DFramebufferApplyToRenderTargets(a1, &__block_literal_global_6_0);
  CFDictionaryRemoveAllValues(*(a1 + 32));
  *(a1 + 128) |= 2u;
}

void C3DFramebufferApplyToRenderTargets(uint64_t a1, void *context)
{
  if (!a1)
  {
    v4 = scn_default_log(0, context);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  CFDictionaryApplyFunction(*(a1 + 32), _applyToRenderTargets, context);
}

void __C3DFramebufferCleanup_block_invoke(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 72))
  {
    v3 = scn_default_log(result, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __C3DFramebufferCleanup_block_invoke_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  --*(a2 + 72);
}

void C3DFramebufferDescriptionSetSampleCount(_BOOL8 result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  *&v22[5] = *MEMORY[0x277D85DE8];
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    result = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    if (result)
    {
      C3DFramebufferDescriptionSetSampleCount_cold_1(v4, a2, v5, v6, v7, v8, v9, v10);
    }
  }

  if (v2 >= 2)
  {
    if (*(v3 + 75))
    {
      v11 = scn_default_log(result, a2);
      result = os_log_type_enabled(v11, OS_LOG_TYPE_FAULT);
      if (result)
      {
        C3DFramebufferDescriptionSetSampleCount_cold_2(v11, a2, v12, v13, v14, v15, v16, v17);
      }
    }

    for (i = 0; i != 64; i += 8)
    {
      if (*(v3 + 11 + i))
      {
        v19 = scn_default_log(result, a2);
        result = os_log_type_enabled(v19, OS_LOG_TYPE_FAULT);
        if (result)
        {
          C3DFramebufferDescriptionSetSampleCount_cold_3(v21, v22, v19);
        }
      }
    }
  }

  v20 = 0;
  *(v3 + 73) = v2;
  do
  {
    *(v3 + 9 + v20) = v2;
    v20 += 8;
  }

  while (v20 != 64);
}

void C3DFramebufferDescriptionSetViewportDependant(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferDescriptionSetSampleCount_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = 0;
  if (v2)
  {
    v13 = 8;
  }

  else
  {
    v13 = 0;
  }

  *(result + 80) = *(result + 80) & 0xF7 | v13;
  if (v2)
  {
    v14 = 4;
  }

  else
  {
    v14 = 0;
  }

  do
  {
    *(result + 11 + v12) = *(result + 11 + v12) & 0xFB | v14;
    v12 += 8;
  }

  while (v12 != 64);
  *(result + 75) = *(result + 75) & 0xFB | v14;
}

void C3DFramebufferSetSampleCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  C3DFramebufferDescriptionSetSampleCount(a1 + 40, a2);
}

uint64_t C3DFramebufferGetSampleCount(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 49);
}

void C3DFramebufferAddRenderTargetDescription(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  C3DSceneSourcePerformConsistencyCheck();
  CFDictionarySetValue(*(a1 + 24), v2, v12);
}

uint64_t C3DFramebufferGetRenderTargetDescriptions(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

const void *C3DFramebufferGetRenderTarget(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  return CFDictionaryGetValue(*(a1 + 32), v2);
}

const void *C3DFramebufferGetTextureWithSlot(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DFramebufferSetFBO_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = C3DFramebufferGetRenderTarget(a1, a2);
  if (result)
  {
    return C3DRenderTargetGetTexture(result, v13);
  }

  return result;
}

uint64_t C3DRenderBufferFormatFromString(void *a1)
{
  v1 = C3DStringLowercase(a1);
  if (CFEqual(v1, @"rgba"))
  {
    return 2;
  }

  if (CFStringHasPrefix(v1, @"rgba"))
  {
    if (CFStringHasPrefix(v1, @"rgba8"))
    {
      if (CFEqual(v1, @"rgba8unorm") || CFEqual(v1, @"rgba8"))
      {
        return 28;
      }

      if (CFEqual(v1, @"rgba8snorm") || CFEqual(v1, @"rgba8s"))
      {
        return 29;
      }

      if (CFEqual(v1, @"rgba8uint") || CFEqual(v1, @"rgba8ui"))
      {
        return 30;
      }

      if (CFEqual(v1, @"rgba8sint") || CFEqual(v1, @"rgba8i"))
      {
        return 31;
      }
    }

    else if (CFStringHasPrefix(v1, @"rgba16"))
    {
      if (CFEqual(v1, @"rgba16unorm") || CFEqual(v1, @"rgba16"))
      {
        return 32;
      }

      if (CFEqual(v1, @"rgba16snorm") || CFEqual(v1, @"rgba16s"))
      {
        return 33;
      }

      if (CFEqual(v1, @"rgba16uint") || CFEqual(v1, @"rgba16ui"))
      {
        return 34;
      }

      if (CFEqual(v1, @"rgba16sint") || CFEqual(v1, @"rgba16i"))
      {
        return 35;
      }

      if (CFEqual(v1, @"rgba16float") || CFEqual(v1, @"rgba16f"))
      {
        return 36;
      }
    }

    else if (CFStringHasPrefix(v1, @"rgba32"))
    {
      if (CFEqual(v1, @"rgba32uint") || CFEqual(v1, @"rgba32ui"))
      {
        return 37;
      }

      if (CFEqual(v1, @"rgba32sint") || CFEqual(v1, @"rgba32i"))
      {
        return 38;
      }

      if (CFEqual(v1, @"rgba32float") || CFEqual(v1, @"rgba32f"))
      {
        return 39;
      }
    }
  }

  else if (CFStringHasPrefix(v1, @"rg"))
  {
    if (CFStringHasPrefix(v1, @"rg8"))
    {
      if (CFEqual(v1, @"rg8unorm") || CFEqual(v1, @"rg8"))
      {
        return 15;
      }

      if (CFEqual(v1, @"rg8snorm") || CFEqual(v1, @"rg8s"))
      {
        return 16;
      }

      if (CFEqual(v1, @"rg8uint") || CFEqual(v1, @"rg8ui"))
      {
        return 17;
      }

      if (CFEqual(v1, @"rg8sint") || CFEqual(v1, @"rg8i"))
      {
        return 18;
      }
    }

    else if (CFStringHasPrefix(v1, @"rg16"))
    {
      if (CFEqual(v1, @"rg16unorm") || CFEqual(v1, @"rg16"))
      {
        return 19;
      }

      if (CFEqual(v1, @"rg16snorm") || CFEqual(v1, @"rg16s"))
      {
        return 20;
      }

      if (CFEqual(v1, @"rg16uint") || CFEqual(v1, @"rg16ui"))
      {
        return 21;
      }

      if (CFEqual(v1, @"rg16sint") || CFEqual(v1, @"rg16i"))
      {
        return 22;
      }

      if (CFEqual(v1, @"rg16float") || CFEqual(v1, @"rg16f"))
      {
        return 23;
      }
    }

    else if (CFStringHasPrefix(v1, @"rg32"))
    {
      if (CFEqual(v1, @"rg32uint") || CFEqual(v1, @"rg32ui"))
      {
        return 24;
      }

      if (CFEqual(v1, @"rg32sint") || CFEqual(v1, @"rg32i"))
      {
        return 25;
      }

      if (CFEqual(v1, @"rg32float") || CFEqual(v1, @"rg32f"))
      {
        return 26;
      }
    }
  }

  else if (CFStringHasPrefix(v1, @"r"))
  {
    if (CFStringHasPrefix(v1, @"r8"))
    {
      if (CFEqual(v1, @"r8unorm") || CFEqual(v1, @"r8"))
      {
        return 3;
      }

      if (CFEqual(v1, @"r8snorm") || CFEqual(v1, @"r8s"))
      {
        return 4;
      }

      if (CFEqual(v1, @"r8uint") || CFEqual(v1, @"r8ui"))
      {
        return 5;
      }

      if (CFEqual(v1, @"r8sint") || CFEqual(v1, @"r8i"))
      {
        return 6;
      }
    }

    else if (CFStringHasPrefix(v1, @"r16"))
    {
      if (CFEqual(v1, @"r16unorm") || CFEqual(v1, @"r16"))
      {
        return 7;
      }

      if (CFEqual(v1, @"r16snorm") || CFEqual(v1, @"r16s"))
      {
        return 8;
      }

      if (CFEqual(v1, @"r16uint") || CFEqual(v1, @"r16ui"))
      {
        return 9;
      }

      if (CFEqual(v1, @"r16sint") || CFEqual(v1, @"r16i"))
      {
        return 10;
      }

      if (CFEqual(v1, @"r16float") || CFEqual(v1, @"r16f"))
      {
        return 11;
      }
    }

    else if (CFStringHasPrefix(v1, @"r32"))
    {
      if (CFEqual(v1, @"r32uint") || CFEqual(v1, @"r32ui"))
      {
        return 12;
      }

      if (CFEqual(v1, @"r32sint") || CFEqual(v1, @"r32i"))
      {
        return 13;
      }

      if (CFEqual(v1, @"r32float") || CFEqual(v1, @"r32f"))
      {
        return 14;
      }
    }
  }

  if (CFEqual(v1, @"bgra8unorm") || CFEqual(v1, @"bgra8"))
  {
    return 27;
  }

  if (!CFStringHasPrefix(v1, @"depth"))
  {
    goto LABEL_145;
  }

  if (CFEqual(v1, @"depth16unorm") || CFEqual(v1, @"depth16"))
  {
    return 40;
  }

  if (CFEqual(v1, @"depth24unorm") || CFEqual(v1, @"depth24"))
  {
    return 41;
  }

  if (CFEqual(v1, @"depth32float") || CFEqual(v1, @"depth32f"))
  {
    return 42;
  }

  if (CFEqual(v1, @"depth24unorm_stencil8"))
  {
    return 44;
  }

  if (CFEqual(v1, @"depth32float_stencil8"))
  {
    return 45;
  }

LABEL_145:
  if (CFEqual(v1, @"stencil8"))
  {
    return 43;
  }

  return 0;
}

__CFString *C3DRenderBufferFormatToString(int a1)
{
  if ((a1 - 1) > 0x2C)
  {
    return 0;
  }

  else
  {
    return off_2782FD260[(a1 - 1)];
  }
}

void sub_21BFBC3A8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id *SCNMTLRenderCommandEncoder::setVertexBuffers(id *result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = result;
    v10 = 0;
    v11 = 0;
    for (i = &result[2 * a4 + 11]; ; i += 2)
    {
      v13 = *(a2 + 8 * v11);
      if (*(i - 1) != v13)
      {
        break;
      }

      v14 = *(a3 + 8 * v11);
      if (*i != v14)
      {
        *i = v14;
        result = [v9[424] setVertexBufferOffset:*(a3 + 8 * v11) atIndex:a4 + v11];
      }

      ++v11;
      v10 -= 8;
      if (a5 == v11)
      {
        return result;
      }
    }

    v15 = a5 - v11;
    if (a5 != v11)
    {
      if (a5 - 1 == v11)
      {
        v16 = *(a3 + 8 * v11);
        *(i - 1) = v13;
        *i = v16;
        v17 = v9[424];
        v18 = *(a2 + 8 * v11);

        return [v17 setVertexBuffer:v18 offset:? atIndex:?];
      }

      else
      {
        v19 = (a2 - v10);
        v20 = (a3 - v10);
        result = [v9[424] setVertexBuffers:v19 offsets:v20 withRange:{a4 + v11, a5 - v11}];
        if (a5 > v11)
        {
          do
          {
            v22 = *v19++;
            v21 = v22;
            v23 = *v20++;
            *(i - 1) = v21;
            *i = v23;
            i += 2;
            --v15;
          }

          while (v15);
        }
      }
    }
  }

  return result;
}

uint64_t SCNMTLRenderCommandEncoder::drawIndexedPrimitives(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  SCNMTLRenderCommandEncoder::_bindPendingTextures(a1, a2);
  SCNMTLRenderCommandEncoder::applyChangedStates(a1);
  v16 = *(a1 + 64);
  v17 = v16 * a7;
  v18 = v16 * a8;
  v19 = *(a1 + 3392);
  if (v17 <= 1 && v18 == 0)
  {

    return [v19 drawIndexedPrimitives:a2 indexCount:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6];
  }

  else if (v18)
  {
    return [v19 drawIndexedPrimitives:a2 indexCount:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6 instanceCount:0 baseVertex:v18 baseInstance:?];
  }

  else
  {

    return [v19 drawIndexedPrimitives:a2 indexCount:a3 indexType:a4 indexBuffer:a5 indexBufferOffset:a6 instanceCount:?];
  }
}

uint64_t SCNMTLRenderCommandEncoder::drawPrimitives(SCNMTLRenderCommandEncoder *this, MTLPrimitiveType a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  SCNMTLRenderCommandEncoder::_bindPendingTextures(this, a2);
  SCNMTLRenderCommandEncoder::applyChangedStates(this);
  var1_low = LODWORD(this->var14[0].var1);
  v13 = var1_low * a6;
  v14 = this->var24[1];
  if ((var1_low * a5) <= 1 && v13 == 0)
  {

    return [v14 drawPrimitives:a2 vertexStart:a3 vertexCount:a4];
  }

  else if (v13)
  {

    return [v14 drawPrimitives:a2 vertexStart:a3 vertexCount:a4 instanceCount:? baseInstance:?];
  }

  else
  {

    return [v14 drawPrimitives:a2 vertexStart:a3 vertexCount:a4 instanceCount:?];
  }
}

float __textureCoordinatesForCaptureDeviceImageProxy(__C3DImageProxy *a1, __n128 *a2)
{
  v23 = 0;
  v21 = 0;
  v22 = 0;
  C3DImageProxyGetCaptureDeviceInfo(a1, &v23, &v22, &v21);
  InterfaceOrientation = C3DEngineContextGetInterfaceOrientation(a2);
  v4 = InterfaceOrientation;
  if (v23 != 1)
  {
    switch(InterfaceOrientation)
    {
      case 4u:
        v5 = 1065353216;
        goto LABEL_13;
      case 3u:
        v11 = 0;
LABEL_15:
        v20 = *&v11;
        __asm { FMOV            V0.2S, #1.0 }

        goto LABEL_18;
      case 2u:
        goto LABEL_9;
    }

LABEL_16:
    __asm { FMOV            V0.2S, #1.0 }

    goto LABEL_17;
  }

  if (InterfaceOrientation == 4)
  {
    goto LABEL_16;
  }

  if (InterfaceOrientation != 3)
  {
    if (InterfaceOrientation == 2)
    {
      v5 = 0;
LABEL_13:
      v20 = *&v5;
      __asm { FMOV            V0.2S, #1.0 }

      goto LABEL_18;
    }

    v11 = 1065353216;
    goto LABEL_15;
  }

LABEL_9:
  __asm { FMOV            V0.2S, #1.0 }

  LODWORD(_D0) = 0;
LABEL_17:
  v20 = *&_D0;
LABEL_18:
  Viewport = C3DEngineContextGetViewport(a2);
  v15 = Viewport.n128_f32[2];
  if (v4 >= 3)
  {
    v16 = Viewport.n128_f32[2];
  }

  else
  {
    v16 = Viewport.n128_f32[3];
  }

  if (v4 >= 3)
  {
    v15 = Viewport.n128_f32[3];
  }

  v17 = v16 * v21;
  v18 = v15 * v22;
  if (v17 > v18)
  {
    return v20;
  }

  result = v20;
  if (v17 < v18)
  {
    return ((v20 + -0.5) * (v17 / v18)) + 0.5;
  }

  return result;
}

uint64_t SCNMTLRenderCommandEncoder::drawFullScreenQuad(SCNMTLRenderCommandEncoder *this, uint64_t a2)
{
  SCNMTLRenderCommandEncoder::_bindPendingTextures(this, a2);
  SCNMTLRenderCommandEncoder::applyChangedStates(this);
  v3 = this->var24[1];
  if (LODWORD(this->var14[0].var1) < 2)
  {

    return [v3 drawPrimitives:4 vertexStart:0 vertexCount:4];
  }

  else
  {

    return [v3 drawPrimitives:4 vertexStart:0 vertexCount:4 instanceCount:?];
  }
}

void sub_21BFBDA80(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, ...)
{
  va_start(va, a36);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SCNMTLRenderCommandEncoder::setVertexTexture(uint64_t result, void *a2, unint64_t a3)
{
  if (a2)
  {
    v6 = [a2 conformsToProtocol:&unk_282E56760];
    if ((v6 & 1) == 0)
    {
      v8 = scn_default_log(v6, v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        SCNMTLRenderCommandEncoder::setVertexTexture(v8, v9, v10, v11, v12, v13, v14, v15);
      }
    }
  }

  if (*(result + 576 + 8 * a3) != a2)
  {
    *(result + 576 + 8 * a3) = a2;
    *(result + 8 * (a3 >> 6) + 3408) |= 1 << a3;
  }
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__emplace_unique_key_args<unsigned long long,std::piecewise_construct_t const&,std::tuple<unsigned long long const&>,std::tuple<>>(float *a1, unint64_t *a2, uint64_t a3, void **a4)
{
  v4 = *a2;
  v5 = *(a1 + 2);
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = *a2;
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != v4)
  {
    goto LABEL_17;
  }

  return v9;
}

void std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__rehash<true>(uint64_t result, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(result + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(result + 24) / *(result + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__do_rehash<true>(result, prime);
    }
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,SCNMTLLightSetData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,SCNMTLLightSetData>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::string::__throw_length_error[abi:nn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

id *OUTLINED_FUNCTION_1_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, ...)
{
  va_start(va, a60);
  v62 = *(v60 + 248);

  return SCNMTLRenderCommandEncoder::setVertexBytes(v62, va, 0x10uLL, 0);
}

uint64_t OUTLINED_FUNCTION_6_1(void *a1, const char *a2)
{

  return [a1 drawPrimitives:4 vertexStart:0 vertexCount:4];
}

uint64_t OUTLINED_FUNCTION_12_0(uint64_t a1)
{
  *(v1 + 3376) = a1;
  v4 = *(v1 + 3392);

  return [v4 setRenderPipelineState:a1];
}

void *OUTLINED_FUNCTION_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char __dst, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char __src)
{

  return memcpy(&__dst, &__src, 0x168uLL);
}

void OUTLINED_FUNCTION_19()
{
  v3 = *(v0 + 248);

  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v1, 0);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{
  *(v1 + 3376) = a1;
  v4 = *(v1 + 3392);

  return [v4 setRenderPipelineState:a1];
}

void OUTLINED_FUNCTION_31(void *a1)
{
  v4 = *(v1 + 248);

  SCNMTLRenderCommandEncoder::setFragmentTexture(v4, a1, 0);
}

void OUTLINED_FUNCTION_32(os_unfair_lock_s *a1)
{
  v2 = a1 + 3872;

  os_unfair_lock_lock(v2);
}

BOOL OUTLINED_FUNCTION_33(NSObject *a1)
{

  return os_log_type_enabled(a1, OS_LOG_TYPE_FAULT);
}

double OUTLINED_FUNCTION_36@<D0>(char a1@<W8>)
{
  *(v1 + 42) = a1;
  result = 0.0;
  *(v1 + 8) = 0u;
  *(v1 + 24) = 0u;
  return result;
}

uint64_t OUTLINED_FUNCTION_45@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 3248) = v1;
  v3 = *(a1 + 3392);

  return [v3 setFragmentSamplerState:v1 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_46(uint64_t a1)
{
  v4 = *(v2 + 4832);
  *&v4 = v4;

  return [v1 _zFarForSkyboxRenderingProjectionMatrix:a1 defaultZFar:v4];
}

uint64_t OUTLINED_FUNCTION_47(uint64_t a1)
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_48@<X0>(void *a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  a20 = 0;
  v22 = *(v20 + 216);

  return [a1 renderResourceForProgramDesc:&a6 renderPassDescriptor:v22];
}

uint64_t C3DConstraintSliderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintSliderGetTypeID::onceToken != -1)
  {
    C3DConstraintSliderGetTypeID_cold_1();
  }

  return C3DConstraintSliderGetTypeID::typeID;
}

CFStringRef _C3DConstraintSliderCFCopyFormatDescription(const void *a1, const __CFDictionary *a2)
{
  v2 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v2, 0, @"<C3DConstraintAcceleration>");
}

CFStringRef _C3DConstraintSliderCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DConstraintAcceleration>");
}

uint64_t __C3DConstraintSliderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintSliderGetTypeID::typeID = result;
  return result;
}

double __closestPointOnTriangle(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4)
{
  v4 = vsubq_f32(a2, a1);
  v5 = vsubq_f32(a3, a1);
  v6 = vsubq_f32(a4, a1);
  v7 = vmulq_f32(v4, v6);
  v8 = vmulq_f32(v5, v6);
  _D7 = vadd_f32(vzip1_s32(*&vextq_s8(v8, v8, 8uLL), *&vextq_s8(v7, v7, 8uLL)), vadd_f32(vzip1_s32(*v8.i8, *v7.i8), vzip2_s32(*v8.i8, *v7.i8)));
  *v8.i8 = vclez_f32(_D7);
  v10 = v8.i8[4] & v8.i8[0];
  v11 = a1.i64[0];
  if (v10)
  {
    return *&v11;
  }

  v12 = vsubq_f32(a4, a2);
  v13 = vmulq_f32(v4, v12);
  v14 = vmulq_f32(v5, v12);
  _D17 = vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v13, v13, 8uLL)), vadd_f32(vzip1_s32(*v14.i8, *v13.i8), vzip2_s32(*v14.i8, *v13.i8)));
  v16 = _D17.f32[1] < 0.0 || _D17.f32[0] > _D17.f32[1];
  v11 = a2.i64[0];
  if (!v16)
  {
    return *&v11;
  }

  __asm { FMLA            S16, S17, V7.S[1] }

  if (_D17.f32[1] <= 0.0 && _D7.f32[1] >= 0.0 && _S16 <= 0.0)
  {
    *&result = vmlaq_n_f32(a1, v4, _D7.f32[1] / (_D7.f32[1] - _D17.f32[1])).u64[0];
    return result;
  }

  v23 = vsubq_f32(a4, a3);
  v24 = vmulq_f32(v4, v23);
  v25 = vmulq_f32(v5, v23);
  v26 = vadd_f32(vzip1_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)), vadd_f32(vzip1_s32(*v24.i8, *v25.i8), vzip2_s32(*v24.i8, *v25.i8)));
  v27 = v26.f32[1] < 0.0 || v26.f32[0] > v26.f32[1];
  v11 = a3.i64[0];
  if (!v27)
  {
    return *&v11;
  }

  v28 = (v26.f32[0] * _D7.f32[0]) - (_D7.f32[1] * v26.f32[1]);
  if (v26.f32[1] <= 0.0 && v28 <= 0.0 && _D7.f32[0] >= 0.0)
  {
    v29 = _D7.f32[0] / (_D7.f32[0] - v26.f32[1]);
LABEL_25:
    *&result = vmlaq_n_f32(a1, v5, v29).u64[0];
    return result;
  }

  v30 = (_D17.f32[1] * v26.f32[1]) - (v26.f32[0] * _D17.f32[0]);
  if (v30 > 0.0 || (v31 = _D17.f32[0] - _D17.f32[1], v31 < 0.0) || (v32 = v26.f32[0] - v26.f32[1], v32 < 0.0))
  {
    v33 = 1.0 / (_S16 + (v30 + v28));
    v34 = v28 * v33;
    v29 = _S16 * v33;
    a1 = vmlaq_n_f32(a1, v4, v34);
    goto LABEL_25;
  }

  *&result = vmlaq_n_f32(a2, vsubq_f32(a3, a2), v31 / (v31 + v32)).u64[0];
  return result;
}

void CheckPolygonContact(float32x4_t *a1, float32x4_t *a2, float32x4_t *a3, uint64_t a4, float a5, double a6)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = vsubq_f32(v7, *a1);
  v10 = a1[2];
  v11 = vsubq_f32(v10, *a1);
  v12 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v11, v11), v11, 0xCuLL), vnegq_f32(v9)), v11, vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
  v13 = vextq_s8(vuzp1q_s32(v12, v12), v12, 0xCuLL);
  v14 = vmulq_f32(v12, v12);
  *&v15 = v14.f32[1] + (v14.f32[2] + v14.f32[0]);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_n_f32(v13, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]);
  v17 = vmulq_f32(*a1, v16);
  v18 = *a2;
  v19 = vmulq_f32(*a2, v16);
  v20 = vmulq_f32(v16, vnegq_f32(v16));
  v21 = vadd_f32(vzip1_s32(*v17.i8, *v20.i8), vzip2_s32(*v17.i8, *v20.i8));
  v23 = vextq_s8(v20, v20, 8uLL).u64[0];
  v22 = vadd_f32(vzip1_s32(*&vextq_s8(v17, v17, 8uLL), v23), v21);
  v23.f32[0] = (v22.f32[0] - (v19.f32[2] + vaddv_f32(*v19.f32))) / v22.f32[1];
  if (v23.f32[0] >= 0.0)
  {
    if (v23.f32[0] <= *&a6)
    {
      v42 = *&a6;
      v32 = vmlsq_lane_f32(v18, v16, v23, 0);
    }

    else
    {
      v28 = vmlsq_lane_f32(v18, v16, *&a6, 0);
      v29 = vmulq_f32(v16, v28);
      v30 = vmulq_f32(v16, *a3);
      *v30.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v29, v29, 8uLL), *&vextq_s8(v30, v30, 8uLL)), vadd_f32(vzip1_s32(*v29.i8, *v30.i8), vzip2_s32(*v29.i8, *v30.i8)));
      v31 = vdiv_f32(vsub_f32(v22, *v30.i8), vdup_lane_s32(*v30.i8, 1)).f32[0];
      if (v31 < 0.0)
      {
        return;
      }

      v42 = *&a6;
      v32 = vmlaq_n_f32(v28, *a3, v31);
    }

    v41 = v32;
    v45 = v32;
    v43[2] = v10;
    v44 = v32;
    v43[0] = v8;
    v43[1] = v7;
    v33 = C3DTriangle3ContainsPoint(v43, &v45);
    v34 = v41;
    if (!v33)
    {
      *v34.i64 = __closestPointOnTriangle(*a1, a1[1], a1[2], v45);
      v44 = v34;
    }

    v35 = vsubq_f32(*a2, v34);
    v36 = vmulq_f32(v35, v35);
    v36.f32[0] = sqrtf(v36.f32[2] + vaddv_f32(*v36.f32));
    v37 = vmulq_f32(v35, vnegq_f32(*a3));
    v37.f32[0] = v37.f32[2] + vaddv_f32(*v37.f32);
    v38 = -(((v36.f32[0] * v36.f32[0]) - (v37.f32[0] * v37.f32[0])) - (v42 * v42));
    v39 = v37.f32[0] - sqrtf(v38);
    if (v38 < 0.0)
    {
      v39 = -1.0;
    }

    if (v39 >= 0.0 && v39 <= a5)
    {
      (*(a4 + 16))(a4, a1, &v44);
    }
  }
}

float32x4_t __slideWithinWorld(float32x4_t *a1, double a2, float32x4_t a3, float32x4_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = LODWORD(a2);
  v73 = *MEMORY[0x277D85DE8];
  *&a2 = *&a2 + 0.001;
  v41 = vdupq_lane_s32(*&a2, 0);
  while (1)
  {
    v11 = vmulq_f32(a4, a4);
    v12 = v11.f32[2] + vaddv_f32(*v11.f32);
    v13 = sqrtf(v12);
    if (v13 < 0.001)
    {
      break;
    }

    v64 = 0;
    v65 = &v64;
    v66 = 0x2000000000;
    v67 = 0;
    v60 = 0;
    v61 = &v60;
    v62 = 0x2000000000;
    v63 = 2139095039;
    v68 = 0;
    v69 = &v68;
    v14 = v12;
    v70 = 0x3000000000;
    v15 = vrsqrte_f32(LODWORD(v12));
    v16 = vmul_f32(v15, vrsqrts_f32(LODWORD(v14), vmul_f32(v15, v15)));
    v17 = vmulq_n_f32(a4, vmul_f32(v16, vrsqrts_f32(LODWORD(v14), vmul_f32(v16, v16))).f32[0]);
    v18 = vsubq_f32(a3, v41);
    v18.i32[3] = 0;
    v44 = a4;
    v19 = vaddq_f32(a4, a3);
    v20 = vsubq_f32(v19, v41);
    v20.i32[3] = 0;
    v21 = vminnmq_f32(v18, v20);
    v22 = vaddq_f32(v41, a3);
    v22.i32[3] = 0;
    v42 = v19;
    v23 = vaddq_f32(v41, v19);
    v23.i32[3] = 0;
    v24 = vmaxnmq_f32(v22, v23);
    v25.i64[0] = 0x3F0000003F000000;
    v25.i64[1] = 0x3F0000003F000000;
    v26 = vmulq_f32(vaddq_f32(v21, v24), v25);
    v26.i32[3] = 1.0;
    v27 = vmulq_f32(vsubq_f32(v24, v21), v25);
    v27.i32[3] = 0;
    v71 = 0;
    v72 = 0;
    a1[13] = v26;
    a1[14] = v27;
    a1[11].i64[0] = a1[10].i64[1];
    v59 = 0;
    memset(v58, 0, sizeof(v58));
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 0x40000000;
    v46[2] = ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke;
    v46[3] = &unk_2782FD6F0;
    v47 = v26;
    v48 = v27;
    v54 = a7;
    v55 = a1;
    v49 = a3;
    v50 = v17;
    v43 = v17;
    v56 = v13;
    v57 = v8;
    v51 = &v64;
    v52 = &v60;
    v53 = &v68;
    v45 = a3;
    C3DCullingSystemQueryMake(v46, v58);
    *&v58[0] = a1[10].i64[0];
    C3DCullingSystemAABBIntersect(a6);
    v28 = *(v65 + 24);
    if (v28 == 1)
    {
      v29 = v69[2];
      v30 = v61[6];
      v31 = vsubq_f32(vmlaq_n_f32(v45, v43, v30), v29);
      v32 = vmulq_f32(v31, v31);
      *&v33 = v32.f32[2] + vaddv_f32(*v32.f32);
      *v32.f32 = vrsqrte_f32(v33);
      *v32.f32 = vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32)));
      v34 = vmulq_n_f32(v31, vmul_f32(*v32.f32, vrsqrts_f32(v33, vmul_f32(*v32.f32, *v32.f32))).f32[0]);
      v35 = vmulq_f32(v29, v34);
      v36 = vmlaq_n_f32(v45, v43, v13 + -0.001);
      v37 = vmulq_f32(v36, v34);
      v38 = vmulq_f32(v34, v34);
      *v35.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v35, v35, 8uLL), *&vextq_s8(v38, v38, 8uLL)), vadd_f32(vzip1_s32(*v35.i8, *v38.i8), vzip2_s32(*v35.i8, *v38.i8)));
      v44 = vsubq_f32(vmlaq_n_f32(v36, v34, (*v35.i32 - (v37.f32[2] + vaddv_f32(*v37.f32))) / *&v35.i32[1]), v29);
      v45 = vmlaq_n_f32(v45, v43, v30 + -0.001);
    }

    else
    {
      v40 = v42;
    }

    _Block_object_dispose(&v68, 8);
    _Block_object_dispose(&v60, 8);
    _Block_object_dispose(&v64, 8);
    a4 = v44;
    a3 = v45;
    if ((v28 & 1) == 0)
    {
      return v40;
    }
  }

  return a3;
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v79[1] + 4) = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v4 = a2;
    v6 = 0;
    v7 = vdup_n_s32(0x3727C5ACu);
    do
    {
      v8 = *(v4 + 8 * v6);
      v9 = *(a1 + 120);
      if (v8 != v9 && !C3DNodeIsAncestor(*(v4 + 8 * v6), v9))
      {
        Geometry = C3DNodeGetGeometry(v8, v10);
        RenderingMesh = C3DGeometryGetRenderingMesh(Geometry, v12);
        WorldMatrix = C3DNodeGetWorldMatrix(v8, v14);
        v17 = WorldMatrix;
        v19.columns[0] = *WorldMatrix;
        v19.columns[1] = *(WorldMatrix + 16);
        v19.columns[2] = *(WorldMatrix + 32);
        v18 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v19.columns[2], v19.columns[2]), v19.columns[2], 0xCuLL), vnegq_f32(v19.columns[1])), v19.columns[2], vextq_s8(vuzp1q_s32(v19.columns[1], v19.columns[1]), v19.columns[1], 0xCuLL));
        v19.columns[3] = vmulq_f32(*WorldMatrix, vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL));
        *v18.i32 = vaddv_f32(*v19.columns[3].f32);
        v19.columns[3].i32[0] = 1.0;
        if ((v19.columns[3].f32[2] + *v18.i32) < 0.0)
        {
          v19.columns[3].f32[0] = -1.0;
        }

        v20 = vmulq_f32(v19.columns[0], v19.columns[0]);
        v21 = vmulq_f32(v19.columns[1], v19.columns[1]);
        v22 = vadd_f32(vzip1_s32(*v20.i8, *v21.i8), vzip2_s32(*v20.i8, *v21.i8));
        v23 = vextq_s8(v20, v20, 8uLL);
        *v23.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v23.f32, *&vextq_s8(v21, v21, 8uLL)), v22));
        v24 = vmulq_f32(v19.columns[2], v19.columns[2]);
        v23.i32[2] = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
        v25 = vmulq_n_f32(v23, v19.columns[3].f32[0]);
        *v25.i8 = vcgt_f32(v7, vabd_f32(*v25.i8, vdup_laneq_s32(v25, 2)));
        if ((vpmin_u32(*v25.i8, *v25.i8).u32[0] & 0x80000000) != 0)
        {
          v19.columns[3] = *(WorldMatrix + 48);
          v80 = __invert_f4(v19);
          v45 = *(a1 + 48);
          v80.columns[3] = vaddq_f32(v80.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v80.columns[1], *(a1 + 32), 1), v80.columns[0], COERCE_FLOAT(*(a1 + 32))), v80.columns[2], *(a1 + 32), 2));
          v80.columns[3].i32[3] = 1.0;
          v46 = v45;
          v46.i32[1] = v45.i32[0];
          v46.i32[2] = v45.i32[0];
          v70[0] = MEMORY[0x277D85DD0];
          v70[1] = 0x40000000;
          v70[2] = ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_2;
          v70[3] = &unk_2782FD678;
          v47 = *(a1 + 128);
          v75 = v17;
          v76 = v47;
          v80.columns[1] = vaddq_f32(vabsq_f32(vmulq_f32(v80.columns[2], vzip2q_s32(vtrn1q_s32(v45, v45), v45))), vaddq_f32(vabsq_f32(vmulq_f32(v80.columns[0], v46)), vabsq_f32(vmulq_f32(v80.columns[1], vuzp2q_s32(vdupq_lane_s32(*v45.i8, 1), v45)))));
          v80.columns[2] = *(a1 + 80);
          v71 = *(a1 + 64);
          v72 = v80.columns[2];
          v77 = *(a1 + 136);
          v73 = *(a1 + 96);
          v74 = *(a1 + 112);
          C3DMeshQueryTrianglesIntersectingBox(RenderingMesh, v70, v80.columns[3], v80.columns[1]);
        }

        else
        {
          ElementsCount = C3DMeshGetElementsCount(RenderingMesh, v16);
          if (ElementsCount)
          {
            v27 = ElementsCount;
            PositionSource = C3DMeshGetPositionSource(RenderingMesh, 0);
            if (C3DMeshSourceGetCount(PositionSource, v29))
            {
              v68 = 0u;
              v69 = 0u;
              Content = C3DMeshSourceGetContent(PositionSource, v30, &v68);
              if (BYTE4(v69) != 9)
              {
                v33 = scn_default_log(Content, v32);
                if (os_log_type_enabled(v33, OS_LOG_TYPE_FAULT))
                {
                  ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_cold_1(v78, v79, v33);
                }
              }

              v34 = v69;
              ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(RenderingMesh, 0, 0);
              if (v27 >= 1)
              {
                v36 = ChannelForSourceWithSemanticAtIndex;
                v37 = 0;
                v38 = v34 - 1;
                do
                {
                  ElementAtIndex = C3DMeshGetElementAtIndex(RenderingMesh, v37, 0);
                  v66 = 0u;
                  v67 = 0u;
                  v64 = 0u;
                  v65 = 0u;
                  v40 = C3DMeshElementGetContent(ElementAtIndex, v36, &v64);
                  if ((BYTE2(v66) & 0xFA) != 0)
                  {
                    v42 = scn_default_log(v40, v41);
                    if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 0;
                      _os_log_impl(&dword_21BEF7000, v42, OS_LOG_TYPE_DEFAULT, "Warning: Slider can only process triangles.", buf, 2u);
                    }
                  }

                  else
                  {
                    *buf = v64;
                    v61 = v65;
                    v62 = v66;
                    v63 = v67;
                    v49[0] = MEMORY[0x277D85DD0];
                    v49[1] = 0x40000000;
                    v49[2] = ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_9;
                    v49[3] = &unk_2782FD6C8;
                    v54 = v68;
                    v55 = v69;
                    v58 = v38;
                    v43 = *(a1 + 128);
                    v56 = v17;
                    v57 = v43;
                    v44 = *(a1 + 80);
                    v50 = *(a1 + 64);
                    v51 = v44;
                    v59 = *(a1 + 136);
                    v52 = *(a1 + 96);
                    v53 = *(a1 + 112);
                    C3DIndicesContentEnumeratePrimitives(buf, v49, v52);
                  }

                  ++v37;
                }

                while (v27 != v37);
              }

              v4 = a2;
            }
          }
        }
      }

      ++v6;
    }

    while (v6 != a3);
  }
}

uint64_t ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 3 * a3;
    do
    {
      v7 = *(a2 + 16 * (v5 + 1));
      v8 = *(a2 + 16 * (v5 + 2));
      v21 = *(a2 + 16 * v5);
      v22 = v7;
      v23 = v8;
      v10 = *(a1 + 88);
      v9 = *(a1 + 96);
      v11 = v10[1];
      v12 = v10[2];
      v13 = v10[3];
      v21 = vaddq_f32(v13, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v21.f32, 1), *v10, v21.f32[0]), v12, v21, 2));
      v22 = vaddq_f32(v13, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v11, *v7.f32, 1), *v10, v7.f32[0]), v12, v7, 2));
      v14 = vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v10[1], *v8.f32, 1), *v10, v8.f32[0]), v12, v8, 2);
      v23 = vaddq_f32(v13, v14);
      if (*(v9 + 128))
      {
        std::vector<Triangle>::push_back[abi:nn200100](v9 + 240, &v21);
        v9 = *(a1 + 96);
      }

      v15 = *(a1 + 104);
      v14.i32[0] = *(a1 + 108);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 0x40000000;
      v17[2] = ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_3;
      v17[3] = &unk_2782FD650;
      v18 = *(a1 + 64);
      v19 = *(a1 + 80);
      v20 = v9;
      CheckPolygonContact(&v21, (a1 + 32), (a1 + 48), v17, v15, *v14.i64);
      v5 += 3;
    }

    while (v6 != v5);
  }

  return 0;
}

void std::vector<Triangle>::push_back[abi:nn200100](uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v4 >= v5)
  {
    v9 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      std::string::__throw_length_error[abi:nn200100]();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      std::__allocate_at_least[abi:nn200100]<std::allocator<Triangle>>(a1, v12);
    }

    v13 = 48 * v9;
    v14 = *a2;
    v15 = a2[2];
    *(v13 + 16) = a2[1];
    *(v13 + 32) = v15;
    *v13 = v14;
    v8 = 48 * v9 + 48;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v8;
    *(a1 + 16) = 0;
    if (v18)
    {
      operator delete(v18);
    }
  }

  else
  {
    v6 = *a2;
    v7 = a2[2];
    v4[1] = a2[1];
    v4[2] = v7;
    *v4 = v6;
    v8 = (v4 + 3);
  }

  *(a1 + 8) = v8;
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_3(void *a1, __int128 *a2, _OWORD *a3, float a4)
{
  v5 = *(a1[5] + 8);
  if (*(*(a1[4] + 8) + 24) != 1 || (v6 = *(v5 + 24), v6 > a4))
  {
    *(v5 + 24) = a4;
    *(*(a1[6] + 8) + 32) = *a3;
    v8 = a1 + 7;
    v7 = a1[7];
    *(*(a1[4] + 8) + 24) = 1;
    if (!*(v7 + 128))
    {
      return;
    }

    *(v7 + 248) -= 48;
    std::vector<Triangle>::push_back[abi:nn200100](*v8 + 264, a2);
    goto LABEL_11;
  }

  v9 = v6 + -0.001;
  v10 = v6 + 0.001;
  if (v9 < a4 && v10 > a4)
  {
    v8 = a1 + 7;
LABEL_11:
    v12 = *v8 + 168;

    std::vector<Triangle>::push_back[abi:nn200100](v12, a2);
  }
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_9(uint64_t a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v6 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_9_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = *(a1 + 88);
  v15 = *(a1 + 110);
  v16 = *(a1 + 136);
  v17 = *a3;
  if (v16 < *a3)
  {
    v17 = *(a1 + 136);
  }

  v18 = (v14 + v17 * v15);
  v19 = vmul_s32(vmin_u32(vdup_n_s32(v16), *(a3 + 1)), vdup_n_s32(v15));
  v20 = (v14 + v19.u32[0]);
  v21 = *v20;
  v22 = v20[1];
  v23 = v20[2];
  v24 = (v14 + v19.u32[1]);
  v19.i32[0] = *v24;
  v25 = v24[1];
  v26 = v24[2];
  v28 = *(a1 + 120);
  v27 = *(a1 + 128);
  v29 = v28[1];
  v30 = v28[2];
  v31 = v28[3];
  v32 = vaddq_f32(v31, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v28, v21), v29, v22), v30, v23));
  v33 = vaddq_f32(v31, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v28, *v19.i32), v29, v25), v30, v26));
  v39[0] = vaddq_f32(v31, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(*v28, *v18), v29, v18[1]), v30, v18[2]));
  v39[1] = v32;
  v39[2] = v33;
  if (*(v27 + 128))
  {
    std::vector<Triangle>::push_back[abi:nn200100](v27 + 240, v39);
    v27 = *(a1 + 128);
  }

  v34 = *(a1 + 140);
  v32.i32[0] = *(a1 + 144);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 0x40000000;
  v35[2] = ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_11;
  v35[3] = &unk_2782FD6A0;
  v36 = *(a1 + 64);
  v37 = *(a1 + 80);
  v38 = v27;
  CheckPolygonContact(v39, (a1 + 32), (a1 + 48), v35, v34, *v32.i64);
}

void ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_11(void *a1, __int128 *a2, _OWORD *a3, float a4)
{
  v5 = *(a1[5] + 8);
  if (*(*(a1[4] + 8) + 24) != 1 || (v6 = *(v5 + 24), v6 > a4))
  {
    *(v5 + 24) = a4;
    *(*(a1[6] + 8) + 32) = *a3;
    v8 = a1 + 7;
    v7 = a1[7];
    *(*(a1[4] + 8) + 24) = 1;
    if (!*(v7 + 128))
    {
      return;
    }

    *(v7 + 248) -= 48;
    std::vector<Triangle>::push_back[abi:nn200100](*v8 + 264, a2);
    goto LABEL_11;
  }

  v9 = v6 + -0.001;
  v10 = v6 + 0.001;
  if (v9 < a4 && v10 > a4)
  {
    v8 = a1 + 7;
LABEL_11:
    v12 = *v8 + 168;

    std::vector<Triangle>::push_back[abi:nn200100](v12, a2);
  }
}

uint64_t C3DConstraintApplySlider(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v7, v8, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a2 + 16);
  v58.i32[2] = 0;
  v58.i64[0] = 0;
  C3DNodeGetWorldPosition(a3, &v58);
  v17 = C3DGetScene(a3, v16);
  if (v17)
  {
    v19 = *(a2 + 56);
    CullingSystem = C3DSceneGetCullingSystem(v17, v18);
    WorldMatrix = C3DNodeGetWorldMatrix(a3, v21);
    v24 = *WorldMatrix;
    v25 = *(WorldMatrix + 16);
    v26 = *(WorldMatrix + 32);
    v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
    v28 = vmulq_f32(*WorldMatrix, vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL));
    v29 = (v28.f32[2] + vaddv_f32(*v28.f32)) < 0.0;
    v30 = 1.0;
    v31 = vmulq_f32(v24, v24);
    v32 = vmulq_f32(v25, v25);
    v33 = vadd_f32(vzip1_s32(*v31.i8, *v32.i8), vzip2_s32(*v31.i8, *v32.i8));
    v35 = vextq_s8(v31, v31, 8uLL);
    *v35.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v35.f32, *&vextq_s8(v32, v32, 8uLL)), v33));
    v34 = vmulq_f32(v26, v26);
    v35.i32[2] = sqrtf(v34.f32[2] + vaddv_f32(*v34.f32));
    if (v29)
    {
      v30 = -1.0;
    }

    v36 = vmulq_n_f32(v35, v30);
    v37 = v36.f32[2];
    if (v36.f32[0] >= v36.f32[2])
    {
      v37 = v36.f32[0];
    }

    v36.i32[0] = v36.i32[1];
    if (v37 >= v36.f32[1])
    {
      v36.f32[0] = v37;
    }

    v38 = v15[9];
    v39 = vsubq_f32(vaddq_f32(*(WorldMatrix + 48), vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v25, *v38.f32, 1), v24, v38.f32[0]), v26, v38, 2)), v58);
    v42 = *v19;
    v40 = vaddq_f32(*v19, v39);
    v55 = v39;
    v41 = vaddq_f32(v58, v39);
    v42.f32[0] = vmuls_lane_f32(v36.f32[0], v38, 3);
    v43 = v41;
    v43.i32[3] = v42.i32[0];
    v15[12] = v43;
    if (v15[8].i64[0])
    {
      v15[15].i64[1] = v15[15].i64[0];
      v15[17].i64[0] = v15[16].i64[1];
    }

    v56 = vsubq_f32(__slideWithinWorld(v15, *v42.i64, v40, vsubq_f32(v41, v40), v23, CullingSystem, a3), v55);
    *v19 = v56;
    Parent = C3DNodeGetParent(a3, v44);
    if (Parent)
    {
      v47 = C3DNodeGetWorldMatrix(Parent, v46);
    }

    else
    {
      v47 = MEMORY[0x277D860B8];
    }

    v59 = __invert_f4(*v47);
    v57 = vaddq_f32(v59.columns[3], vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v59.columns[1], *v56.f32, 1), v59.columns[0], v56.f32[0]), v59.columns[2], v56, 2));
    Target = C3DModelTargetGetTarget(a4, v48);
    TargetAddress = C3DModelTargetGetTargetAddress(a4, v50);
    v53 = C3DSizeOfBaseType(9, v52);
    C3DSetValue(Target, TargetAddress, &v57, v53, 6, 0);
  }

  return 1;
}

void C3DContraintSliderAppendDebugInfo(__C3DConstraint *a1, uint64_t a2)
{
  v4 = *(MEMORY[0x277D860B8] + 16);
  v5 = *(MEMORY[0x277D860B8] + 32);
  v6 = *(MEMORY[0x277D860B8] + 48);
  v24[0] = *MEMORY[0x277D860B8];
  v24[1] = v4;
  v24[2] = v5;
  v24[3] = v6;
  v23 = xmmword_21C27F7E0;
  C3DAuthoringEnvironmentAppendDebugBoundingSphere(a2, a1[1].var0.var6, a1[1].var1, v24, &v23);
  v22 = xmmword_21C27F800;
  C3DAuthoringEnvironmentAppendDebugBoundingBox(a2, &a1[1].var2, v24, &v22);
  var3 = a1[1].var5.var3;
  var4 = a1[1].var5.var4;
  v21 = xmmword_21C27F7E0;
  while (var3 != var4)
  {
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v21, 0, *var3, var3[1]);
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v21, 0, var3[1], var3[2]);
    v9 = var3[2];
    v10 = *var3;
    var3 += 3;
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v21, 0, v9, v10);
  }

  v11 = a1[1].var0.var3;
  v12 = a1[1].var0.var4;
  v20 = xmmword_21C27F800;
  while (v11 != v12)
  {
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v20, 0, *v11, v11[1]);
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v20, 0, v11[1], v11[2]);
    v13 = v11[2];
    v14 = *v11;
    v11 += 3;
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v20, 0, v13, v14);
  }

  var6 = a1[1].var6;
  var0 = a1[2].var0.var0.var0;
  v19 = xmmword_21C27FDD0;
  while (var6 != var0)
  {
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v19, 0, *var6, var6[1]);
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v19, 0, var6[1], var6[2]);
    v17 = var6[2];
    v18 = *var6;
    var6 += 3;
    C3DAuthoringEnvironmentAppendDebugSegment(a2, 0, &v19, 0, v17, v18);
  }
}

uint64_t C3DConstraintSliderInit(uint64_t a1, uint64_t a2, _BOOL8 a3)
{
  v6.n128_u32[2] = 0;
  v6.n128_u64[0] = 0;
  C3DNodeGetWorldPosition(a3, &v6);
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  *(a2 + 56) = v4;
  *v4 = v6;
  return 1;
}

uint64_t C3DConstraintCreateSlider(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintSliderGetTypeID::onceToken != -1)
  {
    C3DConstraintSliderGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintSliderGetTypeID::typeID, 272);
  C3DConstraintInit(Instance);
  *(Instance + 160) = -1;
  *(Instance + 156) = 1065353216;
  *(Instance + 80) = C3DConstraintSliderInit;
  *(Instance + 88) = C3DConstraintApplySlider;
  *(Instance + 96) = C3DConstraintSliderCopyTargetPath;
  *(Instance + 112) = C3DContraintSliderAppendDebugInfo;
  return Instance;
}

void C3DConstaintSliderSetCategoryBitMask(uint64_t result, uint64_t a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 160) = a2;
}

void C3DConstaintSliderSetRadius(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 156) = a3;
}

__n128 C3DConstaintSliderSetOffset(__n128 *a1, uint64_t a2, __n128 result)
{
  if (!a1)
  {
    v13 = result;
    v4 = scn_default_log(0, a2);
    v5 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT);
    result = v13;
    if (v5)
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v6, v7, v8, v9, v10, v11, v12);
      result = v13;
    }
  }

  result.n128_u32[3] = a1[9].n128_u32[3];
  a1[9] = result;
  return result;
}

uint64_t C3DConstraintAvoidOccluderGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintAvoidOccluderGetTypeID::onceToken != -1)
  {
    C3DConstraintAvoidOccluderGetTypeID_cold_1();
  }

  return C3DConstraintAvoidOccluderGetTypeID::typeID;
}

void _C3DConstraintAvoidOccluderCFFinalize(void *a1)
{
  v2 = a1[17];
  if (v2)
  {
    CFRelease(v2);
    a1[17] = 0;
  }

  v3 = a1[18];
  if (v3)
  {
    CFRelease(v3);
    a1[18] = 0;
  }

  _C3DConstraintCFFinalize(a1);
}

uint64_t __C3DConstraintAvoidOccluderGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DConstraintAvoidOccluderGetTypeID::typeID = result;
  return result;
}

CFTypeRef C3DConstraintAvoidOccluderSetDelegate(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 144);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 144) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 144) = result;
  }

  return result;
}

CFTypeRef C3DConstraintAvoidOccluderSetTarget(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 136);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 136) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 136) = result;
  }

  return result;
}

void C3DConstraintAvoidOccluderSetOffset(uint64_t result, uint64_t a2, float a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DConstaintSliderSetCategoryBitMask_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = 0.0001;
  if (a3 >= 0.0001)
  {
    v13 = a3;
  }

  *(result + 168) = v13;
}

BOOL C3DConstraintApplyAvoidOccluder(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    v7 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      C3DKeyframeControllerSetKeyframeAtIndex_cold_1(v7, a2, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = C3DGetScene(a3, a2);
  if (!v14)
  {
    return 0;
  }

  CullingSystem = C3DSceneGetCullingSystem(v14, v15);
  v17 = *(a2 + 16);
  v18 = *(v17 + 136);
  v64 = v18;
  v19 = v18 != 0;
  if (v18)
  {
    v20 = CullingSystem;
    v61 = 0xA00000000;
    v62 = v63;
    v60[0] = 0;
    v60[1] = v60;
    v60[2] = 0x2000000000;
    v60[3] = &v61;
    if (*(v17 + 152) == 1)
    {
      C3DAppendFlattenNodeHierarchy<C3D::Array<__C3DNode *,10u,C3D::MallocAllocator>>(&v61, v18);
      C3DAppendFlattenNodeHierarchy<C3D::Array<__C3DNode *,10u,C3D::MallocAllocator>>(&v61, a3);
    }

    else
    {
      C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(&v61, &v64);
      *&v48[0] = a3;
      C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(&v61, v48);
    }

    v21 = 126 - 2 * __clz(v61);
    if (v61)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }

    std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **,false>(v62, &v62[v61], v48, v22, 1);
    v59.i32[2] = 0;
    v59.i64[0] = 0;
    C3DNodeGetWorldPosition(a3, &v59);
    v58.i32[2] = 0;
    v58.i64[0] = 0;
    C3DNodeGetWorldPosition(v64, &v58);
    v23 = vsubq_f32(v59, v58);
    v24 = vmulq_f32(v23, v23);
    v24.f32[0] = sqrtf(v24.f32[2] + vaddv_f32(*v24.f32));
    v25 = vdivq_f32(v23, vdupq_lane_s32(*v24.f32, 0));
    __asm { FMOV            V2.4S, #1.0 }

    v38 = v25;
    v54 = 0;
    v55 = &v54;
    v56 = 0x2000000000;
    v57 = 2139095039;
    v50 = 0;
    v51 = &v50;
    v52 = 0x2000000000;
    v53 = 0;
    v49 = 0;
    memset(v48, 0, sizeof(v48));
    v40[0] = MEMORY[0x277D85DD0];
    v40[1] = 0x40000000;
    v40[2] = ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke;
    v40[3] = &unk_2782FD760;
    v43 = &v50;
    v44 = &v54;
    v41 = v58;
    v42 = v59;
    v45 = v60;
    v46 = v17;
    v47 = a3;
    C3DCullingSystemQueryMake(v40, v48);
    *&v48[0] = *(v17 + 160);
    C3DCullingSystemRayIntersect(v20);
    if (*(v51 + 24) == 1)
    {
      v39 = vmlaq_n_f32(v58, v38, v55[6] - *(v17 + 168));
      Target = C3DModelTargetGetTarget(a4, v31);
      TargetAddress = C3DModelTargetGetTargetAddress(a4, v33);
      v36 = C3DSizeOfBaseType(9, v35);
      C3DSetValue(Target, TargetAddress, &v39, v36, 6, 0);
    }

    _Block_object_dispose(&v50, 8);
    _Block_object_dispose(&v54, 8);
    _Block_object_dispose(v60, 8);
    if (v62 != v63)
    {
      free(v62);
    }
  }

  return v19;
}

uint64_t C3DAppendFlattenNodeHierarchy<C3D::Array<__C3DNode *,10u,C3D::MallocAllocator>>(unsigned int *a1, uint64_t a2)
{
  v5 = a2;
  C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(a1, &v5);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 0x40000000;
  v4[2] = ___Z29C3DAppendFlattenNodeHierarchyIN3C3D5ArrayIP9__C3DNodeLj10ENS0_15MallocAllocatorEEEEvRT_S3__block_invoke;
  v4[3] = &__block_descriptor_tmp_34_1;
  v4[4] = a1;
  return C3DNodeApplyHierarchy(v5, v4);
}

void ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v90[1] + 4) = *MEMORY[0x277D85DE8];
  if (a3 >= 1)
  {
    v3 = a3;
    v4 = a2;
    v6 = 0;
    v7 = *(*(*(a1 + 64) + 8) + 24);
    v8 = *(*(*(a1 + 72) + 8) + 24);
    do
    {
      v9 = *(v4 + 8 * v6);
      v10 = *(*(*(a1 + 80) + 8) + 24);
      v11 = *(v10 + 1);
      v12 = *v10;
      if (v12)
      {
        v13 = v11;
        v14 = v12;
        do
        {
          v15 = v14 >> 1;
          v16 = &v13[v14 >> 1];
          v18 = *v16;
          v17 = v16 + 1;
          v14 += ~(v14 >> 1);
          if (v18 < v9)
          {
            v13 = v17;
          }

          else
          {
            v14 = v15;
          }
        }

        while (v14);
      }

      else
      {
        v13 = v11;
      }

      if (v13 == &v11[v12] || v9 < *v13)
      {
        Geometry = C3DNodeGetGeometry(*(v4 + 8 * v6), a2);
        WorldMatrix = C3DNodeGetWorldMatrix(v9, v20);
        v22.columns[0] = *WorldMatrix;
        v22.columns[1] = *(WorldMatrix + 16);
        v22.columns[2] = *(WorldMatrix + 32);
        v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22.columns[2], v22.columns[2]), v22.columns[2], 0xCuLL), vnegq_f32(v22.columns[1])), v22.columns[2], vextq_s8(vuzp1q_s32(v22.columns[1], v22.columns[1]), v22.columns[1], 0xCuLL));
        v24 = vmulq_f32(*WorldMatrix, vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
        if ((v24.f32[2] + vaddv_f32(*v24.f32)) >= 0.0)
        {
          v25 = 1.0;
        }

        else
        {
          v25 = -1.0;
        }

        v26 = vmulq_f32(v22.columns[0], v22.columns[0]);
        v27 = vmulq_f32(v22.columns[1], v22.columns[1]);
        v28 = vadd_f32(vzip1_s32(*v26.i8, *v27.i8), vzip2_s32(*v26.i8, *v27.i8));
        v29 = vextq_s8(v26, v26, 8uLL);
        *v29.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v29.f32, *&vextq_s8(v27, v27, 8uLL)), v28));
        v30 = vmulq_f32(v22.columns[2], v22.columns[2]);
        v29.i32[2] = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
        v31 = vmulq_n_f32(v29, v25);
        v32 = v31.f32[2];
        if (v31.f32[0] >= v31.f32[2])
        {
          v32 = v31.f32[0];
        }

        if (v32 < v31.f32[1])
        {
          v33 = v31.f32[1];
        }

        else
        {
          v33 = v32;
        }

        v22.columns[3] = *(WorldMatrix + 48);
        v91 = __invert_f4(v22);
        v66 = v91.columns[2];
        v68 = v91.columns[0];
        v64 = v91.columns[1];
        v65 = v91.columns[3];
        v62 = *(a1 + 32);
        v63 = *(a1 + 48);
        RenderingMesh = C3DGeometryGetRenderingMesh(Geometry, v34);
        ElementsCount = C3DMeshGetElementsCount(RenderingMesh, v36);
        if (ElementsCount)
        {
          v38 = ElementsCount;
          PositionSource = C3DMeshGetPositionSource(RenderingMesh, 0);
          if (C3DMeshSourceGetCount(PositionSource, v40))
          {
            v61 = v7;
            v87 = 0u;
            v88 = 0u;
            C3DMeshSourceGetContent(PositionSource, a2, &v87);
            ChannelForSourceWithSemanticAtIndex = C3DMeshGetChannelForSourceWithSemanticAtIndex(RenderingMesh, 0, 0);
            v42 = ChannelForSourceWithSemanticAtIndex;
            if (BYTE4(v88) != 9)
            {
              v43 = scn_default_log(ChannelForSourceWithSemanticAtIndex, a2);
              if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
              {
                ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke_cold_1(v89, v90, v43);
              }
            }

            if (v38 >= 1)
            {
              v44 = 0;
              v45 = vaddq_f32(v65, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v64, *v62.f32, 1), v68, v62.f32[0]), v66, v62, 2));
              v46 = vaddq_f32(v65, vmlaq_laneq_f32(vmlaq_n_f32(vmulq_lane_f32(v64, *v63.f32, 1), v68, v63.f32[0]), v66, v63, 2));
              v47 = vsubq_f32(v46, v45);
              v48 = vmulq_f32(v47, v47);
              *&v49 = v48.f32[2] + vaddv_f32(*v48.f32);
              *v48.f32 = vrsqrte_f32(v49);
              *v48.f32 = vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32)));
              v67 = vmulq_n_f32(v47, vmul_f32(*v48.f32, vrsqrts_f32(v49, vmul_f32(*v48.f32, *v48.f32))).f32[0]);
              v69 = v45;
              v50 = vsubq_f32(v45, v46);
              v51 = vmulq_f32(v50, v50);
              v52 = sqrtf(v51.f32[2] + vaddv_f32(*v51.f32));
              v53 = v88 - 1;
              do
              {
                ElementAtIndex = C3DMeshGetElementAtIndex(RenderingMesh, v44, 0);
                v85 = 0u;
                v86 = 0u;
                v83 = 0u;
                v84 = 0u;
                Content = C3DMeshElementGetContent(ElementAtIndex, v42, &v83);
                if ((BYTE2(v85) & 0xFA) != 0)
                {
                  v57 = scn_default_log(Content, v56);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_21BEF7000, v57, OS_LOG_TYPE_DEFAULT, "Warning: Occluder can only process triangles.", buf, 2u);
                  }
                }

                else
                {
                  *buf = v83;
                  v80 = v84;
                  v81 = v85;
                  v82 = v86;
                  v70[0] = MEMORY[0x277D85DD0];
                  v70[1] = 0x40000000;
                  v70[2] = ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke_25;
                  v70[3] = &unk_2782FD738;
                  v74 = v87;
                  v75 = v88;
                  v76 = v53;
                  v71 = v69;
                  v72 = v67;
                  v77 = v52;
                  v78 = v33;
                  v73 = vextq_s8(*(a1 + 64), *(a1 + 64), 8uLL);
                  C3DIndicesContentEnumeratePrimitives(buf, v70, v73);
                }

                ++v44;
              }

              while (v38 != v44);
            }

            v4 = a2;
            v3 = a3;
            if (*(*(*(a1 + 72) + 8) + 24) < v8)
            {
              v58 = *(*(a1 + 88) + 144);
              if (v58)
              {
                if (C3DAvoidOccluderConstraintDelegateShouldAvoidOccluder(v58, v9, *(a1 + 96)))
                {
                  C3DAvoidOccluderConstraintDelegateDidAvoidOccluder(*(*(a1 + 88) + 144), v9, *(a1 + 96));
                }

                else
                {
                  *(*(*(a1 + 64) + 8) + 24) = v61 & 1;
                  *(*(*(a1 + 72) + 8) + 24) = v8;
                }
              }
            }

            v7 = *(*(*(a1 + 64) + 8) + 24);
            v8 = *(*(*(a1 + 72) + 8) + 24);
          }
        }
      }

      ++v6;
    }

    while (v6 != v3);
  }
}

float32_t ___Z31C3DConstraintApplyAvoidOccluderP18__C3DEngineContextP25__C3DConstraintControllerPKvP16__C3DModelTargetf_block_invoke_25(float32x4_t *a1, uint64_t a2, unsigned int *a3, unsigned int a4)
{
  if (a4 <= 2)
  {
    v6 = scn_default_log(a1, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      ___Z18__slideWithinWorldP15__C3DConstraintP18__C3DEngineContextP18__C3DCullingSystemP9__C3DNodefDv3_fS7__block_invoke_9_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  v14 = a1[5].i64[0];
  v15 = a1[6].u8[6];
  v16 = a1[7].u32[0];
  v17 = *a3;
  if (v16 < *a3)
  {
    v17 = a1[7].i32[0];
  }

  v18 = v14 + v17 * v15;
  v19.i64[0] = *v18;
  v19.i32[2] = *(v18 + 8);
  v19.i32[3] = 1.0;
  v20 = vmul_s32(vmin_u32(vdup_n_s32(v16), *(a3 + 1)), vdup_n_s32(v15));
  v21 = v14 + v20.u32[0];
  v22.i64[0] = *v21;
  v22.i32[2] = *(v21 + 8);
  v22.i32[3] = 1.0;
  v23 = v14 + v20.u32[1];
  v24.i64[0] = *v23;
  v24.i32[2] = *(v23 + 8);
  v24.i32[3] = 1.0;
  v25 = vsubq_f32(v22, v19);
  v26 = vsubq_f32(v24, v19);
  v27 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vnegq_f32(v25)), v26, vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL));
  v28 = vextq_s8(vuzp1q_s32(v27, v27), v27, 0xCuLL);
  v29 = vmulq_f32(v27, v27);
  *&v30 = v29.f32[1] + (v29.f32[2] + v29.f32[0]);
  *v29.f32 = vrsqrte_f32(v30);
  *v29.f32 = vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32)));
  v31 = vmulq_n_f32(v28, vmul_f32(*v29.f32, vrsqrts_f32(v30, vmul_f32(*v29.f32, *v29.f32))).f32[0]);
  v32 = vmulq_f32(v19, v31);
  v33 = a1[2];
  v34 = a1[3];
  v35 = vmulq_f32(v33, v31);
  v36 = vmulq_f32(v34, v31);
  *v36.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v32, v32, 8uLL), *&vextq_s8(v36, v36, 8uLL)), vadd_f32(vzip1_s32(*v32.i8, *v36.i8), vzip2_s32(*v32.i8, *v36.i8)));
  v37 = (*v36.i32 - (v35.f32[2] + vaddv_f32(*v35.f32))) / *&v36.i32[1];
  if (v37 > 0.0 && v37 < a1[7].f32[1])
  {
    v41 = vmlaq_n_f32(v33, v34, v37);
    v40[0] = v19;
    v40[1] = v22;
    v40[2] = v24;
    v19.f32[0] = v37 * a1[7].f32[2];
    if (v19.f32[0] < *(*(a1[4].i64[0] + 8) + 24))
    {
      v39 = v37;
      if (C3DTriangle3ContainsPoint(v40, &v41))
      {
        *(*(a1[4].i64[1] + 8) + 24) = 1;
        v19.f32[0] = v39 * a1[7].f32[2];
        *(*(a1[4].i64[0] + 8) + 24) = v19.i32[0];
      }
    }
  }

  return v19.f32[0];
}

uint64_t C3DConstraintCreateAvoidOccluder(uint64_t a1, uint64_t a2)
{
  if (C3DConstraintAvoidOccluderGetTypeID::onceToken != -1)
  {
    C3DConstraintAvoidOccluderGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DConstraintAvoidOccluderGetTypeID::typeID, 160);
  C3DConstraintInit(Instance);
  *(Instance + 160) = 1;
  *(Instance + 168) = 925353388;
  *(Instance + 152) = 1;
  *(Instance + 88) = C3DConstraintApplyAvoidOccluder;
  *(Instance + 96) = C3DConstraintAvoidOccluderCopyTargetPath;
  return Instance;
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<Triangle>>(uint64_t a1, unint64_t a2)
{
  if (a2 < 0x555555555555556)
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

uint64_t ___Z29C3DAppendFlattenNodeHierarchyIN3C3D5ArrayIP9__C3DNodeLj10ENS0_15MallocAllocatorEEEEvRT_S3__block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if (a2 && C3DNodeShouldBePutInCullingSystem(a2, a2))
  {
    C3D::Array<unsigned long long,32u,C3D::MallocAllocator>::push_back<unsigned long long const&>(*(a1 + 32), &v4);
  }

  return 0;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **,false>(unint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = result;
LABEL_2:
  v9 = v8;
LABEL_3:
  v10 = 1 - a4;
  while (1)
  {
    v8 = v9;
    v11 = v10;
    v12 = a2 - v9;
    if (v12 <= 2)
    {
      if (v12 < 2)
      {
        return result;
      }

      if (v12 == 2)
      {
        v56 = *(a2 - 1);
        v57 = *v9;
        if (v56 < *v9)
        {
          *v9 = v56;
          *(a2 - 1) = v57;
        }

        return result;
      }

      goto LABEL_11;
    }

    if (v12 == 3)
    {
      break;
    }

    if (v12 == 4)
    {
      v58 = v9 + 1;
      v59 = v9[1];
      v60 = v9 + 2;
      v61 = v9[2];
      v62 = *v9;
      if (v59 >= *v9)
      {
        if (v61 >= v59)
        {
          goto LABEL_120;
        }

        *v58 = v61;
        *v60 = v59;
        v63 = v9;
        v64 = v9 + 1;
        result = v59;
        if (v61 < v62)
        {
          goto LABEL_113;
        }
      }

      else
      {
        v63 = v9;
        v64 = v9 + 2;
        result = *v9;
        if (v61 >= v59)
        {
          *v9 = v59;
          v9[1] = v62;
          v63 = v9 + 1;
          v64 = v9 + 2;
          result = v62;
          if (v61 >= v62)
          {
LABEL_120:
            v59 = v61;
            goto LABEL_121;
          }
        }

LABEL_113:
        *v63 = v61;
        *v64 = v62;
        v59 = result;
      }

LABEL_121:
      v77 = *(a2 - 1);
      if (v77 < v59)
      {
        *v60 = v77;
        *(a2 - 1) = v59;
        v78 = *v60;
        v79 = *v58;
        if (v78 < v79)
        {
          v9[1] = v78;
          v9[2] = v79;
          v80 = *v9;
          if (v78 < *v9)
          {
            *v9 = v78;
            v9[1] = v80;
          }
        }
      }

      return result;
    }

    if (v12 == 5)
    {
      v47 = v9 + 1;
      v48 = v9[1];
      v50 = v9 + 2;
      v49 = v9[2];
      v51 = *v9;
      if (v48 >= *v9)
      {
        if (v49 >= v48)
        {
          v54 = *v9;
          v51 = v9[1];
        }

        else
        {
          v52 = v9;
          v53 = v9 + 1;
          *v47 = v49;
          *v50 = v48;
          v54 = v49;
          result = v51;
          v55 = v48;
          if (v49 < v51)
          {
            goto LABEL_129;
          }

          v54 = v51;
          v51 = v49;
          v49 = v48;
        }
      }

      else
      {
        if (v49 < v48)
        {
          v52 = v9;
          v53 = v9 + 2;
          v54 = v9[2];
          result = v9[1];
          v55 = *v9;
          goto LABEL_129;
        }

        v52 = v9 + 1;
        v53 = v9 + 2;
        *v9 = v48;
        v9[1] = v51;
        v54 = v48;
        result = v49;
        v55 = v51;
        if (v49 >= v51)
        {
          v54 = v48;
        }

        else
        {
LABEL_129:
          *v52 = v49;
          *v53 = v51;
          v51 = result;
          v49 = v55;
        }
      }

      v82 = v9[3];
      if (v82 >= v49)
      {
        v49 = v9[3];
      }

      else
      {
        v9[2] = v82;
        v9[3] = v49;
        if (v82 < v51)
        {
          *v47 = v82;
          *v50 = v51;
          if (v82 < v54)
          {
            *v9 = v82;
            v9[1] = v54;
          }
        }
      }

      v83 = *(a2 - 1);
      if (v83 >= v49)
      {
        return result;
      }

      v9[3] = v83;
      *(a2 - 1) = v49;
      v84 = v9[2];
      v74 = v9[3];
      if (v74 >= v84)
      {
        return result;
      }

      v9[2] = v74;
      v9[3] = v84;
      v85 = v9[1];
      if (v74 >= v85)
      {
        return result;
      }

      v9[1] = v74;
      v9[2] = v85;
LABEL_141:
      v86 = *v9;
      if (v74 < *v9)
      {
        *v9 = v74;
        v9[1] = v86;
      }

      return result;
    }

LABEL_11:
    if (v12 <= 23)
    {
      v65 = v9 + 1;
      v67 = v9 == a2 || v65 == a2;
      if (a5)
      {
        if (!v67)
        {
          v68 = 0;
          v69 = v9;
          do
          {
            v71 = *v69;
            v70 = v69[1];
            v69 = v65;
            if (v70 < v71)
            {
              v72 = v68;
              while (1)
              {
                *(v9 + v72 + 8) = v71;
                if (!v72)
                {
                  break;
                }

                v71 = *(v9 + v72 - 8);
                v72 -= 8;
                if (v70 >= v71)
                {
                  v73 = (v9 + v72 + 8);
                  goto LABEL_99;
                }
              }

              v73 = v9;
LABEL_99:
              *v73 = v70;
            }

            v65 = v69 + 1;
            v68 += 8;
          }

          while (v69 + 1 != a2);
        }
      }

      else if (!v67)
      {
        do
        {
          v76 = *v8;
          v75 = v8[1];
          v8 = v65;
          if (v75 < v76)
          {
            do
            {
              *v65 = v76;
              v76 = *(v65 - 2);
              --v65;
            }

            while (v75 < v76);
            *v65 = v75;
          }

          v65 = v8 + 1;
        }

        while (v8 + 1 != a2);
      }

      return result;
    }

    if (v10 == 1)
    {
      if (v9 != a2)
      {

        return std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **,__C3DNode **>(v9, a2, a2, a3);
      }

      return result;
    }

    v13 = &v9[v12 >> 1];
    v14 = v13;
    v15 = *(a2 - 1);
    if (v12 >= 0x81)
    {
      v16 = *v13;
      v17 = *v9;
      if (*v13 >= *v9)
      {
        if (v15 < v16)
        {
          *v13 = v15;
          *(a2 - 1) = v16;
          v20 = *v9;
          if (*v13 < *v9)
          {
            *v9 = *v13;
            *v13 = v20;
          }
        }
      }

      else
      {
        if (v15 < v16)
        {
          *v9 = v15;
          goto LABEL_29;
        }

        *v9 = v16;
        *v13 = v17;
        v22 = *(a2 - 1);
        if (v22 < v17)
        {
          *v13 = v22;
LABEL_29:
          *(a2 - 1) = v17;
        }
      }

      v23 = v13 - 1;
      v24 = *(v13 - 1);
      v25 = v9[1];
      v26 = *(a2 - 2);
      if (v24 >= v25)
      {
        if (v26 < v24)
        {
          *v23 = v26;
          *(a2 - 2) = v24;
          v27 = v9[1];
          if (*v23 < v27)
          {
            v9[1] = *v23;
            *v23 = v27;
          }
        }
      }

      else
      {
        if (v26 < v24)
        {
          v9[1] = v26;
          goto LABEL_43;
        }

        v9[1] = v24;
        *v23 = v25;
        v29 = *(a2 - 2);
        if (v29 < v25)
        {
          *v23 = v29;
LABEL_43:
          *(a2 - 2) = v25;
        }
      }

      v32 = v13[1];
      v30 = v13 + 1;
      v31 = v32;
      v33 = v9[2];
      v34 = *(a2 - 3);
      if (v32 >= v33)
      {
        if (v34 < v31)
        {
          *v30 = v34;
          *(a2 - 3) = v31;
          v35 = v9[2];
          if (*v30 < v35)
          {
            v9[2] = *v30;
            *v30 = v35;
          }
        }
      }

      else
      {
        if (v34 < v31)
        {
          v9[2] = v34;
          goto LABEL_52;
        }

        v9[2] = v31;
        *v30 = v33;
        v36 = *(a2 - 3);
        if (v36 < v33)
        {
          *v30 = v36;
LABEL_52:
          *(a2 - 3) = v33;
        }
      }

      v37 = *v14;
      v38 = *v23;
      v39 = *v30;
      if (*v14 >= *v23)
      {
        if (v39 < v37)
        {
          *v14 = v39;
          *v30 = v37;
          v30 = v14;
          v37 = v38;
          if (v39 < v38)
          {
            goto LABEL_59;
          }

          v37 = v39;
        }
      }

      else
      {
        if (v39 >= v37)
        {
          *v23 = v37;
          *v14 = v38;
          v23 = v14;
          v37 = v39;
          if (v39 >= v38)
          {
            v37 = v38;
            goto LABEL_60;
          }
        }

LABEL_59:
        *v23 = v39;
        *v30 = v38;
      }

LABEL_60:
      v40 = *v9;
      *v9 = v37;
      *v14 = v40;
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    v18 = *v9;
    v19 = *v13;
    if (*v9 < *v14)
    {
      if (v15 < v18)
      {
        *v14 = v15;
        goto LABEL_38;
      }

      *v14 = v18;
      *v9 = v19;
      v28 = *(a2 - 1);
      if (v28 < v19)
      {
        *v9 = v28;
LABEL_38:
        *(a2 - 1) = v19;
      }

LABEL_39:
      if (a5)
      {
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    if (v15 >= v18)
    {
      goto LABEL_39;
    }

    *v9 = v15;
    *(a2 - 1) = v18;
    v21 = *v14;
    if (*v9 >= *v14)
    {
      goto LABEL_39;
    }

    *v14 = *v9;
    *v9 = v21;
    if (a5)
    {
      goto LABEL_62;
    }

LABEL_61:
    if (*(v9 - 1) >= *v9)
    {
      result = std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,__C3DNode **,std::__less<void,void> &>(v9, a2);
      v9 = result;
      goto LABEL_69;
    }

LABEL_62:
    v41 = std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,__C3DNode **,std::__less<void,void> &>(v9, a2);
    if ((v42 & 1) == 0)
    {
      goto LABEL_67;
    }

    v43 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **>(v9, v41);
    v9 = v41 + 1;
    result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **>(v41 + 1, a2);
    if (result)
    {
      a4 = -v11;
      a2 = v41;
      if (v43)
      {
        return result;
      }

      goto LABEL_2;
    }

    v10 = v11 + 1;
    if (!v43)
    {
LABEL_67:
      result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **,false>(v8, v41, a3, -v11, a5 & 1);
      v9 = v41 + 1;
LABEL_69:
      a5 = 0;
      a4 = -v11;
      goto LABEL_3;
    }
  }

  v44 = *v9;
  v45 = v9[1];
  v46 = *(a2 - 1);
  if (v45 >= *v9)
  {
    if (v46 >= v45)
    {
      return result;
    }

    v9[1] = v46;
    *(a2 - 1) = v45;
    v74 = v9[1];
    goto LABEL_141;
  }

  if (v46 >= v45)
  {
    *v9 = v45;
    v9[1] = v44;
    v81 = *(a2 - 1);
    if (v81 >= v44)
    {
      return result;
    }

    v9[1] = v81;
  }

  else
  {
    *v9 = v46;
  }

  *(a2 - 1) = v44;
  return result;
}

unint64_t *std::__partition_with_equals_on_left[abi:nn200100]<std::_ClassicAlgPolicy,__C3DNode **,std::__less<void,void> &>(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  if (*a1 >= *(a2 - 1))
  {
    v5 = a1 + 1;
    do
    {
      v3 = v5;
      if (v5 >= a2)
      {
        break;
      }

      ++v5;
    }

    while (v2 >= *v3);
  }

  else
  {
    v3 = a1;
    do
    {
      v4 = v3[1];
      ++v3;
    }

    while (v2 >= v4);
  }

  if (v3 < a2)
  {
    do
    {
      v6 = *--a2;
    }

    while (v2 < v6);
  }

  if (v3 < a2)
  {
    v7 = *v3;
    v8 = *a2;
    do
    {
      *v3 = v8;
      *a2 = v7;
      do
      {
        v9 = v3[1];
        ++v3;
        v7 = v9;
      }

      while (v2 >= v9);
      do
      {
        v10 = *--a2;
        v8 = v10;
      }

      while (v2 < v10);
    }

    while (v3 < a2);
  }

  if (v3 - 1 != a1)
  {
    *a1 = *(v3 - 1);
  }

  *(v3 - 1) = v2;
  return v3;
}

unint64_t *std::__partition_with_equals_on_right[abi:nn200100]<std::_ClassicAlgPolicy,__C3DNode **,std::__less<void,void> &>(unint64_t *a1, unint64_t *a2)
{
  v2 = 0;
  v3 = *a1;
  do
  {
    v4 = a1[++v2];
  }

  while (v4 < v3);
  v5 = &a1[v2];
  v6 = &a1[v2 - 1];
  if (v2 == 1)
  {
    do
    {
      if (v5 >= a2)
      {
        break;
      }

      v8 = *--a2;
    }

    while (v8 >= v3);
  }

  else
  {
    do
    {
      v7 = *--a2;
    }

    while (v7 >= v3);
  }

  if (v5 < a2)
  {
    v9 = *a2;
    v10 = &a1[v2];
    v11 = a2;
    do
    {
      *v10 = v9;
      *v11 = v4;
      do
      {
        v12 = v10[1];
        ++v10;
        v4 = v12;
      }

      while (v12 < v3);
      do
      {
        v13 = *--v11;
        v9 = v13;
      }

      while (v13 >= v3);
    }

    while (v10 < v11);
    v6 = v10 - 1;
  }

  if (v6 != a1)
  {
    *a1 = *v6;
  }

  *v6 = v3;
  return v6;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

uint64_t *std::__partial_sort_impl[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **,__C3DNode **>(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t a4)
{
  if (a1 != a2)
  {
    v6 = a2;
    v8 = a2 - a1;
    if (v8 >= 2)
    {
      v9 = (v8 - 2) >> 1;
      v10 = v9 + 1;
      v11 = &a1[v9];
      do
      {
        std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **>(a1, a4, v8, v11--);
        --v10;
      }

      while (v10);
    }

    v12 = v6;
    if (v6 != a3)
    {
      v12 = v6;
      do
      {
        v13 = *v12;
        if (*v12 < *a1)
        {
          *v12 = *a1;
          *a1 = v13;
          std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **>(a1, a4, v8, a1);
        }

        ++v12;
      }

      while (v12 != a3);
    }

    if (v8 >= 2)
    {
      do
      {
        v14 = 0;
        v15 = *a1;
        v16 = a1;
        do
        {
          v17 = &v16[v14];
          v18 = v17 + 1;
          v19 = (2 * v14) | 1;
          v14 = 2 * v14 + 2;
          if (v14 >= v8)
          {
            v20 = *v18;
            v14 = v19;
          }

          else
          {
            v22 = v17[2];
            v21 = v17 + 2;
            v20 = v22;
            v23 = *(v21 - 1);
            v24 = v23 >= v22;
            if (v23 < v22)
            {
              v18 = v21;
            }

            else
            {
              v20 = *(v21 - 1);
            }

            if (v24)
            {
              v14 = v19;
            }
          }

          *v16 = v20;
          v16 = v18;
        }

        while (v14 <= ((v8 - 2) >> 1));
        if (v18 == --v6)
        {
          *v18 = v15;
        }

        else
        {
          *v18 = *v6;
          *v6 = v15;
          v25 = (v18 - a1 + 8) >> 3;
          v26 = v25 < 2;
          v27 = v25 - 2;
          if (!v26)
          {
            v28 = v27 >> 1;
            v29 = &a1[v28];
            v30 = *v29;
            v31 = *v18;
            if (*v29 < *v18)
            {
              do
              {
                *v18 = v30;
                v18 = v29;
                if (!v28)
                {
                  break;
                }

                v28 = (v28 - 1) >> 1;
                v29 = &a1[v28];
                v30 = *v29;
              }

              while (*v29 < v31);
              *v18 = v31;
            }
          }
        }

        v26 = v8-- <= 2;
      }

      while (!v26);
    }

    return v12;
  }

  return a3;
}

uint64_t std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,__C3DNode **>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t *a4)
{
  if (a3 >= 2)
  {
    v4 = a4 - result;
    v5 = (a3 - 2) >> 1;
    if (v5 >= (a4 - result) >> 3)
    {
      v6 = v4 >> 2;
      v7 = (v4 >> 2) + 1;
      v8 = (result + 8 * v7);
      v9 = v6 + 2;
      if (v9 >= a3)
      {
        v10 = *v8;
      }

      else
      {
        v10 = *v8;
        if (*v8 < v8[1])
        {
          v10 = v8[1];
          ++v8;
          v7 = v9;
        }
      }

      v11 = *a4;
      if (v10 >= *a4)
      {
        do
        {
          *a4 = v10;
          a4 = v8;
          if (v5 < v7)
          {
            break;
          }

          v12 = (2 * v7) | 1;
          v8 = (result + 8 * v12);
          v7 = 2 * v7 + 2;
          if (v7 >= a3)
          {
            v10 = *v8;
            v7 = v12;
          }

          else
          {
            v10 = *v8;
            if (*v8 >= v8[1])
            {
              v7 = v12;
            }

            else
            {
              v10 = v8[1];
              ++v8;
            }
          }
        }

        while (v10 >= v11);
        *a4 = v11;
      }
    }
  }

  return result;
}

BOOL _mayBePVRTC(uint64_t a1, uint64_t a2)
{
  if (C3DImageGetData(a1, a2))
  {
    return 1;
  }

  v5 = copyPathExtension(a1, v3);
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v4 = CFEqual(v5, @"pvr") || CFEqual(v6, @"pvrtc");
  CFRelease(v6);
  return v4;
}

uint64_t _loadPVRTC(uint64_t a1)
{
  v2 = kdebug_trace();
  if (!a1)
  {
    v4 = scn_default_log(v2, v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _applyCIFilter_cold_2(v4);
    }
  }

  Data = C3DImageGetData(a1, v3);
  if (Data)
  {
    v7 = Data;
    CFRetain(Data);
  }

  else
  {
    URL = C3DImageGetURL(a1, v6);
    if (!URL || (v7 = C3DCreateDataWithContentOfURL(URL, 0)) == 0)
    {
      v18 = 0;
      goto LABEL_26;
    }
  }

  if (CFDataGetLength(v7) >= 52)
  {
    BytePtr = CFDataGetBytePtr(v7);
    if (*(BytePtr + 11) == 559044176)
    {
      v9 = BytePtr;
      v10 = *(BytePtr + 4);
      if ((v10 & 0xFE) == 0x18)
      {
        v11 = *(BytePtr + 4);
        _C3DImageDeleteTextureRawDataIfNeeded(a1);
        if (*(v9 + 10))
        {
          v12 = (v10 & 0x8000) + 1;
        }

        else
        {
          v12 = v10 & 0x8000;
        }

        v36 = *(v9 + 4);
        _C3DImageCreateTextureRawData(a1, 1, v12 != 0, COERCE_DOUBLE(vrev64_s32(vcvt_f32_u32(v36))));
        TextureRawData = C3DImageGetTextureRawData(a1);
        v14 = TextureRawData;
        if (v11 == 24)
        {
          if (v12)
          {
            v21 = 35843;
          }

          else
          {
            v21 = 35841;
          }

          *(TextureRawData + 24) = v21;
          if (v12)
          {
            v16 = 164;
          }

          else
          {
            v16 = 160;
          }

          v17 = 8;
        }

        else
        {
          if (v11 != 25)
          {
            goto LABEL_35;
          }

          if (v12)
          {
            v15 = 35842;
          }

          else
          {
            v15 = 35840;
          }

          *(TextureRawData + 24) = v15;
          if (v12)
          {
            v16 = 166;
          }

          else
          {
            v16 = 162;
          }

          v17 = 4;
        }

        *(TextureRawData + 36) = v16;
        *(TextureRawData + 7) = v17;
        *(TextureRawData + 8) = 4;
LABEL_35:
        v22 = *(v9 + 5);
        *(TextureRawData + 4) = *(v9 + 6);
        v18 = 1;
        if (v22)
        {
          v35 = v7;
          v23 = 0;
          v24 = v9 + 52;
          if (v11 == 25)
          {
            v25 = 2;
          }

          else
          {
            v25 = 1;
          }

          v26 = v36.i32[0];
          v27 = v36.u32[1];
          do
          {
            v28 = *(v14 + 7);
            v29 = *(v14 + 8);
            v30 = v29 * v28;
            v31 = v27 / v28;
            v32 = v26 / v29;
            if (v31 <= 2)
            {
              v31 = 2;
            }

            if (v32 <= 2)
            {
              v32 = 2;
            }

            v33 = v32 * v31 * ((v30 << v25) >> 3);
            v34 = CFDataCreate(0, &v24[v23], v33);
            CFArrayAppendValue(*(v14 + 40), v34);
            CFRelease(v34);
            v23 += v33;
            if (v27 <= 1)
            {
              v27 = 1;
            }

            else
            {
              v27 >>= 1;
            }

            if (v26 <= 1)
            {
              v26 = 1;
            }

            else
            {
              v26 >>= 1;
            }
          }

          while (v23 < v22);
          v18 = 1;
          v7 = v35;
        }

        goto LABEL_22;
      }
    }
  }

  v18 = 0;
LABEL_22:
  CFRelease(v7);
LABEL_26:
  kdebug_trace();
  return v18;
}

double SCNMTLBufferPool::reset(SCNMTLBufferPool *this)
{
  *(this + 14) = 0;
  result = 0.0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  return result;
}

void SCNMTLBufferPool::~SCNMTLBufferPool(SCNMTLBufferPool *this)
{
  v2 = *(this + 4);
  if (v2 != *(this + 5))
  {
    do
    {

      v2 += 2;
    }

    while (v2 != *(this + 5));
    v2 = *(this + 4);
  }

  if (v2)
  {
    *(this + 5) = v2;
    operator delete(v2);
  }
}

void sub_21BFC6E90(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 32);
  if (v3)
  {
    *(v1 + 40) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

uint64_t *SCNMTLBufferPool::allocate@<X0>(uint64_t *__return_ptr a1@<X8>, SCNMTLBufferPool *this@<X0>, uint64_t a3@<X1>)
{
  result = [(SCNMTLOpenSubdivComputeEvaluator *)*this computeEvaluator];
  v7 = (a3 + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = *(this + 11);
  v9 = v8 + v7;
  if (v8 + v7 > *(this + 10))
  {
    do
    {
      v10 = *(this + 4);
      v11 = *(this + 14);
      if (v11 >= ((*(this + 5) - v10) >> 4))
      {
        v14 = 0;
        do
        {
          v14 += *(this + 1);
        }

        while (v7 > v14);
        v15 = [SCNMTLResourceManager newConstantBufferWithLength:v14 options:?];
        *(this + 8) = v15;
        v17 = *(this + 5);
        v16 = *(this + 6);
        if (v17 >= v16)
        {
          v19 = *(this + 4);
          v20 = (v17 - v19) >> 4;
          v21 = v20 + 1;
          if ((v20 + 1) >> 60)
          {
            std::string::__throw_length_error[abi:nn200100]();
          }

          v22 = v16 - v19;
          if (v22 >> 3 > v21)
          {
            v21 = v22 >> 3;
          }

          if (v22 >= 0x7FFFFFFFFFFFFFF0)
          {
            v23 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v23 = v21;
          }

          if (v23)
          {
            std::__allocate_at_least[abi:nn200100]<std::allocator<SCNMTLBufferPool::Buffer>>(this + 32, v23);
          }

          v24 = 16 * v20;
          *v24 = v15;
          *(v24 + 8) = 1;
          v18 = 16 * v20 + 16;
          v25 = *(this + 4);
          v26 = *(this + 5) - v25;
          v27 = v24 - v26;
          memcpy((v24 - v26), v25, v26);
          v28 = *(this + 4);
          *(this + 4) = v27;
          *(this + 5) = v18;
          *(this + 6) = 0;
          if (v28)
          {
            operator delete(v28);
          }
        }

        else
        {
          *v17 = v15;
          *(v17 + 8) = 1;
          v18 = v17 + 16;
        }

        *(this + 5) = v18;
        LODWORD(v11) = *(this + 14);
        v13 = *(this + 8);
      }

      else
      {
        v12 = v10 + 16 * v11;
        v13 = *v12;
        *(this + 8) = *v12;
        ++*(v12 + 8);
      }

      *(this + 14) = v11 + 1;
      *(this + 11) = 0;
      *(this + 9) = [v13 contents];
      result = [*(this + 8) length];
      *(this + 10) = result;
      v8 = *(this + 11);
      v9 = v8 + v7;
    }

    while (v8 + v7 > result);
  }

  a1[2] = v8;
  v29 = *(this + 8);
  *a1 = *(this + 9) + v8;
  a1[1] = v29;
  *(this + 11) = v9;
  return result;
}

uint64_t *SCNMTLBufferPool::allocateAndCopy@<X0>(uint64_t *__return_ptr a1@<X8>, SCNMTLBufferPool *this@<X0>, const void *a3@<X1>, size_t a4@<X2>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  SCNMTLBufferPool::allocate(a1, this, a4);
  v7 = *a1;

  return memcpy(v7, a3, a4);
}

void std::__allocate_at_least[abi:nn200100]<std::allocator<SCNMTLBufferPool::Buffer>>(uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::string::__throw_length_error[abi:nn200100]();
}

C3D::RenderPass *C3D::MBFinalBlurPass::MBFinalBlurPass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC4278;
  *(result + 30) = a4;
  return result;
}

double C3D::MBFinalBlurPass::setup(C3D::MBFinalBlurPass *this)
{
  v1 = this;
  C3D::Pass::setInputCount(this, 3u);
  C3D::Pass::setOutputCount(v1, 1u);
  *(C3D::PassDescriptor::inputAtIndex((v1 + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::inputAtIndex((v1 + 32), 1) + 8) = "VELOCITY";
  *(C3D::PassDescriptor::inputAtIndex((v1 + 32), 2) + 8) = "MB-TileMax";
  v2 = C3D::PassDescriptor::outputAtIndex((v1 + 32), 0);
  *(v2 + 8) = "COLOR";
  *(v2 + 65) = 0;
  do
  {
    v3 = v1;
    v1 = *(v1 + 1);
  }

  while (v1);
  C3D::Pass::parentColorDesc(&v5, v3);
  result = *&v5;
  *(v2 + 16) = v5;
  *(v2 + 32) = v6;
  return result;
}

void C3D::MBFinalBlurPass::compile(C3D::MBFinalBlurPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(*(this + 3) + 128);
  v5 = *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 28);
  v6 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v5) ^ ((0xC6A4A7935BD1E995 * v5) >> 47))));
  v7 = C3D::RenderGraphResourceManager::get(v4, (0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v6 ^ (v6 >> 47))) >> 47));
  *(this + 31) = v7;
  if (!v7)
  {
    operator new();
  }
}

uint64_t C3D::MBFinalBlurPass::execute(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v15 = xmmword_21C281190;
  v4 = C3D::PassDescriptor::outputAtIndex((a1 + 4), 0);
  v6 = a1[31];
  if (*(v6 + 32) == *(v4 + 16) && (v7 = C3D::PassDescriptor::outputAtIndex((a1 + 4), 0), v6 = a1[31], *(v6 + 36) == *(v7 + 18)))
  {
    v8 = v6 + 16;
  }

  else
  {
    v8 = v6 + 24;
  }

  v9 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v8 :v5) detail:"state" :v15NSRetainFct];
  if (*(v3 + 3376) != v9)
  {
    *(v3 + 3376) = v9;
    [*(v3 + 3392) setRenderPipelineState:v9];
  }

  SCNMTLRenderCommandEncoder::setVertexBytes(v3, &v15, 0x10uLL, 0);
  SCNMTLRenderCommandEncoder::setFragmentBuffer(v3, *(a1[30] + 40), *(a1[30] + 48), 0);
  v10 = C3D::Pass::inputTextureAtIndex(a1, 1);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v10, 0);
  v11 = C3D::Pass::inputTextureAtIndex(a1, 2);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v11, 1uLL);
  v12 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v12, 2uLL);
  SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3, v13);
  *(a1[31] + 32) = *(C3D::PassDescriptor::outputAtIndex((a1 + 4), 0) + 16);
  result = C3D::PassDescriptor::outputAtIndex((a1 + 4), 0);
  *(a1[31] + 36) = *(result + 18);
  return result;
}

void C3D::MBFinalBlurPassResource::~MBFinalBlurPassResource(C3D::MBFinalBlurPassResource *this)
{
  *this = &unk_282DC42E8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC42E8;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t __C3DDeformerStackGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DDeformerStackGetTypeID_typeID = result;
  return result;
}

uint64_t C3DDeformerStackCreate(uint64_t a1)
{
  if (C3DDeformerStackGetTypeID_onceToken != -1)
  {
    C3DDeformerStackCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DDeformerStackGetTypeID_typeID, 48);
  *(Instance + 16) = a1;
  v3 = *(Instance + 24);
  if (v3 != C3DNodeGetGeometry(a1, v4))
  {
    v6 = *(Instance + 24);
    if (v6)
    {
      CFRelease(v6);
      *(Instance + 24) = 0;
    }

    Geometry = C3DNodeGetGeometry(a1, v5);
    if (Geometry)
    {
      Geometry = CFRetain(Geometry);
    }

    *(Instance + 24) = Geometry;
  }

  return Instance;
}

uint64_t C3DDeformerStackCreateCopy(void *a1, uint64_t a2)
{
  if (C3DDeformerStackGetTypeID_onceToken != -1)
  {
    C3DDeformerStackCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DDeformerStackGetTypeID_typeID, 48);
  *(Instance + 16) = a2;
  v5 = *(Instance + 24);
  v6 = a1[3];
  if (v5 != v6)
  {
    if (v5)
    {
      CFRelease(v5);
      *(Instance + 24) = 0;
      v6 = a1[3];
    }

    if (v6)
    {
      v6 = CFRetain(v6);
    }

    *(Instance + 24) = v6;
  }

  v7 = *(Instance + 32);
  v8 = a1[4];
  if (v7 != v8)
  {
    if (v7)
    {
      CFRelease(*(Instance + 32));
      *(Instance + 32) = 0;
      v8 = a1[4];
    }

    if (v8)
    {
      v8 = CFRetain(v8);
    }

    *(Instance + 32) = v8;
  }

  v9 = *(Instance + 40);
  v10 = a1[5];
  if (v9 != v10)
  {
    if (v9)
    {
      CFRelease(*(Instance + 40));
      *(Instance + 40) = 0;
      v10 = a1[5];
    }

    if (v10)
    {
      v10 = CFRetain(v10);
    }

    *(Instance + 40) = v10;
  }

  v11 = *(Instance + 48);
  v12 = a1[6];
  if (v11 != v12)
  {
    if (v11)
    {
      CFRelease(*(Instance + 48));
      *(Instance + 48) = 0;
      v12 = a1[6];
    }

    if (v12)
    {
      v12 = CFRetain(v12);
    }

    *(Instance + 48) = v12;
  }

  v13 = *(Instance + 56);
  v14 = a1[7];
  if (v13 != v14)
  {
    if (v13)
    {
      CFRelease(*(Instance + 56));
      *(Instance + 56) = 0;
      v14 = a1[7];
    }

    if (v14)
    {
      v14 = CFRetain(v14);
    }

    *(Instance + 56) = v14;
  }

  return Instance;
}

BOOL C3DDeformerStackIsEmpty(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return !a1[4] && !a1[5] && !a1[6] && a1[7] == 0;
}

BOOL C3DDeformerStackWantsGPU(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  if (C3DDeformerStackIsEmpty(a1, a2))
  {
    return 0;
  }

  if (a1[4])
  {
    return 1;
  }

  v11 = a1[5];
  if (!v11)
  {
    return 1;
  }

  return C3DSkinnerGetEffectiveCalculationMode(v11, a1[3]) == 2;
}

uint64_t C3DDeformerStackAreDeformedNodesCompatibleWithInstancing(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  if (a1)
  {
    DeformerStack = C3DNodeGetDeformerStack(a1, a2);
    if (!v2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  DeformerStack = 0;
  if (a2)
  {
LABEL_3:
    v2 = C3DNodeGetDeformerStack(v2, a2);
  }

LABEL_4:
  if (!(DeformerStack | v2))
  {
    v4 = 1;
    return v4 & 1;
  }

  if (DeformerStack)
  {
    v5 = *(DeformerStack + 24);
    if (v2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v5 = 0;
    if (v2)
    {
LABEL_8:
      v6 = *(v2 + 24);
      if (v5)
      {
        goto LABEL_9;
      }

LABEL_15:
      Mesh = 0;
      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_16;
    }
  }

  v6 = 0;
  if (!v5)
  {
    goto LABEL_15;
  }

LABEL_9:
  Mesh = C3DGeometryGetMesh(v5, a2);
  if (v6)
  {
LABEL_10:
    v8 = C3DGeometryGetMesh(v6, a2);
    goto LABEL_17;
  }

LABEL_16:
  v8 = 0;
LABEL_17:
  if (Mesh != v8)
  {
LABEL_24:
    v4 = 0;
    return v4 & 1;
  }

  if (DeformerStack)
  {
    v9 = *(DeformerStack + 32);
    if (v2)
    {
LABEL_20:
      v10 = *(v2 + 32);
      goto LABEL_23;
    }
  }

  else
  {
    v9 = 0;
    if (v2)
    {
      goto LABEL_20;
    }
  }

  v10 = 0;
LABEL_23:
  if (v9 != v10)
  {
    goto LABEL_24;
  }

  if (DeformerStack)
  {
    v12 = *(DeformerStack + 40);
    if (v2)
    {
LABEL_28:
      v13 = *(v2 + 40);
      goto LABEL_31;
    }
  }

  else
  {
    v12 = 0;
    if (v2)
    {
      goto LABEL_28;
    }
  }

  v13 = 0;
LABEL_31:
  if (v12 == v13)
  {
    goto LABEL_38;
  }

  if (v12)
  {
    v14 = !C3DSkinnerHasOnlyOneJoint(v12);
    if (v13)
    {
LABEL_34:
      v15 = !C3DSkinnerHasOnlyOneJoint(v13);
      goto LABEL_37;
    }
  }

  else
  {
    v14 = 0;
    if (v13)
    {
      goto LABEL_34;
    }
  }

  v15 = 0;
LABEL_37:
  if (v14 || v15)
  {
    goto LABEL_24;
  }

LABEL_38:
  v17 = DeformerStack && (v16 = *(DeformerStack + 48)) != 0 && CFArrayGetCount(v16) > 0;
  v19 = v2 && (v18 = *(v2 + 48)) != 0 && CFArrayGetCount(v18) > 0;
  if (DeformerStack)
  {
    v20 = *(DeformerStack + 56);
    if (v20)
    {
      LOBYTE(DeformerStack) = CFArrayGetCount(v20) > 0;
    }

    else
    {
      LOBYTE(DeformerStack) = 0;
    }
  }

  v22 = v2 && (v21 = *(v2 + 56)) != 0 && CFArrayGetCount(v21) > 0;
  v4 = ((v17 || v19) | DeformerStack | v22) ^ 1;
  return v4 & 1;
}

uint64_t C3DDeformerStackGetBaseGeometry(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 24);
}

void C3DDeformerStackSetBaseGeometry(void *a1, __C3DGeometry *cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[3];
  if (v11 != cf)
  {
    if (v11)
    {
      CFRelease(v11);
      a1[3] = 0;
    }

    if (cf)
    {
      v12 = CFRetain(cf);
    }

    else
    {
      v12 = 0;
    }

    a1[3] = v12;
    v13 = a1[4];
    if (v13)
    {
      C3DMorpherSetBaseGeometry(v13, cf);
    }

    v14 = a1[5];
    if (v14)
    {
      C3DSkinnerInputGeometryDidChange(v14);
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance(v14, cf);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t C3DDeformerStackGetMorpher(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 32);
}

void C3DDeformerStackSetMorpher(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  OverrideMaterial = a1[4];
  if (OverrideMaterial != cf)
  {
    if (OverrideMaterial)
    {
      CFRelease(OverrideMaterial);
      a1[4] = 0;
    }

    if (cf)
    {
      a1[4] = CFRetain(cf);
      C3DMorpherSetBaseGeometry(cf, a1[3]);
    }

    else
    {
      a1[4] = 0;
    }

    v12 = a1[5];
    if (v12)
    {
      C3DSkinnerInputGeometryDidChange(a1[5]);
      OverrideMaterial = C3DGeometryGetOverrideMaterial(v12);
      if (OverrideMaterial)
      {
        OverrideMaterial = C3DSkinSetInfluencingMorpher(OverrideMaterial, cf);
      }
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance(OverrideMaterial, cf);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t C3DDeformerStackGetSkinner(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 40);
}

void C3DDeformerStackSetSkinner(void *a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v4, cf, v5, v6, v7, v8, v9, v10);
    }
  }

  OverrideMaterial = a1[5];
  if (OverrideMaterial != cf)
  {
    if (OverrideMaterial)
    {
      CFRelease(OverrideMaterial);
      a1[5] = 0;
    }

    if (cf)
    {
      a1[5] = CFRetain(cf);
      C3DSkinnerInputGeometryDidChange(cf);
      v12 = a1[4];
      if (v12)
      {
        OverrideMaterial = C3DGeometryGetOverrideMaterial(cf);
        if (OverrideMaterial)
        {
          OverrideMaterial = C3DSkinSetInfluencingMorpher(OverrideMaterial, v12);
        }
      }
    }

    else
    {
      a1[5] = 0;
    }

    SharedInstance = C3DNotificationCenterGetSharedInstance(OverrideMaterial, cf);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationDeformerStackDidChange", a1, 0, 1u);
  }
}

uint64_t C3DDeformerStackGetPostMorphingDeformers(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

void C3DDeformerStackSetPostMorphingDeformers(void *a1, const __CFArray *cf)
{
  v2 = cf;
  if (cf && !CFArrayGetCount(cf))
  {
    v2 = 0;
  }

  v4 = a1[6];
  if (v4 != v2)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[6] = 0;
    }

    if (v2)
    {
      v5 = CFRetain(v2);
    }

    else
    {
      v5 = 0;
    }

    a1[6] = v5;
    SharedInstance = C3DNotificationCenterGetSharedInstance(v5, cf);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationDeformerStackDidChange", a1, 0, 1u);
    v8 = a1[2];

    C3DNodeBoundingBoxDidUpdate(v8, v7);
  }
}

uint64_t C3DDeformerStackGetPostSkinningDeformers(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      _C3DStackCFFinalize_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

void C3DDeformerStackSetPostSkinningDeformers(void *a1, const __CFArray *cf)
{
  v2 = cf;
  if (cf && !CFArrayGetCount(cf))
  {
    v2 = 0;
  }

  v4 = a1[7];
  if (v4 != v2)
  {
    if (v4)
    {
      CFRelease(v4);
      a1[7] = 0;
    }

    if (v2)
    {
      v5 = CFRetain(v2);
    }

    else
    {
      v5 = 0;
    }

    a1[7] = v5;
    SharedInstance = C3DNotificationCenterGetSharedInstance(v5, cf);
    C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationDeformerStackDidChange", a1, 0, 1u);
    v8 = a1[2];

    C3DNodeBoundingBoxDidUpdate(v8, v7);
  }
}

void C3DDeformerStackEnumerateDependencyStacks(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __C3DDeformerStackEnumerateDependencyStacks_block_invoke;
  v7[3] = &unk_2782FD7A8;
  v7[4] = a2;
  C3DCFArrayApplyBlock(v4, v7);
  v5 = *(a1 + 56);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __C3DDeformerStackEnumerateDependencyStacks_block_invoke_2;
  v6[3] = &unk_2782FD7A8;
  v6[4] = a2;
  C3DCFArrayApplyBlock(v5, v6);
}

uint64_t __C3DDeformerStackEnumerateDependencyStacks_block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ____C3DDeformerStackEnumerateDependencyStacks_block_invoke;
  v5[3] = &unk_2782FD7F8;
  v5[4] = v3;
  v6 = 0;
  return [a3 _enumerateDependencyNodesUsingBlock:v5];
}

uint64_t __C3DDeformerStackEnumerateDependencyStacks_block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = ____C3DDeformerStackEnumerateDependencyStacks_block_invoke;
  v5[3] = &unk_2782FD7F8;
  v5[4] = v3;
  v6 = 0;
  return [a3 _enumerateDependencyNodesUsingBlock:v5];
}

uint64_t C3DDeformerStackGetLocalBoundingBox(void *a1, float32x4_t *a2)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v4 = a1[7];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __C3DDeformerStackGetLocalBoundingBox_block_invoke;
  v10[3] = &unk_2782FD7D0;
  v10[4] = &v11;
  v10[5] = a2;
  C3DCFArrayApplyBlock(v4, v10);
  if ((v12[3] & 1) == 0)
  {
    v5 = a1[5];
    if (!v5)
    {
      v8 = a1[6];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __C3DDeformerStackGetLocalBoundingBox_block_invoke_2;
      v9[3] = &unk_2782FD7D0;
      v9[4] = &v11;
      v9[5] = a2;
      C3DCFArrayApplyBlock(v8, v9);
      v6 = *(v12 + 24);
      goto LABEL_5;
    }

    C3DSkinnerGetBoundingBox(v5, a1[2], a2);
  }

  v6 = 1;
LABEL_5:
  _Block_object_dispose(&v11, 8);
  return v6 & 1;
}

void *__C3DDeformerStackGetLocalBoundingBox_block_invoke(void *result, uint64_t a2, void *a3)
{
  if ((*(*(result[4] + 8) + 24) & 1) == 0)
  {
    v3 = result;
    result = [a3 _getDeformedMeshBoundingBox:result[5]];
    *(*(v3[4] + 8) + 24) = result;
  }

  return result;
}

void *__C3DDeformerStackGetLocalBoundingBox_block_invoke_2(void *result, uint64_t a2, void *a3)
{
  if ((*(*(result[4] + 8) + 24) & 1) == 0)
  {
    v3 = result;
    result = [a3 _getDeformedMeshBoundingBox:result[5]];
    *(*(v3[4] + 8) + 24) = result;
  }

  return result;
}

void _C3DDeformerStackCFFinalize(void *a1, uint64_t a2)
{
  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterPostNotification(SharedInstance, @"kC3DNotificationDeformerStackWillDie", a1, 0, 1u);
  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[5];
  if (v6)
  {
    CFRelease(v6);
    a1[5] = 0;
  }

  v7 = a1[6];
  if (v7)
  {
    CFRelease(v7);
    a1[6] = 0;
  }

  v8 = a1[7];
  if (v8)
  {
    CFRelease(v8);
    a1[7] = 0;
  }
}

__CFString *_C3DDeformerStackCFCopyDebugDescription(void *a1, uint64_t a2)
{
  IsEmpty = C3DDeformerStackIsEmpty(a1, a2);
  v4 = *MEMORY[0x277CBECE8];
  if (IsEmpty)
  {
    return CFStringCreateWithFormat(v4, 0, @"<C3DDeformerStack %p>", a1);
  }

  Mutable = CFStringCreateMutable(v4, 0);
  CFStringAppendFormat(Mutable, 0, @"<C3DDeformerStack %p (geometry: %p)\n", a1, a1[3]);
  if (a1[4])
  {
    CFStringAppendFormat(Mutable, 0, @"  morpher: %p\n", a1[4]);
  }

  v7 = a1[6];
  if (v7)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = ___C3DDeformerStackCFCopyDebugDescription_block_invoke;
    v10[3] = &__block_descriptor_40_e13_v24__0q8r_v16l;
    v10[4] = Mutable;
    C3DCFArrayApplyBlock(v7, v10);
  }

  if (a1[5])
  {
    CFStringAppendFormat(Mutable, 0, @"  skinner: %p\n", a1[5]);
  }

  v8 = a1[7];
  if (v8)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___C3DDeformerStackCFCopyDebugDescription_block_invoke_2;
    v9[3] = &__block_descriptor_40_e13_v24__0q8r_v16l;
    v9[4] = Mutable;
    C3DCFArrayApplyBlock(v8, v9);
  }

  CFStringAppend(Mutable, @">");
  return Mutable;
}

void C3D::BloomDownSamplePass::BloomDownSamplePass(C3D::CustomPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::CustomPass::CustomPass(a1, a2, a3, 0);
  *v5 = &unk_282DC4328;
  v5[16] = a4;
}

uint64_t C3D::BloomDownSamplePass::setup(C3D::BloomDownSamplePass *this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 66) |= 4u;
  v3 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v3 + 66) |= 0x80u;
  result = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(result + 66) = *(result + 66) & 0xFFFC | 1;
  return result;
}

void C3D::BloomDownSamplePass::compile(C3D::BloomDownSamplePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  v4 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v4) frameworkLibrary];
  v5 = (*(*this + 64))(this);
  v6 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v5);
  *(this + 17) = v6;
  if (!v6)
  {
    operator new();
  }
}

void C3D::BloomDownSamplePass::execute(C3D::Pass *a1, void **a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(a1 + 2), a2);
  v5 = [(SCNMTLRenderContext *)RenderContext frameConstantBufferPool];
  StackAllocator = C3DEngineContextGetStackAllocator(*(a1 + 2), v6);
  Zero = C3DStackAllocatorAllocateZero(StackAllocator, 0xD70uLL);
  v20 = objc_alloc_init(MEMORY[0x277CD6F50]);
  v9 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v10 = [v9 newTextureViewWithPixelFormat:objc_msgSend(v9 textureType:"pixelFormat") levels:objc_msgSend(v9 slices:"textureType"), 0, 1, 0, 1];
  v11 = v10;
  if (*(*(a1 + 16) + 24) < 2)
  {
    v14 = v10;
  }

  else
  {
    v12 = 0;
    v13 = 0;
    do
    {
      v14 = [v9 newTextureViewWithPixelFormat:objc_msgSend(v9 textureType:"pixelFormat") levels:objc_msgSend(v9 slices:"textureType"), (v12 + 1), 1, 0, 1];
      [objc_msgSend(objc_msgSend(v20 "colorAttachments")];
      [objc_msgSend(objc_msgSend(v20 "colorAttachments")];
      v15 = *a2;
      bzero(Zero, 0xD70uLL);
      *(Zero + 16) = 1;
      Zero[72] = 1;
      *(Zero + 423) = v15;
      *(Zero + 424) = [v15 renderCommandEncoderWithDescriptor:v20];
      *(Zero + 425) = v5;
      *(Zero + 8) = 0u;
      *(Zero + 24) = 0u;
      v17 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 17) + 16 :v16) detail:"state" :?NSRetainFct];
      if (*(Zero + 422) != v17)
      {
        *(Zero + 422) = v17;
        [*(Zero + 424) setRenderPipelineState:v17];
      }

      SCNMTLRenderCommandEncoder::setFragmentTexture(Zero, v11, 0);
      SCNMTLRenderCommandEncoder::drawFullScreenTriangle(Zero, v18);
      SCNMTLRenderCommandEncoder::endEncoding(Zero, v19);

      v12 = ++v13;
      v11 = v14;
    }

    while (*(*(a1 + 16) + 24) - 1 > v13);
  }
}

void C3D::BloomDownSamplePassResource::~BloomDownSamplePassResource(C3D::BloomDownSamplePassResource *this)
{
  *this = &unk_282DC4398;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC4398;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void __StoreTexture(_BOOL8 URL_cold_1, void *key, uint64_t a3, const void *a4)
{
  v7 = URL_cold_1;
  if (!URL_cold_1 && (v8 = scn_default_log(0, key), URL_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v8, key, v9, v10, v11, v12, v13, v14);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(URL_cold_1, key);
  URL_cold_1 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (URL_cold_1)
  {
    C3DImageGetURL_cold_1(v15, key, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (!a3 && (v22 = scn_default_log(URL_cold_1, key), URL_cold_1 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT)))
  {
    C3DTextureSamplerSetAnisotropy_cold_1(v22, key, v23, v24, v25, v26, v27, v28);
    if (a4)
    {
      goto LABEL_11;
    }
  }

  else if (a4)
  {
    goto LABEL_11;
  }

  v29 = scn_default_log(URL_cold_1, key);
  if (os_log_type_enabled(v29, OS_LOG_TYPE_FAULT))
  {
    C3DRendererContextApplyTextureSampler_cold_1(v29, v30, v31, v32, v33, v34, v35, v36);
  }

LABEL_11:
  Value = CFDictionaryGetValue(*(v7 + 16), key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(v7 + 16), key, Value);
    CFRelease(Value);
    if (a3)
    {
      goto LABEL_13;
    }

LABEL_15:
    v42 = 0;
    goto LABEL_16;
  }

  if (!a3)
  {
    goto LABEL_15;
  }

LABEL_13:
  v39 = C3DTextureSamplerUseMipmaps(a3, v37);
  ImageType = C3DImageGetImageType(key, v40);
  v42 = ((2 * C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(ImageType)) | v39);
LABEL_16:
  CFDictionarySetValue(Value, v42, a4);
}

uint64_t _C3DResourceManagerCFFinalize(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(LocalCenter, a1, @"kC3DNotificationMeshSourceWillDie", 0);
  v3 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v3, a1, @"kC3DNotificationMeshElementWillDie", 0);
  v4 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v4, a1, @"kC3DNotificationImageWillDie", 0);
  v5 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v5, a1, @"kC3DNotificationImageProxyWillDie", 0);
  v6 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v6, a1, @"kC3DNotificationProgramWillDie", 0);
  v7 = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterRemoveObserver(v7, a1, @"kC3DNotificationMeshWillDie", 0);
  C3DResourceManagerFlush(a1);
  pthread_mutex_lock((a1 + 88));
  v8 = *(a1 + 40);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 40) = 0;
  }

  v9 = *(a1 + 48);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 48) = 0;
  }

  v10 = *(a1 + 56);
  if (v10)
  {
    CFRelease(v10);
    *(a1 + 56) = 0;
  }

  v11 = *(a1 + 32);
  if (v11)
  {
    CFRelease(v11);
    *(a1 + 32) = 0;
  }

  v12 = *(a1 + 16);
  if (v12)
  {
    CFRelease(v12);
    *(a1 + 16) = 0;
  }

  v13 = *(a1 + 80);
  if (v13)
  {
    CFRelease(v13);
    *(a1 + 80) = 0;
  }

  v14 = *(a1 + 24);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 24) = 0;
  }

  v15 = *(a1 + 224);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 224) = 0;
  }

  v16 = *(a1 + 232);
  if (v16)
  {
    CFRelease(v16);
    *(a1 + 232) = 0;
  }

  v17 = *(a1 + 64);
  if (v17)
  {
    CFRelease(v17);
    *(a1 + 64) = 0;
  }

  dispatch_resume(*(a1 + 216));
  dispatch_release(*(a1 + 216));
  pthread_mutex_unlock((a1 + 88));
  pthread_mutex_destroy((a1 + 88));

  return pthread_mutex_destroy((a1 + 152));
}

CFStringRef _C3DResourceManagerCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DResourceManager>");
}

CFStringRef _C3DResourceManagerCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DResourceManager>");
}

uint64_t __C3DResourceManagerGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DResourceManagerGetTypeID_typeID = result;
  return result;
}

uint64_t C3DResourceManagerCreate()
{
  v14 = *MEMORY[0x277D85DE8];
  if (C3DResourceManagerGetTypeID_onceToken != -1)
  {
    C3DResourceManagerCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DResourceManagerGetTypeID_typeID, 224);
  if (Instance)
  {
    v1 = *MEMORY[0x277CBECE8];
    v2 = MEMORY[0x277CBF150];
    *(Instance + 16) = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    *(Instance + 32) = CFDictionaryCreateMutable(v1, 0, 0, v2);
    Mutable = CFDictionaryCreateMutable(v1, 0, 0, v2);
    *(Instance + 24) = Mutable;
    *(Instance + 72) = 0;
    *(Instance + 80) = C3DListCreate(Mutable);
    *(Instance + 40) = CFDictionaryCreateMutable(v1, 0, 0, v2);
    *(Instance + 48) = CFDictionaryCreateMutable(v1, 0, 0, v2);
    *(Instance + 56) = CFDictionaryCreateMutable(v1, 0, 0, v2);
    v4 = MEMORY[0x277CBF138];
    *(Instance + 64) = CFDictionaryCreateMutable(v1, 0, MEMORY[0x277CBF138], v2);
    v13.__sig = 0;
    *v13.__opaque = 0;
    pthread_mutexattr_init(&v13);
    pthread_mutexattr_settype(&v13, 2);
    pthread_mutex_init((Instance + 88), &v13);
    pthread_mutex_init((Instance + 152), &v13);
    pthread_mutexattr_destroy(&v13);
    v5 = dispatch_queue_create("com.apple.scenekit.resourceManagerDeletionQueue", 0);
    *(Instance + 216) = v5;
    dispatch_suspend(v5);
    *(Instance + 224) = CFDictionaryCreateMutable(v1, 0, v4, v2);
    *(Instance + 232) = CFArrayCreateMutable(v1, 0, MEMORY[0x277CBF128]);
    LocalCenter = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(LocalCenter, Instance, __MeshSourceWillDie, @"kC3DNotificationMeshSourceWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v7 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v7, Instance, __MeshElementWillDie, @"kC3DNotificationMeshElementWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v8 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v8, Instance, __ImageWillDie, @"kC3DNotificationImageWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v9 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v9, Instance, __ImageProxyWillDie, @"kC3DNotificationImageProxyWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v10 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v10, Instance, __ProgramWillDie, @"kC3DNotificationProgramWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
    v11 = CFNotificationCenterGetLocalCenter();
    CFNotificationCenterAddObserver(v11, Instance, __MeshWillDie, @"kC3DNotificationMeshWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  }

  return Instance;
}

uint64_t __MeshSourceWillDie(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = C3DGenericSourceIsPrimary(a4, a2);
  if (result)
  {
    result = C3DMeshSourceGetData();
    if (result)
    {
      v6 = result;
      result = CFDataGetLength(result);
      if (result)
      {

        return __EnqueueCommand(a2, @"kResourceManagerPendingMeshSourceRemoval", v6);
      }
    }
  }

  return result;
}

const __CFDictionary *__ResourceManagerGetTexture(_BOOL8 a1, void *key, const void *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, key), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, key);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DImageGetURL_cold_1(v13, key, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (a3)
  {
    v20 = C3DTextureSamplerUseMipmaps(a3, key);
    ImageType = C3DImageGetImageType(key, v21);
    a3 = ((2 * C3DEngineContextInferTextureTypeForImageTypeAndTextureSampler(ImageType)) | v20);
  }

  result = CFDictionaryGetValue(*(v5 + 24), key);
  if (!result)
  {
    result = CFDictionaryGetValue(*(v5 + 16), key);
    if (result)
    {
      return CFDictionaryGetValue(result, a3);
    }
  }

  return result;
}

void __ResourceManagerDeleteTexture(uint64_t a1, const void *a2, const void *a3)
{
  Value = CFDictionaryGetValue(*(a1 + 24), a2);
  if (Value || (Value = CFDictionaryGetValue(*(a1 + 16), a2)) != 0 && (Value = CFDictionaryGetValue(Value, a3)) != 0)
  {
    v7 = Value;
    Library = C3DSceneSourceGetLibrary(Value);
    if (Library)
    {
      v10 = Library;
      AnyRendererContext = __GetAnyRendererContext(a1);
      if (!AnyRendererContext)
      {
        v13 = scn_default_log(0, v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          C3DEngineContextRenderScene_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
        }
      }

      C3DRendererContextDeleteTexture(AnyRendererContext, v7);
      Size = C3DTextureGetSize(v7, v21);
      if (C3DTextureIsAttachment(v7))
      {
        v22 = *(a1 + 24);
        v23 = v10;
      }

      else
      {
        v27 = CFDictionaryGetValue(*(a1 + 16), v10);
        *(a1 + 76) -= vcvts_n_u32_f32(vmul_lane_f32(*&Size, *&Size, 1).f32[0], 2uLL);
        C3DListRemoveLinkableObject(*(a1 + 80), v7);
        if (!v27)
        {
          v30 = scn_default_log(v28, v29);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            __ResourceManagerDeleteTexture_cold_2();
          }

          return;
        }

        v22 = v27;
        v23 = a3;
      }

      CFDictionaryRemoveValue(v22, v23);
      return;
    }

    v26 = scn_default_log(0, v9);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      __ResourceManagerDeleteTexture_cold_3();
    }
  }

  else
  {
    v25 = scn_default_log(Value, v24);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      __ResourceManagerDeleteTexture_cold_4();
    }
  }
}

int32x2_t *C3DResourceManagerMakeImageResident(_BOOL8 URL_cold_1, void *key, const void *Default, float32x2_t *a4)
{
  v7 = URL_cold_1;
  if (!URL_cold_1 && (v8 = scn_default_log(0, key), URL_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v8, key, v9, v10, v11, v12, v13, v14);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(URL_cold_1, key);
  URL_cold_1 = os_log_type_enabled(v15, OS_LOG_TYPE_FAULT);
  if (URL_cold_1)
  {
    C3DImageGetURL_cold_1(v15, key, v16, v17, v18, v19, v20, v21);
  }

LABEL_6:
  if (a4 || (v22 = scn_default_log(URL_cold_1, key), !(URL_cold_1 = os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))))
  {
    if (Default)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  C3DEngineContextRenderScene_cold_2(v22, key, v23, v24, v25, v26, v27, v28);
  if (!Default)
  {
LABEL_9:
    Default = C3DTextureSamplerGetDefault(URL_cold_1, key);
  }

LABEL_10:
  Texture = __ResourceManagerGetTexture(v7, key, Default);
  if (!Texture)
  {
    if (C3DImageIsCatalogTexture(key))
    {
      CatalogTextureName = C3DImageGetCatalogTextureName(key, v31);
      v48 = 0;
      v33 = [MEMORY[0x277CCAEF0] textureWithName:CatalogTextureName scaleFactor:SCNGetResourceBundle() bundle:MEMORY[0x277CBEC10] options:&v48 error:1.0];
      if (v33)
      {
        v35 = v33;
        TextureWithImage = C3DTextureCreate(v33, v34);
        v47 = [v35 width];
        v36 = [v35 height];
        *&v37 = v47;
        *(&v37 + 1) = v36;
        TextureWithImage[8] = v37;
        C3DTextureSetID(TextureWithImage, [v35 name], objc_msgSend(v35, "target"));
        goto LABEL_20;
      }

      v39 = scn_default_log(0, v34);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        C3DResourceManagerMakeImageResident_cold_4(CatalogTextureName, &v48, v39);
      }
    }

    if (!C3DImageIsCubeMap(key, v31))
    {
      Size = C3DImageGetSize(key, v40);
      TextureWithImage = 0;
      if (*&Size == 0.0 || *(&Size + 1) == 0.0)
      {
        return TextureWithImage;
      }

      v45 = *(v7 + 72);
      if (v45)
      {
        v46 = vcvts_n_u32_f32(*&Size * *(&Size + 1), 2uLL);
        if (v45 >= v46 && *(v7 + 76) + v46 > v45)
        {
            ;
          }
        }
      }
    }

    TextureWithImage = C3DRendererContextCreateTextureWithImage(a4, key, Default);
    if (!TextureWithImage)
    {
      return TextureWithImage;
    }

LABEL_20:
    TextureWithImage[5] = key;
    v41 = C3DTextureGetSize(TextureWithImage, v38);
    *(v7 + 76) += vcvts_n_u32_f32(vmul_lane_f32(*&v41, *&v41, 1).f32[0], 2uLL);
    C3DListAddLinkableObjectFirst(*(v7 + 80), TextureWithImage);
    __StoreTexture(v7, key, Default, TextureWithImage);
    C3DImageReleaseBitmapCache(key, v42);
    CFRelease(TextureWithImage);
    return TextureWithImage;
  }

  TextureWithImage = Texture;
  if ((C3DTextureIsAttachment(Texture) & 1) == 0)
  {
    C3DListMoveLinkableObjectFirst(*(v7 + 80), TextureWithImage);
  }

  return TextureWithImage;
}

BOOL __ResourceManagerIsImageResident(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      return CFDictionaryContainsKey(*(v3 + 16), key) || CFDictionaryContainsKey(*(v3 + 24), key) != 0;
    }
  }

  else if (key)
  {
    return CFDictionaryContainsKey(*(v3 + 16), key) || CFDictionaryContainsKey(*(v3 + 24), key) != 0;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DImageGetURL_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

  return CFDictionaryContainsKey(*(v3 + 16), key) || CFDictionaryContainsKey(*(v3 + 24), key) != 0;
}

void __ResourceManagerRemoveResidentImage(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DImageGetURL_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(v3 + 16), key);
  if (Value)
  {
    v20 = Value;
    Count = CFDictionaryGetCount(Value);
    if (Count >= 1)
    {
      v22 = Count;
      v23 = C3DMalloc(8 * Count);
      CFDictionaryGetKeysAndValues(v20, v23, 0);
      for (i = 0; i != v22; ++i)
      {
        __ResourceManagerDeleteTexture(v3, key, v23[i]);
      }

      free(v23);
    }

    CFDictionaryRemoveValue(*(v3 + 16), key);
  }

  if (CFDictionaryGetValue(*(v3 + 24), key))
  {
    __ResourceManagerDeleteTexture(v3, key, 0);
  }
}

void *C3DResourceManagerMakeImageProxyResident(_BOOL8 ImageProxyResident_cold_2, void *key, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = ImageProxyResident_cold_2;
  if (!ImageProxyResident_cold_2 && (v10 = scn_default_log(0, key), ImageProxyResident_cold_2 = os_log_type_enabled(v10, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v10, key, v11, v12, v13, v14, v15, v16);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v17 = scn_default_log(ImageProxyResident_cold_2, key);
  ImageProxyResident_cold_2 = os_log_type_enabled(v17, OS_LOG_TYPE_FAULT);
  if (ImageProxyResident_cold_2)
  {
    C3DResourceManagerMakeImageProxyResident_cold_2(v17, key, v18, v19, v20, v21, v22, v23);
  }

LABEL_6:
  if (!a4)
  {
    v24 = scn_default_log(ImageProxyResident_cold_2, key);
    if (os_log_type_enabled(v24, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v24, v25, v26, v27, v28, v29, v30, v31);
    }
  }

  Value = CFDictionaryGetValue(*(v9 + 32), key);
  if (!Value)
  {
    Value = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
    CFDictionarySetValue(*(v9 + 32), key, Value);
    CFRelease(Value);
  }

  v34 = C3DTextureSamplerGetMipFilter(a3, v32) != 0;
  v35 = CFDictionaryGetValue(Value, v34);
  if (!v35)
  {
    result = C3DImageProxyCreateTextureProxy(key, a3, a5);
    if (!result)
    {
      return result;
    }

    v35 = result;
    result[5] = key;
    CFDictionaryAddValue(Value, v34, result);
    CFRelease(v35);
  }

  return C3DTextureProxyGetOpenGLTexture(v35, a5, a3);
}

void __ResourceManagerRemoveResidentImageProxy(_BOOL8 a1, void *key)
{
  v3 = a1;
  if (!a1 && (v4 = scn_default_log(0, key), a1 = os_log_type_enabled(v4, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v4, key, v5, v6, v7, v8, v9, v10);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v11 = scn_default_log(a1, key);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
  {
    C3DImageGetURL_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
  }

LABEL_6:
  Value = CFDictionaryGetValue(v3[4], key);
  if (Value)
  {
    CFDictionaryApplyFunction(Value, __deleteTextureProxies, v3);
    CFDictionaryRemoveValue(v3[4], key);
  }
}

const void *C3DResourceManagerMakeMeshSourceResident(_BOOL8 a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, a2), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
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
    C3DMeshSourceCreateWithAccessor_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  Data = C3DMeshSourceGetData();
  if (!Data)
  {
    return 0;
  }

  v22 = Data;
  Value = CFDictionaryGetValue(*(v5 + 40), Data);
  if (!Value)
  {
    Value = C3DRendererContextCreateBufferObjectForMeshSource(a3, a2);
    CFDictionarySetValue(*(v5 + 40), v22, Value);
    CFRelease(Value);
  }

  return Value;
}

const void *C3DResourceManagerMakeMeshElementResident(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SharedMeshElement = C3DMeshElementGetSharedMeshElement(a2);
  v7 = SharedMeshElement;
  if (!a1 && (v8 = scn_default_log(SharedMeshElement, v6), SharedMeshElement = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT), SharedMeshElement))
  {
    __StoreTexture_cold_1(v8, v6, v9, v10, v11, v12, v13, v14);
    if (v7)
    {
      goto LABEL_6;
    }
  }

  else if (v7)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(SharedMeshElement, v6);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DResourceManagerMakeMeshElementResident_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(a1 + 48), v7);
  if (!Value)
  {
    Value = C3DRendererContextCreateBufferObjectForMeshElement(a3, v7);
    CFDictionarySetValue(*(a1 + 48), v7, Value);
    CFRelease(Value);
  }

  return Value;
}

void __ResourceManagerRemoveResidentMeshElement(uint64_t a1, void *key, _DWORD *a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, key);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __StoreTexture_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  Value = CFDictionaryGetValue(*(a1 + 48), key);
  if (Value)
  {
    C3DRendererContextDeleteBufferObject(a3, Value);
    if (CFDictionaryContainsKey(*(a1 + 48), key))
    {
      CFDictionaryRemoveValue(*(a1 + 48), key);
    }
  }
}

void C3DResourceManagerSetGLSLProgramObjectForSourceHash(uint64_t a1, CFTypeRef cf, void *a3)
{
  a3[15] = cf;
  CFRetain(cf);
  v6 = *(a1 + 64);

  CFDictionarySetValue(v6, cf, a3);
}

void *C3DResourceManagerMakeProgramResident(_BOOL8 a1, void *key, _BOOL8 a3, uint64_t a4)
{
  v7 = a1;
  if (!a1 && (v8 = scn_default_log(0, key), a1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v8, key, v9, v10, v11, v12, v13, v14);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v15 = scn_default_log(a1, key);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
  {
    C3DResourceManagerMakeProgramResident_cold_2(v15, v16, v17, v18, v19, v20, v21, v22);
  }

LABEL_6:
  Value = CFDictionaryGetValue(*(v7 + 56), key);
  if (!Value)
  {
    ProgramObjectForProgram = C3DRendererContextCreateProgramObjectForProgram(a3, v7, key, a4);
    if (ProgramObjectForProgram)
    {
      Value = ProgramObjectForProgram;
      CFDictionarySetValue(*(v7 + 56), key, ProgramObjectForProgram);
      CFRelease(Value);
      Value[5] = key;
    }

    else
    {
      v26 = scn_default_log(0, v25);
      v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
      if (v27)
      {
        C3DResourceManagerMakeProgramResident_cold_3();
      }

      DefaultProgram = C3DFXGLSLProgramGetDefaultProgram(v27, v28);
      Value = C3DRendererContextCreateProgramObjectForProgram(a3, v7, DefaultProgram, 0);
      Value[5] = 0;
      CFDictionarySetValue(*(v7 + 56), key, Value);
      CFRelease(Value);
    }
  }

  return Value;
}

void __ResourceManagerRemoveResidentProgram(_BOOL8 a1, void *key, uint64_t a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, key), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (a3)
    {
      goto LABEL_6;
    }
  }

  else if (a3)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, key);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
  {
    C3DEngineContextRenderScene_cold_2(v13, v14, v15, v16, v17, v18, v19, v20);
  }

LABEL_6:
  if (key)
  {
    Value = CFDictionaryGetValue(*(v5 + 56), key);
    if (Value)
    {
      v22 = Value;
      C3DFXGLSLProgramObjectDetachOfProgram(Value);
      CFDictionaryRemoveValue(*(v5 + 56), key);
      if (!*(v22 + 16))
      {
        v23[0] = MEMORY[0x277D85DD0];
        v23[1] = 3221225472;
        v23[2] = ____ResourceManagerRemoveResidentProgramObject_block_invoke;
        v23[3] = &__block_descriptor_48_e5_v8__0l;
        v23[4] = a3;
        v23[5] = v22;
        C3DRendererContextExecuteOnContext(a3, v23);
        CFDictionaryRemoveValue(*(v5 + 64), v22[15]);
      }
    }
  }
}

void __ResourceManagerReleaseResidentVRAMResource(_BOOL8 a1, CFTypeRef cf, _DWORD *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, cf), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v6, cf, v7, v8, v9, v10, v11, v12);
    if (cf)
    {
      goto LABEL_6;
    }
  }

  else if (cf)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, cf);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    __ResourceManagerReleaseResidentVRAMResource_cold_2(v13, cf, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(a1, cf);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  v28 = CFGetTypeID(cf);
  TypeID = C3DBufferObjectGetTypeID(v28, v29);
  if (v28 == TypeID)
  {
    if (C3DBufferObjectGetTarget(cf, v31))
    {
      if (C3DBufferObjectGetTarget(cf, v32) == 1)
      {
        Library = C3DSceneSourceGetLibrary(cf);
        __ResourceManagerRemoveResidentMeshElement(v5, Library, a3);
      }
    }

    else
    {
      v40 = C3DSceneSourceGetLibrary(cf);
      __ResourceManagerRemoveResidentMeshSourceData(v5, v40, a3);
    }
  }

  else
  {
    v34 = C3DTextureGetTypeID(TypeID, v31);
    if (v28 == v34)
    {
      v36 = C3DSceneSourceGetLibrary(cf);
      __ResourceManagerRemoveResidentImage(v5, v36);
    }

    else
    {
      v37 = C3DFXGLSLProgramObjectGetTypeID(v34, v35);
      if (v28 == v37)
      {
        v39 = C3DSceneSourceGetLibrary(cf);
        __ResourceManagerRemoveResidentProgram(v5, v39, a3);
      }

      else if (v28 == C3DImageProxyGetTypeID(v37, v38))
      {
        v41 = C3DSceneSourceGetLibrary(cf);
        __ResourceManagerRemoveResidentImageProxy(v5, v41);
      }
    }
  }
}

void C3DResourceManagerRemoveAllImages(CFDictionaryRef *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __StoreTexture_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a1[2]);
  CFDictionaryApplyFunction(Copy, __RemoveImageFromDic, a1);
  CFRelease(Copy);
}

void __RemoveImageFromDic(void *key, uint64_t a2, _BOOL8 a3)
{
  if (key)
  {

    __ResourceManagerRemoveResidentImage(a3, key);
  }

  else
  {
    v4 = scn_default_log(key, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      _C3DAnimationManagerGetAnimationNodeForKey_cold_3(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }
}

void C3DResourceManagerRemoveAllMeshSources(void *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __StoreTexture_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[5];
  if (v11)
  {
    Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], v11);
    CFDictionaryApplyFunction(Copy, __RemoveVRAMResourceFromDic, a1);
    CFRelease(Copy);
  }
}

void C3DResourceManagerRemoveAllMeshElements(CFDictionaryRef *a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __StoreTexture_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  v12 = a1[6];
  if (v12)
  {
    if (CFDictionaryGetCount(v12) >= 1)
    {
      C3DRendererContextBindMeshElement(a2, a1, 0);
      Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a1[6]);
      CFDictionaryApplyFunction(Copy, __RemoveVRAMResourceFromDic, a1);
      CFRelease(Copy);
    }
  }
}

void C3DResourceManagerRemoveAllPrograms(CFDictionaryRef *a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __StoreTexture_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  v11 = a1[7];
  if (v11)
  {
    Count = CFDictionaryGetCount(v11);
    v13 = MEMORY[0x277CBECE8];
    if (Count >= 1)
    {
      Copy = CFDictionaryCreateCopy(*MEMORY[0x277CBECE8], a1[7]);
      CFDictionaryApplyFunction(Copy, __RemoveVRAMResourceFromDic, a1);
      CFRelease(Copy);
    }

    if (CFDictionaryGetCount(a1[7]) >= 1)
    {
      v15 = CFDictionaryCreateCopy(*v13, a1[8]);
      CFDictionaryApplyFunction(v15, __RemoveVRAMResourceFromDic, a1);
      CFRelease(v15);
    }
  }
}

void C3DResourceManagerRemoveAllResources(CFDictionaryRef *a1, uint64_t a2)
{
  context[2] = *MEMORY[0x277D85DE8];
  C3DResourceManagerFlush(a1);
  C3DResourceManagerRemoveAllImages(a1, v4);
  C3DResourceManagerRemoveAllMeshElements(a1, a2);
  C3DResourceManagerRemoveAllMeshSources(a1, v5);
  C3DResourceManagerRemoveAllPrograms(a1, v6);
  context[0] = a1;
  context[1] = a2;
  CFDictionaryApplyFunction(a1[4], _C3DRemoveTextureProxy, context);
}

uint64_t C3DResourceManagerFlush(uint64_t a1)
{
  pthread_mutex_lock((a1 + 88));
  pthread_mutex_lock((a1 + 152));
  CFDictionaryApplyFunction(*(a1 + 224), __HandleVRAMResourcesRemovalFromCommands, a1);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __C3DResourceManagerFlush_block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  v2 = dispatch_block_create(DISPATCH_BLOCK_INHERIT_QOS_CLASS, block);
  dispatch_async(*(a1 + 216), v2);
  dispatch_resume(*(a1 + 216));
  dispatch_block_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  _Block_release(v2);
  pthread_mutex_unlock((a1 + 152));
  return pthread_mutex_unlock((a1 + 88));
}

void __HandleVRAMResourcesRemovalFromCommands(__CFString *a1, const __CFArray *a2, uint64_t a3)
{
  *&v18[5] = *MEMORY[0x277D85DE8];
  AnyRendererContext = __GetAnyRendererContext(a3);
  Count = CFArrayGetCount(a2);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a2, i);
      v11 = C3DVRAMResourceUnlock(ValueAtIndex, v10);
      if (a1 == @"kResourceManagerPendingImageRemoval")
      {
        C3DRendererContextDeleteTexture(AnyRendererContext, ValueAtIndex);
      }

      else if (a1 == @"kResourceManagerPendingImageProxyRemoval")
      {
        if (!ValueAtIndex)
        {
          v13 = scn_default_log(v11, v12);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            __HandleVRAMResourcesRemovalFromCommands_cold_1(buf, v18, v13);
          }
        }

        if (!C3DVRAMResourceLockCount(ValueAtIndex) && *(ValueAtIndex + 9))
        {
          v14 = __GetAnyRendererContext(a3);
          (*(ValueAtIndex + 9))(v14, *(ValueAtIndex + 12));
        }
      }

      else if (a1 == @"kResourceManagerPendingProgramRemoval")
      {
        if (!*(ValueAtIndex + 16))
        {
          v16[0] = MEMORY[0x277D85DD0];
          v16[1] = 3221225472;
          v16[2] = ____ResourceManagerRemoveResidentProgramObject_block_invoke;
          v16[3] = &__block_descriptor_48_e5_v8__0l;
          v16[4] = AnyRendererContext;
          v16[5] = ValueAtIndex;
          C3DRendererContextExecuteOnContext(AnyRendererContext, v16);
          CFDictionaryRemoveValue(*(a3 + 64), *(ValueAtIndex + 15));
        }
      }

      else if (a1 == @"kResourceManagerPendingMeshSourceRemoval" || a1 == @"kResourceManagerPendingMeshElementRemoval")
      {
        C3DRendererContextDeleteBufferObject(AnyRendererContext, ValueAtIndex);
      }
    }
  }

  CFArrayRemoveAllValues(a2);
}

uint64_t _C3DResourceManagerInstallRendererContext(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 152));
  CFArrayAppendValue(*(a1 + 232), a2);

  return pthread_mutex_unlock((a1 + 152));
}

uint64_t _C3DResourceManagerUninstallRendererContext(uint64_t a1, const void *a2)
{
  pthread_mutex_lock((a1 + 152));
  Count = CFArrayGetCount(*(a1 + 232));
  v10.location = 0;
  v10.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(*(a1 + 232), v10, a2);
  if (FirstIndexOfValue == -1)
  {
    v8 = scn_default_log(-1, v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _C3DResourceManagerUninstallRendererContext_cold_1();
    }
  }

  else
  {
    v7 = FirstIndexOfValue;
    if (Count == 1)
    {
      C3DResourceManagerRemoveAllResources(a1, a2);
    }

    CFArrayRemoveValueAtIndex(*(a1 + 232), v7);
  }

  return pthread_mutex_unlock((a1 + 152));
}

const void *__GetAnyRendererContext(uint64_t a1)
{
  result = CFArrayGetCount(*(a1 + 232));
  if (result)
  {
    v3 = *(a1 + 232);

    return CFArrayGetValueAtIndex(v3, 0);
  }

  return result;
}

uint64_t __deleteTextureProxies(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __deleteTextureProxies_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  result = C3DVRAMResourceLockCount(a2);
  if (!result)
  {
    if (*(a2 + 72))
    {
      AnyRendererContext = __GetAnyRendererContext(a3);
      return (*(a2 + 72))(AnyRendererContext, *(a2 + 96));
    }
  }

  return result;
}

uint64_t __EnqueueCommand(uint64_t result, __CFString *a2, void *a3)
{
  if (*(result + 224))
  {
    v5 = result;
    AnyRendererContext = __GetAnyRendererContext(result);
    pthread_mutex_lock((v5 + 88));
    Value = CFDictionaryGetValue(*(v5 + 224), a2);
    if (!Value)
    {
      Value = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
      CFDictionarySetValue(*(v5 + 224), a2, Value);
      CFRelease(Value);
    }

    if (a2 == @"kResourceManagerPendingImageRemoval")
    {
      if (__ResourceManagerIsImageResident(v5, a3))
      {
        Mutable = CFArrayCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF128]);
        v12 = Mutable;
        if (!a3)
        {
          v13 = scn_default_log(Mutable, v11);
          if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
          {
            C3DImageGetURL_cold_1(v13, v14, v15, v16, v17, v18, v19, v20);
          }
        }

        v21 = CFDictionaryGetValue(*(v5 + 16), a3);
        if (v21)
        {
          v22 = v21;
          Count = CFDictionaryGetCount(v21);
          if (Count >= 1)
          {
            v24 = Count;
            v25 = C3DMalloc(8 * Count);
            CFDictionaryGetKeysAndValues(v22, v25, 0);
            for (i = 0; i != v24; ++i)
            {
              v27 = v25[i];
              v28 = CFDictionaryGetValue(*(v5 + 24), a3);
              if (!v28)
              {
                v29 = CFDictionaryGetValue(*(v5 + 16), a3);
                if (!v29)
                {
                  continue;
                }

                v28 = CFDictionaryGetValue(v29, v27);
                if (!v28)
                {
                  continue;
                }
              }

              CFArrayAppendValue(v12, v28);
            }

            free(v25);
          }
        }

        v34 = CFDictionaryGetValue(*(v5 + 24), a3);
        if (v34)
        {
          CFArrayAppendValue(v12, v34);
        }

        if (v12)
        {
          v35 = CFArrayGetCount(v12);
          if (v35 >= 1)
          {
            v36 = v35;
            for (j = 0; j != v36; ++j)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, j);
              C3DVRAMResourceLock(ValueAtIndex);
              CFArrayAppendValue(Value, ValueAtIndex);
            }
          }

          CFRelease(v12);
          __ResourceManagerRemoveResidentImage(v5, a3);
        }
      }
    }

    else if (a2 == @"kResourceManagerPendingImageProxyRemoval")
    {
      v30 = CFDictionaryGetValue(*(v5 + 32), a3);
      if (v30)
      {
        CFDictionaryApplyFunction(v30, __lockAndAppendTextureProxyForRemoval, Value);
      }

      __ResourceManagerRemoveResidentImageProxy(v5, a3);
    }

    else if (a2 == @"kResourceManagerPendingProgramRemoval")
    {
      v31 = CFDictionaryGetValue(*(v5 + 56), a3);
      if (v31 && AnyRendererContext)
      {
        v32 = v31;
        C3DVRAMResourceLock(v31);
        CFArrayAppendValue(Value, v32);
        __ResourceManagerRemoveResidentProgram(v5, a3, AnyRendererContext);
      }
    }

    else if (a2 == @"kResourceManagerPendingMeshRemoval")
    {
      v41[0] = *(v5 + 216);
      v41[1] = a3;
      if (AnyRendererContext)
      {
        v33 = *(v5 + 232);
        v42.length = CFArrayGetCount(v33);
        v42.location = 0;
        CFArrayApplyFunction(v33, v42, __DeleteVertexArrayObject, v41);
      }
    }

    else if (a2 == @"kResourceManagerPendingMeshSourceRemoval")
    {
      v39 = CFDictionaryGetValue(*(v5 + 40), a3);
      if (v39 && AnyRendererContext)
      {
        v40 = v39;
        C3DVRAMResourceLock(v39);
        CFArrayAppendValue(Value, v40);
        __ResourceManagerRemoveResidentMeshSourceData(v5, a3, AnyRendererContext);
      }
    }

    else if (a2 == @"kResourceManagerPendingMeshElementRemoval")
    {
      v8 = CFDictionaryGetValue(*(v5 + 48), a3);
      if (v8)
      {
        if (AnyRendererContext)
        {
          v9 = v8;
          C3DVRAMResourceLock(v8);
          CFArrayAppendValue(Value, v9);
          __ResourceManagerRemoveResidentMeshElement(v5, a3, AnyRendererContext);
        }
      }
    }

    return pthread_mutex_unlock((v5 + 88));
  }

  return result;
}

void __lockAndAppendTextureProxyForRemoval(uint64_t a1, const void *a2, __CFArray *a3)
{
  C3DVRAMResourceLock(a2);

  CFArrayAppendValue(a3, a2);
}

void __ResourceManagerRemoveResidentMeshSourceData(_BOOL8 a1, void *key, _DWORD *a3)
{
  v5 = a1;
  if (!a1 && (v6 = scn_default_log(0, key), a1 = os_log_type_enabled(v6, OS_LOG_TYPE_FAULT)))
  {
    __StoreTexture_cold_1(v6, key, v7, v8, v9, v10, v11, v12);
    if (key)
    {
      goto LABEL_6;
    }
  }

  else if (key)
  {
    goto LABEL_6;
  }

  v13 = scn_default_log(a1, key);
  a1 = os_log_type_enabled(v13, OS_LOG_TYPE_FAULT);
  if (a1)
  {
    __ResourceManagerRemoveResidentMeshSourceData_cold_2(v13, key, v14, v15, v16, v17, v18, v19);
  }

LABEL_6:
  if (!a3)
  {
    v20 = scn_default_log(a1, key);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_FAULT))
    {
      C3DEngineContextRenderScene_cold_2(v20, v21, v22, v23, v24, v25, v26, v27);
    }
  }

  Value = CFDictionaryGetValue(*(v5 + 40), key);
  if (Value)
  {
    C3DRendererContextDeleteBufferObject(a3, Value);
    CFDictionaryRemoveValue(*(v5 + 40), key);
  }
}

void __RemoveVRAMResourceFromDic(uint64_t a1, const void *a2, uint64_t a3)
{
  if (!a2)
  {
    v5 = scn_default_log(a1, 0);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      __RemoveVRAMResourceFromDic_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  AnyRendererContext = __GetAnyRendererContext(a3);
  __ResourceManagerReleaseResidentVRAMResource(a3, a2, AnyRendererContext);
}

uint64_t C3DTextureGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DTextureGetTypeID_onceToken != -1)
  {
    C3DTextureGetTypeID_cold_1();
  }

  return C3DTextureGetTypeID_typeID;
}

void _C3DTextureCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 104);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 104) = 0;
  }
}

CFStringRef _C3DTextureCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTexture>");
}

CFStringRef _C3DTextureCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTexture>");
}

uint64_t __C3DTextureGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTextureGetTypeID_typeID = result;
  return result;
}

uint64_t C3DTextureCreate(uint64_t a1, uint64_t a2)
{
  if (C3DTextureGetTypeID_onceToken != -1)
  {
    C3DTextureGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextureGetTypeID_typeID, 96);
  if (!Instance)
  {
    v4 = scn_default_log(0, v2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(Instance + 80) |= 1u;
  *(Instance + 60) = 0;
  return Instance;
}

double C3DTextureGetSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 64);
}

void C3DTextureSetSize(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 64) = a3;
}

void C3DTextureSetOffset(uint64_t result, uint64_t a2, double a3)
{
  if (!result)
  {
    v5 = scn_default_log(0, a2);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(result + 72) = a3;
}

uint64_t C3DTextureGetID(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  return C3DVRAMResourceGetID(a1, a2);
}

void C3DTextureSetID(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a2;
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  C3DVRAMResourceSetID(a1, v4);
  *(a1 + 88) = a3;
}

void C3DTextureSetFormat(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 92) = v2;
}

void C3DTextureSetServerStorageSize(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  *(result + 84) = v2;
}

uint64_t C3DTextureGetServerStorageSize(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 84);
}

uint64_t C3DTextureGetTargetMode(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 88);
}

uint64_t C3DTextureHasAlpha(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return (*(a1 + 80) >> 1) & 1;
}

void C3DTextureSetHasAlpha(uint64_t result, uint64_t a2)
{
  v2 = a2;
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DRendererContextApplyTextureSampler_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  if (v2)
  {
    v12 = 2;
  }

  else
  {
    v12 = 0;
  }

  *(result + 80) = *(result + 80) & 0xFD | v12;
}

void C3D::SSAOMinMaxOffsetPass::SSAOMinMaxOffsetPass(C3D::ComputePass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  C3D::ComputePass::ComputePass(a1, a2, a3);
  *v5 = &unk_282DC43F8;
  v5[14] = 0;
  v5[15] = a4;
}

uint64_t C3D::SSAOMinMaxOffsetPass::setup(C3D::Pass ***this)
{
  C3D::Pass::setInputCount(this, 1u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 4), 0) + 8) = "SSAO-DepthNormal";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 4), 0);
  *(v2 + 8) = "SSAO-MinMaxOffset";
  *(v2 + 28) = 13;
  v3 = C3D::Pass::descriptor(*this[15]);
  *(v2 + 16) = *(C3D::PassDescriptor::outputAtIndex(v3, 0) + 16) / *(this[15] + 3);
  v4 = C3D::Pass::descriptor(*this[15]);
  result = C3D::PassDescriptor::outputAtIndex(v4, 0);
  *(v2 + 18) = *(result + 18) / *(this[15] + 3);
  if (*(v2 + 24) == 5)
  {
    v6 = 6;
  }

  else
  {
    v6 = 1;
  }

  *(this + 19) = v6;
  return result;
}

void *C3D::SSAOMinMaxOffsetPass::compile(C3D::SSAOMinMaxOffsetPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = *(*(this + 15) + 16) | (2 * *(*(this + 15) + 17)) | (4 * *(*(this + 15) + 12)) | (*(*(this + 15) + 8) << 6);
  v5 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v4) ^ ((0xC6A4A7935BD1E995 * v4) >> 47))));
  result = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v5 ^ (v5 >> 47))) >> 47));
  *(this + 14) = result;
  if (!result)
  {
    operator new();
  }

  return result;
}

uint64_t C3D::SSAOMinMaxOffsetPass::execute(C3D::Pass *a1, SCNMTLComputeCommandEncoder **a2)
{
  v3 = *a2;
  v4 = C3D::Pass::inputTextureAtIndex(a1, 0);
  if (v3->_textures[0] != v4)
  {
    v3->_textures[0] = v4;
    v3->_texturesToBind[0] |= 1uLL;
  }

  v5 = C3D::Pass::outputTextureAtIndex(a1, 0);
  if (v3->_textures[1] != v5)
  {
    v3->_textures[1] = v5;
    v3->_texturesToBind[0] |= 2uLL;
  }

  v6 = C3D::Pass::outputTextureAtIndex(a1, 0);
  v8 = C3D::SmartPtr<SCNMTLComputePipeline *,C3D::detail::NSRetainFct,C3D::detail::NSReleaseFct>::operator SCNMTLComputePipeline *(*(a1 + 14) + 16, v7);
  v9 = [(SCNMTLOpenSubdivComputeEvaluator *)v8 computeEvaluator];

  return SCNMTLComputeCommandEncoder::dispatchOnTexture2D(v3, v6, v9);
}

void C3D::SSAOMinMaxOffsetPassResource::~SSAOMinMaxOffsetPassResource(C3D::SSAOMinMaxOffsetPassResource *this)
{
  *this = &unk_282DC4468;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC4468;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

C3D::RenderPass *C3D::CompositeARPass::CompositeARPass(C3D::CompositeARPass *this, C3D::RenderGraph *a2, C3D::Pass *a3)
{
  result = C3D::RenderPass::RenderPass(this, a2, a3);
  *result = &unk_282DC4488;
  *(result + 31) = 0;
  *(result + 32) = 0;
  return result;
}

uint64_t C3D::CompositeARPass::setup(C3D::CompositeARPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  C3D::Pass::setInputCount(this, 3u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 8) = "DEPTH";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 64) = 2;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2) + 8) = "BACKGROUND";
  if ([(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing])
  {
    v4 = 2;
  }

  else
  {
    v4 = 1;
  }

  C3D::Pass::setOutputCount(this, v4);
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 65) = 0;
  v5 = this;
  do
  {
    v6 = v5;
    v5 = *(v5 + 1);
  }

  while (v5);
  C3D::Pass::parentColorDesc(&v12, v6);
  v7 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v7 + 16) = v12;
  *(v7 + 32) = v13;
  *(C3D::PassDescriptor::outputAtIndex((this + 32), 0) + 31) = 0;
  result = [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing];
  if (result)
  {
    *(C3D::PassDescriptor::outputAtIndex((this + 32), 1) + 8) = "DEPTH";
    *(C3D::PassDescriptor::outputAtIndex((this + 32), 1) + 64) = 2;
    v9 = this;
    do
    {
      v10 = v9;
      v9 = *(v9 + 1);
    }

    while (v9);
    C3D::Pass::parentDepthDesc(&v12, v10);
    v11 = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
    *(v11 + 16) = v12;
    *(v11 + 32) = v13;
    result = C3D::PassDescriptor::outputAtIndex((this + 32), 1);
    *(result + 31) = 0;
  }

  return result;
}

void C3D::CompositeARPass::compile(C3D::CompositeARPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  PointOfView = C3DEngineContextGetPointOfView(*(this + 2), v4);
  if (PointOfView)
  {
    Camera = C3DNodeGetCamera(PointOfView, v6);
    *(this + 32) = Camera;
    if (Camera)
    {
      if (!C3DEngineContextGetPreferredRenderMode(*(this + 2)))
      {
        *(this + 19) = C3DEngineContextGetEyeCount(*(this + 2));
      }

      *(this + 31) = C3DCameraGetARGrainTexture(*(this + 32), v8);
      IsColored = C3DCameraGetGrainIsColored(*(this + 32), v9);
      v11 = *(this + 31);
      if (v11)
      {
        LOBYTE(v11) = C3DCameraGetGrainIntensity(*(this + 32), v10) > 0.0;
      }

      *(this + 264) = v11;
      v12 = [(SCNMTLRenderContext *)RenderContext reverseZ];
      v24 = v12;
      v13 = C3DEngineContextGetViewpointCoordinateSpace(*(this + 2)) != 2;
      v23 = v13;
      v14 = [(SCNMTLRenderContext *)RenderContext shouldDelegateARCompositing];
      v22 = v14;
      v15 = 4;
      if (!v12)
      {
        v15 = 0;
      }

      v16 = v15 | (2 * *(this + 264));
      v17 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
      v18 = 2048;
      if (!v14)
      {
        v18 = 0;
      }

      v19 = v16 | (8 * *(v17 + 28)) | (v13 << 10) | v18;
      v20 = 0xC6A4A7935BD1E995 * ((*(*this + 64))(this) ^ 0x35253C9ADE8F4CA8 ^ (0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * v19) ^ ((0xC6A4A7935BD1E995 * v19) >> 47))));
      v21 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), (0xC6A4A7935BD1E995 * (v20 ^ (v20 >> 47))) ^ ((0xC6A4A7935BD1E995 * (v20 ^ (v20 >> 47))) >> 47));
      *(this + 30) = v21;
      if (!v21)
      {
        operator new();
      }
    }
  }
}

void *C3D::CompositeARPass::execute(void *a1, uint64_t a2)
{
  result = C3DEngineContextGetRenderContext(a1[2], a2);
  if (a1[32])
  {
    v6 = result;
    v7 = *a2;
    if (*(a1 + 264) == 1)
    {
      v8 = [(SCNMTLRenderContext *)result renderTime];
      v9 = floor(*&v8 * 30.0);
      v11 = 0.00390625 / fmax(C3DCameraGetGrainScale(a1[32], v10), 0.00390625);
      v12 = [(SCNMTLRenderContext *)v6 contentScaleFactor]<= 1.0;
      v14 = 2.0;
      if (!v12)
      {
        v14 = 1.0;
      }

      *&v30 = v14 * v11;
      v33[0] = C3DCameraGetGrainIntensity(a1[32], v13);
      v15 = v9;
      v16 = sin(v15 * 0.01);
      v28 = fmin(v16 * 4242.0 - floor(v16 * 4242.0), 1.0);
      v17 = sin(v15 * 0.1 + 0.05);
      v18.f64[0] = v28;
      v18.f64[1] = fmin(v17 * 4242.0 - floor(v17 * 4242.0), 1.0);
      v34 = vcvt_hight_f32_f64(vcvt_f32_f64(vdupq_lane_s64(v30, 0)), v18);
      ARGrainSlice = C3DCameraGetARGrainSlice(a1[32], v19);
    }

    v20 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[30] + 16 :v5) detail:"state" :?NSRetainFct];
    if (*(v7 + 3376) != v20)
    {
      *(v7 + 3376) = v20;
      [*(v7 + 3392) setRenderPipelineState:v20];
    }

    v32 = xmmword_21C281190;
    if (C3DEngineContextGetEyeCount(a1[2]) >= 2 && !C3DEngineContextGetPreferredRenderMode(a1[2]))
    {
      ViewportAtIndex = C3DEngineContextGetViewportAtIndex(a1[2], *(a2 + 16));
      v31 = vextq_s8(ViewportAtIndex, ViewportAtIndex, 8uLL);
      v29 = vextq_s8(v31, v31, 8uLL).u64[0];
      v36.val[0] = vdiv_f32(vzip1_s32(*v31.i8, v29), vdup_laneq_s32(*(*(*a1 + 88))(a1), 2));
      v36.val[1] = vdiv_f32(vzip2_s32(*v31.i8, v29), vdup_laneq_s32(*(*(*a1 + 88))(a1), 3));
      v22 = &v32;
      vst2_f32(v22, v36);
    }

    if ([(SCNMTLRenderContext *)v6 shouldDelegateARCompositing])
    {
      [*(v7 + 3392) setDepthStencilState:{C3D::SmartPtr<SCNMTLRenderPipeline *, C3D::detail::NSRetainFct, C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(a1[30] + 24, v23)}];
    }

    SCNMTLRenderCommandEncoder::setVertexBytes(v7, &v32, 0x10uLL, 0);
    SCNMTLRenderCommandEncoder::setFragmentBytes(v7, v33, 0x30uLL, 0);
    v24 = C3D::Pass::inputTextureAtIndex(a1, 0);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v24, 0);
    v25 = C3D::Pass::inputTextureAtIndex(a1, 1);
    SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v25, 1uLL);
    if (([(SCNMTLRenderContext *)v6 shouldDelegateARCompositing]& 1) == 0)
    {
      v26 = C3D::Pass::inputTextureAtIndex(a1, 2);
      SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v26, 2uLL);
    }

    v27 = a1[31];
    if (v27)
    {
      SCNMTLRenderCommandEncoder::setFragmentTexture(v7, v27, 3uLL);
    }

    return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v7, v27);
  }

  return result;
}

void C3D::CompositeARPassResource::~CompositeARPassResource(C3D::CompositeARPassResource *this)
{
  *this = &unk_282DC44F8;
  v2 = *(this + 4);
  if (v2)
  {
  }

  v3 = *(this + 3);
  if (v3)
  {
  }

  v4 = *(this + 2);
  if (v4)
  {
  }
}

{
  *this = &unk_282DC44F8;
  v2 = *(this + 4);
  if (v2)
  {
  }

  v3 = *(this + 3);
  if (v3)
  {
  }

  v4 = *(this + 2);
  if (v4)
  {
  }

  JUMPOUT(0x21CF07610);
}

C3D::RenderPass *C3D::SSRBlurPass::SSRBlurPass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4, char a5)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC4518;
  *(result + 248) = a5;
  return result;
}

const char *C3D::SSRBlurPass::name(C3D::SSRBlurPass *this)
{
  if (*(this + 248))
  {
    return "SSRBlurPass-Y";
  }

  else
  {
    return "SSRBlurPass-X";
  }
}

uint64_t C3D::SSRBlurPass::setup(C3D::SSRBlurPass *this)
{
  C3D::Pass::setInputCount(this, 2u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "SSR";
  v2 = C3D::PassDescriptor::inputAtIndex((this + 32), 0);
  *(v2 + 66) |= 4u;
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 8) = "lobeFootprint";
  C3D::Pass::setOutputCount(this, 1u);
  result = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(result + 8) = "SSR";
  return result;
}

void C3D::SSRBlurPass::compile(C3D::SSRBlurPass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  v4 = [(SCNMTLRenderContext *)RenderContext resourceManager];
  [-[SCNMTLResourceManager libraryManager](v4) frameworkLibrary];
  v5 = (*(*this + 64))(this);
  v6 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v5);
  *(this + 30) = v6;
  if (!v6)
  {
    operator new();
  }
}

uint64_t C3D::SSRBlurPass::execute(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 240);
  if (*(a1 + 248))
  {
    v5 = v4 + 24;
  }

  else
  {
    v5 = v4 + 16;
  }

  v6 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(v5 :a2) detail:"state" :?NSRetainFct];
  if (*(v3 + 3376) != v6)
  {
    *(v3 + 3376) = v6;
    [*(v3 + 3392) setRenderPipelineState:v6];
  }

  v7 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v7, 0);
  v8 = C3D::Pass::inputTextureAtIndex(a1, 1);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v8, 1uLL);

  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3, v9);
}

void C3D::SSRBlurPassResource::~SSRBlurPassResource(C3D::SSRBlurPassResource *this)
{
  *this = &unk_282DC4588;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }
}

{
  *this = &unk_282DC4588;
  v2 = *(this + 3);
  if (v2)
  {
  }

  v3 = *(this + 2);
  if (v3)
  {
  }

  JUMPOUT(0x21CF07610);
}

uint64_t C3D::CreateCIFilterQuadBlendTechnique(C3D *this, __C3DNode *a2, __C3DEngineContext *a3)
{
  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"SceneKit-CI-effect-depth-", this];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"SceneKit-CI-effect-color-", this];
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = ___ZN3C3D32CreateCIFilterQuadBlendTechniqueEP9__C3DNodeP18__C3DEngineContext_block_invoke;
  v14[3] = &unk_2782FD888;
  v14[4] = &unk_282E0FB88;
  v14[5] = v5;
  v14[6] = v6;
  v14[7] = this;
  v7 = C3DJsonNamed(@"C3DFXCIFilterPassMetalRenderGraph.json", v14);
  v8 = C3DFXTechniqueCreateWithDescription(v7, this);
  PassNamed = C3DFXTechniqueGetPassNamed(v8, [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"SceneKit_renderCIQuad", this]);
  C3DFXPassSetInitializeCallback(PassNamed, C3D::_initializeRenderFilteredBuffer);
  C3DFXPassSetWillExecuteCallback(PassNamed, C3D::_willRenderFilteredBuffer);
  C3DFloorSetReflectionCategoryBitMask(PassNamed, C3D::_blendFilteredBuffer);
  v13[0] = PassNamed;
  v13[1] = v8;
  v13[2] = this;
  v13[3] = a2;
  v13[4] = 0;
  v13[5] = 0;
  memset(&v13[7], 0, 32);
  v13[6] = 0xBFF0000000000000;
  C3DFXPassInitialize(v13, 0);
  Scene = C3DEngineContextGetScene(a2, v10);
  C3DFXContextResolveNodeReferences(PassNamed, Scene);
  return v8;
}

uint64_t ___ZN3C3D32CreateCIFilterQuadBlendTechniqueEP9__C3DNodeP18__C3DEngineContext_block_invoke(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a1[4];
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        a2 = [a2 stringByReplacingOccurrencesOfString:*(*(&v10 + 1) + 8 * i) withString:{objc_msgSend(MEMORY[0x277CCACA8], "stringWithFormat:", @"%@%p", *(*(&v10 + 1) + 8 * i), a1[7])}];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return [objc_msgSend(a2 stringByReplacingOccurrencesOfString:@"SceneKit-CI-effect-depth" withString:{a1[5]), "stringByReplacingOccurrencesOfString:withString:", @"SceneKit-CI-effect-color", a1[6]}];
}

void C3D::_initializeRenderFilteredBuffer(uint64_t *a1, uint64_t a2)
{
  Program = C3DFXPassGetProgram(*a1, a2);

  C3DFXProgramSetOpaque(Program, 0);
}

void C3D::_willRenderFilteredBuffer(uint64_t *a1)
{
  RenderGraph = C3DEngineContextGetRenderGraph(a1[3]);
  v3 = *(RenderGraph + 120);
  StackAllocator = C3DEngineContextGetStackAllocator(a1[3], v4);
  C3D::RenderGraph::getPredecessors(RenderGraph, v3, StackAllocator, v28);
  if (v29)
  {
    v6 = v30;
    v7 = 8 * v29;
    while (1)
    {
      v8 = *v6;
      if ((*(*v6)->i64[0])(*v6))
      {
        v9 = (*v8->i64[0])(v8);
        if (!strcmp(v9, C3D::kCIFilterPassName) && v8[10].i64[0] == a1[2])
        {
          break;
        }
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        return;
      }
    }

    CullingContext = C3D::DrawNodesPass::getCullingContext(v8[8].i64[0]);
    WorldMatrix = C3DNodeGetWorldMatrix(a1[2], v11);
    C3DMatrix4x4Mult(WorldMatrix, (CullingContext + (a1[9] << 6) + 3088), v27);
    v26[0] = v27[0];
    v26[1] = v27[1];
    v26[2] = v27[2];
    v26[3] = v27[3];
    C3DVector3MultMatrix4x4(v26, 0);
    v14 = fmax(*(CullingContext + 4752) / (*(CullingContext + 4752) - *(CullingContext + 4744)) - *(CullingContext + 4752) * *(CullingContext + 4744) / (*(CullingContext + 4744) - *(CullingContext + 4752)) / v13, 0.0);
    v25 = v14;
    v15 = 0.0;
    if (C3DReverseZIsSupported())
    {
      v15 = 1.0;
      v25 = 1.0 - v14;
    }

    v16 = a1[2];
    C3DFXTechniqueSetValueForSymbol(a1[1], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"C3D-CIFilter_middleZ", v16], &v25);
    __asm { FMOV            V3.2D, #0.5 }

    v22 = vmulq_f64(vcvtq_f64_f32(*(CullingContext + 4648)), _Q3);
    __asm { FMOV            V3.2D, #-1.0 }

    v26[0] = vcvt_hight_f32_f64(vcvt_f32_f64(vaddq_f64(vdivq_f64(vcvtq_f64_f32(*v8[9].f32), v22), _Q3)), vdivq_f64(vcvt_hight_f64_f32(v8[9]), v22));
    C3DFXTechniqueSetValueForSymbol(a1[1], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"C3D-CIFilter_extent", v16], v26);
    v24 = v15;
    C3DFXTechniqueSetValueForSymbol(a1[1], [MEMORY[0x277CCACA8] stringWithFormat:@"%@%p", @"C3D-CIFilter_reverseZ", v16], &v24);
  }
}

uint64_t C3DImageProxyGetTypeID(uint64_t a1, uint64_t a2)
{
  if (C3DImageProxyGetTypeID_onceToken != -1)
  {
    C3DImageProxyGetTypeID_cold_1();
  }

  return C3DImageProxyGetTypeID_typeID;
}

void _C3DImageProxyCFFinalize(void *a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kC3DNotificationImageProxyWillDie", a1, 0, 1u);
  v3 = a1[6];
  if (v3)
  {
    CFRelease(v3);
    a1[6] = 0;
  }
}

CFStringRef _C3DImageProxyCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DImageProxy>");
}

CFStringRef _C3DImageProxyCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DImageProxy>");
}

uint64_t __C3DImageProxyGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DImageProxyGetTypeID_typeID = result;
  return result;
}

uint64_t C3DImageProxyCreate(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  if (C3DImageProxyGetTypeID_onceToken != -1)
  {
    C3DImageProxyGetTypeID_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DImageProxyGetTypeID_typeID, 48);
  if (!Instance)
  {
    v5 = scn_default_log(0, v3);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }

  *(Instance + 56) = v2;
  return Instance;
}

uint64_t C3DImageProxyCreateTextureProxy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 16);
  if (!v13)
  {
    return 0;
  }

  Source = C3DImageProxyGetSource(a1, a2);
  result = v13(a3, a2, Source);
  if (result)
  {
    *(result + 104) = a1;
  }

  return result;
}

uint64_t C3DImageProxyGetSource(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 48);
}

uint64_t C3DImageProxyIsOpaque(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 24);
  if (!v10)
  {
    return 1;
  }

  Source = C3DImageProxyGetSource(a1, a2);
  return v10(Source);
}

uint64_t C3DImageProxyIsPremultiplied(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  v10 = *(a1 + 32);
  if (!v10)
  {
    return 1;
  }

  Source = C3DImageProxyGetSource(a1, a2);
  return v10(Source);
}

uint64_t C3DImageProxyGetCaptureDeviceInfo(_BOOL8 TextureProxy_cold_1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = TextureProxy_cold_1;
  if (!TextureProxy_cold_1)
  {
    v8 = scn_default_log(0, a2);
    TextureProxy_cold_1 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (TextureProxy_cold_1)
    {
      C3DImageProxyCreateTextureProxy_cold_1(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  if (!*(v7 + 40))
  {
    v15 = scn_default_log(TextureProxy_cold_1, a2);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyGetCaptureDeviceInfo_cold_2(v15, a2, v16, v17, v18, v19, v20, v21);
    }
  }

  v22 = *(v7 + 40);
  Source = C3DImageProxyGetSource(v7, a2);
  return v22(Source, a2, a3, a4);
}

uint64_t C3DImageProxyGetSourceType(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 56);
}

CFTypeRef C3DImageProxySetSource(uint64_t a1, CFTypeRef cf, char a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, cf);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
    }
  }

  result = *(a1 + 48);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 48) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 48) = result;
    *(a1 + 56) = a3;
  }

  return result;
}

__n128 C3DImageProxySetCallbacks(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      C3DImageProxyCreateTextureProxy_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *a2;
  v13 = *(a2 + 16);
  *(a1 + 16) = *a2;
  *(a1 + 32) = v13;
  return result;
}

void _C3DTextureProxyCFFinalize(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 96) = 0;
  }
}

CFStringRef _C3DTextureProxyCFCopyFormatDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextureProxy>");
}

CFStringRef _C3DTextureProxyCFCopyDebugDescription(const void *a1)
{
  v1 = CFGetAllocator(a1);

  return CFStringCreateWithFormat(v1, 0, @"<C3DTextureProxy>");
}

uint64_t __C3DTextureProxyGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DTextureProxyGetTypeID_typeID = result;
  return result;
}

uint64_t C3DTextureProxyCreate()
{
  if (C3DTextureProxyGetTypeID_onceToken != -1)
  {
    C3DTextureProxyCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DTextureProxyGetTypeID_typeID, 96);
  if (!Instance)
  {
    v2 = scn_default_log(0, v0);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v2, v3, v4, v5, v6, v7, v8, v9);
    }
  }

  return Instance;
}

uint64_t C3DTextureProxyGetOpenGLTexture(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(a1 + 64);
  if (!v13)
  {
    return 0;
  }

  Source = C3DTextureProxyGetSource(a1, a2);
  return v13(a2, Source, a3);
}

uint64_t C3DTextureProxyGetSource(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
    {
      __deleteTextureProxies_cold_1(v3, v4, v5, v6, v7, v8, v9, v10);
    }
  }

  return *(a1 + 96);
}

uint64_t C3DTextureProxyGetMetalTexture(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1)
  {
    v8 = scn_default_log(0, a2);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      C3DTextureCreate_cold_2(v8, a2, v9, v10, v11, v12, v13, v14);
    }
  }

  v15 = *(a1 + 80);
  if (!v15)
  {
    return 0;
  }

  Source = C3DTextureProxyGetSource(a1, a2);
  return v15(a2, Source, a3, a4);
}

void C3DTextureProxyRenderInCurrentContext(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (!result)
  {
    v6 = scn_default_log(0, a2);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __deleteTextureProxies_cold_1(v6, a2, v7, v8, v9, v10, v11, v12);
    }
  }

  v13 = *(result + 88);
  if (v13)
  {
    Source = C3DTextureProxyGetSource(result, a2);
    v13(a2, Source, a3);
  }
}

CFTypeRef C3DTextureProxySetSource(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    v4 = scn_default_log(0, cf);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __deleteTextureProxies_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }
  }

  result = *(a1 + 96);
  if (result != cf)
  {
    if (result)
    {
      CFRelease(result);
      *(a1 + 96) = 0;
    }

    if (cf)
    {
      result = CFRetain(cf);
    }

    else
    {
      result = 0;
    }

    *(a1 + 96) = result;
  }

  return result;
}

void C3DTextureProxySetCallbacks(uint64_t result, __int128 *a2)
{
  if (!result)
  {
    v4 = scn_default_log(0, a2);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      __deleteTextureProxies_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
      if (a2)
      {
        goto LABEL_4;
      }

LABEL_6:
      v12 = 0uLL;
      *(result + 80) = 0u;
      goto LABEL_7;
    }
  }

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_4:
  v12 = *a2;
  *(result + 80) = a2[1];
LABEL_7:
  *(result + 64) = v12;
}

C3D::RenderPass *C3D::SSRCompositePass::SSRCompositePass(C3D::RenderPass *a1, C3D::RenderGraph *a2, C3D::Pass *a3, uint64_t a4)
{
  result = C3D::RenderPass::RenderPass(a1, a2, a3);
  *result = &unk_282DC45E8;
  *(result + 31) = a4;
  return result;
}

double C3D::SSRCompositePass::setup(C3D::SSRCompositePass *this)
{
  C3D::Pass::setInputCount(this, 4u);
  C3D::Pass::setOutputCount(this, 1u);
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 0) + 8) = "COLOR";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 1) + 8) = "Radiance";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 2) + 8) = "ReflectanceRoughness";
  *(C3D::PassDescriptor::inputAtIndex((this + 32), 3) + 8) = "SSR";
  v2 = C3D::PassDescriptor::outputAtIndex((this + 32), 0);
  *(v2 + 8) = "COLOR";
  *(v2 + 65) = 0;
  C3D::Pass::parentColorDesc(&v4, this);
  result = *&v4;
  *(v2 + 16) = v4;
  *(v2 + 32) = v5;
  *(v2 + 66) &= 0xFFFCu;
  return result;
}

void C3D::SSRCompositePass::compile(C3D::SSRCompositePass *this, uint64_t a2)
{
  RenderContext = C3DEngineContextGetRenderContext(*(this + 2), a2);
  [(SCNMTLRenderContext *)RenderContext resourceManager];
  v4 = (*(*this + 64))(this);
  v5 = 0xC6A4A7935BD1E995 * ((0xC6A4A7935BD1E995 * (v4 ^ 0x35253C9ADE8F4CA8)) ^ ((0xC6A4A7935BD1E995 * (v4 ^ 0x35253C9ADE8F4CA8)) >> 47));
  v6 = C3D::RenderGraphResourceManager::get(*(*(this + 3) + 128), v5 ^ (v5 >> 47));
  *(this + 30) = v6;
  if (!v6)
  {
    operator new();
  }
}

uint64_t C3D::SSRCompositePass::execute(C3D::Pass *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = [C3D::SmartPtr<SCNMTLRenderPipeline * C3D:C3D::detail::NSReleaseFct>::operator SCNMTLRenderPipeline *(*(a1 + 30) + 16 :a2) detail:"state" :?NSRetainFct];
  if (*(v3 + 3376) != v4)
  {
    *(v3 + 3376) = v4;
    [*(v3 + 3392) setRenderPipelineState:v4];
  }

  v5 = C3D::Pass::inputTextureAtIndex(a1, 0);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v5, 0);
  v6 = C3D::Pass::inputTextureAtIndex(a1, 1);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v6, 1uLL);
  v7 = C3D::Pass::inputTextureAtIndex(a1, 2);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v7, 2uLL);
  v8 = C3D::Pass::inputTextureAtIndex(a1, 3);
  SCNMTLRenderCommandEncoder::setFragmentTexture(v3, v8, 3uLL);

  return SCNMTLRenderCommandEncoder::drawFullScreenTriangle(v3, v9);
}

void C3D::SSRCompositePassResource::~SSRCompositePassResource(C3D::SSRCompositePassResource *this)
{
  *this = &unk_282DC4658;
  v1 = *(this + 2);
  if (v1)
  {
  }
}

{
  *this = &unk_282DC4658;
  v1 = *(this + 2);
  if (v1)
  {
  }

  JUMPOUT(0x21CF07610);
}

void _C3DEnginePipelineCFFinalize(_BOOL8 a1, uint64_t a2)
{
  v2 = a1;
  if (!a1)
  {
    v3 = scn_default_log(0, a2);
    a1 = os_log_type_enabled(v3, OS_LOG_TYPE_FAULT);
    if (a1)
    {
      C3DEngineContextRenderScene_cold_3(v3, a2, v4, v5, v6, v7, v8, v9);
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance(a1, a2);
  C3DNotificationCenterRemoveObserver(SharedInstance, v2, @"kC3DNotificationNodeWillDie", 0);
  v12 = v2[4];
  if (v12)
  {
    C3DEngineNotificationQueueStopObserving(v12, v11);
    v13 = v2[4];
    if (v13)
    {
      CFRelease(v13);
      v2[4] = 0;
    }
  }

  v14 = v2[3];
  if (v14)
  {
    CFRelease(v14);
    v2[3] = 0;
  }

  v15 = v2[5];
  if (v15)
  {
    CFRelease(v15);
    v2[5] = 0;
  }

  v16 = v2[6];
  if (v16)
  {
    CFRelease(v16);
    v2[6] = 0;
  }
}

uint64_t __C3DEnginePipelineGetTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  C3DEnginePipelineGetTypeID_typeID = result;
  return result;
}

uint64_t *C3DEnginePipelineCreate(uint64_t a1)
{
  if (C3DEnginePipelineGetTypeID_onceToken != -1)
  {
    C3DEnginePipelineCreate_cold_1();
  }

  Instance = C3DTypeCreateInstance_(C3DEnginePipelineGetTypeID_typeID, 80);
  Instance[5] = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, 0, MEMORY[0x277CBF150]);
  v3 = C3DRendererElementStoreCreate();
  Instance[6] = v3;
  Instance[2] = a1;
  if (Instance[3])
  {
    v5 = scn_default_log(v3, v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&dword_21BEF7000, v5, OS_LOG_TYPE_DEFAULT, "Warning: Warning _lightNodes not NULL in C3DEnginePipelineSetup", v10, 2u);
    }

    v3 = Instance[3];
    if (v3)
    {
      CFRelease(v3);
      Instance[3] = 0;
    }
  }

  SharedInstance = C3DNotificationCenterGetSharedInstance(v3, v4);
  C3DNotificationCenterAddObserver(SharedInstance, Instance, __HandleNodeWillDieNotification, @"kC3DNotificationNodeWillDie", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  if (!Instance[4])
  {
    v7 = C3DEngineNotificationQueueCreate(Instance[2]);
    Instance[4] = v7;
    C3DEngineNotificationQueueStartObserving(v7, v8);
  }

  return Instance;
}

void C3DEnginePipelineSyncNodeAttribute(uint64_t a1, void *a2, void *cf1, uint64_t a4)
{
  if (!cf1)
  {
    v8 = scn_default_log(a1, a2);
    v9 = os_log_type_enabled(v8, OS_LOG_TYPE_FAULT);
    if (v9)
    {
      C3DEnginePipelineSyncNodeAttribute_cold_1(v8, v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = scn_default_log(v9, v10);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
    {
      C3DEnginePipelineSyncNodeAttribute_cold_1(v17, v18, v19, v20, v21, v22, v23, v24);
    }
  }

  if (CFEqual(cf1, @"kMeshKey") || CFEqual(cf1, @"kCameraKey") || CFEqual(cf1, @"kLightKey") || CFEqual(cf1, @"kDeformerStackKey") || CFEqual(cf1, @"rendererDelegate"))
  {
    CFRetain(a2);
    if (CFEqual(cf1, @"kMeshKey"))
    {
      goto LABEL_23;
    }

    if (C3DEntityGetAttribute(a2, cf1))
    {
      if (C3DNodeIsHidden(a2, v25))
      {
LABEL_14:
        C3DEnginePipelineRemoveNodeForKey(a1, a2, cf1);
        goto LABEL_23;
      }

      goto LABEL_22;
    }

    if (CFEqual(cf1, @"kDeformerStackKey"))
    {
      DeformerStack = C3DNodeGetDeformerStack(a2, v26);
      if ((C3DNodeIsHidden(a2, v28) & 1) == 0)
      {
        if (!DeformerStack)
        {
          goto LABEL_14;
        }

LABEL_22:
        C3DEnginePipelineAddNodeForKeyIfAbsent(a1, a2, cf1);
        goto LABEL_23;
      }

      if (DeformerStack)
      {
        goto LABEL_14;
      }
    }

    else if ((C3DNodeIsHidden(a2, v26) & 1) == 0)
    {
      goto LABEL_14;
    }

LABEL_23:
    if (CFEqual(cf1, @"kMeshKey") || CFEqual(cf1, @"rendererDelegate") || CFEqual(cf1, @"kLightKey"))
    {
      if (CFEqual(cf1, @"kMeshKey"))
      {
        v30 = 0;
        v31 = 0;
      }

      else if (CFEqual(cf1, @"rendererDelegate"))
      {
        v30 = 1;
        v31 = 1;
      }

      else
      {
        v32 = CFEqual(cf1, @"kLightKey");
        if (v32)
        {
          v30 = 0;
          v31 = 4;
        }

        else
        {
          v33 = scn_default_log(v32, v29);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
          {
            C3DEnginePipelineSyncNodeAttribute_cold_3(cf1, v33);
          }

          v30 = 0;
          v31 = -1;
        }
      }

      RenderableAttributeHash = C3DNodeGetRenderableAttributeHash(a2, v29);
      if ((v30 & 1) != 0 || !RenderableAttributeHash || ((1 << v31) & RenderableAttributeHash) != 0)
      {
        v36 = *(a4 + 8);
        v37 = C3DGetScene(a2, v35);
        if (v37 == C3DEngineContextGetScene(v36, v38) && !C3DNodeIsHiddenOrIsHiddenByAncestor(a2, v39))
        {
          C3DEnginePipelineUpdateNode(a1, v36, a2);
        }
      }
    }

    CFRelease(a2);
  }
}