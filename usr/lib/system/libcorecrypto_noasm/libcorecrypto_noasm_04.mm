uint64_t ccrng_drbg_init_withdrbg(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  *a1 = generate_2;
  a1[1] = a2;
  a1[2] = a3;
  return 0;
}

uint64_t ccrng_drbg_reseed(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccdrbg_reseed_internal(*(a1 + 8), *(a1 + 16), a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccrng_drbg_done(uint64_t a1)
{
  v3 = timingsafe_enable_if_supported();
  ccdrbg_done(*(a1 + 8), *(a1 + 16));
  *(a1 + 16) = 0;
  return cc_disable_dit_with_sb(&v3);
}

uint64_t ccentropy_lock_init(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  *a1 = entropy_lock_info;
  a1[1] = a2;
  a1[2] = a3;
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ccentropy_lock_get_seed(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 16));
  seed_internal = ccentropy_get_seed_internal(*(a1 + 8));
  os_unfair_lock_unlock(*(a1 + 16));
  return seed_internal;
}

uint64_t ccentropy_lock_add_entropy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  os_unfair_lock_lock(*(a1 + 16));
  v10 = ccentropy_add_entropy_internal(*(a1 + 8), a2, a3, a4, a5);
  os_unfair_lock_unlock(*(a1 + 16));
  return v10;
}

uint64_t ccentropy_lock_reset(uint64_t a1)
{
  os_unfair_lock_lock(*(a1 + 16));
  v2 = ccentropy_reset(*(a1 + 8));
  os_unfair_lock_unlock(*(a1 + 16));
  return v2;
}

unint64_t *AccelerateCrypto_SHA3_keccak_hwassist(unint64_t *result, int8x16_t _Q0, __n128 _Q1, __n128 _Q2, __n128 _Q3, __n128 _Q4, __n128 _Q5, __n128 _Q6, __n128 _Q7)
{
  _Q0.i64[0] = *result;
  _Q1.n128_u64[0] = result[1];
  _Q2.n128_u64[0] = result[2];
  _Q3.n128_u64[0] = result[3];
  _Q4.n128_u64[0] = result[4];
  _Q5.n128_u64[0] = result[5];
  _Q6.n128_u64[0] = result[6];
  _Q7.n128_u64[0] = result[7];
  *&_Q8 = result[8];
  *&_Q9 = result[9];
  *&_Q10 = result[10];
  *&_Q11 = result[11];
  *&_Q12 = result[12];
  *&_Q13 = result[13];
  *&_Q14 = result[14];
  *&_Q15 = result[15];
  *&_Q16 = result[16];
  *&_Q17 = result[17];
  *&_Q18 = result[18];
  *&_Q19 = result[19];
  *&_Q20 = result[20];
  *&_Q21 = result[21];
  *&_Q22 = result[22];
  *&_Q23 = result[23];
  *&_Q24 = result[24];
  v26 = 0;
  v27 = &qword_299CFCE68;
  do
  {
    __asm
    {
      EOR3            V25.16B, V0.16B, V5.16B, V10.16B
      EOR3            V26.16B, V1.16B, V6.16B, V11.16B
      EOR3            V27.16B, V2.16B, V7.16B, V12.16B
      EOR3            V28.16B, V3.16B, V8.16B, V13.16B
      EOR3            V29.16B, V4.16B, V9.16B, V14.16B
      EOR3            V25.16B, V25.16B, V15.16B, V20.16B
      EOR3            V26.16B, V26.16B, V16.16B, V21.16B
      EOR3            V27.16B, V27.16B, V17.16B, V22.16B
      EOR3            V28.16B, V28.16B, V18.16B, V23.16B
      EOR3            V29.16B, V29.16B, V19.16B, V24.16B
      RAX1            V30.2D, V25.2D, V27.2D
      RAX1            V31.2D, V26.2D, V28.2D
      RAX1            V27.2D, V27.2D, V29.2D
      RAX1            V28.2D, V28.2D, V25.2D
      RAX1            V29.2D, V29.2D, V26.2D
      XAR             V25.2D, V1.2D, V30.2D, #0x3F ; '?'
      XAR             V1.2D, V6.2D, V30.2D, #0x14
      XAR             V6.2D, V9.2D, V28.2D, #0x2C ; ','
      XAR             V9.2D, V22.2D, V31.2D, #3
      XAR             V22.2D, V14.2D, V28.2D, #0x19
      XAR             V14.2D, V20.2D, V29.2D, #0x2E ; '.'
      XAR             V20.2D, V2.2D, V31.2D, #2
      XAR             V2.2D, V12.2D, V31.2D, #0x15
      XAR             V12.2D, V13.2D, V27.2D, #0x27 ; '''
      XAR             V13.2D, V19.2D, V28.2D, #0x38 ; '8'
      XAR             V19.2D, V23.2D, V27.2D, #8
      XAR             V23.2D, V15.2D, V29.2D, #0x17
      XAR             V15.2D, V4.2D, V28.2D, #0x25 ; '%'
      XAR             V26.2D, V21.2D, V30.2D, #0x3E ; '>'
      XAR             V8.2D, V8.2D, V27.2D, #9
    }

    _Q0 = veorq_s8(_Q0, _Q29);
    __asm
    {
      BCAX            V21.16B, V8.16B, V23.16B, V22.16B
      XAR             V28.2D, V24.2D, V28.2D, #0x32 ; '2'
      BCAX            V24.16B, V26.16B, V8.16B, V20.16B
      XAR             V18.2D, V18.2D, V27.2D, #0x2B ; '+'
      BCAX            V23.16B, V23.16B, V20.16B, V26.16B
      XAR             V11.2D, V11.2D, V30.2D, #0x36 ; '6'
      BCAX            V20.16B, V20.16B, V22.16B, V8.16B
      XAR             V30.2D, V16.2D, V30.2D, #0x13
      BCAX            V22.16B, V22.16B, V26.16B, V23.16B
      XAR             V16.2D, V5.2D, V29.2D, #0x1C
      XAR             V27.2D, V3.2D, V27.2D, #0x24 ; '$'
      BCAX            V3.16B, V18.16B, V0.16B, V28.16B
      XAR             V29.2D, V10.2D, V29.2D, #0x3D ; '='
      BCAX            V4.16B, V28.16B, V1.16B, V0.16B
      XAR             V10.2D, V17.2D, V31.2D, #0x31 ; '1'
      BCAX            V0.16B, V0.16B, V2.16B, V1.16B
      XAR             V7.2D, V7.2D, V31.2D, #0x3A ; ':'
      BCAX            V1.16B, V1.16B, V18.16B, V2.16B
      BCAX            V2.16B, V2.16B, V28.16B, V18.16B
      BCAX            V17.16B, V11.16B, V19.16B, V10.16B
      BCAX            V18.16B, V10.16B, V15.16B, V19.16B
      BCAX            V19.16B, V19.16B, V16.16B, V15.16B
      BCAX            V15.16B, V15.16B, V11.16B, V16.16B
      BCAX            V16.16B, V16.16B, V10.16B, V11.16B
      BCAX            V10.16B, V25.16B, V12.16B, V7.16B
      BCAX            V11.16B, V7.16B, V13.16B, V12.16B
      BCAX            V12.16B, V12.16B, V14.16B, V13.16B
      BCAX            V13.16B, V13.16B, V25.16B, V14.16B
      BCAX            V14.16B, V14.16B, V7.16B, V25.16B
    }

    *&_Q26 = *v27;
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v27;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v26 += 8;
    *_Q0.i8 = veor_s8(*_Q0.i8, *&_Q26);
  }

  while (v26 != 192);
  *result = _Q0.i64[0];
  result[1] = _Q1.n128_u64[0];
  result[2] = _Q2.n128_u64[0];
  result[3] = _Q3.n128_u64[0];
  result[4] = _Q4.n128_u64[0];
  result[5] = _Q5.n128_u64[0];
  result[6] = _Q6.n128_u64[0];
  result[7] = _Q7.n128_u64[0];
  result[8] = _Q8;
  result[9] = _Q9;
  result[10] = _Q10;
  result[11] = _Q11;
  result[12] = _Q12;
  result[13] = _Q13;
  result[14] = _Q14;
  result[15] = _Q15;
  result[16] = _Q16;
  result[17] = _Q17;
  result[18] = _Q18;
  result[19] = _Q19;
  result[20] = _Q20;
  result[21] = _Q21;
  result[22] = _Q22;
  result[23] = _Q23;
  result[24] = _Q24;
  return result;
}

unsigned __int8 *ccder_decode_dhparams(uint64_t *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v17 = a3;
  v6 = ccdh_gp_n(a1);
  v16 = 0;
  v7 = ccder_decode_constructed_tl(0x2000000000000010, &v17, a2, a3);
  v8 = a1 + 3;
  v9 = ccder_decode_uint(v6, a1 + 3, v7, v17);
  if (v9 && cczp_init(a1))
  {
    return 0;
  }

  v11 = ccder_decode_uint(v6, &v8[*a1 + 1 + *a1], v9, v17);
  v12 = ccdh_lookup_gp(v6, a1 + 3, v6, &v8[*a1 + 1 + *a1]);
  if (v12)
  {
    ccdh_copy_gp(a1, v12);
  }

  else
  {
    ccn_zero(v6, &v8[*a1 + 1 + *a1 + *a1]);
  }

  v13 = ccder_decode_uint64(&v16, v11, v17);
  if (v13)
  {
    v10 = v13;
  }

  else
  {
    v10 = v11;
  }

  v14 = v16;
  v8[*a1 + 1 + *a1 + *a1 + *a1] = v16;
  ccdh_ramp_gp_exponent(v14, a1);
  return v10;
}

unsigned __int8 *ccder_decode_dhparam_n(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = 0;
  v4 = a2;
  result = ccder_decode_constructed_tl(0x2000000000000010, &v4, a1, a2);
  if (result)
  {
    if (ccder_decode_uint_n(&v3, result, v4))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t ccrsa_decrypt_oaep_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, void *), unint64_t *a3, size_t *a4, size_t *a5, void *a6, unint64_t a7, unsigned __int8 *a8, size_t a9, char *a10)
{
  ccrsa_ctx_public();
  v19 = ccrsa_block_size(v18);
  v20 = 2 * *a4;
  if (v19 < v20 + 2)
  {
    return 4294967272;
  }

  v22 = v19;
  result = 4294967273;
  if (v22 <= a7 && *a5 >= v22 - v20 - 2)
  {
    v25 = a6;
    v23 = *a3;
    v26 = *(a1 + 16);
    v24 = (*(a1 + 24))(a1, *a3);
    result = ccn_read_uint_internal(v23, v24, a7, a8);
    if (!result)
    {
      result = ccrsa_priv_crypt_blinded_ws(a1, a2, a3, v24, v24);
      if (!result)
      {
        result = ccrsa_oaep_decode_parameter_ws(a1, a4, a5, v25, v22, v24, a9, a10);
      }
    }

    *(a1 + 16) = v26;
  }

  return result;
}

