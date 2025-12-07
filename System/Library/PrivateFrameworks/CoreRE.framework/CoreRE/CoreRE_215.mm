BOOL re::snapshot::DecoderOPACK::field<1,float [3]>(re::snapshot::DecoderOPACK *a1, uint64_t a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,float,3ul>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,float,3ul>(re::snapshot::DecoderOPACK *a1, uint64_t a2)
{
  v8 = 0;
  result = re::snapshot::DecoderOPACK::beginData(a1, &v8, 1);
  if (result)
  {
    if (v8 == 12)
    {
      v5 = *(a1 + 3);
      if (*(a1 + 4) - v5 <= 0xBuLL)
      {
        return re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v6 = *v5;
        *(a2 + 8) = *(v5 + 2);
        *a2 = v6;
        *(a1 + 3) += 12;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v8);
    if (result)
    {
      if (v8 == 3)
      {
        v7 = 0;
        if (re::snapshot::DecoderOPACK::endArray(a1, &v8))
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }

        do
        {
          if (v7 > 2)
          {
            re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 3uLL, v7 + 1);
          }

          else
          {
            re::snapshot::DecoderOPACK::operator>>(a1, (a2 + 4 * v7++));
          }

          result = re::snapshot::DecoderOPACK::endArray(a1, &v8);
        }

        while (!result);
        if (v7 != 3)
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  return result;
}

re::snapshot::BufferDecoder *re::snapshot::operator>><re::snapshot::DecoderRaw,float,4ul>(re::snapshot::BufferDecoder *this, _OWORD *a2)
{
  v3 = this;
  v11 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4);
  if ((v5 - v4) < 8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
    this = re::snapshot::DecoderRaw::beginArray(v3, &v11);
    if (this)
    {
      if (v11 == 4)
      {
        v8 = 0;
        v9 = -4;
        do
        {
          if (v8 > 3)
          {
            this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 4uLL, v8 + 1);
          }

          else
          {
            this = re::snapshot::DecoderRaw::operator>>(v3, a2 + v8++);
          }
        }

        while (!__CFADD__(v9++, 1));
        if (v8 != 4)
        {
          return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v7 = *v4;
    v6 = v4 + 1;
    *(this + 3) = v6;
    if (v7 == 16)
    {
      if ((v5 - v6) <= 0xF)
      {
        return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        *a2 = *v6;
        *(this + 3) += 16;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  return this;
}

re::snapshot::BufferDecoder *re::snapshot::operator>><re::snapshot::DecoderRaw,re::Vector4<float>,4ul>(re::snapshot::BufferDecoder *this, _OWORD *a2)
{
  v3 = this;
  v14 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4);
  if ((v5 - v4) < 8)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5 - v4);
    this = re::snapshot::DecoderRaw::beginArray(v3, &v14);
    if (this)
    {
      if (v14 == 4)
      {
        v11 = 0;
        v12 = -4;
        do
        {
          if (v11 > 3)
          {
            this = re::snapshot::BufferDecoder::error(v3, "Bad data, too many elements: expected %zu, got %d", 4uLL, v11 + 1);
          }

          else
          {
            this = re::snapshot::operator>><re::snapshot::DecoderRaw,float,4ul>(v3, &a2[v11++]);
          }
        }

        while (!__CFADD__(v12++, 1));
        if (v11 != 4)
        {
          return re::snapshot::BufferDecoder::error(v3, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(v3, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  else
  {
    v7 = *v4;
    v6 = (v4 + 1);
    *(this + 3) = v6;
    if (v7 == 64)
    {
      if ((v5 - v6) <= 0x3F)
      {
        return re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v8 = *v6;
        v9 = v6[1];
        v10 = v6[3];
        a2[2] = v6[2];
        a2[3] = v10;
        *a2 = v8;
        a2[1] = v9;
        *(this + 3) += 64;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(this, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  return this;
}

BOOL re::snapshot::DecoderOPACK::field<1,re::Vector4<float> [4]>(__int128 **a1, _OWORD *a2, uint64_t a3)
{
  v5 = re::snapshot::DecoderOPACK::beginField<1>(a1, a2, a3);
  if (v5)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::Vector4<float>,4ul>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v5;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,re::Vector4<float>,4ul>(__int128 **a1, _OWORD *a2)
{
  v10 = 0;
  result = re::snapshot::DecoderOPACK::beginData(a1, &v10, 1);
  if (result)
  {
    if (v10 == 64)
    {
      v5 = a1[3];
      if ((a1[4] - v5) <= 0x3F)
      {
        return re::snapshot::BufferDecoder::error(a1, "overrun: attempted to read %zu bytes, only %zu remaining");
      }

      else
      {
        v6 = *v5;
        v7 = v5[1];
        v8 = v5[3];
        a2[2] = v5[2];
        a2[3] = v8;
        *a2 = v6;
        a2[1] = v7;
        a1[3] += 4;
      }
    }

    else
    {
      return re::snapshot::BufferDecoder::error(a1, "C Array size mismatch: expected %zu, got %zu");
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v10);
    if (result)
    {
      if (v10 == 4)
      {
        v9 = 0;
        if (re::snapshot::DecoderOPACK::endArray(a1, &v10))
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }

        do
        {
          if (v9 > 3)
          {
            re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: expected %zu, got %d", 4uLL, v9 + 1);
          }

          else
          {
            re::internal::opack::decode<float,4>(a1, &a2[v9++]);
          }

          result = re::snapshot::DecoderOPACK::endArray(a1, &v10);
        }

        while (!result);
        if (v9 != 4)
        {
          return re::snapshot::BufferDecoder::error(a1, "size mismatch: expected %zu, got %d");
        }
      }

      else
      {
        return re::snapshot::BufferDecoder::error(a1, "unexpected C Array size: expected %zu, got %zu");
      }
    }
  }

  return result;
}

float32x2_t re::Pose<float>::Pose(uint64_t a1, uint64_t a2, uint64_t a3, int8x16_t *a4)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  v5 = *a4;
  v4 = a4[1];
  v6 = a4[2];
  LODWORD(v7) = HIDWORD(a4[1].i64[0]);
  v8 = COERCE_FLOAT(a4[2].i64[1]);
  v9 = v8 + (COERCE_FLOAT(*a4) + v7);
  if (v9 >= 0.0)
  {
    v17 = sqrtf(v9 + 1.0);
    v18 = v17 + v17;
    v19 = vrecpe_f32(COERCE_UNSIGNED_INT(v17 + v17));
    v20 = vmul_f32(v19, vrecps_f32(COERCE_UNSIGNED_INT(v17 + v17), v19));
    v20.i32[0] = vmul_f32(v20, vrecps_f32(COERCE_UNSIGNED_INT(v17 + v17), v20)).u32[0];
    *&v31 = vmul_n_f32(vsub_f32(vzip1_s32(*&vextq_s8(v4, v4, 8uLL), *v6.i8), vext_s8(*v6.i8, *&vextq_s8(v5, v5, 8uLL), 4uLL)), v20.f32[0]);
    v21.f32[0] = *&v5.i32[1] - *v4.i32;
    v21.f32[1] = v18;
    v20.i32[1] = 0.25;
    result = vmul_f32(v21, v20);
  }

  else if (*v5.i32 < v7 || *v5.i32 < v8)
  {
    v11 = 1.0 - *v5.i32;
    if (v7 >= v8)
    {
      v34 = sqrtf(v7 + (v11 - v8));
      *&v35 = v34 + v34;
      v36 = vrecpe_f32(v35);
      v37 = vmul_f32(v36, vrecps_f32(v35, v36));
      v38.i32[0] = vmul_f32(v37, vrecps_f32(v35, v37)).u32[0];
      v37.f32[0] = *&v5.i32[1] + *v4.i32;
      v37.i32[1] = v35;
      result = vmul_n_f32(vext_s8(vadd_f32(*v6.i8, vdup_laneq_s32(v4, 2)), vsub_f32(*v6.i8, *&vextq_s8(v5, v5, 8uLL)), 4uLL), v38.f32[0]);
      v38.i32[1] = 0.25;
      *&v31 = vmul_f32(v37, v38);
    }

    else
    {
      v12 = sqrtf(v8 + (v11 - v7));
      v13.f32[0] = v12 + v12;
      v14 = vrecpe_f32(COERCE_UNSIGNED_INT(v12 + v12));
      v15 = vmul_f32(v14, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v14));
      v15.i32[0] = vmul_f32(v15, vrecps_f32(COERCE_UNSIGNED_INT(v12 + v12), v15)).u32[0];
      *&v31 = vmul_n_f32(vadd_f32(vzip1_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v4, v4, 8uLL)), *v6.i8), v15.f32[0]);
      v13.f32[1] = *&v5.i32[1] - *v4.i32;
      __asm { FMOV            V0.2S, #0.25 }

      _D0.i32[1] = v15.i32[0];
      result = vmul_f32(v13, _D0);
    }
  }

  else
  {
    v22 = sqrtf(*v5.i32 + ((1.0 - v7) - v8));
    v23.f32[0] = v22 + v22;
    v24 = vrecpe_f32(v23.u32[0]);
    v25 = vmul_f32(v24, vrecps_f32(v23.u32[0], v24));
    LODWORD(v26) = vmul_f32(v25, vrecps_f32(v23.u32[0], v25)).u32[0];
    v23.f32[1] = *&v5.i32[1] + *v4.i32;
    __asm { FMOV            V5.2S, #0.25 }

    _D5.f32[1] = v26;
    *&v31 = vmul_f32(v23, _D5);
    v32.i32[0] = vadd_f32(*&vextq_s8(v5, v5, 8uLL), *v6.i8).u32[0];
    v32.i32[1] = vsub_f32(vdup_laneq_s32(*&v4, 2), *&v6).i32[1];
    result = vmul_n_f32(v32, v26);
  }

  *(&v31 + 1) = result;
  *(a1 + 16) = v31;
  return result;
}

BOOL re::DynamicOffsetF::isInSteadyState(re::DynamicOffsetF *this)
{
  result = re::areAlmostEqual<float>(this, this + 12);
  if (result)
  {
    v3 = *(this + 8);
    v4 = *(this + 20);
    if (v3 != v4 && vabds_f32(v3, v4) >= (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001))
    {
      return 0;
    }

    v5 = *(this + 9);
    v6 = *(this + 21);
    if (v5 != v6 && vabds_f32(v5, v6) >= (((fabsf(v5) + fabsf(v6)) + 1.0) * 0.00001))
    {
      return 0;
    }

    v7 = *(this + 10);
    v8 = *(this + 22);
    if (v7 != v8 && vabds_f32(v7, v8) >= (((fabsf(v7) + fabsf(v8)) + 1.0) * 0.00001))
    {
      return 0;
    }

    result = re::areAlmostEqual<float>(this + 12, this + 24);
    if (!result)
    {
      return result;
    }

    if (((v9 = *(this + 20), v10 = *(this + 32), v9 == v10) || vabds_f32(v9, v10) < (((fabsf(v9) + fabsf(v10)) + 1.0) * 0.00001)) && ((v11 = *(this + 21), v12 = *(this + 33), v11 == v12) || vabds_f32(v11, v12) < (((fabsf(v11) + fabsf(v12)) + 1.0) * 0.00001)))
    {
      v13 = *(this + 22);
      v14 = *(this + 34);
      return v13 == v14 || vabds_f32(v13, v14) < (((fabsf(v13) + fabsf(v14)) + 1.0) * 0.00001);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

float32x4_t re::DynamicOffsetF::calculateConstrainedPose@<Q0>(uint64_t a1@<X0>, int8x16_t *a2@<X1>, float32x4_t *a3@<X8>)
{
  v5 = *(a1 + 144);
  _Q5 = *(a1 + 160);
  v7 = vnegq_f32(_Q5);
  v9 = *a2;
  v8 = a2[1];
  v10 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
  v11 = vdupq_laneq_s32(_Q5, 3);
  _S8 = _Q5.i32[3];
  _Q1 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), _Q5), v8, v10);
  v14 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL), v8, _Q5, 3);
  _Q1.i32[0] = v8.i32[3];
  v15 = vmlsq_laneq_f32(v14, _Q5, v8, 3);
  __asm { FMLA            S0, S1, V5.S[3] }

  _Q19 = v15;
  *&_Q19.i32[3] = _S0;
  v23 = *(a1 + 224);
  v22 = *(a1 + 240);
  v24 = *(a1 + 272);
  if (v24 != -3.4028e38 || *(a1 + 276) != 3.4028e38)
  {
    v68 = *(a1 + 224);
    v69 = *(a1 + 240);
    v70 = *a2;
    v71 = v10;
    v72 = v7;
    v73 = v11;
    v74 = *(a1 + 160);
    v75 = *(a1 + 144);
    v25 = fabsf(_S0);
    if (v25 <= 1.0 || fabsf(v25 + -1.0) < (((v25 + 1.0) + 1.0) * 0.00001))
    {
      if (_S0 > 1.0)
      {
        _S0 = 1.0;
      }

      if (_S0 < -1.0)
      {
        _S0 = -1.0;
      }

      v65 = v15;
      v66 = _Q19;
      v27 = acosf(_S0);
      v15 = v65;
      _Q19 = v66;
      v26 = v27 + v27;
    }

    else
    {
      v26 = NAN;
    }

    v28 = vmulq_f32(_Q19, _Q19);
    v29 = v28.f32[2] + vaddv_f32(*v28.f32);
    v30 = 0uLL;
    if (fabsf(v29) >= 1.0e-10)
    {
      v31 = v29;
      v32 = vrsqrte_f32(LODWORD(v29));
      v33 = vmul_f32(v32, vrsqrts_f32(LODWORD(v31), vmul_f32(v32, v32)));
      v30 = vmulq_n_f32(v15, vmul_f32(v33, vrsqrts_f32(LODWORD(v31), vmul_f32(v33, v33))).f32[0]);
    }

    v34 = *(a1 + 256);
    v35 = vmulq_f32(v30, v34);
    if ((v35.f32[2] + vaddv_f32(*v35.f32)) < 0.0)
    {
      v26 = -v26;
    }

    if (v26 < v24)
    {
      v26 = v24;
    }

    if (v26 > *(a1 + 276))
    {
      v26 = *(a1 + 276);
    }

    v36 = vmulq_f32(v34, v34);
    v37 = v36.f32[2] + vaddv_f32(*v36.f32);
    if (fabsf(v37) >= 1.0e-10)
    {
      v38 = v37;
      v39 = vrsqrte_f32(LODWORD(v37));
      v40 = vmul_f32(v39, vrsqrts_f32(LODWORD(v38), vmul_f32(v39, v39)));
      v34 = vmulq_n_f32(v34, vmul_f32(v40, vrsqrts_f32(LODWORD(v38), vmul_f32(v40, v40))).f32[0]);
    }

    v67 = v34;
    v41 = __sincosf_stret(v26 * 0.5);
    v23 = v68;
    _Q19.i64[0] = vmulq_n_f32(v67, v41.__sinval).u64[0];
    _Q19.i64[1] = __PAIR64__(LODWORD(v41.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v41.__sinval, v67, 2)));
    _Q5 = v74;
    v5 = v75;
    v11 = v73;
    v10 = v71;
    v7 = v72;
    v22 = v69;
    v9 = v70;
  }

  v42 = vnegq_f32(v5);
  v43 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v42, v42), v42, 0xCuLL), _Q5), v10, v5);
  v44 = vaddq_f32(v43, v43);
  v45 = vextq_s8(vuzp1q_s32(v44, v44), v44, 0xCuLL);
  v46 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v45, v45), v45, 0xCuLL), _Q5), v45, v10);
  v47 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v45, _Q5, 3), v5), vextq_s8(vuzp1q_s32(v46, v46), v46, 0xCuLL));
  v48 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), _Q5), v9, v10);
  v49 = vaddq_f32(v48, v48);
  v50 = vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL);
  v51 = vaddq_f32(v9, vmulq_laneq_f32(v50, _Q5, 3));
  v52 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v50, v50), v50, 0xCuLL), _Q5), v50, v10);
  v53 = vaddq_f32(v47, vaddq_f32(v51, vextq_s8(vuzp1q_s32(v52, v52), v52, 0xCuLL)));
  v53.i32[3] = 0;
  v23.i32[3] = 0;
  v54 = vmaxnmq_f32(v53, v23);
  v54.i32[3] = 0;
  v22.i32[3] = 0;
  v55 = vminnmq_f32(v54, v22);
  v56 = vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL);
  v57 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v55, v55), v55, 0xCuLL), v7), v55, v56);
  v58 = vaddq_f32(v57, v57);
  v59 = vextq_s8(vuzp1q_s32(v58, v58), v58, 0xCuLL);
  v60 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v59, v59), v59, 0xCuLL), v7), v59, v56);
  v61 = vaddq_f32(vaddq_f32(v55, vmulq_laneq_f32(v59, _Q5, 3)), vextq_s8(vuzp1q_s32(v60, v60), v60, 0xCuLL));
  _Q2 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q19, _Q19), _Q19, 0xCuLL), v7), _Q19, v56);
  v63 = vmlaq_laneq_f32(vmlaq_f32(vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL), _Q19, v11), _Q5, _Q19, 3);
  __asm { FMLA            S2, S8, V19.S[3] }

  v63.i32[3] = _Q2.i32[0];
  result = vaddq_f32(v5, v61);
  *a3 = result;
  a3[1] = v63;
  return result;
}

void re::DynamicOffsetF::step(re::DynamicOffsetF *this, float a2, int32x2_t a3)
{
  if (*(this + 528))
  {
    return;
  }

  *a3.i32 = a2;
  v184 = *this;
  v174 = *(this + 1);
  v175 = *(this + 2);
  v194 = a3;
  v4 = powf(*(this + 46), a2);
  v5 = powf(*(this + 52), *v194.i32);
  v181 = powf(*(this + 48), *v194.i32);
  LODWORD(v188) = *(this + 196);
  v169 = powf(COERCE_FLOAT(HIDWORD(*(this + 196))), *v194.i32);
  v185 = powf(v188, *v194.i32);
  LODWORD(v176) = *(this + 22);
  v189 = powf(COERCE_FLOAT(HIDWORD(*(this + 22))), *v194.i32);
  v6.f32[0] = powf(v176, *v194.i32);
  v6.f32[1] = v189;
  __asm { FMOV            V15.2S, #1.0 }

  v190 = v6;
  v177 = vsub_f32(_D15, v6);
  v12 = vmla_f32(vmul_f32(v6, *(this + 48)), v177, *(this + 96));
  *(this + 6) = v12;
  v13 = 1.0;
  v165 = (v4 * *(this + 14)) + (*(this + 26) * (1.0 - v4));
  *(this + 14) = v165;
  v14 = *(this + 7);
  v15 = *(this + 4);
  v16 = vmulq_f32(v14, v15);
  v17 = vextq_s8(v16, v16, 8uLL);
  *v16.i8 = vadd_f32(*v16.i8, *v17.f32);
  *v16.i32 = vaddv_f32(*v16.i8);
  v17.i64[0] = 0;
  v18 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v16, v17)), 0), vnegq_f32(v15), v15);
  v19 = 1.0 - v5;
  v20 = vsubq_f32(v14, v18);
  v21 = vmulq_f32(v20, v20);
  v162 = v18;
  v163 = v14;
  v22 = vaddq_f32(v14, v18);
  v23 = vmulq_f32(v22, v22);
  v24 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL)))));
  v25 = v24 + v24;
  _ZF = (v24 + v24) == 0.0;
  v26 = 1.0;
  if (!_ZF)
  {
    v26 = sinf(v25) / v25;
  }

  v27 = v26;
  v28 = vrecpe_f32(LODWORD(v26));
  v29 = vmul_f32(v28, vrecps_f32(LODWORD(v27), v28));
  LODWORD(v30) = vmul_f32(v29, vrecps_f32(LODWORD(v27), v29)).u32[0];
  if ((v19 * v25) != 0.0)
  {
    v158 = v30;
    v31 = sinf(v19 * v25);
    v30 = v158;
    v13 = v31 / (v19 * v25);
  }

  v186 = __PAIR64__(LODWORD(v169), LODWORD(v185));
  v32 = v186;
  *v32.i32 = v19 * (v30 * v13);
  v33 = vdupq_lane_s32(v32, 0);
  v34 = v5 * v25;
  v35 = 1.0;
  if (v34 != 0.0)
  {
    v159 = v30;
    v170 = v33;
    v36 = sinf(v34);
    v33 = v170;
    v30 = v159;
    v35 = v36 / v34;
  }

  v37 = vmlaq_f32(vmulq_n_f32(v162, v5 * (v30 * v35)), v163, v33);
  v38 = vmulq_f32(v37, v37);
  v39 = vadd_f32(*v38.i8, *&vextq_s8(v38, v38, 8uLL));
  if (vaddv_f32(v39) == 0.0)
  {
    v40 = xmmword_1E30474D0;
  }

  else
  {
    v41 = vadd_f32(v39, vdup_lane_s32(v39, 1)).u32[0];
    v42 = vrsqrte_f32(v41);
    v43 = vmul_f32(v42, vrsqrts_f32(v41, vmul_f32(v42, v42)));
    v40 = vmulq_n_f32(v37, vmul_f32(v43, vrsqrts_f32(v41, vmul_f32(v43, v43))).f32[0]);
  }

  v44 = vmulq_f32(v40, v40);
  *v44.i8 = vadd_f32(*v44.i8, *&vextq_s8(v44, v44, 8uLL));
  v44.i32[0] = vadd_f32(*v44.i8, vdup_lane_s32(*v44.i8, 1)).u32[0];
  v45 = vrsqrte_f32(v44.u32[0]);
  v46 = vmul_f32(v45, vrsqrts_f32(v44.u32[0], vmul_f32(v45, v45)));
  v47 = vmulq_n_f32(v40, vmul_f32(v46, vrsqrts_f32(v44.u32[0], vmul_f32(v46, v46))).f32[0]);
  *(this + 4) = v47;
  v48 = 1.0;
  v49 = (v181 * *(this + 20)) + (*(this + 32) * (1.0 - v181));
  *(this + 20) = v49;
  v171 = _D15;
  v164 = vsub_f32(_D15, v186);
  v50 = vmla_f32(vmul_f32(v186, *(this + 84)), v164, *(this + 132));
  *(this + 84) = v50;
  v178 = vmla_f32(vmul_f32(*v184.f32, v190), v177, v12);
  *this = v178;
  v51 = (v184.f32[2] * v4) + (v165 * (1.0 - v4));
  *(this + 2) = v51;
  v52 = vmulq_f32(v174, v47);
  v53 = vextq_s8(v52, v52, 8uLL);
  *v52.i8 = vadd_f32(*v52.i8, *v53.f32);
  *v52.i32 = vaddv_f32(*v52.i8);
  v53.i64[0] = 0;
  v166 = vnegq_f32(v174);
  v54 = vbslq_s8(vdupq_lane_s32(*&vmvnq_s8(vcgeq_f32(v52, v53)), 0), v166, v174);
  v55 = vsubq_f32(v47, v54);
  v56 = vmulq_f32(v55, v55);
  v191 = v47;
  v167 = v54;
  v57 = vaddq_f32(v47, v54);
  v58 = vmulq_f32(v57, v57);
  v59 = atan2f(sqrtf(vaddv_f32(vadd_f32(*v56.i8, *&vextq_s8(v56, v56, 8uLL)))), sqrtf(vaddv_f32(vadd_f32(*v58.i8, *&vextq_s8(v58, v58, 8uLL)))));
  v60 = v59 + v59;
  _ZF = (v59 + v59) == 0.0;
  v61 = 1.0;
  if (!_ZF)
  {
    v61 = sinf(v60) / v60;
  }

  v62 = v61;
  v63 = vrecpe_f32(LODWORD(v61));
  v64 = vmul_f32(v63, vrecps_f32(LODWORD(v62), v63));
  LODWORD(v65) = vmul_f32(v64, vrecps_f32(LODWORD(v62), v64)).u32[0];
  if ((v19 * v60) != 0.0)
  {
    v160 = v65;
    *v64.i32 = sinf(v19 * v60);
    v65 = v160;
    v48 = *v64.i32 / (v19 * v60);
  }

  *v64.i32 = v19 * (v65 * v48);
  v66 = vdupq_lane_s32(v64, 0);
  v67 = v5 * v60;
  v68 = 1.0;
  if (v67 != 0.0)
  {
    v157 = v66;
    v161 = v65;
    v69 = sinf(v67);
    v66 = v157;
    v65 = v161;
    v68 = v69 / v67;
  }

  v70 = vmlaq_f32(vmulq_n_f32(v167, v5 * (v65 * v68)), v191, v66);
  v71 = vmulq_f32(v70, v70);
  v72 = vadd_f32(*v71.i8, *&vextq_s8(v71, v71, 8uLL));
  if (vaddv_f32(v72) == 0.0)
  {
    v73 = xmmword_1E30474D0;
  }

  else
  {
    v74 = vadd_f32(v72, vdup_lane_s32(v72, 1)).u32[0];
    v75 = vrsqrte_f32(v74);
    v76 = vmul_f32(v75, vrsqrts_f32(v74, vmul_f32(v75, v75)));
    v73 = vmulq_n_f32(v70, vmul_f32(v76, vrsqrts_f32(v74, vmul_f32(v76, v76))).f32[0]);
  }

  v77 = vmulq_f32(v73, v73);
  *v77.i8 = vadd_f32(*v77.i8, *&vextq_s8(v77, v77, 8uLL));
  v77.i32[0] = vadd_f32(*v77.i8, vdup_lane_s32(*v77.i8, 1)).u32[0];
  v78 = vrsqrte_f32(v77.u32[0]);
  v79 = vmul_f32(v78, vrsqrts_f32(v77.u32[0], vmul_f32(v78, v78)));
  v192 = vmulq_n_f32(v73, vmul_f32(v79, vrsqrts_f32(v77.u32[0], vmul_f32(v79, v79))).f32[0]);
  *(this + 1) = v192;
  *(this + 8) = (*v175.i32 * v181) + (v49 * (1.0 - v181));
  v80 = vmla_f32(vmul_f32(*&vextq_s8(v175, v175, 4uLL), v186), v164, v50);
  *(this + 36) = v80;
  re::DynamicOffsetF::calculateConstrainedPose(this, this, &v196);
  v81 = *(this + 2);
  v187 = v81;
  v81.i32[3] = 0;
  v82 = *(this + 18);
  v84 = *(this + 19);
  v82.i32[3] = 0;
  v83 = vmaxnmq_f32(v81, v82);
  v83.i32[3] = 0;
  v84.i32[3] = 0;
  v85 = v196.f32[0];
  if (v178.f32[0] != v196.f32[0] && vabds_f32(v178.f32[0], v196.f32[0]) >= (((fabsf(v178.f32[0]) + fabsf(v196.f32[0])) + 1.0) * 0.00001))
  {
    v86 = v171;
LABEL_28:
    v87 = *(this + 89);
    v88 = *(this + 90);
    v182 = v84;
    v172 = v83;
    v89 = powf(1.0 - *(this + 88), *v194.i32);
    *(this + 24) = (v85 * v89) + (v178.f32[0] * (1.0 - v89));
    _S1 = 1.0 - powf(1.0 - v87, *v194.i32);
    _V2.S[1] = v178.i32[1];
    __asm { FMLA            S0, S1, V2.S[1] }

    *(this + 25) = _S0;
    v93 = v196.f32[2];
    v94 = powf(1.0 - v88, *v194.i32);
    v83 = v172;
    v84 = v182;
    *(this + 26) = (v94 * v93) + (v51 * (1.0 - v94));
    goto LABEL_29;
  }

  v86 = v171;
  if (v178.f32[1] != v196.f32[1] && vabds_f32(v178.f32[1], v196.f32[1]) >= (((fabsf(v178.f32[1]) + fabsf(v196.f32[1])) + 1.0) * 0.00001) || v51 != v196.f32[2] && vabds_f32(v51, v196.f32[2]) >= (((fabsf(v51) + fabsf(v196.f32[2])) + 1.0) * 0.00001))
  {
    goto LABEL_28;
  }