int64x2_t *AccelerateCrypto_SHA512_compress_hwassist(int64x2_t *result, uint64_t a2, int8x16_t *a3)
{
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    do
    {
      _Q24 = v3;
      _Q25 = v4;
      _Q0 = vrev64q_s8(*a3);
      _Q1 = vrev64q_s8(a3[1]);
      _Q2 = vrev64q_s8(a3[2]);
      _Q3 = vrev64q_s8(a3[3]);
      _Q4 = vrev64q_s8(a3[4]);
      _Q5 = vrev64q_s8(a3[5]);
      _Q6 = vrev64q_s8(a3[6]);
      _Q7 = vrev64q_s8(a3[7]);
      a3 += 8;
      _Q29 = vextq_s8(v5, v6, 8uLL);
      _Q28 = vextq_s8(v4, v5, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v26 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v29 = vaddq_s64(v4, v26);
      _Q29 = vextq_s8(v29, v5, 8uLL);
      _Q28 = vextq_s8(v3, v29, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v35 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v38 = vaddq_s64(v3, v35);
      _Q29 = vextq_s8(v38, v29, 8uLL);
      _Q28 = vextq_s8(_Q27, v38, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v44 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v47 = vaddq_s64(_Q27, v44);
      _Q29 = vextq_s8(v47, v38, 8uLL);
      _Q28 = vextq_s8(_Q26, v47, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v53 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v56 = vaddq_s64(_Q26, v53);
      _Q29 = vextq_s8(v56, v47, 8uLL);
      _Q28 = vextq_s8(_Q25, v56, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v62 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v65 = vaddq_s64(_Q25, v62);
      _Q29 = vextq_s8(v65, v56, 8uLL);
      _Q28 = vextq_s8(_Q24, v65, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v71 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v74 = vaddq_s64(_Q24, v71);
      _Q29 = vextq_s8(v74, v65, 8uLL);
      _Q28 = vextq_s8(_Q27, v74, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v80 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v83 = vaddq_s64(_Q27, v80);
      _Q29 = vextq_s8(v83, v74, 8uLL);
      _Q28 = vextq_s8(_Q26, v83, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v89 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v92 = vaddq_s64(_Q26, v89);
      _Q29 = vextq_s8(v92, v83, 8uLL);
      _Q28 = vextq_s8(_Q25, v92, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v98 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v101 = vaddq_s64(_Q25, v98);
      _Q29 = vextq_s8(v101, v92, 8uLL);
      _Q28 = vextq_s8(_Q24, v101, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v107 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v110 = vaddq_s64(_Q24, v107);
      _Q29 = vextq_s8(v110, v101, 8uLL);
      _Q28 = vextq_s8(_Q27, v110, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v116 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v119 = vaddq_s64(_Q27, v116);
      _Q29 = vextq_s8(v119, v110, 8uLL);
      _Q28 = vextq_s8(_Q26, v119, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v125 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v128 = vaddq_s64(_Q26, v125);
      _Q29 = vextq_s8(v128, v119, 8uLL);
      _Q28 = vextq_s8(_Q25, v128, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v134 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v137 = vaddq_s64(_Q25, v134);
      _Q29 = vextq_s8(v137, v128, 8uLL);
      _Q28 = vextq_s8(_Q24, v137, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v143 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v146 = vaddq_s64(_Q24, v143);
      _Q29 = vextq_s8(v146, v137, 8uLL);
      _Q28 = vextq_s8(_Q27, v146, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v152 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v155 = vaddq_s64(_Q27, v152);
      _Q29 = vextq_s8(v155, v146, 8uLL);
      _Q28 = vextq_s8(_Q26, v155, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v161 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v164 = vaddq_s64(_Q26, v161);
      _Q29 = vextq_s8(v164, v155, 8uLL);
      _Q28 = vextq_s8(_Q25, v164, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v170 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v173 = vaddq_s64(_Q25, v170);
      _Q29 = vextq_s8(v173, v164, 8uLL);
      _Q28 = vextq_s8(_Q24, v173, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v179 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v182 = vaddq_s64(_Q24, v179);
      _Q29 = vextq_s8(v182, v173, 8uLL);
      _Q28 = vextq_s8(_Q27, v182, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v188 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v191 = vaddq_s64(_Q27, v188);
      _Q29 = vextq_s8(v191, v182, 8uLL);
      _Q28 = vextq_s8(_Q26, v191, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v197 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v200 = vaddq_s64(_Q26, v197);
      _Q29 = vextq_s8(v200, v191, 8uLL);
      _Q28 = vextq_s8(_Q25, v200, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v206 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v209 = vaddq_s64(_Q25, v206);
      _Q29 = vextq_s8(v209, v200, 8uLL);
      _Q28 = vextq_s8(_Q24, v209, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v215 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v218 = vaddq_s64(_Q24, v215);
      _Q29 = vextq_s8(v218, v209, 8uLL);
      _Q28 = vextq_s8(_Q27, v218, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v224 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v227 = vaddq_s64(_Q27, v224);
      _Q29 = vextq_s8(v227, v218, 8uLL);
      _Q28 = vextq_s8(_Q26, v227, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v233 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v236 = vaddq_s64(_Q26, v233);
      _Q29 = vextq_s8(v236, v227, 8uLL);
      _Q28 = vextq_s8(_Q25, v236, 8uLL);
      _Q31 = vextq_s8(_Q4, _Q5, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V0.2D, V1.2D
      }

      v242 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V0.2D, V7.2D, V31.2D
      }

      v245 = vaddq_s64(_Q25, v242);
      _Q29 = vextq_s8(v245, v236, 8uLL);
      _Q28 = vextq_s8(_Q24, v245, 8uLL);
      _Q31 = vextq_s8(_Q5, _Q6, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V1.2D, V2.2D
      }

      v251 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V1.2D, V0.2D, V31.2D
      }

      v254 = vaddq_s64(_Q24, v251);
      _Q29 = vextq_s8(v254, v245, 8uLL);
      _Q28 = vextq_s8(_Q27, v254, 8uLL);
      _Q31 = vextq_s8(_Q6, _Q7, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V2.2D, V3.2D
      }

      v260 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V2.2D, V1.2D, V31.2D
      }

      v263 = vaddq_s64(_Q27, v260);
      _Q29 = vextq_s8(v263, v254, 8uLL);
      _Q28 = vextq_s8(_Q26, v263, 8uLL);
      _Q31 = vextq_s8(_Q7, _Q0, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V3.2D, V4.2D
      }

      v269 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V3.2D, V2.2D, V31.2D
      }

      v272 = vaddq_s64(_Q26, v269);
      _Q29 = vextq_s8(v272, v263, 8uLL);
      _Q28 = vextq_s8(_Q25, v272, 8uLL);
      _Q31 = vextq_s8(_Q0, _Q1, 8uLL);
      __asm
      {
        SHA512H         Q27, Q29, V28.2D
        SHA512SU0       V4.2D, V5.2D
      }

      v278 = _Q27;
      __asm
      {
        SHA512H2        Q27, Q25, V24.2D
        SHA512SU1       V4.2D, V3.2D, V31.2D
      }

      v281 = vaddq_s64(_Q25, v278);
      _Q29 = vextq_s8(v281, v272, 8uLL);
      _Q28 = vextq_s8(_Q24, v281, 8uLL);
      _Q31 = vextq_s8(_Q1, _Q2, 8uLL);
      __asm
      {
        SHA512H         Q26, Q29, V28.2D
        SHA512SU0       V5.2D, V6.2D
      }

      v287 = _Q26;
      __asm
      {
        SHA512H2        Q26, Q24, V27.2D
        SHA512SU1       V5.2D, V4.2D, V31.2D
      }

      v290 = vaddq_s64(_Q24, v287);
      _Q29 = vextq_s8(v290, v281, 8uLL);
      _Q28 = vextq_s8(_Q27, v290, 8uLL);
      _Q31 = vextq_s8(_Q2, _Q3, 8uLL);
      __asm
      {
        SHA512H         Q25, Q29, V28.2D
        SHA512SU0       V6.2D, V7.2D
      }

      v296 = _Q25;
      __asm
      {
        SHA512H2        Q25, Q27, V26.2D
        SHA512SU1       V6.2D, V5.2D, V31.2D
      }

      v299 = vaddq_s64(_Q27, v296);
      _Q29 = vextq_s8(v299, v290, 8uLL);
      _Q28 = vextq_s8(_Q26, v299, 8uLL);
      _Q31 = vextq_s8(_Q3, _Q4, 8uLL);
      __asm
      {
        SHA512H         Q24, Q29, V28.2D
        SHA512SU0       V7.2D, V0.2D
      }

      v305 = _Q24;
      __asm
      {
        SHA512H2        Q24, Q26, V25.2D
        SHA512SU1       V7.2D, V6.2D, V31.2D
      }

      v308 = vaddq_s64(_Q26, v305);
      _Q29 = vextq_s8(v308, v299, 8uLL);
      _Q28 = vextq_s8(_Q25, v308, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v313 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v313, v308, 8uLL);
      _Q28 = vextq_s8(_Q24, v313, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v318 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v318, v313, 8uLL);
      _Q28 = vextq_s8(_Q27, v318, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v323 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v323, v318, 8uLL);
      _Q28 = vextq_s8(_Q26, v323, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v328 = vaddq_s64(_Q26, _Q30);
      _Q29 = vextq_s8(v328, v323, 8uLL);
      _Q28 = vextq_s8(_Q25, v328, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q27, Q25, V24.2D
      }

      v333 = vaddq_s64(_Q25, _Q30);
      _Q29 = vextq_s8(v333, v328, 8uLL);
      _Q28 = vextq_s8(_Q24, v333, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q26, Q24, V27.2D
      }

      v338 = vaddq_s64(_Q24, _Q30);
      _Q29 = vextq_s8(v338, v333, 8uLL);
      _Q28 = vextq_s8(_Q27, v338, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q25, Q27, V26.2D
      }

      v343 = vaddq_s64(_Q27, _Q30);
      _Q29 = vextq_s8(v343, v338, 8uLL);
      _Q28 = vextq_s8(_Q26, v343, 8uLL);
      __asm
      {
        SHA512H         Q30, Q29, V28.2D
        SHA512H2        Q24, Q26, V25.2D
      }

      v3 = vaddq_s64(v3, _Q24);
      v4 = vaddq_s64(v4, _Q25);
      v5 = vaddq_s64(v5, vaddq_s64(_Q26, _Q30));
      v6 = vaddq_s64(v6, v343);
    }

    while (a2-- > 1);
    *result = v3;
    result[1] = v4;
    result[2] = v5;
    result[3] = v6;
  }

  return result;
}

uint64_t ccrsa_encrypt_eme_pkcs1v15_ws(uint64_t a1, uint64_t *a2, uint64_t (**a3)(void, size_t, char *), unint64_t *a4, char *a5, size_t a6, void *a7)
{
  v14 = ccrsa_block_size(a2);
  result = 4294967268;
  if (v14)
  {
    v16 = *a2;
    if (*a2)
    {
      if (ccn_n(*a2, a2 + 3) > 1 || a2[3] >= 2)
      {
        if (*a4 >= v14)
        {
          *a4 = v14;
          v17 = *(a1 + 16);
          v18 = (*(a1 + 24))(a1, v16);
          cc_clear(8 * v16, v18);
          result = ccrsa_eme_pkcs1v15_encode_internal(a3, v14, v18, a6, a7);
          if (!result)
          {
            result = ccrsa_pub_crypt_ws(a1, a2, v18);
            if (!result)
            {
              v19 = ccn_write_uint_padded_ct_internal(v16, v18, v14, a5);
              result = v19 & (v19 >> 31);
            }
          }

          *(a1 + 16) = v17;
        }

        else
        {
          return 4294967273;
        }
      }

      else
      {
        return 4294967268;
      }
    }
  }

  return result;
}

uint64_t ccrsa_encrypt_eme_pkcs1v15(uint64_t *a1, uint64_t (**a2)(void, size_t, char *), unint64_t *a3, char *a4, size_t a5, void *a6)
{
  v18 = timingsafe_enable_if_supported();
  v12 = cc_malloc_clear(80 * *a1);
  v13 = 10 * *a1;
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v12)
  {
    v14 = ccrsa_encrypt_eme_pkcs1v15_ws(v16, a1, a2, a3, a4, a5, a6);
    v17(v16);
  }

  else
  {
    v14 = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return v14;
}

uint64_t fipspost_post_aes_xts(char a1)
{
  v12 = *MEMORY[0x29EDCA608];
  v11 = 0;
  v10 = 0;
  v9 = 41;
  if ((a1 & 0x10) != 0)
  {
    v1 = &unk_299CFCF28;
  }

  else
  {
    v1 = &unk_299CFCF3A;
  }

  v2 = ccaes_xts_encrypt_mode();
  v7 = 0;
  v8 = 0;
  if (ccxts_one_shot(v2, 16, v1, "O\x9B6!r\x8D\x8AgT\x9Ft\xAA\b-X\xEF\x14{\xB2\xA2\x05\x97M\x1E\xFD8h\x85\xB2G\x97", &v9, 1, "\x18\x14{\xB2\xA2\x05\x97M\x1E\xFD8h\x85\xB2G\x97", &v7))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: encrypt\n");
    return 4294967223;
  }

  if (v7 == 0x15E6D4FF84381AB9 && v8 == 0xFFA95FCBAEAA5A1CLL)
  {
    v5 = ccaes_xts_decrypt_mode();
    v7 = 0;
    v8 = 0;
    if (ccxts_one_shot(v5, 16, v1, "O\x9B6!r\x8D\x8AgT\x9Ft\xAA\b-X\xEF\x14{\xB2\xA2\x05\x97M\x1E\xFD8h\x85\xB2G\x97", &v9, 1, "\xB9\x1A8\x84\xFF\xD4\xE6\x15\x1CZ\xAA\xAE\xCB\x5F\xA9\xFF", &v7))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: decrypt\n");
      return 4294967223;
    }

    if (v7 == 0x4D9705A2B27B1418 && v8 == 0x9747B2856838FD1ELL)
    {
      return 0;
    }

    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: decrypt\n");
  }

  else
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: encrypt\n");
  }

  return 4294967221;
}

uint64_t ccpost_chacha20_poly1305(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x29EDCA608];
  if (*(a1 + 16) == 32 && *(a1 + 32) == 12 && *(a1 + 96) == 16 && *(a1 + 64) < 0x101uLL && *(a1 + 80) < 0x101uLL)
  {
    ccchacha20poly1305_info();
    v5 = ccchacha20poly1305_decrypt_oneshot();
    if (*(a1 + 104))
    {
      if (v5)
      {
LABEL_11:
        v6 = a1;
        v7 = a2;
        v8 = 0;
        return ccpost_report(v6, v7, v8);
      }
    }

    else if (!v5 && !memcmp(__s1, *(a1 + 56), *(a1 + 64)))
    {
      ccchacha20poly1305_info();
      if (!ccchacha20poly1305_encrypt_oneshot() && !memcmp(__s1, *(a1 + 72), *(a1 + 80)) && !memcmp(v9, *(a1 + 88), *(a1 + 96)))
      {
        goto LABEL_11;
      }
    }

    v6 = a1;
    v7 = a2;
    v8 = 1;
    return ccpost_report(v6, v7, v8);
  }

  return ccpost_report(a1, a2, 0);
}

unint64_t ccn_cond_clear(uint64_t a1, char a2, unint64_t *a3)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v8 = *a3;
    v9 = *a3 ^ result;
    *a3 = v9;
    *a3++ = v9 ^ v8 & 0x5555555555555555 ^ v8 & i ^ result;
  }

  return result;
}

uint64_t fipspost_post_mlkem(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v28[196] = *MEMORY[0x29EDCA608];
  v2 = cckem_mlkem1024();
  if (cckem_pubkey_nbytes_info(v2) == 1568)
  {
    if (cckem_privkey_nbytes_info(v2) == 3168)
    {
      v26[0] = d_kat;
      v26[1] = unk_299CFCFE0;
      if ((v1 & 0x10) != 0)
      {
        LOBYTE(v26[0]) = 17;
      }

      v3 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, v28, __s1, v26, z_kat);
      if (v3)
      {
        v4 = v3;
        v5 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_keypair_from_seed: %d\n", v5, "fipspost_post_mlkem_keygen", 59, v4);
        v6 = -75;
      }

      else if (!memcmp(v28, &pubkey_kat, 0x620uLL))
      {
        if (!memcmp(__s1, &privkey_kat, 0xC60uLL))
        {
          v6 = 0;
        }

        else
        {
          mach_absolute_time();
          v6 = -75;
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch privkey: %d\n");
        }
      }

      else
      {
        mach_absolute_time();
        v6 = -75;
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch pubkey: %d\n");
      }
    }

    else
    {
      mach_absolute_time();
      v6 = -73;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid privkey_kat: %d\n");
    }
  }

  else
  {
    v7 = mach_absolute_time();
    v6 = -73;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid pubkey_kat: %d\n", v7, "fipspost_post_mlkem_keygen", 43, -73);
  }

  v8 = cckem_mlkem1024();
  if (cckem_encapsulated_key_nbytes_info(v8) == 1568)
  {
    if (cckem_shared_key_nbytes_info(v8) == 32)
    {
      v9 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, v28, __s1, &d_kat, z_kat);
      if (v9)
      {
        v10 = v9;
        v11 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_keypair_from_seed: %d\n", v11, "fipspost_post_mlkem_encapsulate", 95, v10);
        v12 = -73;
      }

      else
      {
        v22[0] = msg_kat;
        v22[1] = unk_299CFE2A0;
        if ((v1 & 0x10) != 0)
        {
          LOBYTE(v22[0]) = -100;
        }

        v16 = ccmlkem_kem_encapsulate_msg(cckyber1024_params, v28, v26, &v23, v22);
        if (v16)
        {
          v17 = v16;
          v18 = mach_absolute_time();
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_encapsulate_msg: %d\n", v18, "fipspost_post_mlkem_encapsulate", 108, v17);
          v12 = -75;
        }

        else if (!memcmp(v26, &ek_kat, 0x620uLL))
        {
          if (v23 == 0x4AD51D198F5BA835 && *(&v23 + 1) == 0x5AC77DD2EE60437BLL && v24 == 0xDD9B9C68A0134808 && v25 == 0xF79AB0650E8FB905)
          {
            v12 = 0;
          }

          else
          {
            mach_absolute_time();
            v12 = -75;
            printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch sk: %d\n");
          }
        }

        else
        {
          mach_absolute_time();
          v12 = -75;
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch ek: %d\n");
        }
      }
    }

    else
    {
      mach_absolute_time();
      v12 = -73;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid sk_kat: %d\n");
    }
  }

  else
  {
    v13 = mach_absolute_time();
    v12 = -73;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid ek_kat: %d\n", v13, "fipspost_post_mlkem_encapsulate", 86, -73);
  }

  v14 = fipspost_post_mlkem_decapsulate(v1);
  return v12 | v6 | v14 | fipspost_post_mlkem_decapsulate(v1);
}

uint64_t fipspost_post_mlkem_decapsulate(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v3 = v2;
  v4 = v1;
  v27[196] = *MEMORY[0x29EDCA608];
  v5 = cckem_mlkem1024();
  if (cckem_shared_key_nbytes_info(v5) == 32)
  {
    v6 = ccmlkem_kem_keypair_from_seed(cckyber1024_params, v27, v26, &d_kat, z_kat);
    if (v6)
    {
      v7 = v6;
      v8 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_keypair_from_seed: %d\n", v8, "fipspost_post_mlkem_decapsulate", 142, v7);
      return 4294967223;
    }

    else
    {
      memcpy(__dst, &ek_kat, sizeof(__dst));
      if ((v4 & 0x10) != 0 || v3)
      {
        __dst[0] = -33;
      }

      v12 = ccmlkem_kem_decapsulate(cckyber1024_params, v26, __dst, v25);
      if (v12)
      {
        v13 = v12;
        v14 = mach_absolute_time();
        printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmlkem_kem_decapsulate: %d\n", v14, "fipspost_post_mlkem_decapsulate", 155, v13);
        return 4294967221;
      }

      else
      {
        v15 = &sk_kat;
        if (v3)
        {
          v15 = &sk_rej_kat;
        }

        v16 = *v15;
        v17 = v15[1];
        v19 = v15[2];
        v18 = v15[3];
        if (v25[0] == v16 && v25[1] == v17 && v25[2] == v19 && v25[3] == v18)
        {
          return 0;
        }

        else
        {
          v23 = mach_absolute_time();
          v9 = 4294967221;
          printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch sk: %d\n", v23, "fipspost_post_mlkem_decapsulate", 165, -75);
        }
      }
    }
  }

  else
  {
    v10 = mach_absolute_time();
    v9 = 4294967223;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: Invalid sk_kat: %d\n", v10, "fipspost_post_mlkem_decapsulate", 136, -73);
  }

  return v9;
}

uint64_t ccspake_mac_hkdf_hmac_compute(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 8);
  if (*(v7 + 24) != a6)
  {
    return 4294967289;
  }

  v13 = (*v7)();
  cchmac_internal(v13, a2, a3, a4, a5, a7);
  return 0;
}

uint64_t ccdh_check_pub_ws(uint64_t a1, void *a2, uint64_t *a3)
{
  v6 = ccdh_gp_n(a2);
  if (v6 != ccdh_gp_n(*a3))
  {
    return 4294967243;
  }

  v7 = ccdh_gp_prime(a2);
  v8 = ccdh_gp_prime(*a3);
  if (ccn_cmp_internal(v6, v7, v8))
  {
    return 4294967243;
  }

  if ((*ccdh_gp_prime(a2) & 1) == 0)
  {
    return 4294967245;
  }

  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v6);
  v12 = ccdh_gp_prime(a2);
  if (ccn_sub1(v6, v11, v12, 1uLL))
  {
    goto LABEL_7;
  }

  v13 = ccn_cmp_internal(v6, a3 + 2, v11);
  result = 4294967247;
  if ((v13 & 0x80000000) == 0 || !v6)
  {
    goto LABEL_8;
  }

  if (ccn_n(v6, a3 + 2) <= 1 && a3[2] < 2 || ccdh_gp_order_bitlen(a2) && ((v14 = ccdh_gp_order(a2), cczp_mm_power_fast_ws(a1, a2, v11, a3 + 2, v14)) || ccn_n(v6, v11) != 1 || *v11 != 1))
  {
LABEL_7:
    result = 4294967247;
  }

  else
  {
    result = 0;
  }

LABEL_8:
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccmode_cfb_encrypt(void *a1, uint64_t a2, char *a3, _BYTE *a4)
{
  v5 = a1[1];
  if (a2)
  {
    v8 = a2;
    v9 = *a1;
    v10 = (*(*a1 + 8) + 7) >> 3;
    v11 = a1 + 2;
    v12 = &a1[2 * v10 + 2];
    v13 = &a1[v10 + 2];
    do
    {
      if (v5 == *(v9 + 8))
      {
        (*(v9 + 24))(v12, 1, v13, a1 + 2);
        v5 = 0;
      }

      v14 = *a3++;
      v15 = *(v11 + v5);
      *a4++ = v15 ^ v14;
      *(v13 + v5++) = v15 ^ v14;
      --v8;
    }

    while (v8);
  }

  a1[1] = v5;
  return 0;
}

double ccmode_factory_xts_decrypt(void *a1, void *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = ((2 * *a2 + 14) & 0xFFFFFFFFFFFFFFF0) + 16;
  a1[1] = ((v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  a1[2] = v3;
  a1[3] = ccmode_xts_init;
  a1[4] = ccmode_xts_key_sched;
  a1[5] = ccmode_xts_set_tweak;
  a1[6] = ccmode_xts_crypt;
  a1[7] = a2;
  a1[8] = a3;
  *&result = 21;
  a1[9] = 21;
  return result;
}

uint64_t ccrsa_crt_makekey_ws(uint64_t a1, uint64_t *a2)
{
  v4 = ccrsa_ctx_private_zp(a2);
  v5 = ccrsa_ctx_private_zp(a2);
  v6 = &v5[2 * *ccrsa_ctx_private_zp(a2)];
  v7 = cczp_n(a2);
  v8 = cczp_n(v4);
  v9 = cczp_n((v6 + 4));
  if (v8 < v9 || v8 > (v7 >> 1) + 1)
  {
    return 0xFFFFFFFFLL;
  }

  v11 = v9;
  v12 = cczp_prime(v4);
  v13 = cczp_prime((v6 + 4));
  if (ccn_cmpn_internal(v8, v12, v11, v13) < 1)
  {
    return 4294967289;
  }

  v41 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v7 + 2);
  __dst = (*(a1 + 24))(a1, (v7 >> 1) + 1);
  v42 = (*(a1 + 24))(a1, (v7 >> 1) + 1);
  cc_clear(8 * v7, v14);
  v15 = cczp_prime(v4);
  v16 = cczp_prime((v6 + 4));
  v45 = a1;
  __s = v14;
  ccn_mul_ws(a1, v11, v14, v15, v16);
  v43 = v8 - v11;
  if (v8 != v11)
  {
    v17 = &v14[16 * v11];
    v18 = v11;
    v19 = &__s[8 * v11];
    do
    {
      v20 = cczp_prime((v6 + 4));
      v21 = cczp_prime(v4);
      *v17++ = ccn_addmul1(v11, v19++, v20, *(v21 + 8 * v18++));
    }

    while (v8 != v18);
  }

  v22 = v45;
  result = cczp_mm_init_ws(v45, a2, v7, __s);
  if (!result)
  {
    v23 = cczp_prime(v4);
    ccn_set(v8, __dst, v23);
    v24 = cczp_prime((v6 + 4));
    if (v11)
    {
      ccn_set(v11, v42, v24);
    }

    ccn_zero(v43, &v42[v11]);
    *__dst &= ~1uLL;
    *v42 &= ~1uLL;
    cc_clear(8 * v7, __s);
    ccn_lcm_ws(v45, v8, __s, __dst, v42);
    v25 = &a2[2 * *a2 + 3];
    v26 = &a2[3 * *a2 + 3];
    v27 = ccn_n(v7, v25 + 1);
    result = ccn_invmod_ws(v45, v7, v26 + 1, v27, v25 + 2, __s);
    if (!result)
    {
      v28 = ccrsa_ctx_private_zp(a2);
      v29 = &v28[2 * *ccrsa_ctx_private_zp(a2)];
      v30 = &v29[2 * *ccrsa_ctx_private_zp(a2) + 8];
      ccn_divmod_ws(v45, v7, (v26 + 1), 0, 0, v8, v30, __dst);
      v31 = ccrsa_ctx_private_zp(a2);
      v32 = &v31[2 * *ccrsa_ctx_private_zp(a2)];
      v33 = &v32[2 * *ccrsa_ctx_private_zp(a2)];
      v34 = ccrsa_ctx_private_zp(a2);
      ccn_divmod_ws(v45, v7, (v26 + 1), 0, 0, v8, &v33[*v34 + 8], v42);
      v35 = ccrsa_ctx_private_zp(a2);
      v36 = &v35[2 * *ccrsa_ctx_private_zp(a2)];
      v37 = &v36[2 * *ccrsa_ctx_private_zp(a2)];
      v38 = &v37[*ccrsa_ctx_private_zp(a2)];
      v39 = &v38[*ccrsa_ctx_private_zp(a2) + 8];
      v40 = cczp_prime((v6 + 4));
      v22 = v45;
      if (v11)
      {
        ccn_set(v11, v39, v40);
      }

      ccn_zero(v43, &v39[8 * v11]);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      ccrsa_ctx_private_zp(a2);
      result = cczp_inv_ws(v45, v4);
      if (result)
      {
        result = 4294967263;
      }
    }
  }

  *(v22 + 16) = v41;
  return result;
}

uint64_t ccec_compressed_x962_import_pub(uint64_t *a1, uint64_t a2, unsigned __int8 *a3, uint64_t **a4)
{
  LODWORD(result) = ccec_x963_import_pub(a1, a2, a3, a4);
  if (result == -7)
  {
    return 4294967135;
  }

  else
  {
    return result;
  }
}

void *ccaes_siv_encrypt_mode()
{
  v0 = ccaes_cbc_encrypt_mode();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_encrypt(&siv_encrypt, v0, v1);
  return &siv_encrypt;
}

uint64_t ccz_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  memset(v7, 0, sizeof(v7));
  ccz_init(*(a1 + 8), v7);
  ccz_divmod(v7, a1, a2, a3);
  ccz_free(v7);
  return cc_disable_dit_with_sb(&v8);
}

unint64_t *ccdigest_update_internal(unint64_t *result, void *a2, size_t a3, char *__src)
{
  v5 = a3;
  v7 = result;
  v8 = result[2];
  v9 = a2 + result[1] + 8;
  if (v8 <= *&v9[v8])
  {
    *&v9[v8] = 0;
  }

  if (a3)
  {
    v10 = a2 + 1;
    do
    {
      v11 = v7[2];
      v12 = v10 + v7[1];
      v13 = *&v12[v11];
      if (v5 > v11 && v13 == 0)
      {
        if (v11 == 128)
        {
          v22 = v5 >> 7;
          v16 = v5 & 0xFFFFFFFFFFFFFF80;
        }

        else if (v11 == 64)
        {
          v22 = v5 >> 6;
          v16 = v5 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v22 = v5 / v11;
          v16 = v5 / v11 * v11;
        }

        result = (v7[6])(a2 + 1, v22, __src);
        *a2 += 8 * v16;
      }

      else
      {
        v15 = v11 - v13;
        if (v15 >= v5)
        {
          v16 = v5;
        }

        else
        {
          v16 = v15;
        }

        result = memcpy(&v12[v13], __src, v16);
        v17 = v7[2];
        v18 = v10 + v7[1];
        v19 = (*&v18[v17] + v16);
        *&v18[v17] = v19;
        if (v17 == v19)
        {
          result = (v7[6])(a2 + 1, 1);
          v20 = v7[2];
          v21 = v10 + v7[1];
          *a2 += (8 * *&v21[v20]);
          *&v21[v20] = 0;
        }
      }

      __src += v16;
      v5 -= v16;
    }

    while (v5);
  }

  return result;
}

uint64_t ccdigest_update(unint64_t *a1, void *a2, size_t a3, char *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccdigest_update_internal(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccec_curve_for_length_lookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v16 = timingsafe_enable_if_supported();
  v15 = &a9;
  do
  {
    v10 = v15++;
    v11 = *v10;
    if (!*v10)
    {
      break;
    }

    v12 = cczp_bitlen(*v10);
  }

  while (v12 != a1 && ((v12 + 7) & 0xFFFFFFFFFFFFFFF8) != a1);
  cc_disable_dit_with_sb(&v16);
  return v11;
}

uint64_t ccec_compact_export(int a1, char *a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccec_compact_export_pub(a2, a3);
  v7 = v6;
  if (a1 && !v6)
  {
    v8 = *a3;
    v9 = **a3;
    v10 = &a3[3 * v9];
    v11 = (cczp_bitlen(*a3 + 40 * v9 + 32) + 7) >> 3;
    v12 = cczp_bitlen(v8);
    v13 = ccn_write_uint_padded_ct_internal(v9, v10 + 2, v11, &a2[(v12 + 7) >> 3]);
    v7 = v13 & (v13 >> 31);
  }

  cc_disable_dit_with_sb(&v15);
  return v7;
}

uint64_t ccec_raw_import_priv_only(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v11 = timingsafe_enable_if_supported();
  if (a2 == (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3)
  {
    v8 = *a1;
    *a4 = a1;
    memset(a4 + 2, 255, 8 * v8);
    memset(&a4[*a1 + 2], 255, 8 * v8);
    uint_internal = ccn_read_uint_internal(v8, &a4[3 * **a4 + 2], a2, a3);
  }

  else
  {
    uint_internal = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v11);
  return uint_internal;
}

double ccmode_factory_siv_decrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 104;
  *a1 = xmmword_299CEC720;
  *(a1 + 16) = ccmode_siv_init;
  *(a1 + 24) = ccmode_siv_auth;
  *(a1 + 32) = ccmode_siv_auth;
  *(a1 + 40) = ccmode_siv_decrypt;
  *(a1 + 48) = ccmode_siv_reset;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

uint64_t ccdes3_ltc_setup(uint64_t a1, _OWORD *a2, uint64_t a3, uint64_t a4)
{
  if (a3 != 24)
  {
    return 0xFFFFFFFFLL;
  }

  deskey(a4, 0, a2);
  deskey(a4 + 8, 1, a2 + 8);
  deskey(a4 + 16, 0, a2 + 16);
  deskey(a4, 1, a2 + 40);
  deskey(a4 + 8, 0, a2 + 32);
  deskey(a4 + 16, 1, a2 + 24);
  if (cc_cmp_safe_internal(8, a4, a4 + 8) && cc_cmp_safe_internal(8, a4, a4 + 16) && cc_cmp_safe_internal(8, a4 + 8, a4 + 16))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccss_shamir_share_bag_set_ith_share(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = ccss_shamir_consistent_primes(*a1 + 8, *a3);
  if (!result)
  {
    if (**a1 <= v4)
    {
      return 4294967165;
    }

    else
    {
      v7 = *(a3 + 8);

      return ccss_shamir_share_bag_set_ith_share_with_xy(a1, v4, v7, (a3 + 16));
    }
  }

  return result;
}

uint64_t ccss_shamir_share_bag_set_ith_share_with_xy(void *a1, unsigned int a2, int a3, void *a4)
{
  v8 = cczp_n(*a1 + 8);
  v9 = *a1;
  if (**a1 <= a2)
  {
    return 4294967165;
  }

  v10 = &a1[a2 * v8 + a2];
  *(v10 + 4) = a3;
  v11 = cczp_n((v9 + 2));
  ccn_set(v11, v10 + 3, a4);
  return 0;
}

uint64_t ccss_shamir_share_bag_copy_ith_share_x(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) - 1 < a2)
  {
    cc_abort();
  }

  return *(a1 + 8 * (a2 * cczp_n(*a1 + 8) + a2) + 16);
}

uint64_t ccss_shamir_share_bag_ith_share_y(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 8) - 1 < a2)
  {
    cc_abort();
  }

  return a1 + 8 * (a2 * cczp_n(*a1 + 8) + a2) + 24;
}

uint64_t ccss_shamir_share_sizeof_y(uint64_t *a1)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v8 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v8 = 1;
  }

  v12 = v1;
  v13 = v2;
  v11 = v8;
  v9 = 8 * cczp_n(*a1);
  cc_disable_dit(&v11);
  return v9;
}

uint64_t ccss_shamir_share_export(uint64_t a1, _DWORD *a2, char *a3, unint64_t a4)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v13 = 1;
  }

  v18 = v13;
  v14 = cczp_n(*a1);
  if (ccn_write_uint_size_public_value(v14, (a1 + 16)) <= a4)
  {
    v16 = cczp_n(*a1);
    ccn_write_uint_padded_ct_internal(v16, (a1 + 16), a4, a3);
    v15 = 0;
    *a2 = *(a1 + 8);
  }

  else
  {
    v15 = 4294967289;
  }

  cc_disable_dit(&v18);
  return v15;
}

uint64_t ccrsa_verify_pkcs1v15_allowshortsigs(uint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unsigned __int8 *a6, _BYTE *a7)
{
  v18[2] = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  *a7 = 0;
  v18[0] = 0;
  v18[1] = 0;
  v14 = ccrsa_verify_pkcs1v15_internal(a1, a2, a3, a4, a5, a6, 2110636126, v18);
  if (v14)
  {
    if (v14 == -146)
    {
      v15 = 0;
    }

    else
    {
      v15 = v14;
    }
  }

  else
  {
    v15 = 0;
    *a7 = 1;
  }

  cc_disable_dit_with_sb(&v17);
  return v15;
}

void *ccmode_factory_cfb_encrypt(void *result, void *a2)
{
  *result = ((2 * a2[1] + 14) & 0xFFFFFFFFFFFFFFF0) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  result[1] = 1;
  result[2] = ccmode_cfb_init;
  result[3] = ccmode_cfb_encrypt;
  result[4] = a2;
  return result;
}

uint64_t cckem_generate_key(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(*a1 + 48))(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cckem_export_privkey(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 104))(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t cckem_import_privkey(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 112))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ge_frombytes_vartime(int *a1, uint64_t a2)
{
  v15 = *MEMORY[0x29EDCA608];
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v8 = 0;
  memset(v7, 0, sizeof(v7));
  v6 = 0;
  memset(v5, 0, sizeof(v5));
  fe_frombytes(a1 + 10, a2);
  fe_1((a1 + 20));
  fe_sq(v13, a1 + 10);
  fe_mul(v11, v13, d);
  fe_sub(v13, v13, (a1 + 20));
  fe_add(v11, v11, (a1 + 20));
  fe_sq(v9, v11);
  fe_mul(v9, v9, v11);
  fe_sq(a1, v9);
  fe_mul(a1, a1, v11);
  fe_mul(a1, a1, v13);
  fe_pow22523(a1, a1);
  fe_mul(a1, a1, v9);
  fe_mul(a1, a1, v13);
  fe_sq(v7, a1);
  fe_mul(v7, v7, v11);
  fe_sub(v5, v7, v13);
  if (fe_isnonzero(v5))
  {
    fe_add(v5, v7, v13);
    if (fe_isnonzero(v5))
    {
      return 0xFFFFFFFFLL;
    }

    fe_mul(a1, a1, sqrtm1);
  }

  if (fe_isnegative(a1) != *(a2 + 31) >> 7)
  {
    fe_neg(a1, a1);
  }

  fe_mul(a1 + 30, a1, a1 + 10);
  return 0;
}

uint64_t ge_from_uniform(uint64_t a1, _OWORD *a2)
{
  v46 = *MEMORY[0x29EDCA608];
  v33 = 0;
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  memset(v28, 0, sizeof(v28));
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v3 = a2[1];
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a1 + 31);
  *(a1 + 31) = v4 & 0x7F;
  fe_frombytes(v28, a1);
  fe_sq2(v28, v28);
  ++LODWORD(v28[0]);
  fe_invert(v28, v28);
  fe_mul(v26, curve25519_A, v28);
  fe_neg(v26, v26);
  fe_sq(v24, v26);
  fe_mul(v22, v26, v24);
  fe_add(v32, v22, v26);
  fe_mul(v24, v24, curve25519_A);
  fe_add(v32, v24, v32);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  fe_sq(&v43, v32);
  fe_mul(&v40, &v43, v32);
  fe_sq(&v43, &v40);
  fe_sq(&v37, &v43);
  fe_sq(&v37, &v37);
  fe_mul(&v37, &v37, &v43);
  fe_mul(&v40, &v37, v32);
  fe_sq(&v37, &v40);
  v5 = 4;
  do
  {
    fe_sq(&v37, &v37);
    --v5;
  }

  while (v5);
  fe_mul(&v40, &v37, &v40);
  fe_sq(&v37, &v40);
  v6 = 9;
  do
  {
    fe_sq(&v37, &v37);
    --v6;
  }

  while (v6);
  fe_mul(&v37, &v37, &v40);
  fe_sq(&v34, &v37);
  v7 = 19;
  do
  {
    fe_sq(&v34, &v34);
    --v7;
  }

  while (v7);
  fe_mul(&v37, &v34, &v37);
  fe_sq(&v37, &v37);
  v8 = 9;
  do
  {
    fe_sq(&v37, &v37);
    --v8;
  }

  while (v8);
  fe_mul(&v40, &v37, &v40);
  fe_sq(&v37, &v40);
  v9 = 49;
  do
  {
    fe_sq(&v37, &v37);
    --v9;
  }

  while (v9);
  fe_mul(&v37, &v37, &v40);
  fe_sq(&v34, &v37);
  v10 = 99;
  do
  {
    fe_sq(&v34, &v34);
    --v10;
  }

  while (v10);
  fe_mul(&v37, &v34, &v37);
  fe_sq(&v37, &v37);
  v11 = 49;
  do
  {
    fe_sq(&v37, &v37);
    --v11;
  }

  while (v11);
  fe_mul(&v40, &v37, &v40);
  fe_sq(&v40, &v40);
  v12 = 3;
  do
  {
    fe_sq(&v40, &v40);
    --v12;
  }

  while (v12);
  v13 = v4 & 0x80;
  fe_mul(v32, &v40, &v43);
  fe_tobytes(a1, v32);
  v14 = *(a1 + 1);
  fe_neg(v30, v26);
  fe_cmov(v26, v30, v14 & 1);
  fe_0(v24);
  fe_cmov(v24, curve25519_A, v14 & 1);
  fe_sub(v26, v26, v24);
  v45 = 0;
  v43 = 0u;
  v44 = 0u;
  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  fe_1(&v43);
  fe_add(&v40, v26, &v43);
  fe_sub(&v34, v26, &v43);
  fe_invert(&v37, &v40);
  fe_mul(v20, &v34, &v37);
  fe_tobytes(a1, v20);
  *(a1 + 31) |= v13;
  ge_frombytes_vartime(v19, a1);
  ge_p3_dbl(v18, v19);
  ge_p1p1_to_p2(v16, v18);
  ge_p2_dbl(v18, v16);
  ge_p1p1_to_p2(v16, v18);
  ge_p2_dbl(v18, v16);
  ge_p1p1_to_p3(v19, v18);
  return ge_p3_tobytes(a1, v19);
}

_DWORD *ge_scalarmult(_DWORD *a1, int8x16_t *a2, uint64_t a3)
{
  v43 = *MEMORY[0x29EDCA608];
  memset(v32, 0, sizeof(v32));
  v31 = 0;
  memset(v30, 0, sizeof(v30));
  memset(v29, 0, sizeof(v29));
  memset(v28, 0, sizeof(v28));
  memset(v27, 0, sizeof(v27));
  memset(v26, 0, sizeof(v26));
  memset(v25, 0, sizeof(v25));
  memset(v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  memset(v22, 0, sizeof(v22));
  memset(v21, 0, sizeof(v21));
  memset(v20, 0, sizeof(v20));
  memset(v19, 0, sizeof(v19));
  memset(v18, 0, sizeof(v18));
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  memset(v15, 0, sizeof(v15));
  ge_p3_to_cached(v33, a3);
  ge_p3_dbl(v29, a3);
  ge_p1p1_to_p3(v22, v29);
  ge_p3_to_cached(v34, v22);
  ge_add(v28, a3, v34);
  ge_p1p1_to_p3(v21, v28);
  ge_p3_to_cached(&v35, v21);
  ge_p3_dbl(v27, v22);
  ge_p1p1_to_p3(v20, v27);
  ge_p3_to_cached(v36, v20);
  ge_add(v26, a3, v36);
  ge_p1p1_to_p3(v19, v26);
  ge_p3_to_cached(&v37, v19);
  ge_p3_dbl(v25, v21);
  ge_p1p1_to_p3(v18, v25);
  ge_p3_to_cached(v38, v18);
  ge_add(v24, a3, v38);
  ge_p1p1_to_p3(v17, v24);
  ge_p3_to_cached(&v39, v17);
  ge_p3_dbl(v23, v20);
  ge_p1p1_to_p3(v16, v23);
  ge_p3_to_cached(&v40, v16);
  v6 = 0;
  v7.i64[0] = 0xF0F0F0F0F0F0F0FLL;
  v7.i64[1] = 0xF0F0F0F0F0F0F0FLL;
  do
  {
    v8 = *a2++;
    v44.val[0] = vandq_s8(v8, v7);
    v44.val[1] = vshrq_n_u8(v8, 4uLL);
    v9 = &v41[v6];
    vst2q_s8(v9, v44);
    v6 += 32;
  }

  while (v6 != 64);
  v10 = 0;
  v11 = 0;
  do
  {
    v12 = v41[v10] + v11;
    v11 = (v12 + 8) << 24 >> 28;
    v41[v10++] = v12 - ((v12 + 8) & 0xF0);
  }

  while (v10 != 63);
  v42 += v11;
  ge_p3_0(a1);
  v13 = 63;
  do
  {
    ge_select_cached(v15, v33, v41[v13]);
    ge_add(v32, a1, v15);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p2(v30, v32);
    ge_p2_dbl(v32, v30);
    ge_p1p1_to_p3(a1, v32);
    --v13;
  }

  while (v13);
  ge_select_cached(v15, v33, v41[0]);
  ge_add(v32, a1, v15);
  return ge_p1p1_to_p3(a1, v32);
}

uint64_t ge_select_cached(uint64_t *a1, uint64_t *a2, unsigned int a3)
{
  memset(v9, 0, sizeof(v9));
  memset(v8, 0, sizeof(v8));
  v5 = (a3 >> 7) & 1;
  v6 = (a3 - 2 * (a3 & (a3 >> 31)));
  fe_1(a1);
  fe_1((a1 + 5));
  fe_1((a1 + 10));
  fe_0((a1 + 15));
  ge_cmov_cached(a1, a2, v6 == 1);
  ge_cmov_cached(a1, a2 + 20, v6 == 2);
  ge_cmov_cached(a1, a2 + 40, v6 == 3);
  ge_cmov_cached(a1, a2 + 60, v6 == 4);
  ge_cmov_cached(a1, a2 + 80, v6 == 5);
  ge_cmov_cached(a1, a2 + 100, v6 == 6);
  ge_cmov_cached(a1, a2 + 120, v6 == 7);
  ge_cmov_cached(a1, a2 + 140, v6 == 8);
  fe_copy(v8, (a1 + 5));
  fe_copy(&v8[2] + 8, a1);
  fe_copy(v9, (a1 + 10));
  fe_neg(&v9[2] + 8, (a1 + 15));
  return ge_cmov_cached(a1, v8, v5);
}

_DWORD *ge_scalarmult_cofactor(_DWORD *a1)
{
  memset(v5, 0, sizeof(v5));
  v4 = 0;
  memset(v3, 0, sizeof(v3));
  ge_p3_dbl(v5, a1);
  ge_p1p1_to_p2(v3, v5);
  ge_p2_dbl(v5, v3);
  ge_p1p1_to_p2(v3, v5);
  ge_p2_dbl(v5, v3);
  return ge_p1p1_to_p3(a1, v5);
}

uint64_t ge_has_small_order(uint64_t a1)
{
  v1 = 0;
  *&v14[3] = 0;
  *v14 = 0;
  v2 = &ge_has_small_order_small_order_blocklist;
  do
  {
    v3 = 0;
    v4 = *(a1 + v1);
    v5 = v2;
    do
    {
      v6 = *v5;
      v5 += 32;
      v14[v3++] |= v6 ^ v4;
    }

    while (v3 != 7);
    ++v1;
    ++v2;
  }

  while (v1 != 31);
  v7 = 0;
  v8 = *(a1 + 31) & 0x7F;
  v9 = &byte_299CFE92F;
  do
  {
    v10 = *v9;
    v9 += 32;
    v14[v7++] |= v8 ^ v10;
  }

  while (v7 != 7);
  v11 = 0;
  v12 = 0;
  do
  {
    v12 |= v14[v11++] - 1;
  }

  while (v11 != 7);
  return (v12 >> 8) & 1;
}

uint64_t ge_cmov_cached(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a3;
  fe_cmov(a1, a2, a3);
  fe_cmov(a1 + 5, a2 + 5, v3);
  fe_cmov(a1 + 10, a2 + 10, v3);

  return fe_cmov(a1 + 15, a2 + 15, v3);
}

uint64_t fipspost_post_aes_cbc(char a1)
{
  v1 = "\x012]\xE3\x14\xE9)\xED\x08\x97\x87Т\x05\xD1\xEB3";
  v31 = *MEMORY[0x29EDCA608];
  v19 = 16;
  v2 = 1;
  v20 = 1;
  v21 = "4I\x1B&m\x8F\xB5L\\\xE1\xA9\xFB\xF1\x7B\x09\x8C";
  v22 = "\x9B\xC2\x0B)Q\xFFr\xD3\xF2\x80\xFF;\xD2\xDC=\xCC\x06\xFE\x99qc\xCB\xCBU\x85>(Wt̨\x9D";
  if ((a1 & 0x10) == 0)
  {
    v1 = "2]\xE3\x14\xE9)\xED\x08\x97\x87Т\x05\xD1\xEB3";
  }

  v23 = "\x06\xFE\x99qc\xCB\xCBU\x85>(Wt̨\x9D";
  v24 = v1;
  v3 = "\x9Ef\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2PSPOST_USER [%llu] %s:%d: FAILED: test %d\n";
  if ((a1 & 0x10) != 0)
  {
    v3 = "\x01\x9Ef\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2PSPOST_USER [%llu] %s:%d: FAILED: test %d\n";
  }

  v25 = 16;
  v26 = 0;
  v27 = "ƎN\xB2\xCA\x2Aů꣗\x11\x94";
  v28 = "\x11ݝ\xA1\xBD:\xCF\x68š\xE1\x96\x4C\x18\x9B";
  v4 = &v19;
  v29 = "\xAA6W\x9B\fr\xC5\x28\x16{p\x12\xD7\xFA\xF0\xDE\x9Ef\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2\x1D\xB3\x809 \x9Ar\xC7\xD2\x96@f\x88\xF2PSPOST_USER [%llu] %s:%d: FAILED: test %d\n";
  v30 = v3;
  v5 = ccaes_cbc_encrypt_mode();
  v6 = ccaes_cbc_decrypt_mode();
  v7 = 0;
  v8 = 0;
  while (1)
  {
    v9 = v2;
    v10 = (*(v4 + 2) ? v5 : v6);
    if (cccbc_one_shot(v10, *v4, v4[2], v4[3], 1, v4[4], v18))
    {
      break;
    }

    v11 = v4[5];
    v13 = *v11;
    v12 = v11[1];
    if (v13 != v18[0] || v12 != v18[1])
    {
      v15 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: AES-CBC KAT Failed %d\n", v15, "fipspost_post_aes_cbc", 96, v7);
      v8 = v8 | 0xFFFFFFB5;
    }

    v2 = 0;
    v7 = 2;
    v4 = &v25;
    if ((v9 & 1) == 0)
    {
      return v8;
    }
  }

  v16 = mach_absolute_time();
  printf("FIPSPOST_USER [%llu] %s:%d: FAILED: test %d\n", v16, "fipspost_post_aes_cbc", 87, v7);
  return 4294967223;
}

uint64_t cczp_mm_redc_ws(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = cczp_n(a2);
  v9 = v8;
  if (v8)
  {
    v10 = a2[*a2 + 3];
    v11 = a4;
    v12 = v8;
    do
    {
      v13 = cczp_prime(a2);
      *v11 = ccn_addmul1(v9, v11, v13, *v11 * v10);
      ++v11;
      --v12;
    }

    while (v12);
  }

  v14 = ccn_add_ws(a1, v9, &a4[v9], &a4[v9], a4);
  v15 = cczp_prime(a2);
  v16 = ccn_sub_ws(a1, v9, a4, &a4[v9], v15) ^ v14;

  return ccn_mux(v9, v16, a3, &a4[v9], a4);
}

uint64_t fipspost_post_aes_ecb(char a1)
{
  v13 = *MEMORY[0x29EDCA608];
  v2 = ccaes_ecb_encrypt_mode();
  if ((a1 & 0x10) != 0)
  {
    v3 = &invalid_key_0;
  }

  else
  {
    v3 = &valid_key_0;
  }

  if (ccecb_one_shot(v2, 16, v3, 1, &plaintext_data_0, v12))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_encrypt one_shot\n", v4, "fipspost_post_aes_ecb_encrypt", 36);
    v5 = -73;
  }

  else if (cc_cmp_safe(16, v12, &ciphertext_data_0))
  {
    v6 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_encrypt cmp\n", v6, "fipspost_post_aes_ecb_encrypt", 41);
    v5 = -75;
  }

  else
  {
    v5 = 0;
  }

  v7 = ccaes_ecb_decrypt_mode();
  if (ccecb_one_shot(v7, 16, v3, 1, &ciphertext_data_0, v12))
  {
    v8 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_decrypt one_shot\n", v8, "fipspost_post_aes_ecb_decrypt", 59);
    v9 = -73;
  }

  else if (cc_cmp_safe(16, v12, &plaintext_data_0))
  {
    v10 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: aes_ecb_decrypt cmp\n", v10, "fipspost_post_aes_ecb_decrypt", 64);
    v9 = -75;
  }

  else
  {
    v9 = 0;
  }

  return v9 | v5;
}

uint64_t cccast_ecb_encrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    do
    {
      --v6;
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v12 = bswap32(v8);
      v13 = bswap32(v9);
      CC_CAST_encrypt(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

void *ccaes_siv_hmac_sha256_encrypt_mode()
{
  v0 = ccsha256_di();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_hmac_encrypt(&siv_hmac_encrypt, v0, v1);
  return &siv_hmac_encrypt;
}

unint64_t CCHE_CIPHERTEXT_MOD_SWITCH_DOWN_WORKSPACE_N(uint64_t a1, uint64_t a2)
{
  result = CCPOLYZP_PO2CYC_BASE_CONVERT_MOD_T_DIVIDE_AND_ROUND_Q_LAST_WORKSPACE_N(a1, a2);
  if (result <= 8)
  {
    return 8;
  }

  return result;
}

uint64_t ccecies_decrypt_gcm_from_shared_secret_composite(uint64_t a1, uint64_t a2, size_t a3, char *a4, rsize_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13)
{
  v23 = *MEMORY[0x29EDCA608];
  v18 = ccecies_pub_key_size_cp(a1, a2);
  v19 = ccecies_derive_gcm_key_iv(a2, a3, a4, a9, a10, v18, a6, __s);
  if (v19)
  {
    v20 = v19;
    goto LABEL_3;
  }

  v20 = ccecies_decrypt_gcm_decrypt(a2, __s, a11, a12);
  if (v20)
  {
LABEL_3:
    cc_clear(a5, a13);
  }

  cc_clear(0x30uLL, __s);
  return v20;
}

uint64_t ccecies_decrypt_gcm_from_shared_secret(uint64_t a1, uint64_t a2, size_t a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, rsize_t *a11, void *a12)
{
  v25 = timingsafe_enable_if_supported();
  v18 = ccecies_pub_key_size_cp(a1, a2);
  v19 = ccecies_decrypt_gcm_plaintext_size_cp(a1, a2, a5);
  if ((*(a2 + 32) & 0x21) == 0)
  {
    v21 = 4294967291;
    goto LABEL_9;
  }

  v20 = v19;
  if (!v19 || v19 > *a11)
  {
    v21 = 4294967289;
    goto LABEL_9;
  }

  v21 = ccecies_decrypt_gcm_from_shared_secret_composite(a1, a2, a3, a4, v19, a6, a6 + v18, a6 + a5 - *(a2 + 28), a7, a8, a9, a10, a12);
  if (v21)
  {
LABEL_9:
    cc_clear(*a11, a12);
    goto LABEL_6;
  }

  *a11 = v20;
LABEL_6:
  cc_disable_dit_with_sb(&v25);
  return v21;
}

uint64_t ccec_der_export_priv_size(uint64_t *a1, uint64_t a2, int a3)
{
  v7 = timingsafe_enable_if_supported();
  cczp_bitlen(*a1 + 40 * **a1 + 32);
  if (a3)
  {
    cczp_bitlen(*a1);
  }

  v5 = ccder_encode_eckey_size();
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t ccec_der_export_priv(uint64_t **a1, const void *a2, int a3, uint64_t a4, uint64_t a5)
{
  v25 = timingsafe_enable_if_supported();
  v10 = *a1;
  v11 = cc_malloc_clear(24 * **a1 + 8);
  v12 = 3 * *v10 + 1;
  v21[0] = v11;
  v21[1] = v12;
  v22 = 0;
  v23 = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v11)
  {
    v13 = **a1;
    v14 = (cczp_bitlen(&(*a1)[5 * v13 + 4]) + 7) >> 3;
    v15 = cc_ws_alloc(v21, v13);
    if ((ccn_write_uint_padded_ct_internal(v13, &a1[3 * **a1 + 2], v14, v15) & 0x80000000) != 0)
    {
      v17 = 4294967289;
    }

    else
    {
      if (a3)
      {
        v16 = ((cczp_bitlen(*a1) + 7) >> 2) | 1;
      }

      else
      {
        v16 = 0;
      }

      v18 = v23(v21, (2 * v13) | 1);
      if (a3)
      {
        v19 = ccec_export_pub(a1, v18);
        if (v19)
        {
          v17 = v19;
          goto LABEL_13;
        }
      }

      if (ccder_encode_eckey_internal(v14, v15, a2, v16, v18, a5, a5 + a4) == a5)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0xFFFFFFFFLL;
      }
    }

    v22 = 0;
LABEL_13:
    v24(v21);
    goto LABEL_14;
  }

  v17 = 4294967283;
LABEL_14:
  cc_disable_dit_with_sb(&v25);
  return v17;
}

uint64_t fipspost_post_aes_gcm(char a1)
{
  v10 = *MEMORY[0x29EDCA608];
  if ((a1 & 0x10) != 0)
  {
    v1 = "\x01\xF2\xA1\x24\x6B\xFF-\x89:\xEF\xCD\xE5\x90z\x12\a\x9B";
  }

  else
  {
    v1 = "\xF2\xA1\x24\x6B\xFF-\x89:\xEF\xCD\xE5\x90z\x12\a\x9B";
  }

  if ((a1 & 0x10) != 0)
  {
    v2 = "\x01&\x86\xF5\xA1\x1F\x0CKS\x81\n[2\xB0\xA8\xFF\xBC";
  }

  else
  {
    v2 = "&\x86\xF5\xA1\x1F\x0CKS\x81\n[2\xB0\xA8\xFF\xBC";
  }

  v8 = *v1;
  v3 = ccaes_gcm_decrypt_mode();
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot decrypt\n");
    return 4294967223;
  }

  if (v8 == *v1 && *(&v8 + 1) == *(v1 + 1))
  {
    v8 = 0uLL;
    v6 = ccaes_gcm_encrypt_mode();
    if (ccgcm_one_shot(v6, 16, "pȿ\xB6\x02v\xE2\x18\xA0\uD8AA\xD1\xFD\xC1\x9C", 12, &unk_299CFEA5C, 0, 0, 0, 0, v9, 16, &v8))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot encrypt\n");
      return 4294967223;
    }

    if (v8 == *v2 && *(&v8 + 1) == *(v2 + 1))
    {
      return 0;
    }

    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot encrypt\n");
  }

  else
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccgcm_one_shot decrypt\n");
  }

  return 4294967221;
}

uint64_t ccrsa_sign_pss(unint64_t *a1, uint64_t *a2, uint64_t a3, size_t a4, uint64_t (**a5)(void, unint64_t, char *), size_t a6, char *a7, unint64_t *a8, char *a9)
{
  v20 = timingsafe_enable_if_supported();
  v17 = ccrng(0);
  if (v17)
  {
    v18 = ccrsa_sign_pss_blinded(v17, a1, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v20);
  return v18;
}

uint64_t ccrsa_sign_pss_msg(unint64_t *a1, uint64_t *a2, uint64_t a3, size_t a4, uint64_t (**a5)(void, unint64_t, char *), size_t a6, char *a7, unint64_t *a8, char *a9)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
  ccdigest_internal(a2, a6, a7, v21);
  v17 = ccrng(0);
  if (v17)
  {
    v18 = ccrsa_sign_pss_blinded(v17, a1, a2, a3, a4, a5, *a2, v21, a8, a9);
  }

  else
  {
    v18 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v20);
  return v18;
}

uint64_t ccansikdf_x963(unint64_t *a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v16 = timingsafe_enable_if_supported();
  v17[0] = a5;
  v17[1] = a4;
  v14 = ccansikdf_x963_iovec(a1, a2, a3, 1, v17, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccansikdf_x963_iovec(unint64_t *a1, size_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, char *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  v7 = (a6 + *a1 - 1) / *a1;
  if (v7 > 0xFFFFFFFE)
  {
    return 4294967289;
  }

  v16 = MEMORY[0x2A1C7C4A8](a1);
  v18 = &__src[-v17 - 8];
  ccdigest_init_internal(v16, &__src[-v17 - 8]);
  updated = ccdigest_update_internal(a1, v18, a2, a3);
  MEMORY[0x2A1C7C4A8](updated);
  v21 = &__src[-v20 - 8];
  if (v7 >= 2)
  {
    for (i = 1; i < v7; ++i)
    {
      ccansikdf_x963_round(a1, v21, v18, i, a4, a5, a7);
      a7 += *a1;
    }
  }

  ccansikdf_x963_round(a1, v21, v18, v7, a4, a5, __src);
  memcpy(a7, __src, a6 - *a1 * (v7 - 1));
  cc_clear(a1[1] + a1[2] + 12, v21);
  cc_clear(a1[1] + a1[2] + 12, v18);
  return 0;
}

uint64_t ccansikdf_x963_round(uint64_t a1, void *__dst, void *__src, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  memcpy(__dst, __src, *(a1 + 8) + *(a1 + 16) + 12);
  __srca = bswap32(a4);
  ccdigest_update_internal(a1, __dst, 4uLL, &__srca);
  if (a5)
  {
    v13 = (a6 + 8);
    do
    {
      ccdigest_update_internal(a1, __dst, *v13, *(v13 - 1));
      v13 += 2;
      --a5;
    }

    while (a5);
  }

  return (*(a1 + 56))(a1, __dst, a7);
}

_BYTE *cc_disable_dit(_BYTE *result)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0 && *result == 1)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

unint64_t ccder_encode_rsa_pub_size(uint64_t *a1)
{
  v1 = a1 + 3;
  v2 = *a1;
  v3 = ccder_sizeof_integer(*a1, a1 + 3);
  v4 = ccder_sizeof_integer(v2, &v1[2 * v2 + 1]) + v3;

  return ccder_sizeof(0x2000000000000010, v4);
}

unsigned __int8 *ccrsa_import_pub_n(uint64_t a1, unsigned __int8 *a2)
{
  result = ccder_decode_rsa_pub_x509_n(a2, &a2[a1]);
  if (!result)
  {

    return ccder_decode_rsa_pub_n(a2, &a2[a1]);
  }

  return result;
}

unint64_t ccrsa_export_priv_size(uint64_t *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccder_encode_rsa_priv_size(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

BOOL ccrsa_export_priv(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_encode_rsa_priv_internal(a1, a3, a3 + a2) != a3;
  cc_disable_dit_with_sb(&v8);
  return v6;
}

unsigned __int8 *ccrsa_import_priv_n(uint64_t a1, unsigned __int8 *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = ccder_decode_rsa_priv_n(a2, &a2[a1]);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

BOOL ccrsa_import_priv(unint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccder_decode_rsa_priv_internal(a1, a3, &a3[a2]) == 0;
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccrsa_oaep_encode(size_t *a1, uint64_t (**a2)(void, uint64_t, char *), uint64_t a3, void *a4, size_t a5, const void *a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = ccrsa_oaep_encode_parameter_internal(a1, a2, a3, a4, a5, a6, 0, 0);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccrsa_oaep_decode(size_t *a1, size_t *a2, void *a3, uint64_t a4, unint64_t *a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccrsa_oaep_decode_parameter(a1, a2, a3, a4, a5, 0, 0);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccrsa_block_start(uint64_t a1, void *__s, int a3)
{
  v4 = (a1 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v4 - a1;
  if (a3)
  {
    cc_clear(v4 - a1, __s);
  }

  return __s + v5;
}

unsigned int *sha1_compress_0(unsigned int *result, uint64_t a2, const char *a3)
{
  v99[8] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    do
    {
      v100 = vld4q_s8(a3);
      v8 = vmovl_u8(*v100.val[0].i8);
      v9 = vmovl_high_u8(v100.val[0]);
      _Q16 = vmovl_u8(*v100.val[1].i8);
      _Q17 = vmovl_high_u8(v100.val[1]);
      __asm
      {
        SHLL2           V18.4S, V17.8H, #0x10
        SHLL2           V19.4S, V16.8H, #0x10
      }

      v18 = vmovl_high_u8(v100.val[2]);
      v19 = vmovl_u8(*v100.val[2].i8);
      v20 = vorrq_s8(vorrq_s8(vshll_n_s16(*_Q16.i8, 0x10uLL), vshll_n_u16(*v19.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v8.i8), 0x18uLL));
      v21 = vmovl_high_u8(v100.val[3]);
      v100.val[0] = vmovl_u8(*v100.val[3].i8);
      v96[0] = vorrq_s8(vorrq_s8(vorrq_s8(vshll_n_s16(*_Q17.i8, 0x10uLL), vshll_n_u16(*v18.i8, 8uLL)), vshlq_n_s32(vmovl_u16(*v9.i8), 0x18uLL)), vmovl_u16(*v21.i8));
      v96[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q18, vshll_high_n_u16(v18, 8uLL)), vshlq_n_s32(vmovl_high_u16(v9), 0x18uLL)), vmovl_high_u16(v21));
      v95[0] = vorrq_s8(v20, vmovl_u16(*v100.val[0].i8));
      v95[1] = vorrq_s8(vorrq_s8(vorrq_s8(_Q19, vshll_high_n_u16(v19, 8uLL)), vshlq_n_s32(vmovl_high_u16(v8), 0x18uLL)), vmovl_high_u16(v100.val[0]));
      v22 = v96;
      v23 = 64;
      do
      {
        HIDWORD(v24) = *v22 ^ v22[5] ^ *(v22 - 6) ^ *(v22 - 8);
        LODWORD(v24) = HIDWORD(v24);
        v22[8] = v24 >> 31;
        ++v22;
        --v23;
      }

      while (v23);
      v25 = -5;
      v26 = v95 + 2;
      v27 = v7;
      v28 = v6;
      v29 = v5;
      v30 = v4;
      v31 = v3;
      do
      {
        HIDWORD(v32) = v31;
        LODWORD(v32) = v31;
        v33 = (v32 >> 27) + v27 + 1518500249 + (v29 & v30 | v28 & ~v30) + *(v26 - 2);
        HIDWORD(v32) = v30;
        LODWORD(v32) = v30;
        v34 = v32 >> 2;
        v35 = __PAIR64__(v33, __ROR4__(v30, 2));
        v36 = v31 & v35 | v29 & ~v31;
        LODWORD(v35) = v33;
        v37 = v28 + 1518500249 + v36 + *(v26 - 1) + (v35 >> 27);
        HIDWORD(v35) = v31;
        LODWORD(v35) = v31;
        v38 = v35 >> 2;
        v39 = __PAIR64__(v37, __ROR4__(v31, 2));
        v40 = v33 & v39 | v34 & ~v33;
        LODWORD(v39) = v37;
        v41 = v29 + 1518500249 + *v26 + v40 + (v39 >> 27);
        HIDWORD(v39) = v33;
        LODWORD(v39) = v33;
        v27 = v39 >> 2;
        v42 = __PAIR64__(v41, __ROR4__(v33, 2));
        v43 = v37 & v42 | v38 & ~v37;
        LODWORD(v42) = v41;
        v30 = v34 + 1518500249 + v26[1] + v43 + (v42 >> 27);
        HIDWORD(v42) = v37;
        LODWORD(v42) = v37;
        v28 = v42 >> 2;
        HIDWORD(v42) = v30;
        LODWORD(v42) = v30;
        v44 = v42 >> 27;
        v45 = __PAIR64__(v41, __ROR4__(v37, 2));
        v31 = v38 + 1518500249 + v26[2] + (v41 & v45 | v27 & ~v41) + v44;
        LODWORD(v45) = v41;
        v29 = v45 >> 2;
        v25 += 5;
        v26 += 5;
      }

      while (v25 < 0xF);
      --a2;
      v46 = &v97;
      for (i = 15; i < 0x23; i += 5)
      {
        HIDWORD(v48) = v31;
        LODWORD(v48) = v31;
        v49 = (v48 >> 27) + 1859775393 + (v29 ^ v30 ^ v28) + v27 + *(v46 - 4);
        HIDWORD(v48) = v30;
        LODWORD(v48) = v30;
        v50 = v48 >> 2;
        HIDWORD(v48) = v49;
        LODWORD(v48) = v49;
        v51 = v48 >> 27;
        v52 = __PAIR64__(v31, __ROR4__(v30, 2));
        v53 = v28 + 1859775393 + (v31 ^ v52 ^ v29) + *(v46 - 3) + v51;
        LODWORD(v52) = v31;
        v54 = v52 >> 2;
        HIDWORD(v52) = v53;
        LODWORD(v52) = v53;
        v55 = v52 >> 27;
        v56 = __PAIR64__(v49, __ROR4__(v31, 2));
        v57 = v29 + 1859775393 + *(v46 - 2) + (v50 ^ v56 ^ v49) + v55;
        LODWORD(v56) = v49;
        v27 = v56 >> 2;
        HIDWORD(v56) = v57;
        LODWORD(v56) = v57;
        v58 = v56 >> 27;
        v59 = __PAIR64__(v53, __ROR4__(v31, 2));
        v30 = v50 + 1859775393 + *(v46 - 1) + (v27 ^ v59 ^ v53) + v58;
        LODWORD(v59) = v53;
        v28 = v59 >> 2;
        HIDWORD(v59) = v30;
        LODWORD(v59) = v30;
        v60 = v59 >> 27;
        v61 = __PAIR64__(v57, __ROR4__(v49, 2));
        v62 = *v46;
        v46 += 5;
        v31 = v54 + 1859775393 + v62 + (v28 ^ v61 ^ v57) + v60;
        LODWORD(v61) = v57;
        v29 = v61 >> 2;
      }

      v63 = &v98;
      v64 = 35;
      do
      {
        HIDWORD(v66) = v31;
        LODWORD(v66) = v31;
        v65 = v66 >> 27;
        HIDWORD(v66) = v30;
        LODWORD(v66) = v30;
        v67 = v66 >> 2;
        v68 = v65 + v27 - 1894007588 + (v28 & (v29 | v30) | v29 & v30) + *(v63 - 4);
        HIDWORD(v66) = v68;
        LODWORD(v66) = v68;
        v69 = v66 >> 27;
        v70 = __PAIR64__(v31, __ROR4__(v30, 2));
        v71 = (v31 | v70) & v29 | v31 & __ROR4__(v30, 2);
        LODWORD(v70) = v31;
        v72 = v70 >> 2;
        v73 = v28 - 1894007588 + v71 + *(v63 - 3) + v69;
        HIDWORD(v70) = v73;
        LODWORD(v70) = v73;
        v74 = v29 - 1894007588 + *(v63 - 2) + ((v68 | __ROR4__(v31, 2)) & __ROR4__(v30, 2) | v68 & __ROR4__(v31, 2)) + (v70 >> 27);
        HIDWORD(v70) = v74;
        LODWORD(v70) = v74;
        v30 = v67 - 1894007588 + *(v63 - 1) + ((v73 | __ROR4__(v68, 2)) & __ROR4__(v31, 2) | v73 & __ROR4__(v68, 2)) + (v70 >> 27);
        v75 = __PAIR64__(v68, __ROR4__(v68, 2));
        v76 = (v74 | __ROR4__(v73, 2)) & v75 | v74 & __ROR4__(v73, 2);
        v77 = *v63;
        v63 += 5;
        LODWORD(v75) = v68;
        v27 = v75 >> 2;
        HIDWORD(v75) = v73;
        LODWORD(v75) = v73;
        v28 = v75 >> 2;
        HIDWORD(v75) = v30;
        LODWORD(v75) = v30;
        v31 = v72 - 1894007588 + v77 + v76 + (v75 >> 27);
        v64 += 5;
        HIDWORD(v75) = v74;
        LODWORD(v75) = v74;
        v29 = v75 >> 2;
      }

      while (v64 < 0x37);
      v78 = v99;
      for (j = 55; j < 0x4B; j += 5)
      {
        HIDWORD(v80) = v31;
        LODWORD(v80) = v31;
        v81 = (v80 >> 27) - 899497514 + (v29 ^ v30 ^ v28) + v27 + *(v78 - 4);
        HIDWORD(v80) = v30;
        LODWORD(v80) = v30;
        v82 = v80 >> 2;
        HIDWORD(v80) = v81;
        LODWORD(v80) = v81;
        v83 = v80 >> 27;
        v84 = __PAIR64__(v31, __ROR4__(v30, 2));
        v85 = v28 - 899497514 + (v31 ^ v84 ^ v29) + *(v78 - 3) + v83;
        LODWORD(v84) = v31;
        v86 = v84 >> 2;
        HIDWORD(v84) = v85;
        LODWORD(v84) = v85;
        v87 = v84 >> 27;
        v88 = __PAIR64__(v81, __ROR4__(v31, 2));
        v89 = v29 - 899497514 + *(v78 - 2) + (v82 ^ v88 ^ v81) + v87;
        LODWORD(v88) = v81;
        v27 = v88 >> 2;
        HIDWORD(v88) = v89;
        LODWORD(v88) = v89;
        v90 = v88 >> 27;
        v91 = __PAIR64__(v85, __ROR4__(v31, 2));
        v30 = v82 - 899497514 + *(v78 - 1) + (v27 ^ v91 ^ v85) + v90;
        LODWORD(v91) = v85;
        v28 = v91 >> 2;
        HIDWORD(v91) = v30;
        LODWORD(v91) = v30;
        v92 = v91 >> 27;
        v93 = __PAIR64__(v89, __ROR4__(v81, 2));
        v94 = *v78;
        v78 += 5;
        v31 = v86 - 899497514 + v94 + (v28 ^ v93 ^ v89) + v92;
        LODWORD(v93) = v89;
        v29 = v93 >> 2;
      }

      v3 += v31;
      v4 += v30;
      *result = v3;
      result[1] = v4;
      v5 += v29;
      v6 += v28;
      result[2] = v5;
      result[3] = v6;
      v7 += v27;
      a3 += 64;
      result[4] = v7;
    }

    while (a2);
  }

  return result;
}

uint64_t ccaes_ecb_decrypt(_DWORD *a1, uint64_t a2, _DWORD *a3, int *a4)
{
  if (a2)
  {
    while (1)
    {
      v4 = a1[61] ^ *a3;
      v5 = a1[62] ^ a3[1];
      v6 = a1[63] ^ a3[2];
      v7 = a1[64] ^ a3[3];
      v8 = a1 + 72;
      for (i = (a1[121] >> 5) - 1; ; --i)
      {
        v10 = TD1[BYTE1(v7)] ^ TD0[v4] ^ TD2[BYTE2(v6)] ^ TD3[HIBYTE(v5)] ^ *(v8 - 7);
        v11 = TD1[BYTE1(v4)] ^ TD0[v5] ^ TD2[BYTE2(v7)] ^ TD3[HIBYTE(v6)] ^ *(v8 - 6);
        v12 = TD1[BYTE1(v5)] ^ TD0[v6] ^ TD2[BYTE2(v4)] ^ TD3[HIBYTE(v7)] ^ *(v8 - 5);
        v13 = TD1[BYTE1(v6)] ^ TD0[v7] ^ TD2[BYTE2(v5)] ^ TD3[HIBYTE(v4)] ^ *(v8 - 4);
        v14 = HIBYTE(v11);
        v15 = BYTE1(v10);
        v16 = HIBYTE(v12);
        v17 = BYTE1(v11);
        v18 = BYTE2(v10);
        v19 = HIBYTE(v13);
        v20 = BYTE2(v11);
        v21 = HIBYTE(v10);
        if (!i)
        {
          break;
        }

        v22 = TD1[BYTE1(v13)] ^ TD0[v10] ^ TD2[BYTE2(v12)] ^ TD3[v14];
        v23 = *(v8 - 3);
        v24 = *(v8 - 2);
        v26 = *(v8 - 1);
        v25 = *v8;
        v8 += 8;
        v4 = v22 ^ v23;
        v27 = TD1[v15] ^ TD0[v11] ^ TD2[BYTE2(v13)] ^ TD3[v16];
        v28 = TD1[v17];
        v5 = v27 ^ v24;
        v6 = v28 ^ TD0[v12] ^ TD2[v18] ^ TD3[v19] ^ v26;
        v7 = TD1[BYTE1(v12)] ^ TD0[v13] ^ TD2[v20] ^ TD3[v21] ^ v25;
      }

      v29 = &a1[8 * ((a1[121] >> 5) - 1)];
      *a4 = (Td4[4 * v10] | (Td4[4 * BYTE1(v13) + 1] << 8) | (Td4[4 * BYTE2(v12) + 2] << 16) | (Td4[4 * v14 + 3] << 24)) ^ v29[69];
      a4[1] = (Td4[4 * v11] | (Td4[4 * BYTE1(v10) + 1] << 8) | (Td4[4 * BYTE2(v13) + 2] << 16) | (Td4[4 * v16 + 3] << 24)) ^ v29[70];
      a4[2] = (Td4[4 * v12] | (Td4[4 * BYTE1(v11) + 1] << 8) | (Td4[4 * BYTE2(v10) + 2] << 16) | (Td4[4 * v19 + 3] << 24)) ^ v29[71];
      a4[3] = (Td4[4 * v13] | (Td4[4 * BYTE1(v12) + 1] << 8) | (Td4[4 * BYTE2(v11) + 2] << 16) | (Td4[4 * v21 + 3] << 24)) ^ v29[72];
      if (!--a2)
      {
        break;
      }

      a4 += 4;
      a3 += 4;
    }
  }

  return 0;
}

uint64_t cccmac_update_internal(void *a1, unint64_t a2, char *__src)
{
  result = 0;
  v13 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v5 = __src;
    if (__src)
    {
      v6 = a2;
      v7 = a1[6];
      if (16 - v7 >= a2)
      {
        v8 = a2;
      }

      else
      {
        v8 = 16 - v7;
      }

      if (v7 > 0x10)
      {
        return 0xFFFFFFFFLL;
      }

      v9 = a1[8];
      if (v7)
      {
        memcpy(a1 + v7 + 32, __src, v8);
        a1[6] += v8;
        v6 -= v8;
        if (!v6)
        {
          return 0;
        }

        v5 += v8;
        ccdrbg_generate_internal(v9, (a1 + 9), a1 + *v9 + 72, 1, (a1 + 4), v12);
        a1[7] += 16;
      }

      if (v6 >= 0x11)
      {
        v10 = (v6 - 1) >> 4;
        do
        {
          if (v10 >= 0x10)
          {
            v11 = 16;
          }

          else
          {
            v11 = v10;
          }

          ccdrbg_generate_internal(v9, (a1 + 9), a1 + *v9 + 72, v11, v5, v12);
          v5 += 16 * v11;
          v10 -= v11;
        }

        while (v10);
      }

      __memcpy_chk();
      result = 0;
      a1[6] = v6 - ((v6 - 1) & 0xFFFFFFFFFFFFFFF0);
    }
  }

  return result;
}

uint64_t cccmac_update(void *a1, unint64_t a2, char *a3)
{
  v8 = timingsafe_enable_if_supported();
  updated = cccmac_update_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return updated;
}

void *ccmode_factory_ofb_crypt(void *result, void *a2)
{
  *result = ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  result[1] = 1;
  result[2] = ccmode_ofb_init;
  result[3] = ccmode_ofb_crypt;
  result[4] = a2;
  return result;
}

uint64_t ccrsa_decrypt_oaep_ws(uint64_t a1, unint64_t *a2, size_t *a3, size_t *a4, void *a5, unint64_t a6, unsigned __int8 *a7, size_t a8, char *a9)
{
  v17 = ccrng(0);
  if (v17)
  {
    return ccrsa_decrypt_oaep_blinded_ws(a1, v17, a2, a3, a4, a5, a6, a7, a8, a9);
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccrsa_decrypt_oaep(unint64_t *a1, size_t *a2, size_t *a3, void *a4, unint64_t a5, unsigned __int8 *a6, size_t a7, char *a8)
{
  v29 = timingsafe_enable_if_supported();
  v15 = *a1;
  v16 = 9 * *a1;
  v17 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v16 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v16;
  }

  v19 = cc_malloc_clear(8 * (v18 + 3 * v15));
  v27[0] = v19;
  v20 = *a1;
  v21 = 9 * *a1;
  v22 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a1);
  if (v21 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = v21;
  }

  v27[1] = v23 + 3 * v20;
  v27[2] = 0;
  v27[3] = cc_ws_alloc;
  v28 = cc_ws_free;
  if (v19)
  {
    v24 = ccrsa_decrypt_oaep_ws(v27, a1, a2, a3, a4, a5, a6, a7, a8);
    v28(v27);
  }

  else
  {
    v24 = 4294967283;
  }

  cc_disable_dit_with_sb(&v29);
  return v24;
}

uint64_t ccdrbg_df_derive_keys(uint64_t (**a1)(uint64_t (**)(void), uint64_t, uint64_t), uint64_t a2, uint64_t a3, rsize_t a4, void *a5)
{
  v7 = (*a1)(a1, a2, a3);
  if (v7)
  {
    cc_clear(a4, a5);
  }

  return v7;
}

uint64_t OUTLINED_FUNCTION_1_22()
{
  v3 = *(*(v0 + 8) + 8);

  return cc_clear(v3, v1);
}

uint64_t ccder_blob_decode_tl_internal(unsigned __int8 **a1, uint64_t a2, unint64_t *a3, int a4)
{
  v10 = 0;
  *a3 = 0;
  v8 = ccder_blob_decode_tag(a1, &v10);
  result = 0;
  if (v8 && v10 == a2)
  {
    if (a4)
    {
      return ccder_blob_decode_len_strict(a1, a3);
    }

    else
    {
      return ccder_blob_decode_len(a1, a3);
    }
  }

  return result;
}

uint64_t ccmldsa_poly_add(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = *(a3 + i) + *(a2 + i);
  }

  return result;
}

uint64_t ccmldsa_poly_sub(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = *(a2 + i) - *(a3 + i);
  }

  return result;
}

uint64_t ccmldsa_poly_reduce(uint64_t result)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = (8380417 * ((0x200801C0602 * *(result + i)) >> 32) + 2145386752) >> 32;
  }

  return result;
}

uint64_t ccmldsa_poly_power2round(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    v4 = *(a3 + i);
    *(result + i) = (v4 + 4095) >> 13;
    *(a2 + i) = v4 - ((v4 + 4095) & 0xFFFFE000);
  }

  return result;
}

int32x4_t ccmldsa_poly_shiftl(uint64_t a1)
{
  for (i = 0; i != 1024; i += 16)
  {
    result = vshlq_n_s32(*(a1 + i), 0xDuLL);
    *(a1 + i) = result;
  }

  return result;
}

uint64_t ccmldsa_poly_caddq(uint64_t result)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) += (*(result + i) >> 31) & 0x7FE001;
  }

  return result;
}

uint64_t ccmldsa_poly_make_hint(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 0;
  LODWORD(v4) = 0;
  do
  {
    v5 = *(a3 + v3);
    if (*(a2 + v3))
    {
      v6 = ((v5 + 261888) | (-261888 - v5)) < 0;
    }

    else
    {
      v6 = 1;
    }

    v7 = v6 && (v5 - 261889) >= 0xFFF801FF;
    v8 = !v7;
    *(a1 + v3) = v8;
    if (v7)
    {
      v4 = v4;
    }

    else
    {
      v4 = (v4 + 1);
    }

    v3 += 4;
  }

  while (v3 != 1024);
  return v4;
}

uint64_t ccmldsa_poly_decompose(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    v4 = *(a3 + i);
    v5 = ((1025 * ((v4 + 127) >> 7) + 0x200000) >> 22) & 0xF;
    *(result + i) = v5;
    v6 = v4 - 523776 * v5;
    if (v6 <= 4190208)
    {
      v7 = 0;
    }

    else
    {
      v7 = -8380417;
    }

    *(a2 + i) = v7 + v6;
  }

  return result;
}

uint64_t ccmldsa_poly_use_hint(uint64_t result, uint64_t a2)
{
  for (i = 0; i != 1024; i += 4)
  {
    v3 = *(result + i);
    v4 = 1025 * ((v3 + 127) >> 7) + 0x200000;
    v5 = (v4 >> 22) & 0xF;
    if (*(a2 + i))
    {
      v6 = v4 >> 22;
      v7 = v3 - 523776 * v5;
      if (v7 <= 4190208)
      {
        v8 = 0;
      }

      else
      {
        v8 = -8380417;
      }

      if (v8 + v7 < 1)
      {
        v9 = v6 - 1;
      }

      else
      {
        v9 = v6 + 1;
      }

      v5 = v9 & 0xF;
    }

    *(result + i) = v5;
  }

  return result;
}

_BYTE *ccmldsa_poly_bitpack_eta2(_BYTE *result, uint64_t a2)
{
  v2 = 0;
  v14 = *MEMORY[0x29EDCA608];
  do
  {
    for (i = 0; i != 8; ++i)
    {
      v7[i] = 2 - *(a2 + 4 * i);
    }

    v4 = v8;
    *result = v7[0] | (8 * v7[1]) | (v8 << 6);
    v5 = (2 * v9) | (v4 >> 2) | (16 * v10);
    v6 = v11;
    result[1] = v5 | (v11 << 7);
    result[2] = (4 * v12) | (v6 >> 1) | (32 * v13);
    result += 3;
    ++v2;
    a2 += 32;
  }

  while (v2 != 32);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_eta2(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 2);
  do
  {
    v4 = result + v2;
    v5 = *(v3 - 2);
    v6 = *(v3 - 1);
    v7 = *v3;
    v3 += 3;
    *v4 = 2 - (v5 & 7);
    *(v4 + 4) = 2 - ((v5 >> 3) & 7);
    *(v4 + 8) = 2 - ((v5 >> 6) & 0xFFFFFFFB | (4 * (v6 & 1)));
    *(v4 + 12) = vsub_s32(0x200000002, (*&vshl_u32(vdup_n_s32(v6), 0xFFFFFFFCFFFFFFFFLL) & 0xFFFFFF07FFFFFF07));
    *(v4 + 20) = 2 - ((v6 >> 7) & 0xFFFFFFF9 | (2 * (v7 & 3)));
    *(v4 + 24) = 2 - ((v7 >> 2) & 7);
    *(v4 + 28) = 2 - (v7 >> 5);
    v2 += 32;
  }

  while (v2 != 1024);
  return result;
}

uint64_t ccmldsa_poly_bitpack_eta4(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 4);
  do
  {
    *(result + v2++) = (64 - 16 * *v3) | (4 - *(v3 - 4));
    v3 += 8;
  }

  while (v2 != 128);
  return result;
}

_DWORD *ccmldsa_poly_bitunpack_eta4(_DWORD *result, uint64_t a2)
{
  for (i = 0; i != 128; ++i)
  {
    v3 = *(a2 + i);
    *result = 4 - (v3 & 0xF);
    result[1] = 4 - (v3 >> 4);
    result += 2;
  }

  return result;
}

uint64_t ccmldsa_poly_bitpack_t0(uint64_t result, int32x4_t *a2)
{
  v2 = 0;
  v3 = a2 + 1;
  v4.i64[0] = 0x100000001000;
  v4.i64[1] = 0x100000001000;
  do
  {
    v5 = *v3;
    v6 = vsubq_s32(v4, v3[-1]);
    v7 = v6.u32[1];
    v8 = v6.u32[2];
    v9 = v6.u32[3];
    v10 = (32 * v6.i8[4]) | v6.i8[1];
    v11 = v6.i32[1] >> 3;
    v12 = (result + v2);
    *v12 = v6.i8[0];
    v13 = 4 * v6.i8[8];
    v14 = vsubq_s32(v4, v5);
    v12[1] = v10;
    v12[2] = v11;
    v12[3] = v13 | (v7 >> 11);
    v12[4] = (v9 << 7) | (v8 >> 6);
    v12[5] = v9 >> 1;
    v12[6] = (16 * v14.i8[0]) | (v9 >> 9);
    v12[7] = v14.i32[0] >> 4;
    v12[8] = (2 * v14.i8[4]) | (v14.i32[0] >> 12);
    v12[9] = (v14.i8[8] << 6) | (v14.i32[1] >> 7);
    v12[10] = v14.i32[2] >> 2;
    v12[11] = (8 * v14.i8[12]) | (v14.i32[2] >> 10);
    v12[12] = v14.i32[3] >> 5;
    v3 += 2;
    v2 += 13;
  }

  while (v2 != 416);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_t0(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 6);
  do
  {
    v4 = *(v3 - 5);
    v5 = (result + v2);
    v6 = *(v3 - 3);
    v7 = *(v3 - 2);
    v8 = *v3;
    v9 = v3[2];
    v10 = v3[3];
    v11 = (v8 >> 4) | (16 * v3[1]);
    v12 = v3[5];
    v13 = *(v3 - 6) | ((v4 & 0x1F) << 8);
    v14 = *(v3 - 1);
    v15 = v3[4];
    v16 = (v4 >> 5) & 0xFFFFE7FF | ((v6 & 3) << 11) | (8 * *(v3 - 4));
    v17 = v3[6];
    *v5 = 4096 - v13;
    v5[1] = 4096 - v16;
    v5[2] = 4096 - ((v6 >> 2) & 0xFFFFE03F | ((v7 & 0x7F) << 6));
    v5[3] = 4096 - ((v7 >> 7) & 0xFFFFE1FF | ((v8 & 0xF) << 9) | (2 * v14));
    v5[4] = (~(v9 << 12) & 0x1000) - v11;
    v5[5] = 4096 - ((v9 >> 1) & 0xFFFFE07F | ((v10 & 0x3F) << 7));
    v5[6] = 4096 - ((v10 >> 6) & 0xFFFFE3FF | ((v12 & 7) << 10) | (4 * v15));
    v5[7] = 4096 - ((v12 >> 3) | (32 * v17));
    v2 += 32;
    v3 += 13;
  }

  while (v2 != 1024);
  return result;
}

uint64_t ccmldsa_poly_bitpack_t1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 8);
  do
  {
    v4 = (result + v2);
    *v4 = *(v3 - 2);
    v4[1] = (4 * *(v3 - 4)) | BYTE1(*(v3 - 2));
    v4[2] = (16 * *v3) | (*(v3 - 1) >> 6);
    v4[3] = (v3[4] << 6) | (*v3 >> 4);
    v4[4] = *(v3 + 1) >> 2;
    v3 += 16;
    v2 += 5;
  }

  while (v2 != 320);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_t1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 2);
  do
  {
    v4 = (result + v2);
    *v4 = *(v3 - 2) | ((*(v3 - 1) & 3) << 8);
    v4[1] = (*(v3 - 1) >> 2) & 0xFFFFFC3F | ((*v3 & 0xF) << 6);
    v4[2] = (*v3 >> 4) & 0xFFFFFC0F | (16 * (v3[1] & 0x3F));
    v4[3] = (v3[1] >> 6) | (4 * v3[2]);
    v2 += 16;
    v3 += 5;
  }

  while (v2 != 1024);
  return result;
}

uint64_t ccmldsa_poly_bitpack_z(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 4);
  do
  {
    v4 = result + v2;
    v5 = 0x80000 - *(v3 - 1);
    v6 = 0x80000 - *v3;
    *v4 = -*(v3 - 2);
    *(v4 + 2) = (16 * v6) | BYTE2(v5);
    *(v4 + 3) = v6 >> 4;
    *(v4 + 4) = v6 >> 12;
    v3 += 2;
    v2 += 5;
  }

  while (v2 != 640);
  return result;
}

uint64_t ccmldsa_poly_bitunpack_z(uint64_t result, uint64_t a2)
{
  v2 = (result + 4);
  v3 = (a2 + 2);
  v4 = 128;
  do
  {
    v5 = *v3;
    v6 = 0x80000 - (*(v3 - 2) | ((v5 & 0xF) << 16) | (*(v3 - 1) << 8));
    v7 = 0x80000 - ((v5 >> 4) | (v3[2] << 12) | (16 * v3[1]));
    *(v2 - 1) = v6;
    *v2 = v7;
    v2 += 2;
    v3 += 5;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t ccmldsa_poly_simplebitpack_w1(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (a2 + 4);
  do
  {
    *(result + v2++) = *(v3 - 1) | (16 * *v3);
    v3 += 8;
  }

  while (v2 != 128);
  return result;
}

uint64_t ccder_sizeof_tag(uint64_t a1)
{
  v1 = a1 & 0x1FFFFFFFFFFFFFFFLL;
  v2 = 2;
  v3 = 3;
  v4 = 4;
  v5 = 5;
  if ((a1 & 0x1FFFFFFFFFFFFFFFuLL) >> 28)
  {
    v5 = 6;
  }

  if (v1 >= 0x200000)
  {
    v4 = v5;
  }

  if (v1 >= 0x4000)
  {
    v3 = v4;
  }

  if (v1 >= 0x80)
  {
    v2 = v3;
  }

  if (v1 >= 0x1F)
  {
    return v2;
  }

  else
  {
    return 1;
  }
}

uint64_t ccz_subi(void *a1, uint64_t a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = timingsafe_enable_if_supported();
  v9[0] = a3;
  v7[0] = 1;
  v7[1] = 0;
  v7[3] = v9;
  v7[2] = 1;
  ccz_sub(a1, a2, v7);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccctr_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccctr_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccctr_one_shot_internal(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v11 = MEMORY[0x2A1C7C4A8](a1);
  v13 = v16 - v12;
  v14 = (*(v11 + 24))(v11, v16 - v12);
  if (!v14)
  {
    v14 = (*(a1 + 40))(v13, a5, a6, a7);
  }

  cc_clear(*a1, v13);
  return v14;
}

uint64_t ccctr_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = ccctr_one_shot_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccn_lcm_ws(uint64_t a1, unint64_t a2, char *a3, void *a4, void *a5)
{
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))();
  v12 = ccn_gcd_ws(a1, a2, v11, a2, a4, a2, a5);
  ccn_div_exact_ws(a1, a2, v11, a5, v11);
  ccn_shift_right_multi(a2, v11, v11, v12);
  result = ccn_mul_ws(a1, a2, a3, a4, v11);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccecies_encrypt_gcm_setup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, int a6, int a7)
{
  v19 = timingsafe_enable_if_supported();
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 28) = a6;
  *(a1 + 32) = a7;
  *(a1 + 24) = a5;
  if ((a6 - 17) >= 0xFFFFFFFB)
  {
    v14 = 0;
  }

  else
  {
    v14 = -5;
  }

  if (((1 << a5) & 0x101010000) != 0)
  {
    v15 = v14;
  }

  else
  {
    v15 = -5;
  }

  if (a5 <= 0x20)
  {
    v16 = v15;
  }

  else
  {
    v16 = -5;
  }

  if (*(a4 + 8) == 4073947)
  {
    v17 = v16;
  }

  else
  {
    v17 = 4294967291;
  }

  cc_disable_dit_with_sb(&v19);
  return v17;
}

uint64_t fipspost_post_mldsa(uint64_t a1)
{
  v1 = MEMORY[0x2A1C7C4A8](a1);
  v29[937] = *MEMORY[0x29EDCA608];
  bzero(&v26, 0x1300uLL);
  v2 = ccmldsa87();
  ccmldsa_full_ctx_init(v29, v2);
  __s1[0] = seed_kat;
  __s1[1] = unk_299CFEAB8;
  if ((v1 & 0x10) != 0)
  {
    LOBYTE(__s1[0]) = 117;
  }

  ccrng(0);
  if (ccmldsa_derive_key_from_seed(v29, 32))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_derive_key_from_seed: %d\n");
LABEL_7:
    v4 = -75;
    goto LABEL_8;
  }

  ccmldsa_public_ctx();
  if (ccmldsa_export_pubkey(v3, 0xA20uLL, __s1))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_export_pubkey: %d\n");
    goto LABEL_7;
  }

  if (!memcmp(__s1, &pubkey_kat_0, 0xA20uLL))
  {
    if (ccmldsa_export_privkey(v29, 0x1320uLL, __s1))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_export_privkey: %d\n");
      goto LABEL_7;
    }

    if (!memcmp(__s1, &privkey_kat_0, 0x1320uLL))
    {
      v4 = 0;
    }

    else
    {
      v24 = mach_absolute_time();
      v4 = -75;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch privkey: %d\n", v24, "fipspost_post_mldsa_keygen", 73, -75);
    }
  }

  else
  {
    v13 = mach_absolute_time();
    v4 = -75;
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch pubkey: %d\n", v13, "fipspost_post_mldsa_keygen", 62, -75);
  }