LABEL_29:
  v95 = vminnmq_f32(v83, v84);
  v183 = v95;
  if (*v192.i32 != v197.f32[0] && vabds_f32(*v192.i32, v197.f32[0]) >= (((fabsf(*v192.i32) + fabsf(v197.f32[0])) + 1.0) * 0.00001) || *&v192.i32[1] != v197.f32[1] && vabds_f32(*&v192.i32[1], v197.f32[1]) >= (((fabsf(*&v192.i32[1]) + fabsf(v197.f32[1])) + 1.0) * 0.00001) || *&v192.i32[2] != v197.f32[2] && vabds_f32(*&v192.i32[2], v197.f32[2]) >= (((fabsf(*&v192.i32[2]) + fabsf(v197.f32[2])) + 1.0) * 0.00001) || *&v192.i32[3] != v197.f32[3] && vabds_f32(*&v192.i32[3], v197.f32[3]) >= (((fabsf(*&v192.i32[3]) + fabsf(v197.f32[3])) + 1.0) * 0.00001))
  {
    v96 = powf(1.0 - *(this + 94), *v194.i32);
    v97 = v197.f32[3];
    v98 = fabsf(v197.f32[3]);
    if (v98 <= 1.0 || fabsf(v98 + -1.0) < (((v98 + 1.0) + 1.0) * 0.00001))
    {
      if (v197.f32[3] > 1.0)
      {
        v97 = 1.0;
      }

      if (v97 < -1.0)
      {
        v97 = -1.0;
      }

      v100 = acosf(v97);
      v99 = v100 + v100;
    }

    else
    {
      v99 = NAN;
    }

    v101 = vmulq_f32(v197, v197);
    v102 = v101.f32[2] + vaddv_f32(*v101.f32);
    v103 = 0uLL;
    if (fabsf(v102) >= 1.0e-10)
    {
      v104 = v102;
      v105 = vrsqrte_f32(LODWORD(v102));
      v106 = vmul_f32(v105, vrsqrts_f32(LODWORD(v104), vmul_f32(v105, v105)));
      v103 = vmulq_n_f32(v197, vmul_f32(v106, vrsqrts_f32(LODWORD(v104), vmul_f32(v106, v106))).f32[0]);
    }

    v107 = *(this + 16);
    v108 = vmulq_f32(v103, v107);
    if ((v108.f32[2] + vaddv_f32(*v108.f32)) >= 0.0)
    {
      v109 = v99;
    }

    else
    {
      v109 = -v99;
    }

    v110 = fabsf(*&v192.i32[3]);
    v111 = 1.0;
    v179 = *(this + 16);
    if (v110 <= 1.0 || fabsf(v110 + -1.0) < (((v110 + 1.0) + 1.0) * 0.00001))
    {
      if (*&v192.i32[3] <= 1.0)
      {
        v111 = *&v192.i32[3];
      }

      if (v111 < -1.0)
      {
        v111 = -1.0;
      }

      v113 = acosf(v111);
      v107 = v179;
      v112 = v113 + v113;
    }

    else
    {
      v112 = NAN;
    }

    v114 = vmulq_f32(v192, v192);
    v115 = v114.f32[2] + vaddv_f32(*v114.f32);
    v116 = 0uLL;
    if (fabsf(v115) >= 1.0e-10)
    {
      v117 = v115;
      v118 = vrsqrte_f32(LODWORD(v115));
      v119 = vmul_f32(v118, vrsqrts_f32(LODWORD(v117), vmul_f32(v118, v118)));
      v116 = vmulq_n_f32(v192, vmul_f32(v119, vrsqrts_f32(LODWORD(v117), vmul_f32(v119, v119))).f32[0]);
    }

    v120 = vmulq_f32(v107, v116);
    if ((v120.f32[2] + vaddv_f32(*v120.f32)) < 0.0)
    {
      v112 = -v112;
    }

    v121 = (v96 * v109) + (v112 * (1.0 - v96));
    v122 = vmulq_f32(v107, v107);
    v123 = v122.f32[2] + vaddv_f32(*v122.f32);
    if (fabsf(v123) >= 1.0e-10)
    {
      v124 = v123;
      v125 = vrsqrte_f32(LODWORD(v123));
      v126 = vmul_f32(v125, vrsqrts_f32(LODWORD(v124), vmul_f32(v125, v125)));
      v179 = vmulq_n_f32(v107, vmul_f32(v126, vrsqrts_f32(LODWORD(v124), vmul_f32(v126, v126))).f32[0]);
    }

    v127 = __sincosf_stret(v121 * 0.5);
    v95 = v183;
    *&v128 = vmulq_n_f32(v179, v127.__sinval).u64[0];
    *(&v128 + 1) = __PAIR64__(LODWORD(v127.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v127.__sinval, v179, 2)));
    *(this + 7) = v128;
  }

  v129 = v187;
  if ((vmovn_s32(vceqq_f32(v187, v95)).u8[0] & 1) == 0 && fabsf(vsubq_f32(v187, v95).f32[0]) >= (((fabsf(v187.f32[0]) + fabsf(v95.f32[0])) + 1.0) * 0.00001) || v187.f32[1] != v95.f32[1] && vabds_f32(v187.f32[1], v95.f32[1]) >= (((fabsf(v187.f32[1]) + fabsf(v95.f32[1])) + 1.0) * 0.00001) || v187.f32[2] != v95.f32[2] && vabds_f32(v187.f32[2], v95.f32[2]) >= (((fabsf(v187.f32[2]) + fabsf(v95.f32[2])) + 1.0) * 0.00001))
  {
    v180 = vdup_lane_s32(v194, 0);
    v130 = powf(1.0 - *(this + 104), *v194.i32);
    *(this + 32) = (*v183.i32 * v130) + (v187.f32[0] * (1.0 - v130));
    v131 = vsub_f32(v86, *(this + 420));
    v168 = v131.f32[0];
    v173 = powf(v131.f32[1], *&v180.i32[1]);
    v132.f32[0] = powf(v168, *v180.i32);
    v129 = v187;
    v132.f32[1] = v173;
    *(this + 132) = vmla_f32(vmul_f32(*&vextq_s8(v183, v183, 4uLL), v132), vsub_f32(v86, v132), v80);
  }

  if (*v194.i32 > 0.0)
  {
    *(this + 27) = vdivq_f32(vsubq_f32(*this, v184), vdupq_lane_s32(v194, 0));
    v133 = vmulq_f32(v174, v174);
    v134 = vaddv_f32(vadd_f32(*v133.i8, *&vextq_s8(v133, v133, 8uLL)));
    v135 = 1.0;
    v136 = 1.0 / v134;
    v137 = vmuls_lane_f32(v136, v174, 3);
    v138 = vmulq_n_f32(v166, v136);
    v139 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v192, v192), v192, 0xCuLL), vnegq_f32(v138)), v192, vextq_s8(vuzp1q_s32(v138, v138), v138, 0xCuLL));
    v140 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v139, v139), v139, 0xCuLL), v192, v137), v138, v192, 3);
    v141 = vmulq_f32(v138, v192);
    v140.f32[3] = -((v141.f32[2] + vaddv_f32(*v141.f32)) - (v137 * *&v192.i32[3]));
    v142 = vmulq_f32(v140, v140);
    *v142.i8 = vadd_f32(*v142.i8, *&vextq_s8(v142, v142, 8uLL));
    v142.i32[0] = vadd_f32(*v142.i8, vdup_lane_s32(*v142.i8, 1)).u32[0];
    v143 = vrsqrte_f32(v142.u32[0]);
    v144 = vmul_f32(v143, vrsqrts_f32(v142.u32[0], vmul_f32(v143, v143)));
    v145 = vmulq_n_f32(v140, vmul_f32(v144, vrsqrts_f32(v142.u32[0], vmul_f32(v144, v144))).f32[0]);
    v146 = fabsf(v145.f32[3]);
    v147 = vdupq_lane_s32(v194, 0);
    if (v146 <= 1.0 || fabsf(v146 + -1.0) < (((v146 + 1.0) + 1.0) * 0.00001))
    {
      if (v145.f32[3] <= 1.0)
      {
        v135 = v145.f32[3];
      }

      if (v135 < -1.0)
      {
        v135 = -1.0;
      }

      v193 = v145;
      v195 = v147;
      v149 = acosf(v135);
      v145 = v193;
      v147 = v195;
      v129 = v187;
      v148 = v149 + v149;
      v150 = 0uLL;
      if (v148 == 0.0)
      {
        goto LABEL_84;
      }
    }

    else
    {
      v148 = NAN;
    }

    v151 = vmulq_f32(v145, v145);
    v152 = v151.f32[2] + vaddv_f32(*v151.f32);
    v153 = 0uLL;
    if (fabsf(v152) >= 1.0e-10)
    {
      v154 = v152;
      v155 = vrsqrte_f32(LODWORD(v152));
      v156 = vmul_f32(v155, vrsqrts_f32(LODWORD(v154), vmul_f32(v155, v155)));
      v153 = vmulq_n_f32(v145, vmul_f32(v156, vrsqrts_f32(LODWORD(v154), vmul_f32(v156, v156))).f32[0]);
    }

    v150 = vdivq_f32(vmulq_n_f32(v153, v148), v147);
LABEL_84:
    *(this + 28) = v150;
    *(this + 29) = vdivq_f32(vsubq_f32(v129, v175), v147);
  }
}

void re::DynamicOffsetF::updateInteraction(uint64_t a1, uint64_t a2, float32x4_t *a3, double a4)
{
  v91 = *a1;
  v93 = *(a1 + 16);
  v5 = (a1 + 32);
  v95 = *(a1 + 32);
  v6 = *(a2 + 16);
  v101 = *a2;
  v102 = v6;
  v100 = *a3;
  re::DynamicOffsetF::calculateConstrainedPose(a1, &v101, &v98);
  v7 = v100;
  v8 = v100;
  v8.i32[3] = 0;
  v9 = *(a1 + 288);
  v10 = *(a1 + 304);
  v9.i32[3] = 0;
  v11 = vmaxnmq_f32(v8, v9);
  v11.i32[3] = 0;
  v10.i32[3] = 0;
  v12 = vminnmq_f32(v11, v10);
  v97 = v12;
  if (v98.f32[0] != *v101.i32 && vabds_f32(v98.f32[0], *v101.i32) >= (((fabsf(v98.f32[0]) + fabsf(*v101.i32)) + 1.0) * 0.00001) || v98.f32[1] != *&v101.i32[1] && vabds_f32(v98.f32[1], *&v101.i32[1]) >= (((fabsf(v98.f32[1]) + fabsf(*&v101.i32[1])) + 1.0) * 0.00001) || v98.f32[2] != *&v101.i32[2] && vabds_f32(v98.f32[2], *&v101.i32[2]) >= (((fabsf(v98.f32[2]) + fabsf(*&v101.i32[2])) + 1.0) * 0.00001))
  {
    v13 = (a1 + 336);
    v14 = &v101;
    v15 = &v98;
    v16 = 3;
    do
    {
      v17 = *(v13 - 4);
      if (v17 > 0.0)
      {
        if (v15->f32[0] > *v14)
        {
          v17 = -v17;
        }

        *v14 = *v14 + ((((-1.0 / (((v15->f32[0] - *v14) / v17) + -1.0)) + -1.0) / *v13) / v17);
      }

      ++v13;
      ++v14;
      v15 = (v15 + 4);
      --v16;
    }

    while (v16);
  }

  if (v99.f32[0] != *&v102 && vabds_f32(v99.f32[0], *&v102) >= (((fabsf(v99.f32[0]) + fabsf(*&v102)) + 1.0) * 0.00001) || v99.f32[1] != *(&v102 + 1) && vabds_f32(v99.f32[1], *(&v102 + 1)) >= (((fabsf(v99.f32[1]) + fabsf(*(&v102 + 1))) + 1.0) * 0.00001) || v99.f32[2] != *(&v102 + 2) && vabds_f32(v99.f32[2], *(&v102 + 2)) >= (((fabsf(v99.f32[2]) + fabsf(*(&v102 + 2))) + 1.0) * 0.00001) || v99.f32[3] != *(&v102 + 3) && vabds_f32(v99.f32[3], *(&v102 + 3)) >= (((fabsf(v99.f32[3]) + fabsf(*(&v102 + 3))) + 1.0) * 0.00001))
  {
    v18 = *(a1 + 368);
    if (v18 > 0.0)
    {
      v89 = v12;
      v90 = v7;
      v19 = v99.f32[3];
      v20 = fabsf(v99.f32[3]);
      if (v20 <= 1.0 || fabsf(v20 + -1.0) < (((v20 + 1.0) + 1.0) * 0.00001))
      {
        if (v99.f32[3] > 1.0)
        {
          v19 = 1.0;
        }

        if (v19 < -1.0)
        {
          v19 = -1.0;
        }

        v22 = acosf(v19);
        v21 = v22 + v22;
      }

      else
      {
        v21 = NAN;
      }

      v23 = vmulq_f32(v99, v99);
      v24 = v23.f32[2] + vaddv_f32(*v23.f32);
      v25 = 0uLL;
      if (fabsf(v24) >= 1.0e-10)
      {
        v26 = v24;
        v27 = vrsqrte_f32(LODWORD(v24));
        v28 = vmul_f32(v27, vrsqrts_f32(LODWORD(v26), vmul_f32(v27, v27)));
        v25 = vmulq_n_f32(v99, vmul_f32(v28, vrsqrts_f32(LODWORD(v26), vmul_f32(v28, v28))).f32[0]);
      }

      v29 = *(&v102 + 3);
      v30 = fabsf(*(&v102 + 3));
      if (v30 <= 1.0 || fabsf(v30 + -1.0) < (((v30 + 1.0) + 1.0) * 0.00001))
      {
        if (*(&v102 + 3) > 1.0)
        {
          v29 = 1.0;
        }

        if (v29 < -1.0)
        {
          v29 = -1.0;
        }

        v87 = v25;
        v32 = acosf(v29);
        v25 = v87;
        v31 = v32 + v32;
      }

      else
      {
        v31 = NAN;
      }

      v33 = *(a1 + 256);
      v34 = vmulq_f32(v25, v33);
      if ((v34.f32[2] + vaddv_f32(*v34.f32)) < 0.0)
      {
        v31 = -v31;
      }

      v35 = -v18;
      if (v21 <= v31)
      {
        v35 = v18;
      }

      v36 = v31 + ((((-1.0 / (((v21 - v31) / v35) + -1.0)) + -1.0) / *(a1 + 372)) / v35);
      v37 = vmulq_f32(v33, v33);
      v38 = v37.f32[2] + vaddv_f32(*v37.f32);
      if (fabsf(v38) >= 1.0e-10)
      {
        v39 = v38;
        v40 = vrsqrte_f32(LODWORD(v38));
        v41 = vmul_f32(v40, vrsqrts_f32(LODWORD(v39), vmul_f32(v40, v40)));
        v33 = vmulq_n_f32(v33, vmul_f32(v41, vrsqrts_f32(LODWORD(v39), vmul_f32(v41, v41))).f32[0]);
      }

      v88 = v33;
      v42 = __sincosf_stret(v36 * 0.5);
      v12 = v89;
      *&v43 = vmulq_n_f32(v88, v42.__sinval).u64[0];
      *(&v43 + 1) = __PAIR64__(LODWORD(v42.__cosval), COERCE_UNSIGNED_INT(vmuls_lane_f32(v42.__sinval, v88, 2)));
      v102 = v43;
      v7 = v90;
    }
  }

  if ((vmovn_s32(vceqq_f32(v12, v7)).u8[0] & 1) == 0 && fabsf(vsubq_f32(v12, v7).f32[0]) >= (((fabsf(v7.f32[0]) + fabsf(v12.f32[0])) + 1.0) * 0.00001) || v12.f32[1] != v7.f32[1] && vabds_f32(v12.f32[1], v7.f32[1]) >= (((fabsf(v7.f32[1]) + fabsf(v12.f32[1])) + 1.0) * 0.00001) || v12.f32[2] != v7.f32[2] && vabds_f32(v12.f32[2], v7.f32[2]) >= (((fabsf(v7.f32[2]) + fabsf(v12.f32[2])) + 1.0) * 0.00001))
  {
    v44 = (a1 + 400);
    v45 = &v100;
    v46 = &v97;
    v47 = 3;
    do
    {
      v48 = *(v44 - 4);
      if (v48 > 0.0)
      {
        if (*v46 > *v45)
        {
          v48 = -v48;
        }

        *v45 = *v45 + ((((-1.0 / (((*v46 - *v45) / v48) + -1.0)) + -1.0) / *v44) / v48);
      }

      ++v44;
      ++v45;
      ++v46;
      --v47;
    }

    while (v47);
  }

  v49 = v102;
  *a1 = v101;
  *(a1 + 16) = v49;
  *v5 = v100;
  if (*&a4 > 0.0)
  {
    v50 = vdupq_lane_s32(*&a4, 0);
    v51 = vdivq_f32(vsubq_f32(*a1, v91), v50);
    v52 = vmulq_f32(v51, v51);
    if (sqrtf(v52.f32[2] + vaddv_f32(*v52.f32)) > 0.008)
    {
      __asm { FMOV            V2.4S, #0.25 }

      v58 = vmulq_f32(*(a1 + 432), _Q2);
      __asm { FMOV            V2.4S, #0.75 }

      *(a1 + 480) = *(a1 + 432);
      *(a1 + 432) = vmlaq_f32(v58, _Q2, v51);
    }

    v60 = vmulq_f32(v93, v93);
    v61 = vaddv_f32(vadd_f32(*v60.i8, *&vextq_s8(v60, v60, 8uLL)));
    v62 = 1.0;
    v63 = 1.0 / v61;
    _S2 = vmuls_lane_f32(v63, v93, 3);
    _Q1 = vmulq_n_f32(vnegq_f32(v93), v63);
    _Q3 = *(a1 + 16);
    v67 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), vnegq_f32(_Q1)), _Q3, vextq_s8(vuzp1q_s32(_Q1, _Q1), _Q1, 0xCuLL));
    v68 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL), _Q3, _S2), _Q1, _Q3, 3);
    __asm { FMLA            S1, S2, V3.S[3] }

    v68.i32[3] = _Q1.i32[0];
    v69 = vmulq_f32(v68, v68);
    *v69.i8 = vadd_f32(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
    v69.i32[0] = vadd_f32(*v69.i8, vdup_lane_s32(*v69.i8, 1)).u32[0];
    v70 = vrsqrte_f32(v69.u32[0]);
    v71 = vmul_f32(v70, vrsqrts_f32(v69.u32[0], vmul_f32(v70, v70)));
    v72 = vmulq_n_f32(v68, vmul_f32(v71, vrsqrts_f32(v69.u32[0], vmul_f32(v71, v71))).f32[0]);
    v73 = fabsf(v72.f32[3]);
    if (v73 <= 1.0 || fabsf(v73 + -1.0) < (((v73 + 1.0) + 1.0) * 0.00001))
    {
      if (v72.f32[3] <= 1.0)
      {
        v62 = v72.f32[3];
      }

      if (v62 < -1.0)
      {
        v62 = -1.0;
      }

      v92 = v72;
      v94 = v50;
      v75 = acosf(v62);
      v72 = v92;
      v50 = v94;
      v74 = v75 + v75;
    }

    else
    {
      v74 = NAN;
    }

    if (v74 > 0.008)
    {
      v76 = vmulq_f32(v72, v72);
      v77 = v76.f32[2] + vaddv_f32(*v76.f32);
      v78 = 0uLL;
      if (fabsf(v77) >= 1.0e-10)
      {
        v79 = v77;
        v80 = vrsqrte_f32(LODWORD(v77));
        v81 = vmul_f32(v80, vrsqrts_f32(LODWORD(v79), vmul_f32(v80, v80)));
        v78 = vmulq_n_f32(v72, vmul_f32(v81, vrsqrts_f32(LODWORD(v79), vmul_f32(v81, v81))).f32[0]);
      }

      *(a1 + 496) = *(a1 + 448);
      *(a1 + 448) = vdivq_f32(vmulq_n_f32(v78, v74), vdupq_lane_s32(*&a4, 0));
    }

    v82 = vdivq_f32(vsubq_f32(*v5, v95), v50);
    v83 = vmulq_f32(v82, v82);
    if (sqrtf(v83.f32[2] + vaddv_f32(*v83.f32)) > 0.008)
    {
      __asm { FMOV            V2.4S, #0.25 }

      v85 = vmulq_f32(*(a1 + 464), _Q2);
      __asm { FMOV            V2.4S, #0.75 }

      *(a1 + 512) = *(a1 + 464);
      *(a1 + 464) = vmlaq_f32(v85, _Q2, v82);
    }
  }
}

__n128 re::DynamicOffsetF::endInteraction(float32x4_t *this, float a2)
{
  __asm
  {
    FMOV            V1.4S, #0.25
    FMOV            V4.4S, #0.75
  }

  if (!_ZF)
  {
    this[27] = vmlaq_f32(vmulq_f32(this[30], _Q1), _Q4, this[27]);
  }

  if (this[31].f32[0] != 3.4028e38)
  {
    this[28] = vmlaq_f32(vmulq_f32(this[31], _Q1), _Q4, this[28]);
  }

  if (this[32].f32[0] != 3.4028e38)
  {
    this[29] = vmlaq_f32(vmulq_f32(this[32], _Q1), _Q4, this[29]);
  }

  this[3] = vaddq_f32(*this, vmulq_n_f32(this[27], a2));
  v9 = this + 3;
  v10 = this[28];
  v11 = vmulq_f32(v10, v10);
  v11.f32[0] = sqrtf(v11.f32[2] + vaddv_f32(*v11.f32));
  if (v11.f32[0] == 0.0)
  {
    this[4] = this[1];
  }

  else
  {
    v12 = vdivq_f32(v10, vdupq_lane_s32(*v11.f32, 0));
    v29 = a2;
    v13 = v11.f32[0] * a2;
    v14 = vmulq_f32(v12, v12);
    v15 = v14.f32[2] + vaddv_f32(*v14.f32);
    if (fabsf(v15) >= 1.0e-10)
    {
      v16 = v15;
      v17 = vrsqrte_f32(LODWORD(v15));
      v18 = vmul_f32(v17, vrsqrts_f32(LODWORD(v16), vmul_f32(v17, v17)));
      v12 = vmulq_n_f32(v12, vmul_f32(v18, vrsqrts_f32(LODWORD(v16), vmul_f32(v18, v18))).f32[0]);
    }

    v28 = v12;
    v20 = __sincosf_stret(v13 * 0.5);
    _S1 = v20.__cosval;
    _Q2 = vmulq_n_f32(v28, v20.__sinval);
    _Q2.i32[2] = vmuls_lane_f32(v20.__sinval, v28, 2);
    _Q0 = this[1];
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q0, _Q0), _Q0, 0xCuLL), vnegq_f32(_Q2)), _Q0, vextq_s8(vuzp1q_s32(_Q2, _Q2), _Q2, 0xCuLL));
    v24 = vmlaq_laneq_f32(vmlaq_n_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), _Q0, v20.__cosval), _Q2, _Q0, 3);
    __asm { FMLA            S2, S1, V0.S[3] }

    v24.i32[3] = _Q2.i32[0];
    this[4] = v24;
    a2 = v29;
  }

  v25 = *v9;
  v26 = this[4];
  this[5] = vaddq_f32(this[2], vmulq_n_f32(this[29], a2));
  this[6] = v25;
  result = this[5];
  this[7] = v26;
  this[8] = result;
  this[33].i8[0] = 0;
  return result;
}

float re::computeSVD3x3(float32x2_t *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4, double *a5, double *a6, double *a7)
{
  v40 = *MEMORY[0x1E69E9840];
  v34 = vcvtq_f64_f32(*a1);
  v10 = a1[1].f32[0];
  v36 = vcvtq_f64_f32(a1[2]);
  v11 = a1[3].f32[0];
  v35 = v10;
  v37 = v11;
  v38 = vcvtq_f64_f32(a1[4]);
  v39 = a1[5].f32[0];
  {
    *&v13 = vcvt_f32_f64(v28);
    *&v14 = v29;
    *(&v13 + 1) = __PAIR64__(HIDWORD(v28.f64[1]), v14);
    *&v15 = vcvt_f32_f64(v30);
    *&v16 = v31;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v30.f64[1]), v16);
    *&v17 = vcvt_f32_f64(v32);
    *&v18 = v33;
    *(&v17 + 1) = __PAIR64__(HIDWORD(v32.f64[1]), v18);
    *a2 = v13;
    a2[1] = v15;
    a2[2] = v17;
    *&v15 = vcvt_f32_f64(v22);
    *&v13 = v23;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v22.f64[1]), v13);
    *&v19 = vcvt_f32_f64(v24);
    *&v13 = v25;
    *(&v19 + 1) = __PAIR64__(HIDWORD(v24.f64[1]), v13);
    *a4 = v15;
    a4[1] = v19;
    *&v15 = vcvt_f32_f64(v26);
    *&v13 = v27;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v26.f64[1]), v13);
    a4[2] = v15;
    *&v15 = vcvt_f32_f64(v20);
    result = v21;
    *(&v15 + 1) = __PAIR64__(HIDWORD(v20.f64[1]), LODWORD(result));
    *a3 = v15;
  }

  return result;
}

uint64_t re::anonymous namespace::computeSVD(re::_anonymous_namespace_ *this, uint64_t a2, uint64_t a3, double *a4, double *a5, double *a6, double *a7)
{
  v7 = dgesvd_NEWLAPACK();
  MEMORY[0x1EEE9AC00](v7);
  dgesvd_NEWLAPACK();
  return 1;
}

void re::OPackReader::Buffer::~Buffer(re::OPackReader::Buffer *this)
{
  v2 = *this;
  if (*this != (this + 32))
  {
    if (v2)
    {
      v3 = re::globalAllocators(this);
      (*(*v3[2] + 40))(v3[2], v2);
    }

    *this = 0;
  }
}

uint64_t re::OPackReader::Buffer::resize(re::OPackReader::Buffer *this, unint64_t a2)
{
  if (*(this + 2) - *this > a2)
  {
    return 1;
  }

  if (*(this + 3) < a2)
  {
    return 0;
  }

  v5 = re::globalAllocators(this);
  result = (*(*v5[2] + 32))(v5[2], a2, 0);
  if (result)
  {
    v6 = result;
    v8 = *this;
    v7 = *(this + 1);
    v9 = v7 - *this;
    if (v7 != *this)
    {
      result = memcpy(result, *this, v7 - *this);
    }

    if (v8 != (this + 32))
    {
      if (v8)
      {
        v10 = re::globalAllocators(result);
        (*(*v10[2] + 40))(v10[2], v8);
      }
    }

    *this = v6;
    *(this + 1) = v6 + v9;
    *(this + 2) = v6 + a2;
    return 1;
  }

  return result;
}

uint64_t re::OPackReader::OPackReader(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 128;
  *(a1 + 24) = 0;
  *(a1 + 28) = 0;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = &unk_1F5D0CA50;
  *(a1 + 64) = a2;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0;
  *(a1 + 160) = a1 + 96;
  *(a1 + 168) = a1 + 96;
  *(a1 + 176) = a1 + 160;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0;
  *(a1 + 200) = 0;
  *(a1 + 208) = 0;
  *(a1 + 224) = 0;
  *(a1 + 216) = 0;
  *(a1 + 240) = a1 + 272;
  *(a1 + 248) = a1 + 272;
  v3 = (a1 + 336);
  *(a1 + 256) = a1 + 336;
  *(a1 + 264) = -1;
  *(a1 + 368) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 360) = 0;
  *(a1 + 336) = 0;
  *(a1 + 196) = 0;
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity((a1 + 336), 0x80uLL);
  v5.n128_u16[0] = 0;
  v5.n128_u64[1] = 0;
  v6 = 0;
  re::DynamicArray<re::BufferView>::add(v3, &v5);
  return a1;
}

uint64_t re::OPackReader::next(re::OPackReader *this, uint64_t a2)
{
  if (*(this + 2) == 1)
  {
    *(this + 2) = 0;
    return 1;
  }

  if (*(this + 1) & 1) != 0 || (*this)
  {
    return 0;
  }

  v4 = *(*(this + 46) + 24 * *(this + 44) - 24);
  if (v4 <= 2)
  {
    if (*(*(this + 46) + 24 * *(this + 44) - 24))
    {
      if (v4 == 1)
      {

        return re::OPackReader::readArray(this);
      }

      else
      {

        return re::OPackReader::readDictionary(this);
      }
    }

    else
    {
      result = re::OPackReader::readObject(this, 0);
      if (result)
      {
        result = 1;
        if (*(this + 44) == 1)
        {
          *this = 1;
        }
      }
    }
  }

  else if (*(*(this + 46) + 24 * *(this + 44) - 24) > 5u)
  {
    if (v4 == 6)
    {
      result = 0;
      *(this + 1) = 1;
      *(this + 1) = "unimplemented";
      return result;
    }

    if (v4 != 7)
    {
      goto LABEL_34;
    }

    return re::OPackReader::readExtDictionaryDelta(this);
  }

  else
  {
    if (v4 != 3)
    {
      if (v4 == 5)
      {

        return re::OPackReader::readExtArrayDelta(this);
      }

LABEL_34:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "next", 158);
      result = _os_crash("assertion failure: (!Unreachable code) ");
      __break(1u);
      return result;
    }

    return re::OPackReader::readChunkedData(this);
  }

  return result;
}

uint64_t re::OPackReader::readObject(re::OPackReader *this, int a2)
{
  result = re::zerocopy::OPackTokenizer::readToken(this + 6, this + 192);
  if (!result)
  {
    return result;
  }

  v5 = *(this + 196);
  if ((v5 - 12) > 5)
  {
    if ((v5 & 0xFE) != 0xA)
    {
      goto LABEL_10;
    }

    v8 = *(this + 25);
    if (v8 == *(this + 27))
    {
      goto LABEL_10;
    }

    if (*(this + 33) < v8)
    {
      goto LABEL_16;
    }

    *(this + 31) = *(this + 30);
    if (v8 != -1 && (re::OPackReader::Buffer::resize((this + 240), v8) & 1) == 0)
    {
      result = 0;
      *(this + 1) = 1;
      v9 = "out of memory when allocating multipart buffer";
      goto LABEL_17;
    }

    v10 = 1;
    while (1)
    {
      v11 = *(this + 48);
      if (v11 != 2)
      {
        break;
      }

      if ((v10 & 1) != 0 && (v13 = *(this + 26), v12 = *(this + 27), re::OPackReader::Buffer::resize((this + 240), v12 + *(this + 31) - *(this + 30))))
      {
        memcpy(*(this + 31), v13, v12);
        *(this + 31) += v12;
        v10 = 1;
      }

      else
      {
        v10 = 0;
      }

      if ((re::zerocopy::OPackTokenizer::readToken(this + 6, this + 192) & 1) == 0)
      {
        result = 0;
        *(this + 1) = 1;
        v9 = "unable to read next chunk";
        goto LABEL_17;
      }
    }

    if (v11 == 3)
    {
      if (v10)
      {
        v15 = *(this + 26);
        v14 = *(this + 27);
        if (re::OPackReader::Buffer::resize((this + 240), v14 + *(this + 31) - *(this + 30)))
        {
          memcpy(*(this + 31), v15, v14);
          v16 = *(this + 31) + v14;
          *(this + 31) = v16;
LABEL_46:
          v17 = *(this + 30);
          *(this + 26) = v17;
          *(this + 27) = v16 - v17;
LABEL_10:
          result = 1;
          *(this + 184) = 1;
          *(this + 47) = a2;
          return result;
        }
      }
    }

    else if (v10)
    {
      v16 = *(this + 31);
      goto LABEL_46;
    }

LABEL_16:
    result = 0;
    *(this + 1) = 1;
    v9 = "multipart buffer exceeded maximum data length";
LABEL_17:
    *(this + 1) = v9;
    return result;
  }

  v6 = *(this + 25);
  if (*(this + 196) <= 0xEu)
  {
    if (v5 == 12)
    {
      result = re::OPackReader::beginState(this, 1u, v6);
      if (!result)
      {
        return result;
      }

      v7 = 2;
    }

    else if (v5 == 13)
    {
      result = re::OPackReader::beginState(this, 2u, v6);
      if (!result)
      {
        return result;
      }

      v7 = 4;
    }

    else
    {
      result = re::OPackReader::beginState(this, 3u, v6);
      if (!result)
      {
        return result;
      }

      v7 = 6;
    }

    goto LABEL_24;
  }

  if (v5 == 15)
  {
    result = re::OPackReader::beginState(this, 5u, v6);
    if (!result)
    {
      return result;
    }

    v7 = 8;
    goto LABEL_24;
  }

  if (v5 == 16)
  {
    result = re::OPackReader::beginState(this, 7u, v6);
    if (!result)
    {
      return result;
    }

    v7 = 10;
LABEL_24:
    *(this + 184) = v7;
LABEL_25:
    *(this + 47) = a2;
    return 1;
  }

  result = re::OPackReader::beginState(this, 6u, v6);
  if (result)
  {
    *(this + 184) = 6;
    goto LABEL_25;
  }

  return result;
}

uint64_t re::OPackReader::readArray(re::OPackReader *this)
{
  v2 = *(this + 44);
  v3 = *(this + 46) + 24 * v2;
  if (*(v3 - 23) != 1)
  {
    result = re::OPackReader::readObject(this, 1);
    if (!result)
    {
      return result;
    }

    if (*(this + 196) != 1)
    {
      return 1;
    }

    v6 = *(this + 44) - 1;
    *(this + 44) = v6;
    ++*(this + 90);
    if (v6 == 1)
    {
      *this = 1;
    }

LABEL_12:
    *(this + 184) = 3;
    *(this + 47) = 0;
    return 1;
  }

  v4 = *(v3 - 16);
  if (!v4)
  {
    *(this + 48) = 1;
    *(this + 196) = 1;
    v7 = v2 - 1;
    *(this + 44) = v7;
    ++*(this + 90);
    if (v7 == 1)
    {
      *this = 1;
    }

    goto LABEL_12;
  }

  *(v3 - 16) = v4 - 1;

  return re::OPackReader::readObject(this, 1);
}

uint64_t re::OPackReader::readDictionary(re::OPackReader *this)
{
  v2 = *(this + 44);
  v3 = *(this + 46) + 24 * v2;
  v4 = *(v3 - 8);
  if (*(v3 - 23) != 1)
  {
    if (!v4)
    {
      *(v3 - 8) = 1;

      return re::OPackReader::readDictionaryEntry(this, 2, 0, 5, 0);
    }

LABEL_6:
    *(v3 - 8) = 0;
    v6 = 4;
LABEL_7:
    result = re::OPackReader::readObject(this, v6);
    if (result)
    {
      result = 1;
      if (*(this + 196) == 1)
      {
        *(this + 1) = 1;
        *(this + 1) = "unexpected terminator when reading dictionary entry";
        return 0;
      }
    }

    return result;
  }

  if (v4)
  {
    goto LABEL_6;
  }

  v5 = *(v3 - 16);
  if (v5)
  {
    *(v3 - 16) = v5 - 1;
    *(v3 - 8) = 1;
    v6 = 2;
    goto LABEL_7;
  }

  *(this + 48) = 1;
  *(this + 196) = 1;
  v8 = v2 - 1;
  *(this + 44) = v8;
  ++*(this + 90);
  if (v8 == 1)
  {
    *this = 1;
  }

  *(this + 184) = 5;
  *(this + 47) = 0;
  return 1;
}

uint64_t re::OPackReader::readChunkedData(re::OPackReader *this)
{
  result = re::OPackReader::readObject(this, 8);
  if (result)
  {
    v3 = *(this + 196);
    if (v3 == 11)
    {
      result = 1;
      *(this + 184) = 1;
      *(this + 47) = 8;
    }

    else if (v3 == 1)
    {
      v4 = *(this + 44) - 1;
      *(this + 44) = v4;
      ++*(this + 90);
      if (v4 == 1)
      {
        *this = 1;
      }

      *(this + 184) = 6;
      *(this + 47) = 0;
      return 1;
    }

    else
    {
      result = 0;
      *(this + 1) = 1;
      *(this + 1) = "unexpected token reading chunked data";
    }
  }

  return result;
}

uint64_t re::OPackReader::readExtArrayDelta(re::OPackReader *this)
{
  v2 = *(this + 46) + 24 * *(this + 44);
  v3 = *(v2 - 8);
  if (v3 == 1)
  {
    result = re::OPackReader::readObject(this, 32);
    if (result)
    {
      if (*(this + 196) == 1)
      {
        v5 = *(this + 44) - 1;
        *(this + 44) = v5;
        ++*(this + 90);
        if (v5 == 1)
        {
          *this = 1;
        }

        *(this + 184) = 9;
        *(this + 47) = 0;
      }

      else
      {
        *(v2 - 8) = 0;
      }

      return 1;
    }
  }

  else
  {
    if (v3)
    {
      return 0;
    }

    result = re::OPackReader::readObject(this, 16);
    if (!result)
    {
      return result;
    }

    if (*(this + 196) != 6)
    {
      return 0;
    }

    else
    {
      result = 1;
      *(v2 - 8) = 1;
    }
  }

  return result;
}

uint64_t re::OPackReader::readExtDictionaryDelta(re::OPackReader *this)
{
  v2 = *(this + 46) + 24 * *(this + 44);
  if (*(v2 - 8))
  {
    *(v2 - 8) = 0;
    result = re::OPackReader::readObject(this, 132);
    if (result)
    {
      result = 1;
      if (*(this + 196) == 1)
      {
        *(this + 184) = 1;
        *(this + 47) = 132;
      }
    }
  }

  else
  {
    *(v2 - 8) = 1;

    return re::OPackReader::readDictionaryEntry(this, 66, 0, 11, 0);
  }

  return result;
}

BOOL re::OPackReader::beginState(uint64_t a1, unsigned __int8 a2, unint64_t a3)
{
  v3 = *(a1 + 352);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    *(a1 + 1) = 1;
    *(a1 + 8) = "max depth exceeded";
  }

  else
  {
    v6.n128_u8[0] = a2;
    v6.n128_u8[1] = a3 != -1;
    v6.n128_u64[1] = a3;
    v7 = 0;
    re::DynamicArray<re::BufferView>::add((a1 + 336), &v6);
  }

  return v3 < v4;
}

uint64_t re::OPackReader::readDictionaryEntry(uint64_t a1, int a2, uint64_t a3, char a4, int a5)
{
  result = re::OPackReader::readObject(a1, a2);
  if (result)
  {
    if (*(a1 + 196) == 1)
    {
      if (a5)
      {
        if (a5 == 2)
        {
          result = 1;
          *(a1 + 184) = 1;
          *(a1 + 188) = a2;
          return result;
        }

        if (a5 == 1)
        {
          result = 0;
          *(a1 + 1) = 1;
          *(a1 + 8) = "unexpected terminator when reading dictionary entry";
          return result;
        }
      }

      else
      {
        v10 = *(a1 + 352) - 1;
        *(a1 + 352) = v10;
        ++*(a1 + 360);
        if (v10 == 1)
        {
          *a1 = 1;
        }

        *(a1 + 184) = a4;
        *(a1 + 188) = 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readToken(int *a1, uint64_t a2)
{
  v2 = *a1;
  if (*a1 <= 1)
  {
    if (!v2)
    {
      return re::zerocopy::OPackTokenizer::readTag(a1, a2);
    }

    if (v2 == 1)
    {
      return re::zerocopy::OPackTokenizer::readPrimitive(a1, a2);
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        return re::zerocopy::OPackTokenizer::readLengthPrefixed(a1, a2);
      case 3:
        return re::zerocopy::OPackTokenizer::readChunks(a1, a2);
      case 4:
        return re::zerocopy::OPackTokenizer::readNullTerminated(a1, a2);
    }
  }

  return 0;
}

uint64_t re::zerocopy::OPackTokenizer::readTag(uint64_t a1, uint64_t a2)
{
  __dst = 0;
  if ((re::zerocopy::BufferedReadStream::contiguousRead((a1 + 32), 1, v22) & 1) == 0)
  {
    result = 0;
    *a2 = 0;
    goto LABEL_8;
  }

  memcpy(&__dst, v22[0], v22[1]);
  v4 = __dst;
  if (__dst <= 2u)
  {
    switch(__dst)
    {
      case 0u:
        result = 1;
        *a2 = 1;
        *(a2 + 4) = 0;
        goto LABEL_27;
      case 1u:
        result = 1;
        *(a2 + 32) = 1;
        *a2 = 1;
        LOBYTE(v4) = 2;
        goto LABEL_26;
      case 2u:
        *(a2 + 32) = 0;
        result = 1;
        *a2 = 1;
        goto LABEL_26;
    }
  }

  else
  {
    if (__dst <= 4u)
    {
      if (__dst != 3)
      {
        if (__dst == 4)
        {
          result = 1;
          *a2 = 1;
          LOBYTE(v4) = 3;
LABEL_26:
          *(a2 + 4) = v4;
          goto LABEL_27;
        }

        goto LABEL_18;
      }

      result = 1;
      *a2 = 1;
      *(a2 + 4) = 1;
LABEL_27:
      *a1 = 0;
      return result;
    }

    if (__dst == 5)
    {
      *a1 = 1;
      *(a1 + 4) = 4;
      v7 = 16;
      goto LABEL_22;
    }

    if (__dst == 6)
    {
      *a1 = 1;
      v6 = 5;
      goto LABEL_16;
    }
  }

LABEL_18:
  if (__dst - 7 <= 0x28)
  {
    *(a2 + 32) = __dst - 8;
    result = 1;
    *a2 = 1;
    LOBYTE(v4) = 6;
    goto LABEL_26;
  }

  if (__dst > 0x32u)
  {
    if (__dst != 51)
    {
      if (__dst == 53)
      {
        *a1 = 1;
        v8 = 7;
        goto LABEL_50;
      }

      if (__dst != 54)
      {
        goto LABEL_41;
      }

      *a1 = 1;
      v7 = 8;
      *(a1 + 4) = 8;
LABEL_22:
      *(a1 + 8) = vdupq_n_s64(v7);

      return re::zerocopy::OPackTokenizer::readPrimitive(a1, a2);
    }

    *a1 = 1;
    v6 = 6;
LABEL_16:
    *(a1 + 4) = v6;
    v7 = 8;
    goto LABEL_22;
  }

  switch(__dst)
  {
    case '0':
      v7 = 1;
      *a1 = 1;
      v9 = 6;
LABEL_39:
      *(a1 + 4) = v9;
      goto LABEL_22;
    case '1':
      *a1 = 1;
      v13 = 6;
LABEL_48:
      *(a1 + 4) = v13;
      v7 = 2;
      goto LABEL_22;
    case '2':
      *a1 = 1;
      v8 = 6;
LABEL_50:
      *(a1 + 4) = v8;
      v7 = 4;
      goto LABEL_22;
  }

LABEL_41:
  if (__dst - 64 > 0x20)
  {
    if (__dst <= 0x62u)
    {
      if (__dst == 97)
      {
        *a1 = 2;
        v18 = 10;
        goto LABEL_68;
      }

      if (__dst == 98)
      {
        v14 = 2;
        *a1 = 2;
        v15 = 10;
LABEL_61:
        *(a1 + 4) = v15;
LABEL_69:
        *(a1 + 8) = v14;

        return re::zerocopy::OPackTokenizer::readLengthPrefixed(a1, a2);
      }
    }

    else
    {
      switch(__dst)
      {
        case 'c':
          *a1 = 2;
          v16 = 10;
LABEL_64:
          *(a1 + 4) = v16;
          v14 = 4;
          goto LABEL_69;
        case 'd':
          *a1 = 2;
          v17 = 10;
LABEL_66:
          *(a1 + 4) = v17;
          v14 = 8;
          goto LABEL_69;
        case 'o':
          *a1 = 4;
          *(a1 + 4) = 10;
          *(a1 + 8) = 0;
          *(a1 + 16) = 0;

          return re::zerocopy::OPackTokenizer::readNullTerminated(a1, a2);
      }
    }

    if (__dst - 112 <= 0x20)
    {
      *a1 = 3;
      v10 = 11;
      *(a1 + 4) = 11;
      v12 = (v4 - 112);
      v11 = v12 == 0;
      goto LABEL_43;
    }

    if (__dst > 0x92u)
    {
      if (__dst != 147)
      {
        if (__dst != 148)
        {
          if (__dst == 159)
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 14;
            goto LABEL_26;
          }

          goto LABEL_85;
        }

        *a1 = 2;
        v17 = 11;
        goto LABEL_66;
      }

      *a1 = 2;
      v16 = 11;
      goto LABEL_64;
    }

    if (__dst != 145)
    {
      if (__dst != 146)
      {
LABEL_85:
        if (__dst - 160 <= 0x20)
        {
          *(a2 + 32) = __dst - 160;
          result = 1;
          *a2 = 1;
          LOBYTE(v4) = 9;
          goto LABEL_26;
        }

        if (__dst > 0xC2u)
        {
          if (__dst == 195)
          {
            *a1 = 1;
            *(a1 + 4) = 9;
            v7 = 3;
            goto LABEL_22;
          }

          if (__dst == 196)
          {
            *a1 = 1;
            v8 = 9;
            goto LABEL_50;
          }

LABEL_94:
          v19 = __dst - 208;
          if (v19 <= 0xE)
          {
            *(a2 + 8) = v19;
LABEL_100:
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 12;
            goto LABEL_26;
          }

          if (__dst == 223)
          {
            *(a2 + 8) = -1;
            goto LABEL_100;
          }

          v20 = __dst - 224;
          if (v20 <= 0xE)
          {
            *(a2 + 8) = v20;
LABEL_105:
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 13;
            goto LABEL_26;
          }

          if (__dst == 239)
          {
            *(a2 + 8) = -1;
            goto LABEL_105;
          }

          if (__dst == 240 && *(a1 + 24))
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 15;
            goto LABEL_26;
          }

          if (__dst == 241 && *(a1 + 24))
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 16;
            goto LABEL_26;
          }

          if (__dst == 242 && *(a1 + 24))
          {
            *(a2 + 8) = -1;
            result = 1;
            *a2 = 1;
            LOBYTE(v4) = 17;
            goto LABEL_26;
          }

          if (*a1 != 5)
          {
            *a1 = 5;
          }

          result = 0;
          *a2 = 4;
LABEL_8:
          *(a2 + 4) = 0;
          return result;
        }

        if (__dst != 193)
        {
          if (__dst == 194)
          {
            *a1 = 1;
            v13 = 9;
            goto LABEL_48;
          }

          goto LABEL_94;
        }

        v7 = 1;
        *a1 = 1;
        v9 = 9;
        goto LABEL_39;
      }

      v14 = 2;
      *a1 = 2;
      v15 = 11;
      goto LABEL_61;
    }

    *a1 = 2;
    v18 = 11;
LABEL_68:
    *(a1 + 4) = v18;
    v14 = 1;
    goto LABEL_69;
  }

  *a1 = 3;
  v10 = 10;
  *(a1 + 4) = 10;
  v12 = (v4 - 64);
  v11 = v12 == 0;
LABEL_43:
  *(a1 + 8) = v12;
  *(a1 + 16) = v12;
  if (v11)
  {
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *(a2 + 24) = 0;
    *a2 = 3;
    *(a2 + 4) = v10;
    result = 1;
    goto LABEL_27;
  }

  return re::zerocopy::OPackTokenizer::readChunks(a1, a2);
}

uint64_t re::zerocopy::OPackTokenizer::readPrimitive(uint64_t a1, uint64_t a2)
{
  result = re::zerocopy::BufferedReadStream::contiguousRead((a1 + 32), *(a1 + 8), v5);
  if (result)
  {
    return re::zerocopy::OPackTokenizer::endPrimitive(a1, a2, v5);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readLengthPrefixed(uint64_t a1, uint64_t a2)
{
  result = re::zerocopy::BufferedReadStream::contiguousRead((a1 + 32), *(a1 + 8), v5);
  if (result)
  {
    return re::zerocopy::OPackTokenizer::endLengthPrefixed(a1, a2, *(a1 + 4), v5);
  }

  *a2 = 0;
  *(a2 + 4) = 0;
  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readChunks(uint64_t a1, uint64_t a2)
{
  result = re::zerocopy::BufferedReadStream::boundedRead(a1 + 32, *(a1 + 16), &v9);
  if (result)
  {
    v6 = v9;
    v5 = v10;
    *(a2 + 24) = v10;
    v7 = *(a1 + 16);
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = v6;
    v8 = v7 - v5;
    *(a1 + 16) = v8;
    if (v8)
    {
      *a2 = 2;
      *(a2 + 4) = *(a1 + 4);
    }

    else
    {
      *a2 = 3;
      *(a2 + 4) = *(a1 + 4);
      *a1 = 0;
    }
  }

  else
  {
    *a2 = 0;
    *(a2 + 4) = 0;
  }

  return result;
}

uint64_t re::zerocopy::OPackTokenizer::readNullTerminated(uint64_t a1, uint64_t a2)
{
  v5 = *(a1 + 136);
  v4 = *(a1 + 144);
  if (v5 == v4)
  {
    v6 = *(a1 + 56);
    if (!v6)
    {
      result = re::zerocopy::BufferedReadStream::nextFromStream((a1 + 32));
      if (!result)
      {
        *a2 = 0;
        *(a2 + 4) = 0;
        return result;
      }

      v6 = *(a1 + 56);
    }

    v5 = *(a1 + 48);
  }

  else
  {
    v6 = v4 - v5;
  }

  if (v6 < 1)
  {
LABEL_11:
    *(a2 + 24) = v6;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = v5;
    *a2 = 2;
    *(a2 + 4) = *(a1 + 4);
  }

  else
  {
    v8 = 0;
    while (*(v5 + v8))
    {
      ++v8;
      if (v5 + v8 >= (v5 + v6))
      {
        goto LABEL_11;
      }
    }

    re::zerocopy::BufferedReadStream::advanceRead((a1 + 32), v8 + 1);
    *(a2 + 24) = v8;
    *(a2 + 8) = *(a1 + 8);
    *(a2 + 16) = v5;
    *a2 = 3;
    *(a2 + 4) = *(a1 + 4);
    *a1 = 0;
  }

  return 1;
}

uint64_t re::zerocopy::OPackTokenizer::endLengthPrefixed(uint64_t a1, uint64_t a2, char a3, unsigned int **a4)
{
  v4 = a4[1];
  if (v4 > 3)
  {
    if (v4 == 4)
    {
      v5 = **a4;
      goto LABEL_13;
    }

    if (v4 == 8)
    {
      v5 = **a4;
      goto LABEL_13;
    }

LABEL_8:
    if (*a1 != 5)
    {
      *a1 = 5;
    }

    v6 = 0;
    *a2 = 4;
    *(a2 + 4) = 0;
    return v6;
  }

  if (v4 == 1)
  {
    v5 = **a4;
    goto LABEL_13;
  }

  if (v4 != 2)
  {
    goto LABEL_8;
  }

  v5 = **a4;
LABEL_13:
  *a1 = 3;
  *(a1 + 4) = a3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v5;
  if (v5)
  {
    return re::zerocopy::OPackTokenizer::readChunks(a1, a2);
  }

  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *a2 = 3;
  *(a2 + 4) = a3;
  v6 = 1;
  *a1 = 0;
  return v6;
}

uint64_t re::zerocopy::OPackTokenizer::endPrimitive(uint64_t a1, uint64_t a2, _DWORD **a3)
{
  v3 = *(a1 + 4);
  if (v3 <= 6)
  {
    if (v3 == 4)
    {
      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 4;
    }

    else
    {
      if (v3 != 5)
      {
        if (v3 == 6)
        {
          v4 = *a3;
          v5 = a3[1];
          if (v5 > 3)
          {
            if (v5 == 4)
            {
              v6 = *v4;
              goto LABEL_32;
            }

            if (v5 == 8)
            {
              v6 = *v4;
              goto LABEL_32;
            }
          }

          else
          {
            if (v5 == 1)
            {
              v6 = *v4;
              goto LABEL_32;
            }

            if (v5 == 2)
            {
              v6 = *v4;
LABEL_32:
              *(a2 + 32) = v6;
              v10 = 1;
              *a2 = 1;
              v11 = 6;
              goto LABEL_35;
            }
          }
        }

        goto LABEL_26;
      }

      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 5;
    }

LABEL_35:
    *(a2 + 4) = v11;
    *a1 = 0;
    return v10;
  }

  switch(v3)
  {
    case 7u:
      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 7;
      goto LABEL_35;
    case 8u:
      *(a2 + 32) = **a3;
      v10 = 1;
      *a2 = 1;
      v11 = 8;
      goto LABEL_35;
    case 9u:
      v7 = *a3;
      v8 = a3[1];
      if (v8 > 2)
      {
        if (v8 == 3)
        {
          v9 = *v7 | (*(v7 + 2) << 16);
        }

        else
        {
          if (v8 != 4)
          {
            break;
          }

          v9 = *v7;
        }
      }

      else if (v8 == 1)
      {
        v9 = *v7;
      }

      else
      {
        if (v8 != 2)
        {
          break;
        }

        v9 = *v7;
      }

      *(a2 + 32) = v9;
      v10 = 1;
      *a2 = 1;
      v11 = 9;
      goto LABEL_35;
  }

LABEL_26:
  if (*a1 != 5)
  {
    *a1 = 5;
  }

  v10 = 0;
  *a2 = 4;
  *(a2 + 4) = 0;
  return v10;
}

re::zerocopy::DispatchReadStream *re::zerocopy::DispatchReadStream::DispatchReadStream(re::zerocopy::DispatchReadStream *this, void *a2)
{
  *(this + 8) = 0u;
  *this = &unk_1F5D0C948;
  *(this + 25) = this + 8;
  *(this + 13) = xmmword_1E30B5C10;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 28) = 0;
  *(this + 29) = 0;
  dispatch_data_apply_f();
  return this;
}

void re::zerocopy::DispatchReadStream::~DispatchReadStream(NSObject *this)
{
  v1 = this;
  this->isa = &unk_1F5D0C948;
  isa = this[25].isa;
  if (isa != &this[1])
  {
    v3 = this[26].isa;
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = v1[25].isa;
        this = *(v6 + v4);
        if (this)
        {
          dispatch_release(this);
          *(v6 + v4) = 0;
          v3 = v1[26].isa;
        }

        v4 += 24;
      }

      isa = v1[25].isa;
    }

    if (isa)
    {
      v7 = re::globalAllocators(this);
      (*(*v7[2] + 40))(v7[2], isa);
    }

    v1[25].isa = 0;
  }

  for (j = 22; j != -2; j -= 3)
  {
    v9 = v1[j].isa;
    if (v9)
    {
      dispatch_release(v9);
      v1[j].isa = 0;
    }
  }
}

{
  re::zerocopy::DispatchReadStream::~DispatchReadStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::zerocopy::DispatchReadStream::nextRead(void *a1, unint64_t *a2)
{
  v2 = a1[28];
  v3 = a1[26];
  if (v2 < v3)
  {
    v4 = a1[29];
    v5 = a1[25];
    if (v4 < *(v5 + 24 * v2 + 16))
    {
LABEL_5:
      v6 = v5 + 24 * v2;
      v7 = *(v6 + 8) + v4;
      v8 = *(v6 + 16) - v4;
      *a2 = v7;
      a2[1] = v8;
      return 1;
    }

    a1[28] = ++v2;
    a1[29] = 0;
    if (v2 < v3)
    {
      v4 = 0;
      goto LABEL_5;
    }
  }

  return 0;
}

void *re::zerocopy::DispatchReadStream::advanceRead(void *this, unint64_t a2)
{
  v2 = this[28];
  if (v2 < this[26])
  {
    v3 = this[29];
    v4 = *(this[25] + 24 * v2 + 16) - v3;
    if (v4 >= a2)
    {
      v4 = a2;
    }

    this[29] = v4 + v3;
  }

  return this;
}

uint64_t re::zerocopy::DispatchReadStream::DispatchReadStream(void *)::$_0::__invoke(re *a1, dispatch_object_t object, uint64_t a3, objc_class *a4, objc_class *a5)
{
  v9 = *(a1 + 26);
  if (v9 == *(a1 + 27))
  {
    v10 = 2 * v9;
    v11 = 48 * v9;
    v12 = re::globalAllocators(a1);
    v13 = (*(*v12[2] + 32))(v12[2], v11, 0);
    v14 = v13;
    v9 = *(a1 + 26);
    if (v9)
    {
      v15 = 0;
      for (i = 0; i < v9; ++i)
      {
        v17 = &v13[v15];
        v18 = *(a1 + 25) + v15 * 8;
        *&v17->isa = *v18;
        v17[2].isa = *(v18 + 16);
        *v18 = 0;
        *(v18 + 8) = 0;
        *(v18 + 16) = 0;
        v9 = *(a1 + 26);
        v15 += 3;
      }

      v19 = *(a1 + 25);
      if (v19 != (a1 + 8))
      {
        if (v9)
        {
          v20 = 0;
          for (j = 0; j < v9; ++j)
          {
            v22 = *(a1 + 25);
            v13 = *(v22 + v20);
            if (v13)
            {
              dispatch_release(v13);
              *(v22 + v20) = 0;
              v9 = *(a1 + 26);
            }

            v20 += 24;
          }

          v19 = *(a1 + 25);
        }

        goto LABEL_14;
      }
    }

    else
    {
      v19 = *(a1 + 25);
      if (v19 != (a1 + 8))
      {
LABEL_14:
        if (v19)
        {
          v23 = re::globalAllocators(v13);
          (*(*v23[2] + 40))(v23[2], v19);
          v9 = *(a1 + 26);
        }
      }
    }

    *(a1 + 25) = v14;
    *(a1 + 27) = v10;
    goto LABEL_17;
  }

  v14 = *(a1 + 25);
LABEL_17:
  *(a1 + 26) = v9 + 1;
  v24 = &v14[3 * v9];
  dispatch_retain(object);
  v24->isa = object;
  v24[1].isa = a4;
  v24[2].isa = a5;
  return 1;
}

void re::zerocopy::FileWriteStream::~FileWriteStream(re::zerocopy::FileWriteStream *this)
{
  *this = &unk_1F5D0C9A0;
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    fclose(v2);
  }

  *(this + 1) = 0;
}

{
  *this = &unk_1F5D0C9A0;
  v2 = *(this + 1);
  if (v2 && *(this + 16) == 1)
  {
    fclose(v2);
  }

  *(this + 1) = 0;

  JUMPOUT(0x1E6906520);
}

uint64_t re::zerocopy::FileWriteStream::nextWrite(uint64_t a1, void *a2)
{
  *a2 = a1 + 17;
  a2[1] = 4096;
  return 1;
}

size_t re::zerocopy::FileWriteStream::advanceWrite(size_t this, size_t a2)
{
  v2 = *(this + 8);
  if (v2)
  {
    if (a2 >= 0x1000)
    {
      v3 = 4096;
    }

    else
    {
      v3 = a2;
    }

    return fwrite((this + 17), 1uLL, v3, v2);
  }

  return this;
}

uint64_t re::OPackWriter::writeInteger(re::zerocopy **this, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v10 = a2;
  if ((a2 + 1) > 0x28)
  {
    if (a2 != a2)
    {
      LOBYTE(v9) = 51;
      re::zerocopy::writeAll(*this, &v9, 1);
      v5 = *this;
      v6 = &v10;
      v7 = 8;
      return re::zerocopy::writeAll(v5, v6, v7);
    }

    v11 = a2;
    LOBYTE(v9) = 48;
    re::zerocopy::writeAll(*this, &v9, 1);
    v5 = *this;
    v6 = &v11;
  }

  else
  {
    LOBYTE(v9) = a2 + 8;
    v5 = *this;
    v6 = &v9;
  }

  v7 = 1;
  return re::zerocopy::writeAll(v5, v6, v7);
}

uint64_t re::OPackWriter::writeFloat64(re::zerocopy **this, double a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v7 = a2;
  v8 = 54;
  re::zerocopy::writeAll(*this, &v8, 1);
  return re::zerocopy::writeAll(*this, &v7, 8);
}

uint64_t re::OPackWriter::writeString(re::zerocopy **this, re::zerocopy::WriteStream *a2, char *a3, unint64_t a4)
{
  if (a3 >= 0x21)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(v11) = 97;
      re::zerocopy::writeAll(*this, &v11, 1);
      LOBYTE(v11) = a3;
      v8 = *this;
      v9 = 1;
    }

    else if (a3 >> 16)
    {
      if (a3 >> 32)
      {
        LOBYTE(v11) = 100;
        re::zerocopy::writeAll(*this, &v11, 1);
        v11 = a3;
        v8 = *this;
        v9 = 8;
      }

      else
      {
        LOBYTE(v11) = 99;
        re::zerocopy::writeAll(*this, &v11, 1);
        LODWORD(v11) = a3;
        v8 = *this;
        v9 = 4;
      }
    }

    else
    {
      LOBYTE(v11) = 98;
      re::zerocopy::writeAll(*this, &v11, 1);
      LOWORD(v11) = a3;
      v8 = *this;
      v9 = 2;
    }

    re::zerocopy::writeAll(v8, &v11, v9);
  }

  else
  {
    LOBYTE(v11) = a3 | 0x40;
    result = re::zerocopy::writeAll(*this, &v11, 1);
    if (!a3)
    {
      return result;
    }
  }

  v10 = *this;

  return re::zerocopy::writeAll(v10, a2, a3);
}