LABEL_8:
  v5 = ccmldsa87();
  ccmldsa_full_ctx_init(v29, v5);
  ccrng(0);
  v6 = ccmldsa_derive_key_from_seed(v29, 32);
  if (v6)
  {
    v7 = v6;
    v8 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_derive_key_from_seed: %d\n", v8, "fipspost_post_mldsa_sign_kat", 88, v7);
    v9 = -73;
  }

  else
  {
    v27 = msg_kat_0;
    v28 = unk_299D00818;
    if ((v1 & 0x10) != 0)
    {
      LOBYTE(v27) = 110;
    }

    v10 = ccmldsa_sign_internal(v5, (&v29[1] + *(v29[0] + 72)), 4627, __s1, 32, &v27, 0, 0, &sig_rng_kat);
    if (v10)
    {
      v11 = v10;
      v12 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_sign: %d\n", v12, "fipspost_post_mldsa_sign_kat", 101, v11);
      v9 = -75;
    }

    else if (!memcmp(__s1, &sig_kat, 0x1213uLL))
    {
      v9 = 0;
    }

    else
    {
      v14 = mach_absolute_time();
      v9 = -75;
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: mismatch sig: %d\n", v14, "fipspost_post_mldsa_sign_kat", 106, -75);
    }
  }

  v15 = ccmldsa87();
  ccmldsa_full_ctx_init(v29, v15);
  ccrng(0);
  v16 = ccmldsa_derive_key_from_seed(v29, 32);
  if (v16)
  {
    v17 = v16;
    v18 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_derive_key_from_seed: %d\n", v18, "fipspost_post_mldsa_verify_kat", 123, v17);
    v19 = -73;
  }

  else
  {
    v27 = msg_kat_0;
    v28 = unk_299D00818;
    if ((v1 & 0x10) != 0)
    {
      LOBYTE(v27) = 110;
    }

    ccmldsa_public_ctx();
    v20 = ccmldsa_verify();
    if (v20)
    {
      v21 = v20;
      v22 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccmldsa_verify: %d\n", v22, "fipspost_post_mldsa_verify_kat", 136, v21);
      v19 = -75;
    }

    else
    {
      v19 = 0;
    }
  }

  return v9 | v4 | v19;
}

const char *cc_impl_name(int a1)
{
  if ((a1 - 1) > 0x3C)
  {
    return "UNKNOWN";
  }

  else
  {
    return off_29F289060[a1 - 1];
  }
}

unint64_t ccder_encode_dhparams_size(void *a1)
{
  v2 = ccdh_gp_n(a1);
  v3 = ccdh_gp_l(a1);
  v4 = ccdh_gp_prime(a1);
  v5 = ccder_sizeof_integer(v2, v4);
  v6 = ccdh_gp_g(a1);
  v7 = ccder_sizeof_integer(v2, v6);
  if (v3)
  {
    v8 = ccder_sizeof_uint64(v3);
  }

  else
  {
    v8 = 0;
  }

  return ccder_sizeof(0x2000000000000010, v7 + v5 + v8);
}

uint64_t ccder_encode_dhparams(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = ccdh_gp_n(a1);
  v7 = ccdh_gp_prime(a1);
  v8 = ccdh_gp_g(a1);
  v9 = ccdh_gp_l(a1);
  v10 = a3;
  if (v9)
  {
    v11 = ccdh_gp_l(a1);
    v10 = ccder_encode_uint64(v11, a2, a3);
  }

  v12 = ccder_encode_integer(v6, v8, a2, v10);
  v13 = ccder_encode_integer(v6, v7, a2, v12);

  return ccder_encode_constructed_tl(0x2000000000000010uLL, a3, a2, v13);
}

uint64_t ccgcm_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_init_with_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a1, a2, a3, a4);
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v11 = (*(a1 + 32))(a2, 12, a5);
    if (!v11)
    {
      *(a2 + 82) |= 1u;
    }
  }

  cc_disable_dit_with_sb(&v13);
  return v11;
}

uint64_t ccgcm_set_iv(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t inc_uint(uint64_t result, unint64_t a2)
{
  if (a2)
  {
    v2 = (a2 + result - 1);
    v3 = 2;
    do
    {
      if (++*v2--)
      {
        v5 = 1;
      }

      else
      {
        v5 = v3 > a2;
      }

      ++v3;
    }

    while (!v5);
  }

  return result;
}

uint64_t ccmode_gcm_update_pad(uint64_t a1)
{
  v1 = (a1 + 47);
  v2 = 1;
  do
  {
    v3 = *v1 + 1;
    *v1-- = v3;
    if (v2 > 3)
    {
      break;
    }

    ++v2;
  }

  while (!v3);
  return (*(*(a1 + 104) + 24))(*(a1 + 112), 1, a1 + 32, a1 + 64);
}

uint64_t ccgcm_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_gmac(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 48))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccgcm_finalize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 56))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccgcm_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 64))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccgcm_set_iv_legacy(uint64_t a1, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccgcm_set_iv_legacy_internal(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

void ccmode_gcm_aad_finalize(__n64 *a1)
{
  if (a1[10].n64_u16[0] == 2)
  {
    if ((a1[11].n64_u8[0] & 0xF) != 0)
    {
      ccmode_gcm_mult_h(a1->n64_u64, a1 + 2);
    }

    a1[10].n64_u16[0] = 3;
  }
}

uint64_t ccmldsa_ntt_forward(uint64_t result)
{
  v1 = 8;
  do
  {
    v2 = 0;
    v3 = (1 << --v1);
    v4 = 0x80u >> v1;
    do
    {
      v5 = ccmldsa_zetas[v4];
      v6 = v2;
      do
      {
        v7 = (8380417 * ((v5 * *(result + 4 * (v3 + v6))) >> 32) + 2145386752) >> 32;
        v8 = *(result + 4 * v6);
        *(result + 4 * (v3 + v6)) = v8 - v7;
        *(result + 4 * v6++) = v8 + v7;
      }

      while (v6 < v2 + v3);
      ++v4;
      v2 += (2 << v1);
    }

    while (v2 < 0x100);
  }

  while (v1);
  return result;
}

int32x4_t *ccmldsa_ntt_forward_eta(int32x4_t *result)
{
  v1 = 128;
  v2 = vdupq_n_s32(0xFFC97E01);
  v3 = result;
  do
  {
    v4 = vmulq_s32(v3[32], v2);
    v5 = *v3;
    v3[32] = vsubq_s32(*v3, v4);
    *v3++ = vaddq_s32(v5, v4);
    v1 -= 4;
  }

  while (v1);
  v6 = 7;
  do
  {
    v7 = 0;
    v8 = (1 << --v6);
    v9 = 0x80u >> v6;
    do
    {
      v10 = ccmldsa_zetas[v9];
      v11 = v7;
      do
      {
        v12 = (8380417 * ((v10 * result->i32[(v8 + v11)]) >> 32) + 2145386752) >> 32;
        v13 = result->i32[v11];
        result->i32[(v8 + v11)] = v13 - v12;
        result->i32[v11++] = v13 + v12;
      }

      while (v11 < v7 + v8);
      ++v9;
      v7 += (2 << v6);
    }

    while (v7 < 0x100);
  }

  while (v6);
  return result;
}

uint64_t ccmldsa_ntt_pointwise(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (i = 0; i != 1024; i += 4)
  {
    *(result + i) = (8380417 * ((0x180A406003802001 * *(a3 + i) * *(a2 + i)) >> 32) + 2145386752) >> 32;
  }

  return result;
}

int *ccmldsa_ntt_inverse(int *result)
{
  for (i = 0; i != 7; ++i)
  {
    v2 = 0;
    v3 = (1 << i);
    v4 = 0x100u >> i;
    v5 = &result[v3];
    do
    {
      v6 = ccmldsa_zetas[--v4];
      v7 = v2;
      do
      {
        v8 = result[v7];
        v9 = v5[v7];
        result[v7] = v9 + v8;
        v5[v7++] = (8380417 * ((v6 * (v9 - v8)) >> 32) + 2145386752) >> 32;
      }

      while (v7 < v2 + v3);
      v2 += (2 << i);
    }

    while (v2 < 0x100);
  }

  v10 = 128;
  do
  {
    v11 = *result;
    v12 = result[128];
    *result = (8380417 * ((0xFEB7B9F10CCF51BBLL * (v12 + *result)) >> 32) + 2145386752) >> 32;
    result[128] = (8380417 * ((0x79729DB487E69094 * (v12 - v11)) >> 32) + 2145386752) >> 32;
    ++result;
    --v10;
  }

  while (v10);
  return result;
}

uint64_t ccxts_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 24))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccxts_set_tweak(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 40))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccxts_update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = (*(a1 + 48))(a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccxts_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a5;
  v27 = *MEMORY[0x29EDCA608];
  v15 = timingsafe_enable_if_supported();
  v26 = v15;
  v16 = MEMORY[0x2A1C7C4A8](v15);
  v18 = &v24 - v17;
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v24 - v19;
  v21 = (*(a1 + 24))(a1, v18, a2, a3, a4);
  if (v21 || (v21 = (*(a1 + 40))(v18, v20, v25), v21))
  {
    v22 = v21;
  }

  else if ((*(a1 + 48))(v18, v20, a6, a7, a8))
  {
    v22 = 0;
  }

  else
  {
    v22 = 4294967289;
  }

  cc_clear(*a1, v18);
  cc_clear(*(a1 + 8), v20);
  cc_disable_dit_with_sb(&v26);
  return v22;
}

uint64_t ccec_der_import_priv(unint64_t *a1, uint64_t a2, unsigned __int8 *a3, unint64_t **a4)
{
  v23 = timingsafe_enable_if_supported();
  v8 = 26 * *a1;
  if (20 * *a1 > v8)
  {
    v8 = 20 * *a1;
  }

  v9 = cc_malloc_clear(8 * v8);
  v10 = 26 * *a1;
  if (20 * *a1 > v10)
  {
    v10 = 20 * *a1;
  }

  v21[0] = v9;
  v21[1] = v10;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v9)
  {
    v19 = 0;
    v20 = 0;
    v17 = 0;
    v18 = 0;
    v15 = 0;
    v16 = 0;
    *a4 = a1;
    if (ccder_decode_eckey_internal(&v20, &v19, &v17, &v15, &v18, &v16, a3, &a3[a2]) && (v11 = v19, v11 == (cczp_bitlen(&a1[5 * *a1 + 4]) + 7) >> 3) && !ccn_read_uint_internal(*a1, &a4[3 * **a4 + 2], v19, v17))
    {
      if (v16 && (v12 = v18, (((cczp_bitlen(a1) + 7) >> 2) | 1) <= v12 >> 3))
      {
        if (ccec_import_pub_ws())
        {
          pub_from_priv_ws = 0xFFFFFFFFLL;
        }

        else
        {
          pub_from_priv_ws = 0;
        }
      }

      else
      {
        pub_from_priv_ws = ccec_make_pub_from_priv_ws(v21, a1, 0, &a4[3 * **a4 + 2], 0, a4);
      }
    }

    else
    {
      pub_from_priv_ws = 0xFFFFFFFFLL;
    }

    v22(v21);
  }

  else
  {
    pub_from_priv_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return pub_from_priv_ws;
}

uint64_t ccvrf_irtf_ed25519_proof_to_hash(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x29EDCA608];
  memset(v8, 0, sizeof(v8));
  v12 = 0uLL;
  memset(v11, 0, sizeof(v11));
  ccvrf_irtf_ed25519_decode_proof(a2, v8, &v12, v11);
  v6 = v5;
  if (!v5)
  {
    v9 = 772;
    ge_scalarmult_cofactor(v8);
    ccvrf_irtf_ed25519_point_to_string(&v10, v8);
    ccdigest_internal(*(a1 + 40), 0x22uLL, &v9, a3);
  }

  return v6;
}

uint64_t ccvrf_proof_to_hash(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  if (ccvrf_sizeof_proof(a1) == a2 && ccvrf_sizeof_hash(a1) == a4)
  {
    v10 = (*(a1 + 80))(a1, a3, a5);
  }

  else
  {
    v10 = 4294967289;
  }

  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cczp_sqrt_tonelli_shanks_precomp_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t a5, uint64_t *a6, void *a7)
{
  v12 = cczp_n(a2);
  v25 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v12);
  v14 = (*(a1 + 24))(a1, v12);
  v15 = (*(a1 + 24))(a1, v12);
  v16 = (*(a1 + 24))(a1, v12);
  v24 = a4;
  result = cczp_power_fast_ws(a1, a2, a3, a4, a6);
  v18 = v25;
  if (!result)
  {
    ccn_seti(v12, v16, 1);
    v27 = v16;
    cczp_to_ws(a1, a2);
    ccn_set(v12, v15, a7);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    v19 = a5 - 2;
    if (a5 >= 2)
    {
      while (1)
      {
        ccn_set(v12, v14, v13);
        --a5;
        v20 = v19;
        if (a5 < 2)
        {
          break;
        }

        do
        {
          cczp_sqr_ws(a1, a2);
          --v20;
        }

        while (v20);
        v21 = ccn_cmp_internal(v12, v14, v27) & 1;
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, a3, v14, a3);
        cczp_sqr_ws(a1, a2);
        cczp_mul_ws(a1, a2);
        ccn_mux(v12, v21, v13, v14, v13);
        --v19;
      }

      v22 = ccn_cmp_internal(v12, v14, v27) & 1;
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, a3, v14, a3);
      cczp_sqr_ws(a1, a2);
      cczp_mul_ws(a1, a2);
      ccn_mux(v12, v22, v13, v14, v13);
    }

    cczp_sqr_ws(a1, a2);
    if (ccn_cmp_internal(v12, v14, v24))
    {
      result = 4294967289;
    }

    else
    {
      result = 0;
    }

    v18 = v25;
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t cczp_sqrt_default_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = ~*cczp_prime(a2) & 3;
  v9 = cczp_n(a2);
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, v9);
  v12 = cczp_prime(a2);
  if (v8)
  {
    ccn_set(v9, v11, v12);
    *v11 &= ~1uLL;
    v14 = ccn_trailing_zeros(v9, v11);
    ccn_shift_right_multi(v9, v11, v11, v14);
    v15 = (*(a1 + 24))(a1, v9);
    ccn_sub1(v9, v15, v11, 1uLL);
    ccn_shift_right(v9, v15, v15, 1);
    v16 = (*(a1 + 24))(a1, v9);
    ccn_seti(v9, v16, 1);
    while (!cczp_is_quadratic_residue_ws(a1, a2, v16))
    {
      ccn_add1_ws(a1, v9, v16, v16, 1);
    }

    result = cczp_power_fast_ws(a1, a2, v16, v16, v11);
    if (!result)
    {
      result = cczp_sqrt_tonelli_shanks_precomp_ws(a1, a2, a3, a4, v14, v15, v16);
    }
  }

  else
  {
    ccn_add1_ws(a1, v9, v11, v12, 1);
    ccn_shift_right(v9, v11, v11, 2);
    result = cczp_power_fast_ws(a1, a2, a3, a4, v11);
    if (!result)
    {
      cczp_sqr_ws(a1, a2);
      if (ccn_cmp_internal(v9, v11, a4))
      {
        result = 4294967289;
      }

      else
      {
        result = 0;
      }
    }
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t cced25519_verify_internal(uint64_t *a1, uint64_t a2, size_t a3, char *a4, char *a5, char *a6)
{
  v46 = *MEMORY[0x29EDCA608];
  v40 = cc_malloc_clear(0x5E0uLL);
  v41 = xmmword_299D022A0;
  v42 = cc_ws_alloc;
  v43 = cc_ws_free;
  if (!v40)
  {
    return 4294967283;
  }

  v12 = &a1[5 * *a1];
  v13 = cczp_n(a1);
  v39 = cc_ws_alloc(&v40, v13);
  v14 = v42(&v40, v13);
  v15 = v42(&v40, 3 * v13);
  if (v13)
  {
    v16 = (a5 + 32);
    v17 = v14;
    v18 = v13;
    do
    {
      v19 = *v16++;
      *v17++ = v19;
      --v18;
    }

    while (v18);
  }

  v20 = cczp_prime((v12 + 4));
  if ((ccn_cmp_internal(v13, v14, v20) & 0x80000000) == 0)
  {
    v35 = 4294967150;
    goto LABEL_24;
  }

  cced25519_hash_to_scalar_ws(&v40, a1, a2, v39, 0x20uLL, a5, 0x20uLL, a6, a3, a4);
  v21 = cczp_n(a1);
  v22 = v21;
  v23 = *a1;
  v24 = &v15[*a1];
  v25 = a6[31];
  if (v21)
  {
    v26 = &v15[*a1];
    v27 = v21;
    do
    {
      v28 = *a6;
      a6 += 8;
      *v26++ = v28;
      --v27;
    }

    while (v27);
  }

  v24[v21 - 1] &= ~0x8000000000000000;
  v29 = cczp_prime(a1);
  if ((ccn_cmp_internal(v22, v24, v29) & 0x80000000) == 0)
  {
    goto LABEL_27;
  }

  v37 = *(&v41 + 1);
  v38 = v25;
  v42(&v40, v22);
  v30 = v42(&v40, v22);
  v31 = v42(&v40, v22);
  ccn_seti(v22, &v15[2 * v23], 1);
  cczp_sqr_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_sub_ws(&v40, a1);
  cczp_add_ws(&v40, a1);
  cczp_sqr_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  v32 = cczp_power_fast_ws(&v40, a1, v15, v15, kPsub5div8);
  if (v32)
  {
LABEL_28:
    v35 = v32;
    goto LABEL_24;
  }

  cczp_mul_ws(&v40, a1);
  cczp_sqr_ws(&v40, a1);
  cczp_mul_ws(&v40, a1);
  cczp_from_ws(&v40, a1);
  cczp_from_ws(&v40, a1);
  if (ccn_cmp_internal(v22, v30, v31))
  {
    cczp_negate(a1, v30, v30);
    if (ccn_cmp_internal(v22, v30, v31))
    {
      goto LABEL_27;
    }

    cczp_mul_ws(&v40, a1);
  }

  cczp_from_ws(&v40, a1);
  if (ccn_n(v22, v15) || (v38 & 0x80000000) == 0)
  {
    if ((*v15 & 1) == v38 >> 7)
    {
      cczp_negate(a1, v15, v15);
    }

    *(&v41 + 1) = v37;
    cced25519_double_scalar_mult_ws(&v40, a1, v15, v14, v39, v15);
    v32 = ccec_affinify_ws(&v40, a1);
    if (!v32)
    {
      v33 = 0;
      v34 = &v15[*a1];
      do
      {
        *&v44[v33 * 8] = v34[v33];
        ++v33;
      }

      while (v33 != 4);
      v45 |= *v15 << 7;
      if (cc_cmp_safe_internal(32, v44, a5))
      {
        v35 = 4294967150;
      }

      else
      {
        v35 = 0;
      }

      goto LABEL_24;
    }

    goto LABEL_28;
  }

LABEL_27:
  v35 = 4294967289;
LABEL_24:
  *(&v41 + 1) = 0;
  v43(&v40);
  return v35;
}

uint64_t cced25519_verify(uint64_t a1, size_t a2, char *a3, char *a4, char *a5)
{
  v13 = timingsafe_enable_if_supported();
  v10 = ccec_cp_ed25519();
  v11 = cced25519_verify_internal(v10, a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v13);
  return v11;
}

void *ccxof_absorb(void *result, _DWORD *a2, size_t a3, char *__src)
{
  v4 = __src;
  v5 = a3;
  v7 = result;
  v8 = a2 + 2;
  v9 = *a2;
  v10 = result[1];
  if (v9)
  {
    if (v10 - v9 >= a3)
    {
      v11 = a3;
    }

    else
    {
      v11 = v10 - v9;
    }

    result = memcpy(v8 + v9, __src, v11);
    v4 += v11;
    v5 -= v11;
    *a2 = v11 + v9;
    v12 = v7[1];
    if (v11 + v9 == v12)
    {
      result = (v7[3])(v7, v8 + v10, 1, v8);
      *a2 = 0;
      v12 = v7[1];
    }
  }

  else
  {
    v12 = result[1];
  }

  v13 = v5 / v12;
  if (v12 <= v5)
  {
    result = (v7[3])(v7, v8 + v10, v13, v4);
    v12 = v7[1];
  }

  v14 = v12 * v13;
  v15 = v5 - v14;
  if (v15)
  {
    result = memcpy(v8, &v4[v14], v15);
    *a2 = v15;
  }

  return result;
}

void *ccxof_squeeze(void *result, unsigned int *a2, size_t a3, char *__dst)
{
  v7 = result;
  v8 = a2 + 2;
  v9 = result[1];
  v10 = *a2;
  if (!a2[1])
  {
    result = (result[4])(result, v8 + v9, v10, v8);
    LODWORD(v10) = 0;
    *a2 = 0x100000000;
  }

  if (a3)
  {
    v11 = v10;
    do
    {
      v12 = v7[1];
      if (!v11)
      {
        (v7[5])(v7, v8 + v9, v12, v8);
        v12 = v7[1];
        v11 = v12;
      }

      if (a3 >= v11)
      {
        v13 = v11;
      }

      else
      {
        v13 = a3;
      }

      result = memcpy(__dst, v8 + v12 - v11, v13);
      v11 -= v13;
      __dst += v13;
      a3 -= v13;
    }

    while (a3);
    LODWORD(v10) = v11;
  }

  *a2 = v10;
  return result;
}

uint64_t ccec_full_sub_normalized_ws(uint64_t a1, unint64_t *a2, char *a3, uint64_t a4, char *a5)
{
  v10 = *(a1 + 16);
  v11 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    ccn_set(v11, a3, a5);
    cczp_negate(a2, &a3[8 * *a2], &a5[8 * *a2]);
    result = ccn_set(v11, &a3[16 * *a2], &a5[16 * *a2]);
  }

  else
  {
    result = ccec_add_normalized_ws(a1, a2, a3, a4, a5, 1);
  }

  *(a1 + 16) = v10;
  return result;
}