uint64_t re::OPackWriter::writeData(re::zerocopy **this, re::zerocopy::WriteStream *a2, char *a3, unint64_t a4)
{
  if (a3 >= 0x21)
  {
    if (a3 <= 0xFF)
    {
      LOBYTE(v11) = -111;
      re::zerocopy::writeAll(*this, &v11, 1);
      LOBYTE(v11) = a3;
      v8 = *this;
      v9 = 1;
    }

    else if (a3 >> 16)
    {
      if (a3 >> 32)
      {
        LOBYTE(v11) = -108;
        re::zerocopy::writeAll(*this, &v11, 1);
        v11 = a3;
        v8 = *this;
        v9 = 8;
      }

      else
      {
        LOBYTE(v11) = -109;
        re::zerocopy::writeAll(*this, &v11, 1);
        LODWORD(v11) = a3;
        v8 = *this;
        v9 = 4;
      }
    }

    else
    {
      LOBYTE(v11) = -110;
      re::zerocopy::writeAll(*this, &v11, 1);
      LOWORD(v11) = a3;
      v8 = *this;
      v9 = 2;
    }

    re::zerocopy::writeAll(v8, &v11, v9);
  }

  else
  {
    LOBYTE(v11) = a3 + 112;
    result = re::zerocopy::writeAll(*this, &v11, 1);
    if (!a3)
    {
      return result;
    }
  }

  v10 = *this;

  return re::zerocopy::writeAll(v10, a2, a3);
}

uint64_t re::OPackWriter::writeArrayBegin(re::zerocopy **this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 0xE)
  {
    v8 = -33;
    v4 = *this;
    v5 = &v8;
  }

  else
  {
    v7 = a2 | 0xD0;
    v4 = *this;
    v5 = &v7;
  }

  return re::zerocopy::writeAll(v4, v5, 1);
}

uint64_t re::OPackWriter::writeDictionaryBegin(re::zerocopy **this, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 > 0xE)
  {
    v8 = -17;
    v4 = *this;
    v5 = &v8;
  }

  else
  {
    v7 = a2 | 0xE0;
    v4 = *this;
    v5 = &v7;
  }

  return re::zerocopy::writeAll(v4, v5, 1);
}

uint64_t re::zerocopy::DynamicWriteStream::nextWrite(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v6 = v4[1];
  v5 = v4[2];
  if (v5 == v6)
  {
    v7 = 2 * v5;
    if (v7 <= 0x40)
    {
      v8 = 64;
    }

    else
    {
      v8 = v7;
    }

    re::DynamicArray<BOOL>::setCapacity(v4, v8);
    v4 = *(a1 + 8);
    v6 = v4[1];
    v5 = v4[2];
  }

  *a2 = v4[4] + v5;
  a2[1] = v6 - v5;
  return 1;
}

void *re::zerocopy::DynamicWriteStream::advanceWrite(re::zerocopy::DynamicWriteStream *this, unint64_t a2)
{
  v2 = *(this + 1);
  v3 = v2[2];
  v4 = v2[1] - v3;
  if (v4 >= a2)
  {
    v4 = a2;
  }

  return re::DynamicArray<unsigned char>::resizeUninitialized(v2, v4 + v3);
}

uint64_t re::zerocopy::writeAll(re::zerocopy *this, re::zerocopy::WriteStream *a2, char *a3)
{
  v9 = 0;
  v10 = 0;
  if (!a3)
  {
    return 1;
  }

  v3 = a3;
  do
  {
    v6 = (*(*this + 16))(this, &v9);
    if (!v6)
    {
      break;
    }

    v7 = (v3 >= v10 ? v10 : v3);
    memcpy(v9, a2, v7);
    (*(*this + 24))(this, v7);
    a2 = (a2 + v7);
    v3 -= v7;
  }

  while (v3);
  return v6;
}

void re::zerocopy::BufferedReadStream::~BufferedReadStream(re::zerocopy::BufferedReadStream *this)
{
  v1 = this;
  *this = &unk_1F5D0CA50;
  if (*(this + 4))
  {
    this = (*(**(this + 1) + 24))(*(this + 1));
    *(v1 + 4) = 0;
  }

  v2 = *(v1 + 13);
  if (v2 != (v1 + 40) && v2 != 0)
  {
    v4 = re::globalAllocators(this);
    (*(*v4[2] + 40))(v4[2], v2);
  }

  *(v1 + 13) = 0;
  *(v1 + 14) = 0;
  *(v1 + 15) = 0;
}

{
  re::zerocopy::BufferedReadStream::~BufferedReadStream(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::zerocopy::BufferedReadStream::contiguousRead(re::zerocopy::BufferedReadStream *this, char *a2, void *a3)
{
  if (*(this + 13) != *(this + 14))
  {
    goto LABEL_2;
  }

  v8 = *(this + 3);
  if (!v8)
  {
    result = re::zerocopy::BufferedReadStream::nextFromStream(this);
    if (!result)
    {
      return result;
    }

    v8 = *(this + 3);
  }

  if (v8 >= a2)
  {
    a3[1] = a2;
    v9 = *(this + 2);
    v10 = *(this + 3);
    *a3 = v9;
    if (v10 >= a2)
    {
      v11 = a2;
    }

    else
    {
      v11 = v10;
    }

    *(this + 2) = &v11[v9];
    *(this + 3) = v10 - v11;
    *(this + 4) += v11;
  }

  else
  {
LABEL_2:
    result = re::zerocopy::BufferedReadStream::fillInternal(this, a2);
    if (!result)
    {
      return result;
    }

    v7 = *(this + 13);
    *a3 = v7;
    a3[1] = a2;
    *(this + 14) = v7;
  }

  return 1;
}

uint64_t re::zerocopy::BufferedReadStream::nextFromStream(re::zerocopy::BufferedReadStream *this)
{
  if (*(this + 4))
  {
    (*(**(this + 1) + 24))(*(this + 1));
    *(this + 4) = 0;
  }

  v2 = *(**(this + 1) + 16);

  return v2();
}

uint64_t re::zerocopy::BufferedReadStream::fillInternal(re::zerocopy::BufferedReadStream *this, char *a2)
{
  v3 = *(this + 14);
  v4 = *(this + 13);
  if (&v3[-v4] < a2)
  {
    v6 = *(this + 3);
    do
    {
      if (!v6)
      {
        result = re::zerocopy::BufferedReadStream::nextFromStream(this);
        if (!result)
        {
          return result;
        }

        v4 = *(this + 13);
        v3 = *(this + 14);
        v6 = *(this + 3);
      }

      v8 = (&a2[v4] - v3);
      if (v8 >= v6)
      {
        v9 = v6;
      }

      else
      {
        v9 = v8;
      }

      memcpy(v3, *(this + 2), v9);
      v10 = *(this + 3);
      if (v10 >= v9)
      {
        v11 = v9;
      }

      else
      {
        v11 = *(this + 3);
      }

      v6 = v10 - v11;
      *(this + 2) += v11;
      *(this + 3) = v6;
      *(this + 4) += v11;
      v4 = *(this + 13);
      v3 = (*(this + 14) + v9);
      *(this + 14) = v3;
    }

    while (&v3[-v4] < a2);
  }

  return 1;
}

uint64_t re::zerocopy::BufferedReadStream::boundedRead(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v6 = (*(*a1 + 16))(a1, a3);
  if (v6)
  {
    if (*(a3 + 8) >= a2)
    {
      v7 = a2;
    }

    else
    {
      v7 = *(a3 + 8);
    }

    *(a3 + 8) = v7;
    (*(*a1 + 24))(a1);
  }

  return v6;
}

uint64_t re::zerocopy::BufferedReadStream::nextRead(re::zerocopy::BufferedReadStream *this, void *a2)
{
  v3 = *(this + 13);
  v4 = *(this + 14);
  if (v3 != v4)
  {
    *a2 = v3;
    a2[1] = v4 - v3;
    return 1;
  }

  if (*(this + 3) || (result = re::zerocopy::BufferedReadStream::nextFromStream(this), result))
  {
    *a2 = *(this + 1);
    return 1;
  }

  return result;
}

char *re::zerocopy::BufferedReadStream::advanceRead(re::zerocopy::BufferedReadStream *this, unint64_t a2)
{
  result = *(this + 13);
  v4 = *(this + 14);
  if (result == v4)
  {
    v7 = *(this + 3);
    if (v7 >= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = *(this + 3);
    }

    *(this + 2) += v8;
    *(this + 3) = v7 - v8;
    *(this + 4) += v8;
  }

  else
  {
    v5 = v4 - result;
    v6 = v5 - a2;
    if (v5 > a2)
    {
      memmove(result, &result[a2], v6);
      result = (*(this + 13) + v6);
    }

    *(this + 14) = result;
  }

  return result;
}

__n128 re::TransferStats::aggregate(__n128 *a1, __n128 *a2)
{
  if (a2->n128_u32[0])
  {
    if (a1->n128_u32[0])
    {
      v2 = a1->n128_u32[2];
      v3 = a1->n128_u32[1] + a2->n128_u32[1];
      a1->n128_u32[0] += a2->n128_u32[0];
      a1->n128_u32[1] = v3;
      v4 = a2->n128_u32[2];
      if (v4 >= v2)
      {
        v4 = v2;
      }

      a1->n128_u32[2] = v4;
      v5 = a1->n128_u32[3];
      if (v5 <= a2->n128_u32[3])
      {
        v5 = a2->n128_u32[3];
      }

      a1->n128_u32[3] = v5;
    }

    else
    {
      result = *a2;
      *a1 = *a2;
    }
  }

  return result;
}

void *re::PeerTransferReport::addEntry(void *this, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v24 = a2;
  if (a5)
  {
    v8 = this;
    v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((this + 1), &v24);
    if (v9)
    {
      if (*v9)
      {
        v10 = v9[2];
        v11 = v9[1] + a5;
        ++*v9;
        v9[1] = v11;
        if (a5 >= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = a5;
        }

        v13 = v9[3];
        if (v13 <= a5)
        {
          v13 = a5;
        }

        v9[2] = v12;
        v9[3] = v13;
      }

      else
      {
        *v9 = 1;
        v9[1] = a5;
        v9[2] = a5;
        v9[3] = a5;
      }
    }

    else
    {
      LODWORD(v25) = 1;
      DWORD1(v25) = a5;
      DWORD2(v25) = a5;
      HIDWORD(v25) = a5;
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew((v8 + 1), &v24, &v25);
    }

    *&v22 = a3;
    *(&v22 + 1) = a4;
    v23 = v24;
    this = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>((v8 + 7), &v22, &v25);
    if (HIDWORD(v25) == 0x7FFFFFFF)
    {
      *&v22 = a3;
      *(&v22 + 1) = a4;
      v23 = v24;
      v25 = 0uLL;
      v26 = 0;
      this = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>((v8 + 7), &v22, &v25);
      if (HIDWORD(v25) == 0x7FFFFFFF)
      {
        this = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry((v8 + 7), DWORD2(v25), v25);
        *(this + 1) = v22;
        this[3] = v23;
        *(this + 8) = 1;
        *(this + 9) = a5;
        *(this + 10) = a5;
        *(this + 11) = a5;
        ++*(v8 + 24);
      }
    }

    else
    {
      v14 = v8[9] + 56 * HIDWORD(v25);
      v17 = *(v14 + 32);
      v15 = (v14 + 32);
      v16 = v17;
      if (v17)
      {
        v18 = v15[2];
        v19 = v15[1] + a5;
        *v15 = v16 + 1;
        v15[1] = v19;
        if (a5 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = a5;
        }

        v21 = v15[3];
        if (v21 <= a5)
        {
          v21 = a5;
        }

        v15[2] = v20;
        v15[3] = v21;
      }

      else
      {
        *v15 = 1;
        v15[1] = a5;
        v15[2] = a5;
        v15[3] = a5;
      }
    }
  }

  return this;
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

void re::PeerTransferReport::aggregate(re::PeerTransferReport *this, const re::PeerTransferReport *a2)
{
  v4 = *(a2 + 10);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 3);
    while (1)
    {
      v7 = *v6;
      v6 += 10;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 10);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 3);
    do
    {
      v9 = (v8 + 40 * v5);
      v10 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 8, &v9->n128_u64[1]);
      if (v10)
      {
        re::TransferStats::aggregate(v10, v9 + 1);
      }

      else
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v11 = 0xBF58476D1CE4E5B9 * (v9->n128_u64[1] ^ (v9->n128_u64[1] >> 30));
        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 8, &v9->n128_u64[1], (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), &v23);
        if (HIDWORD(v24) == 0x7FFFFFFF)
        {
          v12 = re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 8, v24, v23);
          *(v12 + 8) = v9->n128_u64[1];
          *(v12 + 16) = v9[1];
          ++*(this + 12);
        }
      }

      if (*(a2 + 10) <= (v5 + 1))
      {
        v13 = v5 + 1;
      }

      else
      {
        v13 = *(a2 + 10);
      }

      v8 = *(a2 + 3);
      while (v13 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 40 * v5) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v5) = v13;
LABEL_21:
      ;
    }

    while (v5 != v4);
  }

  v14 = *(a2 + 22);
  if (v14)
  {
    v15 = 0;
    v16 = *(a2 + 9);
    while (1)
    {
      v17 = *v16;
      v16 += 14;
      if (v17 < 0)
      {
        break;
      }

      if (v14 == ++v15)
      {
        LODWORD(v15) = *(a2 + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v15) = 0;
  }

  if (v15 != v14)
  {
    v18 = *(a2 + 9);
    do
    {
      v19 = (v18 + 56 * v15);
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(this + 56, &v19->n128_u64[1], &v23);
      if (HIDWORD(v24) == 0x7FFFFFFF)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(this + 56, &v19->n128_u64[1], &v23);
        if (HIDWORD(v24) == 0x7FFFFFFF)
        {
          v20 = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(this + 56, v24, v23);
          v21 = *(v19 + 8);
          *(v20 + 24) = v19[1].n128_u64[1];
          *(v20 + 8) = v21;
          *(v20 + 32) = v19[2];
          ++*(this + 24);
        }
      }

      else
      {
        re::TransferStats::aggregate((*(this + 9) + 56 * HIDWORD(v24) + 32), v19 + 2);
      }

      if (*(a2 + 22) <= (v15 + 1))
      {
        v22 = v15 + 1;
      }

      else
      {
        v22 = *(a2 + 22);
      }

      v18 = *(a2 + 9);
      while (v22 - 1 != v15)
      {
        LODWORD(v15) = v15 + 1;
        if ((*(v18 + 56 * v15) & 0x80000000) != 0)
        {
          goto LABEL_42;
        }
      }

      LODWORD(v15) = v22;
LABEL_42:
      ;
    }

    while (v15 != v14);
  }
}

void re::SessionTransferReport::aggregate(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 32;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a2 + 32);
    do
    {
      v9 = v8 + (v5 << 7);
      v10 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 16, (v9 + 8));
      if (v10)
      {
        re::PeerTransferReport::aggregate(v10, (v9 + 16));
      }

      else
      {
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(a1 + 16, (v9 + 8), (v9 + 16));
      }

      if (*(a2 + 48) <= (v5 + 1))
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = *(a2 + 48);
      }

      v8 = *(a2 + 32);
      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + (v5 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_21;
        }
      }

      LODWORD(v5) = v11;
LABEL_21:
      ;
    }

    while (v5 != v4);
  }
}

void re::TransferReport::aggregate(double *a1, uint64_t a2)
{
  v2 = *a2;
  if (*a2 > 0.0 && v2 < *(a2 + 8))
  {
    v6 = *a1;
    if (*a1 <= 0.0 || (v7 = a1[1], v6 >= v7))
    {
      *a1 = *a2;
      v13 = a1 + 2;
      v14 = a2 + 16;

      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(v13, v14);
    }

    else
    {
      if (v2 >= v6)
      {
        v2 = *a1;
      }

      *a1 = v2;
      v8 = *(a2 + 8);
      if (v7 >= v8)
      {
        v8 = v7;
      }

      a1[1] = v8;
      v9 = *(a2 + 48);
      if (v9)
      {
        v10 = 0;
        v11 = *(a2 + 32);
        while (1)
        {
          v12 = *v11;
          v11 += 22;
          if (v12 < 0)
          {
            break;
          }

          if (v9 == ++v10)
          {
            LODWORD(v10) = *(a2 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 != v9)
      {
        v15 = *(a2 + 32);
        do
        {
          v16 = v15 + 88 * v10;
          v17 = re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet((a1 + 2), (v16 + 8));
          if (v17)
          {
            re::SessionTransferReport::aggregate(v17, v16 + 16);
          }

          else
          {
            re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addNew((a1 + 2), (v16 + 8), v16 + 16);
          }

          if (*(a2 + 48) <= (v10 + 1))
          {
            v18 = v10 + 1;
          }

          else
          {
            v18 = *(a2 + 48);
          }

          v15 = *(a2 + 32);
          while (v18 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v15 + 88 * v10) & 0x80000000) != 0)
            {
              goto LABEL_34;
            }
          }

          LODWORD(v10) = v18;
LABEL_34:
          ;
        }

        while (v10 != v9);
      }
    }
  }
}

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addNew(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 88 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v12, v11);
  *(v7 + 8) = *a2;
  v8 = *(a3 + 8);
  *(v7 + 16) = *a3;
  v9 = v7 + 16;
  *(v7 + 24) = v8;
  re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v7 + 32, a3 + 16);
  ++*(a1 + 40);
  return v9;
}

void re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_9_0, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v6 + v4 + 32));
          v3 = *(a1 + 32);
        }

        v4 += 88;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v4, *(v7 + v5 + 80) % *(v4 + 24), *(v7 + v5 + 80));
        v9 = *(a2 + 16) + v5;
        *(v8 + 8) = *(v9 + 8);
        v10 = *(v9 + 24);
        *(v8 + 16) = *(v9 + 16);
        *(v8 + 24) = v10;
        result = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v8 + 32, v9 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 88;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        v8 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 120) % *(v4 + 24), *(v7 + v5 + 120));
        v9 = (*(a2 + 16) + v5);
        *(v8 + 8) = v9[1];
        *(v8 + 16) = v9[2];
        re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v8 + 24, v9 + 3);
        result = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::HashTable(v8 + 72, v9 + 9);
        v2 = *(a2 + 32);
      }

      v5 += 128;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 7) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 7);
    }

    re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 40 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_26, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24), *(v7 + v5 + 32));
        v8 = *(a2 + 16) + v5;
        *(result + 8) = *(v8 + 8);
        *(result + 16) = *(v8 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::HashTable(uint64_t a1, void *a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 7) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 7);
    }

    re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::init(a1, v4, v5);
    re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = (v7 + 1);
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 56 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_9_0, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash("assertion failure: (temp) Out of memory.");
    __break(1u);
  }
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::copy(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(v4, *(v7 + v5 + 48) % *(v4 + 24), *(v7 + v5 + 48));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 24);
        *(result + 8) = *(v8 + 8);
        *(result + 24) = v9;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 56;
    }
  }

  return result;
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 56 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 56 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 48) = a3;
  ++*(a1 + 28);
  return v7 + 56 * v5;
}

void re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::copy(a1, v9);
      re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 56 * v6;
      v11 = *(v10 + 8);
      result = v10 + 8;
      if (v11 == *a2 && *(result + 8) == a2[1])
      {
        result = *(result + 16);
        if (result == a2[2])
        {
          break;
        }
      }

      v6 = *(v8 + 56 * v6) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v6;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::PeerTransferReport const&>(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  *(v7 + 8) = *a3;
  *(v7 + 16) = *a4;
  v8 = v7 + 16;
  re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashTable(v7 + 24, a4 + 1);
  re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::HashTable(v8 + 56, a4 + 7);
  ++*(a1 + 40);
  return v8;
}

BOOL re::zerocopy::MemoryReadStream::nextRead(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) - v2;
  *a2 = v2;
  a2[1] = v3;
  return v3 != 0;
}

uint64_t re::zerocopy::MemoryReadStream::advanceRead(uint64_t this, unint64_t a2)
{
  v2 = *(this + 16);
  v3 = *(this + 24) - v2;
  if (v3 >= a2)
  {
    v3 = a2;
  }

  *(this + 16) = v2 + v3;
  return this;
}

uint64_t re::TransferReportWriter::write(re::zerocopy ***a1, uint64_t a2)
{
  v4 = *a1;
  v73 = -30;
  re::zerocopy::writeAll(*v4, &v73, 1);
  v5 = *a1;
  v73 = 8;
  re::zerocopy::writeAll(*v5, &v73, 1);
  v6 = *a1;
  v73 = -30;
  re::zerocopy::writeAll(*v6, &v73, 1);
  v73 = 8;
  re::zerocopy::writeAll(*v6, &v73, 1);
  re::OPackWriter::writeFloat64(v6, *a2, v7, v8, v9);
  v73 = 9;
  re::zerocopy::writeAll(*v6, &v73, 1);
  re::OPackWriter::writeFloat64(v6, *(a2 + 8), v10, v11, v12);
  v13 = *a1;
  v73 = 9;
  re::zerocopy::writeAll(*v13, &v73, 1);
  v14 = *a1;
  result = re::OPackWriter::writeDictionaryBegin(v14, *(a2 + 44), v15, v16);
  v70 = *(a2 + 48);
  if (v70)
  {
    v20 = 0;
    v21 = *(a2 + 32);
    while (1)
    {
      v22 = *v21;
      v21 += 22;
      if (v22 < 0)
      {
        break;
      }

      if (v70 == ++v20)
      {
        LODWORD(v20) = *(a2 + 48);
        break;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 != v70)
  {
    v23 = *(a2 + 32);
    v69 = a2;
    do
    {
      v24 = v23 + 88 * v20;
      re::OPackWriter::writeInteger(v14, *(v24 + 8), v18, v19);
      v73 = -29;
      re::zerocopy::writeAll(*v14, &v73, 1);
      v73 = 8;
      re::zerocopy::writeAll(*v14, &v73, 1);
      v26 = *(v24 + 16);
      v25 = v24 + 16;
      re::OPackWriter::writeInteger(v14, v26, v27, v28);
      v73 = 9;
      re::zerocopy::writeAll(*v14, &v73, 1);
      if (*(v25 + 8))
      {
        v29 = 1;
      }

      else
      {
        v29 = 2;
      }

      v73 = v29;
      re::zerocopy::writeAll(*v14, &v73, 1);
      v73 = 10;
      re::zerocopy::writeAll(*v14, &v73, 1);
      result = re::OPackWriter::writeDictionaryBegin(v14, *(v25 + 44), v30, v31);
      v72 = *(v25 + 48);
      if (v72)
      {
        v32 = 0;
        v33 = *(v25 + 32);
        while (1)
        {
          v34 = *v33;
          v33 += 32;
          if (v34 < 0)
          {
            break;
          }

          if (v72 == ++v32)
          {
            LODWORD(v32) = *(v25 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v32) = 0;
      }

      if (v32 != v72)
      {
        v35 = *(v25 + 32);
        v71 = v25;
        do
        {
          v36 = v35 + (v32 << 7);
          re::OPackWriter::writeInteger(v14, *(v36 + 8), v18, v19);
          v73 = -29;
          re::zerocopy::writeAll(*v14, &v73, 1);
          v73 = 8;
          re::zerocopy::writeAll(*v14, &v73, 1);
          v38 = *(v36 + 16);
          v37 = v36 + 16;
          re::OPackWriter::writeInteger(v14, v38, v39, v40);
          v73 = 9;
          re::zerocopy::writeAll(*v14, &v73, 1);
          re::OPackWriter::writeDictionaryBegin(v14, *(v37 + 36), v41, v42);
          v45 = *(v37 + 40);
          if (v45)
          {
            v46 = 0;
            v47 = *(v37 + 24);
            while (1)
            {
              v48 = *v47;
              v47 += 10;
              if (v48 < 0)
              {
                break;
              }

              if (v45 == ++v46)
              {
                LODWORD(v46) = *(v37 + 40);
                break;
              }
            }
          }

          else
          {
            LODWORD(v46) = 0;
          }

          if (v46 != v45)
          {
            v49 = *(v37 + 24);
            do
            {
              v50 = v49 + 40 * v46;
              re::OPackWriter::writeInteger(v14, *(v50 + 8), v43, v44);
              if (*(v37 + 40) <= (v46 + 1))
              {
                v51 = v46 + 1;
              }

              else
              {
                v51 = *(v37 + 40);
              }

              v49 = *(v37 + 24);
              while (v51 - 1 != v46)
              {
                LODWORD(v46) = v46 + 1;
                if ((*(v49 + 40 * v46) & 0x80000000) != 0)
                {
                  goto LABEL_37;
                }
              }

              LODWORD(v46) = v51;
LABEL_37:
              ;
            }

            while (v46 != v45);
          }

          if (*(v37 + 36) >= 0xFu)
          {
            v73 = 3;
            re::zerocopy::writeAll(*v14, &v73, 1);
          }

          v73 = 10;
          re::zerocopy::writeAll(*v14, &v73, 1);
          result = re::OPackWriter::writeDictionaryBegin(v14, *(v37 + 84), v52, v53);
          v54 = *(v37 + 88);
          if (v54)
          {
            v55 = 0;
            v56 = *(v37 + 72);
            while (1)
            {
              v57 = *v56;
              v56 += 14;
              if (v57 < 0)
              {
                break;
              }

              if (v54 == ++v55)
              {
                LODWORD(v55) = *(v37 + 88);
                break;
              }
            }
          }

          else
          {
            LODWORD(v55) = 0;
          }

          if (v55 != v54)
          {
            v58 = *(v37 + 72);
            do
            {
              v59 = v58 + 56 * v55;
              v73 = -45;
              re::zerocopy::writeAll(*v14, &v73, 1);
              re::OPackWriter::writeInteger(v14, *(v59 + 8), v60, v61);
              re::OPackWriter::writeInteger(v14, *(v59 + 16), v62, v63);
              re::OPackWriter::writeInteger(v14, *(v59 + 24), v64, v65);
              if (*(v37 + 88) <= (v55 + 1))
              {
                v66 = v55 + 1;
              }

              else
              {
                v66 = *(v37 + 88);
              }

              v58 = *(v37 + 72);
              while (v66 - 1 != v55)
              {
                LODWORD(v55) = v55 + 1;
                if ((*(v58 + 56 * v55) & 0x80000000) != 0)
                {
                  goto LABEL_56;
                }
              }

              LODWORD(v55) = v66;
LABEL_56:
              ;
            }

            while (v55 != v54);
          }

          if (*(v37 + 84) >= 0xFu)
          {
            v73 = 3;
            result = re::zerocopy::writeAll(*v14, &v73, 1);
          }

          v25 = v71;
          if (*(v71 + 48) <= (v32 + 1))
          {
            v67 = v32 + 1;
          }

          else
          {
            v67 = *(v71 + 48);
          }

          v35 = *(v71 + 32);
          while (v67 - 1 != v32)
          {
            LODWORD(v32) = v32 + 1;
            if ((*(v35 + (v32 << 7)) & 0x80000000) != 0)
            {
              goto LABEL_67;
            }
          }

          LODWORD(v32) = v67;
LABEL_67:
          ;
        }

        while (v32 != v72);
      }

      if (*(v25 + 44) >= 0xFu)
      {
        v73 = 3;
        result = re::zerocopy::writeAll(*v14, &v73, 1);
      }

      a2 = v69;
      if (*(v69 + 48) <= (v20 + 1))
      {
        v68 = v20 + 1;
      }

      else
      {
        v68 = *(v69 + 48);
      }

      v23 = *(v69 + 32);
      while (v68 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(v23 + 88 * v20) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v20) = v68;
LABEL_78:
      ;
    }

    while (v20 != v70);
  }

  if (*(a2 + 44) >= 0xFu)
  {
    v73 = 3;
    return re::zerocopy::writeAll(*v14, &v73, 1);
  }

  return result;
}

uint64_t re::TransferReportReader::read(re::OPackReader **a1, uint64_t a2)
{
  v4 = *a1;
  result = re::OPackReader::next(*a1, a2);
  if (result)
  {
    if (*(v4 + 196) != 13)
    {
      return 0;
    }

    v7 = *a1;
    if (!re::OPackReader::next(*a1, v6))
    {
      return *(*a1 + 184) == 5;
    }

    while (1)
    {
      if (*(v7 + 196) != 6)
      {
        return *(*a1 + 184) == 5;
      }

      v9 = *(v7 + 224);
      v10 = *a1;
      if (v9 == 1)
      {
        break;
      }

      if (!v9)
      {
        result = re::OPackReader::next(*a1, v8);
        if (!result)
        {
          return result;
        }

        if (*(v10 + 196) != 13)
        {
          return 0;
        }

        if (re::OPackReader::next(v10, v11))
        {
          while (*(v10 + 196) == 6)
          {
            if (*(v10 + 224) == 1)
            {
              result = re::OPackReader::next(v10, v12);
              if (!result)
              {
                return result;
              }

              if (*(v10 + 196) != 8)
              {
                return 0;
              }

              *(a2 + 8) = *(v10 + 28);
            }

            else if (*(v10 + 224))
            {
              re::OPackReader::next(v10, v12);
            }

            else
            {
              result = re::OPackReader::next(v10, v12);
              if (!result)
              {
                return result;
              }

              if (*(v10 + 196) != 8)
              {
                return 0;
              }

              *a2 = *(v10 + 28);
            }

            if ((re::OPackReader::next(v10, v13) & 1) == 0)
            {
              break;
            }
          }
        }

LABEL_93:
        if (*(v10 + 184) != 5)
        {
          return 0;
        }

        goto LABEL_96;
      }

      re::OPackReader::next(*a1, v8);
LABEL_96:
      v7 = *a1;
      if ((re::OPackReader::next(*a1, v12) & 1) == 0)
      {
        return *(*a1 + 184) == 5;
      }
    }

    result = re::OPackReader::next(*a1, v8);
    if (!result)
    {
      return result;
    }

    if (*(v10 + 196) != 13)
    {
      return 0;
    }

    v15 = re::OPackReader::next(v10, v14);
    if (!v15)
    {
      goto LABEL_93;
    }

    while (1)
    {
      if (*(v10 + 196) != 6)
      {
        goto LABEL_93;
      }

      v16 = *(v10 + 28);
      v42 = 0;
      v43 = 0;
      memset(v44, 0, sizeof(v44));
      v45 = 0;
      v46 = 0x7FFFFFFFLL;
      if (!re::OPackReader::next(v10, v17) || *(v10 + 196) != 13)
      {
        goto LABEL_99;
      }

      if (re::OPackReader::next(v10, v18))
      {
        break;
      }

LABEL_89:
      if (*(v10 + 184) != 5)
      {
LABEL_99:
        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v44);
        return 0;
      }

      *&v56 = v16;
      memset(v47, 0, 24);
      v38 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
      re::HashTable<unsigned long,re::ecs2::VFXREBinding,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(a2 + 16, &v56, v38 ^ (v38 >> 31), v47);
      if (*&v47[12] == 0x7FFFFFFF)
      {
        v39 = re::HashTable<unsigned long,re::SessionTransferReport,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a2 + 16, *&v47[8], *v47);
        v40 = v56;
        *(v39 + 32) = 0u;
        v39 += 32;
        *(v39 - 24) = v40;
        *(v39 - 16) = v42;
        *(v39 - 8) = v43;
        *(v39 + 16) = 0u;
        *(v39 + 32) = 0;
        *(v39 + 36) = 0x7FFFFFFFLL;
        re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v39, v44);
        ++*(a2 + 56);
      }

      re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v44);
      v15 = re::OPackReader::next(v10, v41);
      if ((v15 & 1) == 0)
      {
        goto LABEL_93;
      }
    }

    while (1)
    {
      if (*(v10 + 196) != 6)
      {
        goto LABEL_89;
      }

      v20 = *(v10 + 224);
      if (v20 == 2)
      {
        break;
      }

      if (v20 == 1)
      {
        if (!re::OPackReader::next(v10, v19) || *(v10 + 196) != 2)
        {
          goto LABEL_99;
        }

        v43 = *(v10 + 224);
      }

      else if (*(v10 + 224))
      {
        re::OPackReader::next(v10, v19);
      }

      else
      {
        if (!re::OPackReader::next(v10, v19) || *(v10 + 196) != 6)
        {
          goto LABEL_99;
        }

        v42 = *(v10 + 28);
      }

LABEL_88:
      if ((re::OPackReader::next(v10, v21) & 1) == 0)
      {
        goto LABEL_89;
      }
    }

    if (!re::OPackReader::next(v10, v19) || *(v10 + 196) != 13)
    {
      goto LABEL_99;
    }

    v52 = 0;
    v23 = re::OPackReader::next(v10, v22);
    if (v23)
    {
      do
      {
        if (*(v10 + 196) != 6)
        {
          break;
        }

        v52 = *(v10 + 28);
        memset(v47, 0, sizeof(v47));
        v48 = 0x7FFFFFFFLL;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        v51 = 0x7FFFFFFFLL;
        if (!re::OPackReader::next(v10, v24) || *(v10 + 196) != 13)
        {
          goto LABEL_98;
        }

        if (re::OPackReader::next(v10, v25))
        {
          while (1)
          {
            if (*(v10 + 196) != 6)
            {
              goto LABEL_83;
            }

            v27 = *(v10 + 224);
            if (v27 == 2)
            {
              break;
            }

            if (v27 == 1)
            {
              if (!re::OPackReader::next(v10, v26) || *(v10 + 196) != 13)
              {
                goto LABEL_98;
              }

              *&v54 = 0;
              if (re::OPackReader::next(v10, v29))
              {
                do
                {
                  if (*(v10 + 196) != 6)
                  {
                    break;
                  }

                  *&v54 = *(v10 + 28);
                  v56 = 0uLL;
                  {
                    goto LABEL_98;
                  }

                  re::HashTable<unsigned long long,re::TransferStats,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(&v47[8], &v54, &v56);
                }

                while ((re::OPackReader::next(v10, v30) & 1) != 0);
              }

LABEL_79:
              if (*(v10 + 184) != 5)
              {
                goto LABEL_98;
              }

              goto LABEL_82;
            }

            if (*(v10 + 224))
            {
              re::OPackReader::next(v10, v26);
            }

            else
            {
              if (!re::OPackReader::next(v10, v26) || *(v10 + 196) != 6)
              {
                goto LABEL_98;
              }

              *v47 = *(v10 + 28);
            }

LABEL_82:
            if ((re::OPackReader::next(v10, v28) & 1) == 0)
            {
              goto LABEL_83;
            }
          }

          if (!re::OPackReader::next(v10, v26) || *(v10 + 196) != 13)
          {
            goto LABEL_98;
          }

          if (re::OPackReader::next(v10, v31))
          {
            while (*(v10 + 196) == 12)
            {
              v54 = 0uLL;
              v55 = 0;
              if (re::OPackReader::next(v10, v28) && *(v10 + 196) == 6)
              {
                *&v54 = *(v10 + 28);
              }

              if (re::OPackReader::next(v10, v32) && *(v10 + 196) == 6)
              {
                *(&v54 + 1) = *(v10 + 28);
              }

              if (re::OPackReader::next(v10, v33) && *(v10 + 196) == 6)
              {
                v55 = *(v10 + 28);
              }

              if (!re::OPackReader::next(v10, v34))
              {
                goto LABEL_98;
              }

              if (*(v10 + 184) != 3)
              {
                goto LABEL_98;
              }

              v53 = 0uLL;
              {
                goto LABEL_98;
              }

              v56 = 0uLL;
              v57 = 0;
              re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::findEntry<re::InstanceParentTypeTuple>(v49, &v54, &v56);
              if (HIDWORD(v56) == 0x7FFFFFFF)
              {
                v36 = re::HashTable<re::InstanceParentTypeTuple,re::TransferStats,re::Hash<re::InstanceParentTypeTuple>,re::EqualTo<re::InstanceParentTypeTuple>,true,false>::allocEntry(v49, DWORD2(v56), v56);
                *(v36 + 8) = v54;
                *(v36 + 24) = v55;
                *(v36 + 32) = v53;
                ++HIDWORD(v51);
              }

              if ((re::OPackReader::next(v10, v35) & 1) == 0)
              {
                goto LABEL_79;
              }
            }
          }

          goto LABEL_79;
        }

LABEL_83:
        if (*(v10 + 184) != 5)
        {
LABEL_98:
          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v49);
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v47[8]);
          goto LABEL_99;
        }

        re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(v44, &v52, v47);
        re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v49);
        re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v47[8]);
        v23 = re::OPackReader::next(v10, v37);
      }

      while ((v23 & 1) != 0);
    }

    if (*(v10 + 184) != 5)
    {
      goto LABEL_99;
    }

    goto LABEL_88;
  }

  return result;
}

uint64_t re::anonymous namespace::writeTransferStats(re::zerocopy **a1, unsigned int *a2)
{
  v14 = -28;
  re::zerocopy::writeAll(*a1, &v14, 1);
  v15 = 8;
  re::zerocopy::writeAll(*a1, &v15, 1);
  re::OPackWriter::writeInteger(a1, *a2, v4, v5);
  v16 = 9;
  re::zerocopy::writeAll(*a1, &v16, 1);
  re::OPackWriter::writeInteger(a1, a2[1], v6, v7);
  v17 = 10;
  re::zerocopy::writeAll(*a1, &v17, 1);
  re::OPackWriter::writeInteger(a1, a2[2], v8, v9);
  v18 = 11;
  re::zerocopy::writeAll(*a1, &v18, 1);
  v12 = a2[3];

  return re::OPackWriter::writeInteger(a1, v12, v10, v11);
}

BOOL re::anonymous namespace::readTransferStats(re::OPackReader *a1, _DWORD *a2)
{
  v5 = re::OPackReader::next(a1, a2);
  result = 0;
  if (v5 && *(a1 + 196) == 13)
  {
    while (1)
    {
      while (1)
      {
        if (!re::OPackReader::next(a1, v4) || *(a1 + 196) != 6)
        {
          return *(a1 + 184) == 5;
        }

        v8 = *(a1 + 224);
        if (v8 <= 1)
        {
          break;
        }

        if (v8 == 2)
        {
          v12 = re::OPackReader::next(a1, v7);
          result = 0;
          if (!v12 || *(a1 + 196) != 6)
          {
            return result;
          }

          a2[2] = *(a1 + 28);
        }

        else if (v8 == 3)
        {
          v10 = re::OPackReader::next(a1, v7);
          result = 0;
          if (!v10 || *(a1 + 196) != 6)
          {
            return result;
          }

          a2[3] = *(a1 + 28);
        }

        else
        {
LABEL_16:
          re::OPackReader::next(a1, v7);
        }
      }

      if (*(a1 + 224))
      {
        if (v8 != 1)
        {
          goto LABEL_16;
        }

        v9 = re::OPackReader::next(a1, v7);
        result = 0;
        if (!v9 || *(a1 + 196) != 6)
        {
          return result;
        }

        a2[1] = *(a1 + 28);
      }

      else
      {
        v11 = re::OPackReader::next(a1, v7);
        result = 0;
        if (!v11 || *(a1 + 196) != 6)
        {
          return result;
        }

        *a2 = *(a1 + 28);
      }
    }
  }

  return result;
}

void re::zerocopy::DispatchWriteStream::clear(re::zerocopy::DispatchWriteStream *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    dispatch_release(v2);
    *(this + 1) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {
    dispatch_release(v3);
    *(this + 2) = 0;
  }

  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
}

void re::zerocopy::DispatchWriteStream::~DispatchWriteStream(re::zerocopy::DispatchWriteStream *this)
{
  *this = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(this);
}

{
  *this = &unk_1F5D0CAE0;
  re::zerocopy::DispatchWriteStream::clear(this);

  JUMPOUT(0x1E6906520);
}

void re::zerocopy::DispatchWriteStream::mergeTail(re::zerocopy::DispatchWriteStream *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    v3 = (this + 16);
    subrange = dispatch_data_create_subrange(*(this + 2), 0, *(this + 5) - v2);
    if (!*v3)
    {
      goto LABEL_6;
    }

    dispatch_release(*v3);
  }

  else
  {
    v3 = (this + 16);
    subrange = *(this + 2);
  }

  *v3 = 0;
LABEL_6:
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 5) = 0;
  v5 = *(this + 1);
  if (v5)
  {
    concat = dispatch_data_create_concat(v5, subrange);
    dispatch_release(*(this + 1));
    *(this + 1) = concat;

    dispatch_release(subrange);
  }

  else
  {
    *(this + 1) = subrange;
  }
}

uint64_t re::zerocopy::DispatchWriteStream::nextWrite(re::zerocopy::DispatchWriteStream *this, void *a2)
{
  v4 = *(this + 4);
  if (!v4)
  {
    re::zerocopy::DispatchWriteStream::mergeTail(this);
    v5 = (2 * *(this + 5)) <= 0x1000 ? 4096 : 2 * *(this + 5);
    *(this + 4) = v5;
    *(this + 5) = v5;
    *(this + 2) = dispatch_data_create_alloc();
    v4 = *(this + 4);
    if (!v4)
    {
      return 0;
    }
  }

  *a2 = *(this + 3);
  a2[1] = v4;
  return 1;
}

uint64_t re::zerocopy::DispatchWriteStream::advanceWrite(uint64_t this, unint64_t a2)
{
  v2 = *(this + 32);
  if (v2 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = *(this + 32);
  }

  *(this + 24) += v3;
  *(this + 32) = v2 - v3;
  return this;
}

void re::Raft::init(int8x16_t *a1@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  re::Config::validate(v119, a1, a2);
  if (LOBYTE(v119[0]) == 1)
  {
    (*(**a2 + 16))(&v117);
    if (v117 != 1)
    {
      *a3 = 0;
      a3[8] = 1;
      goto LABEL_79;
    }

    RaftState::RaftState(v108, v118);
    v85 = 0u;
    v83 = 0u;
    memset(v84, 0, sizeof(v84));
    v81 = 0u;
    v82 = 0u;
    v79 = 0u;
    v80 = 0u;
    v77 = 0u;
    v78 = 0u;
    v75 = 0u;
    v76 = 0u;
    v73 = 0u;
    v74 = 0u;
    v71 = 0u;
    v72 = 0u;
    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    DWORD1(v85) = 0x7FFFFFFF;
    v88 = 0;
    v86 = 0;
    v87 = 0;
    v89 = 0;
    v90 = 0u;
    v91 = 0u;
    v92 = 0;
    v94 = 0u;
    v95 = 0;
    memset(v93, 0, sizeof(v93));
    v97 = 0u;
    HIDWORD(v94) = 0x7FFFFFFF;
    memset(v96, 0, sizeof(v96));
    v98 = 0;
    v99[0] = 0;
    v101[0] = 0;
    v102 = 0;
    memset(v107, 0, 53);
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    *&v104 = a1->i64[1];
    v7 = *a2;
    *a2 = 0;
    *(&v39 + 1) = 0;
    v35 = v7;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    LODWORD(v39) = 0;
    LOBYTE(v40[0]) = 0;
    v45 = 0;
    (*(*v7 + 32))(&v50);
    v8 = *(&v50 + 1);
    (*(*v35 + 40))(&v50);
    v46 = v8 - 1;
    v47 = v8 - 1;
    v9 = *(&v50 + 1) + 1;
    *&v52 = 0;
    *&v51 = 0;
    v50 = 0uLL;
    DWORD2(v51) = 0;
    BYTE8(v52) = 0;
    *&v62 = v9;
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(&v36, &v50);
    re::Optional<re::Snapshot>::operator=(v40, &v52 + 8);
    v45 = v62;
    if (BYTE8(v52) == 1)
    {
      re::Snapshot::~Snapshot(&v53);
    }

    re::DynamicArray<re::Entry>::deinit(&v50);
    re::RaftLog::operator=(&v65, &v35);
    re::RaftLog::~RaftLog(&v35);
    *&v106 = a1[1].i64[1];
    v10 = v113;
    v11 = v115;
    v50 = 0u;
    v51 = 0u;
    LODWORD(v52) = 0;
    *(&v52 + 4) = 0x7FFFFFFFLL;
    v57 = 0;
    v55 = 0;
    v53 = 0;
    v54 = 0;
    v56 = 0;
    v58 = 0;
    memset(v59, 0, sizeof(v59));
    v60 = 0u;
    memset(v61, 0, sizeof(v61));
    v62 = 0u;
    DWORD1(v60) = 0x7FFFFFFF;
    DWORD1(v62) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v59, v113);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v61, v11);
    v63 = v10;
    v64 = v11;
    re::DynamicArray<double>::resize(&v53, v10);
    LOBYTE(v35) = 1;
    re::ProgressSet::ProgressSet(&v36, &v50);
    re::Optional<re::ProgressSet>::operator=(v99, &v35);
    if (v35 == 1)
    {
      re::ProgressSet::~ProgressSet(&v36);
    }

    re::ProgressSet::~ProgressSet(&v50);
    *(&v105 + 1) = 0;
    v98 = 0;
    LOBYTE(v107[6]) = 0;
    *(&v107[6] + 1) = a1[4].i16[0];
    re::ReadOnly::ReadOnly(&v35, a1);
    re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator=(&v93[8], &v35);
    re::Queue<re::DynamicArray<unsigned char>>::operator=(v96, v40);
    BYTE8(v97) = v40[3];
    re::Queue<re::DynamicArray<unsigned char>>::deinit(v40);
    re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(&v35);
    *&v107[1] = vextq_s8(a1[3], a1[3], 8uLL);
    *(&v104 + 1) = 0;
    if (v102 == 1)
    {
      v102 = 0;
    }

    *&v103 = 0;
    *(&v106 + 1) = 0;
    *&v105 = 0;
    LOBYTE(v35) = 0;
    re::Optional<re::ConfChange>::operator=(v101, &v35);
    re::Optional<re::ConfChange>::~Optional(&v35);
    *(&v103 + 1) = 0;
    v107[0] = 0;
    v107[3] = 0;
    v14 = a1[2].i64[1];
    v13 = a1[3].i64[0];
    v15 = a1[2].i64[0];
    if (!v15)
    {
      v15 = a1[3].i64[0];
    }

    v107[4] = v15;
    v16 = 2 * v13;
    if (v14)
    {
      v16 = v14;
    }

    v107[5] = v16;
    *(&v107[6] + 3) = a1[4].i16[1];
    if (v113)
    {
      v17 = v114;
      v18 = 8 * v113;
      do
      {
        v36 = 0;
        v37 = 0;
        v35 = 0;
        LODWORD(v38) = 0;
        *&v40[0] = 0;
        v39 = 0uLL;
        *(&v40[0] + 1) = v106;
        re::DynamicArray<float *>::setCapacity(&v35, v106);
        LOBYTE(v40[1]) = 0;
        *(&v40[1] + 8) = xmmword_1E3049620;
        *(&v40[2] + 1) = 0;
        *&v40[3] = 0;
        WORD4(v40[3]) = 0;
        v19.n128_f64[0] = re::ProgressSet::insertVoter(&v50, v100, &v35, *v17);
        if (v50 & 1) == 0 && *(&v51 + 1) && (v52)
        {
          (*(**(&v51 + 1) + 40))(v19.n128_f64[0]);
        }

        if (v35)
        {
          v12 = v39;
          if (v39)
          {
            (*(*v35 + 40))(v19);
          }
        }

        ++v17;
        v18 -= 8;
      }

      while (v18);
    }

    if (v115)
    {
      v20 = v116;
      v21 = 8 * v115;
      do
      {
        v36 = 0;
        v37 = 0;
        v35 = 0;
        LODWORD(v38) = 0;
        *&v40[0] = 0;
        v39 = 0uLL;
        *(&v40[0] + 1) = v106;
        re::DynamicArray<float *>::setCapacity(&v35, v106);
        LOBYTE(v40[1]) = 0;
        *(&v40[1] + 8) = xmmword_1E3049620;
        *(&v40[2] + 1) = 0;
        *&v40[3] = 0;
        WORD4(v40[3]) = 0;
        v22.n128_f64[0] = re::ProgressSet::insertLearner(&v50, v100, &v35, *v20);
        if (*v20 == v104)
        {
          LOBYTE(v107[6]) = 1;
        }

        if (v50 & 1) == 0 && *(&v51 + 1) && (v52)
        {
          (*(**(&v51 + 1) + 40))(v22);
        }

        if (v35)
        {
          v12 = v39;
          if (v39)
          {
            (*(*v35 + 40))(v22);
          }
        }

        ++v20;
        v21 -= 8;
      }

      while (v21);
    }

    v23 = v112;
    if (v111 || __PAIR128__(*(&v111 + 1), 0) != v112)
    {
      if (v112 < v83 || (!*(&v66 + 1) ? (v68 != 1 ? ((*(*v65 + 40))(&v35), v24 = v36) : (v24 = *(&v81 + 1))) : (v24 = *(&v66 + 1) + *(&v82 + 1) - 1), v23 > v24))
      {
        re::internal::assertLog(4, v12, "assertion failure: '%s' (%s:line %i) hs.commit is out of range", "!Unreachable code", "loadState", 149);
        _os_crash("assertion failure: (!Unreachable code) hs.commit is out of range");
        __break(1u);
        goto LABEL_85;
      }

      *&v83 = v112;
      v103 = v111;
    }

    v25 = a1[1].u64[0];
    if (v25)
    {
      re::Raft::commitApply(&v65, v25);
    }

    v26 = *(&v105 + 1);
    re::Raft::reset(&v65, v103);
    *(&v104 + 1) = 0;
    v98 = 0;
    *(&v105 + 1) = v26;
    re::Optional<re::ConfState>::Optional(&v50, v108);
    if (v109 == 1)
    {
      if (v50)
      {
        v28 = v110;
        v35 = 0;
        v36 = 0;
        LODWORD(v38) = 0;
        v37 = 0;
        v39 = 0u;
        memset(v40, 0, 73);
        v42 = 0;
        v43 = 0;
        v41 = 0;
        v44 = 0;
        if (*(&v51 + 1))
        {
          v29 = *(&v52 + 1);
          v30 = 8 * *(&v51 + 1);
          do
          {
            v31 = *v29++;
            v49 = v31;
            re::DynamicArray<re::TransitionCondition *>::add((&v39 + 8), &v49);
            v30 -= 8;
          }

          while (v30);
        }

        if (v55)
        {
          v32 = v57;
          v33 = 8 * v55;
          do
          {
            v34 = *v32++;
            v49 = v34;
            re::DynamicArray<re::TransitionCondition *>::add(&v40[2], &v49);
            v33 -= 8;
          }

          while (v33);
        }

        v44 = 1;
        BYTE8(v40[4]) = 3;
        v43 = v28;
        re::Raft::beginMembershipChange(&v65, &v35, v48);
        if (*&v40[2])
        {
          if (*&v40[4])
          {
            (*(**&v40[2] + 40))();
          }

          *&v40[4] = 0;
          memset(&v40[2], 0, 24);
          ++DWORD2(v40[3]);
        }

        if (*(&v39 + 1))
        {
          if (*(&v40[1] + 1))
          {
            (*(**(&v39 + 1) + 40))();
          }

          *(&v40[1] + 1) = 0;
          v40[0] = 0uLL;
          *(&v39 + 1) = 0;
          ++LODWORD(v40[1]);
        }

        if (v35 && v39)
        {
          (*(*v35 + 40))();
        }

        goto LABEL_69;
      }
    }

    else if ((v50 & 1) == 0)
    {
LABEL_69:
      re::Raft::Raft(&v35, &v65);
      *a3 = 1;
      re::Raft::Raft((a3 + 8), &v35);
      re::Raft::~Raft(&v35);
      if (v50 == 1)
      {
        if (v53)
        {
          if (v57)
          {
            (*(*v53 + 40))();
          }

          v57 = 0;
          v54 = 0;
          v55 = 0;
          v53 = 0;
          ++v56;
        }

        if (*(&v50 + 1) && *(&v52 + 1))
        {
          (*(**(&v50 + 1) + 40))();
        }
      }

      re::Raft::~Raft(&v65);
      RaftState::~RaftState(v108);
      if (v117)
      {
        RaftState::~RaftState(v118);
      }

LABEL_79:
      if (v119[0])
      {
        return;
      }

      goto LABEL_80;
    }