uint64_t ccec_full_sub_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, char *a5)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * *a2);
  ccn_set(v8, v10, a5);
  cczp_negate(a2, &v10[8 * *a2], &a5[8 * *a2]);
  ccn_set(v8, &v10[16 * *a2], &a5[16 * *a2]);
  result = ccec_full_add_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccec_full_sub(uint64_t *a1, uint64_t a2, uint64_t a3, char *a4)
{
  v14 = timingsafe_enable_if_supported();
  v8 = cc_malloc_clear(144 * *a1);
  v9 = 18 * *a1;
  v12[0] = v8;
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v8)
  {
    ccec_full_sub_ws(v12, a1, a2, a3, a4);
    v13(v12);
    v10 = 0;
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

void *ccdigest_init_internal(uint64_t a1, void *a2)
{
  result = memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return result;
}

uint64_t ccdigest_init(uint64_t a1, void *a2)
{
  v5 = timingsafe_enable_if_supported();
  memcpy(a2 + 1, *(a1 + 40), *(a1 + 8));
  *a2 = 0;
  *(a2 + *(a1 + 8) + *(a1 + 16) + 8) = 0;
  return cc_disable_dit_with_sb(&v5);
}

uint64_t ccrng_system_init(uint64_t *a1)
{
  v6 = timingsafe_enable_if_supported();
  v5 = 0;
  v2 = ccrng(&v5);
  if (v2)
  {
    *a1 = *v2;
  }

  v3 = v5;
  cc_disable_dit_with_sb(&v6);
  return v3;
}

unint64_t ccn_sub1(uint64_t a1, void *a2, unint64_t *a3, unint64_t a4)
{
  for (; a1; --a1)
  {
    v4 = *a3++;
    v5 = v4 - a4;
    *a2++ = v5;
    a4 = *(&v5 + 1) >> 63;
  }

  return a4;
}

uint64_t cczp_sub_default_ws(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = ccn_sub_ws(a1, v11, a3, a4, a5);
  v13 = cczp_prime(a2);
  result = ccn_cond_add(v11, v12, a3, a3, v13);
  *(a1 + 16) = v10;
  return result;
}

uint64_t cczp_sub(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = timingsafe_enable_if_supported();
  cczp_n(a1);
  v10[0] = cc_malloc_clear(0);
  cczp_n(a1);
  v10[1] = 0;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    (*(*(a1 + 16) + 8))(v10, a1, a2, a3, a4);
    v11(v10);
    v8 = 0;
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t ccpad_cts1_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = *MEMORY[0x29EDCA608];
  v24 = timingsafe_enable_if_supported();
  v12 = *(a1 + 8);
  v13 = (a4 - 1) / v12;
  if (v13 >= 2)
  {
    v15 = (v13 - 1) * v12;
    (*(a1 + 24))(a2, a3);
    v14 = a4 - v15;
    a5 += v15;
    a6 += v15;
  }

  else
  {
    v14 = a4;
  }

  if (2 * v12 == v14)
  {
    (*(a1 + 24))(a2, a3, 2, a5, a6);
  }

  else
  {
    v16 = v14 - v12;
    __memcpy_chk();
    __memcpy_chk();
    ecb_from_cbc_1(a1, a2, v25, v27);
    if (v14 - v12 < v12)
    {
      memcpy(&v26[v16], &v27[v16], 2 * v12 - v14);
    }

    (*(a1 + 24))(a2, a3, 1, v26, a6);
    if (v14 != v12)
    {
      v17 = (a6 + v12);
      v18 = v27;
      v19 = v26;
      do
      {
        v21 = *v19++;
        v20 = v21;
        v22 = *v18++;
        *v17++ = v22 ^ v20;
        --v16;
      }

      while (v16);
    }
  }

  cc_disable_dit_with_sb(&v24);
  return a4;
}

uint64_t ecb_from_cbc_1(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = *MEMORY[0x29EDCA608];
  v8 = *(a1 + 8);
  v9 = MEMORY[0x2A1C7C4A8](a1);
  v11 = v13 - v10;
  cccbc_set_iv_internal(v9, v13 - v10, 0);
  ccdrbg_generate_internal(a1, a2, v11, 1, a3, a4);
  return cc_clear(v8, v11);
}

const char *ccscrypt_salsa20_8(const char *result, uint64_t a2)
{
  v61 = *MEMORY[0x29EDCA608];
  v62 = vld4q_s8(result);
  v2 = vmovl_u8(*v62.val[0].i8);
  v3 = vmovl_u16(*v2.i8);
  v4 = vmovl_high_u8(v62.val[0]);
  v5 = vmovl_high_u16(v4);
  v6 = vmovl_high_u8(v62.val[1]);
  v7 = vmovl_u8(*v62.val[1].i8);
  v8 = vorrq_s8(vshll_n_u16(*v6.i8, 8uLL), vmovl_u16(*v4.i8));
  v9 = vorrq_s8(vshll_high_n_u16(v7, 8uLL), vmovl_high_u16(v2));
  v10 = vorrq_s8(vshll_high_n_u16(v6, 8uLL), v5);
  v11 = vorrq_s8(vshll_n_u16(*v7.i8, 8uLL), v3);
  _Q16 = vmovl_u8(*v62.val[2].i8);
  _Q17 = vmovl_high_u8(v62.val[2]);
  v14 = vshll_n_s16(*_Q17.i8, 0x10uLL);
  __asm
  {
    SHLL2           V19.4S, V16.8H, #0x10
    SHLL2           V17.4S, V17.8H, #0x10
  }

  v20 = vorrq_s8(v11, vshll_n_s16(*_Q16.i8, 0x10uLL));
  v21 = vmovl_high_u8(v62.val[3]);
  v62.val[0] = vmovl_u8(*v62.val[3].i8);
  v57 = vorrq_s8(v20, vshlq_n_s32(vmovl_u16(*v62.val[0].i8), 0x18uLL));
  v58 = vorrq_s8(vorrq_s8(v9, _Q19), vshlq_n_s32(vmovl_high_u16(v62.val[0]), 0x18uLL));
  v60 = vorrq_s8(vorrq_s8(v10, _Q17), vshlq_n_s32(vmovl_high_u16(v21), 0x18uLL));
  v59 = vorrq_s8(vorrq_s8(v8, v14), vshlq_n_s32(vmovl_u16(*v21.i8), 0x18uLL));
  v23 = v58.i32[0];
  v22 = v58.i32[1];
  v25 = v57.i32[0];
  v24 = v57.i32[1];
  v27 = v59.i32[0];
  v26 = v59.i32[1];
  v29 = v60.i32[0];
  v28 = v60.i32[1];
  v31 = v60.i32[2];
  v30 = v60.i32[3];
  v32 = v59.i32[2];
  v33 = v59.i32[3];
  v35 = v57.i32[2];
  v34 = v57.i32[3];
  v36 = -8;
  v38 = v58.i32[2];
  v37 = v58.i32[3];
  do
  {
    v39 = v23 ^ __ROR4__(v29 + v25, 25);
    v40 = v27 ^ __ROR4__(v39 + v25, 23);
    v41 = v29 ^ __ROR4__(v40 + v39, 19);
    v42 = v25 ^ __ROR4__(v41 + v40, 14);
    v43 = v26 ^ __ROR4__(v24 + v22, 25);
    v44 = v28 ^ __ROR4__(v43 + v22, 23);
    v45 = v24 ^ __ROR4__(v44 + v43, 19);
    v46 = v22 ^ __ROR4__(v45 + v44, 14);
    v47 = v31 ^ __ROR4__(v38 + v32, 25);
    v48 = v35 ^ __ROR4__(v47 + v32, 23);
    v49 = v38 ^ __ROR4__(v48 + v47, 19);
    v50 = v32 ^ __ROR4__(v49 + v48, 14);
    v51 = v34 ^ __ROR4__(v33 + v30, 25);
    v52 = v37 ^ __ROR4__(v51 + v30, 23);
    v53 = v33 ^ __ROR4__(v52 + v51, 19);
    v54 = v30 ^ __ROR4__(v53 + v52, 14);
    v24 = v45 ^ __ROR4__(v51 + v42, 25);
    v35 = v48 ^ __ROR4__(v24 + v42, 23);
    v34 = v51 ^ __ROR4__(v35 + v24, 19);
    v25 = v42 ^ __ROR4__(v34 + v35, 14);
    v38 = v49 ^ __ROR4__(v46 + v39, 25);
    v37 = v52 ^ __ROR4__(v38 + v46, 23);
    v23 = v39 ^ __ROR4__(v37 + v38, 19);
    v22 = v46 ^ __ROR4__(v23 + v37, 14);
    v33 = v53 ^ __ROR4__(v50 + v43, 25);
    v27 = v40 ^ __ROR4__(v33 + v50, 23);
    v26 = v43 ^ __ROR4__(v27 + v33, 19);
    v32 = v50 ^ __ROR4__(v26 + v27, 14);
    v29 = v41 ^ __ROR4__(v54 + v47, 25);
    v28 = v44 ^ __ROR4__(v29 + v54, 23);
    v31 = v47 ^ __ROR4__(v28 + v29, 19);
    v30 = v54 ^ __ROR4__(v31 + v28, 14);
    v36 += 2;
  }

  while (v36);
  v58.i64[0] = __PAIR64__(v22, v23);
  v57.i64[0] = __PAIR64__(v24, v25);
  v59.i64[0] = __PAIR64__(v26, v27);
  v60.i64[0] = __PAIR64__(v28, v29);
  v60.i64[1] = __PAIR64__(v30, v31);
  v59.i64[1] = __PAIR64__(v33, v32);
  v57.i64[1] = __PAIR64__(v34, v35);
  v55 = a2 + 1;
  v56 = result + 1;
  v58.i64[1] = __PAIR64__(v37, v38);
  do
  {
    *(v55 - 1) = *(v56 - 1) + v57.i32[v36++];
    v55 += 4;
    v56 += 4;
  }

  while (v36 != 16);
  return result;
}

__n128 ccscrypt_blockmix_salsa8(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v3 = a3;
  v31 = *MEMORY[0x29EDCA608];
  v6 = 2 * a3;
  v7 = &a1[8 * a3];
  v8 = v7[-3];
  v27 = v7[-4];
  v28 = v8;
  result = v7[-2];
  v10 = v7[-1];
  v29 = result;
  v30 = v10;
  if (2 * a3)
  {
    v11 = 0;
    v12 = a1;
    do
    {
      for (i = 0; i != 4; ++i)
      {
        *(&v27 + i * 16) = veorq_s8(v12[i], *(&v27 + i * 16));
      }

      ccscrypt_salsa20_8(&v27, &v27);
      v14 = &a2[4 * v11];
      v15 = v28;
      *v14 = v27;
      v14[1] = v15;
      result.n128_u64[0] = v29.n128_u64[0];
      v16 = v30;
      v14[2] = v29;
      v14[3] = v16;
      ++v11;
      v12 += 4;
    }

    while (v11 != v6);
  }

  if (v3)
  {
    v17 = a2;
    v18 = a1;
    v19 = v3;
    do
    {
      v20 = *v17;
      v21 = v17[1];
      v22 = v17[3];
      v18[2] = v17[2];
      v18[3] = v22;
      *v18 = v20;
      v18[1] = v21;
      v18 += 4;
      v17 += 8;
      --v19;
    }

    while (v19);
    v23 = &a1[4 * v3];
    v24 = (a2 + 4);
    do
    {
      result = *v24;
      v25 = v24[1];
      v26 = v24[3];
      v23[2] = v24[2];
      v23[3] = v26;
      *v23 = result;
      v23[1] = v25;
      v23 += 4;
      v24 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

void *ccscrypt_romix(uint64_t a1, void *a2, uint64_t a3, char *a4, _OWORD *__dst, _OWORD *a6)
{
  v12 = a1 << 7;
  memcpy(__dst, a2, a1 << 7);
  if (a3)
  {
    v13 = a4;
    v14 = a3;
    do
    {
      memcpy(v13, __dst, v12);
      ccscrypt_blockmix_salsa8(__dst, a6, a1);
      v13 += v12;
      --v14;
    }

    while (v14);
    v15 = 0;
    do
    {
      if (v12)
      {
        v16 = &a4[(*(__dst + v12 - 64) & (a3 - 1)) * v12];
        v17 = __dst;
        v18 = v12;
        do
        {
          v19 = *v16++;
          *v17++ ^= v19;
          --v18;
        }

        while (v18);
      }

      ccscrypt_blockmix_salsa8(__dst, a6, a1);
      ++v15;
    }

    while (v15 != a3);
  }

  return memcpy(a2, __dst, v12);
}

uint64_t ccscrypt_storage_size(unint64_t a1, unsigned int a2, unsigned int a3)
{
  v3 = -7;
  if (a2 && a1)
  {
    v4 = vcnt_s8(a1);
    v4.i16[0] = vaddlv_u8(v4);
    if (0xFFFFFFE0 / (a2 << 7) >= a3 && v4.u32[0] <= 1uLL)
    {
      v6 = a2 << 7;
      v7 = v6 * a3;
      v9 = !is_mul_ok(v6, a3) || v7 < 0;
      v10 = v6 * a1;
      v12 = !is_mul_ok(v6, a1) || v10 < 0 || v9;
      v13 = v7 + (a2 << 8);
      if (__OFADD__(v7, a2 << 8))
      {
        v12 = 1;
      }

      v14 = __OFADD__(v10, v13);
      v3 = v10 + v13;
      if (v14)
      {
        v12 = 1;
      }

      if (v12)
      {
        return -12;
      }
    }
  }

  return v3;
}

rsize_t ccscrypt(uint64_t a1, uint64_t a2, size_t a3, char *a4, char *a5, unint64_t a6, unsigned int a7, unsigned int a8, unint64_t a9, char *a10)
{
  v31 = timingsafe_enable_if_supported();
  v18 = ccscrypt_storage_size(a6, a7, a8);
  if ((v18 & 0x8000000000000000) == 0)
  {
    if (a9 <= 0xFFFFFFFE0)
    {
      v30 = a5;
      v19 = a1;
      v20 = a8;
      v21 = a7 << 7;
      v22 = ccsha256_di();
      v28 = v19;
      v29 = a2;
      v23 = a2;
      v24 = v21 * a8;
      if (ccpbkdf2_hmac_internal(v22, v19, v23, a3, a4, 1uLL, v24, v30))
      {
        goto LABEL_9;
      }

      if (a8)
      {
        v25 = v30;
        do
        {
          ccscrypt_romix(a7, v25, a6, &v30[128 * a7 + 128 * a7 + v24], &v30[v24], &v30[128 * a7 + v24]);
          v25 += v21;
          --v20;
        }

        while (v20);
      }

      v26 = ccsha256_di();
      if (ccpbkdf2_hmac_internal(v26, v28, v29, v24, v30, 1uLL, a9, a10))
      {
LABEL_9:
        v18 = 0xFFFFFFFFLL;
      }

      else
      {
        cc_clear(v18, v30);
        v18 = 0;
      }
    }

    else
    {
      v18 = 4294967289;
    }
  }

  cc_disable_dit_with_sb(&v31);
  return v18;
}

void *ccsae_lexographic_order_key_internal(const void *a1, size_t a2, void *__s2, size_t a4, char *a5)
{
  if (a2 >= a4)
  {
    v10 = a4;
  }

  else
  {
    v10 = a2;
  }

  v11 = memcmp(a1, __s2, v10);
  if (v11 < 0 || !v11 && a2 <= a4)
  {
    memcpy(a5, __s2, a4);
    v12 = &a5[a4];
    v13 = a1;
    v14 = a2;
  }

  else
  {
    memcpy(a5, a1, a2);
    v12 = &a5[a2];
    v13 = __s2;
    v14 = a4;
  }

  return memcpy(v12, v13, v14);
}

uint64_t ccsae_lexographic_order_key(const void *a1, size_t a2, void *a3, size_t a4, char *a5)
{
  v11 = timingsafe_enable_if_supported();
  ccsae_lexographic_order_key_internal(a1, a2, a3, a4, a5);
  return cc_disable_dit_with_sb(&v11);
}

uint64_t ccsae_gen_keys_ws(uint64_t a1, unint64_t **a2, char *a3, unint64_t *a4)
{
  v21 = *MEMORY[0x29EDCA608];
  v8 = a2[2];
  v9 = *a2;
  v10 = **a2;
  v11 = (cczp_bitlen(*a2) + 7) >> 3;
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))(a1, v10 + 3);
  v14 = a2[4];
  v15 = ccsae_sizeof_kck_internal(a2);
  sae_construct_fixed_data(v9, v14, a4, 8 * v15 + 256, v13);
  v16 = ccsae_sizeof_kck_internal(a2);
  ccsae_ctr_hmac_fixed(v8, a3, v13, v11 + 19, v20, v16 + 32);
  ccsae_sizeof_kck_internal(a2);
  __memcpy_chk();
  v17 = ccsae_sizeof_kck_internal(a2);
  v18 = *&v20[v17 + 16];
  *(a2 + 7) = *&v20[v17];
  *(a2 + 8) = v18;
  *(a1 + 16) = v12;
  return 0;
}

uint64_t sae_construct_fixed_data(unint64_t *a1, char *__s, unint64_t *a3, __int16 a4, char *a5)
{
  v10 = *a1;
  v11 = strlen(__s);
  v12 = (cczp_bitlen(a1) + 7) >> 3;
  a5 += 2;
  memcpy(a5, __s, v11);
  v13 = &a5[v11];
  result = ccn_write_uint_padded_internal(v10, a3, v12, v13);
  *&v13[v12] = a4;
  return result;
}

uint64_t ccsae_ctr_hmac_fixed(unint64_t *a1, char *a2, _WORD *a3, int a4, char *a5, size_t a6)
{
  v20[1] = v20;
  v23 = *MEMORY[0x29EDCA608];
  v12 = *a1;
  MEMORY[0x2A1C7C4A8](a1);
  v15 = (v20 - v14);
  if ((v16 & 1) == 0)
  {
    v17 = 1;
    v21 = v13 / v12;
    do
    {
      cchmac_init_internal(a1, v15, v12, a2);
      *a3 = v17;
      cchmac_update_internal(a1, v15, a4, a3);
      cchmac_final_internal(a1, v15, __src);
      if (a6 >= v12)
      {
        v18 = v12;
      }

      else
      {
        v18 = a6;
      }

      memcpy(a5, __src, v18);
      ++v17;
      a5 += v12;
      a6 -= v12;
    }

    while (v17 <= v21);
  }

  cc_clear(((a1[1] + a1[2] + 19) & 0xFFFFFFFFFFFFFFF8) + a1[1], v15);
  return cc_clear(v12, __src);
}

uint64_t ccsae_gen_password_value_ws(uint64_t a1, unint64_t **a2, char *a3, unint64_t *a4)
{
  v17 = a2[2];
  v7 = *a2;
  v9 = *a2 + 3;
  v8 = **a2;
  v10 = (cczp_bitlen(*a2) + 7) >> 3;
  v11 = cczp_bitlen(v7);
  v19 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v8);
  v13 = (*(a1 + 24))(a1, v8 + 4);
  v14 = a2[5];
  v15 = cczp_bitlen(v7);
  sae_construct_fixed_data(v7, v14, v9, v15, v13);
  ccsae_ctr_hmac_fixed(v17, a3, v13, v10 + 27, v12, v10);
  result = ccn_read_uint_internal(v8, a4, v10, v12);
  if ((v11 & 7) != 0)
  {
    result = ccn_shift_right(v8, a4, a4, 8 - (v11 & 7));
  }

  *(a1 + 16) = v19;
  return result;
}

uint64_t ccsae_y2_from_x_ws(uint64_t a1, uint64_t *a2, void *a3, void *a4)
{
  v8 = *a2;
  v9 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  v10 = (*(a1 + 24))(a1, v8);
  v11 = (*(a1 + 24))(a1, v8);
  ccn_set(v8, v10, a4);
  v12 = cczp_prime(a2);
  ccn_sub1(v8, v11, v12, 1uLL);
  v13 = *a2;
  v14 = cczp_prime(a2);
  LODWORD(v13) = ccn_cmp_internal(v13, v10, v14) >> 31;
  ccn_mux(v8, (v13 & 1) == 0, v10, v11, v10);
  cczp_to_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_add_ws(a1, a2);
  is_quadratic_residue_ws = cczp_is_quadratic_residue_ws(a1, a2, a3);
  *(a1 + 16) = v9;
  return is_quadratic_residue_ws | ~v13;
}

uint64_t ccec_rfc6637_wrap_core_ws(uint64_t a1, uint64_t *a2, uint64_t **a3, _WORD *a4, uint64_t a5, char a6, size_t a7, void *a8, void **a9, uint64_t (***a10)(void), char *a11, uint64_t (**a12)(void, uint64_t, uint64_t *))
{
  v63 = *MEMORY[0x29EDCA608];
  v20 = (*a10)[2]();
  if (a7 > 0x24)
  {
    return 4294967289;
  }

  v21 = v20;
  if (*v20 < (*a10)[4])
  {
    return 4294967289;
  }

  v53 = a4;
  v54 = a5;
  v51 = (a10[1])();
  v23 = ccecb_context_size(v51);
  v56 = &v47;
  MEMORY[0x2A1C7C4A8](v23);
  v50 = &v47 - v24;
  v25 = **a2;
  v26 = *(a1 + 24);
  v55 = *(a1 + 16);
  v52 = v25;
  v27 = v26(a1);
  v59 = (cczp_bitlen(*a2) + 7) >> 3;
  v28 = ccecdh_compute_shared_secret_ws(a1, a3, a2, &v59, v27, a12);
  if (v28)
  {
    v22 = v28;
  }

  else
  {
    v49 = a11;
    LOBYTE(v61[0]) = a6;
    __memcpy_chk();
    v48 = a8;
    *(v61 + a7 + 1) = __rev16(pgp_key_checksum(a7, a8));
    memset(v61 + a7 + 3, 37 - a7, 37 - a7);
    ccec_rfc6637_kdf(v21, a9, *a10, v59, v27, 0x14uLL, v49, __s);
    v49 = v27;
    cc_clear(v59, v27);
    v29 = v54;
    v30 = ccec_rfc6637_wrap_pub_size(a3, v54);
    v31 = (*(a1 + 24))(a1, (2 * v52) | 1);
    v32 = v31;
    if (v29)
    {
      v33 = ccec_compact_export_pub(v31, a3);
    }

    else
    {
      v33 = ccec_export_pub(a3, v31);
    }

    v22 = v33;
    v34 = v53;
    if (!v33)
    {
      *v53 = bswap32(8 * v30) >> 16;
      memcpy(v34 + 1, v32, v30);
      v35 = v29;
      v36 = v34 + v30;
      *(v36 + 2) = 40;
      v37 = (v34 + v30 + 3);
      v38 = v61[1];
      *(v36 + 3) = v61[0];
      *(v36 + 19) = v38;
      *(v36 + 35) = v62;
      v39 = v51;
      v40 = v50;
      ccecb_init_internal(v51);
      cc_clear(*v21, __s);
      v57 = 0xA6A6A6A6A6A6A6A6;
      v58 = 0;
      v22 = ccwrap_auth_encrypt_withiv_internal(v39, v40, 0x28uLL, v61, &v58, v37, &v57);
      v41 = ccecb_context_size(v39);
      cc_clear(v41, v40);
      v42 = v58;
      *(v36 + 2) = v58;
      if ((v35 & 2) != 0)
      {
        v43 = v37 + v42;
        *v43 = a7;
        v44 = v59;
        v43[1] = v59;
        v45 = v43 + 2;
        memcpy(v43 + 2, v48, a7);
        memcpy(&v45[a7], v49, v44);
      }
    }
  }

  *(a1 + 16) = v55;
  return v22;
}

uint64_t fipspost_post_kdf_ctr(char a1)
{
  v45 = *MEMORY[0x29EDCA608];
  v43 = 0;
  v44 = 0;
  v2 = ccsha1_di();
  if (ccnistkdf_ctr_hmac_fixed(v2, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v43))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n");
    return 4294967224;
  }

  v3 = "\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n";
  if ((a1 & 0x10) == 0)
  {
    v3 = "4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n";
  }

  v5 = *v3;
  v4 = *(v3 + 1);
  if (v5 == v43 && v4 == v44)
  {
    v8 = 0;
  }

  else
  {
    v7 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA1 KAT\n", v7, "fipspost_post_kdf_ctr", 70);
    v8 = 4294967221;
  }

  v42 = 0;
  memset(__s2, 0, sizeof(__s2));
  v9 = ccsha256_di();
  if (ccnistkdf_ctr_hmac_fixed(v9, 0x20uLL, "ľ\xDB\xDD\xB6d\x93\xE7\xC7\x25\x9A;\xBB\xC2\x5F\x8C~\f\xA7\xFE(M\x92\xD4\x31\xD9\xCD\x99\xA0\xD2\x14\xAC", 0x3CuLL, "\x1Ci\xC5\x47fy\x1E1\\,\xC5\xC4~\xCD\x3F\xFA\xB8}\r'=\xD9\x20\xE7\x09\x55\x81L\x0E\xAC\xAC楔eB\xDA\x3D\xFE$\xFFbkH\x97\x89\x8C\xAF\xB7ۃ\xBD\xFF<\x14\xFAF\xFDK", 0x28uLL, __s2))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-256): %d\n");
    return 4294967224;
  }

  if ((a1 & 0x10) != 0)
  {
    v10 = "\x01\x1D\xA4v8\xD6\xC9\xC4\xD0Mt\xD4\x64\v\xBDB\xAB\x81M\x9E\x8C\xC2\x2FC&iR9\xF9k\x06\x93\xF1\x2D\x0D\xD1\x15,\xF4\x44\x30\x1D\xA4v8\xD6\xC9\xC4\xD0Mt\xD4\x64\v\xBDB\xAB\x81M\x9E\x8C\xC2\x2FC&iR9\xF9k\x06\x93\xF1\x2D\x0D\xD1\x15,\xF4\x44\x30FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-256): %d\n";
  }

  else
  {
    v10 = "\x1D\xA4v8\xD6\xC9\xC4\xD0Mt\xD4\x64\v\xBDB\xAB\x81M\x9E\x8C\xC2\x2FC&iR9\xF9k\x06\x93\xF1\x2D\x0D\xD1\x15,\xF4\x44\x30FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-256): %d\n";
  }

  if (memcmp(v10, __s2, 0x28uLL))
  {
    v11 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA256 KAT\n", v11, "fipspost_post_kdf_ctr", 123);
    v8 = 4294967221;
  }

  v39 = 0;
  v40 = 0;
  v12 = ccsha512_di();
  if (ccnistkdf_ctr_hmac_fixed(v12, 0x40uLL, "\xDD\x5D\xBDEY>\xE2\xAC\x13\x97H\xE7\x64\x5BE\x0F=/\xF2\x97\xB7\x3F\xD7\x1C\xBC\xEB\xE7\x1DAe<\x95\v\x88P\r\xE5\x32\x2D\x99\xEF\x18\xDF\xDD\x30B\x82\x94ĳ\tOL\x95C4哽\x98.\xC6\x14", 0x3CuLL, "\xB5\v\f\x96<k04\xB8\xCF\x19\xCD\x3F\\N\xBEOI\x85\xAF\f\x03\xE5\x75\xDBb\xE6\xFD\xF1\xEC\xFE\x4F(\xB9]|\xE1\x6D\xF8XC$n\x15WΕ\xBB&̚!\x97K\xBD.\xB6\x9E\x83U", 0x10uLL, &v39))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-512): %d\n");
    return 4294967224;
  }

  v13 = "\x01\xE5\x99\x3B\xF9\xBD*\xA1\xC4\x57F\x04.\x12Y\x81U";
  if ((a1 & 0x10) == 0)
  {
    v13 = "\xE5\x99\x3B\xF9\xBD*\xA1\xC4\x57F\x04.\x12Y\x81U";
  }

  v15 = *v13;
  v14 = *(v13 + 1);
  if (v15 != v39 || v14 != v40)
  {
    v17 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA512 KAT\n", v17, "fipspost_post_kdf_ctr", 174);
    v8 = 4294967221;
  }

  v37 = 0;
  v38 = 0;
  if ((a1 & 0x10) != 0)
  {
    v18 = "\x01Z\xC9\xF7\xEC\x38\xF6\x8Bv#\x94\xD3\xCA\xEC\xEB\xA5\xBB";
  }

  else
  {
    v18 = "Z\xC9\xF7\xEC\x38\xF6\x8Bv#\x94\xD3\xCA\xEC\xEB\xA5\xBB";
  }

  if ((a1 & 0x10) != 0)
  {
    v19 = "\x01h\x8B\x9E(#+vT\xF95\x93\xA5\xC3\xF085";
  }

  else
  {
    v19 = "h\x8B\x9E(#+vT\xF95\x93\xA5\xC3\xF085";
  }

  if ((a1 & 0x10) != 0)
  {
    v20 = "\x01\xFE\xA9j\xF5\x19\x2A\xD4'\x1Dy\xB9\x80\x80;W\x11";
  }

  else
  {
    v20 = "\xFE\xA9j\xF5\x19\x2A\xD4'\x1Dy\xB9\x80\x80;W\x11";
  }

  v21 = ccsha3_224_di();
  if (ccnistkdf_ctr_hmac_fixed(v21, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-224): %d\n");
    return 4294967224;
  }

  v22 = &unk_299D02308;
  if ((a1 & 0x10) == 0)
  {
    v22 = &unk_299D0231A;
  }

  v24 = *v22;
  v23 = v22[1];
  if (v24 != v37 || v23 != v38)
  {
    v26 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_224 KAT\n", v26, "fipspost_post_kdf_ctr", 213);
    v8 = 4294967221;
  }

  v27 = ccsha3_256_di();
  if (ccnistkdf_ctr_hmac_fixed(v27, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-256): %d\n");
    return 4294967224;
  }

  if (*v18 != v37 || *(v18 + 1) != v38)
  {
    v29 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_256 KAT\n", v29, "fipspost_post_kdf_ctr", 227);
    v8 = 4294967221;
  }

  v30 = ccsha3_384_di();
  if (ccnistkdf_ctr_hmac_fixed(v30, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-384): %d\n");
    return 4294967224;
  }

  if (*v19 != v37 || *(v19 + 1) != v38)
  {
    v32 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_384 KAT\n", v32, "fipspost_post_kdf_ctr", 241);
    v8 = 4294967221;
  }

  v33 = ccsha3_512_di();
  if (ccnistkdf_ctr_hmac_fixed(v33, 0x14uLL, "\xF7\x59\x17\x33\xC8\x56Y5e\x13\tu5\x19T\xD0\x15Z\xBF<", 0x3CuLL, "\x8E4~\xF5\x5D\x5F\x5E\x99\xEA\xB6\xDEpkQ\xDE\x7C\xE0\x04\xF3\x88(\x89\xE2\x59\xFFN\\\xFF\x10!g\xA5\xA4\xBDq\x15x\xD4\xCE\x17ݚ\xBEV\xE5\x1C\x1F-\xF9P\xE2\xFC\x81.\xC1\xB2\x17\xCA\x08\xD6\x014\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5B4\xFED\xB0\xD8\xC4\x1B\x93\xF5\xFA\x64\xFB\x96\xF0\x0E\x5BFIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA-1): %d\n", 0x10uLL, &v37))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed ccnistkdf_ctr_hmac_fixed (SHA3-512): %d\n");
    return 4294967224;
  }

  if (*v20 != v37 || *(v20 + 1) != v38)
  {
    v36 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed HMAC_SHA3_512 KAT\n", v36, "fipspost_post_kdf_ctr", 255);
    return 4294967221;
  }

  return v8;
}

void cczp_power_blinded_ws(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, unint64_t a5, uint64_t a6, unsigned int (**a7)(void, unint64_t, uint64_t))
{
  v21[1] = *MEMORY[0x29EDCA608];
  if (a5 <= 0x20)
  {
    v13 = 32;
  }

  else
  {
    v13 = a5;
  }

  v14 = cczp_n(a2);
  v15 = cczp_prime(a2);
  if ((ccn_cmp_internal(v14, a4, v15) & 0x80000000) != 0)
  {
    v16 = *(a1 + 16);
    v17 = (*(a1 + 24))(a1, v14);
    v18 = (*(a1 + 24))(a1, v14);
    ccn_random_bits(32, v21, a7);
    if (!v19)
    {
      v21[0] |= 0x80000000uLL;
      ccn_mux_seed_mask(v21[0]);
      ccn_divmod_ws(a1, (v13 + 63) >> 6, a6, (v13 + 63) >> 6, v17, 1uLL, v20, v21);
      if (!cczp_power_ws(a1, a2, v18, a4, v13 - 31, v17) && !cczp_power_ws(a1, a2, a3, a4, 32, v20) && !cczp_power_ws(a1, a2, v17, v18, 32, v21))
      {
        cczp_mul_ws(a1, a2);
      }
    }

    *(a1 + 16) = v16;
  }
}