LABEL_85:
    re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Should never find pendingConfChange without an index", "!Unreachable code", "init", 110);
    _os_crash("assertion failure: (!Unreachable code) Should never find pendingConfChange without an index");
    __break(1u);
    return;
  }

  *a3 = 0;
  a3[8] = 5;
LABEL_80:
  if (v120)
  {
    if (v121)
    {
      (*(*v120 + 40))();
    }
  }
}

uint64_t *re::RaftLog::operator=(uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a1 + 1), a2 + 1);
  re::Optional<re::Snapshot>::operator=((a1 + 6), (a2 + 6));
  a1[35] = a2[35];
  *(a1 + 18) = *(a2 + 18);
  return a1;
}

_BYTE *re::Optional<re::ProgressSet>::operator=(_BYTE *a1, uint64_t *a2)
{
  if (*a1)
  {
    v3 = (a1 + 8);
    if (*a2)
    {
      re::ProgressSet::operator=(v3, a2 + 1);
    }

    else
    {
      re::ProgressSet::~ProgressSet(v3);
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::ProgressSet::ProgressSet((a1 + 8), (a2 + 1));
  }

  return a1;
}

_BYTE *re::Optional<re::ConfChange>::operator=(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::ConfChange::operator=((a1 + 8), (a2 + 8));
    }

    else
    {
      re::DynamicArray<unsigned long>::deinit((a1 + 88));
      re::DynamicArray<unsigned long>::deinit((a1 + 48));
      re::DynamicArray<unsigned long>::deinit((a1 + 8));
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::ConfChange::ConfChange((a1 + 8), (a2 + 8));
  }

  return a1;
}

_BYTE *re::Optional<re::ConfChange>::~Optional(_BYTE *a1)
{
  if (*a1 == 1)
  {
    re::DynamicArray<unsigned long>::deinit((a1 + 88));
    re::DynamicArray<unsigned long>::deinit((a1 + 48));
    re::DynamicArray<unsigned long>::deinit((a1 + 8));
  }

  return a1;
}

uint64_t re::Raft::commitApply(re::Raft *this, unint64_t a2)
{
  result = re::RaftLog::appliedTo(this, a2);
  if (*(this + 856) == 1 && *(this + 126) <= a2 && *(this + 536) == 2)
  {

    return re::Raft::appendFinalizeConfChangeEntry(this);
  }

  return result;
}

_BYTE *re::Optional<re::ConfState>::Optional(_BYTE *a1, uint64_t *a2)
{
  v3 = *a2;
  *a1 = v3;
  if (v3 == 1)
  {
    re::DynamicArray<char const*>::DynamicArray((a1 + 8), a2 + 1);
    re::DynamicArray<char const*>::DynamicArray((a1 + 48), a2 + 6);
  }

  return a1;
}

uint64_t re::Raft::beginMembershipChange@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (*(a2 + 120) == 3 && (*(a2 + 152) & 1) != 0 && *(a2 + 144))
  {
    v5 = result;
    LOBYTE(v26) = 1;
    re::ConfChange::ConfChange(v27, a2);
    re::Optional<re::ConfChange>::operator=((v5 + 856), &v26);
    re::Optional<re::ConfChange>::~Optional(&v26);
    Index = re::RaftLog::lastIndex(v5);
    v7 = *(v5 + 1088);
    v8 = Index + 1;
    v27[0] = 0;
    v27[1] = 0;
    v26 = 0;
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = v7;
    re::DynamicArray<float *>::setCapacity(&v26, v7);
    v33 = 0;
    v34 = 0;
    v35 = v8;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    memset(v22, 0, sizeof(v22));
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    DWORD1(v23) = 0x7FFFFFFF;
    v25 = 0u;
    DWORD1(v25) = 0x7FFFFFFF;
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v22, 0);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(v24, 0);
    v9 = *(a2 + 56);
    if (v9)
    {
      v10 = *(a2 + 72);
      v11 = 8 * v9;
      do
      {
        v12 = *v10++;
        v19[0] = v12;
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v22, v19);
        v11 -= 8;
      }

      while (v11);
    }

    v13 = *(a2 + 96);
    if (v13)
    {
      v14 = *(a2 + 112);
      v15 = 8 * v13;
      do
      {
        v16 = *v14++;
        v19[0] = v16;
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v24, v19);
        v15 -= 8;
      }

      while (v15);
    }

    v17 = re::ProgressSet::beginMembershipChange(v19, (v5 + 552), v22, &v26);
    if (LOBYTE(v19[0]) == 1)
    {
      *a3 = v19[0];
    }

    else
    {
      *a3 = 3328;
      if (v20 && (v21 & 1) != 0)
      {
        (*(*v20 + 40))(v17);
      }
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v24);
    v18 = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v22);
    result = v26;
    if (v26)
    {
      if (v29)
      {
        return (*(*v26 + 40))(v18);
      }
    }
  }

  else
  {
    *a3 = 2560;
  }

  return result;
}

uint64_t re::Raft::appendFinalizeConfChangeEntry(re::Raft *this)
{
  v31 = *MEMORY[0x1E69E9840];
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v23 = 0;
  v19 = 4;
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  LOBYTE(v9) = 1;
  DWORD2(v5) = 1;
  v25[0] = &unk_1F5D0C9F0;
  v25[1] = &v4;
  v3[0] = v25;
  v24 = v3;
  re::ConsensusWriter::write(&v24, v11);
  re::DynamicArray<BOOL>::DynamicArray(v25, &v4);
  re::DynamicArray<BOOL>::DynamicArray(v26, &v6 + 1);
  v29 = v9;
  v30 = v10;
  re::DynamicArray<re::Entry>::DynamicArray(v3, v25, 1uLL);
  if (v26[0])
  {
    if (v28)
    {
      (*(*v26[0] + 40))(v26[0]);
    }

    v28 = 0;
    memset(v26, 0, sizeof(v26));
    ++v27;
  }

  if (v25[0] && v25[4])
  {
    (*(*v25[0] + 40))(v25[0]);
  }

  re::Raft::appendEntry(this, v3);
  re::Raft::broadcastAppend(this);
  re::DynamicArray<re::Entry>::deinit(v3);
  if (*(&v6 + 1))
  {
    if (*(&v8 + 1))
    {
      (*(**(&v6 + 1) + 40))();
    }

    *(&v8 + 1) = 0;
    v7 = 0uLL;
    *(&v6 + 1) = 0;
    LODWORD(v8) = v8 + 1;
  }

  result = v4;
  if (v4)
  {
    if (v6)
    {
      return (*(*v4 + 40))();
    }
  }

  return result;
}

uint64_t re::Raft::appendEntry(unint64_t *a1, uint64_t a2)
{
  Index = re::RaftLog::lastIndex(a1);
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = a1[130];
    v8 = (*(a2 + 32) + 96);
    do
    {
      *(v8 - 1) = Index + 1 + v6;
      *v8 = v7;
      v6 += 2;
      v8 += 26;
    }

    while (v6 < v5);
  }

  v9 = re::RaftLog::append(a1, a2);
  v13 = a1[132];
  v10 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[]((a1 + 69), &v13);
  if (*(v10 + 72) < v9)
  {
    *(v10 + 72) = v9;
    *(v10 + 104) = 0;
  }

  if (*(v10 + 80) < v9 + 1)
  {
    *(v10 + 80) = v9 + 1;
  }

  v11 = re::ProgressSet::maximalCommittedIndex((a1 + 69));
  return re::RaftLog::maybeCommit(a1, v11, a1[130]);
}

void re::Raft::broadcastAppend(re::Raft *this)
{
  v2 = *(this + 146);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 71);
    while (1)
    {
      v5 = *v4;
      v4 += 34;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 146);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 != v2)
  {
    v6 = *(this + 132);
    v7 = *(this + 146);
    do
    {
      v8 = *(this + 71) + 136 * v3;
      v11 = *(v8 + 8);
      v9 = (v8 + 8);
      v10 = v11;
      if (v6 != v11)
      {
        v12 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, v9);
        re::Raft::sendAppend(this, v10, v12, v13);
        v7 = *(this + 146);
      }

      if (v7 <= v3 + 1)
      {
        v14 = v3 + 1;
      }

      else
      {
        v14 = v7;
      }

      while (v14 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 71) + 136 * v3) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v3) = v14;
LABEL_18:
      ;
    }

    while (v3 != v2);
  }

  v15[0] = 1;
  re::ProgressSet::ProgressSet(v16, (this + 552));
  re::Optional<re::ProgressSet>::operator=(this + 544, v15);
  if (v15[0] == 1)
  {
    re::ProgressSet::~ProgressSet(v16);
  }
}

uint64_t re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), &v5);
  return *(a1 + 16) + 136 * v6 + 16;
}

uint64_t re::Raft::becomeLeader(re::Raft *this)
{
  v13 = *MEMORY[0x1E69E9840];
  re::Raft::reset(this, *(this + 130));
  v2 = *(this + 132);
  *(this + 133) = v2;
  *(this + 536) = 2;
  v6 = v2;
  v3 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, &v6);
  *(v3 + 104) = 0;
  *(v3 + 64) = 1;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 80) = *(v3 + 72) + 1;
  *(v3 + 88) = 0;
  *(this + 134) = re::RaftLog::lastIndex(this);
  v12 = 0;
  v10 = 0u;
  v11 = 0u;
  v8 = 0u;
  v9 = 0u;
  memset(v7, 0, sizeof(v7));
  re::DynamicArray<re::Entry>::DynamicArray(v5, v7, 1uLL);
  if (*(&v8 + 1))
  {
    if (*(&v10 + 1))
    {
      (*(**(&v8 + 1) + 40))();
    }

    *(&v10 + 1) = 0;
    v9 = 0uLL;
    *(&v8 + 1) = 0;
    LODWORD(v10) = v10 + 1;
  }

  if (*&v7[0] && v8)
  {
    (*(**&v7[0] + 40))();
  }

  re::Raft::appendEntry(this, v5);
  if (*(this + 856) == 1 && *(this + 126) <= *(this + 36))
  {
    re::Raft::appendFinalizeConfChangeEntry(this);
  }

  return re::DynamicArray<re::Entry>::deinit(v5);
}

uint64_t re::Raft::reset(re::Raft *this, uint64_t a2)
{
  if (*(this + 130) != a2)
  {
    *(this + 130) = a2;
    *(this + 131) = 0;
  }

  *(this + 133) = 0;
  std::random_device::random_device[abi:nn200100](&v24);
  v3 = arc4random();
  v23.__x_[0] = v3;
  for (i = 1; i != 624; ++i)
  {
    v3 = i + 1812433253 * (v3 ^ (v3 >> 30));
    v23.__x_[i] = v3;
  }

  v23.__i_ = 0;
  v5 = *(this + 284);
  v6 = *(this + 286) - 1 - v5;
  if (v6)
  {
    v7 = *(this + 286) - v5;
    if (v6 == -1)
    {
      v5 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23);
    }

    else
    {
      v8 = __clz(v7);
      v9 = 31;
      if (((v7 << v8) & 0x7FFFFFFF) != 0)
      {
        v9 = 32;
      }

      v10 = v9 - v8;
      v11 = v10 >> 5;
      if ((v10 & 0x1F) != 0)
      {
        ++v11;
      }

      if (v11 <= v10)
      {
        v12 = 0xFFFFFFFF >> -(v10 / v11);
      }

      else
      {
        v12 = 0;
      }

      do
      {
        v13 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(&v23) & v12;
      }

      while (v13 >= v7);
      v5 += v13;
    }
  }

  *(this + 141) = v5;
  std::random_device::~random_device(&v24);
  *(this + 1096) = 0u;
  if (*(this + 1024) == 1)
  {
    *(this + 1024) = 0;
  }

  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 304);
  *(this + 134) = 0;
  re::ReadOnly::ReadOnly(&v23, this + 528);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::operator=(this + 432, &v23);
  re::Queue<re::DynamicArray<unsigned char>>::operator=(this + 60, &v23.__x_[12]);
  *(this + 528) = v23.__x_[24];
  re::Queue<re::DynamicArray<unsigned char>>::deinit(&v23.__x_[12]);
  re::HashTable<re::DynamicArray<unsigned char>,re::ReadIndexStatus,re::Hash<re::DynamicArray<unsigned char>>,re::EqualTo<re::DynamicArray<unsigned char>>,true,false>::deinit(&v23);
  *(this + 135) = 0;
  result = re::RaftLog::lastIndex(this);
  v15 = result;
  v16 = *(this + 146);
  if (v16)
  {
    v17 = 0;
    v18 = *(this + 71);
    while (1)
    {
      v19 = *v18;
      v18 += 34;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(this + 146);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(this + 132);
    do
    {
      v21 = *(this + 71) + 136 * v17;
      result = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, (v21 + 8));
      *(result + 72) = 0;
      *(result + 80) = v15 + 1;
      *(result + 64) = 0;
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 88) = 0;
      *(result + 96) = 0;
      *(result + 104) = 0;
      if (*(v21 + 8) == v20)
      {
        *(result + 72) = v15;
      }

      v22 = *(this + 146);
      if (v22 <= v17 + 1)
      {
        v22 = v17 + 1;
      }

      while (v22 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(*(this + 71) + 136 * v17) & 0x80000000) != 0)
        {
          goto LABEL_35;
        }
      }

      LODWORD(v17) = v22;
LABEL_35:
      ;
    }

    while (v17 != v16);
  }

  return result;
}

re::Raft *re::Raft::sendAppend(re::Raft *this, uint64_t a2, re::Progress *a3, unint64_t a4)
{
  v6 = this;
  if (*(a3 + 64))
  {
    if (*(a3 + 64) != 1 || *(a3 + 6) == *(a3 + 7))
    {
      return this;
    }
  }

  else if (*(a3 + 104))
  {
    return this;
  }

  v26[0] = 0;
  v26[1] = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  memset(v32, 0, 233);
  v34 = 0u;
  memset(v35, 0, 25);
  v33 = 0u;
  v32[30] = a2;
  if (*(a3 + 12))
  {
    if ((re::Raft::prepareSendSnapshot(this, v26, a3) & 1) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_24;
  }

  re::RaftLog::getTerm(v25, this, *(a3 + 10) - 1);
  re::RaftLog::entries(&v21, v6, *(a3 + 10));
  if (LOBYTE(v25[0]) == 1 && (v21 & 1) != 0)
  {
    if (*(v6 + 1156) == 1)
    {
      v7 = *(v6 + 51);
      if (v7)
      {
        v8 = v24;
        v9 = *(v6 + 53);
        while (*(v9 + 304) != 3 || *(v9 + 312) != a2)
        {
          v9 += 384;
          if (!--v7)
          {
            goto LABEL_19;
          }
        }

        if (!v23)
        {
          goto LABEL_42;
        }

        v12 = *(v9 + 16);
        if (!v12 || *(*(v9 + 32) + 104 * v12 - 16) + 1 == v24[5].n128_u64[1])
        {
          v13 = 104 * v23;
          do
          {
            re::DynamicArray<re::Entry>::add(v9, v8);
            v8 = (v8 + 104);
            v13 -= 104;
          }

          while (v13);
          re::Progress::updateState(a3, *(*(v9 + 32) + 104 * *(v9 + 16) - 16));
LABEL_42:
          *(v9 + 352) = *(v6 + 36);
          goto LABEL_43;
        }
      }
    }

LABEL_19:
    LOBYTE(v32[29]) = 3;
    *(&v34 + 1) = *(a3 + 10) - 1;
    *&v34 = v25[1];
    re::DynamicArray<re::Entry>::clear(v26);
    re::DynamicArray<re::Entry>::operator=(v26, v22);
    v35[0] = *(v6 + 36);
    if (v27)
    {
      re::Progress::updateState(a3, *(v29 + 104 * v27 - 16));
    }

LABEL_22:
    if (v21 == 1)
    {
      re::DynamicArray<re::Entry>::deinit(v22);
    }

LABEL_24:
    re::Message::Message(v14, v26);
    re::Raft::send(v6, v14);
    re::Snapshot::~Snapshot(&v20);
    if (v15)
    {
      if (v19)
      {
        (*(*v15 + 40))();
      }

      v19 = 0;
      v16 = 0;
      v17 = 0;
      v15 = 0;
      ++v18;
    }

    v11 = v14;
    goto LABEL_29;
  }

  if (re::Raft::prepareSendSnapshot(v6, v26, a3))
  {
    goto LABEL_22;
  }

LABEL_43:
  if (v21 != 1)
  {
    goto LABEL_30;
  }

  v11 = v22;
LABEL_29:
  re::DynamicArray<re::Entry>::deinit(v11);
LABEL_30:
  re::Snapshot::~Snapshot(&v32[1]);
  if (*(&v29 + 1))
  {
    if (v32[0])
    {
      (*(**(&v29 + 1) + 40))();
    }

    v32[0] = 0;
    v30 = 0uLL;
    *(&v29 + 1) = 0;
    ++v31;
  }

  return re::DynamicArray<re::Entry>::deinit(v26);
}

uint64_t re::Raft::prepareSendSnapshot(re::Raft *this, re::Message *a2, re::Progress *a3)
{
  if (*(a3 + 105) != 1)
  {
    return 0;
  }

  *(a2 + 304) = 7;
  re::RaftLog::snapshot(&v17, this, *(a3 + 12));
  v6 = v17;
  if ((v17 & 1) == 0)
  {
    if (LOBYTE(v18[0]) != 3)
    {
      goto LABEL_10;
    }

    return v6;
  }

  re::DynamicArray<BOOL>::DynamicArray(v10, v18);
  re::DynamicArray<char const*>::DynamicArray(v11, v19);
  re::DynamicArray<char const*>::DynamicArray(v12, v20);
  re::DynamicArray<char const*>::DynamicArray(v13, v21);
  re::DynamicArray<char const*>::DynamicArray(v14, v22);
  v15 = v23;
  v16 = v24;
  v8 = *(&v23 + 1);
  if (*(&v23 + 1))
  {
    re::DynamicArray<BOOL>::operator=(a2 + 80, v10);
    re::DynamicArray<unsigned long long>::operator=(a2 + 120, v11);
    re::DynamicArray<unsigned long long>::operator=(a2 + 160, v12);
    re::DynamicArray<unsigned long long>::operator=(a2 + 200, v13);
    re::DynamicArray<unsigned long long>::operator=(a2 + 240, v14);
    *(a2 + 280) = v15;
    *(a2 + 37) = v16;
    *(a3 + 104) = 0;
    *(a3 + 64) = 2;
    *(a3 + 5) = 0;
    *(a3 + 6) = 0;
    *(a3 + 11) = v8;
    re::Snapshot::~Snapshot(v10);
    if (v17)
    {
      re::Snapshot::~Snapshot(v18);
    }

    return v6;
  }

  re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Need non-empty snapshot", "!Unreachable code", "prepareSendSnapshot", 320);
  _os_crash("assertion failure: (!Unreachable code) Need non-empty snapshot");
  __break(1u);
LABEL_10:
  re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Unexpected error", "!Unreachable code", "prepareSendSnapshot", 315);
  result = _os_crash("assertion failure: (!Unreachable code) Unexpected error");
  __break(1u);
  return result;
}

re::Message *re::Raft::send(uint64_t a1, uint64_t a2)
{
  *(a2 + 320) = *(a1 + 1056);
  v2 = *(a2 + 304);
  if (v2 > 0x12 || ((1 << v2) & 0x60060) == 0)
  {
    if (!*(a2 + 328))
    {
      if (v2 != 2 && v2 != 15)
      {
        *(a2 + 328) = *(a1 + 1040);
      }

      goto LABEL_6;
    }

LABEL_16:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) term should be set when sending, was", "!Unreachable code", "send", 354);
    result = _os_crash("assertion failure: (!Unreachable code) term should be set when sending, was");
    __break(1u);
    return result;
  }

  if (!*(a2 + 328))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) term should be set when sending", "!Unreachable code", "send", 350);
    _os_crash("assertion failure: (!Unreachable code) term should be set when sending");
    __break(1u);
    goto LABEL_16;
  }

LABEL_6:
  v4 = a1 + 392;

  return re::DynamicArray<re::Message>::add(v4, a2);
}

void re::Message::~Message(re::Message *this)
{
  re::Snapshot::~Snapshot((this + 80));
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<re::Entry>::deinit(this);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::DynamicArray<unsigned long>::deinit(this + 200);
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<re::Entry>::deinit(this);
}

void re::Snapshot::~Snapshot(re::Snapshot *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 160);
  re::DynamicArray<unsigned long>::deinit(this + 120);
  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::DynamicArray<re::Entry>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = *(result + 32);
    v4 = 104 * v2;
    do
    {
      re::DynamicArray<unsigned long>::deinit(v3 + 40);
      result = re::DynamicArray<unsigned long>::deinit(v3);
      v3 += 104;
      v4 -= 104;
    }

    while (v4);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::DynamicArray<re::Entry>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::Entry>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::Entry>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::Entry>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::Entry>::copy(a1, a2);
    }
  }

  return a1;
}

re::Message *re::DynamicArray<re::Message>::add(uint64_t a1, re::Message *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::Message>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::Message>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::Message::Message((*(a1 + 32) + 384 * v5), a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void re::Raft::broadcastHeartbeat(re::Raft *this)
{
  re::ReadOnly::lastPendingRequestCtx(&v2, this + 54);
  re::Raft::broadcastHeatbeatWithCtx(this, &v2);
  if (v2 == 1 && v3)
  {
    if (v4)
    {
      (*(*v3 + 40))();
    }
  }
}

void re::Raft::broadcastHeatbeatWithCtx(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 584);
  if (v3)
  {
    v4 = 0;
    v5 = *(a1 + 568);
    while (1)
    {
      v6 = *v5;
      v5 += 34;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a1 + 584);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a1 + 1056);
    v8 = *(a1 + 584);
    do
    {
      v9 = *(a1 + 568) + 136 * v4;
      v11 = *(v9 + 8);
      v10 = (v9 + 8);
      if (v11 != v7)
      {
        v12 = *(re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v10) + 72);
        if (*(a1 + 288) < v12)
        {
          v12 = *(a1 + 288);
        }

        v13 = *v10;
        v23 = 0;
        v24[0] = 0;
        v25 = 0;
        v24[1] = 0;
        v26 = 0u;
        v27 = 0u;
        v28 = 0;
        memset(v29, 0, sizeof(v29));
        v33 = 0u;
        memset(v34, 0, 25);
        v32 = 0u;
        v30 = 8;
        v31 = v13;
        v34[0] = v12;
        if (*a2 == 1)
        {
          re::DynamicArray<BOOL>::operator=(&v26 + 8, (a2 + 8));
        }

        re::Message::Message(v16, &v23);
        re::Raft::send(a1, v16);
        re::Snapshot::~Snapshot(&v22);
        if (v17)
        {
          if (v21)
          {
            (*(*v17 + 40))();
          }

          v21 = 0;
          v18 = 0;
          v19 = 0;
          v17 = 0;
          ++v20;
        }

        re::DynamicArray<re::Entry>::deinit(v16);
        re::Snapshot::~Snapshot(&v29[1]);
        if (*(&v26 + 1))
        {
          if (v29[0])
          {
            (*(**(&v26 + 1) + 40))();
          }

          v29[0] = 0;
          v27 = 0uLL;
          *(&v26 + 1) = 0;
          ++v28;
        }

        re::DynamicArray<re::Entry>::deinit(&v23);
        v8 = *(a1 + 584);
      }

      if (v8 <= v4 + 1)
      {
        v14 = v4 + 1;
      }

      else
      {
        v14 = v8;
      }

      while (v14 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(*(a1 + 568) + 136 * v4) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v4) = v14;
LABEL_30:
      ;
    }

    while (v4 != v3);
  }

  LOBYTE(v23) = 1;
  re::ProgressSet::ProgressSet(v24, (a1 + 552));
  re::Optional<re::ProgressSet>::operator=((a1 + 544), &v23);
  if (v23 == 1)
  {
    re::ProgressSet::~ProgressSet(v24);
  }
}

std::random_device *std::random_device::random_device[abi:nn200100](std::random_device *a1)
{
  *(&__token.__r_.__value_.__s + 23) = 12;
  strcpy(&__token, "/dev/urandom");
  std::random_device::random_device(a1, &__token);
  if (SHIBYTE(__token.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__token.__r_.__value_.__l.__data_);
  }

  return a1;
}

uint64_t re::Raft::tick(re::Raft *this)
{
  v1 = *(this + 536);
  if (v1 < 2)
  {
    return re::Raft::tickElection(this);
  }

  if (v1 == 2)
  {
    return re::Raft::tickHeartbeat(this);
  }

  if (v1 == 3)
  {
    return re::Raft::tickElection(this);
  }

  return 0;
}

BOOL re::Raft::tickElection(re::Raft *this)
{
  v3 = *(this + 137) + 1;
  *(this + 137) = v3;
  if (v3 < *(this + 141))
  {
    return 0;
  }

  v22 = v1;
  v23 = v2;
  result = re::Raft::promotable(this);
  if (result)
  {
    *(this + 137) = 0;
    v6 = *(this + 132);
    memset(v7, 0, sizeof(v7));
    v8 = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v18 = 0u;
    v19 = 0u;
    v15 = 0;
    v17 = 0u;
    v20 = 0;
    v16 = v6;
    v14 = 0;
    re::Raft::step(this, v7, v21);
    re::Snapshot::~Snapshot((v12 + 8));
    if (*(&v9 + 1))
    {
      if (*&v12[0])
      {
        (*(**(&v9 + 1) + 40))();
      }

      *&v12[0] = 0;
      v10 = 0uLL;
      *(&v9 + 1) = 0;
      ++v11;
    }

    re::DynamicArray<re::Entry>::deinit(v7);
    return 1;
  }

  return result;
}

uint64_t re::Raft::tickHeartbeat(re::Raft *this)
{
  v2 = vaddq_s64(*(this + 1096), vdupq_n_s64(1uLL));
  *(this + 1096) = v2;
  if (v2.i64[0] < *(this + 140))
  {
    v3 = 0;
    if (*(this + 536) != 2)
    {
      return v3;
    }

    goto LABEL_17;
  }

  *(this + 137) = 0;
  v3 = *(this + 1153);
  if (v3 == 1)
  {
    v4 = *(this + 132);
    v25 = 0;
    v23 = 0;
    v24 = 0;
    v26 = 0;
    v27 = 0u;
    v28 = 0u;
    v29 = 0;
    v42 = 0u;
    v43 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v44 = 0;
    v49 = 0u;
    v50 = 0u;
    v46 = 0;
    v48 = 0u;
    v51 = 0;
    v47 = v4;
    v45 = 12;
    re::Message::Message(v15, &v23);
    re::Raft::step(this, v15, v22);
    re::Snapshot::~Snapshot(&v21);
    if (v16)
    {
      if (v20)
      {
        (*(*v16 + 40))();
      }

      v20 = 0;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      ++v19;
    }

    re::DynamicArray<re::Entry>::deinit(v15);
    re::Snapshot::~Snapshot((&v30 + 8));
    if (*(&v27 + 1))
    {
      if (v30)
      {
        (*(**(&v27 + 1) + 40))();
      }

      *&v30 = 0;
      v28 = 0uLL;
      *(&v27 + 1) = 0;
      ++v29;
    }

    re::DynamicArray<re::Entry>::deinit(&v23);
  }

  if (*(this + 536) == 2)
  {
    if (*(this + 1024) == 1)
    {
      *(this + 1024) = 0;
    }

LABEL_17:
    if (*(this + 138) >= *(this + 139))
    {
      *(this + 138) = 0;
      v5 = *(this + 132);
      v25 = 0;
      v23 = 0;
      v24 = 0;
      v26 = 0;
      v27 = 0u;
      v28 = 0u;
      v29 = 0;
      v42 = 0u;
      v43 = 0u;
      v30 = 0u;
      v31 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v44 = 0;
      v49 = 0u;
      v50 = 0u;
      v46 = 0;
      v48 = 0u;
      v51 = 0;
      v47 = v5;
      v45 = 1;
      re::Message::Message(v7, &v23);
      re::Raft::step(this, v7, v14);
      re::Snapshot::~Snapshot(&v13);
      if (v8)
      {
        if (v12)
        {
          (*(*v8 + 40))();
        }

        v12 = 0;
        v9 = 0;
        v10 = 0;
        v8 = 0;
        ++v11;
      }

      re::DynamicArray<re::Entry>::deinit(v7);
      re::Snapshot::~Snapshot((&v30 + 8));
      if (*(&v27 + 1))
      {
        if (v30)
        {
          (*(**(&v27 + 1) + 40))();
        }

        *&v30 = 0;
        v28 = 0uLL;
        *(&v27 + 1) = 0;
        ++v29;
      }

      re::DynamicArray<re::Entry>::deinit(&v23);
      return 1;
    }
  }

  return v3;
}

BOOL re::Raft::promotable(re::Raft *this)
{
  re::ProgressSet::voterIds(v4, (this + 552));
  v2 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v4, this + 132);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v4);
  return v2;
}

void re::Raft::step(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v3 = a2;
  v6 = a2[41];
  if (!v6)
  {
    goto LABEL_42;
  }

  v7 = *(a1 + 1040);
  if (v6 <= v7)
  {
    if (v6 < v7)
    {
      if (*(a1 + 1153) & 1) != 0 || (*(a1 + 1154))
      {
        v16 = *(a2 + 304);
        if (v16 == 8 || v16 == 3)
        {
          v17 = a2[40];
          v161 = 0;
          v159 = 0;
          v160 = 0;
          v162 = 0;
          *__s2 = 0u;
          v164 = 0u;
          v165 = 0;
          v178 = 0u;
          v179 = 0u;
          v166 = 0u;
          v167 = 0u;
          v168 = 0u;
          v169 = 0u;
          v170 = 0u;
          v171 = 0u;
          v172 = 0u;
          v173 = 0u;
          v174 = 0u;
          v175 = 0u;
          v176 = 0u;
          v177 = 0u;
          v180 = 0;
          memset(v185, 0, 25);
          v184 = 0u;
          v183 = 0u;
          v182 = v17;
          v181 = 4;
          re::Message::Message(v130, &v159);
          re::Raft::send(a1, v130);
          re::Snapshot::~Snapshot(&v136);
          if (v131)
          {
            if (v135)
            {
              (*(*v131 + 40))();
            }

            v135 = 0;
            v132 = 0;
            v133 = 0;
            v131 = 0;
            ++v134;
          }

          v18 = v130;
          goto LABEL_72;
        }
      }

      else
      {
        v16 = *(a2 + 304);
      }

      if (v16 != 17)
      {
        goto LABEL_96;
      }

      v31 = a2[40];
      v161 = 0;
      v159 = 0;
      v160 = 0;
      v162 = 0;
      *__s2 = 0u;
      v164 = 0u;
      v165 = 0;
      v178 = 0u;
      v179 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v180 = 0;
      memset(v185, 0, 24);
      *&v183 = 0;
      v184 = 0u;
      v182 = v31;
      v181 = 18;
      *(&v183 + 1) = v7;
      BYTE8(v185[1]) = 1;
      re::Message::Message(v123, &v159);
      re::Raft::send(a1, v123);
      re::Snapshot::~Snapshot(&v129);
      if (v124)
      {
        if (v128)
        {
          (*(*v124 + 40))();
        }

        v128 = 0;
        v125 = 0;
        v126 = 0;
        v124 = 0;
        ++v127;
      }

      v18 = v123;
      goto LABEL_72;
    }
  }

  else
  {
    v8 = *(a2 + 304);
    if (v8 == 17 || v8 == 5)
    {
      LOBYTE(v150[0]) = 0;
      re::DynamicArray<unsigned char>::DynamicArray(&v159, v150, 1uLL);
      v10 = 0;
      v11 = v3[7];
      if (v11 == v161)
      {
        v10 = memcmp(v3[9], __s2[0], v11) == 0;
      }

      if (v159)
      {
        a2 = __s2[0];
        if (__s2[0])
        {
          (*(*v159 + 40))();
        }
      }

      if (*(a1 + 1153) == 1 && *(a1 + 1064))
      {
        v12 = *(a1 + 1096) >= *(a1 + 1120) || v10;
        if (v12 != 1)
        {
          goto LABEL_96;
        }
      }

      v8 = *(v3 + 304);
    }

    v13 = 0;
    if (v8 <= 16)
    {
      if ((v8 - 7) < 2 || v8 == 3)
      {
        v13 = v3[40];
      }

      goto LABEL_27;
    }

    if (v8 != 17)
    {
      if (v8 != 18)
      {
LABEL_27:
        v15 = *(a1 + 1080);
        re::Raft::reset(a1, v3[41]);
        *(a1 + 1064) = v13;
        *(a1 + 536) = 0;
        *(a1 + 1080) = v15;
        goto LABEL_42;
      }

      if (v3[47])
      {
        v13 = 0;
        goto LABEL_27;
      }
    }
  }

LABEL_42:
  v19 = *(v3 + 304);
  if (v19 == 17 || v19 == 5)
  {
    v21 = *(a1 + 1048);
    v22 = v3[40];
    if (v21 != v22 && (v21 || *(a1 + 1064)))
    {
      if (v19 != 17)
      {
        goto LABEL_59;
      }

      if (v3[41] <= *(a1 + 1040))
      {
        goto LABEL_61;
      }
    }

    isUpToDate = re::RaftLog::isUpToDate(a1, v3[43], v3[42]);
    v22 = v3[40];
    v19 = *(v3 + 304);
    if (isUpToDate)
    {
      if (v19 == 5)
      {
        v24 = 6;
        goto LABEL_84;
      }

      if (v19 == 17)
      {
        v24 = 18;
LABEL_84:
        v160 = 0;
        v159 = 0;
        v162 = 0;
        v161 = 0;
        *__s2 = 0u;
        v164 = 0u;
        v165 = 0;
        v178 = 0u;
        v179 = 0u;
        v166 = 0u;
        v167 = 0u;
        v168 = 0u;
        v169 = 0u;
        v170 = 0u;
        v171 = 0u;
        v172 = 0u;
        v173 = 0u;
        v174 = 0u;
        v175 = 0u;
        v176 = 0u;
        v177 = 0u;
        v180 = 0;
        memset(v185, 0, 25);
        v183 = 0u;
        v184 = 0u;
        v182 = v22;
        v181 = v24;
        *(&v183 + 1) = v3[41];
        re::Message::Message(v116, &v159);
        re::Raft::send(a1, v116);
        re::Snapshot::~Snapshot(&v122);
        if (v117)
        {
          if (v121)
          {
            (*(*v117 + 40))();
          }

          v121 = 0;
          v118 = 0;
          v119 = 0;
          v117 = 0;
          ++v120;
        }

        re::DynamicArray<re::Entry>::deinit(v116);
        if (*(v3 + 304) == 5)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1048) = v3[40];
        }

        re::Snapshot::~Snapshot((&v166 + 8));
        if (!__s2[1])
        {
          goto LABEL_95;
        }

        if (v166)
        {
          (*(*__s2[1] + 40))();
        }

        *&v166 = 0;
        v164 = 0uLL;
        __s2[1] = 0;
        goto LABEL_94;
      }

LABEL_322:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Not a vote message %hhu", "!Unreachable code", "voteRespMsgType", 281, v19);
      _os_crash("assertion failure: (!Unreachable code) Not a vote message %hhu", v93);
      __break(1u);
      goto LABEL_323;
    }

LABEL_59:
    if (v19 == 5)
    {
      v25 = 6;
      goto LABEL_67;
    }

    if (v19 == 17)
    {
LABEL_61:
      v25 = 18;
LABEL_67:
      v160 = 0;
      v159 = 0;
      v162 = 0;
      v161 = 0;
      *__s2 = 0u;
      v164 = 0u;
      v165 = 0;
      v178 = 0u;
      v179 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v180 = 0;
      memset(v185, 0, 24);
      v183 = 0u;
      v184 = 0u;
      v182 = v22;
      v181 = v25;
      BYTE8(v185[1]) = 1;
      *(&v183 + 1) = *(a1 + 1040);
      re::Message::Message(v109, &v159);
      re::Raft::send(a1, v109);
      re::Snapshot::~Snapshot(&v115);
      if (v110)
      {
        if (v114)
        {
          (*(*v110 + 40))();
        }

        v114 = 0;
        v111 = 0;
        v112 = 0;
        v110 = 0;
        ++v113;
      }

      v18 = v109;
LABEL_72:
      re::DynamicArray<re::Entry>::deinit(v18);
      re::Snapshot::~Snapshot((&v166 + 8));
      if (!__s2[1])
      {
LABEL_95:
        re::DynamicArray<re::Entry>::deinit(&v159);
        goto LABEL_96;
      }

      if (v166)
      {
        (*(*__s2[1] + 40))();
      }

      *&v166 = 0;
      v164 = 0uLL;
      __s2[1] = 0;
LABEL_94:
      ++v165;
      goto LABEL_95;
    }

    re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Not a vote message %hhu", "!Unreachable code", "voteRespMsgType", 281, v19);
    _os_crash("assertion failure: (!Unreachable code) Not a vote message %hhu", v92);
    __break(1u);
    goto LABEL_322;
  }

  if (!*(v3 + 304))
  {
    re::Raft::hup(a1, 0);
    goto LABEL_96;
  }

  v26 = *(a1 + 536);
  if (v26 <= 1)
  {
    if (*(a1 + 536))
    {
      if (v26 != 1)
      {
        goto LABEL_96;
      }

LABEL_78:
      if (*(v3 + 304) > 6u)
      {
        if (v19 == 7)
        {
          v35 = v3[40];
          v36 = *(a1 + 1080);
          re::Raft::reset(a1, v3[41]);
          *(a1 + 1064) = v35;
          *(a1 + 536) = 0;
          *(a1 + 1080) = v36;
          re::Raft::handleSnapshot(a1, v3);
          goto LABEL_96;
        }

        if (v19 == 8)
        {
          v39 = v3[40];
          v40 = *(a1 + 1080);
          re::Raft::reset(a1, v3[41]);
          *(a1 + 1064) = v39;
          *(a1 + 536) = 0;
          *(a1 + 1080) = v40;
          re::Raft::handleHeartbeat(a1, v3);
          goto LABEL_96;
        }

        if (v19 != 18)
        {
LABEL_96:
          *a3 = 1;
          return;
        }

LABEL_100:
        if ((v19 == 18 || v26 != 3) && (v19 == 6 || v26 != 1))
        {
          re::Raft::registerVote(a1, v3[40], (v3[47] & 1) == 0);
          v27 = re::ProgressSet::candidacyStatus(a1 + 552, a1 + 304);
          if (v27 == 2)
          {
            v61 = *(a1 + 1080);
            re::Raft::reset(a1, *(a1 + 1040));
            *(a1 + 1064) = 0;
            *(a1 + 536) = 0;
            *(a1 + 1080) = v61;
          }

          else if (!v27)
          {
            if (*(a1 + 536) == 3)
            {
              LOBYTE(v150[0]) = 2;
              re::DynamicArray<unsigned char>::DynamicArray(&v159, v150, 1uLL);
              re::Raft::campaign(a1, &v159);
              if (v159)
              {
                if (__s2[0])
                {
                  (*(*v159 + 40))();
                }
              }
            }

            else
            {
              re::Raft::becomeLeader(a1);
              re::Raft::broadcastAppend(a1);
            }
          }
        }

        goto LABEL_96;
      }

      if (v19 != 2)
      {
        if (v19 == 3)
        {
          v37 = v3[40];
          v38 = *(a1 + 1080);
          re::Raft::reset(a1, v3[41]);
          *(a1 + 1064) = v37;
          *(a1 + 536) = 0;
          *(a1 + 1080) = v38;
          re::Raft::handleAppendEntries(a1, v3);
          goto LABEL_96;
        }

        if (v19 != 6)
        {
          goto LABEL_96;
        }

        goto LABEL_100;
      }

      goto LABEL_176;
    }

    if (*(v3 + 304) <= 0xCu)
    {
      if (*(v3 + 304) > 6u)
      {
        if (v19 == 7)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1064) = v3[40];
          re::Raft::handleSnapshot(a1, v3);
        }

        else if (v19 == 8)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1064) = v3[40];
          re::Raft::handleHeartbeat(a1, v3);
        }

        goto LABEL_191;
      }

      if (v19 != 2)
      {
        if (v19 == 3)
        {
          *(a1 + 1096) = 0;
          *(a1 + 1064) = v3[40];
          re::Raft::handleAppendEntries(a1, v3);
        }

        goto LABEL_191;
      }

      v50 = *(a1 + 1064);
      if (!v50)
      {
LABEL_176:
        *a3 = 1024;
        return;
      }

      v3[39] = v50;
      re::Message::Message(&v159, v3);
      re::Raft::send(a1, &v159);
      re::Snapshot::~Snapshot((&v166 + 8));
      if (__s2[1])
      {
        if (v166)
        {
          (*(*__s2[1] + 40))();
        }

        *&v166 = 0;
        v164 = 0uLL;
        __s2[1] = 0;
        ++v165;
      }

      v51 = &v159;
      goto LABEL_190;
    }

    if (*(v3 + 304) > 0xEu)
    {
      if (v19 != 15)
      {
        if (v19 == 16 && v3[2] == 1)
        {
          memset(v137, 0, sizeof(v137));
          v138 = 0;
          v41 = v3[43];
          v139 = 0;
          v140 = v41;
          re::DynamicArray<BOOL>::operator=(v137, v3[4]);
          re::DynamicArray<re::ReadState>::add(a1 + 352, v137);
          if (v137[0])
          {
            if (v139)
            {
              (*(*v137[0] + 40))();
            }
          }
        }

        goto LABEL_191;
      }

      v53 = *(a1 + 1064);
      if (v53)
      {
        v3[39] = v53;
        re::Message::Message(&v141, v3);
        re::Raft::send(a1, &v141);
        re::Snapshot::~Snapshot(&v148);
        if (v143[1])
        {
          if (v147)
          {
            (*(*v143[1] + 40))();
          }

          v147 = 0;
          v144 = 0;
          v145 = 0;
          v143[1] = 0;
          ++v146;
        }

        v51 = &v141;
        goto LABEL_190;
      }
    }

    else
    {
      if (v19 != 13)
      {
        if (re::Raft::promotable(a1))
        {
          re::Raft::hup(a1, 1);
        }

        goto LABEL_191;
      }

      v52 = *(a1 + 1064);
      if (v52)
      {
        v3[39] = v52;
        re::Message::Message(v150, v3);
        re::Raft::send(a1, v150);
        re::Snapshot::~Snapshot(&v158);
        if (v153)
        {
          if (v157)
          {
            (*(*v153 + 40))();
          }

          v157 = 0;
          v154 = 0;
          v155 = 0;
          v153 = 0;
          ++v156;
        }

        v51 = v150;
LABEL_190:
        re::DynamicArray<re::Entry>::deinit(v51);
      }
    }

LABEL_191:
    *a3 = 1;
    goto LABEL_96;
  }

  if (v26 != 2)
  {
    if (v26 != 3)
    {
      goto LABEL_96;
    }

    goto LABEL_78;
  }

  re::Message::Message(v94, v3);
  if (v103 > 0xBu)
  {
    if (v103 == 12)
    {
      if (!re::ProgressSet::quorumRecentlyActive((a1 + 552), *(a1 + 1056)))
      {
        v49 = *(a1 + 1080);
        re::Raft::reset(a1, *(a1 + 1040));
        *(a1 + 1064) = 0;
        *(a1 + 536) = 0;
        *(a1 + 1080) = v49;
      }

      goto LABEL_211;
    }

    if (v103 != 15)
    {
      goto LABEL_155;
    }

    re::RaftLog::getTerm(&v159, a1, *(a1 + 288));
    if (v159)
    {
      v32 = v160;
    }

    else
    {
      v32 = 0;
    }

    if (v32 != *(a1 + 1040))
    {
LABEL_211:
      v30 = 1;
      *a3 = 1;
      goto LABEL_310;
    }

    *v143 = 0u;
    v142 = 0u;
    v141 = 0u;
    HIDWORD(v143[0]) = 0x7FFFFFFF;
    v33 = (a1 + 1056);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v141, (a1 + 1056));
    if (re::ProgressSet::hasQuorum(a1 + 552, &v141))
    {
      if (!v104[0] || v104[0] == *v33)
      {
        v160 = 0;
        v159 = 0;
        v162 = 0;
        v161 = 0;
        v34 = *(a1 + 288);
LABEL_259:
        __s2[0] = 0;
        __s2[1] = v34;
        re::DynamicArray<BOOL>::operator=(&v159, v96);
        re::DynamicArray<re::ReadState>::add(a1 + 352, &v159);
        v54 = v159;
        if (!v159 || !__s2[0])
        {
          goto LABEL_268;
        }

        goto LABEL_261;
      }

      v160 = 0;
      v159 = 0;
      v162 = 0;
      v161 = 0;
      *__s2 = 0u;
      v164 = 0u;
      v165 = 0;
      v178 = 0u;
      v179 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v180 = 0;
      memset(v185, 0, 25);
      v184 = 0u;
      v183 = 0u;
      v181 = 16;
      v182 = v104[0];
      v34 = *(a1 + 288);
    }

    else
    {
      if (*(a1 + 528) != 1)
      {
        if (*(a1 + 528))
        {
          goto LABEL_268;
        }

        re::DynamicArray<BOOL>::DynamicArray(v150, v96);
        re::ReadOnly::addRequest((a1 + 432), *(a1 + 288), v94);
        LOBYTE(v159) = 1;
        re::DynamicArray<BOOL>::DynamicArray(&v160, v150);
        re::Raft::broadcastHeatbeatWithCtx(a1, &v159);
        if (v159 == 1 && v160 && __s2[1])
        {
          (*(*v160 + 40))();
        }

        v54 = v150[0];
        if (!v150[0] || !v152)
        {
          goto LABEL_268;
        }

LABEL_261:
        (*(*v54 + 40))(v54);
LABEL_268:
        v30 = 1;
        *a3 = 1;
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v141);
        goto LABEL_310;
      }

      v34 = *(a1 + 288);
      if (!v104[0] || v104[0] == *v33)
      {
        v161 = 0;
        v159 = 0;
        v160 = 0;
        v162 = 0;
        goto LABEL_259;
      }

      v160 = 0;
      v159 = 0;
      v162 = 0;
      v161 = 0;
      *__s2 = 0u;
      v164 = 0u;
      v165 = 0;
      v178 = 0u;
      v179 = 0u;
      v166 = 0u;
      v167 = 0u;
      v168 = 0u;
      v169 = 0u;
      v170 = 0u;
      v171 = 0u;
      v172 = 0u;
      v173 = 0u;
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v180 = 0;
      memset(v185, 0, 25);
      v184 = 0u;
      v183 = 0u;
      v181 = 16;
      v182 = v104[0];
    }

    *(&v184 + 1) = v34;
    re::DynamicArray<re::Entry>::operator=(&v159, v94);
    re::Message::Message(v150, &v159);
    re::Raft::send(a1, v150);
    re::Message::~Message(v150);
    re::Message::~Message(&v159);
    goto LABEL_268;
  }

  if (v103 == 1)
  {
    re::Raft::broadcastHeartbeat(a1);
    goto LABEL_211;
  }

  if (v103 == 2)
  {
    if (v95)
    {
      re::ProgressSet::voterIds(&v159, (a1 + 552));
      v29 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v159, (a1 + 1056));
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v159);
      if (!v29 || (*(a1 + 1024) & 1) != 0)
      {
        v30 = 0;
        *a3 = 1024;
        goto LABEL_310;
      }

      v55 = v95;
      if (v95)
      {
        v56 = 0;
        v57 = 1;
        do
        {
          v58 = &v96[v56];
          if (LOBYTE(v96[v56 + 10]) == 1)
          {
            if (*(a1 + 1072) > *(a1 + 296) || *(a1 + 856) == 1)
            {
              v59 = &v96[v56];
              v59[7] = 0;
              v59[11] = 0;
              v59[12] = 0;
              ++*(v59 + 16);
              v59[2] = 0;
              ++*(v59 + 6);
              *(v58 + 80) = 0;
            }

            else
            {
              *(a1 + 1072) = re::RaftLog::lastIndex(a1) + v57;
              v55 = v95;
            }
          }

          v56 += 13;
        }

        while (v57++ < v55);
      }

      re::Raft::appendEntry(a1, v94);
      re::Raft::broadcastAppend(a1);
      goto LABEL_211;
    }

LABEL_323:
    re::internal::assertLog(4, v28, "assertion failure: '%s' (%s:line %i) stepped empty msgprop", "!Unreachable code", "stepLeader", 994);
    _os_crash("assertion failure: (!Unreachable code) stepped empty msgprop");
    __break(1u);
    return;
  }

LABEL_155:
  LOBYTE(v137[0]) = 0;
  v149 = 0;
  v143[0] = 0;
  *&v142 = 0;
  v141 = 0uLL;
  DWORD2(v142) = 0;
  v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v104[0] ^ (v104[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v104[0] ^ (v104[0] >> 30))) >> 27));
  re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1 + 552, v104, v42 ^ (v42 >> 31), &v159);
  if (HIDWORD(v160) != 0x7FFFFFFF)
  {
    v43 = 0;
    if (v103 > 9u)
    {
      if (v103 == 10)
      {
        v74 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v104);
        if (*(v74 + 64) == 1)
        {
          re::Progress::becomeProbe(v74);
        }

        goto LABEL_285;
      }

      if (v103 == 11)
      {
        v75 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v104);
        if (*(v75 + 64) == 2)
        {
          v76 = v75;
          if (v108 == 1)
          {
            *(v75 + 88) = 0;
          }

          re::Progress::becomeProbe(v75);
          v43 = 0;
          *(v76 + 104) = 1;
          *(v76 + 96) = 0;
          goto LABEL_286;
        }

        goto LABEL_285;
      }

      if (v103 != 13)
      {
LABEL_286:
        LOBYTE(v159) = 1;
        re::ProgressSet::ProgressSet(&v160, (a1 + 552));
        re::Optional<re::ProgressSet>::operator=((a1 + 544), &v159);
        if (v159 == 1)
        {
          re::ProgressSet::~ProgressSet(&v160);
        }

        if (v149)
        {
          v84 = re::ProgressSet::maximalCommittedIndex((a1 + 552));
          if (re::RaftLog::maybeCommit(a1, v84, *(a1 + 1040)))
          {
            if (*(a1 + 1155) != 1 || *(a1 + 1072) > *(a1 + 296) || *(a1 + 856) == 1)
            {
              re::Raft::broadcastAppend(a1);
            }
          }

          else if (v43)
          {
            LOBYTE(v137[0]) = 1;
          }
        }

        goto LABEL_296;
      }

      v150[0] = v104[0];
      re::ProgressSet::learnerIds(&v159, (a1 + 552));
      v44 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(&v159, v150);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v159);
      if (!v44)
      {
        v45 = v150[0];
        if (*(a1 + 1024) != 1)
        {
          goto LABEL_164;
        }

        if (*(a1 + 1032) != v150[0])
        {
          *(a1 + 1024) = 0;
LABEL_164:
          if (v45 != *(a1 + 1056))
          {
            *(a1 + 1096) = 0;
            *(a1 + 1024) = 1;
            *(a1 + 1032) = v45;
            v46 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v150);
            v47 = *(v46 + 9);
            if (v47 == re::RaftLog::lastIndex(a1))
            {
              re::Raft::sendTimeoutNow(a1, v45);
            }

            else
            {
              re::Raft::sendAppend(a1, v45, v46, v48);
            }
          }
        }
      }