uint64_t ccec_compact_import_priv_size(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  if (a1 <= 63)
  {
    if (a1 == 48)
    {
      v2 = 192;
      goto LABEL_13;
    }

    if (a1 == 56)
    {
      v2 = 224;
      goto LABEL_13;
    }

LABEL_12:
    v2 = 0;
    goto LABEL_13;
  }

  if (a1 == 64)
  {
    v2 = 256;
    goto LABEL_13;
  }

  if (a1 == 96)
  {
    v2 = 384;
    goto LABEL_13;
  }

  if (a1 != 132)
  {
    goto LABEL_12;
  }

  v2 = 521;
LABEL_13:
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t ltc_des_ecb_encrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
{
  v14 = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v6 = a2;
    do
    {
      --v6;
      v8 = *a3;
      v9 = a3[1];
      a3 += 2;
      v12 = bswap32(v8);
      v13 = bswap32(v9);
      desfunc(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

uint64_t ccn_mod_192_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v16[3] = *MEMORY[0x29EDCA608];
  v7 = a4[4];
  v16[0] = a4[3];
  v16[1] = v16[0];
  v16[2] = 0;
  v15[0] = 0;
  v15[1] = v7;
  v15[2] = v7;
  v14[0] = a4[5];
  v14[1] = v14[0];
  v14[2] = v14[0];
  v8 = ccn_add_ws(a1, 3, a3, a4, v16);
  v9 = ccn_add_ws(a1, 3, a3, a3, v15) + v8;
  v13[0] = v9 + ccn_add_ws(a1, 3, a3, a3, v14);
  v13[1] = v13[0];
  v13[2] = 0;
  LOBYTE(v9) = ccn_add_ws(a1, 3, v13, a3, v13);
  v10 = cczp_prime(a2);
  v11 = ccn_sub_ws(a1, 3, a3, v13, v10);
  return ccn_mux(3, v11 ^ 1u | v9, a3, a3, v13);
}

void *cczp_from_default_ws(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = cczp_n(a2);

  return ccn_set(v6, a3, a4);
}

uint64_t fipspost_post_rsa_enc_dec(uint64_t a1)
{
  v1 = a1;
  v30 = *MEMORY[0x29EDCA608];
  v2 = sizeof_struct_cche_cipher_plain_ctx();
  v3 = sizeof_struct_ccpolyzp_po2cyc();
  v4 = (3 * v2 + (33 * v3 - 1) / v3 * v3 + 3 * (33 * v3 - 1) / v3 * v3 - v3 * (((33 * v3 - 1) / v3) >> 1) + 8 * (v3 + v3 * (((33 * v3 - 1) / v3) >> 1)) + 23) / v3;
  v5 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(0x20uLL);
  v6 = v5 + 96;
  if (v5 < 0x120)
  {
    v6 = 384;
  }

  v7 = cc_malloc_clear(8 * (v6 + v4));
  v24[0] = v7;
  v8 = sizeof_struct_cche_cipher_plain_ctx();
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = (3 * v8 + (33 * v9 - 1) / v9 * v9 + 3 * (33 * v9 - 1) / v9 * v9 - v9 * (((33 * v9 - 1) / v9) >> 1) + 8 * (v9 + v9 * (((33 * v9 - 1) / v9) >> 1)) + 23) / v9;
  v11 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(0x20uLL);
  v12 = v11 + 96;
  if (v11 < 0x120)
  {
    v12 = 384;
  }

  v24[1] = v12 + v10;
  v25 = 0;
  v26 = cc_ws_alloc;
  v27 = cc_ws_free;
  if (!v7)
  {
    return 4294967283;
  }

  v13 = cc_ws_alloc(v24, 262);
  *v13 = 32;
  if (ccrsa_import_priv_ws(v24, v13, 1191, FIPS_RSA_OAEP_KEY))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_import_priv\n");
  }

  else
  {
    v28 = 256;
    ccrsa_ctx_public();
    v16 = v15;
    v17 = ccsha256_di();
    if (ccrsa_encrypt_oaep_ws(v24, v16, v17, &ccrng_zero, &v28, v29, 0x20uLL, &FIPS_RSA_OAEP_MESSAGE, 0, 0))
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_encrypt_oaep\n");
    }

    else
    {
      if (!fipspost_post_rsa_oaep_decrypt_ws(v24, v1, v13, v28, v29))
      {
        v18 = 0;
        goto LABEL_14;
      }

      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_rsa_oaep_consistency\n");
    }
  }

  v18 = -72;
LABEL_14:
  v25 = 0;
  v19 = v26(v24, 262);
  *v19 = 32;
  if (ccrsa_import_priv_ws(v24, v19, 1191, FIPS_RSA_OAEP_KEY))
  {
    v20 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_import_priv\n", v20, "fipspost_post_rsa_oaep_kat_ws", 135);
    v21 = -72;
  }

  else if (fipspost_post_rsa_oaep_decrypt_ws(v24, v1, v19, 0x100uLL, &FIPS_RSA_OAEP_CIPHERTEXT))
  {
    v22 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: fipspost_post_rsa_oaep_kat\n", v22, "fipspost_post_rsa_oaep_kat_ws", 146);
    v21 = -75;
  }

  else
  {
    v21 = 0;
  }

  v14 = v21 | v18;
  v25 = 0;
  v27(v24);
  return v14;
}

uint64_t fipspost_post_rsa_oaep_decrypt_ws(uint64_t a1, char a2, unint64_t *a3, unint64_t a4, uint64_t a5)
{
  v18[32] = *MEMORY[0x29EDCA608];
  v16 = 256;
  __memcpy_chk();
  if ((a2 & 0x10) != 0)
  {
    v17[0] ^= 0xAAu;
  }

  v9 = *(a1 + 16);
  v10 = ccsha256_di();
  if (ccrsa_decrypt_oaep_blinded_ws(a1, &ccrng_zero, a3, v10, &v16, v18, a4, v17, 0, 0))
  {
    v11 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: ccrsa_decrypt_oaep\n", v11, "fipspost_post_rsa_oaep_decrypt_ws", 56);
    result = 4294967224;
  }

  else
  {
    if (v16 == 32)
    {
      if (v18[0] == 0xE7E6E5E4E3E2E1E0 && v18[1] == 0xEFEEEDECEBEAE9E8 && v18[2] == 0xF7F6F5F4F3F2F1F0 && v18[3] == 0xFFFEFDFCFBFAF9F8)
      {
        result = 0;
        goto LABEL_19;
      }

      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: plaintext != message\n");
    }

    else
    {
      mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: len(plaintext) != len(message)\n");
    }

    result = 4294967221;
  }

LABEL_19:
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccsae_generate_commitment_init(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 != CCSAE_STATE_INIT)
  {
    return 4294967210;
  }

  result = 0;
  *(a1 + 50) = -1;
  *(a1 + 48) = 256;
  *(a1 + 24) = CCSAE_STATE_COMMIT_INIT | v1;
  return result;
}

uint64_t ccsae_generate_commitment_partial(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, void *a6, unint64_t a7, void *a8, unint64_t a9, char a10)
{
  v25 = timingsafe_enable_if_supported();
  v18 = *a1;
  v19 = cc_malloc_clear(104 * **a1);
  v20 = 13 * *v18;
  v23[0] = v19;
  v23[1] = v20;
  v23[2] = 0;
  v23[3] = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v19)
  {
    commitment_partial_ws = ccsae_generate_commitment_partial_ws(v23, a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    v24(v23);
  }

  else
  {
    commitment_partial_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v25);
  return commitment_partial_ws;
}

uint64_t ccsae_generate_commitment_partial_ws(uint64_t a1, uint64_t **a2, const void *a3, size_t a4, void *__s2, size_t a6, void *a7, unint64_t a8, void *a9, unint64_t a10, char a11)
{
  v52 = *MEMORY[0x29EDCA608];
  v11 = *(a2 + 24);
  if (v11 != CCSAE_STATE_COMMIT_UPDATE && v11 != CCSAE_STATE_COMMIT_INIT)
  {
    return 4294967210;
  }

  v13 = a11;
  if (!a11)
  {
    return 4294967289;
  }

  result = 4294967289;
  if (a4 <= 0x10 && a6 <= 0x10)
  {
    v17 = a8;
    if (a8 <= 0x40 && a10 <= 0x40)
    {
      v19 = *(a2 + 25);
      v20 = v19 - (*(a2 + 49) - 1);
      if (v19 == (*(a2 + 49) - 1))
      {
        return 0;
      }

      else
      {
        v46 = CCSAE_STATE_COMMIT_UPDATE;
        if (v20 <= a11)
        {
          v13 = v20;
        }

        v49 = v13;
        v23 = a2[2];
        v24 = *a2;
        v47 = a9;
        v48 = v24;
        v25 = *v24;
        v42 = a10;
        v43 = v25;
        v26 = *(a2 + 48);
        v27 = *(a2 + 50);
        v28 = ccsae_lexographic_order_key_internal(a3, a4, __s2, a6, v51);
        v45 = &v41;
        v44 = *(a1 + 16);
        MEMORY[0x2A1C7C4A8](v28);
        v30 = &v41 - v29;
        cchmac_init_internal(v23, (&v41 - v29), a6 + a4, v51);
        updated = cchmac_update_internal(v23, v30, v17, a7);
        if (v47)
        {
          updated = cchmac_update_internal(v23, v30, v42, v47);
        }

        MEMORY[0x2A1C7C4A8](updated);
        v33 = &v41 - v32;
        memcpy(&v41 - v32, v30, v34);
        v35 = v49;
        if (v49)
        {
          v36 = 0;
          v37 = a2 + 18;
          v47 = v33;
          v38 = v43;
          do
          {
            v50 = *(a2 + 49) + v36;
            memcpy(v30, v47, ((v23[1] + v23[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v23[1]);
            cchmac_update_internal(v23, v30, 1, &v50);
            cchmac_final_internal(v23, v30, &v37[5 * **a2]);
            ccsae_gen_password_value_ws(a1, a2, &v37[5 * **a2], &v37[8 * **a2]);
            ccn_mux(v38, v27 & 1, a2 + 18, &v37[8 * **a2], a2 + 18);
            v39 = **a2;
            v26 = v27 & *(&v37[5 * v39 - 1] + *v23 + 7) & 1 | v26 & ~v27;
            v40 = ccsae_y2_from_x_ws(a1, v48, &v37[v39], a2 + 18);
            v35 = v49;
            v27 &= v40;
            ++v36;
          }

          while (v36 < v49);
        }

        *(a2 + 48) = v26;
        *(a2 + 50) = v27;
        *(a2 + 49) += v35;
        *(a2 + 24) |= v46;
        *(a1 + 16) = v44;
        if (*(a2 + 49) - 1 == *(a2 + 25))
        {
          return 0;
        }

        else
        {
          return 4294967163;
        }
      }
    }
  }

  return result;
}

uint64_t ccsae_generate_commitment_finalize(void **a1, char *a2)
{
  v11 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(216 * **a1);
  v6 = 27 * *v4;
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v5)
  {
    commitment_finalize_ws = ccsae_generate_commitment_finalize_ws(v9, a1, a2);
    v10(v9);
  }

  else
  {
    commitment_finalize_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return commitment_finalize_ws;
}

uint64_t ccsae_generate_commitment_finalize_ws(uint64_t a1, uint64_t a2, char *a3)
{
  if (*(a2 + 24) != CCSAE_STATE_COMMIT_UPDATE)
  {
    return 4294967210;
  }

  if (*(a2 + 49) <= *(a2 + 25))
  {
    return 4294967164;
  }

  if (*(a2 + 50))
  {
    return 4294967211;
  }

  v7 = *a2;
  v8 = *(a2 + 48);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 3 * **a2);
  result = cczp_sqrt_ws(a1, v7);
  if (!result)
  {
    cczp_from_ws(a1, v7);
    cczp_cond_negate(v7, *(a2 + 144 + 8 * **a2) & 1 ^ v8, (a2 + 144 + 8 * **a2), (a2 + 144 + 8 * **a2));
    result = ccec_projectify_ws(a1, v7);
    if (!result)
    {
      result = ccsae_generate_commitment_shared_ws(a1, a2, v10, a3);
      if (!result)
      {
        *(a2 + 28) = 1;
        *(a2 + 24) |= CCSAE_STATE_COMMIT_GENERATED;
      }
    }
  }

  *(a1 + 16) = v9;
  return result;
}

uint64_t ccsae_generate_commitment(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, void *a6, unint64_t a7, void *a8, unint64_t a9, char *a10)
{
  v30 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = **a1;
  v19 = 13 * v18;
  v20 = 27 * v18;
  if (v19 > v20)
  {
    v20 = v19;
  }

  v21 = cc_malloc_clear(8 * v20);
  v22 = 27 * *v17;
  if (13 * *v17 > v22)
  {
    v22 = 13 * *v17;
  }

  v28[0] = v21;
  v28[1] = v22;
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v21)
  {
    v23 = *(a1 + 24);
    if (v23 == CCSAE_STATE_INIT)
    {
      *(a1 + 50) = -1;
      *(a1 + 24) = 256;
      *(a1 + 24) = CCSAE_STATE_COMMIT_INIT | v23;
      commitment_partial_ws = ccsae_generate_commitment_partial_ws(v28, a1, a2, a3, a4, a5, a6, a7, a8, a9, 40);
      if (!commitment_partial_ws)
      {
        commitment_partial_ws = ccsae_generate_commitment_finalize_ws(v28, a1, a10);
      }

      v25 = commitment_partial_ws;
    }

    else
    {
      v25 = 4294967210;
    }

    v29(v28);
  }

  else
  {
    v25 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v25;
}

uint64_t ccsae_generate_h2c_commit_finalize(void **a1, char *a2)
{
  v11 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(192 * **a1);
  v6 = 24 * *v4;
  v9[0] = v5;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = cc_ws_alloc;
  v10 = cc_ws_free;
  if (v5)
  {
    h2c_commit_finalize_ws = ccsae_generate_h2c_commit_finalize_ws(v9, a1, a2);
    v10(v9);
  }

  else
  {
    h2c_commit_finalize_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v11);
  return h2c_commit_finalize_ws;
}

uint64_t ccsae_generate_h2c_commit_init(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7)
{
  v23 = timingsafe_enable_if_supported();
  v12 = *a1;
  v13 = **a1;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v21[0] = cc_malloc_clear(8 * ((v14 + v15 + 3 * v13 * v15 - 1) / v15 + 28 * v13));
  v16 = *v12;
  v17 = sizeof_struct_cche_galois_key();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v21[1] = (v17 + v18 + 3 * v16 * v18 - 1) / v18 + 28 * v16;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (v21[0])
  {
    h2c_commit_init_ws = ccsae_generate_h2c_commit_init_ws(v21, a1, a2, a3, a4, a5);
    v22(v21);
  }

  else
  {
    h2c_commit_init_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v23);
  return h2c_commit_init_ws;
}

uint64_t ccsae_generate_h2c_commit_init_ws(uint64_t a1, uint64_t a2, const void *a3, size_t a4, void *a5, size_t a6)
{
  v29 = *MEMORY[0x29EDCA608];
  if (*(a2 + 24) != CCSAE_STATE_INIT)
  {
    return 4294967210;
  }

  v11 = *(a2 + 16);
  v12 = *a2;
  v20 = *(a2 + 8);
  v13 = **a2;
  v14 = *v11;
  memset(v25, 0, sizeof(v25));
  v24 = *(a1 + 16);
  v15 = (*(a1 + 24))(a1, v13);
  v22 = (*(a1 + 24))(a1, v13);
  v21 = (*(a1 + 24))(a1, (24 * v13 + 23) >> 3);
  v19 = (*(a1 + 24))(a1, 3 * v13);
  result = 4294967289;
  if (a4 <= 0x10 && a6 <= 0x10)
  {
    v17 = (v14 + 7) >> 3;
    ccsae_lexographic_order_key_internal(a3, a4, a5, a6, v28);
    cchmac_internal(v11, *v11, v25, a6 + a4, v28, v26);
    result = ccn_read_uint_internal(v17, v27, *v11, v26);
    if (!result)
    {
      v18 = cczp_prime(&v12[5 * v13 + 4]);
      ccn_set(v13, v15, v18);
      *v15 &= ~1uLL;
      ccn_divmod_ws(a1, v17, v27, 0, 0, v13, v22, v15);
      ccn_add1_ws(a1, v13, v22, v22, 1);
      *v21 = v12;
      result = ccec_import_pub_ws();
      if (!result)
      {
        result = ccec_validate_point_and_projectify_ws(a1, v12, v19, v21 + 2);
        if (!result)
        {
          result = ccec_mult_blinded_ws(a1, v12, a2 + 144, v22, v19, v20);
          if (!result)
          {
            *(a2 + 24) |= CCSAE_STATE_COMMIT_UPDATE;
          }
        }
      }
    }
  }

  *(a1 + 16) = v24;
  return result;
}

uint64_t ccsae_generate_h2c_commit(uint64_t **a1, const void *a2, size_t a3, void *a4, size_t a5, uint64_t a6, uint64_t a7, char *a8)
{
  v30 = timingsafe_enable_if_supported();
  v13 = **a1;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v16 = 3 * v13;
  v17 = 28 * v13;
  v18 = (v14 + v15 + v15 * 3 * v13 - 1) / v15 + 28 * v13;
  v19 = 24 * v13;
  if (v18 <= 24 * v13)
  {
    v18 = 24 * v13;
  }

  v20 = cc_malloc_clear(8 * v18);
  v28[0] = v20;
  v21 = sizeof_struct_cche_galois_key();
  v22 = sizeof_struct_ccpolyzp_po2cyc();
  v23 = (v21 + v22 + v22 * v16 - 1) / v22 + v17;
  if (v23 <= 8 * v16)
  {
    v23 = v19;
  }

  v28[1] = v23;
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v20)
  {
    h2c_commit_init_ws = ccsae_generate_h2c_commit_init_ws(v28, a1, a2, a3, a4, a5);
    if (!h2c_commit_init_ws)
    {
      h2c_commit_init_ws = ccsae_generate_h2c_commit_finalize_ws(v28, a1, a8);
    }

    v25 = h2c_commit_init_ws;
    v29(v28);
  }

  else
  {
    v25 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v25;
}

uint64_t cche_serialize_ciphertext_coeff_nbytes_internal(uint64_t a1, unsigned int *a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 2;
  }

  v4 = *(a1 + 24);
  v5 = 2;
  v6 = a2;
  do
  {
    if (a2)
    {
      v7 = *v6;
    }

    else
    {
      v7 = 0;
    }

    v5 += ccpolyzp_po2cyc_serialize_poly_nbytes(v4, v7);
    ++v6;
    --v2;
  }

  while (v2);
  return v5;
}

uint64_t cche_serialize_ciphertext_coeff_nbytes(uint64_t a1, unsigned int *a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_serialize_ciphertext_coeff_nbytes_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_serialize_ciphertext_eval_nbytes(uint64_t a1)
{
  v6 = timingsafe_enable_if_supported();
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = *(a1 + 24);
    v4 = 2;
    do
    {
      v4 += ccpolyzp_po2cyc_serialize_poly_nbytes(v3, 0);
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = 2;
  }

  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t cche_serialize_seeded_ciphertext_coeff_nbytes(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccpolyzp_po2cyc_serialize_poly_nbytes(*(a1 + 24), 0);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_serialize_seeded_ciphertext_eval_nbytes(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccpolyzp_po2cyc_serialize_poly_nbytes(*(a1 + 24), 0);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_serialize_ciphertext_coeff_max_nskip_lsbs(_DWORD *a1, unsigned int *a2)
{
  v5 = timingsafe_enable_if_supported();
  cche_serialize_ciphertext_coeff_max_nskip_lsbs_internal(a1, a2);
  return cc_disable_dit_with_sb(&v5);
}

uint64_t cche_serialize_ciphertext_coeff_max_nskip_lsbs_internal(_DWORD *a1, unsigned int *a2)
{
  if (a2[2])
  {
    v4 = 0;
    do
    {
      a1[v4++] = 0;
      v5 = a2[2];
    }

    while (v4 < v5);
  }

  else
  {
    LODWORD(v5) = 0;
  }

  result = cche_ciphertext_fresh_npolys();
  if (v5 == result)
  {
    v7 = *a2;
    *a1 = *(*a2 + 20);
    a1[1] = *(v7 + 24);
  }

  return result;
}

uint64_t cche_serialize_ciphertext_coeff(uint64_t a1, _WORD *a2, uint64_t *a3, unsigned int *a4)
{
  v14 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v12[0] = cc_malloc_clear(8 * v8);
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v12[1] = v9;
  v12[2] = 0;
  v12[3] = cc_ws_alloc;
  v13 = cc_ws_free;
  if (v12[0])
  {
    v10 = cche_serialize_ciphertext_coeff_ws(v12, a1, a2, a3, a4);
    v13(v12);
  }

  else
  {
    v10 = 4294967283;
  }

  cc_disable_dit_with_sb(&v14);
  return v10;
}

uint64_t cche_serialize_ciphertext_eval(uint64_t a1, _WORD *a2, uint64_t *a3)
{
  v12 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[0] = cc_malloc_clear(8 * v6);
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    v8 = cche_serialize_ciphertext_coeff_ws(v10, a1, a2, a3, 0);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t cche_deserialize_ciphertext_coeff(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7, unsigned int *a8)
{
  v30 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(a4);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v28[0] = cc_malloc_clear(8 * v16);
  cche_param_ctx_polynomial_degree(a4);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v28[1] = v17;
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v20 = cche_param_ctx_chain_const(a4);
    v21 = *v20;
    v22 = sizeof_struct_ccpolyzp_po2cyc_ctx();
    if (v21 >= 0x80)
    {
      v23 = 128;
    }

    else
    {
      v23 = v21;
    }

    v24 = &v20[2 * (((v22 + 7) >> 3) + 2 * (v21 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v23) + 6) * (v20[1] - a5) + 2];
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 16) = 1;
    *(a1 + 24) = v24;
    v25 = (a1 + 24);
    if (a6 >= 2)
    {
      v26 = 1;
      do
      {
        v27 = *v25;
        v25[((v27[1] * *v27) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v26++] = v24;
      }

      while (a6 != v26);
    }

    v18 = cche_deserialize_ciphertext_coeff_ws(v28, a1, a2, a3, a8);
    *(a1 + 16) = a7;
    v29(v28);
  }

  else
  {
    v18 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v18;
}

uint64_t cche_deserialize_ciphertext_eval(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, int a5, unsigned int a6, uint64_t a7)
{
  v28 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(a4);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v26[0] = cc_malloc_clear(8 * v14);
  cche_param_ctx_polynomial_degree(a4);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v26[1] = v15;
  v26[2] = 0;
  v26[3] = cc_ws_alloc;
  v27 = cc_ws_free;
  if (v26[0])
  {
    v18 = cche_param_ctx_chain_const(a4);
    v19 = *v18;
    v25 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v19 >= 0x80)
    {
      v20 = 128;
    }

    else
    {
      v20 = v19;
    }

    v21 = &v18[2 * (v25 + 2 * (v19 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v20) + 6) * (v18[1] - a5) + 2];
    *a1 = a4;
    *(a1 + 8) = a6;
    *(a1 + 16) = 1;
    *(a1 + 24) = v21;
    v22 = (a1 + 24);
    if (a6 >= 2)
    {
      v23 = 1;
      do
      {
        v24 = *v22;
        v22[((v24[1] * *v24) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v23++] = v21;
      }

      while (a6 != v23);
    }

    v16 = cche_deserialize_ciphertext_coeff_ws(v26, a1, a2, a3, 0);
    *(a1 + 16) = a7;
    v27(v26);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v28);
  return v16;
}

uint64_t cche_serialize_seeded_ciphertext_coeff(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[0] = cc_malloc_clear(8 * v6);
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    v8 = ccpolyzp_po2cyc_serialize_poly_ws(v10, a1, a2, 0, a3 + 3);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t cche_serialize_seeded_ciphertext_eval(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v12 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[0] = cc_malloc_clear(8 * v6);
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    v8 = ccpolyzp_po2cyc_serialize_poly_ws(v10, a1, a2, 0, a3 + 3);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

unint64_t CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(unint64_t a1)
{
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v3 = v2;
  v4 = CCPOLYZP_PO2CYC_RANDOM_UNIFORM_WORKSPACE_N(a1);
  v5 = sizeof_struct_ccpolyzp_po2cyc_block_rng_state();
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  if (v3 <= (v5 + v6 - 1) / v6 + v4)
  {
    return (v5 + v6 - 1) / v6 + v4;
  }

  else
  {
    return v3;
  }
}

uint64_t cche_deserialize_seeded_ciphertext_coeff(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v31 = timingsafe_enable_if_supported();
  v14 = cche_param_ctx_polynomial_degree(a5);
  v15 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v14);
  v29[0] = cc_malloc_clear(8 * v15);
  v16 = cche_param_ctx_polynomial_degree(a5);
  v29[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v16);
  v29[2] = 0;
  v29[3] = cc_ws_alloc;
  v30 = cc_ws_free;
  if (v29[0])
  {
    v19 = cche_param_ctx_chain_const(a5);
    v20 = *v19;
    v28 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v20 >= 0x80)
    {
      v21 = 128;
    }

    else
    {
      v21 = v20;
    }

    v22 = &v19[2 * (v28 + 2 * (v20 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v21) + 6) * (v19[1] - a6) + 2];
    v23 = cche_ciphertext_fresh_npolys();
    *a1 = a5;
    *(a1 + 8) = v23;
    *(a1 + 16) = 1;
    *(a1 + 24) = v22;
    v24 = (a1 + 24);
    if (v23 >= 2)
    {
      v25 = v23;
      for (i = 1; i != v25; ++i)
      {
        v27 = *v24;
        v24[((v27[1] * *v27) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v22;
      }
    }

    v17 = cche_deserialize_seeded_ciphertext_coeff_ws(v29, a1, a2, a3, a4);
    *(a1 + 16) = a7;
    v30(v29);
  }

  else
  {
    v17 = 4294967283;
  }

  cc_disable_dit_with_sb(&v31);
  return v17;
}

uint64_t cche_deserialize_seeded_ciphertext_eval(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7)
{
  v30 = timingsafe_enable_if_supported();
  v13 = cche_param_ctx_polynomial_degree(a5);
  v14 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v13);
  v28[0] = cc_malloc_clear(8 * v14);
  v15 = cche_param_ctx_polynomial_degree(a5);
  v28[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v15);
  v28[2] = 0;
  v28[3] = cc_ws_alloc;
  v29 = cc_ws_free;
  if (v28[0])
  {
    v18 = cche_param_ctx_chain_const(a5);
    v19 = *v18;
    v27 = (sizeof_struct_ccpolyzp_po2cyc_ctx() + 7) >> 3;
    if (v19 >= 0x80)
    {
      v20 = 128;
    }

    else
    {
      v20 = v19;
    }

    v21 = &v18[2 * (v27 + 2 * (v19 + ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v20) + 6) * (v18[1] - a6) + 2];
    v22 = cche_ciphertext_fresh_npolys();
    *a1 = a5;
    *(a1 + 8) = v22;
    *(a1 + 16) = 1;
    *(a1 + 24) = v21;
    v23 = (a1 + 24);
    if (v22 >= 2)
    {
      v24 = v22;
      for (i = 1; i != v24; ++i)
      {
        v26 = *v23;
        v23[((v26[1] * *v26) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * i] = v21;
      }
    }

    v16 = cche_deserialize_seeded_ciphertext_eval_ws(v28, a1, a2, a3);
    *(a1 + 16) = a7;
    v29(v28);
  }

  else
  {
    v16 = 4294967283;
  }

  cc_disable_dit_with_sb(&v30);
  return v16;
}

uint64_t cche_bytes_to_coeffs(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccpolyzp_po2cyc_bytes_to_coeffs(a1, a2, a3, a4, a5, 0);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t cche_coeffs_to_bytes(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = ccpolyzp_po2cyc_coeffs_to_bytes(a1, a2, a3, a4, a5, 0);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccn_recode_jsf_init(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = 0;
  *(result + 8) = a3;
  *(result + 16) = a4;
  v5 = 1;
  do
  {
    v6 = v5;
    *(result + v4) = (8 * ((*(a3 + 8 * ((a2 - 1) >> 6)) >> ((a2 - 1) & 0x3F)) & 1)) | (4 * ((*(a3 + 8 * ((a2 - 2) >> 6)) >> ((a2 - 2) & 0x3F)) & 1)) | (2 * ((*(a3 + 8 * ((a2 - 3) >> 6)) >> ((a2 - 3) & 0x3F)) & 1)) | (*(a3 + 8 * ((a2 - 4) >> 6)) >> ((a2 - 4) & 0x3F)) & 1;
    a3 = a4;
    v4 = 1;
    v5 = 0;
  }

  while ((v6 & 1) != 0);
  return result;
}

uint64_t ccn_recode_jsf_column(uint64_t result, unint64_t a2, uint64_t a3)
{
  v3 = 0;
  if ((*result & 0x20) != 0)
  {
    v4 = *result & 0x1F ^ 0x1F;
  }

  else
  {
    v4 = *result & 0x1F;
  }

  v12[0] = v4;
  if ((*(result + 1) & 0x20) != 0)
  {
    v5 = *(result + 1) & 0x1F ^ 0x1F;
  }

  else
  {
    v5 = *(result + 1) & 0x1F;
  }

  v12[1] = v5;
  v11 = *(result + 8);
  v6 = &v11;
  v7 = 1;
  do
  {
    v8 = v7;
    if (a2 < 5)
    {
      LOBYTE(v9) = 0;
    }

    else
    {
      v9 = (*(*v6 + 8 * ((a2 - 5) >> 6)) >> ((a2 - 5) & 0x3F)) & 1;
    }

    if (v12[v3] >= F_2_2_11[v12[v3 ^ 1]])
    {
      LOBYTE(v9) = v9 | 0x20;
      if ((*(result + v3) & 0x20) != 0)
      {
        v10 = -1;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 0;
    }

    v7 = 0;
    *(a3 + 4 * v3) = v10;
    *(result + v3) = v9 ^ (2 * *(result + v3));
    v6 = (&v11 + 8);
    v3 = 1;
  }

  while ((v8 & 1) != 0);
  return result;
}

uint64_t ccn_recode_jsf_direction(unsigned int *a1)
{
  result = *a1;
  if (result != -1)
  {
    if (!result && a1[1] == -1)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  return result;
}

uint64_t ccdes_key_is_weak(uint64_t a1, uint64_t a2)
{
  v8 = timingsafe_enable_if_supported();
  if (a2 == 8)
  {
    v4 = &weak_keys;
    v5 = 16;
    while (cc_cmp_safe_internal(8, v4, a1))
    {
      v4 += 8;
      if (!--v5)
      {
        v6 = 0;
        goto LABEL_7;
      }
    }
  }

  v6 = 0xFFFFFFFFLL;
LABEL_7:
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t ccdes_key_set_odd_parity(_BYTE *a1, uint64_t a2)
{
  for (i = timingsafe_enable_if_supported(); a2; --a2)
  {
    *a1 = odd_parity[*a1];
    ++a1;
  }

  return cc_disable_dit_with_sb(&i);
}

__int128 *ccsha512_ltc_compress(__int128 *result, uint64_t a2, uint64_t a3)
{
  for (i = *MEMORY[0x29EDCA608]; a2; --a2)
  {
    v3 = 0;
    v4 = result[1];
    v41 = *result;
    v42 = v4;
    v5 = result[3];
    v43 = result[2];
    v44 = v5;
    do
    {
      v38[v3] = bswap64(*(a3 + v3 * 8));
      ++v3;
    }

    while (v3 != 16);
    v6 = v38[0];
    v7 = &v40;
    v8 = 64;
    do
    {
      v9 = *(v7 - 15);
      *v7 = (__ROR8__(*(v7 - 2), 19) ^ __ROR8__(*(v7 - 2), 61) ^ (*(v7 - 2) >> 6)) + *(v7 - 7) + v6 + (__ROR8__(v9, 1) ^ __ROR8__(v9, 8) ^ (v9 >> 7));
      ++v7;
      v6 = v9;
      --v8;
    }

    while (v8);
    v10 = *(&v44 + 1);
    v11 = v44;
    v13 = *(&v43 + 1);
    v12 = v43;
    v15 = *(&v41 + 1);
    v14 = v41;
    v16 = &xmmword_299CF5AC0;
    v17 = -8;
    v18 = &v39;
    v20 = *(&v42 + 1);
    v19 = v42;
    do
    {
      v21 = (__ROR8__(v12, 14) ^ __ROR8__(v12, 18) ^ __ROR8__(v12, 41)) + v10 + *(v16 - 4) + *(v18 - 4) + (v13 & v12 | v11 & ~v12);
      v22 = v20 + v21;
      v23 = v21 + (__ROR8__(v14, 28) ^ __ROR8__(v14, 34) ^ __ROR8__(v14, 39)) + ((v15 | v14) & v19 | v15 & v14);
      v24 = (v12 & v22 | v13 & ~v22) + v11 + *(v16 - 3) + *(v18 - 3) + (__ROR8__(v22, 14) ^ __ROR8__(v22, 18) ^ __ROR8__(v22, 41));
      v25 = v24 + v19;
      v26 = (__ROR8__(v23, 28) ^ __ROR8__(v23, 34) ^ __ROR8__(v23, 39)) + ((v23 | v14) & v15 | v23 & v14) + v24;
      v27 = *(v16 - 2) + v13 + *(v18 - 2) + (v22 & v25 | v12 & ~v25) + (__ROR8__(v25, 14) ^ __ROR8__(v25, 18) ^ __ROR8__(v25, 41));
      v28 = v27 + v15;
      v29 = (__ROR8__(v26, 28) ^ __ROR8__(v26, 34) ^ __ROR8__(v26, 39)) + ((v26 | v23) & v14 | v26 & v23) + v27;
      v30 = *(v16 - 1) + v12 + *(v18 - 1) + (v25 & v28 | v22 & ~v28) + (__ROR8__(v28, 14) ^ __ROR8__(v28, 18) ^ __ROR8__(v28, 41));
      v31 = v30 + v14;
      v32 = (__ROR8__(v29, 28) ^ __ROR8__(v29, 34) ^ __ROR8__(v29, 39)) + ((v29 | v26) & v23 | v29 & v26) + v30;
      v33 = *v16 + *v18 + v22 + (v28 & v31 | v25 & ~v31) + (__ROR8__(v31, 14) ^ __ROR8__(v31, 18) ^ __ROR8__(v31, 41));
      v10 = v33 + v23;
      v20 = (__ROR8__(v32, 28) ^ __ROR8__(v32, 34) ^ __ROR8__(v32, 39)) + ((v32 | v29) & v26 | v32 & v29) + v33;
      v34 = *(v16 + 1) + v18[1] + v25 + (v31 & v10 | v28 & ~v10) + (__ROR8__(v10, 14) ^ __ROR8__(v10, 18) ^ __ROR8__(v10, 41));
      v11 = v34 + v26;
      v19 = (__ROR8__(v20, 28) ^ __ROR8__(v20, 34) ^ __ROR8__(v20, 39)) + ((v20 | v32) & v29 | v20 & v32) + v34;
      v35 = *(v16 + 2) + v18[2] + v28 + (v10 & v11 | v31 & ~v11) + (__ROR8__(v11, 14) ^ __ROR8__(v11, 18) ^ __ROR8__(v11, 41));
      v13 = v35 + v29;
      v15 = (__ROR8__(v19, 28) ^ __ROR8__(v19, 34) ^ __ROR8__(v19, 39)) + ((v19 | v20) & v32 | v19 & v20) + v35;
      v36 = *(v16 + 3) + v18[3] + v31 + (v11 & v13 | v10 & ~v13) + (__ROR8__(v13, 14) ^ __ROR8__(v13, 18) ^ __ROR8__(v13, 41));
      v12 = v36 + v32;
      v14 = (__ROR8__(v15, 28) ^ __ROR8__(v15, 34) ^ __ROR8__(v15, 39)) + ((v15 | v19) & v20 | v15 & v19) + v36;
      v17 += 8;
      v18 += 8;
      v16 += 4;
    }

    while (v17 < 0x48);
    v37 = 0;
    *&v44 = v11;
    *(&v44 + 1) = v10;
    *&v43 = v12;
    *(&v43 + 1) = v13;
    *&v41 = v14;
    *(&v41 + 1) = v15;
    *&v42 = v19;
    *(&v42 + 1) = v20;
    do
    {
      result[v37] = vaddq_s64(*(&v41 + v37 * 16), result[v37]);
      ++v37;
    }

    while (v37 != 4);
    a3 += 128;
  }

  return result;
}

uint64_t ccsha512_final(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x2A1C7C4A8](a1);
  v9 = (v22 - v8);
  memcpy(v22 - v8, v11, v10 + 4);
  v12 = v9 + v6 + 8;
  v13 = *&v12[v5];
  *v9 += (8 * v13);
  *&v12[v5] = v13 + 1;
  v12[v13] = 0x80;
  v14 = *&v12[v5];
  if (v5 - 16 < v14)
  {
    while (v5 > v14)
    {
      *&v12[v5] = v14 + 1;
      v12[v14] = 0;
      v14 = *&v12[v5];
    }

    (*(a1 + 48))(v9 + 1, 1);
    LODWORD(v14) = 0;
    v6 = *(a1 + 8);
    v5 = *(a1 + 16);
    *(v9 + v6 + v5 + 8) = 0;
  }

  v15 = v9 + v6 + 8;
  v16 = (v15 + v5);
  if (v5 - 8 > v14)
  {
    v17 = v14;
    do
    {
      *v16 = v14 + 1;
      *(v15 + v17) = 0;
      v17 = *v16;
      LODWORD(v14) = *v16;
    }

    while (v5 - 8 > v17);
  }

  *(v16 - 1) = bswap64(*v9);
  (*(a1 + 48))(v9 + 1, 1);
  if (*a1 >= 8uLL)
  {
    v18 = 0;
    v19 = 0;
    v20 = 1;
    do
    {
      *(a3 + v18) = bswap64(v9[v19 + 1]);
      v19 = v20++;
      v18 += 8;
    }

    while (v19 < *a1 >> 3);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

uint64_t ccn_cond_add(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  mask = ccn_mux_next_mask();
  v11 = __ROR8__(0x5555555555555555, a2 | (2 * mask));
  v12 = 0;
  if (a1)
  {
    v13 = 0;
    do
    {
      v15 = *a4++;
      v14 = v15;
      v17 = *a5++;
      v16 = v17;
      v18 = __CFADD__(v12, v14);
      v19 = v12 + v14;
      if (v18)
      {
        v13 = 1;
      }

      v18 = __CFADD__(v19, v16);
      v20 = v19 + v16;
      if (v18)
      {
        v12 = v13 + 1;
      }

      else
      {
        v12 = v13;
      }

      v21 = v14 ^ v20;
      v22 = v14 ^ mask;
      *a3 = v22;
      *a3++ = v21 & v11 ^ v21 & 0x5555555555555555 ^ v22 ^ mask;
      v13 = 0;
      --a1;
    }

    while (a1);
  }

  return v12 & a2;
}

uint64_t ccz_cmp(uint64_t a1, uint64_t a2)
{
  v12 = timingsafe_enable_if_supported();
  v4 = ccz_sign(a1);
  if (v4 == ccz_sign(a2))
  {
    v5 = ccz_n(a1);
    v6 = *(a1 + 24);
    v7 = ccz_n(a2);
    v8 = ccn_cmpn_internal(v5, v6, v7, *(a2 + 24));
    v9 = ccz_sign(a1) * v8;
  }

  else if (ccz_n(a2) || ccz_n(a1))
  {
    v10 = ccz_sign(a1);
    if (v10 < ccz_sign(a2))
    {
      v9 = 0xFFFFFFFFLL;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    v9 = 0;
  }

  cc_disable_dit_with_sb(&v12);
  return v9;
}

uint64_t ccpost_digest_message(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x29EDCA608];
  v4 = (*(a1 + 8))();
  ccdigest(v4, *(a1 + 24), *(a1 + 16), v7);
  v5 = cc_cmp_safe(*v4, v7, *(a1 + 32));
  return ccpost_report(a1, a2, v5);
}

void *ccdes_cbc_encrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cbc_encrypt(cbc_des_encrypt, v0);
  return cbc_des_encrypt;
}

void *ccdes_cbc_decrypt_mode()
{
  v0 = ccdes_ecb_decrypt_mode();
  ccmode_factory_cbc_decrypt(cbc_des_decrypt, v0);
  return cbc_des_decrypt;
}

void *ccdes_cfb_encrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb_encrypt(cfb_des_encrypt, v0);
  return cfb_des_encrypt;
}

void *ccdes_cfb_decrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb_decrypt(cfb_des_decrypt, v0);
  return cfb_des_decrypt;
}

void *ccdes_cfb8_encrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb8_encrypt(cfb8_des_encrypt, v0);
  return cfb8_des_encrypt;
}

void *ccdes_cfb8_decrypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_cfb8_decrypt(cfb8_des_decrypt, v0);
  return cfb8_des_decrypt;
}

void *ccdes_ctr_crypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_ctr_crypt(ctr_des, v0);
  return ctr_des;
}

void *ccdes_ofb_crypt_mode()
{
  v0 = ccdes_ecb_encrypt_mode();
  ccmode_factory_ofb_crypt(ofb_des, v0);
  return ofb_des;
}

void *ccdes3_cbc_encrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cbc_encrypt(cbc_des3_encrypt, v0);
  return cbc_des3_encrypt;
}

void *ccdes3_cbc_decrypt_mode()
{
  v0 = ccdes3_ecb_decrypt_mode();
  ccmode_factory_cbc_decrypt(cbc_des3_decrypt, v0);
  return cbc_des3_decrypt;
}

void *ccdes3_cfb_encrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb_encrypt(cfb_des3_encrypt, v0);
  return cfb_des3_encrypt;
}

void *ccdes3_cfb_decrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb_decrypt(cfb_des3_decrypt, v0);
  return cfb_des3_decrypt;
}

void *ccdes3_cfb8_encrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb8_encrypt(cfb8_des3_encrypt, v0);
  return cfb8_des3_encrypt;
}

void *ccdes3_cfb8_decrypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_cfb8_decrypt(cfb8_des3_decrypt, v0);
  return cfb8_des3_decrypt;
}

void *ccdes3_ctr_crypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_ctr_crypt(ctr_des3, v0);
  return ctr_des3;
}

void *ccdes3_ofb_crypt_mode()
{
  v0 = ccdes3_ecb_encrypt_mode();
  ccmode_factory_ofb_crypt(ofb_des3, v0);
  return ofb_des3;
}

uint64_t ccder_blob_decode_uint64(unsigned __int8 **a1, unint64_t *a2)
{
  if (a2)
  {
    *a2 = 0;
  }

  v7 = 0;
  v8 = 0;
  result = ccder_blob_decode_range(a1, 2, &v7);
  if (result)
  {
    v4 = v7;
    if (v7 != v8 && (*v7 & 0x80000000) == 0)
    {
      if (*v7 || (v4 = (v7 + 1), v7 + 1 == v8) || *v4 < 0)
      {
        v7 = v4;
        if ((v8 - v4) <= 8)
        {
          if (v4 == v8)
          {
            v5 = 0;
            if (!a2)
            {
              return 1;
            }
          }

          else
          {
            v5 = 0;
            do
            {
              v6 = *v4++;
              v5 = v6 | (v5 << 8);
            }

            while (v4 != v8);
            if (!a2)
            {
              return 1;
            }
          }

          *a2 = v5;
          return 1;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t ccdigest_final_64le(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21[1] = *MEMORY[0x29EDCA608];
  v6 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = a2 + v6 + 8;
  if (v5 <= *(v7 + v5))
  {
    *(v7 + v5) = 0;
  }

  MEMORY[0x2A1C7C4A8](a1);
  v9 = (v21 - v8);
  memcpy(v21 - v8, v11, v10 + 12);
  v12 = v9 + v6;
  v13 = v9 + v6 + 8;
  v14 = (v13 + v5);
  v15 = *(v13 + v5);
  *v9 += (8 * v15);
  *(v13 + v5) = v15 + 1;
  *(v13 + v15) = 0x80;
  v16 = *(v13 + v5);
  if (v16 < 0x39)
  {
    if (v16 == 56)
    {
      goto LABEL_9;
    }
  }

  else
  {
    if (v16 <= 0x3F)
    {
      do
      {
        *v14 = v16 + 1;
        *(v13 + v16) = 0;
        v16 = *v14;
      }

      while (v16 < 0x40);
    }

    (*(a1 + 48))(v9 + 1, 1);
    v16 = 0;
    v12 = v9 + *(a1 + 8);
    v13 = (v12 + 8);
    v14 = &v12[*(a1 + 16) + 8];
    *v14 = 0;
  }

  do
  {
    *v14 = v16 + 1;
    *(v13 + v16) = 0;
    v16 = *v14;
  }

  while (v16 < 0x38);
LABEL_9:
  *(v12 + 8) = *v9;
  (*(a1 + 48))(v9 + 1, 1);
  if (*a1 >= 4uLL)
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      *(a3 + v17) = *(v9 + v18 + 2);
      v18 = v19++;
      v17 += 4;
    }

    while (v18 < *a1 >> 2);
  }

  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v9);
}

uint64_t ccecies_encrypt_gcm_from_shared_secret(void *a1, uint64_t a2, uint64_t *a3, size_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, rsize_t *a12, char *a13)
{
  v26 = timingsafe_enable_if_supported();
  v19 = ccecies_pub_key_size(a3, a2);
  v20 = ccecies_encrypt_gcm_ciphertext_size(a3, a2, a6);
  v21 = *a12;
  if ((*(a2 + 32) & 0x21) == 0)
  {
    v22 = 4294967291;
    goto LABEL_10;
  }

  if (v20 > v21 || *a1 != *a3)
  {
    v22 = 4294967289;
LABEL_10:
    cc_clear(v21, a13);
    goto LABEL_6;
  }

  v22 = ccecies_encrypt_gcm_from_shared_secret_composite(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a13, &a13[v19], &a13[v19 + a6]);
  if (v22)
  {
    v21 = *a12;
    goto LABEL_10;
  }

  *a12 = v20;
LABEL_6:
  cc_disable_dit_with_sb(&v26);
  return v22;
}

unint64_t ccn_cond_shift_right_carry(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char a5, unint64_t a6)
{
  result = ccn_mux_next_mask();
  v13 = __ROR8__(0x5555555555555555, a2 | (2 * result));
  if (a1)
  {
    v14 = -a1;
    v15 = 8 * a1 - 8;
    v16 = (a4 + v15);
    v17 = (a3 + v15);
    do
    {
      v18 = 2 * a6;
      v19 = a6 >> a5;
      v20 = *v16--;
      a6 = v20;
      v21 = (v18 << ~a5) | (v20 >> a5);
      if ((a5 & 0x40) != 0)
      {
        v21 = v19;
      }

      *v17 = a6 ^ result;
      *v17-- = (a6 ^ v21) & v13 ^ (a6 ^ v21) & 0x5555555555555555 ^ a6 ^ result ^ result;
    }

    while (!__CFADD__(v14++, 1));
  }

  return result;
}

uint64_t ccss_shamir_share_bag_recover_secret(unsigned int **a1, char *a2, unint64_t a3)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v11 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v11 = 1;
  }

  v48 = v11;
  v12 = cczp_n((*a1 + 2));
  v13 = 15 * v12;
  v44[0] = cc_malloc_clear(120 * v12);
  v44[1] = v13;
  v45 = 0;
  v46 = cc_ws_alloc;
  v47 = cc_ws_free;
  if (!v44[0])
  {
    v16 = 4294967283;
    goto LABEL_30;
  }

  v14 = *a1;
  v15 = **a1;
  if (*(a1 + 2) < v15)
  {
    v16 = 4294967175;
    cc_ws_free(v44);
    goto LABEL_30;
  }

  v39 = a3;
  v40 = a2;
  v17 = cczp_n((v14 + 2));
  v18 = cc_ws_alloc(v44, v17);
  v19 = v46(v44, v17);
  v46(v44, v17);
  v41 = v46(v44, v17);
  v20 = v46(v44, v17);
  v42 = v46(v44, v17);
  ccn_seti(v17, v42, 0);
  v21 = **a1;
  v22 = v21 - 1;
  if (v21 != 1 && csss_shamir_share_bag_can_recover_secret(a1))
  {
    v38 = v17;
    v43 = *a1;
    v23 = cczp_n((*a1 + 2));
    v37 = v45;
    v24 = v46(v44, v23);
    v25 = ccss_shamir_share_bag_copy_ith_share_x(a1, 0);
    ccn_seti(v23, v18, v25);
    v26 = 1;
    do
    {
      v27 = ccss_shamir_share_bag_copy_ith_share_x(a1, v26);
      ccn_seti(v23, v24, v27);
      cczp_mul_ws(v44, (v43 + 2));
      ++v26;
    }

    while (v26 <= v22);
    if (v22)
    {
      cczp_negate((v43 + 2), v18, v18);
    }

    v17 = v38;
    v45 = v37;
  }

  if (v15)
  {
    v28 = 0;
LABEL_18:
    v29 = ccss_shamir_share_bag_copy_ith_share_x(a1, v28);
    ccss_shamir_share_bag_ith_share_y(a1, v28);
    v30 = v17;
    ccn_seti(v17, v19, 1);
    v31 = 0;
    while (1)
    {
      v32 = ccss_shamir_share_bag_copy_ith_share_x(a1, v31);
      if (v29 <= v32)
      {
        if (v29 >= v32)
        {
          if (v28 != v31)
          {
            v16 = 4294967172;
            goto LABEL_29;
          }

          goto LABEL_25;
        }

        v33 = v32;
        v34 = cczp_prime((v14 + 2));
        ccn_sub1(v30, v20, v34, v33 - v29);
      }

      else
      {
        ccn_seti(v30, v20, v29 - v32);
      }

      cczp_mul_ws(v44, (v14 + 2));
LABEL_25:
      if (v15 == ++v31)
      {
        v17 = v30;
        ccn_seti(v30, v41, v29);
        cczp_mul_ws(v44, (v14 + 2));
        cczp_inv_ws(v44, (v14 + 2));
        cczp_mul_ws(v44, (v14 + 2));
        cczp_mul_ws(v44, (v14 + 2));
        cczp_add_ws(v44, (v14 + 2));
        if (++v28 != v15)
        {
          goto LABEL_18;
        }

        break;
      }
    }
  }

  v35 = ccn_write_uint_padded_ct_internal(v17, v42, v39, v40);
  v16 = v35 & (v35 >> 31);
LABEL_29:
  v45 = 0;
  v47(v44);
LABEL_30:
  cc_disable_dit(&v48);
  return v16;
}

uint64_t ccsrp_generate_H_AMK_ws(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v16[1] = *MEMORY[0x29EDCA608];
  v6 = *a2;
  MEMORY[0x2A1C7C4A8](a1);
  v8 = (v16 - v7);
  ccdigest_init_internal(v6, (v16 - v7));
  v9 = *(a1 + 16);
  ccsrp_digest_update_ccn_ws(a1, a2, v8, a3, (*(a2 + 24) >> 10) & 1);
  v10 = ccsrp_session_size(a2);
  v11 = ccdh_gp_n(*(a2 + 8));
  ccdigest_update_internal(v6, v8, v10, (a2 + 32 + 32 * v11 + 2 * **a2));
  session_key_length = ccsrp_get_session_key_length(a2);
  v13 = ccdh_gp_n(*(a2 + 8));
  ccdigest_update_internal(v6, v8, session_key_length, (a2 + 32 + 32 * v13));
  v14 = ccdh_gp_n(*(a2 + 8));
  (v6[7])(v6, v8, a2 + 32 + 32 * v14 + 3 * **a2);
  result = cc_clear(v6[1] + v6[2] + 12, v8);
  *(a1 + 16) = v9;
  return result;
}

uint64_t ccn_n(unint64_t a1, uint64_t *a2)
{
  v2 = 0;
  if (a1)
  {
    for (i = 1; i <= a1; ++i)
    {
      v4 = *a2++;
      v2 = (v4 != 0 ? 0 : v2) | i & -(v4 != 0);
    }
  }

  return v2;
}

uint64_t ccsrp_ctx_init_with_size_option(void *__s, rsize_t __n, uint64_t a3, uint64_t a4, unsigned __int16 a5, uint64_t a6)
{
  cc_clear(__n, __s);
  *__s = a3;
  __s[1] = a4;
  v11 = *(__s + 6);
  __s[2] = a6;
  *(__s + 6) = v11 & 0xFFF80002 | (8 * a5);
  return 0;
}

uint64_t ccsrp_client_set_noUsernameInX(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  *(a1 + 24) = *(a1 + 24) & 0xFFFFFFFD | v2;
  return a2;
}

uint64_t ccsrp_sizeof_session_key(uint64_t a1, char a2)
{
  if ((a2 & 7u) - 1 < 2)
  {
    return 2 * *a1;
  }

  if ((a2 & 7) != 0)
  {
    return 0;
  }

  return *a1;
}

uint64_t ccsrp_get_session_key_length(uint64_t *a1)
{
  v1 = *a1;
  v2 = (*(a1 + 6) >> 3) & 7;
  if ((v2 - 1) < 2)
  {
    return 2 * *v1;
  }

  if (v2)
  {
    return 0;
  }

  return *v1;
}

uint64_t ccsrp_get_session_key(uint64_t a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = (*(a1 + 24) >> 3) & 7;
  if ((v3 - 1) >= 2)
  {
    if (v3)
    {
      v4 = 0;
    }

    else
    {
      v4 = *v2;
    }
  }

  else
  {
    v4 = 2 * *v2;
  }

  *a2 = v4;
  if ((*(a1 + 24) & 4) != 0)
  {
    return a1 + 32 * ccdh_gp_n(*(a1 + 8)) + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsrp_get_premaster_secret(uint64_t a1)
{
  if ((*(a1 + 24) & 4) != 0)
  {
    return a1 + 24 * ccdh_gp_n(*(a1 + 8)) + 32;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsrp_ctx_init_option(void *a1, void *a2, void *a3, unsigned __int16 a4, uint64_t a5)
{
  v10 = ccdh_ccn_size(a3);
  cc_clear(4 * (*a2 + v10) + 48, a1);
  *a1 = a2;
  a1[1] = a3;
  v11 = *(a1 + 6);
  a1[2] = a5;
  *(a1 + 6) = v11 & 0xFFF80002 | (8 * a4);
  return 0;
}

uint64_t ccsrp_ctx_init(void *a1, void *a2, void *a3)
{
  v6 = 4 * (*a2 + ccdh_ccn_size(a3));
  v7 = ccrng(0);
  result = cc_clear(v6 + 48, a1);
  *a1 = a2;
  a1[1] = a3;
  v9 = *(a1 + 6);
  a1[2] = v7;
  *(a1 + 6) = v9 & 0xFFF80002;
  return result;
}

uint64_t ccaes_gladman_encrypt(_DWORD *a1, int *a2, uint64_t a3, uint64_t a4, int *a5)
{
  v5 = a1[65];
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  v9 = a2[3];
  if (a3)
  {
    v10 = (a4 + 8);
    do
    {
      if (v5)
      {
        v11 = *a1 ^ v6 ^ *(v10 - 2);
        v12 = a1[1] ^ v7 ^ *(v10 - 1);
        v13 = a1[2] ^ v8 ^ *v10;
        v14 = a1[3] ^ v9 ^ v10[1];
      }

      else
      {
        v11 = *a1 ^ *(v10 - 2);
        v12 = a1[1] ^ *(v10 - 1);
        v13 = a1[2] ^ *v10;
        v14 = a1[3] ^ v10[1];
      }

      v15 = a1[60];
      if (v15 == 12)
      {
        v20 = a1;
      }

      else
      {
        if (v15 != 14)
        {
          v21 = a1;
          goto LABEL_12;
        }

        v16 = t_fn[v11] ^ a1[4] ^ t_fn[BYTE1(v12) + 256] ^ t_fn[BYTE2(v13) + 512] ^ t_fn[HIBYTE(v14) + 768];
        v17 = t_fn[v12] ^ a1[5] ^ t_fn[BYTE1(v13) + 256] ^ t_fn[BYTE2(v14) + 512] ^ t_fn[HIBYTE(v11) + 768];
        v18 = t_fn[v13] ^ a1[6] ^ t_fn[BYTE1(v14) + 256] ^ t_fn[BYTE2(v11) + 512] ^ t_fn[HIBYTE(v12) + 768];
        v19 = t_fn[v14] ^ a1[7] ^ t_fn[BYTE1(v11) + 256] ^ t_fn[BYTE2(v12) + 512] ^ t_fn[HIBYTE(v13) + 768];
        v11 = t_fn[v16] ^ a1[8] ^ t_fn[BYTE1(v17) + 256] ^ t_fn[BYTE2(v18) + 512] ^ t_fn[HIBYTE(v19) + 768];
        v12 = t_fn[v17] ^ a1[9] ^ t_fn[BYTE1(v18) + 256] ^ t_fn[BYTE2(v19) + 512] ^ t_fn[HIBYTE(v16) + 768];
        v13 = t_fn[v18] ^ a1[10] ^ t_fn[BYTE1(v19) + 256] ^ t_fn[BYTE2(v16) + 512] ^ t_fn[HIBYTE(v17) + 768];
        v14 = t_fn[v19] ^ a1[11] ^ t_fn[BYTE1(v16) + 256] ^ t_fn[BYTE2(v17) + 512] ^ t_fn[HIBYTE(v18) + 768];
        v20 = a1 + 8;
      }

      v22 = v20[8];
      v21 = v20 + 8;
      v23 = t_fn[v11] ^ *(v21 - 4) ^ t_fn[BYTE1(v12) + 256] ^ t_fn[BYTE2(v13) + 512] ^ t_fn[HIBYTE(v14) + 768];
      v24 = t_fn[v12] ^ *(v21 - 3) ^ t_fn[BYTE1(v13) + 256] ^ t_fn[BYTE2(v14) + 512] ^ t_fn[HIBYTE(v11) + 768];
      v25 = t_fn[v14];
      v26 = t_fn[v13] ^ *(v21 - 2) ^ t_fn[BYTE1(v14) + 256] ^ t_fn[BYTE2(v11) + 512] ^ t_fn[HIBYTE(v12) + 768];
      v27 = v25 ^ *(v21 - 1) ^ t_fn[BYTE1(v11) + 256] ^ t_fn[BYTE2(v12) + 512] ^ t_fn[HIBYTE(v13) + 768];
      v11 = t_fn[v23] ^ v22 ^ t_fn[BYTE1(v24) + 256] ^ t_fn[BYTE2(v26) + 512] ^ t_fn[HIBYTE(v27) + 768];
      v12 = t_fn[v24] ^ v21[1] ^ t_fn[BYTE1(v26) + 256] ^ t_fn[BYTE2(v27) + 512] ^ t_fn[HIBYTE(v23) + 768];
      v13 = t_fn[v26] ^ v21[2] ^ t_fn[BYTE1(v27) + 256] ^ t_fn[BYTE2(v23) + 512] ^ t_fn[HIBYTE(v24) + 768];
      v14 = t_fn[v27] ^ v21[3] ^ t_fn[BYTE1(v23) + 256] ^ t_fn[BYTE2(v24) + 512] ^ t_fn[HIBYTE(v26) + 768];
LABEL_12:
      v28 = t_fn[v11] ^ v21[4] ^ t_fn[BYTE1(v12) + 256] ^ t_fn[BYTE2(v13) + 512] ^ t_fn[HIBYTE(v14) + 768];
      v29 = t_fn[v12] ^ v21[5] ^ t_fn[BYTE1(v13) + 256] ^ t_fn[BYTE2(v14) + 512] ^ t_fn[HIBYTE(v11) + 768];
      v30 = t_fn[BYTE2(v12) + 512];
      v31 = t_fn[v13] ^ v21[6] ^ t_fn[BYTE1(v14) + 256] ^ t_fn[BYTE2(v11) + 512] ^ t_fn[HIBYTE(v12) + 768];
      v32 = t_fn[v14] ^ v21[7] ^ t_fn[BYTE1(v11) + 256] ^ v30 ^ t_fn[HIBYTE(v13) + 768];
      v33 = t_fn[v28] ^ v21[8] ^ t_fn[BYTE1(v29) + 256] ^ t_fn[BYTE2(v31) + 512] ^ t_fn[HIBYTE(v32) + 768];
      v34 = t_fn[v29] ^ v21[9] ^ t_fn[BYTE1(v31) + 256] ^ t_fn[BYTE2(v32) + 512] ^ t_fn[HIBYTE(v28) + 768];
      v35 = t_fn[v31] ^ v21[10] ^ t_fn[BYTE1(v32) + 256] ^ t_fn[BYTE2(v28) + 512] ^ t_fn[HIBYTE(v29) + 768];
      v36 = t_fn[v32] ^ v21[11] ^ t_fn[BYTE1(v28) + 256] ^ t_fn[BYTE2(v29) + 512] ^ t_fn[HIBYTE(v31) + 768];
      v37 = t_fn[(LOBYTE(t_fn[v28]) ^ *(v21 + 32) ^ LOBYTE(t_fn[BYTE1(v29) + 256]) ^ LOBYTE(t_fn[BYTE2(v31) + 512]) ^ LOBYTE(t_fn[HIBYTE(v32) + 768]))] ^ v21[12] ^ t_fn[BYTE1(v34) + 256] ^ t_fn[BYTE2(v35) + 512] ^ t_fn[HIBYTE(v36) + 768];
      v38 = t_fn[v34] ^ v21[13] ^ t_fn[BYTE1(v35) + 256] ^ t_fn[BYTE2(v36) + 512] ^ t_fn[HIBYTE(v33) + 768];
      v39 = t_fn[v35] ^ v21[14] ^ t_fn[BYTE1(v36) + 256] ^ t_fn[BYTE2(v33) + 512] ^ t_fn[HIBYTE(v34) + 768];
      v40 = t_fn[v36] ^ v21[15] ^ t_fn[BYTE1(v33) + 256] ^ t_fn[BYTE2(v34) + 512] ^ t_fn[HIBYTE(v35) + 768];
      v41 = t_fn[(LOBYTE(t_fn[v33]) ^ *(v21 + 48) ^ LOBYTE(t_fn[BYTE1(v34) + 256]) ^ LOBYTE(t_fn[BYTE2(v35) + 512]) ^ LOBYTE(t_fn[HIBYTE(v36) + 768]))] ^ v21[16] ^ t_fn[BYTE1(v38) + 256] ^ t_fn[BYTE2(v39) + 512] ^ t_fn[HIBYTE(v40) + 768];
      v42 = t_fn[v38] ^ v21[17] ^ t_fn[BYTE1(v39) + 256] ^ t_fn[BYTE2(v40) + 512] ^ t_fn[HIBYTE(v37) + 768];
      v43 = t_fn[v39] ^ v21[18] ^ t_fn[BYTE1(v40) + 256] ^ t_fn[BYTE2(v37) + 512] ^ t_fn[HIBYTE(v38) + 768];
      v44 = t_fn[v40] ^ v21[19] ^ t_fn[BYTE1(v37) + 256] ^ t_fn[BYTE2(v38) + 512] ^ t_fn[HIBYTE(v39) + 768];
      v45 = t_fn[v41] ^ v21[20] ^ t_fn[BYTE1(v42) + 256] ^ t_fn[BYTE2(v43) + 512] ^ t_fn[HIBYTE(v44) + 768];
      v46 = t_fn[v42] ^ v21[21] ^ t_fn[BYTE1(v43) + 256] ^ t_fn[BYTE2(v44) + 512] ^ t_fn[HIBYTE(v41) + 768];
      v47 = t_fn[v43] ^ v21[22] ^ t_fn[BYTE1(v44) + 256] ^ t_fn[BYTE2(v41) + 512] ^ t_fn[HIBYTE(v42) + 768];
      v48 = t_fn[v44] ^ v21[23] ^ t_fn[BYTE1(v41) + 256] ^ t_fn[BYTE2(v42) + 512] ^ t_fn[HIBYTE(v43) + 768];
      v49 = t_fn[v45] ^ v21[24] ^ t_fn[BYTE1(v46) + 256] ^ t_fn[BYTE2(v47) + 512] ^ t_fn[HIBYTE(v48) + 768];
      v50 = t_fn[v46] ^ v21[25] ^ t_fn[BYTE1(v47) + 256] ^ t_fn[BYTE2(v48) + 512] ^ t_fn[HIBYTE(v45) + 768];
      v51 = t_fn[v47] ^ v21[26] ^ t_fn[BYTE1(v48) + 256] ^ t_fn[BYTE2(v45) + 512] ^ t_fn[HIBYTE(v46) + 768];
      v52 = t_fn[v48] ^ v21[27] ^ t_fn[BYTE1(v45) + 256] ^ t_fn[BYTE2(v46) + 512] ^ t_fn[HIBYTE(v47) + 768];
      v53 = t_fn[v49] ^ v21[28] ^ t_fn[BYTE1(v50) + 256] ^ t_fn[BYTE2(v51) + 512] ^ t_fn[HIBYTE(v52) + 768];
      v54 = t_fn[v50] ^ v21[29] ^ t_fn[BYTE1(v51) + 256] ^ t_fn[BYTE2(v52) + 512] ^ t_fn[HIBYTE(v49) + 768];
      v55 = t_fn[HIBYTE(v50) + 768];
      v56 = t_fn[v51] ^ v21[30] ^ t_fn[BYTE1(v52) + 256] ^ t_fn[BYTE2(v49) + 512];
      v57 = t_fn[v52];
      v58 = v56 ^ v55;
      v59 = v57 ^ v21[31] ^ t_fn[BYTE1(v49) + 256] ^ t_fn[BYTE2(v50) + 512] ^ t_fn[HIBYTE(v51) + 768];
      v60 = t_fn[v53] ^ v21[32] ^ t_fn[BYTE1(v54) + 256] ^ t_fn[((v56 ^ v55) >> 16) + 512] ^ t_fn[HIBYTE(v59) + 768];
      v61 = t_fn[v54] ^ v21[33] ^ t_fn[((v56 ^ v55) >> 8) + 256] ^ t_fn[BYTE2(v59) + 512] ^ t_fn[HIBYTE(v53) + 768];
      v62 = t_fn[(v56 ^ v55)] ^ v21[34] ^ t_fn[BYTE1(v59) + 256] ^ t_fn[BYTE2(v53) + 512] ^ t_fn[HIBYTE(v54) + 768];
      v63 = t_fn[v59] ^ v21[35] ^ t_fn[BYTE1(v53) + 256] ^ t_fn[BYTE2(v54) + 512] ^ t_fn[HIBYTE(v58) + 768];
      v64 = t_fn[v60] ^ v21[36] ^ t_fn[BYTE1(v61) + 256] ^ t_fn[BYTE2(v62) + 512] ^ t_fn[HIBYTE(v63) + 768];
      v65 = t_fn[v61] ^ v21[37] ^ t_fn[BYTE1(v62) + 256] ^ t_fn[BYTE2(v63) + 512] ^ t_fn[HIBYTE(v60) + 768];
      v66 = t_fn[v62] ^ v21[38] ^ t_fn[BYTE1(v63) + 256] ^ t_fn[BYTE2(v60) + 512] ^ t_fn[HIBYTE(v61) + 768];
      v67 = t_fl[(LOBYTE(t_fn[v60]) ^ *(v21 + 144) ^ LOBYTE(t_fn[BYTE1(v61) + 256]) ^ LOBYTE(t_fn[BYTE2(v62) + 512]) ^ LOBYTE(t_fn[HIBYTE(v63) + 768]))];
      v68 = t_fn[v63] ^ v21[39] ^ t_fn[BYTE1(v60) + 256] ^ t_fn[BYTE2(v61) + 512] ^ t_fn[HIBYTE(v62) + 768];
      v6 = v67 ^ v21[40] ^ t_fl[BYTE1(v65) + 256] ^ t_fl[BYTE2(v66) + 512] ^ t_fl[HIBYTE(v68) + 768];
      v7 = t_fl[v65] ^ v21[41] ^ t_fl[BYTE1(v66) + 256] ^ t_fl[BYTE2(v68) + 512] ^ t_fl[HIBYTE(v64) + 768];
      v69 = v21[43];
      v8 = t_fl[v66] ^ v21[42] ^ t_fl[BYTE1(v68) + 256] ^ t_fl[BYTE2(v64) + 512] ^ t_fl[HIBYTE(v65) + 768];
      v70 = t_fl[v68] ^ v69;
      v71 = t_fl[BYTE1(v64) + 256] ^ t_fl[BYTE2(v65) + 512];
      v72 = t_fl[HIBYTE(v66) + 768];
      *a5 = v6;
      a5[1] = v7;
      v9 = v70 ^ v71 ^ v72;
      a5[2] = v8;
      a5[3] = v9;
      a5 += 4;
      v10 += 4;
      --a3;
    }

    while (a3);
  }

  if (v5)
  {
    *a2 = v6;
    a2[1] = v7;
    a2[2] = v8;
    a2[3] = v9;
  }

  return 0;
}

uint64_t ccaes_gladman_decrypt(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *(a1 + 260);
  if (a3 || !v5)
  {
    v6 = a4 + 16 * a3;
    v7 = *(v6 - 16);
    v9 = *(v6 - 12);
    v8 = (v6 - 16);
    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (a3 && v5)
    {
      v79 = *v8;
LABEL_7:
      v12 = (a1 + 4 * (4 * *(a1 + 240)));
      v13 = (16 * a3 + a5 - 8);
      while (1)
      {
        v14 = *v12 ^ v7;
        v15 = v12[1] ^ v9;
        v16 = v12[2] ^ v11;
        v17 = v12[3] ^ v10;
        v18 = *(a1 + 240);
        v19 = v12;
        if (v18 != 12)
        {
          if (v18 != 14)
          {
            goto LABEL_12;
          }

          v20 = t_in[v14] ^ *(v12 - 4) ^ t_in[BYTE1(v17) + 256] ^ t_in[BYTE2(v16) + 512] ^ t_in[HIBYTE(v15) + 768];
          v21 = t_in[v15] ^ *(v12 - 3) ^ t_in[BYTE1(v14) + 256] ^ t_in[BYTE2(v17) + 512] ^ t_in[HIBYTE(v16) + 768];
          v22 = t_in[v16] ^ *(v12 - 2) ^ t_in[BYTE1(v15) + 256] ^ t_in[BYTE2(v14) + 512] ^ t_in[HIBYTE(v17) + 768];
          v23 = t_in[v17] ^ *(v12 - 1) ^ t_in[BYTE1(v16) + 256] ^ t_in[BYTE2(v15) + 512] ^ t_in[HIBYTE(v14) + 768];
          v14 = t_in[v20] ^ *(v12 - 8) ^ t_in[BYTE1(v23) + 256] ^ t_in[BYTE2(v22) + 512] ^ t_in[HIBYTE(v21) + 768];
          v15 = t_in[v21] ^ *(v12 - 7) ^ t_in[BYTE1(v20) + 256] ^ t_in[BYTE2(v23) + 512] ^ t_in[HIBYTE(v22) + 768];
          v16 = t_in[v22] ^ *(v12 - 6) ^ t_in[BYTE1(v21) + 256] ^ t_in[BYTE2(v20) + 512] ^ t_in[HIBYTE(v23) + 768];
          v17 = t_in[v23] ^ *(v12 - 5) ^ t_in[BYTE1(v22) + 256] ^ t_in[BYTE2(v21) + 512] ^ t_in[HIBYTE(v20) + 768];
          v19 = v12 - 8;
        }

        v24 = *(v19 - 8);
        v19 -= 8;
        v25 = t_in[v14] ^ v19[4] ^ t_in[BYTE1(v17) + 256] ^ t_in[BYTE2(v16) + 512] ^ t_in[HIBYTE(v15) + 768];
        v26 = t_in[v15] ^ v19[5] ^ t_in[BYTE1(v14) + 256] ^ t_in[BYTE2(v17) + 512] ^ t_in[HIBYTE(v16) + 768];
        v27 = t_in[v16] ^ v19[6] ^ t_in[BYTE1(v15) + 256] ^ t_in[BYTE2(v14) + 512] ^ t_in[HIBYTE(v17) + 768];
        v28 = t_in[v17] ^ v19[7] ^ t_in[BYTE1(v16) + 256] ^ t_in[BYTE2(v15) + 512] ^ t_in[HIBYTE(v14) + 768];
        v14 = t_in[v25] ^ v24 ^ t_in[BYTE1(v28) + 256] ^ t_in[BYTE2(v27) + 512] ^ t_in[HIBYTE(v26) + 768];
        v15 = t_in[v26] ^ v19[1] ^ t_in[BYTE1(v25) + 256] ^ t_in[BYTE2(v28) + 512] ^ t_in[HIBYTE(v27) + 768];
        v16 = t_in[v27] ^ v19[2] ^ t_in[BYTE1(v26) + 256] ^ t_in[BYTE2(v25) + 512] ^ t_in[HIBYTE(v28) + 768];
        v17 = t_in[v28] ^ v19[3] ^ t_in[BYTE1(v27) + 256] ^ t_in[BYTE2(v26) + 512] ^ t_in[HIBYTE(v25) + 768];
LABEL_12:
        v29 = t_in[v14] ^ *(v19 - 4) ^ t_in[BYTE1(v17) + 256] ^ t_in[BYTE2(v16) + 512] ^ t_in[HIBYTE(v15) + 768];
        v30 = t_in[v15] ^ *(v19 - 3) ^ t_in[BYTE1(v14) + 256] ^ t_in[BYTE2(v17) + 512] ^ t_in[HIBYTE(v16) + 768];
        v31 = t_in[BYTE1(v16) + 256];
        v32 = t_in[v16] ^ *(v19 - 2) ^ t_in[BYTE1(v15) + 256] ^ t_in[BYTE2(v14) + 512] ^ t_in[HIBYTE(v17) + 768];
        v33 = t_in[v17] ^ *(v19 - 1) ^ v31 ^ t_in[BYTE2(v15) + 512] ^ t_in[HIBYTE(v14) + 768];
        v34 = t_in[v29] ^ *(v19 - 8) ^ t_in[BYTE1(v33) + 256] ^ t_in[BYTE2(v32) + 512] ^ t_in[HIBYTE(v30) + 768];
        v35 = t_in[v30] ^ *(v19 - 7) ^ t_in[BYTE1(v29) + 256] ^ t_in[BYTE2(v33) + 512];
        v36 = t_in[v32] ^ *(v19 - 6) ^ t_in[BYTE1(v30) + 256] ^ t_in[BYTE2(v29) + 512] ^ t_in[HIBYTE(v33) + 768];
        v37 = t_in[v33] ^ *(v19 - 5) ^ t_in[BYTE1(v32) + 256] ^ t_in[BYTE2(v30) + 512] ^ t_in[HIBYTE(v29) + 768];
        v38 = v35 ^ t_in[HIBYTE(v32) + 768];
        v39 = t_in[v34] ^ *(v19 - 12) ^ t_in[BYTE1(v37) + 256] ^ t_in[BYTE2(v36) + 512] ^ t_in[HIBYTE(v38) + 768];
        v40 = t_in[v38] ^ *(v19 - 11) ^ t_in[BYTE1(v34) + 256] ^ t_in[BYTE2(v37) + 512] ^ t_in[HIBYTE(v36) + 768];
        v41 = t_in[v36] ^ *(v19 - 10) ^ t_in[BYTE1(v38) + 256] ^ t_in[BYTE2(v34) + 512] ^ t_in[HIBYTE(v37) + 768];
        v42 = t_in[v37] ^ *(v19 - 9) ^ t_in[BYTE1(v36) + 256] ^ t_in[BYTE2(v38) + 512] ^ t_in[HIBYTE(v34) + 768];
        v43 = t_in[v39] ^ *(v19 - 16) ^ t_in[BYTE1(v42) + 256] ^ t_in[BYTE2(v41) + 512] ^ t_in[HIBYTE(v40) + 768];
        v44 = t_in[v40] ^ *(v19 - 15) ^ t_in[BYTE1(v39) + 256] ^ t_in[BYTE2(v42) + 512] ^ t_in[HIBYTE(v41) + 768];
        v45 = t_in[BYTE1(v41) + 256];
        v46 = t_in[v41] ^ *(v19 - 14) ^ t_in[BYTE1(v40) + 256] ^ t_in[BYTE2(v39) + 512] ^ t_in[HIBYTE(v42) + 768];
        v47 = t_in[v42] ^ *(v19 - 13) ^ v45 ^ t_in[BYTE2(v40) + 512] ^ t_in[HIBYTE(v39) + 768];
        v48 = t_in[v43] ^ *(v19 - 20) ^ t_in[BYTE1(v47) + 256] ^ t_in[BYTE2(v46) + 512] ^ t_in[HIBYTE(v44) + 768];
        v49 = t_in[HIBYTE(v46) + 768];
        v50 = t_in[v46] ^ *(v19 - 18) ^ t_in[BYTE1(v44) + 256] ^ t_in[BYTE2(v43) + 512] ^ t_in[HIBYTE(v47) + 768];
        v51 = t_in[v47] ^ *(v19 - 17) ^ t_in[BYTE1(v46) + 256] ^ t_in[BYTE2(v44) + 512] ^ t_in[HIBYTE(v43) + 768];
        v52 = t_in[v44] ^ *(v19 - 19) ^ t_in[BYTE1(v43) + 256] ^ t_in[BYTE2(v47) + 512] ^ v49;
        v53 = t_in[v48] ^ *(v19 - 24) ^ t_in[BYTE1(v51) + 256] ^ t_in[BYTE2(v50) + 512] ^ t_in[HIBYTE(v52) + 768];
        v54 = t_in[v52] ^ *(v19 - 23) ^ t_in[BYTE1(v48) + 256] ^ t_in[BYTE2(v51) + 512] ^ t_in[HIBYTE(v50) + 768];
        v55 = t_in[v50] ^ *(v19 - 22) ^ t_in[BYTE1(v52) + 256] ^ t_in[BYTE2(v48) + 512] ^ t_in[HIBYTE(v51) + 768];
        v56 = t_in[v51] ^ *(v19 - 21) ^ t_in[BYTE1(v50) + 256] ^ t_in[BYTE2(v52) + 512] ^ t_in[HIBYTE(v48) + 768];
        v57 = t_in[v53] ^ *(v19 - 28) ^ t_in[BYTE1(v56) + 256] ^ t_in[BYTE2(v55) + 512] ^ t_in[HIBYTE(v54) + 768];
        v58 = t_in[v54] ^ *(v19 - 27) ^ t_in[BYTE1(v53) + 256] ^ t_in[BYTE2(v56) + 512] ^ t_in[HIBYTE(v55) + 768];
        v59 = t_in[v55] ^ *(v19 - 26) ^ t_in[BYTE1(v54) + 256] ^ t_in[BYTE2(v53) + 512] ^ t_in[HIBYTE(v56) + 768];
        v60 = t_in[v56] ^ *(v19 - 25) ^ t_in[BYTE1(v55) + 256] ^ t_in[BYTE2(v54) + 512] ^ t_in[HIBYTE(v53) + 768];
        v61 = t_in[v57] ^ *(v19 - 32) ^ t_in[BYTE1(v60) + 256] ^ t_in[BYTE2(v59) + 512] ^ t_in[HIBYTE(v58) + 768];
        v62 = t_in[v58] ^ *(v19 - 31) ^ t_in[BYTE1(v57) + 256] ^ t_in[BYTE2(v60) + 512] ^ t_in[HIBYTE(v59) + 768];
        v63 = t_in[BYTE1(v59) + 256];
        v64 = t_in[v59] ^ *(v19 - 30) ^ t_in[BYTE1(v58) + 256] ^ t_in[BYTE2(v57) + 512] ^ t_in[HIBYTE(v60) + 768];
        v65 = t_in[v60] ^ *(v19 - 29) ^ v63 ^ t_in[BYTE2(v58) + 512] ^ t_in[HIBYTE(v57) + 768];
        v66 = t_in[v61] ^ *(v19 - 36) ^ t_in[BYTE1(v65) + 256] ^ t_in[BYTE2(v64) + 512] ^ t_in[HIBYTE(v62) + 768];
        v67 = t_in[v62] ^ *(v19 - 35) ^ t_in[BYTE1(v61) + 256] ^ t_in[BYTE2(v65) + 512] ^ t_in[HIBYTE(v64) + 768];
        v68 = t_in[v64] ^ *(v19 - 34) ^ t_in[BYTE1(v62) + 256] ^ t_in[BYTE2(v61) + 512] ^ t_in[HIBYTE(v65) + 768];
        v69 = t_in[v65] ^ *(v19 - 33) ^ t_in[BYTE1(v64) + 256] ^ t_in[BYTE2(v62) + 512] ^ t_in[HIBYTE(v61) + 768];
        v70 = t_il[v66] ^ *(v19 - 40) ^ t_il[BYTE1(v69) + 256] ^ t_il[BYTE2(v68) + 512] ^ t_il[HIBYTE(v67) + 768];
        v71 = t_il[v67] ^ *(v19 - 39) ^ t_il[BYTE1(v66) + 256] ^ t_il[BYTE2(v69) + 512] ^ t_il[HIBYTE(v68) + 768];
        v72 = t_il[v68] ^ *(v19 - 38) ^ t_il[BYTE1(v67) + 256] ^ t_il[BYTE2(v66) + 512] ^ t_il[HIBYTE(v69) + 768];
        v73 = t_il[v69] ^ *(v19 - 37) ^ t_il[BYTE1(v68) + 256] ^ t_il[BYTE2(v67) + 512] ^ t_il[HIBYTE(v66) + 768];
        if (v5)
        {
          if (a3 == 1)
          {
            v74 = a2;
            v75 = a2 + 1;
            v76 = a2 + 2;
            v77 = a2 + 3;
          }

          else
          {
            v74 = (v8 - 1);
            v75 = v8 - 3;
            v76 = v8 - 2;
            v77 = v8-- - 1;
          }

          v10 = *v77;
          v11 = *v76;
          v9 = *v75;
          v7 = *v74;
          v70 ^= v7;
          v71 ^= v9;
          v72 ^= v11;
          v73 ^= v10;
        }

        else
        {
          if (a3 == 1)
          {
            *(v13 - 2) = v70;
            *(v13 - 1) = v71;
            *v13 = v72;
            v13[1] = v73;
            return 0;
          }

          v7 = *(v8 - 4);
          v9 = *(v8-- - 3);
          v11 = *(v8 + 2);
          v10 = *(v8 + 3);
        }

        *(v13 - 2) = v70;
        *(v13 - 1) = v71;
        *v13 = v72;
        v13[1] = v73;
        v13 -= 4;
        if (!--a3)
        {
          goto LABEL_20;
        }
      }
    }

    if (a3)
    {
      goto LABEL_7;
    }

LABEL_20:
    if (v5)
    {
      *a2 = v79;
    }
  }

  return 0;
}

__int128 *cc_module_id(int a1)
{
  strcpy(&cc_module_id_moduleProc, "Apple ARM");
  cc_module_id_moduleSecLevel = 3230803;
  cc_module_id_moduleChipID = 4271950;
  if (a1 > 3)
  {
    if (a1 > 5)
    {
      if (a1 != 6 && a1 != 7)
      {
LABEL_20:
        result = &cc_module_id_moduleID;
        strcpy(&cc_module_id_moduleID, "INVALID Module ID");
        return result;
      }
    }

    else if (a1 == 4)
    {
      result = &cc_module_id_moduleID;
      strcpy(&cc_module_id_moduleID, "Software");
      return result;
    }

    snprintf(&cc_module_id_moduleID, 0x100uLL, "%s");
    return &cc_module_id_moduleID;
  }

  if (a1 <= 1)
  {
    if (a1)
    {
      if (a1 == 1)
      {
        result = &cc_module_id_moduleID;
        strcpy(&cc_module_id_moduleID, "Apple corecrypto Module");
        return result;
      }

      goto LABEL_20;
    }

    snprintf(&cc_module_id_moduleID, 0x100uLL, "%s v%s [%s, %s, %s, %s, %s]", "Apple corecrypto Module", "26.0");
    return &cc_module_id_moduleID;
  }

  if (a1 == 2)
  {
    result = &cc_module_id_moduleID;
    BYTE4(cc_module_id_moduleID) = 0;
    v2 = 808334898;
  }

  else
  {
    result = &cc_module_id_moduleID;
    BYTE4(cc_module_id_moduleID) = 0;
    v2 = 1919251285;
  }

  LODWORD(cc_module_id_moduleID) = v2;
  return result;
}

uint64_t ccsiv_plaintext_size(uint64_t a1, unint64_t a2)
{
  v2 = *(*(a1 + 56) + 8);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsiv_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 16))(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_set_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsiv_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 48))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccsiv_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v26 = *MEMORY[0x29EDCA608];
  v18 = timingsafe_enable_if_supported();
  v25 = v18;
  MEMORY[0x2A1C7C4A8](v18);
  v20 = &v24[-v19];
  v21 = (*(a1 + 16))(a1, &v24[-v19], a2, a3);
  if (v21 || (v21 = (*(a1 + 24))(v20, a4, a5), v21) || (v21 = (*(a1 + 32))(v20, a6, a7), v21))
  {
    v22 = v21;
  }

  else
  {
    v22 = (*(a1 + 40))(v20, a8, a9, a10);
    if (!v22)
    {
      cc_clear(*a1, v20);
    }
  }

  cc_disable_dit_with_sb(&v25);
  return v22;
}

uint64_t ccss_shamir_share_generator_deserialize(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v13 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v13 = 1;
  }

  v30 = v13;
  v14 = *(a2 + 8);
  v26[0] = cc_malloc_clear(8 * v14);
  v26[1] = v14;
  v27 = 0;
  v28 = cc_ws_alloc;
  v29 = cc_ws_free;
  if (!v26[0])
  {
    v24 = 4294967283;
    goto LABEL_22;
  }

  ccss_shamir_init_share_poly(a1, a2);
  if (a3 >= 0xA && *a4 == 1)
  {
    v15 = bswap32(*(a4 + 1));
    if (v15)
    {
      if (v14 == (v15 + 7) >> 3)
      {
        v16 = bswap32(*(a4 + 5));
        *(a1 + 8) = v16;
        if (v16 != -1 && v16 + 1 == *a2 && (v16 + 2) * v15 + 9 == a3)
        {
          v17 = cc_ws_alloc(v26, v14);
          uint_internal = ccn_read_uint_internal(v14, v17, v15, (a4 + 9));
          if (uint_internal)
          {
            v24 = uint_internal;
            goto LABEL_20;
          }

          v19 = cczp_prime(*a1);
          if (!ccn_cmp_internal(v14, v17, v19))
          {
            v20 = 0;
            v21 = a1 + 16;
            v22 = (v15 + a4 + 9);
            while (!ccn_read_uint_internal(v14, (v21 + 8 * v14 * v20), v15, v22))
            {
              v23 = cczp_prime(*a1);
              if (ccn_cmp_internal(v14, (v21 + 8 * v14 * v20), v23) != -1)
              {
                break;
              }

              ++v20;
              v22 += v15;
              if (v20 > *(a1 + 8))
              {
                v24 = 0;
                goto LABEL_20;
              }
            }
          }
        }
      }
    }
  }

  v24 = 4294967289;
LABEL_20:
  v27 = 0;
  v29(v26);
LABEL_22:
  cc_disable_dit(&v30);
  return v24;
}

uint64_t ccmode_ccm_init(uint64_t a1, void *a2)
{
  v2 = *(a1 + 72);
  *a2 = v2;
  (*(v2 + 16))();
  return 0;
}

uint64_t ccpost(unsigned int *a1, int64x2_t *a2)
{
  memset(v5, 0, sizeof(v5));
  if (a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = v5;
  }

  cc_clear(0x18uLL, v3);
  ccpost_internal(a1, v3);
  if (v3->i64[1])
  {
    return 4294967221;
  }

  else
  {
    return 0;
  }
}

unsigned int *ccpost_internal(unsigned int *result, int64x2_t *a2)
{
  if (result)
  {
    v2 = *result;
    if (v2 < 4)
    {
      return (vector_handlers[v2])(result, a2);
    }

    else
    {
      *a2 = vaddq_s64(*a2, vdupq_n_s64(1uLL));
      if (!a2[1].i64[0])
      {
        a2[1].i64[0] = result;
      }
    }
  }

  return result;
}

uint64_t ccpost_report(uint64_t result, void *a2, int a3)
{
  ++*a2;
  if (a3)
  {
    v3 = a2[2];
    ++a2[1];
    if (!v3)
    {
      a2[2] = result;
    }
  }

  return result;
}

unint64_t ccec_rfc6637_wrap_pub_size(uint64_t *a1, char a2)
{
  v3 = cczp_bitlen(*a1);
  if (a2)
  {
    return (v3 + 7) >> 3;
  }

  else
  {
    return ((v3 + 7) >> 2) | 1;
  }
}

unint64_t ccec_rfc6637_wrap_key_size(uint64_t *a1, char a2, uint64_t a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = cczp_bitlen(*a1);
  if (a2)
  {
    v7 = (v6 + 7) >> 3;
  }

  else
  {
    v7 = ((v6 + 7) >> 2) | 1;
  }

  if ((a2 & 2) != 0)
  {
    v7 += a3 + ((cczp_bitlen(*a1) + 7) >> 3) + 2;
  }

  cc_disable_dit_with_sb(&v9);
  return v7 + 51;
}

uint64_t ccec_rfc6637_wrap_key(uint64_t **a1, _WORD *a2, uint64_t a3, char a4, size_t a5, void *a6, void **a7, uint64_t (***a8)(void), char *a9, uint64_t (**a10)(void, uint64_t, uint64_t *))
{
  v34 = timingsafe_enable_if_supported();
  v17 = *a1;
  v18 = **a1;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v30[0] = cc_malloc_clear(248 * v18 + 16 * ((v19 + v20 + 4 * v18 * v20 - 1) / v20));
  v21 = *v17;
  v22 = sizeof_struct_cche_galois_key();
  v23 = sizeof_struct_ccpolyzp_po2cyc();
  v30[1] = 31 * v21 + 2 * ((v22 + v23 + 4 * v21 * v23 - 1) / v23);
  v31 = 0;
  v32 = cc_ws_alloc;
  v33 = cc_ws_free;
  if (v30[0])
  {
    v24 = *a1;
    v25 = cc_ws_alloc(v30, (4 * (**a1 & 0x7FFFFFFFFFFFFFFLL)) | 2);
    key_ws = ccecdh_generate_key_ws(v30, v24, a10, v25);
    if (!key_ws)
    {
      key_ws = ccec_rfc6637_wrap_core_ws(v30, a1, v25, a2, a3, a4, a5, a6, a7, a8, a9, a10);
    }

    v27 = key_ws;
    v31 = 0;
    v33(v30);
  }

  else
  {
    v27 = 4294967283;
  }

  cc_disable_dit_with_sb(&v34);
  return v27;
}

uint64_t ccz_size()
{
  v1 = timingsafe_enable_if_supported();
  cc_disable_dit_with_sb(&v1);
  return 32;
}

void *ccdrbg_factory_nisthmac(void *result, uint64_t a2)
{
  *result = 160;
  result[1] = init_1;
  result[3] = generate_5;
  result[2] = reseed_0;
  result[4] = done_0;
  result[5] = a2;
  result[6] = must_reseed_0;
  return result;
}

uint64_t done_0(void *a1)
{
  cc_clear(0x40uLL, a1 + 1);
  result = cc_clear(0x40uLL, a1 + 9);
  a1[17] = -1;
  return result;
}

uint64_t update_0(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = &v21;
  v24 = *MEMORY[0x29EDCA608];
  v11 = (a1 + 72);
  v12 = **a1;
  v13 = *v12;
  v23 = 0;
  MEMORY[0x2A1C7C4A8](a1);
  v15 = (&v21 - v14);
  v16 = 0;
  for (i = 0; i < 2u; ++i)
  {
    cchmac_init_internal(v12, v15, v13, (a1 + 8));
    cchmac_update_internal(v12, v15, v13, v11);
    cchmac_update_internal(v12, v15, 1, &i);
    v23 = &a9;
    for (j = a2; j; --j)
    {
      v18 = v23++;
      v19 = *v18;
      v23 = v18 + 2;
      cchmac_update_internal(v12, v15, v19, v18[1]);
      v16 += v19;
    }

    cchmac_final_internal(v12, v15, a1 + 8);
    cchmac_internal(v12, v13, a1 + 8, v13, v11, v11);
    if (!v16)
    {
      break;
    }
  }

  return cc_clear(((v12[1] + v12[2] + 19) & 0xFFFFFFFFFFFFFFF8) + v12[1], v15);
}

unint64_t cche_relin_key_nof_n(uint64_t a1)
{
  v2 = sizeof_struct_ccpolyzp_po2cyc() + 7;
  v3 = cche_param_ctx_key_ctx_nmoduli(a1);
  if ((v3 - 1) <= 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = (v3 - 1);
  }

  v5 = cche_param_ctx_polynomial_degree(a1);
  v6 = cche_ciphertext_fresh_npolys();
  v7 = sizeof_struct_ccrns_mul_modulus();
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  return ((v7 + v8 - 1) / v8 + ((v5 * v3) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v6) * v4 + (v2 >> 3);
}

uint64_t *cche_relin_key_ciphertext(uint64_t *a1, unsigned int a2)
{
  v4 = cche_param_ctx_chain_const(*a1);
  v5 = a2;
  v6 = cche_ciphertext_fresh_npolys();
  v7 = sizeof_struct_ccrns_mul_modulus();
  v8 = sizeof_struct_ccpolyzp_po2cyc();
  return &a1[((v7 + v8 - 1) / v8 + ((*(v4 + 12) * *(v4 + 8)) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v6) * v5 + 1];
}

uint64_t cche_relin_key_generate(uint64_t *a1, int **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (**a6)(void, uint64_t, uint64_t))
{
  v8 = a4;
  v25 = timingsafe_enable_if_supported();
  v12 = cche_param_ctx_chain_const(a3);
  v13 = cche_param_ctx_polynomial_degree(a3);
  v14 = v13;
  v15 = *(v12 + 12);
  v16 = CCPOLYZP_PO2CYC_WORKSPACE_N(v13, v15);
  v17 = CCHE_ENCRYPT_ZERO_SYMMETRIC_EVAL_WORKSPACE_N(v14, v15);
  v23[0] = cc_malloc_clear(8 * (v17 + v16));
  v18 = cche_param_ctx_polynomial_degree(a3);
  v19 = v18;
  LODWORD(v12) = *(v12 + 12);
  v20 = CCPOLYZP_PO2CYC_WORKSPACE_N(v18, v12);
  v23[1] = CCHE_ENCRYPT_ZERO_SYMMETRIC_EVAL_WORKSPACE_N(v19, v12) + v20;
  v23[2] = 0;
  v23[3] = cc_ws_alloc;
  v24 = cc_ws_free;
  if (v23[0])
  {
    ws = cche_relin_key_generate_ws(v23, a1, a2, a3, v8, a5, a6);
    v24(v23);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v25);
  return ws;
}

uint64_t cche_relin_key_save(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v5 = a1;
  v12 = timingsafe_enable_if_supported();
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[0] = cc_malloc_clear(8 * v6);
  cche_param_ctx_polynomial_degree(*a3);
  CCPOLYZP_PO2CYC_SERIALIZE_POLY_WORKSPACE_N();
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v10[0])
  {
    v8 = cche_relin_key_save_ws(v10, v5, a2, a3);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t cche_relin_key_load(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v9 = a3;
  v19 = timingsafe_enable_if_supported();
  v12 = cche_param_ctx_polynomial_degree(a2);
  v13 = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v12);
  v17[0] = cc_malloc_clear(8 * v13);
  v14 = cche_param_ctx_polynomial_degree(a2);
  v17[1] = CCHE_DESERIALIZE_SEEDED_CIPHERTEXT_EVAL_WORKSPACE_N(v14);
  v17[2] = 0;
  v17[3] = cc_ws_alloc;
  v18 = cc_ws_free;
  if (v17[0])
  {
    ws = cche_relin_key_load_ws(v17, a1, a2, v9, a4, v7, a6);
    v18(v17);
  }

  else
  {
    ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v19);
  return ws;
}

uint64_t ccz_lsr(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = ccz_n(a2);
  v7 = ccn_bitlen_internal(v6, *(a2 + 24));
  v8 = v7 - a3;
  if (v7 <= a3)
  {
    ccz_zero(a1);
  }

  else
  {
    v9 = a3 >> 6;
    v10 = ccz_sign(a2);
    ccz_set_sign(a1, v10);
    v11 = ccz_n(a2);
    ccz_set_capacity(a1, v11 - (a3 >> 6));
    if ((a3 & 0x3F) != 0)
    {
      v12 = ccz_n(a2);
      ccn_shift_right(v12 - v9, *(a1 + 24), (*(a2 + 24) + 8 * v9), a3 & 0x3F);
    }

    else if (a1 != a2 || a3 >= 0x40)
    {
      v13 = ccz_n(a2);
      ccn_set(v13 - v9, *(a1 + 24), (*(a2 + 24) + 8 * v9));
    }

    ccz_set_n(a1, (v8 + 63) >> 6);
  }

  return cc_disable_dit_with_sb(&v15);
}

uint64_t ccsiv_hmac_plaintext_size(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v3)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t ccsiv_hmac_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 16))(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsiv_hmac_aad(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 32))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_hmac_set_nonce(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = (*(a1 + 24))(a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t ccsiv_hmac_crypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = timingsafe_enable_if_supported();
  v10 = (*(a1 + 40))(a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return v10;
}

uint64_t ccsiv_hmac_reset(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = (*(a1 + 48))(a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

uint64_t ccsiv_hmac_one_shot(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, unsigned int a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v27 = *MEMORY[0x29EDCA608];
  v19 = timingsafe_enable_if_supported();
  v26 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v25[-v20];
  v22 = (*(a1 + 16))(a1, &v25[-v20], a2, a3, a4);
  if (v22 || a7 && (v22 = (*(a1 + 32))(v21, a7, a8), v22) || a5 && (v22 = (*(a1 + 24))(v21, a5, a6), v22))
  {
    v23 = v22;
  }

  else
  {
    v23 = (*(a1 + 40))(v21, a9, a10, a11);
    if (!v23)
    {
      cc_clear(*a1, v21);
    }
  }

  cc_disable_dit_with_sb(&v26);
  return v23;
}

uint64_t fipspost_post_aes_cmac(char a1)
{
  v15[2] = *MEMORY[0x29EDCA608];
  v2 = ccaes_cbc_encrypt_mode();
  v14 = 0;
  if (cccmac_one_shot_generate(v2, 16, "\xE4\xB7\x64[/}c\xB4gL\xD0\x19p\xC9\xD1\xEC\xF2\x66\xA1\x87", 0, &unk_299D0EA16, 4uLL, &v14))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_generate COUNT #0: %d\n");
    return 4294967224;
  }

  v4 = "\x01\xF2\x66\xA1\x87";
  if ((a1 & 0x10) == 0)
  {
    v4 = "\xF2\x66\xA1\x87";
  }

  if (*v4 != v14)
  {
    v5 = mach_absolute_time();
    v6 = 56;
LABEL_8:
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed AES-CMAC KAT\n", v5, "fipspost_post_aes_cmac", v6);
    return 4294967221;
  }

  v13 = 0;
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_generate COUNT #32: %d\n");
    return 4294967224;
  }

  v7 = "\x01\xFB\xFE\xA4\x1B";
  if ((a1 & 0x10) == 0)
  {
    v7 = "\xFB\xFE\xA4\x1B";
  }

  if (*v7 != v13)
  {
    v5 = mach_absolute_time();
    v6 = 95;
    goto LABEL_8;
  }

  *(v15 + 7) = 0;
  v15[0] = 0;
  if (cccmac_one_shot_generate(v2, 16, "\x18tYlݽ\xF1\x8A\x10\xBCq\xD6\x0Ck\xB9=", 0x25uLL, "\x12\xA3@\xEF\x01\x5D\xC0\xA3\x86%\xA4\x84~\xB6\xCA\xC9ʹE\x05H\xE9\xF9\x64\x02ue1\xA6\xA5\xBF\x9C7\xC1\x46\xBB\x01", 0xFuLL, v15))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_generate COUNT #79: %d\n");
    return 4294967224;
  }

  v8 = "\x01&\xA5\xFD%\x80Q)uk[\x1A\xC3\x3D\x87t";
  if ((a1 & 0x10) == 0)
  {
    v8 = "&\xA5\xFD%\x80Q)uk[\x1A\xC3\x3D\x87t";
  }

  v9 = *v8;
  v10 = *(v8 + 7);
  if (v9 != v15[0] || v10 != *(v15 + 7))
  {
    v5 = mach_absolute_time();
    v6 = 134;
    goto LABEL_8;
  }

  if ((a1 & 0x10) != 0)
  {
    v12 = "\x01\xD4\xD7\xFC\xC5\xF9y#\x0F";
  }

  else
  {
    v12 = "\xD4\xD7\xFC\xC5\xF9y#\x0F";
  }

  if (cccmac_one_shot_verify(v2, 0x10uLL, "rV\xE3\x44\xF6\x8B>\x7F\x9D\xD6\xE0L\\e\x13\"", 0, &unk_299D0EA16, 8, v12))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_verify COUNT #2: %d\n");
    return 4294967224;
  }

  if (!cccmac_one_shot_verify(v2, 0x10uLL, "e\x83\xA4\xFF'\xB6\xE1\x09\x04m\x11\xB9w\xC8\x29=", 0x20uLL, "\xB6;\xE3\x20\xF9.\x01&\x0F\xBA71$IJ'd\xDF\xC9((|u\xDC\x1C\xAF\xEE\x7B\x69\x8DH", 8, "\xFA\f\xCE\xD2.\x89k@"))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_verify COUNT #47: %d\n");
    return 4294967224;
  }

  if (!cccmac_one_shot_verify(v2, 0x10uLL, "\xED\xFE\x2E\x15\xED\xF0\xB0\u0088ue\x1DK\xEC\xFC\xA5", 0x40uLL, aP_1, 8, "{ps\x02\x19\x90}\x18"))
  {
    mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: failed cccmac_one_shot_verify COUNT #89: %d\n");
    return 4294967224;
  }

  return 0;
}

uint64_t ccn_read_uint_public_value(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v4 = 8 * a1;
  if (a3 > 8 * a1)
  {
    v5 = 0;
    v6 = a3 - v4;
    v7 = a4;
    do
    {
      v8 = *v7++;
      v5 |= v8;
      --a3;
    }

    while (a3 > v4);
    if (v5)
    {
      return 4294967289;
    }

    a4 += v6;
    a3 = 8 * a1;
  }

  v10 = &a4[a3];
  v11 = a3 - 8;
  if (a3 < 8)
  {
    v12 = 0;
    if (!a3)
    {
      goto LABEL_17;
    }

    goto LABEL_13;
  }

  v12 = (v11 >> 3) + 1;
  a3 = v11 - 8 * (v11 >> 3);
  v13 = a2;
  v14 = v12;
  do
  {
    v15 = *(v10 - 1);
    v10 -= 8;
    *v13++ = bswap64(v15);
    --v14;
  }

  while (v14);
  if (a3)
  {
LABEL_13:
    v16 = 0;
    v17 = -a3;
    do
    {
      v16 = v10[v17] | (v16 << 8);
    }

    while (!__CFADD__(v17++, 1));
    a2[v12++] = v16;
  }

LABEL_17:
  if (v12 < a1)
  {
    bzero(&a2[v12], v4 - 8 * v12);
  }

  return 0;
}

uint64_t ccn_read_uint(unint64_t a1, void *a2, unint64_t a3, unsigned __int8 *a4)
{
  v10 = timingsafe_enable_if_supported();
  uint_public_value = ccn_read_uint_public_value(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return uint_public_value;
}

void *ccaes_cfb_encrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_cfb_encrypt(cfb_encrypt, v0);
  return cfb_encrypt;
}

unint64_t ccdh_gp_order_bitlen(void *a1)
{
  v2 = cczp_n(a1);
  v3 = &a1[*a1 + 4 + *a1 + *a1];

  return ccn_bitlen_public_value(v2, v3);
}

double fe_0(uint64_t a1)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

double fe_1(uint64_t a1)
{
  *a1 = 1;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0;
  return result;
}

int32x4_t fe_add(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = vaddq_s32(*a3, *a2);
  v4 = vaddq_s32(*(a3 + 16), *(a2 + 16));
  v5 = vadd_s32(*(a3 + 32), *(a2 + 32));
  *a1 = result;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

__n128 fe_copy(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *a1 = *a2;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

_DWORD *fe_invert(_DWORD *a1, int *a2)
{
  v21 = *MEMORY[0x29EDCA608];
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  fe_sq(v19, a2);
  fe_sq(v17, v19);
  fe_sq(v17, v17);
  fe_mul(v17, a2, v17);
  fe_mul(v19, v19, v17);
  fe_sq(v15, v19);
  fe_mul(v17, v17, v15);
  fe_sq(v15, v17);
  v4 = 4;
  do
  {
    fe_sq(v15, v15);
    --v4;
  }

  while (v4);
  fe_mul(v17, v15, v17);
  fe_sq(v15, v17);
  v5 = 9;
  do
  {
    fe_sq(v15, v15);
    --v5;
  }

  while (v5);
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  fe_mul(v15, v15, v17);
  fe_sq(v13, v15);
  v6 = 19;
  do
  {
    fe_sq(v13, v13);
    --v6;
  }

  while (v6);
  fe_mul(v15, v13, v15);
  fe_sq(v15, v15);
  v7 = 9;
  do
  {
    fe_sq(v15, v15);
    --v7;
  }

  while (v7);
  fe_mul(v17, v15, v17);
  fe_sq(v15, v17);
  v8 = 49;
  do
  {
    fe_sq(v15, v15);
    --v8;
  }

  while (v8);
  fe_mul(v15, v15, v17);
  fe_sq(v13, v15);
  v9 = 99;
  do
  {
    fe_sq(v13, v13);
    --v9;
  }

  while (v9);
  fe_mul(v15, v13, v15);
  fe_sq(v15, v15);
  v10 = 49;
  do
  {
    fe_sq(v15, v15);
    --v10;
  }

  while (v10);
  fe_mul(v17, v15, v17);
  fe_sq(v17, v17);
  v11 = 4;
  do
  {
    fe_sq(v17, v17);
    --v11;
  }

  while (v11);
  return fe_mul(a1, v17, v19);
}

_DWORD *fe_sq(_DWORD *result, int *a2)
{
  v3 = a2[4];
  v2 = a2[5];
  v5 = a2[6];
  v4 = a2[7];
  v6 = 19 * v5;
  v7 = *a2;
  v8 = a2[1];
  v9 = 38 * v4;
  v11 = a2[8];
  v10 = a2[9];
  v12 = 19 * v11;
  v14 = a2[2];
  v13 = a2[3];
  v15 = 2 * v7;
  v16 = 2 * v14;
  v17 = 38 * v10;
  v18 = 2 * v7 * v8;
  v19 = 2 * v8 * v14;
  v20 = 38 * v2 * v2 + v7 * v7 + v6 * 2 * v3 + v9 * 2 * v13 + v12 * 2 * v14 + v17 * 2 * v8;
  v21 = 2 * v8 * v8 + v14 * 2 * v7;
  v22 = 2 * v13 * 2 * v8 + v14 * v14 + v3 * 2 * v7 + v9 * v4 + 2 * v5 * v12 + v17 * 2 * v2;
  v23 = v18 + v6 * 2 * v2 + v9 * v3 + v12 * 2 * v13 + v17 * v14 + ((v20 + 0x2000000) >> 26);
  v24 = 2 * v14 * v13 + v3 * 2 * v8 + v2 * v15 + v12 * 2 * v4 + v17 * v5 + ((v22 + 0x2000000) >> 26);
  v25 = v21 + v6 * v5 + v9 * 2 * v2 + v12 * 2 * v3 + v17 * 2 * v13 + ((v23 + 0x1000000) >> 25);
  v26 = v3 * 2 * v14 + 2 * v13 * v13 + 2 * v2 * 2 * v8 + v5 * v15 + v12 * v11 + v17 * 2 * v4 + ((v24 + 0x1000000) >> 25);
  v27 = v19 + v13 * v15 + v9 * v5 + v12 * 2 * v2 + v17 * v3 + ((v25 + 0x2000000) >> 26);
  LODWORD(v12) = v25 - ((v25 + 0x2000000) & 0xFC000000);
  v28 = 2 * v3 * v2;
  v29 = 2 * v13 * v3 + v2 * v16;
  v30 = v5 * v16 + v3 * v3 + 2 * v2 * 2 * v13;
  v31 = v29 + v5 * 2 * v8 + v4 * v15 + v17 * v11 + ((v26 + 0x2000000) >> 26);
  v32 = v28 + v5 * 2 * v13 + v4 * v16 + v11 * 2 * v8;
  v33 = v30 + 2 * v4 * 2 * v8 + v11 * v15 + v17 * v10 + ((v31 + 0x1000000) >> 25);
  v34 = v32 + v10 * v15 + ((v33 + 0x2000000) >> 26);
  v35 = v20 - ((v20 + 0x2000000) & 0xFFFFFFFFFC000000) + 19 * ((v34 + 0x1000000) >> 25);
  *result = v35 - ((v35 + 0x2000000) & 0xFC000000);
  result[1] = v23 - ((v23 + 0x1000000) & 0xFE000000) + ((v35 + 0x2000000) >> 26);
  v36 = v22 - ((v22 + 0x2000000) & 0xFFFFFFFFFC000000) + ((v27 + 0x1000000) >> 25);
  result[2] = v12;
  result[3] = v27 - ((v27 + 0x1000000) & 0xFE000000);
  result[4] = v36 - ((v36 + 0x2000000) & 0xFC000000);
  result[5] = v24 - ((v24 + 0x1000000) & 0xFE000000) + ((v36 + 0x2000000) >> 26);
  result[6] = v26 - ((v26 + 0x2000000) & 0xFC000000);
  result[7] = v31 - ((v31 + 0x1000000) & 0xFE000000);
  result[8] = v33 - ((v33 + 0x2000000) & 0xFC000000);
  result[9] = v34 - ((v34 + 0x1000000) & 0xFE000000);
  return result;
}

_DWORD *fe_mul(_DWORD *a1, int *a2, int *a3)
{
  v3 = a2[8];
  v4 = a2[9];
  v6 = *a3;
  v5 = a3[1];
  v8 = a3[2];
  v7 = a3[3];
  v9 = 19 * v8;
  v10 = 19 * v7;
  v11 = a3[4];
  v78 = a3[5];
  v12 = 19 * v11;
  v13 = *a2;
  v80 = a2[1];
  v14 = 19 * v78;
  v15 = a2[2];
  v16 = a2[4];
  v17 = a2[5];
  v18 = a2[6];
  v19 = a2[7];
  v76 = a2[3];
  v20 = 19 * v5 * 2 * v4 + *a3 * *a2 + v9 * v3 + v10 * 2 * v19 + v12 * v18 + v14 * 2 * v17;
  v21 = v5 * 2 * v76 + *a3 * v16 + v8 * v15 + v7 * 2 * v80 + v11 * *a2 + v14 * 2 * v4;
  v22 = *a3 * v80 + v5 * *a2 + v9 * v4 + v10 * v3 + v12 * v19 + v14 * v18;
  v23 = v5 * 2 * v80 + *a3 * v15 + v8 * *a2 + v10 * 2 * v4 + v12 * v3 + v14 * 2 * v19;
  v24 = *a3 * v76 + v5 * v15 + v8 * v80 + v7 * *a2 + v12 * v4 + v14 * v3;
  LODWORD(v10) = a3[6];
  v25 = a3[7];
  v26 = 19 * v10;
  v27 = v20 + v26 * v16;
  v28 = v21 + v26 * v3;
  v29 = v22 + v26 * v17;
  v30 = *a3 * v17 + v5 * v16 + v8 * v76 + v7 * v15 + v11 * v80 + v78 * *a2 + v26 * v4;
  v31 = v23 + v26 * v18;
  v32 = v24 + v26 * v19;
  v33 = 19 * v25;
  v75 = v27 + v33 * 2 * v76;
  v72 = v28 + v33 * 2 * v19;
  v74 = v29 + v33 * v16;
  v34 = v30 + v33 * v3;
  v35 = v31 + v33 * 2 * v17;
  v36 = v5 * 2 * v17 + *a3 * v18 + v8 * v16 + v7 * 2 * v76 + v11 * v15 + v78 * 2 * v80 + v10 * *a2 + v33 * 2 * v4;
  v73 = v32 + v33 * v18;
  LODWORD(v33) = a3[8];
  v37 = a3[9];
  v38 = 19 * v33;
  v39 = 19 * v37;
  v77 = v36 + v38 * v3 + v39 * 2 * v19;
  v40 = v5 * 2 * v19 + v6 * v3;
  v41 = v6 * v19 + v5 * v18;
  v42 = v6 * v4 + v5 * v3 + v8 * v19;
  v43 = v41 + v8 * v17;
  v44 = v40 + v8 * v18;
  v45 = v72 + v38 * v18 + v39 * 2 * v17;
  v46 = v44 + v7 * 2 * v17;
  v47 = v34 + v38 * v19 + v39 * v18;
  v48 = v42 + v7 * v18;
  v49 = v43 + v7 * v16 + v11 * v76 + v78 * v15 + v10 * v80 + v25 * *a2 + v38 * v4;
  v50 = v75 + v38 * v15;
  v51 = v74 + v38 * v76;
  v52 = v35 + v38 * v16;
  v53 = v48 + v11 * v17 + v78 * v16;
  v54 = v73 + v38 * v17 + v39 * v16;
  v55 = v49 + v39 * v3;
  v56 = v53 + v10 * v76;
  v57 = v46 + v11 * v16 + v78 * 2 * v76 + v10 * v15;
  v58 = v50 + v39 * 2 * v80;
  v59 = v57 + v25 * 2 * v80 + v33 * *a2 + v39 * 2 * v4;
  v60 = v51 + v39 * v15 + ((v58 + 0x2000000) >> 26);
  v61 = v47 + ((v45 + 0x2000000) >> 26);
  v62 = v45 - ((v45 + 0x2000000) & 0xFFFFFFFFFC000000);
  v63 = v52 + v39 * 2 * v76 + ((v60 + 0x1000000) >> 25);
  v64 = v77 + ((v61 + 0x1000000) >> 25);
  v65 = v54 + ((v63 + 0x2000000) >> 26);
  v66 = v55 + ((v64 + 0x2000000) >> 26);
  v67 = v59 + ((v66 + 0x1000000) >> 25);
  v68 = v56 + v25 * v15 + v33 * v80 + v37 * v13 + ((v67 + 0x2000000) >> 26);
  v69 = v58 - ((v58 + 0x2000000) & 0xFFFFFFFFFC000000) + 19 * ((v68 + 0x1000000) >> 25);
  result = a1;
  *a1 = v69 - ((v69 + 0x2000000) & 0xFC000000);
  a1[1] = v60 - ((v60 + 0x1000000) & 0xFE000000) + ((v69 + 0x2000000) >> 26);
  v71 = v62 + ((v65 + 0x1000000) >> 25);
  a1[2] = v63 - ((v63 + 0x2000000) & 0xFC000000);
  a1[3] = v65 - ((v65 + 0x1000000) & 0xFE000000);
  a1[4] = v71 - ((v71 + 0x2000000) & 0xFC000000);
  a1[5] = v61 - ((v61 + 0x1000000) & 0xFE000000) + ((v71 + 0x2000000) >> 26);
  a1[6] = v64 - ((v64 + 0x2000000) & 0xFC000000);
  a1[7] = v66 - ((v66 + 0x1000000) & 0xFE000000);
  a1[8] = v67 - ((v67 + 0x2000000) & 0xFC000000);
  a1[9] = v68 - ((v68 + 0x1000000) & 0xFE000000);
  return result;
}

uint64_t fe_isnegative(_DWORD *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  fe_tobytes(v2, a1);
  return v2[0] & 1;
}

uint64_t fe_tobytes(uint64_t result, _DWORD *a2)
{
  v2 = a2[1];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  v8 = a2[7];
  v9 = a2[8];
  v10 = a2[9];
  v11 = *a2 + 19 * ((v10 + ((v9 + ((v8 + ((v7 + ((v6 + ((v5 + ((v4 + ((v3 + ((v2 + ((*a2 + ((19 * v10 + 0x1000000) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25)) >> 26)) >> 25);
  v12 = v2 + (v11 >> 26);
  v13 = v3 + (v12 >> 25);
  v14 = v4 + (v13 >> 26);
  v15 = v5 + (v14 >> 25);
  v16 = v6 + (v15 >> 26);
  v17 = v7 + (v16 >> 25);
  v18 = v8 + (v17 >> 26);
  v19 = v9 + (v18 >> 25);
  v20 = v10 + (v19 >> 26);
  *result = v11;
  *(result + 2) = BYTE2(v11);
  *(result + 3) = HIBYTE(v11) & 3 | (4 * v12);
  *(result + 4) = v12 >> 6;
  *(result + 5) = v12 >> 14;
  *(result + 6) = (v12 >> 22) & 7 | (8 * v13);
  *(result + 7) = v13 >> 5;
  *(result + 8) = v13 >> 13;
  *(result + 9) = (v13 >> 21) & 0x1F | (32 * v14);
  *(result + 10) = v14 >> 3;
  *(result + 11) = v14 >> 11;
  *(result + 12) = (v14 >> 19) & 0x3F | (v15 << 6);
  *(result + 13) = v15 >> 2;
  *(result + 14) = v15 >> 10;
  *(result + 15) = v15 >> 18;
  *(result + 16) = v16;
  *(result + 18) = BYTE2(v16);
  *(result + 19) = HIBYTE(v16) & 1 | (2 * v17);
  *(result + 20) = v17 >> 7;
  *(result + 21) = v17 >> 15;
  *(result + 22) = (v17 >> 23) & 7 | (8 * v18);
  *(result + 23) = v18 >> 5;
  *(result + 24) = v18 >> 13;
  *(result + 25) = (v18 >> 21) & 0xF | (16 * v19);
  *(result + 26) = v19 >> 4;
  *(result + 27) = v19 >> 12;
  *(result + 28) = (v19 >> 20) & 0x3F | (v20 << 6);
  *(result + 29) = v20 >> 2;
  *(result + 30) = v20 >> 10;
  *(result + 31) = (v20 >> 18) & 0x7F;
  return result;
}

uint64_t fe_isnonzero(_DWORD *a1)
{
  v3 = *MEMORY[0x29EDCA608];
  fe_tobytes(v2, a1);
  return crypto_verify_32(v2, zero);
}

uint64_t crypto_verify_32(int8x16_t *a1, int8x16_t *a2)
{
  v2 = vorrq_s8(veorq_s8(*a2, *a1), veorq_s8(a2[1], a1[1]));
  *v2.i8 = vorr_s8(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  return ((((v2.i8[0] | v2.i8[4] | ((v2.i32[0] | v2.i32[1]) >> 16) | ((v2.i16[0] | v2.i16[2] | ((v2.i32[0] | v2.i32[1]) >> 16)) >> 8)) - 1) >> 8) & 1) - 1;
}

_DWORD *fe_frombytes(_DWORD *result, unsigned int *a2)
{
  v2 = *(a2 + 6);
  v3 = (*(a2 + 4) << 6) | (*(a2 + 5) << 14) | (v2 << 22);
  v4 = *(a2 + 12);
  v5 = *(a2 + 25);
  v6 = (*(a2 + 31) & 0x7F) << 18;
  v7 = v6 | (*(a2 + 30) << 10) | (4 * *(a2 + 29));
  v6 += 0x1000000;
  v8 = a2[4];
  v9 = *a2 + 19 * (v6 >> 25);
  v10 = (v2 << 22) + 0x1000000;
  v11 = v8 + 0x1000000;
  v12 = ((32 * *(a2 + 7)) | (*(a2 + 8) << 13) | (*(a2 + 9) << 21)) + (v10 >> 25);
  LODWORD(v10) = v3 - (v10 & 0x7E000000) + ((v9 + 0x2000000) >> 26);
  v13 = v9 - ((v9 + 0x2000000) & 0xFC000000);
  v14 = ((v12 + 0x2000000) >> 26) + ((8 * *(a2 + 10)) | (*(a2 + 11) << 11) | (v4 << 19));
  v15 = (v4 << 19) + 0x1000000;
  v16 = v14 - (v15 & 0xE000000);
  v17 = ((4 * *(a2 + 13)) | (*(a2 + 14) << 10) | (*(a2 + 15) << 18)) + (v15 >> 25);
  v18 = v8 - ((v8 + 0x1000000) & 0xFE000000) + ((v17 + 0x2000000) >> 26);
  v19 = *(a2 + 26);
  v20 = ((*(a2 + 20) << 7) | (*(a2 + 21) << 15) | (*(a2 + 22) << 23)) + (v11 >> 25);
  v21 = ((v20 + 0x2000000) >> 26) + ((32 * *(a2 + 23)) | (*(a2 + 24) << 13) | (v5 << 21));
  v22 = *(a2 + 27);
  v23 = *(a2 + 28);
  v24 = (v5 << 21) + 0x1000000;
  v25 = v21 - (v24 & 0x3E000000);
  *result = v13;
  result[1] = v10;
  v26 = ((16 * v19) | (v22 << 12) | (v23 << 20)) + (v24 >> 25);
  result[2] = v12 - ((v12 + 0x2000000) & 0xFC000000);
  result[3] = v16;
  result[4] = v17 - ((v17 + 0x2000000) & 0xFC000000);
  result[5] = v18;
  result[6] = v20 - ((v20 + 0x2000000) & 0xFC000000);
  result[7] = v25;
  result[8] = v26 - ((v26 + 0x2000000) & 0xFC000000);
  result[9] = v7 + ((v26 + 0x2000000) >> 26) - (v6 & 0x2000000);
  return result;
}

int32x4_t fe_neg(uint64_t a1, uint64_t a2)
{
  result = vnegq_s32(*a2);
  v3 = vnegq_s32(*(a2 + 16));
  v4 = vneg_s32(*(a2 + 32));
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}