LABEL_285:
      v43 = 0;
      goto LABEL_286;
    }

    if (v103 != 4)
    {
      if (v103 != 9)
      {
        goto LABEL_286;
      }

      v62 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v104);
      v63 = v62;
      *(v62 + 104) = 256;
      if (*(v62 + 64) == 1 && *(v62 + 48) == *(v62 + 56))
      {
        re::Inflights::freeFirstOne(v62);
      }

      v64 = *(v63 + 72);
      if (v64 < re::RaftLog::lastIndex(a1) || *(v63 + 96))
      {
        LOBYTE(v137[0]) = 1;
      }

      v43 = 0;
      if (*(a1 + 528) || !v99)
      {
        goto LABEL_286;
      }

      re::ReadOnly::recvAck(&v159, (a1 + 432), v94);
      hasQuorum = re::ProgressSet::hasQuorum(a1 + 552, &v159);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v159);
      if (hasQuorum)
      {
        re::ReadOnly::advance(v150, (a1 + 432), v94);
        if (v151)
        {
          v66 = v152;
          v67 = 440 * v151;
          do
          {
            v68 = *(v66 + 46);
            if (v68 && v68 != *(a1 + 1056))
            {
              v160 = 0;
              v159 = 0;
              v162 = 0;
              v161 = 0;
              *__s2 = 0u;
              v164 = 0u;
              v165 = 0;
              v166 = 0u;
              v167 = 0u;
              v168 = 0u;
              v169 = 0u;
              v170 = 0u;
              v171 = 0u;
              v172 = 0u;
              v173 = 0u;
              v174 = 0u;
              v175 = 0u;
              v176 = 0u;
              v177 = 0u;
              v178 = 0u;
              v179 = 0u;
              v180 = 0;
              v184 = 0u;
              memset(v185, 0, 25);
              v183 = 0u;
              v181 = 16;
              v70 = *(v66 + 54);
              v182 = v68;
              *(&v184 + 1) = v70;
              re::DynamicArray<re::Entry>::operator=(&v159, v66 + 6);
              re::DynamicArray<re::Message>::add(&v141, &v159);
              re::Snapshot::~Snapshot((&v166 + 8));
              if (__s2[1])
              {
                if (v166)
                {
                  (*(*__s2[1] + 40))();
                }

                *&v166 = 0;
                v164 = 0uLL;
                __s2[1] = 0;
                ++v165;
              }

              re::DynamicArray<re::Entry>::deinit(&v159);
            }

            else
            {
              v160 = 0;
              v159 = 0;
              v162 = 0;
              v161 = 0;
              v69 = *(v66 + 54);
              __s2[0] = 0;
              __s2[1] = v69;
              re::DynamicArray<BOOL>::operator=(&v159, *(v66 + 10));
              re::DynamicArray<re::ReadState>::add(a1 + 352, &v159);
              if (v159 && __s2[0])
              {
                (*(*v159 + 40))();
              }
            }

            v66 = (v66 + 440);
            v67 -= 440;
          }

          while (v67);
        }

        v71 = v150[0];
        if (v150[0])
        {
          v72 = v152;
          if (v152)
          {
            if (v151)
            {
              v73 = 440 * v151;
              do
              {
                re::ReadIndexStatus::~ReadIndexStatus(v72);
                v72 = (v72 + 440);
                v73 -= 440;
              }

              while (v73);
              v71 = v150[0];
              v72 = v152;
            }

            (*(*v71 + 40))(v71, v72);
          }
        }
      }

      goto LABEL_285;
    }

    v77 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v104);
    v78 = v77;
    *(v77 + 105) = 1;
    if (v108 == 1)
    {
      if (!re::Progress::maybeDecrementTo(v77, v105, v107, v106))
      {
        goto LABEL_285;
      }

      if (*(v78 + 64) == 1)
      {
        re::Progress::becomeProbe(v78);
      }

      v43 = 0;
      v79 = v137;
    }

    else
    {
      if (*(v77 + 64) == 1)
      {
        v43 = *(v77 + 48) == *(v77 + 56);
      }

      else if (*(v77 + 64))
      {
        v43 = 1;
      }

      else
      {
        v43 = *(v77 + 104);
      }

      v80 = v105;
      v81 = *(v77 + 72);
      if (v81 < v105)
      {
        *(v77 + 72) = v105;
        *(v77 + 104) = 0;
      }

      if (*(v77 + 80) < v80 + 1)
      {
        *(v77 + 80) = v80 + 1;
      }

      if (v81 >= v80)
      {
        goto LABEL_286;
      }

      if (*(a1 + 1024) == 1)
      {
        Index = re::RaftLog::lastIndex(a1);
        if (v104[0] == *(a1 + 1032) && *(v78 + 72) == Index)
        {
          re::Raft::sendTimeoutNow(a1, v104[0]);
        }
      }

      v83 = *(v78 + 64);
      if (v83 == 2)
      {
        if (*(v78 + 72) < *(v78 + 88))
        {
          goto LABEL_286;
        }

        re::Progress::becomeProbe(v78);
      }

      else if (v83 == 1)
      {
        re::Inflights::freeTo(v78, v105);
      }

      else if (!*(v78 + 64))
      {
        *(v78 + 104) = 0;
        *(v78 + 64) = 1;
        *(v78 + 40) = 0;
        *(v78 + 48) = 0;
        *(v78 + 80) = *(v78 + 72) + 1;
        *(v78 + 88) = 0;
      }

      v79 = &v149;
    }

    *v79 = 1;
    goto LABEL_286;
  }

LABEL_296:
  if (LOBYTE(v137[0]) == 1)
  {
    v85 = v104[0];
    v86 = re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1 + 552, v104);
    re::Raft::sendAppend(a1, v85, v86, v87);
    LOBYTE(v159) = 1;
    re::ProgressSet::ProgressSet(&v160, (a1 + 552));
    re::Optional<re::ProgressSet>::operator=((a1 + 544), &v159);
    if (v159 == 1)
    {
      re::ProgressSet::~ProgressSet(&v160);
    }
  }

  if (v142)
  {
    v88 = v143[0];
    v89 = 384 * v142;
    v90 = 384 * v142;
    v91 = v143[0];
    do
    {
      re::Message::Message(&v159, v91);
      re::Raft::send(a1, &v159);
      re::Snapshot::~Snapshot((&v166 + 8));
      if (__s2[1])
      {
        if (v166)
        {
          (*(*__s2[1] + 40))();
        }

        *&v166 = 0;
        v164 = 0uLL;
        __s2[1] = 0;
        ++v165;
      }

      re::DynamicArray<re::Entry>::deinit(&v159);
      v91 = (v91 + 384);
      v90 -= 384;
    }

    while (v90);
    *&v142 = 0;
    do
    {
      re::Snapshot::~Snapshot((v88 + 80));
      re::DynamicArray<unsigned long>::deinit(v88 + 40);
      re::DynamicArray<re::Entry>::deinit(v88);
      v88 = (v88 + 384);
      v89 -= 384;
    }

    while (v89);
    ++DWORD2(v142);
  }

  v30 = 1;
  *a3 = 1;
  re::DynamicArray<re::Message>::deinit(&v141);
LABEL_310:
  re::Snapshot::~Snapshot(&v102);
  if (v97)
  {
    if (v101)
    {
      (*(*v97 + 40))();
    }

    v101 = 0;
    v98 = 0;
    v99 = 0;
    v97 = 0;
    ++v100;
  }

  re::DynamicArray<re::Entry>::deinit(v94);
  if (v30)
  {
    goto LABEL_96;
  }
}

uint64_t re::Raft::hup(uint64_t this, int a2)
{
  if (*(this + 536) != 2)
  {
    v18 = v3;
    v19 = v4;
    v6 = this;
    if (*(this + 48) == 1)
    {
      v2 = *(this + 264) + 1;
    }

    if (*(this + 48))
    {
      v7 = v2;
    }

    else
    {
      v7 = *(this + 296) + 1;
    }

    re::RaftLog::slice(&v13, this, v7, *(this + 288) + 1);
    re::DynamicArray<re::Entry>::DynamicArray(v15, v14);
    if (v13 == 1)
    {
      re::DynamicArray<re::Entry>::deinit(v14);
    }

    if (!v16)
    {
      goto LABEL_15;
    }

    v8 = 0;
    v9 = 104 * v16;
    v10 = (v17 + 80);
    do
    {
      v11 = *v10;
      v10 += 104;
      if (v11 == 1)
      {
        ++v8;
      }

      v9 -= 104;
    }

    while (v9);
    if (!v8)
    {
LABEL_15:
      if (a2)
      {
        v12 = 0;
      }

      else if (*(v6 + 1154) == 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 2;
      }

      re::DynamicArray<unsigned char>::DynamicArray(&v13, &v12, 1uLL);
      re::Raft::campaign(v6, &v13);
      if (v13)
      {
        if (v14[3])
        {
          (*(*v13 + 40))();
        }
      }
    }

    return re::DynamicArray<re::Entry>::deinit(v15);
  }

  return this;
}

void re::Raft::campaign(uint64_t a1, uint64_t a2)
{
  LOBYTE(v45[0]) = 1;
  re::DynamicArray<unsigned char>::DynamicArray(v32, v45, 1uLL);
  v4 = *(a2 + 16);
  v5 = v4 == v33 && memcmp(*(a2 + 32), __s2, v4) == 0;
  if (v32[0] && __s2)
  {
    (*(*v32[0] + 40))();
  }

  if (v5)
  {
    *(a1 + 536) = 3;
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(a1 + 304);
    *(a1 + 1064) = 0;
    v21 = *(a1 + 1040) + 1;
    v6 = *(a1 + 1056);
    v7 = 17;
  }

  else
  {
    re::Raft::reset(a1, *(a1 + 1040) + 1);
    v6 = *(a1 + 1056);
    *(a1 + 1048) = v6;
    *(a1 + 536) = 1;
    v21 = *(a1 + 1040);
    v7 = 5;
  }

  v20 = v7;
  re::Raft::registerVote(a1, v6, 1);
  if (re::ProgressSet::candidacyStatus(a1 + 552, a1 + 304))
  {
    re::ProgressSet::voterIds(v45, (a1 + 552));
    v8 = v47;
    if (v47)
    {
      v9 = 0;
      v10 = (v46 + 8);
      while (1)
      {
        v11 = *v10;
        v10 += 6;
        if (v11 < 0)
        {
          break;
        }

        if (v47 == ++v9)
        {
          LODWORD(v9) = v47;
          break;
        }
      }
    }

    else
    {
      LODWORD(v9) = 0;
    }

    if (v9 != v47)
    {
      v14 = v46;
      v15 = v47;
      do
      {
        v16 = *(v14 + 24 * v9 + 16);
        if (v16 != v6)
        {
          v32[0] = 0;
          v32[1] = 0;
          v34 = 0;
          v33 = 0;
          __s2 = 0u;
          v36 = 0u;
          v37 = 0;
          memset(v38, 0, sizeof(v38));
          v43 = 0u;
          memset(v44, 0, sizeof(v44));
          v41 = 0;
          v39 = v20;
          v40 = v16;
          v42 = v21;
          *(&v43 + 1) = re::RaftLog::lastIndex(a1);
          *&v43 = re::RaftLog::lastTerm(a1);
          v29 = 0;
          re::DynamicArray<unsigned char>::DynamicArray(v30, &v29, 1uLL);
          v17 = 0;
          v18 = *(a2 + 16);
          if (v18 == v30[2])
          {
            v17 = memcmp(*(a2 + 32), v31, v18) == 0;
          }

          if (v30[0] && v31)
          {
            (*(*v30[0] + 40))();
          }

          if (v17)
          {
            re::DynamicArray<BOOL>::operator=(&__s2 + 8, a2);
          }

          re::Message::Message(v22, v32);
          re::Raft::send(a1, v22);
          re::Snapshot::~Snapshot(&v28);
          if (v23)
          {
            if (v27)
            {
              (*(*v23 + 40))();
            }

            v27 = 0;
            v24 = 0;
            v25 = 0;
            v23 = 0;
            ++v26;
          }

          re::DynamicArray<re::Entry>::deinit(v22);
          re::Snapshot::~Snapshot(&v38[1]);
          if (*(&__s2 + 1))
          {
            if (v38[0])
            {
              (*(**(&__s2 + 1) + 40))();
            }

            v38[0] = 0;
            v36 = 0uLL;
            *(&__s2 + 1) = 0;
            ++v37;
          }

          re::DynamicArray<re::Entry>::deinit(v32);
          v15 = v47;
          v14 = v46;
        }

        if (v15 <= v9 + 1)
        {
          v19 = v9 + 1;
        }

        else
        {
          v19 = v15;
        }

        while (v19 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v14 + 24 * v9 + 8) & 0x80000000) != 0)
          {
            goto LABEL_45;
          }
        }

        LODWORD(v9) = v19;
LABEL_45:
        ;
      }

      while (v9 != v8);
    }

    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v45);
  }

  else
  {
    LOBYTE(v45[0]) = 1;
    re::DynamicArray<unsigned char>::DynamicArray(v32, v45, 1uLL);
    v12 = *(a2 + 16);
    v13 = v12 == v33 && memcmp(*(a2 + 32), __s2, v12) == 0;
    if (v32[0] && __s2)
    {
      (*(*v32[0] + 40))();
    }

    if (v13)
    {
      LOBYTE(v45[0]) = 2;
      re::DynamicArray<unsigned char>::DynamicArray(v32, v45, 1uLL);
      re::Raft::campaign(a1, v32);
      if (v32[0] && __s2)
      {
        (*(*v32[0] + 40))();
      }
    }

    else
    {
      re::Raft::becomeLeader(a1);
    }
  }
}

uint64_t re::Raft::registerVote(uint64_t this, unint64_t a2, char a3)
{
  v4 = this;
  v10 = a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = v5 ^ (v5 >> 31);
  if (!*(this + 304) || (v7 = *(*(this + 312) + 4 * (v6 % *(this + 328))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    this = re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 304, &v10, v6, &v11);
    v9 = HIDWORD(v12);
    if (HIDWORD(v12) == 0x7FFFFFFF)
    {
      this = re::HashTable<unsigned long long,BOOL,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4 + 304, v12, v11);
      *(this + 8) = v10;
      *(this + 16) = a3;
      ++*(v4 + 344);
    }

    else
    {
      ++*(v4 + 344);
      *(*(v4 + 320) + 32 * v9 + 16) = a3;
    }
  }

  else
  {
    v8 = *(this + 320);
    while (*(v8 + 32 * v7 + 8) != a2)
    {
      v7 = *(v8 + 32 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  return this;
}

_BYTE *re::Raft::finalizeMembershipChange@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  if (*(a2 + 120) != 4 || *(a2 + 152) == 1)
  {
    v4 = 2560;
LABEL_4:
    *a3 = v4;
    return result;
  }

  v5 = result;
  if ((result[640] & 1) == 0)
  {
    v4 = 3584;
    goto LABEL_4;
  }

  if (!re::Configuration::contains((result + 648), *(result + 133)))
  {
    Term = re::RaftLog::lastTerm(v5);
    if (v5[536] == 2)
    {
      v7 = *(v5 + 135);
      re::Raft::reset(v5, Term);
      *(v5 + 133) = 0;
      v5[536] = 0;
      *(v5 + 135) = v7;
    }

    else
    {
      *(v5 + 133) = 0;
    }
  }

  re::ProgressSet::finalizeMembershipChange(v10, (v5 + 552));
  if (LOBYTE(v10[0]) == 1)
  {
    v9[0] = 0;
    re::Optional<re::ConfChange>::operator=(v5 + 856, v9);
    result = re::Optional<re::ConfChange>::~Optional(v9);
    v8 = v10[0];
    *a3 = 1;
    if (v8)
    {
      return result;
    }
  }

  else
  {
    *a3 = 3584;
  }

  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))(v11, v13);
    }
  }

  return result;
}

uint64_t re::Raft::sendTimeoutNow(re::Raft *this, uint64_t a2)
{
  memset(v11, 0, sizeof(v11));
  v12 = 0;
  v13 = 0u;
  v14 = 0u;
  v15 = 0;
  memset(v16, 0, sizeof(v16));
  v20 = 0u;
  memset(v21, 0, sizeof(v21));
  v19 = 0u;
  v18 = a2;
  v17 = 14;
  re::Message::Message(v4, v11);
  re::Raft::send(this, v4);
  re::Snapshot::~Snapshot(&v10);
  if (v5)
  {
    if (v9)
    {
      (*(*v5 + 40))();
    }

    v9 = 0;
    v6 = 0;
    v7 = 0;
    v5 = 0;
    ++v8;
  }

  re::DynamicArray<re::Entry>::deinit(v4);
  re::Snapshot::~Snapshot(&v16[1]);
  if (*(&v13 + 1))
  {
    if (v16[0])
    {
      (*(**(&v13 + 1) + 40))();
    }

    v16[0] = 0;
    v14 = 0uLL;
    *(&v13 + 1) = 0;
    ++v15;
  }

  return re::DynamicArray<re::Entry>::deinit(v11);
}

uint64_t re::DynamicArray<re::ReadState>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::ReadState>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::ReadState>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::DynamicArray<BOOL>::DynamicArray(*(a1 + 32) + 48 * v5, a2);
  *(result + 40) = a2[5];
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t re::Raft::handleAppendEntries(re::Raft *this, const re::Message *a2)
{
  if (*(this + 135))
  {

    return re::Raft::sendRequestSnapshot(this);
  }

  v5 = *(a2 + 43);
  v6 = *(this + 36);
  if (v5 < v6)
  {
    v26 = 0;
    v25 = 0;
    v28 = 0;
    v27 = 0;
    v29 = 0u;
    v30 = 0u;
    v31 = 0;
    v44 = 0u;
    v45 = 0u;
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v46 = 0;
    memset(v51, 0, 25);
    v50 = 0u;
    v49 = 0u;
    v47 = 4;
    v48 = *(a2 + 40);
    *(&v50 + 1) = v6;
    re::Message::Message(v18, &v25);
    re::Raft::send(this, v18);
    re::Snapshot::~Snapshot(&v24);
    if (v19)
    {
      if (v23)
      {
        (*(*v19 + 40))();
      }

      v23 = 0;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      ++v22;
    }

    v7 = v18;
    goto LABEL_22;
  }

  v26 = 0;
  v25 = 0;
  v28 = 0;
  v27 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v44 = 0u;
  v45 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v46 = 0;
  memset(v51, 0, 25);
  v50 = 0u;
  v49 = 0u;
  v48 = *(a2 + 40);
  v47 = 4;
  re::RaftLog::maybeAppend(this, v5, *(a2 + 42), *(a2 + 44), a2, v16);
  if (v16[0] == 1)
  {
    *(&v50 + 1) = v17;
    v8 = v13;
    re::Message::Message(v13, &v25);
    re::Raft::send(this, v13);
    re::Snapshot::~Snapshot(&v15);
    if (v14[0])
    {
      v9 = v14;
      if (v14[4])
      {
        (*(*v14[0] + 40))();
      }

      v8 = v13;
LABEL_20:
      *(v8 + 9) = 0;
      v9[1] = 0;
      v9[2] = 0;
      *v9 = 0;
      ++*(v8 + 16);
    }
  }

  else
  {
    *(&v50 + 1) = *(a2 + 43);
    BYTE8(v51[1]) = 1;
    *&v51[1] = re::RaftLog::lastIndex(this);
    v8 = v10;
    re::Message::Message(v10, &v25);
    re::Raft::send(this, v10);
    re::Snapshot::~Snapshot(&v12);
    if (v11[0])
    {
      v9 = v11;
      if (v11[4])
      {
        (*(*v11[0] + 40))();
      }

      v8 = v10;
      goto LABEL_20;
    }
  }

  v7 = v8;
LABEL_22:
  re::DynamicArray<re::Entry>::deinit(v7);
  re::Snapshot::~Snapshot((&v32 + 8));
  if (*(&v29 + 1))
  {
    if (v32)
    {
      (*(**(&v29 + 1) + 40))();
    }

    *&v32 = 0;
    v30 = 0uLL;
    *(&v29 + 1) = 0;
    ++v31;
  }

  return re::DynamicArray<re::Entry>::deinit(&v25);
}

uint64_t re::Raft::handleHeartbeat(re::Raft *this, const re::Message *a2)
{
  re::RaftLog::commitTo(this, *(a2 + 44));
  if (*(this + 135))
  {

    return re::Raft::sendRequestSnapshot(this);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
    v13 = 0;
    v14 = 0u;
    v15 = 0u;
    v16 = 0;
    memset(v17, 0, sizeof(v17));
    v21 = 0u;
    memset(v22, 0, sizeof(v22));
    v20 = 0u;
    v18 = 9;
    v19 = *(a2 + 40);
    re::DynamicArray<BOOL>::operator=(&v14 + 8, a2 + 5);
    re::Message::Message(v5, v12);
    re::Raft::send(this, v5);
    re::Snapshot::~Snapshot(&v11);
    if (v6)
    {
      if (v10)
      {
        (*(*v6 + 40))();
      }

      v10 = 0;
      v7 = 0;
      v8 = 0;
      v6 = 0;
      ++v9;
    }

    re::DynamicArray<re::Entry>::deinit(v5);
    re::Snapshot::~Snapshot(&v17[1]);
    if (*(&v14 + 1))
    {
      if (v17[0])
      {
        (*(**(&v14 + 1) + 40))();
      }

      v17[0] = 0;
      v15 = 0uLL;
      *(&v14 + 1) = 0;
      ++v16;
    }

    return re::DynamicArray<re::Entry>::deinit(v12);
  }
}

uint64_t re::Raft::handleSnapshot(re::Raft *this, const re::Message *a2)
{
  v4 = *(this + 36);
  if (*(a2 + 36) < v4)
  {
LABEL_2:
    v27 = 0;
    v26 = 0;
    v29 = 0;
    v28 = 0;
    v30 = 0u;
    v31 = 0u;
    v32 = 0;
    v45 = 0u;
    v46 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v47 = 0;
    memset(v52, 0, sizeof(v52));
    v51 = 0u;
    v50 = 0u;
    v48 = 4;
    v49 = *(a2 + 40);
    *(&v51 + 1) = v4;
    re::Message::Message(v12, &v26);
    re::Raft::send(this, v12);
    re::Snapshot::~Snapshot(&v18);
    if (v13)
    {
      if (v17)
      {
        (*(*v13 + 40))();
      }

      v17 = 0;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      ++v16;
    }

    re::DynamicArray<re::Entry>::deinit(v12);
    re::Snapshot::~Snapshot((&v33 + 8));
    if (*(&v30 + 1))
    {
      if (v33)
      {
        (*(**(&v30 + 1) + 40))();
      }

      *&v33 = 0;
      v31 = 0uLL;
      *(&v30 + 1) = 0;
LABEL_75:
      ++v32;
      return re::DynamicArray<re::Entry>::deinit(&v26);
    }

    return re::DynamicArray<re::Entry>::deinit(&v26);
  }

  re::DynamicArray<char const*>::DynamicArray(v72, a2 + 15);
  re::DynamicArray<char const*>::DynamicArray(v73, a2 + 20);
  re::DynamicArray<char const*>::DynamicArray(v77, a2 + 25);
  re::DynamicArray<char const*>::DynamicArray(v80, a2 + 30);
  v83 = *(a2 + 280);
  v84 = *(a2 + 37);
  if (!*(this + 135))
  {
    v9 = v84;
    re::RaftLog::getTerm(&v26, this, *(&v83 + 1));
    if (v26 == 1 && v27 == v9)
    {
      re::RaftLog::commitTo(this, *(&v83 + 1));
LABEL_24:
      v54 = 1;
      v10 = &v53;
      goto LABEL_48;
    }
  }

  if (*(this + 145) && (*(this + 1152) & 1) == 0 && v74)
  {
    v5 = v76;
    v6 = 8 * v74;
    while (*v5 != *(this + 132))
    {
      ++v5;
      v6 -= 8;
      if (!v6)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_24;
  }

LABEL_17:
  Index = re::RaftLog::lastIndex(this);
  re::ProgressSet::restoreSnapshotMeta(v72, Index + 1, *(this + 136), v59);
  LOBYTE(v26) = 1;
  re::ProgressSet::ProgressSet(&v27, v59);
  re::Optional<re::ProgressSet>::operator=(this + 544, &v26);
  if (v26 == 1)
  {
    re::ProgressSet::~ProgressSet(&v27);
  }

  re::ProgressSet::~ProgressSet(v59);
  *(re::HashTable<unsigned long long,re::Progress,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](this + 552, this + 132) + 72) = Index;
  if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 792, this + 132))
  {
    v8 = 1;
LABEL_27:
    *(this + 1152) = v8;
    goto LABEL_28;
  }

  if (re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(this + 744, this + 132))
  {
    v8 = 0;
    goto LABEL_27;
  }

LABEL_28:
  if (v83)
  {
    re::DynamicArray<char const*>::DynamicArray(v55, v77);
    re::DynamicArray<char const*>::DynamicArray(v56, v80);
    memset(v59, 0, sizeof(v59));
    v60 = 0;
    v61 = 0u;
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    v66 = 0;
    v70 = 0;
    v68 = 0;
    v69 = 0;
    v71 = 0;
    v67 = 3;
    re::DynamicArray<unsigned long long>::operator=(&v61 + 8, v55);
    re::DynamicArray<unsigned long long>::operator=(&v64, v56);
    v71 = 1;
    v70 = v83;
    LOBYTE(v26) = 1;
    re::ConfChange::ConfChange(&v27, v59);
    re::Optional<re::ConfChange>::operator=(this + 856, &v26);
    re::Optional<re::ConfChange>::~Optional(&v26);
    if (v64)
    {
      if (v66)
      {
        (*(*v64 + 40))();
      }

      v66 = 0;
      *&v65 = 0;
      v64 = 0uLL;
      ++DWORD2(v65);
    }

    if (*(&v61 + 1))
    {
      if (*(&v63 + 1))
      {
        (*(**(&v61 + 1) + 40))();
      }

      *(&v63 + 1) = 0;
      v62 = 0uLL;
      *(&v61 + 1) = 0;
      LODWORD(v63) = v63 + 1;
    }

    if (v59[0] && v61)
    {
      (*(*v59[0] + 40))();
    }

    if (v56[0])
    {
      if (v58)
      {
        (*(*v56[0] + 40))();
      }

      v58 = 0;
      memset(v56, 0, sizeof(v56));
      ++v57;
    }

    if (v55[0] && v55[4])
    {
      (*(*v55[0] + 40))();
    }
  }

  *(this + 135) = 0;
  v10 = &v54;
LABEL_48:
  *v10 = 0;
  if (v80[0])
  {
    if (v82)
    {
      (*(*v80[0] + 40))(v80[0]);
    }

    v82 = 0;
    memset(v80, 0, sizeof(v80));
    ++v81;
  }

  if (v77[0])
  {
    if (v79)
    {
      (*(*v77[0] + 40))(v77[0]);
    }

    v79 = 0;
    memset(v77, 0, sizeof(v77));
    ++v78;
  }

  if (v73[0])
  {
    if (v76)
    {
      (*(*v73[0] + 40))(v73[0]);
    }

    v76 = 0;
    v73[1] = 0;
    v74 = 0;
    v73[0] = 0;
    ++v75;
  }

  if (v72[0] && v72[4])
  {
    (*(*v72[0] + 40))(v72[0]);
  }

  if (v54)
  {
    if ((v53 & 1) == 0)
    {
      v4 = *(this + 36);
      goto LABEL_2;
    }
  }

  else
  {
    *(this + 36) = *(a2 + 36);
    re::Unstable::restore((this + 8), (a2 + 80));
  }

  v27 = 0;
  v26 = 0;
  v29 = 0;
  v28 = 0;
  v30 = 0u;
  v31 = 0u;
  v32 = 0;
  v45 = 0u;
  v46 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v47 = 0;
  memset(v52, 0, sizeof(v52));
  v51 = 0u;
  v50 = 0u;
  v48 = 4;
  v49 = *(a2 + 40);
  *(&v51 + 1) = re::RaftLog::lastIndex(this);
  re::Message::Message(v19, &v26);
  re::Raft::send(this, v19);
  re::Snapshot::~Snapshot(&v25);
  if (v20)
  {
    if (v24)
    {
      (*(*v20 + 40))();
    }

    v24 = 0;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    ++v23;
  }

  re::DynamicArray<re::Entry>::deinit(v19);
  re::Snapshot::~Snapshot((&v33 + 8));
  if (*(&v30 + 1))
  {
    if (v33)
    {
      (*(**(&v30 + 1) + 40))();
    }

    *&v33 = 0;
    v31 = 0uLL;
    *(&v30 + 1) = 0;
    goto LABEL_75;
  }

  return re::DynamicArray<re::Entry>::deinit(&v26);
}