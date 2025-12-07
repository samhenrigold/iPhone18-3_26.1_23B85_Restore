uint64_t cccurve448(void (**a1)(void, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v11 = timingsafe_enable_if_supported();
  v8 = ccec_cp_x448();
  v9 = cccurve448_internal(v8, a2, a3, a4, a1);
  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t cccurve448_make_pub(void (**a1)(void, uint64_t, uint64_t *), uint64_t a2, uint64_t a3)
{
  v9 = timingsafe_enable_if_supported();
  v6 = ccec_cp_x448();
  v7 = cccurve448_internal(v6, a2, a3, kX448BasePoint, a1);
  cc_disable_dit_with_sb(&v9);
  return v7;
}

uint64_t ccspake_kex_generate(unsigned __int8 *a1, uint64_t a2, _BYTE *a3)
{
  v28 = timingsafe_enable_if_supported();
  v6 = (*(*a1 + 8))();
  v7 = cczp_bitlen(v6);
  v8 = a1[60];
  if (v8 == CCSPAKE_STATE_INIT || v8 == CCSPAKE_STATE_KEX_PROCESS)
  {
    v10 = (v7 + 7) >> 3;
    if (((2 * v10) | 1) == a2)
    {
      v11 = *v6;
      v12 = sizeof_struct_cche_galois_key();
      v13 = sizeof_struct_ccpolyzp_po2cyc();
      v26[0] = cc_malloc_clear(8 * ((v12 + v13 + v13 * 3 * v11 - 1) / v13 + 33 * v11));
      v14 = sizeof_struct_cche_galois_key();
      v15 = sizeof_struct_ccpolyzp_po2cyc();
      v26[1] = (v14 + v15 + v15 * 3 * v11 - 1) / v15 + 33 * v11;
      v26[2] = 0;
      v26[3] = cc_ws_alloc;
      v27 = cc_ws_free;
      if (v26[0])
      {
        v16 = ccspake_lazy_gen_xy_XY_ws(v26, a1);
        v24 = v16;
        if (!v16)
        {
          *a3 = 4;
          v20 = a3 + 1;
          v21 = (*(*a1 + 8))(v16, v17, v18, v19);
          v22 = ccn_write_uint_padded_internal(v11, &a1[32 * *v21 + 336], v10, v20);
          v23 = (*(*a1 + 8))(v22);
          ccn_write_uint_padded_internal(v11, &a1[40 * *v23 + 336], v10, &v20[v10]);
          a1[60] |= CCSPAKE_STATE_KEX_GENERATE;
        }

        v27(v26);
      }

      else
      {
        v24 = 4294967283;
      }
    }

    else
    {
      v24 = 4294967289;
    }
  }

  else
  {
    v24 = 4294967210;
  }

  cc_disable_dit_with_sb(&v28);
  return v24;
}

uint64_t ccspake_lazy_gen_xy_XY_ws(uint64_t a1, uint64_t *a2)
{
  v4 = a2[2];
  v5 = (*(*a2 + 8))();
  v6 = *v5;
  v7 = a2 + 42;
  v8 = (*(*a2 + 8))();
  if (ccn_n(v6, &a2[3 * *v8 + 42]))
  {
    return 0;
  }

  v18 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, (24 * v6 + 23) >> 3);
  *v10 = v5;
  v11 = (*(a1 + 24))(a1, 3 * v6);
  v12 = (*(a1 + 24))(a1, 3 * v6);
  v17 = (*(a1 + 24))(a1, 3 * v6);
  v13 = (*(a1 + 24))(a1, v6);
  result = ccec_generate_scalar_fips_retry_ws(a1, v5, a2[2], v13);
  if (!result)
  {
    result = ccec_projectify_ws(a1, v5);
    if (!result)
    {
      result = ccec_mult_blinded_ws(a1, v5, v11, v13, v17, v4);
      if (!result)
      {
        result = ccec_projectify_ws(a1, v5);
        if (!result)
        {
          (*(*a2 + 8))();
          result = ccec_mult_blinded_ws(a1, v5, v12, a2 + 42, v17, v4);
          if (!result)
          {
            ccec_full_add_ws(a1, v5);
            result = ccec_affinify_ws(a1, v5);
            if (!result)
            {
              v14 = (*(*a2 + 8))();
              v15 = ccspake_store_pub_key(v10, &v7[4 * *v14]);
              v16 = (*(*a2 + 8))(v15);
              ccn_set(v6, &v7[3 * *v16], v13);
              result = 0;
            }
          }
        }
      }
    }
  }

  *(a1 + 16) = v18;
  return result;
}

uint64_t ccspake_kex_process(uint64_t a1, uint64_t a2)
{
  v53 = timingsafe_enable_if_supported();
  v4 = (*(*a1 + 8))();
  v5 = *v4;
  v6 = sizeof_struct_cche_galois_key();
  v7 = sizeof_struct_ccpolyzp_po2cyc();
  v49[0] = cc_malloc_clear(432 * v5 + 16 * ((v6 + v7 + 3 * v5 * v7 - 1) / v7));
  v8 = *v4;
  v9 = sizeof_struct_cche_galois_key();
  v10 = sizeof_struct_ccpolyzp_po2cyc();
  v49[1] = 54 * v8 + 2 * ((v9 + v10 + 3 * v8 * v10 - 1) / v10);
  v50 = 0;
  v51 = cc_ws_alloc;
  v52 = cc_ws_free;
  if (v49[0])
  {
    v11 = *a1;
    v12 = (*(*a1 + 8))();
    v13 = *v12;
    if (ccspake_sizeof_point(v11) != a2)
    {
      v23 = 4294967289;
      goto LABEL_12;
    }

    v14 = cc_ws_alloc(v49, (24 * v13 + 23) >> 3);
    *v14 = v12;
    v15 = 3 * v13;
    v16 = v51(v49, 3 * v13);
    v17 = v51(v49, 3 * v13);
    v18 = v51(v49, 3 * v13);
    v19 = v51(v49, v15);
    v48 = v51(v49, v15);
    v47 = v51(v49, v15);
    v20 = v51(v49, v15);
    v21 = *(a1 + 16);
    v22 = *(a1 + 60);
    if (v22 != CCSPAKE_STATE_INIT && v22 != CCSPAKE_STATE_KEX_GENERATE)
    {
      v23 = 4294967210;
LABEL_12:
      v52(v49);
      goto LABEL_13;
    }

    v46 = v20;
    v24 = ccspake_import_pub_ws(v49);
    if (!v24)
    {
      v24 = ccspake_lazy_gen_xy_XY_ws(v49, a1);
      if (!v24)
      {
        v26 = a1 + 336;
        v27 = (*(*a1 + 8))();
        if (!ccspake_cmp_pub_key(v14, (a1 + 336 + 32 * *v27)))
        {
          v23 = 4294967289;
          goto LABEL_11;
        }

        v24 = ccec_projectify_ws(v49, v12);
        if (!v24)
        {
          v24 = ccec_projectify_ws(v49, v12);
          if (!v24)
          {
            (*(*a1 + 8))();
            v24 = ccec_mult_blinded_ws(v49, v12, v18, (a1 + 336), v16, v21);
            if (!v24)
            {
              v28 = ccec_full_sub_ws(v49, v12, v19, v17, v18);
              v29 = (*(*a1 + 8))(v28);
              v24 = ccec_mult_blinded_ws(v49, v12, v48, (v26 + 24 * *v29), v19, v21);
              if (!v24)
              {
                v30 = *(a1 + 24);
                v31 = (v26 + 8 * *(*(*a1 + 8))());
                v32 = v12;
                if (v30 == 1)
                {
                  v33 = v47;
                  v34 = v19;
LABEL_24:
                  v24 = ccec_mult_blinded_ws(v49, v32, v33, v31, v34, v21);
                  if (!v24)
                  {
                    v24 = ccec_affinify_ws(v49, v12);
                    if (!v24)
                    {
                      v24 = ccec_affinify_ws(v49, v12);
                      if (!v24)
                      {
                        v35 = (*(*a1 + 8))();
                        v36 = ccspake_store_pub_key(v14, (v26 + 48 * *v35));
                        v37 = *(a1 + 24);
                        v38 = *(*(*a1 + 8))(v36);
                        v39 = *(*(*a1 + 8))();
                        if (v37 == 1)
                        {
                          appended = ccspake_transcript_append_point(a1, v12, (v26 + 32 * v38), (v26 + 40 * v39));
                          v41 = 48 * *(*(*a1 + 8))(appended);
                          v42 = 56;
                        }

                        else
                        {
                          v43 = ccspake_transcript_append_point(a1, v12, (v26 + 48 * v38), (v26 + 56 * v39));
                          v41 = 32 * *(*(*a1 + 8))(v43);
                          v42 = 40;
                        }

                        v44 = (*(*a1 + 8))();
                        ccspake_transcript_append_point(a1, v12, (v26 + v41), (v26 + *v44 * v42));
                        ccspake_transcript_append_point(a1, v12, v48, &v48[*v12]);
                        v45 = ccspake_transcript_append_point(a1, v12, v47, &v47[*v12]);
                        (*(*a1 + 8))(v45);
                        ccspake_transcript_append_scalar(a1, v12, (a1 + 336));
                        ccspake_transcript_finish(a1, a1 + 272);
                        v23 = 0;
                        *(a1 + 60) |= CCSPAKE_STATE_KEX_PROCESS;
                        goto LABEL_11;
                      }
                    }
                  }

                  goto LABEL_10;
                }

                v24 = ccec_validate_point_and_projectify_ws(v49, v12, v46, v31);
                if (!v24)
                {
                  v31 = (v26 + 24 * *(*(*a1 + 8))());
                  v32 = v12;
                  v33 = v47;
                  v34 = v46;
                  goto LABEL_24;
                }
              }
            }
          }
        }
      }
    }

LABEL_10:
    v23 = v24;
LABEL_11:
    v50 = 0;
    goto LABEL_12;
  }

  v23 = 4294967283;
LABEL_13:
  cc_disable_dit_with_sb(&v53);
  return v23;
}

int8x16_t *ccmode_xts_mult_alpha(int8x16_t *result)
{
  v1 = *result;
  *result = vorrq_s8(vaddq_s8(*result, *result), vextq_s8(0, vshrq_n_u8(*result, 7uLL), 0xFuLL));
  if (v1.i8[15] < 0)
  {
    result->i8[0] ^= 0x87u;
  }

  return result;
}

uint64_t ccrsa_generate_key(unint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, unsigned int (**a5)(void, unint64_t, uint64_t))
{
  v12 = timingsafe_enable_if_supported();
  key_internal = ccrsa_generate_key_internal(a1, a2, a3, a4, a5, a5);
  cc_disable_dit_with_sb(&v12);
  return key_internal;
}

uint64_t ccrsa_make_pub(unint64_t *a1, unint64_t a2, unsigned __int8 *a3, unint64_t a4, unsigned __int8 *a5)
{
  v10 = cc_malloc_clear(40 * *a1 + 24);
  v11 = *a1;
  v12 = 5 * *a1 + 3;
  v15[0] = v10;
  v15[1] = v12;
  v15[2] = 0;
  v15[3] = cc_ws_alloc;
  v16 = cc_ws_free;
  if (!v10)
  {
    return 4294967283;
  }

  if (ccn_read_uint_public_value(v11, a1 + 3, a4, a5) || ccn_read_uint_public_value(v11, &a1[2 * *a1 + 4], a2, a3))
  {
    inited = 4294967273;
    cc_ws_free(v15);
  }

  else
  {
    inited = cczp_mm_init_ws(v15, a1, v11, 0);
    v16(v15);
  }

  return inited;
}

unint64_t CCHE_ENCRYPT_ZERO_SYMMETRIC_HELPER_WORKSPACE_N(unint64_t a1, int a2)
{
  v4 = sizeof_struct_ccpolyzp_po2cyc_block_rng_state();
  v5 = CCPOLYZP_PO2CYC_RANDOM_UNIFORM_WORKSPACE_N(a1);
  v6 = v5 + (a2 * a1) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v7 = CCPOLYZP_PO2CYC_RANDOM_CBD_WORKSPACE_N(a1);
  if (v6 <= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  return v8 + ((v4 + 7) >> 3);
}

uint64_t cche_encrypt_symmetric(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t (**a7)(void, uint64_t, uint64_t))
{
  v9 = a5;
  v27 = timingsafe_enable_if_supported();
  v14 = cche_param_ctx_polynomial_degree(a3);
  v15 = CCHE_ENCRYPT_ZERO_SYMMETRIC_HELPER_WORKSPACE_N(v14, v9);
  v16 = CCHE_CIPHERTEXT_PLAINTEXT_ADD_WORKSPACE_N(v14);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = cc_malloc_clear(8 * v17);
  v25[0] = v18;
  v19 = cche_param_ctx_polynomial_degree(a3);
  v20 = CCHE_ENCRYPT_ZERO_SYMMETRIC_HELPER_WORKSPACE_N(v19, v9);
  v21 = CCHE_CIPHERTEXT_PLAINTEXT_ADD_WORKSPACE_N(v19);
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v25[1] = v22;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (v18)
  {
    v23 = cche_encrypt_symmetric_ws(v25, a1, a2, a3, a4, v9, a6, a7);
    v26(v25);
  }

  else
  {
    v23 = 4294967283;
  }

  cc_disable_dit_with_sb(&v27);
  return v23;
}

uint64_t cczp_mm_init_ws(uint64_t a1, uint64_t *a2, uint64_t a3, void *__src)
{
  *a2 = a3;
  if (__src)
  {
    ccn_set(a3, a2 + 3, __src);
  }

  result = cczp_init_ws(a1, a2);
  a2[2] = cczp_montgomery_funcs;
  return result;
}

uint64_t cczp_mm_power_fast_ws(uint64_t a1, const void *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = cczp_n(a2);
  v11 = cczp_prime(a2);
  if ((ccn_cmp_internal(v10, a4, v11) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  v13 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v10);
  v15 = (*(a1 + 24))(a1, v10);
  cc_clear(8 * (*(a1 + 16) - v13), (*a1 + 8 * v13));
  v16 = (*(a1 + 24))(a1, 2 * v10 + 4);
  v17 = cczp_n(a2);
  memcpy(v16, a2, 16 * v17 + 32);
  v16[2] = cczp_montgomery_funcs;
  cczp_mm_to_ws(a1, v16, v14, a4);
  v12 = cczp_power_fast_ws(a1, v16, v15, v14, a5);
  if (!v12)
  {
    cczp_mm_from_ws(a1, v16, a3, v15);
  }

  *(a1 + 16) = v13;
  return v12;
}

uint64_t cczp_mm_to_ws(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 2 * v8);
  ccn_mul_ws(a1, v8, v10, a4, &a2[*a2 + 4]);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v9;
  return result;
}

uint64_t cczp_mm_from_ws(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = cczp_n(a2);
  v9 = *(a1 + 16);
  v10 = (*(a1 + 24))(a1, 2 * v8);
  if (v8)
  {
    ccn_set(v8, v10, a4);
  }

  ccn_zero(v8, &v10[8 * v8]);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v9;
  return result;
}

uint64_t cczp_mm_power_ws(uint64_t a1, const void *a2, uint64_t *a3, uint64_t *a4, uint64_t a5, void *a6)
{
  v12 = cczp_n(a2);
  v13 = cczp_prime(a2);
  if ((ccn_cmp_internal(v12, a4, v13) & 0x80000000) == 0)
  {
    return 4294967289;
  }

  v15 = *(a1 + 16);
  v16 = (*(a1 + 24))(a1, 2 * v12 + 4);
  v17 = cczp_n(a2);
  memcpy(v16, a2, 16 * v17 + 32);
  v16[2] = cczp_montgomery_funcs;
  cczp_mm_to_ws(a1, v16, a3, a4);
  v14 = cczp_power_ws(a1, v16, a3, a3, a5, a6);
  if (!v14)
  {
    cczp_mm_from_ws(a1, v16, a3, a3);
  }

  *(a1 + 16) = v15;
  return v14;
}

uint64_t cczp_mm_mul_ws(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = cczp_n(a2);
  v12 = (*(a1 + 24))(a1, 2 * v11);
  ccn_mul_ws(a1, v11, v12, a4, a5);
  result = cczp_mm_redc_ws(a1, a2, a3, v12);
  *(a1 + 16) = v10;
  return result;
}

uint64_t cczp_mm_sqr_ws(uint64_t a1, void *a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = cczp_n(a2);
  v10 = (*(a1 + 24))(a1, 2 * v9);
  ccn_sqr_ws(a1, v9, v10, a4);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v8;
  return result;
}

uint64_t cczp_mm_mod_ws(uint64_t a1, void *a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = 2 * cczp_n(a2);
  v10 = (*(a1 + 24))(a1, v9);
  ccn_set(v9, v10, a4);
  result = cczp_mm_redc_ws(a1, a2, a3, v10);
  *(a1 + 16) = v8;
  return result;
}

void *ccec448_add_ws(uint64_t a1, uint64_t a2, void *a3, void *a4, unint64_t *a5)
{
  v36[7] = *MEMORY[0x29EDCA608];
  v6 = a5[1];
  v7 = *a5 + *a4;
  v8 = __CFADD__(__CFADD__(*a5, *a4), a4[1]);
  v9 = a4[2];
  v10 = a4[3];
  v11 = a5[2];
  v12 = a5[3];
  v29 = __CFADD__(v11, v9);
  v13 = v11 + v9;
  v14 = v29;
  v29 = __CFADD__(v12, v10);
  v15 = v12 + v10;
  v16 = v29;
  v17 = a4[4];
  v18 = a4[5];
  v19 = a5[4];
  v20 = a5[5];
  v29 = __CFADD__(v19, v17);
  v21 = v19 + v17;
  v22 = v29;
  v29 = __CFADD__(v20, v18);
  v23 = v20 + v18;
  v24 = v29;
  v36[0] = *a5 + *a4;
  v36[1] = *(&v7 + 1) + v6;
  v29 = __CFADD__(__CFADD__(__CFADD__(*(&v7 + 1), v6), v13) | __CFADD__(v8, __CFADD__(*(&v7 + 1), v6) + v13), v15);
  v25 = (__CFADD__(__CFADD__(*(&v7 + 1), v6), v13) | __CFADD__(v8, __CFADD__(*(&v7 + 1), v6) + v13)) + v15;
  v36[2] = v8 + __CFADD__(*(&v7 + 1), v6) + v13;
  v36[3] = v14 + v25;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v36[4] = v16 + (v29 | __CFADD__(v14, v25)) + v21;
  v36[5] = v22 + (__CFADD__(v29 | __CFADD__(v14, v25), v21) | __CFADD__(v16, (v29 | __CFADD__(v14, v25)) + v21)) + v23;
  v27 = a4[6];
  v28 = a5[6];
  v29 = __CFADD__(v28, v27);
  v30 = v28 + v27;
  v31 = v29;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v33 = v29;
  v29 = __CFADD__(v29, v30);
  v32 = v33 + v30;
  v29 |= __CFADD__(v24, v32);
  v32 += v24;
  if (v29)
  {
    v34 = v31 + 1;
  }

  else
  {
    v34 = v31;
  }

  v36[6] = v32;
  return ccec448_redc_one(a3, v36, v34);
}

void *ccec448_redc_one(void *result, uint64_t a2, uint64_t a3)
{
  v3 = *a2 + a3;
  v6 = *(a2 + 32);
  v5 = (__CFADD__(__CFADD__(*a2, a3), *(a2 + 8)) + *(a2 + 16)) >> 64;
  v4 = __CFADD__(__CFADD__(*a2, a3), *(a2 + 8)) + *(a2 + 16);
  v11 = __CFADD__(__CFADD__(__CFADD__(__CFADD__(*a2, a3), *(a2 + 8)), *(a2 + 16)), *(a2 + 24)) | __CFADD__(a3 << 32, v5);
  v7 = (a3 << 32) + v5;
  result[4] = v11 + v6;
  v8 = *(a2 + 40);
  v9 = __CFADD__(v11, v6);
  v11 = __CFADD__(v9, v8);
  result[5] = v9 + v8;
  v10 = *(a2 + 48);
  v13 = v11;
  v11 = __CFADD__(v11, v10);
  v12 = v13 + v10;
  v14 = v11;
  result[6] = v12;
  v15 = v11;
  v11 = __CFADD__(v11, v3);
  *result = v15 + v3;
  result[1] = v11 + *(&v3 + 1);
  result[2] = __CFADD__(v11, *(&v3 + 1)) + v4;
  result[3] = (v14 << 32) + __CFADD__(__CFADD__(v11, *(&v3 + 1)), v4) + v7;
  return result;
}

void ccec448_sub_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, void *a5)
{
  v5 = *a4 - __PAIR128__(*a5, *a5);
  v6 = a4[1] - __PAIR128__(a5[1], a5[1]) + __PAIR128__(*(&v5 + 1) >> 63, *(&v5 + 1) >> 63);
  v7 = a4[2] - __PAIR128__(a5[2], a5[2]) + __PAIR128__(*(&v6 + 1) >> 63, *(&v6 + 1) >> 63);
  v8 = a4[3] - __PAIR128__((a4[2] - __PAIR128__(a5[2], a5[2])) >> 64, a5[3]) + __PAIR128__(*(&v7 + 1) >> 63, *(&v7 + 1) >> 63);
  v9 = a4[4] - __PAIR128__(a5[4], a5[4]) + __PAIR128__(*(&v8 + 1) >> 63, *(&v8 + 1) >> 63);
  v11 = (a4[5] - __PAIR128__(a5[5], a5[5]) + __PAIR128__(*(&v9 + 1) >> 63, *(&v9 + 1) >> 63)) >> 64;
  v10 = a4[5] - a5[5] + (*(&v9 + 1) >> 63);
  v13 = (a4[6] - __PAIR128__(a5[6], a5[6]) + __PAIR128__(v11 >> 63, v11 >> 63)) >> 64;
  v12 = a4[6] - a5[6] + (v11 >> 63);
  v14 = v13 >> 63;
  v15 = v5 - __PAIR128__(v13, v13 >> 63);
  v16 = v6 + (*(&v15 + 1) >> 63);
  if (__CFADD__(v6, *(&v15 + 1) >> 63))
  {
    v17 = (*(&v15 + 1) >> 63) + 1;
  }

  else
  {
    v17 = *(&v15 + 1) >> 63;
  }

  v18 = v7 + (v17 >> 63);
  if (__CFADD__(v7, v17 >> 63))
  {
    v19 = (v17 >> 63) + 1;
  }

  else
  {
    v19 = v17 >> 63;
  }

  v20 = v8 - __PAIR128__(v14, v14 << 32) + __PAIR128__(v19 >> 63, v19 >> 63);
  if (__CFADD__(v9, *(&v20 + 1) >> 63))
  {
    v21 = (*(&v20 + 1) >> 63) + 1;
  }

  else
  {
    v21 = *(&v20 + 1) >> 63;
  }

  v22 = __CFADD__(v10, v21 >> 63);
  v23 = v10 + (v21 >> 63);
  if (v22)
  {
    v24 = (v21 >> 63) + 1;
  }

  else
  {
    v24 = v21 >> 63;
  }

  a3[4] = v9 + (*(&v20 + 1) >> 63);
  a3[5] = v23;
  v25 = v24 >> 63;
  if (__CFADD__(v12, v24 >> 63))
  {
    ++v25;
  }

  a3[6] = v12 + (*(&v15 + 1) >> 63);
  v26 = v25 >> 63;
  v27 = v15 - __PAIR128__(v25, v25 >> 63);
  v22 = __CFADD__(v16, *(&v27 + 1) >> 63);
  v28 = v16 + (*(&v27 + 1) >> 63);
  if (v22)
  {
    v29 = (*(&v27 + 1) >> 63) + 1;
  }

  else
  {
    v29 = *(&v27 + 1) >> 63;
  }

  *a3 = v27;
  a3[1] = v28;
  v30 = *(&v27 + 1) >> 63;
  if (__CFADD__(v18, *(&v27 + 1) >> 63))
  {
    ++v30;
  }

  a3[2] = v18 + (v29 >> 63);
  a3[3] = v20 - (v26 << 32) + (v30 >> 63);
}

void *ccec448_mul_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, unint64_t *a5)
{
  v254[14] = *MEMORY[0x29EDCA608];
  v7 = *a4;
  v6 = a4[1];
  v8 = *a5;
  v9 = a5[1];
  v10 = (v6 * *a5) >> 64;
  v11 = (*a4 * *a5) >> 64;
  v12 = __CFADD__(v6 * *a5, (*a5 * *a4) >> 64);
  v13 = v9 * v7;
  v14 = (v9 * v7) >> 64;
  v15 = v14 + v10;
  v16 = __CFADD__(v14, v10);
  v18 = a4[2];
  v17 = a4[3];
  v19 = (v18 * v8) >> 64;
  v20 = (v9 * v6) >> 64;
  v22 = a5[2];
  v21 = a5[3];
  v23 = (v22 * v7) >> 64;
  v24 = v22 * v7;
  v25 = v18 * v8 + v9 * v6;
  v26 = __CFADD__(v18 * v8, v9 * v6);
  v27 = __CFADD__(v25, v24);
  v28 = v25 + v24;
  if (v27)
  {
    ++v26;
  }

  v27 = __CFADD__(v19, v20);
  v29 = v19 + v20;
  v30 = v27;
  v27 = __CFADD__(v29, v23);
  v31 = v29 + v23;
  if (v27)
  {
    ++v30;
  }

  v254[0] = *a5 * *a4;
  v254[1] = v11 + v13;
  v32 = v12 + __CFADD__(v11, v13) + v15;
  v27 = __CFADD__(__CFADD__(__CFADD__(v11, v13), v15) | __CFADD__(v12, __CFADD__(v11, v13) + v15), v31);
  v33 = (__CFADD__(__CFADD__(v11, v13), v15) | __CFADD__(v12, __CFADD__(v11, v13) + v15)) + v31;
  v27 |= __CFADD__(v16, v33);
  v33 += v16;
  if (v27)
  {
    v34 = v30 + 1;
  }

  else
  {
    v34 = v30;
  }

  v35 = (v17 * v8) >> 64;
  v36 = v17 * v8;
  v37 = (v18 * v9) >> 64;
  v38 = (v22 * v6) >> 64;
  v39 = (v21 * v7) >> 64;
  v40 = v21 * v7;
  v41 = v22 * v6 + v18 * v9;
  v42 = __CFADD__(v22 * v6, v18 * v9);
  v27 = __CFADD__(v41, v36);
  v43 = v41 + v36;
  if (v27)
  {
    ++v42;
  }

  v44 = v43 + v40;
  if (__CFADD__(v43, v40))
  {
    v45 = v42 + 1;
  }

  else
  {
    v45 = v42;
  }

  v27 = __CFADD__(v38, v37);
  v46 = v38 + v37;
  v47 = v27;
  v27 = __CFADD__(v46, v35);
  v48 = v46 + v35;
  if (v27)
  {
    v49 = v47 + 1;
  }

  else
  {
    v49 = v47;
  }

  v27 = __CFADD__(v48, v39);
  v50 = v48 + v39;
  if (v27)
  {
    v51 = v49 + 1;
  }

  else
  {
    v51 = v49;
  }

  v52 = v28 + v32;
  v53 = v26 + __CFADD__(v28, v32) + v33;
  v27 = __CFADD__(__CFADD__(__CFADD__(v28, v32), v33) | __CFADD__(v26, __CFADD__(v28, v32) + v33), v50);
  v54 = (__CFADD__(__CFADD__(v28, v32), v33) | __CFADD__(v26, __CFADD__(v28, v32) + v33)) + v50;
  v27 |= __CFADD__(v34, v54);
  v54 += v34;
  if (v27)
  {
    v55 = v51 + 1;
  }

  else
  {
    v55 = v51;
  }

  v56 = a4[4];
  v57 = a4[5];
  v58 = v56 * v8;
  v59 = (v17 * v9) >> 64;
  v60 = (v22 * v18) >> 64;
  v61 = v21 * v6;
  v62 = v17 * v9 + v22 * v18;
  v63 = __CFADD__(v17 * v9, v22 * v18);
  v27 = __CFADD__(v62, v61);
  v64 = v62 + v61;
  if (v27)
  {
    ++v63;
  }

  v27 = __CFADD__(v64, v58);
  v65 = v64 + v58;
  v66 = a5[4];
  v67 = a5[5];
  v68 = v66 * v7;
  if (v27)
  {
    ++v63;
  }

  v27 = __CFADD__(v65, v68);
  v69 = v65 + v68;
  v70 = (v21 * v6) >> 64;
  if (v27)
  {
    ++v63;
  }

  v27 = __CFADD__(v59, v60);
  v71 = v59 + v60;
  v72 = v27;
  v27 = __CFADD__(v71, v70);
  v73 = v71 + v70;
  v74 = (v56 * v8) >> 64;
  if (v27)
  {
    ++v72;
  }

  v27 = __CFADD__(v73, v74);
  v75 = v73 + v74;
  v76 = (v66 * v7) >> 64;
  if (v27)
  {
    ++v72;
  }

  v27 = __CFADD__(v75, v76);
  v77 = v75 + v76;
  if (v27)
  {
    ++v72;
  }

  v254[2] = v52;
  v254[3] = v44 + v53;
  v27 = __CFADD__(__CFADD__(v44, v53), v54) | __CFADD__(v45, __CFADD__(v44, v53) + v54);
  v78 = v45 + __CFADD__(v44, v53) + v54;
  v79 = v55 + v27 + v77;
  if (__CFADD__(v27, v77) | __CFADD__(v55, v27 + v77))
  {
    v80 = v72 + 1;
  }

  else
  {
    v80 = v72;
  }

  v81 = v57 * v8;
  v82 = v56 * v9;
  v83 = (v56 * v9) >> 64;
  v84 = v21 * v18 + v17 * v22;
  v85 = __CFADD__(v21 * v18, v17 * v22);
  v27 = __CFADD__(v84, v82);
  v86 = v84 + v82;
  v87 = v66 * v6;
  if (v27)
  {
    ++v85;
  }

  v27 = __CFADD__(v86, v87);
  v88 = v86 + v87;
  v89 = (v17 * v22) >> 64;
  if (v27)
  {
    ++v85;
  }

  v27 = __CFADD__(v88, v81);
  v90 = v88 + v81;
  v91 = v67 * v7;
  if (v27)
  {
    ++v85;
  }

  v27 = __CFADD__(v90, v91);
  v92 = v90 + v91;
  v93 = (v21 * v18) >> 64;
  if (v27)
  {
    ++v85;
  }

  v27 = __CFADD__(v93, v89);
  v94 = v93 + v89;
  v95 = v27;
  v27 = __CFADD__(v94, v83);
  v96 = v94 + v83;
  v97 = (v66 * v6) >> 64;
  if (v27)
  {
    ++v95;
  }

  v27 = __CFADD__(v96, v97);
  v98 = v96 + v97;
  v99 = (v57 * v8) >> 64;
  if (v27)
  {
    ++v95;
  }

  v27 = __CFADD__(v98, v99);
  v100 = v98 + v99;
  v101 = (v67 * v7) >> 64;
  if (v27)
  {
    ++v95;
  }

  v27 = __CFADD__(v100, v101);
  v102 = v100 + v101;
  if (v27)
  {
    v103 = v95 + 1;
  }

  else
  {
    v103 = v95;
  }

  v27 = __CFADD__(v69, v78);
  v104 = v69 + v78;
  v106 = v27;
  v27 = __CFADD__(v27, v79);
  v105 = v106 + v79;
  v27 |= __CFADD__(v63, v105);
  v105 += v63;
  v108 = v27 + v102;
  v27 = __CFADD__(v27, v102) | __CFADD__(v80, v108);
  v107 = v80 + v108;
  if (v27)
  {
    v109 = v103 + 1;
  }

  else
  {
    v109 = v103;
  }

  v254[4] = v104;
  v254[5] = v92 + v105;
  v110 = a4[6];
  v111 = (v56 * v22) >> 64;
  v112 = (v21 * v17) >> 64;
  v113 = (v66 * v18) >> 64;
  v27 = __CFADD__(v111, v112);
  v114 = v111 + v112;
  v115 = v27;
  v27 = __CFADD__(v114, v113);
  v116 = v114 + v113;
  v117 = (v57 * v9) >> 64;
  if (v27)
  {
    ++v115;
  }

  v27 = __CFADD__(v116, v117);
  v118 = v116 + v117;
  v119 = (v67 * v6) >> 64;
  if (v27)
  {
    ++v115;
  }

  v27 = __CFADD__(v118, v119);
  v120 = v118 + v119;
  v121 = (v110 * v8) >> 64;
  v122 = a5[6];
  if (v27)
  {
    ++v115;
  }

  v27 = __CFADD__(v120, v121);
  v123 = v120 + v121;
  v124 = (v122 * v7) >> 64;
  if (v27)
  {
    ++v115;
  }

  v27 = __CFADD__(v123, v124);
  v125 = v123 + v124;
  if (v27)
  {
    ++v115;
  }

  v27 = __CFADD__(__CFADD__(v92, v105), v107);
  v126 = __CFADD__(v92, v105) + v107;
  v27 |= __CFADD__(v85, v126);
  v126 += v85;
  v127 = v110 * v8;
  v128 = v57 * v9;
  v129 = v56 * v22;
  v130 = v21 * v17;
  v132 = v27;
  v27 = __CFADD__(v27, v125);
  v131 = v132 + v125;
  v27 |= __CFADD__(v109, v131);
  v131 += v109;
  v133 = v66 * v18;
  if (v27)
  {
    ++v115;
  }

  v27 = __CFADD__(v129, v130);
  v134 = v129 + v130;
  v135 = v27;
  v27 = __CFADD__(v134, v133);
  v136 = v134 + v133;
  v137 = v67 * v6;
  v138 = v122 * v7;
  if (v27)
  {
    ++v135;
  }

  v27 = __CFADD__(v136, v128);
  v139 = v136 + v128;
  if (v27)
  {
    v140 = v135 + 1;
  }

  else
  {
    v140 = v135;
  }

  v27 = __CFADD__(v139, v137);
  v141 = v139 + v137;
  if (v27)
  {
    ++v140;
  }

  v27 = __CFADD__(v141, v127);
  v142 = v141 + v127;
  if (v27)
  {
    v143 = v140 + 1;
  }

  else
  {
    v143 = v140;
  }

  v27 = __CFADD__(v142, v138);
  v144 = v142 + v138;
  if (v27)
  {
    v145 = v143 + 1;
  }

  else
  {
    v145 = v143;
  }

  v147 = v144 + v126;
  v27 = __CFADD__(__CFADD__(v144, v126), v131) | __CFADD__(v145, (__PAIR128__(v131, v144) + v126) >> 64);
  v146 = v145 + ((__PAIR128__(v131, v144) + v126) >> 64);
  if (v27)
  {
    v148 = v115 + 1;
  }

  else
  {
    v148 = v115;
  }

  v149 = (v110 * v9) >> 64;
  v150 = v110 * v9;
  v151 = v57 * v22;
  v152 = (v57 * v22) >> 64;
  v153 = (v56 * v21) >> 64;
  v154 = v66 * v17 + v56 * v21;
  v155 = __CFADD__(v66 * v17, v56 * v21);
  v27 = __CFADD__(v154, v151);
  v156 = v154 + v151;
  v157 = v67 * v18;
  if (v27)
  {
    ++v155;
  }

  v27 = __CFADD__(v156, v157);
  v158 = v156 + v157;
  v159 = (v66 * v17) >> 64;
  if (v27)
  {
    ++v155;
  }

  v27 = __CFADD__(v158, v150);
  v160 = v158 + v150;
  v161 = v122 * v6;
  if (v27)
  {
    ++v155;
  }

  v27 = __CFADD__(v160, v161);
  v162 = v160 + v161;
  v163 = (v67 * v18) >> 64;
  v164 = (v122 * v6) >> 64;
  if (v27)
  {
    ++v155;
  }

  v27 = __CFADD__(v159, v153);
  v165 = v159 + v153;
  v166 = v27;
  v27 = __CFADD__(v165, v152);
  v167 = v165 + v152;
  if (v27)
  {
    v168 = v166 + 1;
  }

  else
  {
    v168 = v166;
  }

  v27 = __CFADD__(v167, v163);
  v169 = v167 + v163;
  if (v27)
  {
    v170 = v168 + 1;
  }

  else
  {
    v170 = v168;
  }

  v27 = __CFADD__(v169, v149);
  v171 = v169 + v149;
  if (v27)
  {
    v172 = v170 + 1;
  }

  else
  {
    v172 = v170;
  }

  v27 = __CFADD__(v171, v164);
  v173 = v171 + v164;
  if (v27)
  {
    v174 = v172 + 1;
  }

  else
  {
    v174 = v172;
  }

  v27 = __CFADD__(v173, v148);
  v175 = v173 + v148;
  if (v27)
  {
    v176 = v174 + 1;
  }

  else
  {
    v176 = v174;
  }

  v177 = v110 * v22;
  v178 = (v57 * v21) >> 64;
  v179 = v67 * v17;
  v180 = v57 * v21 + v66 * v56;
  v181 = __CFADD__(v57 * v21, v66 * v56);
  v27 = __CFADD__(v180, v179);
  v182 = v180 + v179;
  v183 = (v66 * v56) >> 64;
  if (v27)
  {
    ++v181;
  }

  v27 = __CFADD__(v182, v177);
  v184 = v182 + v177;
  v185 = v122 * v18;
  if (v27)
  {
    ++v181;
  }

  v27 = __CFADD__(v184, v185);
  v186 = v184 + v185;
  v187 = (v67 * v17) >> 64;
  if (v27)
  {
    ++v181;
  }

  v27 = __CFADD__(v178, v183);
  v188 = v178 + v183;
  v189 = v27;
  v27 = __CFADD__(v188, v187);
  v190 = v188 + v187;
  v191 = (v110 * v22) >> 64;
  if (v27)
  {
    v192 = v189 + 1;
  }

  else
  {
    v192 = v189;
  }

  v27 = __CFADD__(v190, v191);
  v193 = v190 + v191;
  v194 = (v122 * v18) >> 64;
  if (v27)
  {
    v195 = v192 + 1;
  }

  else
  {
    v195 = v192;
  }

  v27 = __CFADD__(v193, v194);
  v196 = v193 + v194;
  if (v27)
  {
    v197 = v195 + 1;
  }

  else
  {
    v197 = v195;
  }

  v254[6] = v147;
  v254[7] = v162 + v146;
  v27 = __CFADD__(__CFADD__(v162, v146), v175);
  v198 = __CFADD__(v162, v146) + v175;
  v27 |= __CFADD__(v155, v198);
  v198 += v155;
  v200 = v27;
  v27 = __CFADD__(v27, v196);
  v199 = v200 + v196;
  v27 |= __CFADD__(v176, v199);
  v199 += v176;
  if (v27)
  {
    ++v197;
  }

  v201 = (v110 * v21) >> 64;
  v202 = v110 * v21;
  v203 = (v57 * v66) >> 64;
  v204 = v67 * v56 + v57 * v66;
  v205 = __CFADD__(v67 * v56, v57 * v66);
  v27 = __CFADD__(v204, v202);
  v206 = v204 + v202;
  v207 = v122 * v17;
  if (v27)
  {
    ++v205;
  }

  v27 = __CFADD__(v206, v207);
  v208 = v206 + v207;
  v209 = (v67 * v56) >> 64;
  if (v27)
  {
    ++v205;
  }

  v27 = __CFADD__(v209, v203);
  v210 = v209 + v203;
  v211 = v27;
  v27 = __CFADD__(v210, v201);
  v212 = v210 + v201;
  v213 = (v122 * v17) >> 64;
  if (v27)
  {
    v214 = v211 + 1;
  }

  else
  {
    v214 = v211;
  }

  v27 = __CFADD__(v212, v213);
  v215 = v212 + v213;
  if (v27)
  {
    v216 = v214 + 1;
  }

  else
  {
    v216 = v214;
  }

  v27 = __CFADD__(v186, v198);
  v217 = v186 + v198;
  v219 = v27;
  v27 = __CFADD__(v27, v199);
  v218 = v219 + v199;
  v27 |= __CFADD__(v181, v218);
  v218 += v181;
  v221 = v27;
  v27 = __CFADD__(v27, v215);
  v220 = v221 + v215;
  v27 |= __CFADD__(v197, v220);
  v220 += v197;
  if (v27)
  {
    v222 = v216 + 1;
  }

  else
  {
    v222 = v216;
  }

  v223 = (v110 * v66) >> 64;
  v224 = v110 * v66;
  v225 = v122 * v56;
  v27 = __CFADD__(v224, v67 * v57);
  v226 = v224 + v67 * v57;
  v227 = v27;
  v27 = __CFADD__(v226, v225);
  v228 = v226 + v225;
  v229 = (v67 * v57) >> 64;
  v230 = (v122 * v56) >> 64;
  if (v27)
  {
    ++v227;
  }

  v27 = __CFADD__(v223, v229);
  v231 = v223 + v229;
  v232 = v27;
  v27 = __CFADD__(v231, v230);
  v233 = v231 + v230;
  if (v27)
  {
    v234 = v232 + 1;
  }

  else
  {
    v234 = v232;
  }

  v254[8] = v217;
  v254[9] = v208 + v218;
  v27 = __CFADD__(__CFADD__(v208, v218), v220);
  v235 = __CFADD__(v208, v218) + v220;
  v27 |= __CFADD__(v205, v235);
  v235 += v205;
  v236 = v222 + v27 + v233;
  if (__CFADD__(v27, v233) | __CFADD__(v222, v27 + v233))
  {
    v237 = v234 + 1;
  }

  else
  {
    v237 = v234;
  }

  v238 = (v110 * v67) >> 64;
  v239 = (v122 * v57) >> 64;
  v240 = v122 * v57;
  v241 = v240 + v110 * v67;
  v242 = __CFADD__(v240, v110 * v67);
  v27 = __CFADD__(v239, v238);
  v243 = v239 + v238;
  v244 = v27;
  v27 = __CFADD__(v228, v235);
  v245 = v228 + v235;
  v247 = v27;
  v27 = __CFADD__(v27, v236);
  v246 = v247 + v236;
  v27 |= __CFADD__(v227, v246);
  v246 += v227;
  v249 = v27 + v243;
  v27 = __CFADD__(v27, v243) | __CFADD__(v237, v249);
  v248 = v237 + v249;
  if (v27)
  {
    v250 = v244 + 1;
  }

  else
  {
    v250 = v244;
  }

  v254[10] = v245;
  v254[11] = v241 + v246;
  v27 = __CFADD__(__CFADD__(v241, v246), v248) | __CFADD__(v242, __CFADD__(v241, v246) + v248);
  v251 = v242 + __CFADD__(v241, v246) + v248;
  v252 = v122 * v110;
  if (v27)
  {
    ++v250;
  }

  v254[12] = v251 + v252;
  v254[13] = ((v122 * v110) >> 64) + __CFADD__(v251, v252) + v250;
  return ccec448_redc_full(a3, v254);
}

void *ccec448_redc_full(void *a1, void *a2)
{
  v77[7] = *MEMORY[0x29EDCA608];
  v3 = a2[6];
  v2 = a2[7];
  v4 = (v2 + *a2) >> 64;
  v5 = v2 + *a2;
  v6 = __CFADD__(__CFADD__(v2, *a2), a2[1]);
  v8 = a2[8];
  v7 = a2[9];
  v9 = a2[2];
  v10 = a2[3];
  v41 = __CFADD__(v7, v9);
  v11 = v7 + v9;
  v12 = v41;
  v13 = a2[10];
  v14 = a2[11];
  v41 = __CFADD__(v13, v10);
  v15 = v13 + v10;
  v16 = v41;
  v17 = a2[4];
  v18 = a2[5];
  v41 = __CFADD__(v14, v17);
  v19 = v14 + v17;
  v20 = v41;
  v22 = a2[12];
  v21 = a2[13];
  v41 = __CFADD__(v22, v18);
  v23 = v22 + v18;
  v24 = v41;
  v41 = __CFADD__(v21, v3);
  v25 = v21 + v3;
  v26 = v41;
  v28 = v4 + v8;
  v41 = __CFADD__(__CFADD__(v4, v8), v11) | __CFADD__(v6, (__PAIR128__(v11, v4) + v8) >> 64);
  v27 = v6 + ((__PAIR128__(v11, v4) + v8) >> 64);
  v29 = v12 + v41 + v15;
  v31 = __CFADD__(v41, v15) | __CFADD__(v12, v41 + v15);
  v30 = v16 + v31 + v19;
  v33 = __CFADD__(v31, v19) | __CFADD__(v16, v31 + v19);
  v32 = v20 + v33 + v23;
  v34 = v24 + (__CFADD__(v33, v23) | __CFADD__(v20, v33 + v23)) + v25;
  StatusReg = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0));
  v41 = __CFADD__(v13 & 0xFFFFFFFF00000000, v29);
  v36 = (v13 & 0xFFFFFFFF00000000) + v29;
  v38 = v41;
  v41 = __CFADD__(v41, v30);
  v37 = v38 + v30;
  v41 |= __CFADD__(v14, v37);
  v37 += v14;
  v40 = v41;
  v41 = __CFADD__(v41, v32);
  v39 = v40 + v32;
  v41 |= __CFADD__(v22, v39);
  v39 += v22;
  v43 = v41;
  v41 = __CFADD__(v41, v34);
  v42 = v43 + v34;
  v41 |= __CFADD__(v21, v42);
  v42 += v21;
  v44 = v41;
  _WriteStatusReg(ARM64_SYSREG(3, 3, 4, 2, 0), StatusReg);
  v45 = v26 + v41 + v44;
  *(&v47 + 1) = v14;
  *&v47 = v13;
  v46 = v47 >> 32;
  v41 = __CFADD__(v46, v5);
  *(&v47 + 1) = v22;
  *&v47 = v14;
  v48 = v47 >> 32;
  v51 = __PAIR128__(v28, v46) + v5;
  v49 = v51 >> 64;
  v50 = v51;
  v52 = __CFADD__(v41, v28);
  *(&v54 + 1) = v21;
  *&v54 = v22;
  v53 = v54 >> 32;
  v41 = __CFADD__(v27, v53);
  v55 = v27 + v53;
  v56 = v41;
  *(&v58 + 1) = v2;
  *&v58 = v21;
  v57 = v58 >> 32;
  v41 = __CFADD__(v57, v36);
  v59 = v57 + v36;
  v60 = v41;
  *(&v62 + 1) = v8;
  *&v62 = v2;
  v61 = v62 >> 32;
  v41 = __CFADD__(v37, v61);
  v63 = v37 + v61;
  v64 = v41;
  *(&v66 + 1) = v7;
  *&v66 = v8;
  v65 = v66 >> 32;
  v41 = __CFADD__(v39, v65);
  v67 = v39 + v65;
  v68 = v41;
  *(&v70 + 1) = v13;
  *&v70 = v7;
  v69 = v70 >> 32;
  v41 = __CFADD__(v42, v69);
  v71 = v42 + v69;
  v72 = v41;
  v77[0] = v50;
  v77[1] = v49 + v48;
  v41 = __CFADD__(__CFADD__(v49, v48), v55);
  v73 = __CFADD__(v49, v48) + v55;
  v41 |= __CFADD__(v52, v73);
  v77[2] = v52 + v73;
  v77[3] = v56 + v41 + v59;
  v75 = __CFADD__(v41, v59) | __CFADD__(v56, v41 + v59);
  v41 = __CFADD__(v75, v63);
  v74 = v75 + v63;
  v41 |= __CFADD__(v60, v74);
  v77[4] = v60 + v74;
  v77[5] = v64 + v41 + v67;
  v77[6] = v68 + (__CFADD__(v41, v67) | __CFADD__(v64, v41 + v67)) + v71;
  return ccec448_redc_one(a1, v77, v72 + (__CFADD__(__CFADD__(v41, v67) | __CFADD__(v64, v41 + v67), v71) | __CFADD__(v68, (__CFADD__(v41, v67) | __CFADD__(v64, v41 + v67)) + v71)) + v45);
}

void *ccec448_sqr_ws(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4)
{
  v188 = *MEMORY[0x29EDCA608];
  v6 = *a4;
  v5 = a4[1];
  v7 = (v6 * v6) >> 64;
  v8 = (v5 * *a4) >> 64;
  v9 = v5 * *a4;
  v10 = v9 >> 63;
  v11 = 2 * v8;
  v13 = a4[2];
  v12 = a4[3];
  v14 = (v13 * *a4) >> 64;
  v15 = v13 * *a4;
  v16 = (v5 * v5) >> 64;
  v17 = v15 >> 63;
  v18 = __CFADD__(v5 * v5, 2 * v15);
  v19 = v5 * v5 + 2 * v15;
  if (v18)
  {
    v20 = v17 + 1;
  }

  else
  {
    v20 = v17;
  }

  v21 = v14 >> 63;
  v18 = __CFADD__(v16, 2 * v14);
  v22 = v16 + 2 * v14;
  if (v18)
  {
    v23 = v21 + 1;
  }

  else
  {
    v23 = v21;
  }

  v24 = v8 >> 63;
  v186[0] = v6 * v6;
  v186[1] = v7 + 2 * v9;
  v18 = __CFADD__(__CFADD__(v7, 2 * v9), v11);
  v25 = __CFADD__(v7, 2 * v9) + v11;
  v18 |= __CFADD__(v10, v25);
  v25 += v10;
  v26 = v24 + v18 + v22;
  if (__CFADD__(v18, v22) | __CFADD__(v24, v18 + v22))
  {
    v27 = v23 + 1;
  }

  else
  {
    v27 = v23;
  }

  v28 = (v12 * v6) >> 64;
  v29 = v12 * v6 + v13 * v5;
  v30 = __CFADD__(v12 * v6, v13 * v5);
  v31 = (v13 * v5) >> 64;
  v18 = __CFADD__(v28, v31);
  v32 = v28 + v31;
  v33 = v18;
  *(&v35 + 1) = v30;
  *&v35 = v12 * v6 + v13 * v5;
  v34 = v35 >> 63;
  v37 = v19 + v25;
  v18 = __CFADD__(__CFADD__(v19, v25), v26) | __CFADD__(v20, (__PAIR128__(v26, v19) + v25) >> 64);
  v36 = v20 + ((__PAIR128__(v26, v19) + v25) >> 64);
  *(&v35 + 1) = v33;
  *&v35 = v32;
  v38 = v35 >> 63;
  v40 = v18 + 2 * v32;
  v18 = __CFADD__(v18, 2 * v32) | __CFADD__(v27, v40);
  v39 = v27 + v40;
  if (v18)
  {
    v41 = v38 + 1;
  }

  else
  {
    v41 = v38;
  }

  v42 = a4[4];
  v43 = a4[5];
  v44 = (v42 * v6) >> 64;
  v45 = v42 * v6 + v12 * v5;
  v46 = __CFADD__(v42 * v6, v12 * v5);
  v47 = (v12 * v5) >> 64;
  v18 = __CFADD__(v44, v47);
  v48 = v44 + v47;
  v49 = v18;
  *(&v51 + 1) = v46;
  *&v51 = v42 * v6 + v12 * v5;
  v50 = v51 >> 63;
  v18 = __CFADD__(v13 * v13, 2 * v45);
  v52 = v13 * v13 + 2 * v45;
  v53 = (v13 * v13) >> 64;
  if (v18)
  {
    ++v50;
  }

  *(&v55 + 1) = v49;
  *&v55 = v48;
  v54 = v55 >> 63;
  v18 = __CFADD__(v53, 2 * v48);
  v56 = v53 + 2 * v48;
  if (v18)
  {
    ++v54;
  }

  v186[2] = v37;
  v186[3] = v36 + 2 * v29;
  v18 = __CFADD__(__CFADD__(v36, 2 * v29), v39);
  v57 = __CFADD__(v36, 2 * v29) + v39;
  v18 |= __CFADD__(v34, v57);
  v57 += v34;
  v59 = v18 + v56;
  v18 = __CFADD__(v18, v56) | __CFADD__(v41, v59);
  v58 = v41 + v59;
  if (v18)
  {
    v60 = v54 + 1;
  }

  else
  {
    v60 = v54;
  }

  v61 = (v43 * v6) >> 64;
  v62 = v43 * v6;
  v63 = (v42 * v5) >> 64;
  v64 = v42 * v5 + v12 * v13;
  v65 = __CFADD__(v42 * v5, v12 * v13);
  v18 = __CFADD__(v64, v62);
  v66 = v64 + v62;
  if (v18)
  {
    v67 = v65 + 1;
  }

  else
  {
    v67 = v65;
  }

  v68 = (v12 * v13) >> 64;
  v18 = __CFADD__(v63, v68);
  v69 = v63 + v68;
  v70 = v18;
  v18 = __CFADD__(v69, v61);
  v71 = v69 + v61;
  if (v18)
  {
    v72 = v70 + 1;
  }

  else
  {
    v72 = v70;
  }

  v18 = __CFADD__(v52, v57);
  v73 = v52 + v57;
  v75 = v18;
  v18 = __CFADD__(v18, v58);
  v74 = v75 + v58;
  v18 |= __CFADD__(v50, v74);
  v74 += v50;
  *(&v77 + 1) = v67;
  *&v77 = v66;
  v76 = v77 >> 63;
  *(&v77 + 1) = v72;
  *&v77 = v71;
  v78 = v77 >> 63;
  v79 = 2 * v71;
  v81 = v18 + v79;
  v18 = __CFADD__(v18, v79) | __CFADD__(v60, v81);
  v80 = v60 + v81;
  if (v18)
  {
    v82 = v78 + 1;
  }

  else
  {
    v82 = v78;
  }

  v83 = a4[6];
  v84 = (v83 * v6) >> 64;
  v85 = v83 * v6;
  v86 = (v43 * v5) >> 64;
  v87 = v43 * v5 + v42 * v13;
  v88 = __CFADD__(v43 * v5, v42 * v13);
  v18 = __CFADD__(v87, v85);
  v89 = v87 + v85;
  if (v18)
  {
    v90 = v88 + 1;
  }

  else
  {
    v90 = v88;
  }

  v91 = (v42 * v13) >> 64;
  v18 = __CFADD__(v86, v91);
  v92 = v86 + v91;
  v93 = v18;
  v18 = __CFADD__(v92, v84);
  v94 = v92 + v84;
  if (v18)
  {
    v95 = v93 + 1;
  }

  else
  {
    v95 = v93;
  }

  *(&v97 + 1) = v90;
  *&v97 = v89;
  v96 = v97 >> 63;
  v18 = __CFADD__(v12 * v12, 2 * v89);
  v98 = v12 * v12 + 2 * v89;
  v99 = (v12 * v12) >> 64;
  if (v18)
  {
    ++v96;
  }

  *(&v101 + 1) = v95;
  *&v101 = v94;
  v100 = v101 >> 63;
  v18 = __CFADD__(v99, 2 * v94);
  v102 = v99 + 2 * v94;
  if (v18)
  {
    ++v100;
  }

  v186[4] = v73;
  v186[5] = v74 + 2 * v66;
  v18 = __CFADD__(__CFADD__(v74, 2 * v66), v80);
  v103 = __CFADD__(v74, 2 * v66) + v80;
  v18 |= __CFADD__(v76, v103);
  v103 += v76;
  v104 = v82 + v18 + v102;
  if (__CFADD__(v18, v102) | __CFADD__(v82, v18 + v102))
  {
    v105 = v100 + 1;
  }

  else
  {
    v105 = v100;
  }

  v106 = v83 * v5;
  v107 = (v83 * v5) >> 64;
  v108 = (v43 * v13) >> 64;
  v109 = v43 * v13 + v42 * v12;
  v110 = __CFADD__(v43 * v13, v42 * v12);
  v18 = __CFADD__(v109, v106);
  v111 = v109 + v106;
  if (v18)
  {
    v112 = v110 + 1;
  }

  else
  {
    v112 = v110;
  }

  v113 = (v42 * v12) >> 64;
  v18 = __CFADD__(v108, v113);
  v114 = v108 + v113;
  v115 = v18;
  v18 = __CFADD__(v114, v107);
  v116 = v114 + v107;
  if (v18)
  {
    v117 = v115 + 1;
  }

  else
  {
    v117 = v115;
  }

  v18 = __CFADD__(v98, v103);
  v118 = v98 + v103;
  v120 = v18;
  v18 = __CFADD__(v18, v104) | __CFADD__(v96, v18 + v104);
  v119 = v96 + v120 + v104;
  *(&v122 + 1) = v112;
  *&v122 = v111;
  v121 = v122 >> 63;
  *(&v122 + 1) = v117;
  *&v122 = v116;
  v123 = v122 >> 63;
  v124 = 2 * v116;
  v126 = v18;
  v18 = __CFADD__(v18, v124);
  v125 = v126 + v124;
  v18 |= __CFADD__(v105, v125);
  v125 += v105;
  if (v18)
  {
    v127 = v123 + 1;
  }

  else
  {
    v127 = v123;
  }

  v128 = v83 * v13;
  v129 = (v83 * v13) >> 64;
  v18 = __CFADD__(v128, v43 * v12);
  v130 = v128 + v43 * v12;
  v131 = v18;
  v132 = (v43 * v12) >> 64;
  v18 = __CFADD__(v129, v132);
  v133 = v129 + v132;
  v134 = v18;
  *(&v136 + 1) = v131;
  *&v136 = v130;
  v135 = v136 >> 63;
  v137 = (v42 * v42) >> 64;
  v18 = __CFADD__(v42 * v42, 2 * v130);
  v138 = v42 * v42 + 2 * v130;
  if (v18)
  {
    ++v135;
  }

  *(&v140 + 1) = v134;
  *&v140 = v133;
  v139 = v140 >> 63;
  v18 = __CFADD__(v137, 2 * v133);
  v141 = v137 + 2 * v133;
  if (v18)
  {
    ++v139;
  }

  v186[6] = v118;
  v186[7] = v119 + 2 * v111;
  v18 = __CFADD__(__CFADD__(v119, 2 * v111), v125);
  v142 = __CFADD__(v119, 2 * v111) + v125;
  v18 |= __CFADD__(v121, v142);
  v142 += v121;
  v144 = v18;
  v18 = __CFADD__(v18, v141);
  v143 = v144 + v141;
  v18 |= __CFADD__(v127, v143);
  v143 += v127;
  if (v18)
  {
    v145 = v139 + 1;
  }

  else
  {
    v145 = v139;
  }

  v146 = v83 * v12;
  v147 = (v83 * v12) >> 64;
  v18 = __CFADD__(v146, v43 * v42);
  v148 = v146 + v43 * v42;
  v149 = v18;
  v150 = (v43 * v42) >> 64;
  v18 = __CFADD__(v147, v150);
  v151 = v147 + v150;
  v152 = v18;
  v18 = __CFADD__(v138, v142);
  v153 = v138 + v142;
  *(&v155 + 1) = v149;
  *&v155 = v148;
  v154 = v155 >> 63;
  v157 = v18;
  v18 = __CFADD__(v18, v143);
  v156 = v157 + v143;
  v18 |= __CFADD__(v135, v156);
  v156 += v135;
  *(&v155 + 1) = v152;
  *&v155 = v151;
  v158 = v155 >> 63;
  v159 = 2 * v151;
  v161 = v18;
  v18 = __CFADD__(v18, v159);
  v160 = v161 + v159;
  v18 |= __CFADD__(v145, v160);
  v160 += v145;
  if (v18)
  {
    v162 = v158 + 1;
  }

  else
  {
    v162 = v158;
  }

  v163 = (v83 * v42) >> 64;
  v164 = v83 * v42;
  v165 = v164 >> 63;
  v166 = v163 >> 63;
  v18 = __CFADD__(v43 * v43, 2 * v164);
  v167 = v43 * v43 + 2 * v164;
  if (v18)
  {
    ++v165;
  }

  v168 = (v43 * v43) >> 64;
  v18 = __CFADD__(v168, 2 * v163);
  v169 = v168 + 2 * v163;
  if (v18)
  {
    ++v166;
  }

  v186[8] = v153;
  v186[9] = v156 + 2 * v148;
  v18 = __CFADD__(__CFADD__(v156, 2 * v148), v160);
  v170 = __CFADD__(v156, 2 * v148) + v160;
  v18 |= __CFADD__(v154, v170);
  v170 += v154;
  v171 = v162 + v18 + v169;
  if (__CFADD__(v18, v169) | __CFADD__(v162, v18 + v169))
  {
    v172 = v166 + 1;
  }

  else
  {
    v172 = v166;
  }

  v18 = __CFADD__(v167, v170);
  v173 = v167 + v170;
  v175 = v18;
  v18 = __CFADD__(v18, v171);
  v174 = v175 + v171;
  v18 |= __CFADD__(v165, v174);
  v174 += v165;
  v176 = (v83 * v43) >> 64;
  v177 = v83 * v43;
  v178 = v177 >> 63;
  v179 = 2 * v176;
  v180 = v176 >> 63;
  v182 = v18 + v179;
  v18 = __CFADD__(v18, v179) | __CFADD__(v172, v182);
  v181 = v172 + v182;
  if (v18)
  {
    ++v180;
  }

  v186[10] = v173;
  v186[11] = v174 + 2 * v177;
  v183 = v178 + __CFADD__(v174, 2 * v177) + v181;
  if (__CFADD__(__CFADD__(v174, 2 * v177), v181) | __CFADD__(v178, __CFADD__(v174, 2 * v177) + v181))
  {
    v184 = v180 + 1;
  }

  else
  {
    v184 = v180;
  }

  v187 = __PAIR128__(v184, v183) + v83 * v83;
  return ccec448_redc_full(a3, v186);
}

uint64_t ccec448_inv_ws(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v6 = 2;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v6;
  }

  while (v6);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v7 = 5;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v7;
  }

  while (v7);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v8 = 12;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v8;
  }

  while (v8);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v9 = 26;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v9;
  }

  while (v9);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v10 = 54;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v10;
  }

  while (v10);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v11 = 110;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v11;
  }

  while (v11);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  v12 = 222;
  do
  {
    cczp_sqr_ws(a1, a2);
    --v12;
  }

  while (v12);
  cczp_mul_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  return 0;
}

uint64_t ccec448_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v19[7] = *MEMORY[0x29EDCA608];
  v6 = cczp_prime(a2);
  v7 = *a4 - __PAIR128__(*v6, *v6);
  v8 = a4[1] - __PAIR128__(v6[1], v6[1]) + __PAIR128__(*(&v7 + 1) >> 63, *(&v7 + 1) >> 63);
  v19[0] = *a4 - *v6;
  v19[1] = v8;
  v9 = a4[2] - __PAIR128__(v6[2], v6[2]);
  v10 = a4[3] - __PAIR128__(v6[3], v6[3]) + __PAIR128__(((*(&v8 + 1) >> 63) + __CFADD__(v9, *(&v8 + 1) >> 63) + *(&v9 + 1)) >> 63, ((*(&v8 + 1) >> 63) + __CFADD__(v9, *(&v8 + 1) >> 63) + *(&v9 + 1)) >> 63);
  v19[2] = v9 + (*(&v8 + 1) >> 63);
  v19[3] = v10;
  v12 = (a4[4] - __PAIR128__(v6[4], v6[4])) >> 64;
  v11 = a4[4] - v6[4];
  v13 = (*(&v10 + 1) >> 63) + __CFADD__(v11, *(&v10 + 1) >> 63) + v12;
  v14 = a4[5] - __PAIR128__(v12, v6[5]);
  v15 = v14 + (v13 >> 63);
  v16 = (v13 >> 63) + __CFADD__(v14, v13 >> 63) + *(&v14 + 1);
  v19[4] = v11 + (*(&v10 + 1) >> 63);
  v19[5] = v15;
  v17 = a4[6] - __PAIR128__(v6[6], v6[6]);
  v19[6] = v17 + (v16 >> 63);
  return ccn_mux(7, (v16 >> 63) + __CFADD__(v17, v16 >> 63) + *(&v17 + 1) < 0, a3, a4, v19);
}

uint64_t ccrsa_dump_public_key(uint64_t *a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = ccrsa_pubkeylength(a1);
  fprintf(*MEMORY[0x29EDCA610], "%zu bit rsa key\n", v2);
  ccn_lprint(*a1, "m  = 0x", (a1 + 3));
  ccn_lprint(*a1, "e  = 0x", &a1[2 * *a1 + 4]);
  return cc_disable_dit_with_sb(&v4);
}

uint64_t ccrsa_dump_full_key(void *a1)
{
  v36 = timingsafe_enable_if_supported();
  ccrsa_ctx_public();
  v3 = v2;
  v4 = ccrsa_pubkeylength(v2);
  v5 = MEMORY[0x29EDCA610];
  fprintf(*MEMORY[0x29EDCA610], "%zu bit rsa key\n", v4);
  ccn_lprint(*v3, "m  = 0x", (v3 + 3));
  ccn_lprint(*v3, "e  = 0x", &v3[2 * *v3 + 4]);
  ccn_lprint(*v3, "d  = 0x", &v3[3 * *v3 + 4]);
  v6 = ccrsa_ctx_private_zp(a1);
  v7 = cczp_n(v6);
  v8 = ccrsa_ctx_private_zp(a1);
  v9 = cczp_prime(v8);
  ccn_lprint(v7, "p  = 0x", v9);
  v10 = ccrsa_ctx_private_zp(a1);
  v11 = ccrsa_ctx_private_zp(a1);
  v12 = cczp_n(&v10[2 * *v11 + 4]);
  v13 = ccrsa_ctx_private_zp(a1);
  v14 = ccrsa_ctx_private_zp(a1);
  v15 = cczp_prime(&v13[2 * *v14 + 4]);
  ccn_lprint(v12, "q  = 0x", v15);
  v16 = ccrsa_ctx_private_zp(a1);
  v17 = cczp_n(v16);
  v18 = ccrsa_ctx_private_zp(a1);
  v19 = &v18[2 * *ccrsa_ctx_private_zp(a1)];
  v20 = ccrsa_ctx_private_zp(a1);
  ccn_lprint(v17, "dp = 0x", &v19[2 * *v20 + 8]);
  v21 = ccrsa_ctx_private_zp(a1);
  v22 = ccrsa_ctx_private_zp(a1);
  v23 = cczp_n(&v21[2 * *v22 + 4]);
  v24 = ccrsa_ctx_private_zp(a1);
  v25 = &v24[2 * *ccrsa_ctx_private_zp(a1)];
  v26 = &v25[2 * *ccrsa_ctx_private_zp(a1)];
  v27 = ccrsa_ctx_private_zp(a1);
  ccn_lprint(v23, "dq = 0x", &v26[*v27 + 8]);
  v28 = ccrsa_ctx_private_zp(a1);
  v29 = cczp_n(v28);
  v30 = ccrsa_ctx_private_zp(a1);
  v31 = &v30[2 * *ccrsa_ctx_private_zp(a1)];
  v32 = &v31[2 * *ccrsa_ctx_private_zp(a1)];
  v33 = &v32[*ccrsa_ctx_private_zp(a1)];
  v34 = ccrsa_ctx_private_zp(a1);
  ccn_lprint(v29, "qinv=0x", &v33[*v34 + 8]);
  fputc(10, *v5);
  return cc_disable_dit_with_sb(&v36);
}

uint64_t md2_processblock(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    v5 = result;
    v6 = result + 48;
    do
    {
      result = md2_compress(v5, a3);
      v7 = 0;
      v8 = *(v5 + 63);
      do
      {
        v8 = *(v6 + v7) ^ PI_SUBST[(*(a3 + v7) ^ v8)];
        *(v6 + v7++) = v8;
      }

      while (v7 != 16);
      a3 += 16;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t md2_final(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v17[1] = *MEMORY[0x29EDCA608];
  v5 = *(a1 + 8);
  v6 = *(a1 + 16);
  MEMORY[0x2A1C7C4A8](a1);
  v8 = v17 - v7;
  memcpy(v17 - v7, v10, v9 + 12);
  v11 = &v8[v5 + 8];
  v12 = *&v11[v6];
  if (v12 <= 0xF)
  {
    memset(&v8[v5 + 8 + v12], 16 - v12, 16 - v12);
  }

  md2_compress((v8 + 8), &v8[v5 + 8]);
  v13 = v8[71];
  v14 = v5 + 8;
  for (i = 56; i != 72; ++i)
  {
    v13 = v8[i] ^ PI_SUBST[(v8[v14] ^ v13)];
    v8[i] = v13;
    ++v14;
  }

  *v11 = *(v8 + 56);
  md2_compress((v8 + 8), &v8[v5 + 8]);
  *a3 = *(v8 + 8);
  return cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v8);
}

uint64_t md2_compress(uint64_t result, uint64_t a2)
{
  v2 = 0;
  v3 = (result + 32);
  do
  {
    v4 = *(a2 + v2);
    *(v3 - 16) = v4;
    *v3 = *(v3 - 32) ^ v4;
    ++v3;
    ++v2;
  }

  while (v2 != 16);
  v5 = 0;
  for (i = 0; i != 18; ++i)
  {
    for (j = 0; j != 48; ++j)
    {
      v5 = *(result + j) ^ PI_SUBST[v5];
      *(result + j) = v5;
    }

    v5 += i;
  }

  return result;
}

uint64_t ccmlkem_hash_g_append_k(uint64_t a1, _OWORD *a2, void *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  v6 = *(a1 + 4);
  cckeccak_oneshot(33, v5, 0x40uLL, a3, 0x48uLL, 6u);
  return cc_clear(0x21uLL, v5);
}

uint64_t ccmlkem_prf(_OWORD *a1, char a2, void *a3)
{
  v7 = *MEMORY[0x29EDCA608];
  v3 = a1[1];
  v5[0] = *a1;
  v5[1] = v3;
  v6 = a2;
  cckeccak_oneshot(33, v5, 0x80uLL, a3, 0x88uLL, 0x1Fu);
  return cc_clear(0x21uLL, v5);
}

uint64_t ccmlkem_rkprf(_DWORD *a1, _OWORD *a2, uint64_t a3, void *a4)
{
  v18 = *MEMORY[0x29EDCA608];
  v7 = (32 * (a1[2] + a1[1] * a1[3]));
  permutation = cckeccak_get_permutation();
  v15 = 0;
  memset(v14, 0, sizeof(v14));
  cckeccak_init_state(v14);
  v9 = a2[1];
  v16[0] = *a2;
  v16[1] = v9;
  v10 = *(a3 + 80);
  v16[6] = *(a3 + 64);
  v16[7] = v10;
  v17 = *(a3 + 96);
  v11 = *(a3 + 16);
  v16[2] = *a3;
  v16[3] = v11;
  v12 = *(a3 + 48);
  v16[4] = *(a3 + 32);
  v16[5] = v12;
  cckeccak_absorb_blocks(v14, 0x88uLL, 1, v16, permutation);
  a3 += 104;
  v7 -= 104;
  cckeccak_absorb_blocks(v14, 0x88uLL, v7 / 0x88, a3, permutation);
  cckeccak_absorb_and_pad(v14, 136, v7 % 0x88, (a3 + 136 * (v7 / 0x88)), 0x1Fu);
  cckeccak_squeeze(v14, 0x88uLL, 0x20uLL, a4, permutation);
  return cc_clear(0xC8uLL, v14);
}

int *CC_CAST_encrypt(int *result, uint64_t a2)
{
  v2 = result[1];
  v3 = __ROR4__(*a2 + v2, -*(a2 + 4));
  v4 = ((CC_CAST_S_table1[v3] ^ CC_CAST_S_table0[BYTE1(v3)]) - CC_CAST_S_table2[HIBYTE(v3)] + CC_CAST_S_table3[BYTE2(v3)]) ^ *result;
  v5 = __ROR4__(v4 ^ *(a2 + 8), -*(a2 + 12));
  v6 = CC_CAST_S_table3[BYTE2(v5)] ^ v2 ^ (CC_CAST_S_table0[BYTE1(v5)] - CC_CAST_S_table1[v5] + CC_CAST_S_table2[HIBYTE(v5)]);
  v7 = __ROR4__(*(a2 + 16) - v6, -*(a2 + 20));
  v8 = (((CC_CAST_S_table1[v7] + CC_CAST_S_table0[BYTE1(v7)]) ^ CC_CAST_S_table2[HIBYTE(v7)]) - CC_CAST_S_table3[BYTE2(v7)]) ^ v4;
  v9 = __ROR4__(v8 + *(a2 + 24), -*(a2 + 28));
  v10 = ((CC_CAST_S_table1[v9] ^ CC_CAST_S_table0[BYTE1(v9)]) - CC_CAST_S_table2[HIBYTE(v9)] + CC_CAST_S_table3[BYTE2(v9)]) ^ v6;
  v11 = __ROR4__(v10 ^ *(a2 + 32), -*(a2 + 36));
  v12 = CC_CAST_S_table3[BYTE2(v11)] ^ v8 ^ (CC_CAST_S_table0[BYTE1(v11)] - CC_CAST_S_table1[v11] + CC_CAST_S_table2[HIBYTE(v11)]);
  v13 = __ROR4__(*(a2 + 40) - v12, -*(a2 + 44));
  v14 = (((CC_CAST_S_table1[v13] + CC_CAST_S_table0[BYTE1(v13)]) ^ CC_CAST_S_table2[HIBYTE(v13)]) - CC_CAST_S_table3[BYTE2(v13)]) ^ v10;
  v15 = __ROR4__(v14 + *(a2 + 48), -*(a2 + 52));
  v16 = ((CC_CAST_S_table1[v15] ^ CC_CAST_S_table0[BYTE1(v15)]) - CC_CAST_S_table2[HIBYTE(v15)] + CC_CAST_S_table3[BYTE2(v15)]) ^ v12;
  v17 = __ROR4__(v16 ^ *(a2 + 56), -*(a2 + 60));
  v18 = CC_CAST_S_table3[BYTE2(v17)] ^ v14 ^ (CC_CAST_S_table0[BYTE1(v17)] - CC_CAST_S_table1[v17] + CC_CAST_S_table2[HIBYTE(v17)]);
  v19 = __ROR4__(*(a2 + 64) - v18, -*(a2 + 68));
  v20 = (((CC_CAST_S_table1[v19] + CC_CAST_S_table0[BYTE1(v19)]) ^ CC_CAST_S_table2[HIBYTE(v19)]) - CC_CAST_S_table3[BYTE2(v19)]) ^ v16;
  v21 = __ROR4__(v20 + *(a2 + 72), -*(a2 + 76));
  v22 = ((CC_CAST_S_table1[v21] ^ CC_CAST_S_table0[BYTE1(v21)]) - CC_CAST_S_table2[HIBYTE(v21)] + CC_CAST_S_table3[BYTE2(v21)]) ^ v18;
  v23 = __ROR4__(v22 ^ *(a2 + 80), -*(a2 + 84));
  v24 = CC_CAST_S_table3[BYTE2(v23)] ^ v20 ^ (CC_CAST_S_table0[BYTE1(v23)] - CC_CAST_S_table1[v23] + CC_CAST_S_table2[HIBYTE(v23)]);
  v25 = __ROR4__(*(a2 + 88) - v24, -*(a2 + 92));
  v26 = (((CC_CAST_S_table1[v25] + CC_CAST_S_table0[BYTE1(v25)]) ^ CC_CAST_S_table2[HIBYTE(v25)]) - CC_CAST_S_table3[BYTE2(v25)]) ^ v22;
  if (!*(a2 + 128))
  {
    v27 = __ROR4__(*(a2 + 96) + v26, -*(a2 + 100));
    v28 = ((CC_CAST_S_table1[v27] ^ CC_CAST_S_table0[BYTE1(v27)]) - CC_CAST_S_table2[HIBYTE(v27)] + CC_CAST_S_table3[BYTE2(v27)]) ^ v24;
    v29 = __ROR4__(v28 ^ *(a2 + 104), -*(a2 + 108));
    v30 = CC_CAST_S_table3[BYTE2(v29)] ^ v26 ^ (CC_CAST_S_table0[BYTE1(v29)] - CC_CAST_S_table1[v29] + CC_CAST_S_table2[HIBYTE(v29)]);
    v31 = __ROR4__(*(a2 + 112) - v30, -*(a2 + 116));
    v24 = (((CC_CAST_S_table1[v31] + CC_CAST_S_table0[BYTE1(v31)]) ^ CC_CAST_S_table2[HIBYTE(v31)]) - CC_CAST_S_table3[BYTE2(v31)]) ^ v28;
    v32 = __ROR4__(v24 + *(a2 + 120), -*(a2 + 124));
    v26 = ((CC_CAST_S_table1[v32] ^ CC_CAST_S_table0[BYTE1(v32)]) - CC_CAST_S_table2[HIBYTE(v32)] + CC_CAST_S_table3[BYTE2(v32)]) ^ v30;
  }

  *result = v26;
  result[1] = v24;
  return result;
}

int *CC_CAST_decrypt(int *result, uint64_t a2)
{
  v3 = *result;
  v2 = result[1];
  if (!*(a2 + 128))
  {
    v4 = __ROR4__(*(a2 + 120) + v2, -*(a2 + 124));
    v5 = ((CC_CAST_S_table1[v4] ^ CC_CAST_S_table0[BYTE1(v4)]) - CC_CAST_S_table2[HIBYTE(v4)] + CC_CAST_S_table3[BYTE2(v4)]) ^ v3;
    v6 = __ROR4__(*(a2 + 112) - v5, -*(a2 + 116));
    v7 = (((CC_CAST_S_table1[v6] + CC_CAST_S_table0[BYTE1(v6)]) ^ CC_CAST_S_table2[HIBYTE(v6)]) - CC_CAST_S_table3[BYTE2(v6)]) ^ v2;
    v8 = __ROR4__(v7 ^ *(a2 + 104), -*(a2 + 108));
    v3 = CC_CAST_S_table3[BYTE2(v8)] ^ v5 ^ (CC_CAST_S_table0[BYTE1(v8)] - CC_CAST_S_table1[v8] + CC_CAST_S_table2[HIBYTE(v8)]);
    v9 = __ROR4__(v3 + *(a2 + 96), -*(a2 + 100));
    v2 = ((CC_CAST_S_table1[v9] ^ CC_CAST_S_table0[BYTE1(v9)]) - CC_CAST_S_table2[HIBYTE(v9)] + CC_CAST_S_table3[BYTE2(v9)]) ^ v7;
  }

  v10 = __ROR4__(*(a2 + 88) - v2, -*(a2 + 92));
  v11 = (((CC_CAST_S_table1[v10] + CC_CAST_S_table0[BYTE1(v10)]) ^ CC_CAST_S_table2[HIBYTE(v10)]) - CC_CAST_S_table3[BYTE2(v10)]) ^ v3;
  v12 = __ROR4__(v11 ^ *(a2 + 80), -*(a2 + 84));
  v13 = CC_CAST_S_table3[BYTE2(v12)] ^ v2 ^ (CC_CAST_S_table0[BYTE1(v12)] - CC_CAST_S_table1[v12] + CC_CAST_S_table2[HIBYTE(v12)]);
  v14 = __ROR4__(v13 + *(a2 + 72), -*(a2 + 76));
  v15 = ((CC_CAST_S_table1[v14] ^ CC_CAST_S_table0[BYTE1(v14)]) - CC_CAST_S_table2[HIBYTE(v14)] + CC_CAST_S_table3[BYTE2(v14)]) ^ v11;
  v16 = __ROR4__(*(a2 + 64) - v15, -*(a2 + 68));
  v17 = (((CC_CAST_S_table1[v16] + CC_CAST_S_table0[BYTE1(v16)]) ^ CC_CAST_S_table2[HIBYTE(v16)]) - CC_CAST_S_table3[BYTE2(v16)]) ^ v13;
  v18 = __ROR4__(v17 ^ *(a2 + 56), -*(a2 + 60));
  v19 = CC_CAST_S_table3[BYTE2(v18)] ^ v15 ^ (CC_CAST_S_table0[BYTE1(v18)] - CC_CAST_S_table1[v18] + CC_CAST_S_table2[HIBYTE(v18)]);
  v20 = __ROR4__(v19 + *(a2 + 48), -*(a2 + 52));
  v21 = ((CC_CAST_S_table1[v20] ^ CC_CAST_S_table0[BYTE1(v20)]) - CC_CAST_S_table2[HIBYTE(v20)] + CC_CAST_S_table3[BYTE2(v20)]) ^ v17;
  v22 = __ROR4__(*(a2 + 40) - v21, -*(a2 + 44));
  v23 = (((CC_CAST_S_table1[v22] + CC_CAST_S_table0[BYTE1(v22)]) ^ CC_CAST_S_table2[HIBYTE(v22)]) - CC_CAST_S_table3[BYTE2(v22)]) ^ v19;
  v24 = __ROR4__(v23 ^ *(a2 + 32), -*(a2 + 36));
  v25 = CC_CAST_S_table3[BYTE2(v24)] ^ v21 ^ (CC_CAST_S_table0[BYTE1(v24)] - CC_CAST_S_table1[v24] + CC_CAST_S_table2[HIBYTE(v24)]);
  v26 = __ROR4__(v25 + *(a2 + 24), -*(a2 + 28));
  v27 = ((CC_CAST_S_table1[v26] ^ CC_CAST_S_table0[BYTE1(v26)]) - CC_CAST_S_table2[HIBYTE(v26)] + CC_CAST_S_table3[BYTE2(v26)]) ^ v23;
  v28 = __ROR4__(*(a2 + 16) - v27, -*(a2 + 20));
  v29 = (((CC_CAST_S_table1[v28] + CC_CAST_S_table0[BYTE1(v28)]) ^ CC_CAST_S_table2[HIBYTE(v28)]) - CC_CAST_S_table3[BYTE2(v28)]) ^ v25;
  v30 = __ROR4__(v29 ^ *(a2 + 8), -*(a2 + 12));
  v31 = CC_CAST_S_table3[BYTE2(v30)] ^ v27 ^ (CC_CAST_S_table0[BYTE1(v30)] - CC_CAST_S_table1[v30] + CC_CAST_S_table2[HIBYTE(v30)]);
  v32 = __ROR4__(v31 + *a2, -*(a2 + 4));
  *result = ((CC_CAST_S_table1[v32] ^ CC_CAST_S_table0[BYTE1(v32)]) - CC_CAST_S_table2[HIBYTE(v32)] + CC_CAST_S_table3[BYTE2(v32)]) ^ v29;
  result[1] = v31;
  return result;
}

uint64_t ccz_muli(void *a1, uint64_t a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v8 = timingsafe_enable_if_supported();
  v9[0] = a3;
  v7[0] = ccn_n(1uLL, v9);
  v7[1] = 0;
  v7[2] = 1;
  v7[3] = v9;
  ccz_mul(a1, a2, v7);
  return cc_disable_dit_with_sb(&v8);
}

uint64_t ccrsa_generate_key_deterministic(unint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int a9, unsigned int (**a10)(void, unint64_t, uint64_t))
{
  v48 = *MEMORY[0x29EDCA608];
  v46 = timingsafe_enable_if_supported();
  if (a9 == 1)
  {
    v37 = a2;
    v38 = a3;
    v39 = a4;
    memset(v47, 0, 512);
    v14 = ccaes_cbc_encrypt_mode();
    inited = ccdrbg_df_bc_init_internal(v47, v14, 0x10uLL);
    if (inited)
    {
      v35 = inited;
    }

    else
    {
      v45[0] = ccaes_ctr_crypt_mode();
      v45[1] = 16;
      v45[2] = 0;
      v45[3] = v47;
      v44 = 0;
      memset(v43, 0, sizeof(v43));
      ccdrbg_factory_nistctr(v43, v45);
      v16 = 9 * ((a1 + 63) >> 6);
      v17 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N((a1 + 63) >> 6);
      if (v16 <= v17)
      {
        v18 = v17;
      }

      else
      {
        v18 = 9 * ((a1 + 63) >> 6);
      }

      v19 = 7 * ((a1 + 63) >> 6);
      v20 = v18 + v19;
      v21 = sizeof_struct_ccrns_mul_modulus();
      v22 = sizeof_struct_ccpolyzp_po2cyc();
      v23 = 21 * ((a1 + 63) >> 6) + 2;
      v24 = (v21 + v22 - 1) / v22 + v23;
      if (v20 > v24)
      {
        v24 = v20;
      }

      v25 = cc_malloc_clear((*&v43[0] + 8 * v24 + 7) & 0xFFFFFFFFFFFFFFF8);
      v41[0] = v25;
      v26 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N((a1 + 63) >> 6);
      if (v16 <= v26)
      {
        v27 = v26;
      }

      else
      {
        v27 = 9 * ((a1 + 63) >> 6);
      }

      v28 = v27 + v19;
      v29 = sizeof_struct_ccrns_mul_modulus();
      v30 = sizeof_struct_ccpolyzp_po2cyc();
      if (v28 <= (v29 + v30 - 1) / v30 + v23)
      {
        v31 = (v29 + v30 - 1) / v30 + v23;
      }

      else
      {
        v31 = v28;
      }

      v41[1] = v31 + ((*&v43[0] + 7) >> 3);
      v41[2] = 0;
      v41[3] = cc_ws_alloc;
      v42 = cc_ws_free;
      if (v25)
      {
        v32 = cc_ws_alloc(v41, (*&v43[0] + 7) >> 3);
        v33 = ccdrbg_init_internal(v43);
        if (v33 || (memset(v40, 0, sizeof(v40)), v33 = ccrng_drbg_init_withdrbg(v40, v43, v32), v33))
        {
          v35 = v33;
        }

        else
        {
          ccrsa_generate_key_internal_ws(v41, a1, v37, v38, v39, v40, a10);
          v35 = v34;
          if (!v34)
          {
            ccdrbg_done(v43, v32);
          }
        }

        v42(v41);
      }

      else
      {
        v35 = 4294967283;
      }
    }
  }

  else
  {
    v35 = 4294967289;
  }

  cc_disable_dit_with_sb(&v46);
  return v35;
}

uint64_t cced448_verify_internal(uint64_t *a1, size_t a2, char *a3, char *a4, char *a5)
{
  v48 = *MEMORY[0x29EDCA608];
  v43 = cc_malloc_clear(0xA48uLL);
  v44 = xmmword_299CFC8B0;
  v45 = cc_ws_alloc;
  v46 = cc_ws_free;
  if (!v43)
  {
    return 4294967283;
  }

  v10 = *a1;
  v11 = cczp_n(a1);
  v12 = cc_ws_alloc(&v43, v11);
  v13 = v45(&v43, v11);
  v14 = v45(&v43, 3 * v11);
  if (v11)
  {
    v15 = (a4 + 57);
    v16 = v13;
    v17 = v11;
    do
    {
      v18 = *v15++;
      *v16++ = v18;
      --v17;
    }

    while (v17);
  }

  if (a4[113] || (v19 = cczp_prime(&a1[5 * v10 + 4]), (ccn_cmp_internal(v11, v13, v19) & 0x80000000) == 0))
  {
    v36 = 4294967150;
  }

  else
  {
    v42 = v13;
    v20 = cczp_n(a1);
    if ((a5[56] & 0x7F) == 0)
    {
      v21 = v20;
      v41 = v12;
      v22 = *a1;
      v23 = &v14[*a1];
      if (v20)
      {
        v24 = a5;
        v25 = &v14[*a1];
        v26 = v20;
        do
        {
          v27 = *v24;
          v24 += 8;
          *v25++ = v27;
          --v26;
        }

        while (v26);
      }

      v28 = cczp_prime(a1);
      if ((ccn_cmp_internal(v21, v23, v28) & 0x80000000) != 0)
      {
        v39 = a3;
        v40 = a2;
        v29 = &v14[2 * v22];
        v38 = *(&v44 + 1);
        v45(&v43, v21);
        v30 = v45(&v43, v21);
        v31 = v45(&v43, v21);
        ccn_seti(v21, v29, 1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_sub_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        v32 = cczp_power_fast_ws(&v43, a1, v14, v14, kPsub3div4);
        if (v32)
        {
LABEL_29:
          v36 = v32;
          goto LABEL_24;
        }

        cczp_mul_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_sqr_ws(&v43, a1);
        cczp_mul_ws(&v43, a1);
        cczp_from_ws(&v43, a1);
        cczp_from_ws(&v43, a1);
        if (!ccn_cmp_internal(v21, v30, v31))
        {
          cczp_from_ws(&v43, a1);
          v33 = a5[56];
          if (ccn_n(v21, v14) || (v33 & 0x80000000) == 0)
          {
            if ((*v14 & 1) == v33 >> 7)
            {
              cczp_negate(a1, v14, v14);
            }

            *(&v44 + 1) = v38;
            cced448_shake_to_scalar_ws(&v43, a1, v41, 0x39uLL, a4, 0x39uLL, a5, v40, v39);
            cced448_double_scalar_mult_ws(&v43, a1, v14, v42, v41, v14);
            v32 = ccec_affinify_ws(&v43, a1);
            if (!v32)
            {
              v34 = 0;
              v35 = &v14[*a1];
              do
              {
                *&v47[v34 * 8] = v35[v34];
                ++v34;
              }

              while (v34 != 7);
              v47[56] = *v14 << 7;
              if (cc_cmp_safe_internal(57, v47, a4))
              {
                v36 = 4294967150;
              }

              else
              {
                v36 = 0;
              }

              goto LABEL_24;
            }

            goto LABEL_29;
          }
        }
      }
    }

    v36 = 4294967289;
  }

LABEL_24:
  *(&v44 + 1) = 0;
  v46(&v43);
  return v36;
}

uint64_t cced448_verify(size_t a1, char *a2, char *a3, char *a4)
{
  v11 = timingsafe_enable_if_supported();
  v8 = ccec_cp_ed448();
  v9 = cced448_verify_internal(v8, a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t cckeccak_f1600_c(uint64_t *a1)
{
  v1 = 0;
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[10];
  v4 = a1[11];
  v7 = a1[20];
  v6 = a1[21];
  v8 = a1[6];
  v9 = a1[7];
  v10 = a1[16];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[12];
  v14 = a1[13];
  v16 = a1[22];
  v15 = a1[23];
  v17 = a1[4];
  v18 = a1[5];
  v92 = a1[9];
  v93 = a1[8];
  v20 = a1[14];
  v19 = a1[15];
  v22 = a1[18];
  v21 = a1[19];
  v23 = a1[24];
  result = a1[17];
  do
  {
    v85 = v5;
    v87 = v10;
    v88 = v4;
    v89 = v21;
    v25 = v18;
    v26 = v18 ^ v3 ^ v5 ^ v19;
    v27 = v8 ^ v2 ^ v4 ^ v10 ^ v6;
    v90 = result;
    v28 = v9 ^ v11 ^ v13 ^ result;
    v29 = v20;
    v30 = v14;
    v31 = v15;
    v32 = v16;
    v33 = v17;
    v34 = v92 ^ v17 ^ v29 ^ v21;
    v35 = v6;
    v36 = v34 ^ v23;
    v37 = v34 ^ v23 ^ __ROR8__(v27, 63);
    v38 = v93 ^ v12 ^ v14 ^ v22 ^ v31;
    v39 = v27 ^ __ROR8__(v38, 63);
    v40 = v26 ^ v7;
    v41 = v38 ^ __ROR8__(v40, 63);
    v42 = v28 ^ v32;
    v43 = v40 ^ __ROR8__(v42, 63);
    v44 = v23 ^ v41;
    v45 = v42 ^ __ROR8__(v36, 63);
    v46 = v45 ^ v22;
    v47 = __ROR8__(v23 ^ v41, 50) & ~__ROR8__(v45 ^ v22, 43);
    v48 = v37 ^ v3;
    v49 = v45 ^ v12;
    v84 = (v37 ^ v3) & ~__ROR8__(v23 ^ v41, 50) ^ __ROR8__(v46, 43);
    v50 = v39 ^ v11;
    v81 = v47 ^ __ROR8__(v39 ^ v13, 21);
    v51 = __ROR8__(v39 ^ v13, 21) & ~__ROR8__(v43 ^ v8, 20);
    v52 = v43 ^ v2;
    v53 = v41 ^ v33;
    v82 = __ROR8__(v46, 43) & ~__ROR8__(v39 ^ v13, 21) ^ __ROR8__(v43 ^ v8, 20);
    v83 = __ROR8__(v43 ^ v8, 20) & ~(v37 ^ v3) ^ __ROR8__(v44, 50);
    v54 = v37 ^ v25;
    v55 = v37 ^ v85;
    v56 = v37 ^ v19;
    v57 = v37 ^ v7;
    v86 = __ROR8__(v43 ^ v2, 63);
    v58 = v43 ^ v88;
    v59 = v43 ^ v87;
    v60 = v43 ^ v35;
    v61 = v92 ^ v41;
    v62 = __ROR8__(v92 ^ v41, 44);
    v63 = v39 ^ v9;
    v64 = v39 ^ v90;
    v65 = v39 ^ v32;
    v66 = __ROR8__(v39 ^ v32, 3);
    v67 = v45 ^ v93;
    v68 = v45 ^ v30;
    v69 = v45 ^ v31;
    v70 = v29 ^ v41;
    v91 = __ROR8__(v29 ^ v41, 25);
    v71 = v89 ^ v41;
    v72 = v1;
    v73 = v51 ^ *(&qword_299CFC8F8 + v1) ^ v48;
    v74 = __ROR8__(v59, 19) & ~__ROR8__(v55, 61) ^ __ROR8__(v61, 44);
    v75 = v66 & ~__ROR8__(v59, 19) ^ __ROR8__(v55, 61);
    v18 = __ROR8__(v55, 61) & ~__ROR8__(v61, 44) ^ __ROR8__(v49, 36);
    v93 = __ROR8__(v49, 36) & ~__ROR8__(v65, 3) ^ __ROR8__(v59, 19);
    v92 = v62 & ~__ROR8__(v49, 36) ^ __ROR8__(v65, 3);
    v76 = __ROR8__(v63, 58) & ~__ROR8__(v52, 63);
    v5 = __ROR8__(v68, 39) & ~__ROR8__(v63, 58) ^ __ROR8__(v52, 63);
    v4 = __ROR8__(v71, 56) & ~__ROR8__(v68, 39) ^ __ROR8__(v63, 58);
    v13 = __ROR8__(v57, 46) & ~__ROR8__(v71, 56) ^ __ROR8__(v68, 39);
    v9 = v75;
    v3 = v73;
    v77 = v72;
    v8 = v74;
    v14 = v86 & ~__ROR8__(v57, 46) ^ __ROR8__(v71, 56);
    v20 = v76 ^ __ROR8__(v57, 46);
    v78 = __ROR8__(v58, 54) & ~__ROR8__(v54, 28);
    v10 = __ROR8__(v64, 49) & ~__ROR8__(v58, 54) ^ __ROR8__(v54, 28);
    result = __ROR8__(v69, 8) & ~__ROR8__(v64, 49) ^ __ROR8__(v58, 54);
    v11 = v81;
    v2 = v82;
    v79 = __ROR8__(v54, 28) & ~__ROR8__(v53, 37);
    v19 = v78 ^ __ROR8__(v53, 37);
    v22 = __ROR8__(v53, 37) & ~__ROR8__(v69, 8) ^ __ROR8__(v64, 49);
    v21 = v79 ^ __ROR8__(v69, 8);
    v7 = v91 & ~__ROR8__(v67, 9) ^ __ROR8__(v50, 2);
    v6 = __ROR8__(v56, 23) & ~__ROR8__(v70, 25) ^ __ROR8__(v67, 9);
    v16 = __ROR8__(v60, 62) & ~__ROR8__(v56, 23) ^ __ROR8__(v70, 25);
    v17 = v83;
    v12 = v84;
    v15 = __ROR8__(v50, 2) & ~__ROR8__(v60, 62) ^ __ROR8__(v56, 23);
    v23 = __ROR8__(v67, 9) & ~__ROR8__(v50, 2) ^ __ROR8__(v60, 62);
    v1 = v77 + 8;
  }

  while (v1 != 192);
  *a1 = v3;
  a1[1] = v82;
  a1[10] = v5;
  a1[11] = v4;
  a1[20] = v7;
  a1[21] = v6;
  a1[6] = v8;
  a1[7] = v9;
  a1[16] = v10;
  a1[17] = result;
  a1[2] = v81;
  a1[3] = v84;
  a1[12] = v13;
  a1[13] = v14;
  a1[22] = v16;
  a1[23] = v15;
  a1[4] = v83;
  a1[5] = v18;
  a1[8] = v93;
  a1[9] = v92;
  a1[14] = v20;
  a1[15] = v19;
  a1[18] = v22;
  a1[19] = v21;
  a1[24] = v23;
  return result;
}

void *cckeccak_absorb_blocks(void *result, unint64_t a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(void *))
{
  if (a3)
  {
    v9 = result;
    v10 = 0;
    v11 = a2 >> 3;
    do
    {
      v12 = v9;
      v13 = v11;
      if (a2 >= 8)
      {
        do
        {
          v14 = *a4++;
          *v12++ ^= v14;
          --v13;
        }

        while (v13);
      }

      result = a5(v9);
      ++v10;
    }

    while (v10 != a3);
  }

  return result;
}

void *cckeccak_absorb_and_pad(void *result, uint64_t a2, unint64_t a3, uint64_t *a4, unsigned int a5)
{
  v7 = result;
  v14[1] = *MEMORY[0x29EDCA608];
  v8 = a3 >> 3;
  if (a3 >= 8)
  {
    v10 = result;
    v11 = a3 >> 3;
    do
    {
      v12 = *a4++;
      *v10++ ^= v12;
      --v11;
    }

    while (v11);
    v9 = a3 >> 3;
  }

  else
  {
    v9 = 0;
  }

  v13 = a3 & 7;
  if ((a3 & 7) != 0)
  {
    v14[0] = 0;
    __memcpy_chk();
    *(v7 + 8 * v9) = *(v7 + 8 * v9);
    result = cc_clear(8uLL, v14);
  }

  *(v7 + 8 * v8) ^= a5 << (8 * v13);
  *(v7 + ((a2 - 1) & 0xFFFFFFFFFFFFFFF8)) ^= 128 << (8 * ((a2 - 1) & 7));
  return result;
}

uint64_t *cckeccak_squeeze(uint64_t *result, unint64_t a2, unint64_t a3, void *a4, uint64_t (*a5)(uint64_t *))
{
  v7 = a3;
  v8 = result;
  v18[1] = *MEMORY[0x29EDCA608];
  if (a3 >= a2)
  {
    v10 = a2 >> 3;
    do
    {
      result = a5(v8);
      v11 = v8;
      v12 = v10;
      if (a2 >= 8)
      {
        do
        {
          v13 = *v11++;
          *a4++ = v13;
          --v12;
        }

        while (v12);
      }

      v7 -= a2;
    }

    while (v7 >= a2);
  }

  if (v7)
  {
    result = a5(v8);
    if (v7 >= 8)
    {
      v14 = v7 >> 3;
      v15 = v8;
      v16 = v7 >> 3;
      do
      {
        v17 = *v15++;
        *a4++ = v17;
        --v16;
      }

      while (v16);
    }

    else
    {
      v14 = 0;
    }

    if ((v7 & 7) != 0)
    {
      v18[0] = v8[v14];
      memcpy(a4, v18, v7 & 7);
      return cc_clear(8uLL, v18);
    }
  }

  return result;
}

uint64_t cckeccak_absorb_iovec(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned int a5, void (*a6)(uint64_t))
{
  __s[25] = *MEMORY[0x29EDCA608];
  if (a2)
  {
    v9 = 0;
    for (i = 0; i != a2; ++i)
    {
      v11 = a3 + 16 * i;
      v12 = *(v11 + 8);
      if (v12)
      {
        v13 = *v11;
        if (v9)
        {
          if (a4 - v9 >= v12)
          {
            v14 = *(v11 + 8);
          }

          else
          {
            v14 = a4 - v9;
          }

          memcpy(__s + v9, v13, v14);
          v15 = v14 + v9;
          v12 -= v14;
          v13 = (v13 + v14);
        }

        else
        {
          v15 = 0;
        }

        v16 = v15 / a4;
        v28 = v15;
        if (v15 >= a4)
        {
          v17 = 0;
          v18 = __s;
          do
          {
            v19 = a1;
            v20 = a4 >> 3;
            if (a4 >= 8)
            {
              do
              {
                v21 = *v18++;
                *v19++ ^= v21;
                --v20;
              }

              while (v20);
            }

            a6(a1);
            ++v17;
          }

          while (v17 != v16);
        }

        if (v12 >= a4)
        {
          v22 = 0;
          do
          {
            v23 = a1;
            v24 = a4 >> 3;
            if (a4 >= 8)
            {
              do
              {
                v25 = *v13++;
                *v23++ ^= v25;
                --v24;
              }

              while (v24);
            }

            a6(a1);
            ++v22;
          }

          while (v22 != v12 / a4);
        }

        v9 = v12 % a4;
        if (v12 % a4)
        {
          __memcpy_chk();
        }

        else
        {
          v9 = v28 - v16 * a4;
        }
      }
    }
  }

  else
  {
    v9 = 0;
  }

  cckeccak_absorb_and_pad(a1, a4, v9, __s, a5);
  return cc_clear(0xC8uLL, __s);
}

uint64_t cckeccak_oneshot_iovec(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, unsigned int a6)
{
  v14 = 0;
  memset(v13, 0, sizeof(v13));
  cc_clear(0xC8uLL, v13);
  cckeccak_absorb_iovec(v13, a1, a2, a5, a6, cckeccak_f1600_c);
  cckeccak_squeeze(v13, a5, a3, a4, cckeccak_f1600_c);
  return cc_clear(0xC8uLL, v13);
}

uint64_t cckeccak_oneshot(uint64_t a1, uint64_t a2, unint64_t a3, void *a4, unint64_t a5, unsigned int a6)
{
  v7[2] = *MEMORY[0x29EDCA608];
  v7[0] = a2;
  v7[1] = a1;
  return cckeccak_oneshot_iovec(1, v7, a3, a4, a5, a6);
}

uint64_t frandom(_BYTE *a1, void (**a2)(void, uint64_t, _BYTE *))
{
  v4 = 0;
  while (1)
  {
    (*a2)(a2, 32, a1);
    v5 = 0;
    v6 = 0;
    a1[31] &= ~0x80u;
    do
    {
      v6 |= a1[v5++];
    }

    while (v5 != 32);
    if (v6)
    {
      v7 = a1[31] ^ 0x7F;
      v8 = 30;
      do
      {
        v7 |= ~a1[v8--];
      }

      while (v8);
      if (v7 | -(((-20 - *a1) & *a1 & 0x80) == 0))
      {
        break;
      }
    }

    if (v4++ >= 9)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return 0;
}

BOOL ccec_pairwise_consistency_check(uint64_t **a1, uint64_t (**a2)(void, unint64_t, void *))
{
  v12 = timingsafe_enable_if_supported();
  v4 = *a1;
  v5 = cc_malloc_clear(392 * **a1);
  v6 = 49 * *v4;
  v10[0] = v5;
  v10[1] = v6;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v5)
  {
    v9 = ccec_pairwise_consistency_check_ws(v10, a1, a2);
    v11(v10);
    v7 = v9 == 0;
  }

  else
  {
    v7 = 0;
  }

  cc_disable_dit_with_sb(&v12);
  return v7;
}

_DWORD *rmd160_compress(_DWORD *result, uint64_t a2, _DWORD *a3)
{
  v561 = result;
  if (a2)
  {
    v3 = *result;
    v4 = result[1];
    v5 = result[2];
    v6 = result[3];
    v7 = result[4];
    do
    {
      v570 = v6;
      v571 = v5;
      v573 = v3;
      v574 = a3;
      v564 = a2;
      v8 = *a3;
      HIDWORD(v10) = v5;
      LODWORD(v10) = v5;
      v9 = v10 >> 22;
      v11 = a3[2];
      v12 = a3[3];
      v13 = a3[4];
      v14 = a3[5];
      v15 = a3[6];
      v16 = a3[7];
      v17 = a3[8];
      v18 = a3[9];
      HIDWORD(v10) = (v5 ^ v4 ^ v6) + v3 + *a3;
      LODWORD(v10) = HIDWORD(v10);
      v19 = (v10 >> 21) + v7;
      v572 = v7;
      v20 = a3[1];
      HIDWORD(v10) = v20 + v7 + (v4 ^ __ROR4__(v5, 22) ^ v19);
      LODWORD(v10) = HIDWORD(v10);
      v21 = v10 >> 18;
      HIDWORD(v10) = v4;
      LODWORD(v10) = v4;
      v22 = v10 >> 22;
      v23 = a3[10];
      v24 = a3[11];
      v25 = v21 + v6;
      v26 = a3[12];
      LODWORD(v10) = v11 + v6 + (v19 ^ __ROR4__(v4, 22) ^ v25);
      HIDWORD(v10) = v10;
      v27 = v10 >> 17;
      v28 = a3[13];
      v29 = v574[14];
      v30 = v574[15];
      HIDWORD(v10) = v19;
      LODWORD(v10) = v19;
      v31 = v10 >> 22;
      v32 = v27 + v9;
      LODWORD(v10) = v12 + v9 + (v25 ^ __ROR4__(v19, 22) ^ v32);
      HIDWORD(v10) = v10;
      v33 = (v10 >> 20) + v22;
      HIDWORD(v10) = v25;
      LODWORD(v10) = v25;
      v34 = v10 >> 22;
      v35 = v13;
      LODWORD(v10) = v13 + v22 + (v32 ^ __ROR4__(v25, 22) ^ v33);
      HIDWORD(v10) = v10;
      v36 = v10 >> 27;
      HIDWORD(v10) = v32;
      LODWORD(v10) = v32;
      v37 = v10 >> 22;
      v38 = v36 + v31;
      LODWORD(v10) = v31 + v14 + (v33 ^ __ROR4__(v32, 22) ^ v38);
      HIDWORD(v10) = v10;
      v39 = (v10 >> 24) + v34;
      HIDWORD(v10) = v33;
      LODWORD(v10) = v33;
      v40 = v10 >> 22;
      LODWORD(v10) = v34 + v15 + (v38 ^ __ROR4__(v33, 22) ^ v39);
      HIDWORD(v10) = v10;
      v41 = v10 >> 25;
      HIDWORD(v10) = v38;
      LODWORD(v10) = v38;
      v42 = v10 >> 22;
      v43 = v41 + v37;
      LODWORD(v10) = v37 + v16 + (v39 ^ __ROR4__(v38, 22) ^ v43);
      HIDWORD(v10) = v10;
      v44 = (v10 >> 23) + v40;
      HIDWORD(v10) = v39;
      LODWORD(v10) = v39;
      v45 = v10 >> 22;
      LODWORD(v10) = v40 + v17 + (v43 ^ __ROR4__(v39, 22) ^ v44);
      HIDWORD(v10) = v10;
      v46 = v10 >> 21;
      HIDWORD(v10) = v43;
      LODWORD(v10) = v43;
      v47 = v10 >> 22;
      v48 = v46 + v42;
      LODWORD(v10) = v42 + v18 + (v44 ^ __ROR4__(v43, 22) ^ v48);
      HIDWORD(v10) = v10;
      v49 = (v10 >> 19) + v45;
      HIDWORD(v10) = v44;
      LODWORD(v10) = v44;
      v50 = v10 >> 22;
      v51 = v23;
      LODWORD(v10) = v45 + v23 + (v48 ^ __ROR4__(v44, 22) ^ v49);
      HIDWORD(v10) = v10;
      v52 = v10 >> 18;
      HIDWORD(v10) = v48;
      LODWORD(v10) = v48;
      v53 = v10 >> 22;
      v54 = v52 + v47;
      LODWORD(v10) = v47 + v24 + (v49 ^ __ROR4__(v48, 22) ^ v54);
      HIDWORD(v10) = v10;
      v55 = (v10 >> 17) + v50;
      HIDWORD(v10) = v49;
      LODWORD(v10) = v49;
      v56 = v10 >> 22;
      LODWORD(v10) = v50 + v26 + (v54 ^ __ROR4__(v49, 22) ^ v55);
      HIDWORD(v10) = v10;
      v57 = v10 >> 26;
      HIDWORD(v10) = v54;
      LODWORD(v10) = v54;
      v58 = v10 >> 22;
      v59 = v57 + v53;
      LODWORD(v10) = v53 + v28 + (v55 ^ __ROR4__(v54, 22) ^ v59);
      HIDWORD(v10) = v10;
      v60 = (v10 >> 25) + v56;
      HIDWORD(v10) = v55;
      LODWORD(v10) = v55;
      v61 = v10 >> 22;
      LODWORD(v10) = v56 + v29 + (v59 ^ __ROR4__(v55, 22) ^ v60);
      HIDWORD(v10) = v10;
      v62 = v10 >> 23;
      HIDWORD(v10) = v59;
      LODWORD(v10) = v59;
      v63 = v10 >> 22;
      v64 = v62 + v58;
      LODWORD(v10) = v58 + v30 + (v60 ^ __ROR4__(v59, 22) ^ v64);
      HIDWORD(v10) = v10;
      v65 = (v10 >> 24) + v61;
      HIDWORD(v10) = v60;
      LODWORD(v10) = v60;
      v66 = v10 >> 22;
      HIDWORD(v10) = v16 + 1518500249 + v61 + (v66 & ~v65) + (v65 & v64);
      LODWORD(v10) = HIDWORD(v10);
      v67 = (v10 >> 25) + v63;
      HIDWORD(v10) = v64;
      LODWORD(v10) = v64;
      v68 = v10 >> 22;
      v568 = v35;
      HIDWORD(v10) = v35 + 1518500249 + v63 + (v68 & ~v67) + (v67 & v65);
      LODWORD(v10) = HIDWORD(v10);
      v69 = (v10 >> 26) + v66;
      HIDWORD(v10) = v65;
      LODWORD(v10) = v65;
      v70 = v10 >> 22;
      HIDWORD(v10) = v28 + 1518500249 + v66 + (v70 & ~v69) + (v69 & v67);
      LODWORD(v10) = HIDWORD(v10);
      v71 = (v10 >> 24) + v68;
      HIDWORD(v10) = v67;
      LODWORD(v10) = v67;
      v72 = v10 >> 22;
      HIDWORD(v10) = v20 + 1518500249 + v68 + (v72 & ~v71) + (v71 & v69);
      LODWORD(v10) = HIDWORD(v10);
      v73 = (v10 >> 19) + v70;
      HIDWORD(v10) = v69;
      LODWORD(v10) = v69;
      v74 = v10 >> 22;
      HIDWORD(v10) = v23 + 1518500249 + v70 + (v74 & ~v73) + (v73 & v71);
      LODWORD(v10) = HIDWORD(v10);
      v75 = (v10 >> 21) + v72;
      HIDWORD(v10) = v71;
      LODWORD(v10) = v71;
      v76 = v10 >> 22;
      HIDWORD(v10) = v15 + 1518500249 + v72 + (v76 & ~v75) + (v75 & v73);
      LODWORD(v10) = HIDWORD(v10);
      v77 = (v10 >> 23) + v74;
      HIDWORD(v10) = v73;
      LODWORD(v10) = v73;
      v78 = v10 >> 22;
      HIDWORD(v10) = v30 + 1518500249 + v74 + (v78 & ~v77) + (v77 & v75);
      LODWORD(v10) = HIDWORD(v10);
      v79 = (v10 >> 25) + v76;
      HIDWORD(v10) = v75;
      LODWORD(v10) = v75;
      v80 = v10 >> 22;
      v569 = v12;
      HIDWORD(v10) = v12 + 1518500249 + v76 + (v80 & ~v79) + (v79 & v77);
      LODWORD(v10) = HIDWORD(v10);
      v81 = (v10 >> 17) + v78;
      HIDWORD(v10) = v77;
      LODWORD(v10) = v77;
      v82 = v10 >> 22;
      HIDWORD(v10) = v26 + 1518500249 + v78 + (v82 & ~v81) + (v81 & v79);
      LODWORD(v10) = HIDWORD(v10);
      v83 = (v10 >> 25) + v80;
      HIDWORD(v10) = v79;
      LODWORD(v10) = v79;
      v84 = v10 >> 22;
      HIDWORD(v10) = v8 + 1518500249 + v80 + (v84 & ~v83) + (v83 & v81);
      LODWORD(v10) = HIDWORD(v10);
      v85 = (v10 >> 20) + v82;
      HIDWORD(v10) = v81;
      LODWORD(v10) = v81;
      v86 = v10 >> 22;
      HIDWORD(v10) = v18 + 1518500249 + v82 + (v86 & ~v85) + (v85 & v83);
      LODWORD(v10) = HIDWORD(v10);
      v87 = (v10 >> 17) + v84;
      HIDWORD(v10) = v83;
      LODWORD(v10) = v83;
      v88 = v10 >> 22;
      HIDWORD(v10) = v14 + 1518500249 + v84 + (v88 & ~v87) + (v87 & v85);
      LODWORD(v10) = HIDWORD(v10);
      v89 = (v10 >> 23) + v86;
      HIDWORD(v10) = v85;
      LODWORD(v10) = v85;
      v90 = v10 >> 22;
      HIDWORD(v10) = v11 + 1518500249 + v86 + (v90 & ~v89) + (v89 & v87);
      LODWORD(v10) = HIDWORD(v10);
      v91 = (v10 >> 21) + v88;
      HIDWORD(v10) = v87;
      LODWORD(v10) = v87;
      v92 = v10 >> 22;
      v93 = v29 + 1518500249 + v88 + (v92 & ~v91) + (v91 & v89);
      HIDWORD(v10) = v89;
      LODWORD(v10) = v89;
      v94 = v10 >> 22;
      HIDWORD(v10) = v93;
      LODWORD(v10) = v93;
      v95 = (v10 >> 25) + v90;
      HIDWORD(v10) = v24 + 1518500249 + v90 + (v94 & ~v95) + (v95 & v91);
      LODWORD(v10) = HIDWORD(v10);
      v96 = v10 >> 19;
      HIDWORD(v10) = v91;
      LODWORD(v10) = v91;
      v97 = v10 >> 22;
      v98 = v96 + v92;
      v563 = v17;
      HIDWORD(v10) = v17 + 1518500249 + v92 + (v97 & ~v98) + (v98 & v95);
      LODWORD(v10) = HIDWORD(v10);
      v99 = (v10 >> 20) + v94;
      HIDWORD(v10) = v95;
      LODWORD(v10) = v95;
      v100 = v10 >> 22;
      LODWORD(v10) = v12 + 1859775393 + v94 + ((v99 | ~v98) ^ __ROR4__(v95, 22));
      HIDWORD(v10) = v10;
      v101 = (v10 >> 21) + v97;
      HIDWORD(v10) = v98;
      LODWORD(v10) = v98;
      v102 = v10 >> 22;
      v567 = v23;
      v103 = __PAIR64__(v99, __ROR4__(v98, 22));
      v104 = v23 + 1859775393 + v97 + ((v101 | ~v99) ^ v103);
      LODWORD(v103) = v99;
      v105 = v103 >> 22;
      HIDWORD(v103) = v104;
      LODWORD(v103) = v104;
      v106 = (v103 >> 19) + v100;
      LODWORD(v103) = v29 + 1859775393 + v100 + ((v106 | ~v101) ^ __ROR4__(v99, 22));
      HIDWORD(v103) = v103;
      v107 = (v103 >> 26) + v102;
      HIDWORD(v103) = v101;
      LODWORD(v103) = v101;
      v108 = v103 >> 22;
      LODWORD(v103) = v35 + 1859775393 + v102 + ((v107 | ~v106) ^ __ROR4__(v101, 22));
      HIDWORD(v103) = v103;
      v109 = (v103 >> 25) + v105;
      HIDWORD(v103) = v106;
      LODWORD(v103) = v106;
      v110 = v103 >> 22;
      v111 = __PAIR64__(v107, __ROR4__(v106, 22));
      v112 = v18 + 1859775393 + v105 + ((v109 | ~v107) ^ v111);
      LODWORD(v111) = v107;
      v113 = v111 >> 22;
      HIDWORD(v111) = v112;
      LODWORD(v111) = v112;
      v114 = (v111 >> 18) + v108;
      LODWORD(v111) = v30 + 1859775393 + v108 + ((v114 | ~v109) ^ __ROR4__(v107, 22));
      HIDWORD(v111) = v111;
      v115 = (v111 >> 23) + v110;
      HIDWORD(v111) = v109;
      LODWORD(v111) = v109;
      v116 = v111 >> 22;
      LODWORD(v111) = v17 + 1859775393 + v110 + ((v115 | ~v114) ^ __ROR4__(v109, 22));
      HIDWORD(v111) = v111;
      v117 = (v111 >> 19) + v113;
      HIDWORD(v111) = v114;
      LODWORD(v111) = v114;
      v118 = v111 >> 22;
      v119 = __PAIR64__(v115, __ROR4__(v114, 22));
      v120 = v20 + 1859775393 + v113 + ((v117 | ~v115) ^ v119);
      LODWORD(v119) = v115;
      v121 = v119 >> 22;
      HIDWORD(v119) = v120;
      LODWORD(v119) = v120;
      v122 = (v119 >> 17) + v116;
      LODWORD(v119) = v11 + 1859775393 + v116 + ((v122 | ~v117) ^ __ROR4__(v115, 22));
      HIDWORD(v119) = v119;
      v123 = (v119 >> 18) + v118;
      HIDWORD(v119) = v117;
      LODWORD(v119) = v117;
      v124 = v119 >> 22;
      LODWORD(v119) = v16 + 1859775393 + v118 + ((v123 | ~v122) ^ __ROR4__(v117, 22));
      HIDWORD(v119) = v119;
      v125 = (v119 >> 24) + v121;
      HIDWORD(v119) = v122;
      LODWORD(v119) = v122;
      v126 = v119 >> 22;
      v127 = __PAIR64__(v123, __ROR4__(v122, 22));
      v128 = v8 + 1859775393 + v121 + ((v125 | ~v123) ^ v127);
      LODWORD(v127) = v123;
      v129 = v127 >> 22;
      HIDWORD(v127) = v128;
      LODWORD(v127) = v128;
      v130 = (v127 >> 19) + v124;
      LODWORD(v127) = v15 + 1859775393 + v124 + ((v130 | ~v125) ^ __ROR4__(v123, 22));
      HIDWORD(v127) = v127;
      v131 = (v127 >> 26) + v126;
      HIDWORD(v127) = v125;
      LODWORD(v127) = v125;
      v132 = v127 >> 22;
      LODWORD(v127) = v28 + 1859775393 + v126 + ((v131 | ~v130) ^ __ROR4__(v125, 22));
      HIDWORD(v127) = v127;
      v133 = (v127 >> 27) + v129;
      HIDWORD(v127) = v130;
      LODWORD(v127) = v130;
      v134 = v127 >> 22;
      v135 = __PAIR64__(v131, __ROR4__(v130, 22));
      v136 = v24 + 1859775393 + v129 + ((v133 | ~v131) ^ v135);
      LODWORD(v135) = v131;
      v137 = v135 >> 22;
      HIDWORD(v135) = v136;
      LODWORD(v135) = v136;
      v138 = (v135 >> 20) + v132;
      v565 = v14;
      LODWORD(v135) = v14 + 1859775393 + v132 + ((v138 | ~v133) ^ __ROR4__(v131, 22));
      HIDWORD(v135) = v135;
      v139 = (v135 >> 25) + v134;
      HIDWORD(v135) = v133;
      LODWORD(v135) = v133;
      v140 = v135 >> 22;
      LODWORD(v135) = v26 + 1859775393 + v134 + ((v139 | ~v138) ^ __ROR4__(v133, 22));
      HIDWORD(v135) = v135;
      v141 = (v135 >> 27) + v137;
      HIDWORD(v135) = v138;
      LODWORD(v135) = v138;
      v142 = v135 >> 22;
      v562 = v20;
      LODWORD(v135) = v20 - 1894007588 + v137 + (v139 & ~__ROR4__(v138, 22)) + (v141 & __ROR4__(v138, 22));
      HIDWORD(v135) = v135;
      v143 = (v135 >> 21) + v140;
      HIDWORD(v135) = v139;
      LODWORD(v135) = v139;
      v144 = v135 >> 22;
      v566 = v18;
      LODWORD(v135) = v18 - 1894007588 + v140 + (v141 & ~__ROR4__(v139, 22)) + (v143 & __ROR4__(v139, 22));
      HIDWORD(v135) = v135;
      v145 = (v135 >> 20) + v142;
      v146 = v24 - 1894007588 + v142 + (v143 & ~__ROR4__(v141, 22)) + (v145 & __ROR4__(v141, 22));
      v147 = __PAIR64__(v146, __ROR4__(v143, 22));
      v148 = v23 - 1894007588 + v144 + (v145 & ~v147);
      LODWORD(v147) = v146;
      v149 = (v147 >> 18) + v144;
      HIDWORD(v147) = v573 + 1352829926 + ((v571 | ~v570) ^ v4) + v14;
      LODWORD(v147) = HIDWORD(v147);
      v150 = (v147 >> 24) + v572;
      v151 = v29;
      LODWORD(v147) = v572 + 1352829926 + v29 + (v150 ^ (v4 | ~__ROR4__(v571, 22)));
      HIDWORD(v147) = v147;
      v152 = (v147 >> 23) + v570;
      v153 = v570 + 1352829926 + v16 + (v152 ^ (v150 | ~__ROR4__(v4, 22)));
      v154 = __PAIR64__(v153, __ROR4__(v143, 22));
      v155 = v148 + (v149 & v154);
      LODWORD(v154) = v153;
      v156 = (v154 >> 23) + v9;
      LODWORD(v154) = v9 + 1352829926 + v8 + (v156 ^ (v152 | ~__ROR4__(v150, 22)));
      HIDWORD(v154) = v154;
      v157 = (v154 >> 21) + v22;
      v158 = __PAIR64__(v150, __ROR4__(v152, 22));
      v159 = v22 + 1352829926 + v566 + (v157 ^ (v156 | ~v158));
      LODWORD(v158) = v150;
      v160 = v158 >> 22;
      HIDWORD(v158) = v159;
      LODWORD(v158) = v159;
      v161 = (v158 >> 19) + v160;
      v162 = __PAIR64__(v141, __ROR4__(v156, 22));
      v163 = v11 + 1352829926 + v160 + (v161 ^ (v157 | ~v162));
      LODWORD(v162) = v141;
      v164 = v162 >> 22;
      HIDWORD(v162) = v155;
      LODWORD(v162) = v155;
      v165 = (v162 >> 17) + v164;
      HIDWORD(v162) = v152;
      LODWORD(v162) = v152;
      v166 = v162 >> 22;
      HIDWORD(v162) = v163;
      LODWORD(v162) = v163;
      v167 = v8;
      v168 = (v162 >> 17) + v166;
      v169 = __PAIR64__(v156, __ROR4__(v157, 22));
      v170 = v24 + 1352829926 + v166 + (v168 ^ (v161 | ~v169));
      LODWORD(v169) = v156;
      v171 = v169 >> 22;
      HIDWORD(v169) = v170;
      LODWORD(v169) = v170;
      v172 = (v169 >> 17) + v171;
      v173 = v568 + 1352829926 + v171;
      v174 = __PAIR64__(v143, __ROR4__(v145, 22));
      v175 = v8 - 1894007588 + v164 + (v149 & ~__ROR4__(v145, 22)) + (v165 & v174);
      LODWORD(v174) = v143;
      v176 = v174 >> 22;
      v177 = v17 - 1894007588 + v176 + (v165 & ~__ROR4__(v149, 22));
      v178 = __PAIR64__(v175, __ROR4__(v161, 22));
      v179 = v173 + (v172 ^ (v168 | ~v178));
      LODWORD(v178) = v175;
      v180 = (v178 >> 18) + v176;
      HIDWORD(v178) = v157;
      LODWORD(v178) = v157;
      v181 = v178 >> 22;
      HIDWORD(v178) = v179;
      LODWORD(v178) = v179;
      v182 = (v178 >> 27) + v181;
      v183 = __PAIR64__(v161, __ROR4__(v149, 22));
      v184 = v177 + (v180 & v183);
      LODWORD(v183) = v161;
      v185 = v183 >> 22;
      HIDWORD(v183) = v28 + 1352829926 + v181 + (v182 ^ (v172 | ~__ROR4__(v168, 22)));
      LODWORD(v183) = HIDWORD(v183);
      v186 = (v183 >> 25) + v185;
      v187 = __PAIR64__(v168, __ROR4__(v172, 22));
      v188 = v15 + 1352829926 + v185 + (v186 ^ (v182 | ~v187));
      LODWORD(v187) = v168;
      v189 = v187 >> 22;
      HIDWORD(v187) = v188;
      LODWORD(v187) = v188;
      v190 = (v187 >> 25) + v189;
      v191 = __PAIR64__(v145, __ROR4__(v182, 22));
      v192 = v30 + 1352829926 + v189 + (v190 ^ (v186 | ~v191));
      LODWORD(v191) = v145;
      v193 = v191 >> 22;
      HIDWORD(v191) = v184;
      LODWORD(v191) = v184;
      v194 = (v191 >> 17) + v193;
      HIDWORD(v191) = v172;
      LODWORD(v191) = v172;
      v195 = v191 >> 22;
      HIDWORD(v191) = v192;
      LODWORD(v191) = v192;
      v196 = (v191 >> 24) + v195;
      v197 = __PAIR64__(v182, __ROR4__(v186, 22));
      v198 = v563 + 1352829926 + v195 + (v196 ^ (v190 | ~v197));
      LODWORD(v197) = v182;
      v199 = v197 >> 22;
      HIDWORD(v197) = v198;
      LODWORD(v197) = v198;
      v200 = (v197 >> 21) + v199;
      v201 = __PAIR64__(v149, __ROR4__(v165, 22));
      v202 = v26 - 1894007588 + v193 + (v180 & ~__ROR4__(v165, 22)) + (v194 & v201);
      LODWORD(v201) = v149;
      v203 = v201 >> 22;
      v204 = v568 - 1894007588 + v203 + (v194 & ~__ROR4__(v180, 22));
      v205 = __PAIR64__(v202, __ROR4__(v190, 22));
      v206 = v20 + 1352829926 + v199 + (v200 ^ (v196 | ~v205));
      LODWORD(v205) = v202;
      v207 = (v205 >> 23) + v203;
      HIDWORD(v205) = v186;
      LODWORD(v205) = v186;
      v208 = v205 >> 22;
      HIDWORD(v205) = v206;
      LODWORD(v205) = v206;
      v209 = (v205 >> 18) + v208;
      v210 = __PAIR64__(v165, __ROR4__(v180, 22));
      v211 = v204 + (v207 & v210);
      LODWORD(v210) = v165;
      v212 = v210 >> 22;
      v213 = __PAIR64__(v190, __ROR4__(v194, 22));
      v214 = v28 - 1894007588 + v212 + (v207 & ~v213);
      LODWORD(v213) = v190;
      v215 = v213 >> 22;
      HIDWORD(v213) = v567 + 1352829926 + v208 + (v209 ^ (v200 | ~__ROR4__(v196, 22)));
      LODWORD(v213) = HIDWORD(v213);
      v216 = (v213 >> 18) + v215;
      v217 = __PAIR64__(v196, __ROR4__(v200, 22));
      v218 = v569 + 1352829926 + v215 + (v216 ^ (v209 | ~v217));
      LODWORD(v217) = v196;
      v219 = v217 >> 22;
      HIDWORD(v217) = v218;
      LODWORD(v217) = v218;
      v220 = (v217 >> 20) + v219;
      v221 = __PAIR64__(v200, __ROR4__(v209, 22));
      v222 = v26 + 1352829926 + v219 + (v220 ^ (v216 | ~v221));
      LODWORD(v221) = v200;
      v223 = v221 >> 22;
      HIDWORD(v221) = v222;
      LODWORD(v221) = v222;
      v224 = (v221 >> 26) + v223;
      v225 = v15;
      HIDWORD(v221) = v211;
      LODWORD(v221) = v211;
      v226 = (v221 >> 24) + v212;
      v227 = __PAIR64__(v180, __ROR4__(v194, 22));
      v228 = v214 + (v226 & v227);
      LODWORD(v227) = v180;
      v229 = v227 >> 22;
      v230 = __PAIR64__(v209, __ROR4__(v207, 22));
      v231 = v569 - 1894007588 + v229 + (v226 & ~v230);
      LODWORD(v230) = v209;
      v232 = v230 >> 22;
      HIDWORD(v230) = v15 + 1548603684 + v223 + (v220 & ~__ROR4__(v216, 22)) + (v224 & __ROR4__(v216, 22));
      LODWORD(v230) = HIDWORD(v230);
      v233 = (v230 >> 23) + v232;
      v234 = __PAIR64__(v228, __ROR4__(v220, 22));
      v235 = v24 + 1548603684 + v232 + (v224 & ~v234);
      LODWORD(v234) = v228;
      v236 = (v234 >> 23) + v229;
      v237 = __PAIR64__(v216, __ROR4__(v220, 22));
      v238 = v235 + (v233 & v237);
      LODWORD(v237) = v216;
      v239 = v237 >> 22;
      HIDWORD(v237) = v238;
      LODWORD(v237) = v238;
      v240 = (v237 >> 19) + v239;
      v241 = __PAIR64__(v220, __ROR4__(v224, 22));
      v242 = v569 + 1548603684 + v239 + (v233 & ~__ROR4__(v224, 22)) + (v240 & v241);
      LODWORD(v241) = v220;
      v243 = v241 >> 22;
      HIDWORD(v241) = v242;
      LODWORD(v241) = v242;
      v244 = (v241 >> 17) + v243;
      v245 = __PAIR64__(v194, __ROR4__(v207, 22));
      v246 = v231 + (v236 & v245);
      LODWORD(v245) = v194;
      v247 = v245 >> 22;
      v248 = __PAIR64__(v224, __ROR4__(v233, 22));
      v249 = v16 + 1548603684 + v243 + (v240 & ~__ROR4__(v233, 22)) + (v244 & v248);
      LODWORD(v248) = v224;
      v250 = v248 >> 22;
      HIDWORD(v248) = v249;
      LODWORD(v248) = v249;
      v251 = (v248 >> 25) + v250;
      v252 = v167 + 1548603684 + v250;
      HIDWORD(v248) = v246;
      LODWORD(v248) = v246;
      v253 = (v248 >> 18) + v247;
      v254 = __PAIR64__(v207, __ROR4__(v226, 22));
      v255 = v16 - 1894007588 + v247 + (v236 & ~__ROR4__(v226, 22)) + (v253 & v254);
      LODWORD(v254) = v207;
      v256 = v254 >> 22;
      v257 = __PAIR64__(v233, __ROR4__(v236, 22));
      v258 = v30 - 1894007588 + v256 + (v253 & ~v257);
      LODWORD(v257) = v233;
      v259 = v257 >> 22;
      HIDWORD(v257) = v252 + (v244 & ~__ROR4__(v240, 22)) + (v251 & __ROR4__(v240, 22));
      LODWORD(v257) = HIDWORD(v257);
      v260 = (v257 >> 20) + v259;
      v261 = __PAIR64__(v255, __ROR4__(v244, 22));
      v262 = v28 + 1548603684 + v259 + (v251 & ~v261);
      LODWORD(v261) = v255;
      v263 = (v261 >> 27) + v256;
      v264 = __PAIR64__(v240, __ROR4__(v244, 22));
      v265 = v262 + (v260 & v264);
      LODWORD(v264) = v240;
      v266 = v264 >> 22;
      HIDWORD(v264) = v265;
      LODWORD(v264) = v265;
      v267 = (v264 >> 24) + v266;
      v268 = __PAIR64__(v244, __ROR4__(v251, 22));
      v269 = v14 + 1548603684 + v266 + (v260 & ~__ROR4__(v251, 22)) + (v267 & v268);
      LODWORD(v268) = v244;
      v270 = v268 >> 22;
      HIDWORD(v268) = v269;
      LODWORD(v268) = v269;
      v271 = (v268 >> 23) + v270;
      v272 = __PAIR64__(v226, __ROR4__(v236, 22));
      v273 = v258 + (v263 & v272);
      LODWORD(v272) = v226;
      v274 = v272 >> 22;
      v275 = __PAIR64__(v251, __ROR4__(v260, 22));
      v276 = v567 + 1548603684 + v270 + (v267 & ~__ROR4__(v260, 22)) + (v271 & v275);
      LODWORD(v275) = v251;
      v277 = v275 >> 22;
      HIDWORD(v275) = v276;
      LODWORD(v275) = v276;
      v278 = (v275 >> 21) + v277;
      HIDWORD(v275) = v273;
      LODWORD(v275) = v273;
      v279 = (v275 >> 26) + v274;
      v280 = __PAIR64__(v236, __ROR4__(v253, 22));
      v281 = v151 - 1894007588 + v274 + (v263 & ~__ROR4__(v253, 22)) + (v279 & v280);
      LODWORD(v280) = v236;
      v282 = v280 >> 22;
      v283 = __PAIR64__(v260, __ROR4__(v263, 22));
      v284 = v14 - 1894007588 + v282 + (v279 & ~v283);
      LODWORD(v283) = v260;
      v285 = v283 >> 22;
      HIDWORD(v283) = v151 + 1548603684 + v277 + (v271 & ~__ROR4__(v267, 22)) + (v278 & __ROR4__(v267, 22));
      LODWORD(v283) = HIDWORD(v283);
      v286 = (v283 >> 25) + v285;
      v287 = __PAIR64__(v281, __ROR4__(v271, 22));
      v288 = v30 + 1548603684 + v285 + (v278 & ~v287);
      LODWORD(v287) = v281;
      v289 = (v287 >> 24) + v282;
      v290 = __PAIR64__(v267, __ROR4__(v271, 22));
      v291 = v288 + (v286 & v290);
      LODWORD(v290) = v267;
      v292 = v290 >> 22;
      HIDWORD(v290) = v291;
      LODWORD(v290) = v291;
      v293 = (v290 >> 25) + v292;
      v294 = __PAIR64__(v271, __ROR4__(v278, 22));
      v295 = v563 + 1548603684 + v292 + (v286 & ~__ROR4__(v278, 22)) + (v293 & v294);
      LODWORD(v294) = v271;
      v296 = v294 >> 22;
      HIDWORD(v294) = v295;
      LODWORD(v294) = v295;
      v297 = (v294 >> 20) + v296;
      v298 = v284 + (v289 & __ROR4__(v263, 22));
      v299 = __PAIR64__(v278, __ROR4__(v286, 22));
      v300 = v26 + 1548603684 + v296 + (v293 & ~__ROR4__(v286, 22)) + (v297 & v299);
      LODWORD(v299) = v278;
      v301 = v299 >> 22;
      HIDWORD(v299) = v300;
      LODWORD(v299) = v300;
      v302 = (v299 >> 25) + v301;
      HIDWORD(v299) = v253;
      LODWORD(v299) = v253;
      v303 = v299 >> 22;
      v304 = __PAIR64__(v298, __ROR4__(v293, 22));
      v305 = v568 + 1548603684 + v301 + (v297 & ~v304);
      LODWORD(v304) = v298;
      v306 = v15 - 1894007588 + v303;
      v307 = (v304 >> 26) + v303;
      v308 = __PAIR64__(v286, __ROR4__(v293, 22));
      v309 = v305 + (v302 & v308);
      LODWORD(v308) = v286;
      v310 = v308 >> 22;
      HIDWORD(v308) = v309;
      LODWORD(v308) = v309;
      v311 = (v308 >> 26) + v310;
      v312 = __PAIR64__(v293, __ROR4__(v297, 22));
      v313 = v566 + 1548603684 + v310 + (v302 & ~__ROR4__(v297, 22)) + (v311 & v312);
      LODWORD(v312) = v293;
      v314 = v312 >> 22;
      HIDWORD(v312) = v313;
      LODWORD(v312) = v313;
      v315 = (v312 >> 17) + v314;
      v316 = __PAIR64__(v263, __ROR4__(v279, 22));
      v317 = v306 + (v289 & ~__ROR4__(v279, 22)) + (v307 & v316);
      LODWORD(v316) = v263;
      v318 = v316 >> 22;
      v319 = v11 - 1894007588 + v318 + (v307 & ~__ROR4__(v289, 22));
      v320 = __PAIR64__(v297, __ROR4__(v302, 22));
      v321 = v20 + 1548603684 + v314 + (v311 & ~__ROR4__(v302, 22)) + (v315 & v320);
      LODWORD(v320) = v297;
      v322 = v320 >> 22;
      HIDWORD(v320) = v321;
      LODWORD(v320) = v321;
      v323 = (v320 >> 19) + v322;
      v324 = __PAIR64__(v317, __ROR4__(v311, 22));
      v325 = v11 + 1548603684 + v322 + (v315 & ~__ROR4__(v311, 22)) + (v323 & v324);
      LODWORD(v324) = v317;
      v326 = (v324 >> 27) + v318;
      HIDWORD(v324) = v302;
      LODWORD(v324) = v302;
      v327 = v324 >> 22;
      HIDWORD(v324) = v325;
      LODWORD(v324) = v325;
      v328 = (v324 >> 21) + v327;
      v329 = v30 + 1836072691 + v327 + ((v328 | ~v323) ^ __ROR4__(v315, 22));
      v330 = __PAIR64__(v311, __ROR4__(v289, 22));
      v331 = v319 + (v326 & v330);
      LODWORD(v330) = v311;
      v332 = v330 >> 22;
      HIDWORD(v330) = v329;
      LODWORD(v330) = v329;
      v333 = (v330 >> 23) + v332;
      v334 = __PAIR64__(v279, __ROR4__(v323, 22));
      v335 = v14 + 1836072691 + v332 + ((v333 | ~v328) ^ v334);
      LODWORD(v334) = v279;
      v336 = v334 >> 22;
      HIDWORD(v334) = v315;
      LODWORD(v334) = v315;
      v337 = v334 >> 22;
      HIDWORD(v334) = v335;
      LODWORD(v334) = v335;
      v338 = (v334 >> 25) + v337;
      HIDWORD(v334) = v331;
      LODWORD(v334) = v331;
      v339 = (v334 >> 20) + v336;
      v340 = __PAIR64__(v323, __ROR4__(v307, 22));
      v341 = v568 - 1454113458 + v336 + (v339 ^ (v326 | ~v340));
      LODWORD(v340) = v323;
      v342 = v340 >> 22;
      HIDWORD(v340) = v20 + 1836072691 + v337 + ((v338 | ~v333) ^ __ROR4__(v328, 22));
      LODWORD(v340) = HIDWORD(v340);
      v343 = (v340 >> 17) + v342;
      v344 = __PAIR64__(v289, __ROR4__(v333, 22));
      v345 = v569 + 1836072691 + v342 + ((v343 | ~v338) ^ v344);
      LODWORD(v344) = v289;
      v346 = v344 >> 22;
      HIDWORD(v344) = v328;
      LODWORD(v344) = v328;
      v347 = v344 >> 22;
      HIDWORD(v344) = v345;
      LODWORD(v344) = v345;
      v348 = (v344 >> 21) + v347;
      HIDWORD(v344) = v341;
      LODWORD(v344) = v341;
      v349 = v167 - 1454113458 + v346;
      v350 = (v344 >> 23) + v346;
      v351 = v16 + 1836072691 + v347 + ((v348 | ~v343) ^ __ROR4__(v338, 22));
      v352 = __PAIR64__(v333, __ROR4__(v326, 22));
      v353 = v349 + (v350 ^ (v339 | ~v352));
      LODWORD(v352) = v333;
      v354 = v352 >> 22;
      HIDWORD(v352) = v351;
      LODWORD(v352) = v351;
      v355 = (v352 >> 24) + v354;
      v356 = __PAIR64__(v307, __ROR4__(v343, 22));
      v357 = v151 + 1836072691 + v354 + ((v355 | ~v348) ^ v356);
      LODWORD(v356) = v307;
      v358 = v356 >> 22;
      HIDWORD(v356) = v338;
      LODWORD(v356) = v338;
      v359 = v356 >> 22;
      HIDWORD(v356) = v357;
      LODWORD(v356) = v357;
      v360 = (v356 >> 26) + v359;
      HIDWORD(v356) = v353;
      LODWORD(v356) = v353;
      v361 = (v356 >> 17) + v358;
      v362 = __PAIR64__(v343, __ROR4__(v339, 22));
      v363 = v14 - 1454113458 + v358 + (v361 ^ (v350 | ~v362));
      LODWORD(v362) = v343;
      v364 = v362 >> 22;
      HIDWORD(v362) = v15 + 1836072691 + v359 + ((v360 | ~v355) ^ __ROR4__(v348, 22));
      LODWORD(v362) = HIDWORD(v362);
      v365 = (v362 >> 26) + v364;
      v366 = __PAIR64__(v326, __ROR4__(v355, 22));
      v367 = v566 + 1836072691 + v364 + ((v365 | ~v360) ^ v366);
      LODWORD(v366) = v326;
      v368 = v366 >> 22;
      HIDWORD(v366) = v348;
      LODWORD(v366) = v348;
      v369 = v366 >> 22;
      HIDWORD(v366) = v367;
      LODWORD(v366) = v367;
      v370 = (v366 >> 18) + v369;
      HIDWORD(v366) = v363;
      LODWORD(v366) = v363;
      v371 = v566 - 1454113458 + v368;
      v372 = (v366 >> 27) + v368;
      v373 = v24 + 1836072691 + v369 + ((v370 | ~v365) ^ __ROR4__(v360, 22));
      v374 = __PAIR64__(v355, __ROR4__(v350, 22));
      v375 = v371 + (v372 ^ (v361 | ~v374));
      LODWORD(v374) = v355;
      v376 = v374 >> 22;
      HIDWORD(v374) = v373;
      LODWORD(v374) = v373;
      v377 = (v374 >> 20) + v376;
      v378 = __PAIR64__(v339, __ROR4__(v365, 22));
      v379 = v563 + 1836072691 + v376 + ((v377 | ~v370) ^ v378);
      LODWORD(v378) = v339;
      v380 = v378 >> 22;
      HIDWORD(v378) = v360;
      LODWORD(v378) = v360;
      v381 = v378 >> 22;
      HIDWORD(v378) = v379;
      LODWORD(v378) = v379;
      v382 = (v378 >> 19) + v381;
      HIDWORD(v378) = v375;
      LODWORD(v378) = v375;
      v383 = v16 - 1454113458 + v380;
      v384 = (v378 >> 21) + v380;
      v385 = v26 + 1836072691 + v381 + ((v382 | ~v377) ^ __ROR4__(v370, 22));
      v386 = __PAIR64__(v365, __ROR4__(v361, 22));
      v387 = v383 + (v384 ^ (v372 | ~v386));
      LODWORD(v386) = v365;
      v388 = v386 >> 22;
      HIDWORD(v386) = v385;
      LODWORD(v386) = v385;
      v389 = (v386 >> 27) + v388;
      v390 = __PAIR64__(v350, __ROR4__(v377, 22));
      v391 = v11 + 1836072691 + v388 + ((v389 | ~v382) ^ v390);
      LODWORD(v390) = v350;
      v392 = v390 >> 22;
      HIDWORD(v390) = v370;
      LODWORD(v390) = v370;
      v393 = v390 >> 22;
      HIDWORD(v390) = v391;
      LODWORD(v390) = v391;
      v394 = (v390 >> 18) + v393;
      HIDWORD(v390) = v387;
      LODWORD(v390) = v387;
      v395 = v26 - 1454113458 + v392;
      v396 = (v390 >> 26) + v392;
      v397 = __PAIR64__(v377, __ROR4__(v372, 22));
      v398 = v395 + (v396 ^ (v384 | ~v397));
      LODWORD(v397) = v377;
      v399 = v397 >> 22;
      HIDWORD(v397) = v567 + 1836072691 + v393 + ((v394 | ~v389) ^ __ROR4__(v382, 22));
      LODWORD(v397) = HIDWORD(v397);
      v400 = (v397 >> 19) + v399;
      v401 = __PAIR64__(v361, __ROR4__(v389, 22));
      v402 = v167 + 1836072691 + v399 + ((v400 | ~v394) ^ v401);
      LODWORD(v401) = v361;
      v403 = v401 >> 22;
      HIDWORD(v401) = v382;
      LODWORD(v401) = v382;
      v404 = v401 >> 22;
      HIDWORD(v401) = v402;
      LODWORD(v401) = v402;
      v405 = (v401 >> 19) + v404;
      HIDWORD(v401) = v398;
      LODWORD(v401) = v398;
      v406 = v11 - 1454113458 + v403;
      v407 = (v401 >> 24) + v403;
      v408 = v568 + 1836072691 + v404 + ((v405 | ~v400) ^ __ROR4__(v394, 22));
      v409 = __PAIR64__(v389, __ROR4__(v384, 22));
      v410 = v406 + (v407 ^ (v396 | ~v409));
      LODWORD(v409) = v389;
      v411 = v409 >> 22;
      HIDWORD(v409) = v408;
      LODWORD(v409) = v408;
      v412 = (v409 >> 25) + v411;
      v413 = __PAIR64__(v394, __ROR4__(v400, 22));
      v414 = v28 + 1836072691 + v411 + ((v412 | ~v405) ^ v413);
      LODWORD(v413) = v394;
      v415 = v413 >> 22;
      HIDWORD(v413) = v414;
      LODWORD(v413) = v414;
      v416 = (v413 >> 27) + v415;
      HIDWORD(v413) = v405;
      LODWORD(v413) = v405;
      v417 = v413 >> 22;
      HIDWORD(v413) = v372;
      LODWORD(v413) = v372;
      v418 = v413 >> 22;
      v419 = v563 + 2053994217 + v415 + (v417 & ~v416) + (v416 & v412);
      HIDWORD(v413) = v410;
      LODWORD(v413) = v410;
      v420 = v567 - 1454113458 + v418;
      v421 = (v413 >> 19) + v418;
      HIDWORD(v413) = v400;
      LODWORD(v413) = v400;
      v422 = v413 >> 22;
      HIDWORD(v413) = v419;
      LODWORD(v413) = v419;
      v423 = v413 >> 17;
      v424 = __PAIR64__(v412, __ROR4__(v396, 22));
      v425 = v420 + (v421 ^ (v407 | ~v424));
      v426 = v423 + v422;
      LODWORD(v424) = v412;
      v427 = v424 >> 22;
      v428 = v15 + 2053994217 + v422 + (v427 & ~v426) + (v426 & v416);
      HIDWORD(v424) = v384;
      LODWORD(v424) = v384;
      v429 = v424 >> 22;
      HIDWORD(v424) = v425;
      LODWORD(v424) = v425;
      v430 = (v424 >> 20) + v429;
      HIDWORD(v424) = v428;
      LODWORD(v424) = v428;
      v431 = v574[14];
      v432 = (v424 >> 27) + v417;
      HIDWORD(v424) = v416;
      LODWORD(v424) = v416;
      v433 = v424 >> 22;
      HIDWORD(v424) = v568 + 2053994217 + v417 + (v433 & ~v432) + (v432 & v426);
      LODWORD(v424) = HIDWORD(v424);
      v434 = (v424 >> 24) + v427;
      HIDWORD(v424) = v426;
      LODWORD(v424) = v426;
      v435 = v424 >> 22;
      HIDWORD(v424) = v562 + 2053994217 + v427 + (v435 & ~v434) + (v434 & v432);
      LODWORD(v424) = HIDWORD(v424);
      v436 = (v424 >> 21) + v433;
      HIDWORD(v424) = v432;
      LODWORD(v424) = v432;
      v437 = v424 >> 22;
      HIDWORD(v424) = v396;
      LODWORD(v424) = v396;
      v438 = v424 >> 22;
      HIDWORD(v424) = v151 - 1454113458 + v429 + (v430 ^ (v421 | ~__ROR4__(v407, 22)));
      LODWORD(v424) = HIDWORD(v424);
      v439 = v562 - 1454113458 + v438;
      v440 = (v424 >> 27) + v438;
      HIDWORD(v424) = v569 + 2053994217 + v433 + (v437 & ~v436) + (v436 & v434);
      LODWORD(v424) = HIDWORD(v424);
      v441 = (v424 >> 18) + v435;
      HIDWORD(v424) = v434;
      LODWORD(v424) = v434;
      v442 = v424 >> 22;
      v443 = v24 + 2053994217 + v435 + (v442 & ~v441);
      v444 = v439 + (v440 ^ (v430 | ~__ROR4__(v421, 22)));
      HIDWORD(v424) = v443 + (v441 & v436);
      LODWORD(v424) = HIDWORD(v424);
      v445 = (v424 >> 18) + v437;
      v446 = v30 + 2053994217 + v437;
      HIDWORD(v424) = v407;
      LODWORD(v424) = v407;
      v447 = v424 >> 22;
      HIDWORD(v424) = v436;
      LODWORD(v424) = v436;
      v448 = v424 >> 22;
      v449 = v446 + (v448 & ~v445);
      HIDWORD(v424) = v444;
      LODWORD(v424) = v444;
      v450 = v569 - 1454113458 + v447;
      v451 = (v424 >> 20) + v447;
      HIDWORD(v424) = v449 + (v445 & v441);
      LODWORD(v424) = HIDWORD(v424);
      v452 = v424 >> 26;
      v453 = __PAIR64__(v441, __ROR4__(v430, 22));
      v454 = v450 + (v451 ^ (v440 | ~v453));
      v455 = v452 + v442;
      LODWORD(v453) = v441;
      v456 = v453 >> 22;
      HIDWORD(v453) = v421;
      LODWORD(v453) = v421;
      v457 = v453 >> 22;
      HIDWORD(v453) = v454;
      LODWORD(v453) = v454;
      v458 = (v453 >> 19) + v457;
      HIDWORD(v453) = v167 + 2053994217 + v442 + (v456 & ~v455) + (v455 & v445);
      LODWORD(v453) = HIDWORD(v453);
      v459 = (v453 >> 18) + v448;
      HIDWORD(v453) = v445;
      LODWORD(v453) = v445;
      v460 = v453 >> 22;
      HIDWORD(v453) = v565 + 2053994217 + v448 + (v460 & ~v459) + (v459 & v455);
      LODWORD(v453) = HIDWORD(v453);
      v461 = (v453 >> 26) + v456;
      HIDWORD(v453) = v455;
      LODWORD(v453) = v455;
      v462 = v453 >> 22;
      HIDWORD(v453) = v26 + 2053994217 + v456 + (v462 & ~v461) + (v461 & v459);
      LODWORD(v453) = HIDWORD(v453);
      v463 = (v453 >> 23) + v460;
      HIDWORD(v453) = v459;
      LODWORD(v453) = v459;
      v464 = v453 >> 22;
      HIDWORD(v453) = v430;
      LODWORD(v453) = v430;
      v465 = v453 >> 22;
      HIDWORD(v453) = v563 - 1454113458 + v457 + (v458 ^ (v451 | ~__ROR4__(v440, 22)));
      LODWORD(v453) = HIDWORD(v453);
      v466 = v24 - 1454113458 + v465;
      v467 = (v453 >> 18) + v465;
      HIDWORD(v453) = v11 + 2053994217 + v460 + (v464 & ~v463) + (v463 & v461);
      LODWORD(v453) = HIDWORD(v453);
      v468 = (v453 >> 20) + v462;
      HIDWORD(v453) = v461;
      LODWORD(v453) = v461;
      v469 = v453 >> 22;
      v470 = v466 + (v467 ^ (v458 | ~__ROR4__(v451, 22)));
      HIDWORD(v453) = v28 + 2053994217 + v462 + (v469 & ~v468) + (v468 & v463);
      LODWORD(v453) = HIDWORD(v453);
      v471 = (v453 >> 23) + v464;
      v472 = v566 + 2053994217 + v464;
      HIDWORD(v453) = v440;
      LODWORD(v453) = v440;
      v473 = v453 >> 22;
      HIDWORD(v453) = v463;
      LODWORD(v453) = v463;
      v474 = v453 >> 22;
      v475 = v472 + (v474 & ~v471);
      HIDWORD(v453) = v470;
      LODWORD(v453) = v470;
      v476 = v15 - 1454113458 + v473;
      v477 = (v453 >> 21) + v473;
      HIDWORD(v453) = v475 + (v471 & v468);
      LODWORD(v453) = HIDWORD(v453);
      v478 = v453 >> 20;
      v479 = __PAIR64__(v468, __ROR4__(v458, 22));
      v480 = v476 + (v477 ^ (v467 | ~v479));
      v481 = v478 + v469;
      LODWORD(v479) = v468;
      v482 = v479 >> 22;
      v483 = v16 + 2053994217 + v469 + (v482 & ~(v478 + v469)) + ((v478 + v469) & v471);
      HIDWORD(v479) = v451;
      LODWORD(v479) = v451;
      v484 = v479 >> 22;
      HIDWORD(v479) = v480;
      LODWORD(v479) = v480;
      v485 = (v479 >> 24) + v484;
      HIDWORD(v479) = v483;
      LODWORD(v479) = v483;
      v486 = (v479 >> 27) + v474;
      HIDWORD(v479) = v471;
      LODWORD(v479) = v471;
      v487 = v479 >> 22;
      HIDWORD(v479) = v51 + 2053994217 + v474 + (v487 & ~v486) + (v486 & v481);
      LODWORD(v479) = HIDWORD(v479);
      v488 = (v479 >> 17) + v482;
      HIDWORD(v479) = v481;
      LODWORD(v479) = v481;
      v489 = v479 >> 22;
      HIDWORD(v479) = v431 + 2053994217 + v482 + (v489 & ~v488) + (v488 & v486);
      LODWORD(v479) = HIDWORD(v479);
      v490 = (v479 >> 24) + v487;
      LODWORD(v479) = v487 + v26 + (v488 ^ __ROR4__(v486, 22) ^ v490);
      HIDWORD(v479) = v479;
      v491 = (v479 >> 24) + v489;
      v492 = __PAIR64__(v486, __ROR4__(v488, 22));
      v493 = v490 ^ v492 ^ v491;
      LODWORD(v492) = v486;
      v494 = v492 >> 22;
      HIDWORD(v492) = v489 + v30 + v493;
      LODWORD(v492) = HIDWORD(v492);
      v495 = (v492 >> 27) + v494;
      v496 = __PAIR64__(v488, __ROR4__(v490, 22));
      v497 = v494 + v567 + (v491 ^ v496 ^ v495);
      LODWORD(v496) = v488;
      v498 = v496 >> 22;
      HIDWORD(v496) = v497;
      LODWORD(v496) = v497;
      v499 = (v496 >> 20) + v498;
      v500 = __PAIR64__(v490, __ROR4__(v491, 22));
      v501 = v495 ^ v500 ^ v499;
      LODWORD(v500) = v490;
      v502 = v500 >> 22;
      HIDWORD(v500) = v498 + v568 + v501;
      LODWORD(v500) = HIDWORD(v500);
      v503 = (v500 >> 23) + v502;
      v504 = __PAIR64__(v491, __ROR4__(v495, 22));
      v505 = v502 + v562 + (v499 ^ v504 ^ v503);
      LODWORD(v504) = v491;
      v506 = v504 >> 22;
      HIDWORD(v504) = v505;
      LODWORD(v504) = v505;
      v507 = (v504 >> 20) + v506;
      v508 = __PAIR64__(v495, __ROR4__(v499, 22));
      v509 = v503 ^ v508 ^ v507;
      LODWORD(v508) = v495;
      v510 = v508 >> 22;
      HIDWORD(v508) = v506 + v565 + v509;
      LODWORD(v508) = HIDWORD(v508);
      v511 = (v508 >> 27) + v510;
      v512 = __PAIR64__(v499, __ROR4__(v503, 22));
      v513 = v510 + v563 + (v507 ^ v512 ^ v511);
      LODWORD(v512) = v499;
      v514 = v512 >> 22;
      HIDWORD(v512) = v513;
      LODWORD(v512) = v513;
      v515 = (v512 >> 18) + v514;
      v516 = __PAIR64__(v503, __ROR4__(v507, 22));
      v517 = v511 ^ v516 ^ v515;
      LODWORD(v516) = v503;
      v518 = v516 >> 22;
      HIDWORD(v516) = v514 + v16 + v517;
      LODWORD(v516) = HIDWORD(v516);
      v519 = (v516 >> 26) + v518;
      v520 = __PAIR64__(v507, __ROR4__(v511, 22));
      v521 = v518 + v225 + (v515 ^ v520 ^ v519);
      LODWORD(v520) = v507;
      v522 = v520 >> 22;
      HIDWORD(v520) = v521;
      LODWORD(v520) = v521;
      v523 = (v520 >> 24) + v522;
      v524 = __PAIR64__(v511, __ROR4__(v467, 22));
      v525 = v485 ^ (v477 | ~v524);
      LODWORD(v524) = v511;
      v526 = v524 >> 22;
      HIDWORD(v524) = v522 + v11 + (v519 ^ __ROR4__(v515, 22) ^ v523);
      LODWORD(v524) = HIDWORD(v524);
      v527 = v30 - 1454113458 + v484 + v525;
      v528 = (v524 >> 19) + v526;
      v529 = __PAIR64__(v515, __ROR4__(v519, 22));
      v530 = v523 ^ v529 ^ v528;
      LODWORD(v529) = v515;
      v531 = v529 >> 22;
      HIDWORD(v529) = v526 + v28 + v530;
      LODWORD(v529) = HIDWORD(v529);
      v532 = (v529 >> 26) + v531;
      v533 = __PAIR64__(v519, __ROR4__(v523, 22));
      v534 = v531 + v431 + (v528 ^ v533 ^ v532);
      LODWORD(v533) = v519;
      v535 = v533 >> 22;
      HIDWORD(v533) = v534;
      LODWORD(v533) = v534;
      result = ((v533 >> 27) + v535);
      v536 = __PAIR64__(v523, __ROR4__(v528, 22));
      v537 = v532 ^ v536 ^ result;
      LODWORD(v536) = v523;
      v538 = v536 >> 22;
      HIDWORD(v536) = v535 + v167 + v537;
      LODWORD(v536) = HIDWORD(v536);
      v539 = (v536 >> 17) + v538;
      v540 = __PAIR64__(v528, __ROR4__(v532, 22));
      v541 = v538 + v569 + (result ^ v540 ^ v539);
      LODWORD(v540) = v528;
      v542 = v540 >> 22;
      HIDWORD(v540) = v541;
      LODWORD(v540) = v541;
      v543 = (v540 >> 19) + v542;
      v544 = __PAIR64__(v458, __ROR4__(result, 22));
      v545 = v539 ^ v544 ^ v543;
      LODWORD(v544) = v458;
      v546 = v544 >> 22;
      v547 = v542 + v566 + v545;
      HIDWORD(v544) = v527;
      LODWORD(v544) = v527;
      v548 = v28 - 1454113458 + v546;
      v549 = (v544 >> 27) + v546;
      v551 = __PAIR64__(v532, __ROR4__(v477, 22));
      v550 = v485 | ~v551;
      LODWORD(v551) = v532;
      v552 = v551 >> 22;
      HIDWORD(v551) = v547;
      LODWORD(v551) = v547;
      v553 = v548 + (v549 ^ v550);
      v554 = (v551 >> 21) + v552;
      v555 = __PAIR64__(v543, __ROR4__(v539, 22));
      v556 = v552 + v24 + (v543 ^ v555 ^ v554);
      LODWORD(v555) = v543;
      v557 = v549 + v4 + (v555 >> 22);
      HIDWORD(v555) = v539;
      LODWORD(v555) = v539;
      v558 = v571 + (v555 >> 22);
      HIDWORD(v555) = v485;
      LODWORD(v555) = v485;
      v4 = (v555 >> 22) + v558;
      HIDWORD(v555) = result;
      LODWORD(v555) = result;
      v559 = v555 >> 22;
      HIDWORD(v555) = v477;
      LODWORD(v555) = v477;
      v5 = (v555 >> 22) + v570 + v559;
      HIDWORD(v555) = v467;
      LODWORD(v555) = v467;
      v560 = v555 >> 22;
      HIDWORD(v555) = v556;
      LODWORD(v555) = v556;
      v6 = v560 + v572 + v559 + (v555 >> 21);
      HIDWORD(v555) = v553;
      LODWORD(v555) = v553;
      v7 = v560 + v573 + v554 + (v555 >> 26);
      v561[2] = v5;
      v561[3] = v6;
      v561[4] = v7;
      *v561 = v557;
      v561[1] = v4;
      a3 = v574 + 16;
      v3 = v557;
      a2 = v564 - 1;
    }

    while (v564 != 1);
  }

  return result;
}

uint64_t ccder_blob_encode_eckey_internal(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, const void *a6)
{
  if (!a2)
  {
    return 0;
  }

  v10 = a1[1];
  if (a5 && a6)
  {
    v13 = 0;
    if (!ccder_blob_encode_body(a1, a5, a6) || !ccder_blob_encode_body(a1, 1uLL, &v13) || !ccder_blob_encode_tl(a1, 3uLL, v10 - a1[1]))
    {
      return 0;
    }

    result = ccder_blob_encode_tl(a1, 0xA000000000000001, v10 - a1[1]);
    if (!result)
    {
      return result;
    }
  }

  if (!a4 || (v12 = a1[1], result = ccder_blob_encode_oid(a1, a4), result) && (result = ccder_blob_encode_tl(a1, 0xA000000000000000, v12 - a1[1]), result))
  {
    result = ccder_blob_encode_raw_octet_string(a1, a2, a3);
    if (result)
    {
      result = ccder_blob_encode_uint64(a1, 1);
      if (result)
      {
        return ccder_blob_encode_tl(a1, 0x2000000000000010uLL, v10 - a1[1]);
      }
    }
  }

  return result;
}

uint64_t ccder_blob_encode_eckey(uint64_t *a1, uint64_t a2, uint64_t a3, const void *a4, size_t a5, const void *a6)
{
  v14 = timingsafe_enable_if_supported();
  v12 = ccder_blob_encode_eckey_internal(a1, a2, a3, a4, a5, a6);
  cc_disable_dit_with_sb(&v14);
  return v12;
}

uint64_t ccsrp_digest_ccn_ws(uint64_t a1, uint64_t *a2, unint64_t *a3, uint64_t a4, int a5)
{
  v10 = ccdh_gp_n(a2[1]);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = ccdh_gp_n(a2[1]);
  v14 = ccdh_gp_n(a2[1]);
  v15 = ccn_write_uint_padded_ct_internal(v13, a3, 8 * v14, v12);
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *a2;
  v18 = ccdh_gp_n(a2[1]);
  result = ccdigest_internal(v17, 8 * v18 - v16, &v12[v16], a4);
  *(a1 + 16) = v11;
  return result;
}

unint64_t *ccsrp_digest_update_ccn_ws(uint64_t a1, unint64_t **a2, void *a3, unint64_t *a4, int a5)
{
  v10 = ccdh_gp_n(a2[1]);
  v11 = *(a1 + 16);
  v12 = (*(a1 + 24))(a1, v10);
  v13 = ccdh_gp_n(a2[1]);
  v14 = ccdh_gp_n(a2[1]);
  v15 = ccn_write_uint_padded_ct_internal(v13, a4, 8 * v14, v12);
  if (a5)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  v17 = *a2;
  v18 = ccdh_gp_n(a2[1]);
  result = ccdigest_update_internal(v17, a3, 8 * v18 - v16, &v12[v16]);
  *(a1 + 16) = v11;
  return result;
}

uint64_t ccsrp_digest_ccn_ccn_ws(uint64_t a1, unint64_t **a2, void *a3, unint64_t *a4, unint64_t *a5, rsize_t a6, int a7)
{
  v20 = &v20;
  v22 = *MEMORY[0x29EDCA608];
  v14 = *a2;
  MEMORY[0x2A1C7C4A8](a1);
  v16 = &__s[-v15 - 8];
  ccdigest_init_internal(v14, &__s[-v15 - 8]);
  v17 = *(a1 + 16);
  if (a4)
  {
    ccsrp_digest_update_ccn_ws(a1, a2, v16, a4, a7);
  }

  ccsrp_digest_update_ccn_ws(a1, a2, v16, a5, a7);
  (v14[7])(v14, v16, __s);
  if (a6 - 1 >= *v14)
  {
    a6 = *v14;
  }

  v18 = ccdh_gp_n(a2[1]);
  ccn_read_uint_internal(v18, a3, a6, __s);
  cc_clear(*v14, __s);
  result = cc_clear(v14[1] + v14[2] + 12, v16);
  *(a1 + 16) = v17;
  return result;
}

uint64_t ccec_generate_key_deterministic(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (**a4)(void, uint64_t, uint64_t *), uint64_t a5, unint64_t **a6)
{
  v7 = a5;
  v18 = timingsafe_enable_if_supported();
  v12 = cc_malloc_clear(392 * *a1);
  v13 = 49 * *a1;
  v16[0] = v12;
  v16[1] = v13;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (v12)
  {
    key_deterministic_ws = ccec_generate_key_deterministic_ws(v16, a1, a2, a3, a4, v7, a6);
    v17(v16);
  }

  else
  {
    key_deterministic_ws = 4294967283;
  }

  cc_disable_dit_with_sb(&v18);
  return key_deterministic_ws;
}

uint64_t ccmode_ofb_crypt(char *a1, uint64_t a2, char *a3, _BYTE *a4)
{
  v5 = *(a1 + 1);
  if (a2)
  {
    v8 = a2;
    v9 = *a1;
    v10 = a1 + 16;
    v11 = (*(*a1 + 8) + 7) & 0xFFFFFFFFFFFFFFF8;
    do
    {
      if (v5 == *(v9 + 8))
      {
        (*(v9 + 24))(&v10[v11], 1, a1 + 2, a1 + 2);
        v5 = 0;
      }

      v12 = *a3++;
      v13 = v5 + 1;
      *a4++ = v10[v5++] ^ v12;
      --v8;
    }

    while (v8);
  }

  else
  {
    v13 = *(a1 + 1);
  }

  *(a1 + 1) = v13;
  return 0;
}

uint64_t ccder_blob_encode_implicit_uint64(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v4[1] = *MEMORY[0x29EDCA608];
  v4[0] = a3;
  return ccder_blob_encode_implicit_integer(a1, a2, 1uLL, v4);
}

uint64_t ccn_sqr_ws(uint64_t a1, unint64_t a2, unint64_t *a3, unint64_t *a4)
{
  result = ccn_mul1(a2 - 1, a3 + 1, a4 + 1, *a4);
  a3[a2] = result;
  v8 = *a4;
  v9 = (v8 * v8) >> 64;
  v10 = v8 * v8;
  v11 = a3[1];
  v12 = __CFADD__(v9, 2 * v11);
  v13 = v9 + 2 * v11;
  if (v12)
  {
    v14 = (v11 >> 63) + 1;
  }

  else
  {
    v14 = v11 >> 63;
  }

  *a3 = v10;
  a3[1] = v13;
  v15 = a2 - 2;
  if (a2 >= 2)
  {
    v16 = 0;
    v17 = &a3[a2 + 1];
    v18 = a3 + 3;
    do
    {
      result = ccn_addmul1(v15, v18, &a4[v16 + 2], a4[v16 + 1]);
      v17[v16] = result;
      v19 = a4[v16 + 1];
      v20 = (v19 * v19) >> 64;
      v21 = v19 * v19;
      v12 = __CFADD__(v21, v14);
      v22 = v21 + v14;
      if (v12)
      {
        ++v20;
      }

      v23 = *(v18 - 1);
      v24 = v23 >> 63;
      v12 = __CFADD__(v20, 2 * *v18);
      v25 = v20 + 2 * *v18;
      if (v12)
      {
        v26 = (*v18 >> 63) + 1;
      }

      else
      {
        v26 = *v18 >> 63;
      }

      v12 = __CFADD__(v22, 2 * v23);
      v27 = v22 + 2 * v23;
      v29 = v12;
      v12 = __CFADD__(v12, v25);
      v28 = v29 + v25;
      v12 |= __CFADD__(v24, v28);
      v28 += v24;
      if (v12)
      {
        v14 = v26 + 1;
      }

      else
      {
        v14 = v26;
      }

      *(v18 - 1) = v27;
      *v18 = v28;
      ++v16;
      --v15;
      v18 += 2;
    }

    while (v15 != -1);
  }

  return result;
}

BOOL cc_cmp_safe_internal(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!a1)
  {
    return 1;
  }

  v3 = 0;
  do
  {
    v3 |= *(a3 - 1 + a1) ^ *(a2 - 1 + a1);
    --a1;
  }

  while (a1);
  v6 = timingsafe_enable_if_supported();
  v4 = v3 != 0;
  cc_disable_dit_with_sb(&v6);
  return v4;
}

BOOL cc_cmp_safe(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = cc_cmp_safe_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

BOOL ccz_is_zero(uint64_t a1)
{
  v5 = timingsafe_enable_if_supported();
  v2 = ccz_n(a1);
  v3 = ccn_n(v2, *(a1 + 24)) == 0;
  cc_disable_dit_with_sb(&v5);
  return v3;
}

uint64_t cccast_ecb_decrypt(uint64_t a1, uint64_t a2, unsigned int *a3, _DWORD *a4)
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
      CC_CAST_decrypt(&v12, a1);
      v10 = bswap32(v13);
      *a4 = bswap32(v12);
      a4[1] = v10;
      a4 += 2;
    }

    while (v6);
  }

  return 0;
}

uint64_t cche_ciphertext_plaintext_add(uint64_t a1, uint64_t *a2, void *a3)
{
  v13 = timingsafe_enable_if_supported();
  v6 = cche_param_ctx_polynomial_degree(*a2);
  v7 = sizeof_struct_ccpolyzp_po2cyc();
  v11[0] = cc_malloc_clear((v7 + 8 * v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = cche_param_ctx_polynomial_degree(*a2);
  v11[1] = ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3) + v8;
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    v9 = cche_ciphertext_plaintext_add_ws(v11, a1, a2, a3);
    v12(v11);
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t cche_param_ctx_cipher_plain_ctx_const(uint64_t a1, unsigned int a2)
{
  v4 = *cche_param_ctx_plaintext_ctx(a1);
  v5 = cche_param_ctx_plaintext_ctx(a1);
  v6 = cche_param_ctx_polynomial_degree(a1);
  v7 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
  if (v6 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v6;
  }

  v9 = ((sizeof_struct_ccrns_mul_modulus() + 7) >> 3) * v8 + v6;
  v10 = v7 & 0xFFFFFFFFFFFFFFF8;
  v11 = (4 * v4 + 7) & 0x7FFFFFFF8;
  v12 = cche_param_ctx_chain_const(a1);
  v13 = cche_decrypt_ctx_nof_n((v12 + 8));
  v14 = v13;
  if (a2 < 2)
  {
    return &v5[4 * v9 + 12 + 2 * v13] + v10 + v11;
  }

  v15 = sizeof_struct_cche_cipher_plain_ctx();
  return &v5[4 * v9 + 16 + 4 * (((a2 - 2) * (a2 - 3)) >> 1) + 2 * v14] + (((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + 32) * (a2 - 2) + ((v15 + 7) & 0xFFFFFFFFFFFFFFF8) + v10 + v11;
}

uint64_t cche_ciphertext_coeff_plaintext_mul(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = *(a2 + 24);
  v7 = *v6;
  v8 = v6[1];
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v13[0] = cc_malloc_clear((v9 + 8 * (v8 * v7) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v6;
  LODWORD(v6) = v6[1];
  v13[1] = (v6 * v10) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_ciphertext_coeff_plaintext_mul_ws(v13, a1, a2, a3);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t cche_ciphertext_eval_dcrt_plaintext_mul(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = timingsafe_enable_if_supported();
  v5 = cche_ciphertext_eval_dcrt_plaintext_mul_internal(a1, a2);
  cc_disable_dit_with_sb(&v7);
  return v5;
}

uint64_t cche_ciphertext_eval_plaintext_mul(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v15 = timingsafe_enable_if_supported();
  v6 = *(a2 + 24);
  v7 = *v6;
  v8 = v6[1];
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v13[0] = cc_malloc_clear((v9 + 8 * (v8 * v7) + 7) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v6;
  LODWORD(v6) = v6[1];
  v13[1] = (v6 * v10) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3);
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_ciphertext_eval_plaintext_mul_ws(v13, a1, a2, a3);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

void *OUTLINED_FUNCTION_1_18@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = (v4 + v3 + 8 * v2);
  v7 = (a2 + 8 * (*(*v6 + 4) * **v6)) & 0xFFFFFFFFFFFFFFF8;

  return memmove(a1, v6, v7);
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1)
{

  return cche_dcrt_plaintext_encode_ws(v1, v3, v2, a1);
}

uint64_t ccder_blob_decode_eckey_internal(unsigned __int8 **a1, unint64_t *a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7, unint64_t *a8)
{
  v23 = 0;
  v24 = 0;
  v22 = 0uLL;
  result = ccder_blob_decode_sequence_tl(a1, &v22);
  if (result)
  {
    result = ccder_blob_decode_uint64(&v22, a2);
    if (result)
    {
      if (*a2 == 1)
      {
        result = ccder_blob_decode_range(&v22, 4, &v23);
        if (!result)
        {
          return result;
        }

        v16 = v23;
        v17 = v24;
        *a4 = v23;
        *a3 = v17 - v16;
        v21 = v22;
        if (ccder_blob_decode_range(&v21, 0xA000000000000000, &v23))
        {
          result = ccder_blob_decode_oid(&v23, a5);
          if (!result)
          {
            return result;
          }

          v22 = v21;
        }

        else
        {
          *a5 = 0;
        }

        v20 = v22;
        if (ccder_blob_decode_range(&v20, 0xA000000000000001, &v23))
        {
          result = ccder_blob_decode_bitstring(&v23, &v23, a8);
          if (result)
          {
            v18 = v23;
            v19 = v24;
            *a7 = v23;
            *a6 = v19 - v18;
            return 1;
          }
        }

        else
        {
          *a7 = 0;
          *a6 = 0;
          result = 1;
          *a8 = 0;
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t ccder_blob_decode_eckey(unsigned __int8 **a1, unint64_t *a2, void *a3, void *a4, uint64_t *a5, void *a6, void *a7, unint64_t *a8)
{
  v18 = timingsafe_enable_if_supported();
  v16 = ccder_blob_decode_eckey_internal(a1, a2, a3, a4, a5, a6, a7, a8);
  cc_disable_dit_with_sb(&v18);
  return v16;
}

uint64_t ccz_mul(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = timingsafe_enable_if_supported();
  v6 = ccz_sign(a2);
  v7 = ccz_sign(a3);
  ccz_set_sign(a1, v7 * v6);
  v8 = ccz_n(a2);
  v9 = ccz_n(a3);
  if (v8 <= v9)
  {
    v8 = v9;
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  ccz_init(*(a2 + 8), &v22);
  ccz_init(*(a2 + 8), &v20);
  ccz_set_capacity(&v22, v8);
  ccz_set_capacity(&v20, v8);
  v10 = *(&v23 + 1);
  v11 = ccz_n(a2);
  v12 = v11;
  if (v11)
  {
    ccn_set(v11, v10, *(a2 + 24));
  }

  ccn_zero(v8 - v12, &v10[8 * v12]);
  v13 = *(&v21 + 1);
  v14 = ccz_n(a3);
  v15 = v14;
  if (v14)
  {
    ccn_set(v14, v13, *(a3 + 24));
  }

  ccn_zero(v8 - v15, &v13[8 * v15]);
  ccz_set_capacity(a1, 2 * v8);
  ccn_mul(v8, a1[3], *(&v21 + 1), *(&v23 + 1));
  v16 = ccz_n(a2);
  v17 = ccz_n(a3);
  v18 = ccn_n(v17 + v16, a1[3]);
  ccz_set_n(a1, v18);
  ccz_free(&v22);
  ccz_free(&v20);
  return cc_disable_dit_with_sb(&v24);
}

uint64_t ccmode_siv_decrypt(void *a1, unint64_t a2, __int128 *a3, char *a4)
{
  v16 = *MEMORY[0x29EDCA608];
  if (*(*(*a1 + 56) + 8) != 16)
  {
    return 4294967226;
  }

  v5 = a1[2];
  if (v5 != 4 && v5 != 2)
  {
    return 4294967228;
  }

  v7 = a2 - 16;
  if (a2 < 0x10)
  {
    return 4294967229;
  }

  v9 = *(*a1 + 64);
  v15 = *a3;
  v13 = v15;
  BYTE8(v13) = BYTE8(v15) & 0x7F;
  BYTE12(v13) = BYTE12(v15) & 0x7F;
  v10 = ccctr_one_shot_internal(v9, a1[1] >> 1, (a1 + 7), &v13, v7, (a3 + 1), a4);
  if (v10 || (v10 = ccmode_siv_auth_finalize(a1, v7, a4, v14), v10))
  {
    v11 = v10;
  }

  else
  {
    if (!cc_cmp_safe_internal(16, v14, &v15) && a1[2] == 5)
    {
      return 0;
    }

    v11 = 4294967227;
  }

  cc_clear(v7, a4);
  return v11;
}

void ccrng_test_done(uint64_t a1)
{
  ccdrbg_done(a1 + 8, *(a1 + 64));
  free(*(a1 + 64));
  *(a1 + 64) = 0;
}

BOOL ccec_is_compactable_pub(uint64_t **a1)
{
  v2 = *a1;
  v3 = **a1;
  v9[0] = cc_malloc_clear(8 * v3);
  v9[1] = v3;
  v10 = 0;
  v11 = cc_ws_alloc;
  v12 = cc_ws_free;
  if (!v9[0])
  {
    return 0;
  }

  v4 = a1 + 2;
  v5 = *v2;
  if (ccn_n(*v2, &v4[2 * *v2]) == 1 && v4[2 * *v2] == 1)
  {
    v6 = cc_ws_alloc(v9, v5);
    cczp_negate(v2, v6, &v4[*v2]);
    v7 = ccn_cmp_public_value(v5, v6, &v4[*v2]) >= 0;
    v10 = 0;
    v12(v9);
  }

  else
  {
    v7 = 0;
    cc_ws_free(v9);
  }

  return v7;
}

uint64_t ccec_compact_export_pub(char *a1, uint64_t *a2)
{
  v3 = (a2 + 2);
  v4 = *a2;
  v6 = (cczp_bitlen(*a2) + 7) >> 3;
  return ccec_export_affine_point_public_value(v4, 4, v3, &v6, a1);
}

uint64_t ccprime_rabin_miller_init_ws(uint64_t a1, uint64_t *a2, unint64_t a3, void *a4)
{
  v8 = *(a1 + 16);
  inited = cczp_mm_init_ws(a1, a2, a3, a4);
  if (!inited)
  {
    v10 = &a2[2 * *a2];
    v11 = &v10[*a2 + 5];
    ccn_set(a3, v11, a4);
    *v11 &= ~1uLL;
    v12 = ccn_trailing_zeros(a3, v11);
    v10[4] = v12;
    ccn_shift_right_multi(a3, v10 + 5, v11, v12);
    cczp_to_ws(a1, a2);
  }

  *(a1 + 16) = v8;
  return inited;
}

void ccprime_rabin_miller_ws(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, unsigned int (**a5)(void, unint64_t, uint64_t))
{
  if (a4)
  {
    v10 = ccn_n(a2, a3);
    if (v10)
    {
      v11 = *a3;
      if (v10 != 1 || v11 != 1) && (v11)
      {
        v12 = 0;
        while (!ccn_divides1(a2, a3, ccn_prime_table[v12]))
        {
          if (++v12 == 255)
          {
            v13 = *(a1 + 16);
            v14 = (*(a1 + 24))(a1, 4 * a2 + 5);
            if (!ccprime_rabin_miller_init_ws(a1, v14, a2, a3))
            {
              v15 = (*(a1 + 24))(a1, a2);
              v16 = 0;
LABEL_14:
              v17 = cczp_n(v14);
              v24 = *(a1 + 16);
              v18 = (*(a1 + 24))(a1, 2 * v17);
              cc_clear(16 * v17, v18);
              v19 = cczp_bitlen(v14);
              v25 = v16;
              if (cczp_bitlen(v14) <= 0x40)
              {
                v20 = cczp_bitlen(v14) + (v17 << 6) - 1;
              }

              else
              {
                v20 = v19 + 64;
              }

              v21 = 100;
              while (1)
              {
                ccn_random_bits(v20, v18, a5);
                if (v22)
                {
                  break;
                }

                cczp_mod_ws(a1, v14);
                if (v17 && (ccn_n(v17, v15) > 1 || *v15 > 1))
                {
                  *(a1 + 16) = v24;
                  ccprime_rabin_miller_iteration_ws(a1, v14, v15, a5);
                  if (v23 == 1)
                  {
                    v16 = v25 + 1;
                    if (v25 + 1 != a4)
                    {
                      goto LABEL_14;
                    }
                  }

                  break;
                }

                if (!--v21)
                {
                  cc_try_abort("Failed to pick a random Miller-Rabin base");
                }
              }
            }

            *(a1 + 16) = v13;
            return;
          }
        }
      }
    }
  }
}

uint64_t ccprime_rabin_miller(unint64_t a1, unint64_t *a2, uint64_t a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v8 = sizeof_struct_ccrns_mul_modulus();
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = 19 * a1 + 2;
  v16[0] = cc_malloc_clear(8 * ((v8 + v9 - 1) / v9 + v10));
  v11 = sizeof_struct_ccrns_mul_modulus();
  v12 = sizeof_struct_ccpolyzp_po2cyc();
  v16[1] = (v11 + v12 - 1) / v12 + v10;
  v16[2] = 0;
  v16[3] = cc_ws_alloc;
  v17 = cc_ws_free;
  if (!v16[0])
  {
    return 4294967283;
  }

  ccprime_rabin_miller_ws(v16, a1, a2, a3, a4);
  v14 = v13;
  v17(v16);
  return v14;
}

unint64_t ccn_subn(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4, unint64_t *a5)
{
  v5 = a1 - a4;
  v6 = &a2[a4];
  v7 = &a3[a4];
  v8 = ccn_sub_ws(0, a4, a2, a3, a5);

  return ccn_sub1(v5, v6, v7, v8);
}

uint64_t ccmode_siv_hmac_nonce(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = *(a1 + 24);
  if (v3 != 4 && v3 != 2)
  {
    return 4294967228;
  }

  if (!a2)
  {
    return 4294967194;
  }

  ccmode_siv_hmac_auth_backend(a1, a2, a3, 78);
  result = 0;
  *(a1 + 24) = 6;
  return result;
}

double ccmode_factory_ccm_decrypt(uint64_t a1, void *a2)
{
  *a1 = ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  *&result = 96;
  *(a1 + 8) = xmmword_299CF66C0;
  *(a1 + 24) = ccmode_ccm_init;
  *(a1 + 32) = ccmode_ccm_set_iv;
  *(a1 + 40) = ccmode_ccm_cbcmac;
  *(a1 + 48) = ccmode_ccm_decrypt;
  *(a1 + 56) = ccmode_ccm_finalize;
  *(a1 + 64) = ccmode_ccm_reset;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  return result;
}

uint64_t ccmldsa_keygen_internal(int32x4_t *a1, __int128 *a2, __int128 *a3, __int128 *a4)
{
  v66[2] = *MEMORY[0x29EDCA608];
  v8 = a1->i32[2];
  v9 = sizeof_struct_ccpolyzp_po2cyc();
  v10 = a1->i32[1];
  v11 = (v9 - 1 + 4 * (v10 << 8)) / v9;
  v12 = v11 + (v9 - 1 + 4 * (v8 << 8)) / v9;
  v13 = (v9 + 1023) / v9;
  v14 = v12 + 2 * v11 + v13;
  v15 = v13 + v12 + 2 * (v12 + v11);
  if (v14 > v15)
  {
    v15 = v14;
  }

  v16 = cc_malloc_clear(8 * (v11 + 2 * v12 + v15 + (v9 - 1 + v10 + 640 * v8 + a1[1].i32[2] + (a1[1].i32[0] >> 2)) / v9));
  v53[0] = v16;
  v17 = a1->i32[2];
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v19 = a1->i32[1];
  v20 = (v18 - 1 + 4 * (v19 << 8)) / v18;
  v21 = v20 + (v18 - 1 + 4 * (v17 << 8)) / v18;
  v22 = (v18 + 1023) / v18;
  v23 = v21 + 2 * v20 + v22;
  v24 = v22 + v21 + 2 * (v21 + v20);
  if (v23 > v24)
  {
    v24 = v23;
  }

  v53[1] = v20 + 2 * v21 + v24 + (v18 - 1 + v19 + 640 * v17 + a1[1].i32[2] + (a1[1].i32[0] >> 2)) / v18;
  v54 = 0;
  v55 = cc_ws_alloc;
  v56 = cc_ws_free;
  if (!v16)
  {
    return 4294967283;
  }

  v25 = cc_ws_alloc(v53, (*&v17 & 0xFFFFFFLL) << 7);
  v26 = v55(v53, (a1->i32[2] & 0xFFFFFFLL) << 7);
  v27 = v55(v53, (a1->i32[1] & 0xFFFFFFLL) << 7);
  v52 = v55(v53, (a1->i32[1] & 0xFFFFFFLL) << 7);
  v28 = v55(v53, (a1->i32[1] & 0xFFFFFFLL) << 7);
  memset(v65 + 2, 0, 94);
  v29 = *a4;
  v30 = a4[1];
  v31 = a1->i32[2];
  LOBYTE(v65[0]) = a1->i32[1];
  __s = v29;
  v64 = v30;
  BYTE1(v65[0]) = v31;
  cckeccak_oneshot(34, &__s, 0x80uLL, &__s, 0x88uLL, 0x1Fu);
  v61 = __s;
  v62 = v64;
  v60[0] = v65[0];
  v60[1] = v65[1];
  v60[2] = v65[2];
  v60[3] = v65[3];
  v58 = v65[4];
  v59 = v65[5];
  cc_clear(0x80uLL, &__s);
  v32 = a1->u32[2];
  if (v32)
  {
    v33 = 0;
    v34 = 0;
    v35 = 0;
    do
    {
      v35 += ccmldsa_sample_rej_bounded_poly(a1, &v25[4 * (v33 << 8)], v34++, v60);
      v33 = v34;
      v32 = a1->u32[2];
    }

    while (v32 > v34);
  }

  else
  {
    v35 = 0;
  }

  v37 = a1->u32[1];
  if (v37)
  {
    v38 = 0;
    v39 = 0;
    do
    {
      v35 += ccmldsa_sample_rej_bounded_poly(a1, (v27 + 4 * (v38 << 8)), v39++ + a1->i16[4], v60);
      v38 = v39;
      v37 = a1->u32[1];
    }

    while (v37 > v39);
    v32 = a1->u32[2];
  }

  if (v35 < (v37 + v32) << 8)
  {
    v36 = 0xFFFFFFFFLL;
  }

  else
  {
    memcpy(v26, v25, v32 << 10);
    ccmldsa_polyvecl_ntt_forward_eta(a1, v26);
    v40 = ccmldsa_polyvec_matrix_expand_ntt_pointwise(a1, v28, &v61, v26);
    if (v40)
    {
      v36 = v40;
    }

    else
    {
      ccmldsa_polyveck_reduce(a1, v28);
      ccmldsa_polyveck_ntt_inverse(a1->i32, v28);
      ccmldsa_polyveck_add(a1, v28, v28, v27);
      ccmldsa_polyveck_caddq(a1, v28);
      ccmldsa_polyveck_power2round(a1, v28, v52, v28);
      v41 = v62;
      *a2 = v61;
      a2[1] = v41;
      ccmldsa_polyveck_bitpack_t1(a1, (a2 + 2), v28);
      cckeccak_oneshot((320 * a1->i32[1]) | 0x20u, a2, 0x40uLL, v57, 0x88uLL, 0x1Fu);
      v42 = v62;
      *a3 = v61;
      a3[1] = v42;
      v43 = v59;
      a3[2] = v58;
      a3[3] = v43;
      v44 = v57[1];
      a3[4] = v57[0];
      a3[5] = v44;
      v45 = v57[3];
      a3[6] = v57[2];
      a3[7] = v45;
      ccmldsa_polyvecl_bitpack_eta(a1, (a3 + 8), v25);
      v46 = a3 + (a1[1].i32[3] * a1->i32[2]) + 128;
      ccmldsa_polyveck_bitpack_eta(a1, v46, v27);
      ccmldsa_polyveck_bitpack_t0(a1, &v46[a1[1].i32[3] * a1->i32[1]], v52);
      cckeccak_oneshot((320 * a1->i32[1]) | 0x20u, a2, 0x60uLL, &__s, 0x88uLL, 0x1Fu);
      v47 = v54;
      v48 = v55(v53, ((a1[1].i32[2] + 640 * a1->i32[2] + a1->i32[1] + (a1[1].i32[0] >> 2)) + 7) >> 3);
      v49 = a1[1].i32[2] + 640 * a1->i32[2] + a1->i32[1] + (a1[1].i32[0] >> 2);
      v50 = ccmldsa_sign_prehashed_internal_ws(v53, a1, a3, v49, v48, &__s, &v65[2]);
      if (v50 || (v66[0] = 0, v66[1] = 0, v50 = ccmldsa_verify_prehashed_internal_ws(v53, a1, a2, v49, v48, &__s, v66), v50))
      {
        v36 = v50;
      }

      else if (cc_cmp_safe_internal(16, &CCMLDSA_FAULT_CANARY, v66))
      {
        v36 = 4294967294;
      }

      else
      {
        v36 = 0;
      }

      v54 = v47;
      cc_clear(0x60uLL, &__s);
    }
  }

  v54 = 0;
  cc_clear(0x20uLL, &v61);
  cc_clear(0x40uLL, v60);
  cc_clear(0x20uLL, &v58);
  cc_clear(0x40uLL, v57);
  v56(v53);
  return v36;
}

uint64_t ccmldsa_generate_key(int32x4_t **a1, uint64_t (**a2)(void, uint64_t, __int128 *))
{
  v13 = *MEMORY[0x29EDCA608];
  v11 = timingsafe_enable_if_supported();
  ccmldsa_public_ctx();
  v5 = v4;
  v6 = *a1;
  v7 = a1 + (*a1)[4].i64[1];
  v8 = (*a2)(a2, 32, __s);
  if (v8)
  {
    v9 = v8;
    goto LABEL_3;
  }

  v9 = ccmldsa_keygen_internal(v6, (v5 + 8), (v7 + 8), __s);
  if (v9)
  {
LABEL_3:
    cc_clear((320 * v6->i32[1]) | 0x20u, (v5 + 8));
    cc_clear(((v6->i32[1] + v6->i32[2]) * v6[1].i32[3] + 416 * v6->i32[1] + 128), v7 + 8);
  }

  cc_clear(0x20uLL, __s);
  cc_disable_dit_with_sb(&v11);
  return v9;
}

uint64_t OUTLINED_FUNCTION_0_37(uint64_t a1)
{
  v4 = (a1 + 8);
  v5 = (v2 + (*v2)[4].i64[1] + 8);
  v6 = *v2;

  return ccmldsa_keygen_internal(v6, v4, v5, v1);
}

uint64_t ccz_init(uint64_t a1, uint64_t a2)
{
  v5 = timingsafe_enable_if_supported();
  *(a2 + 24) = 0;
  *a2 = 0;
  *(a2 + 8) = a1;
  *(a2 + 16) = 0;
  return cc_disable_dit_with_sb(&v5);
}

size_t ccpad_cts2_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, uint64_t a5, char *a6)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
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

  if (v14 == 2 * v12)
  {
    (*(a1 + 24))(a2, a3, 2, a5, __src);
  }

  else
  {
    v16 = __src;
    cc_clear(2 * v12, __src);
    __memcpy_chk();
    (*(a1 + 24))(a2, a3, 2, __src, __src);
    v17 = v12;
    do
    {
      v18 = *v16;
      *v16 = v16[v12];
      v16[v12] = v18;
      ++v16;
      --v17;
    }

    while (v17);
  }

  memcpy(a6, __src, v14);
  cc_disable_dit_with_sb(&v20);
  return a4;
}

_BYTE *cc_atfork_child()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v7 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v7 = 1;
  }

  v10 = v0;
  v11 = v1;
  v9 = v7;
  ccrng_atfork_child();
  return cc_disable_dit(&v9);
}

void *ccaes_siv_decrypt_mode()
{
  v0 = ccaes_cbc_encrypt_mode();
  v1 = ccaes_ctr_crypt_mode();
  ccmode_factory_siv_decrypt(&siv_decrypt, v0, v1);
  return &siv_decrypt;
}

uint64_t ccrsa_sign_pkcs1v15_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, void *), uint64_t *a3, unsigned __int8 *a4, size_t a5, const void *a6, unint64_t *a7, char *a8)
{
  v16 = *a3;
  v17 = ccn_write_uint_size_public_value(*a3, a3 + 3);
  if (*a7 < v17)
  {
    return 4294967273;
  }

  v19 = v17;
  v21 = a2;
  v22 = *(a1 + 16);
  v20 = (*(a1 + 24))(a1, v16);
  *a7 = v19;
  result = ccrsa_emsa_pkcs1v15_encode_internal(v19, a8, a5, a6, a4);
  if (!result)
  {
    ccn_read_uint_internal(v16, v20, v19, a8);
    result = ccrsa_priv_crypt_blinded_ws(a1, v21, a3, v20, v20);
    if (!result)
    {
      ccn_write_uint_padded_ct_internal(v16, v20, v19, a8);
      result = 0;
    }
  }

  *(a1 + 16) = v22;
  return result;
}

uint64_t ccrsa_sign_pkcs1v15_blinded(uint64_t (**a1)(void, uint64_t, void *), unint64_t *a2, unsigned __int8 *a3, size_t a4, const void *a5, unint64_t *a6, char *a7)
{
  v14 = *a2;
  v15 = 9 * *a2;
  v16 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = cc_malloc_clear(8 * (v17 + 3 * v14));
  v25[0] = v18;
  v19 = *a2;
  v20 = 9 * *a2;
  v21 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v25[1] = v22 + 3 * v19;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (!v18)
  {
    return 4294967283;
  }

  v23 = ccrsa_sign_pkcs1v15_blinded_ws(v25, a1, a2, a3, a4, a5, a6, a7);
  v26(v25);
  return v23;
}

uint64_t ccrsa_sign_pkcs1v15(unint64_t *a1, unsigned __int8 *a2, size_t a3, const void *a4, unint64_t *a5, char *a6)
{
  v15 = timingsafe_enable_if_supported();
  v12 = ccrng(0);
  if (v12)
  {
    v13 = ccrsa_sign_pkcs1v15_blinded(v12, a1, a2, a3, a4, a5, a6);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t ccrsa_sign_pkcs1v15_msg_blinded_ws(uint64_t a1, uint64_t (**a2)(void, uint64_t, void *), uint64_t *a3, size_t *a4, size_t a5, char *a6, unint64_t *a7, char *a8)
{
  v16 = *MEMORY[0x29EDCA608];
  ccdigest_internal(a4, a5, a6, v15);
  return ccrsa_sign_pkcs1v15_blinded_ws(a1, a2, a3, a4[4], *a4, v15, a7, a8);
}

uint64_t ccrsa_sign_pkcs1v15_msg_blinded(uint64_t (**a1)(void, uint64_t, void *), unint64_t *a2, size_t *a3, size_t a4, char *a5, unint64_t *a6, char *a7)
{
  v28 = *MEMORY[0x29EDCA608];
  v14 = *a2;
  v15 = 9 * *a2;
  v16 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v15 <= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = v15;
  }

  v18 = cc_malloc_clear(8 * (v17 + 3 * v14));
  v25[0] = v18;
  v19 = *a2;
  v20 = 9 * *a2;
  v21 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v20 <= v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = v20;
  }

  v25[1] = v22 + 3 * v19;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (!v18)
  {
    return 4294967283;
  }

  ccdigest_internal(a3, a4, a5, v27);
  v23 = ccrsa_sign_pkcs1v15_blinded_ws(v25, a1, a2, a3[4], *a3, v27, a6, a7);
  v26(v25);
  return v23;
}

uint64_t ccrsa_sign_pkcs1v15_msg(unint64_t *a1, size_t *a2, size_t a3, char *a4, unint64_t *a5, char *a6)
{
  v17 = *MEMORY[0x29EDCA608];
  v15 = timingsafe_enable_if_supported();
  ccdigest_internal(a2, a3, a4, v16);
  v12 = ccrng(0);
  if (v12)
  {
    v13 = ccrsa_sign_pkcs1v15_blinded(v12, a1, a2[4], *a2, v16, a5, a6);
  }

  else
  {
    v13 = 0xFFFFFFFFLL;
  }

  cc_disable_dit_with_sb(&v15);
  return v13;
}

uint64_t ccsha3_final(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t *))
{
  v15[1] = *MEMORY[0x29EDCA608];
  v8 = a1[1];
  v7 = a1[2];
  v9 = a2 + v8 + 8;
  if (v7 <= *(v9 + v7))
  {
    *(v9 + v7) = 0;
  }

  MEMORY[0x2A1C7C4A8](a1);
  v11 = (v15 - v10);
  memcpy(v15 - v10, v13, v12 + 12);
  cckeccak_absorb_and_pad(v11 + 1, v7, *(v11 + v8 + v7 + 8), (v11 + v8 + 8), 6u);
  cckeccak_squeeze(v11 + 1, a1[2], *a1, a3, a4);
  return cc_clear(a1[1] + a1[2] + 12, v11);
}

uint64_t ccrsa_check_delta_100bits_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, uint64_t *a5, unint64_t *a6)
{
  v12 = *(a1 + 16);
  v13 = (*(a1 + 24))();
  v14 = (*(a1 + 24))(a1, a2);
  v15 = ccn_bitlen_internal(a2, a3);
  ccn_zero(a2, v14);
  ccn_set_bit(v14, v15 - 100, 1);
  ccn_abs(a2, v13, a3, a4);
  LODWORD(a4) = ccn_cmp_internal(a2, v13, v14);
  ccn_abs(a2, v13, a5, a6);
  v16 = ccn_cmp_internal(a2, v13, v14);
  *(a1 + 16) = v12;
  if (v16 + a4 == 2)
  {
    return 0;
  }

  else
  {
    return 4294967257;
  }
}

uint64_t ccrsa_crt_make_fips186_key_ws(uint64_t a1, unint64_t a2, unint64_t *a3, uint64_t a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v13 = *a3;
  v14 = (*a3 >> 1) + 1;
  ccrsa_ctx_public();
  v16 = v15;
  v17 = ccn_bitlen_internal(v14, a6);
  if (ccn_bitlen_internal(v14, a7) + v17 > v13 << 6)
  {
    return 4294967273;
  }

  v28 = *(a1 + 16);
  v19 = &v16[2 * *v16];
  v20 = v19 + 4;
  if (a4)
  {
    ccn_set(a4, v19 + 4, a5);
  }

  ccn_zero(v13 - a4, &v20[a4]);
  v21 = ccn_cmp_internal(v14, a6, a7);
  if (v21 >= 0)
  {
    v22 = a7;
  }

  else
  {
    v22 = a6;
  }

  if (v21 >= 0)
  {
    a7 = a6;
  }

  *ccrsa_ctx_private_zp(a3) = v14;
  v23 = ccrsa_ctx_private_zp(a3);
  v23[2 * *ccrsa_ctx_private_zp(a3) + 4] = v14;
  v24 = ccrsa_ctx_private_zp(a3);
  v25 = ccrsa_ctx_private_zp(a3);
  v26 = &v25[2 * *ccrsa_ctx_private_zp(a3)];
  ccn_set(v14, v24 + 3, a7);
  ccn_set(v14, v26 + 7, v22);
  result = cczp_init_ws(a1, v24);
  if (result || (result = cczp_init_ws(a1, v26 + 4), result))
  {
    v27 = v28;
  }

  else
  {
    result = ccrsa_crt_makekey_ws(a1, a3);
    v27 = v28;
    if (!result)
    {
      if (cczp_bitlen(v16) + 1 >= a2)
      {
        result = 0;
      }

      else
      {
        result = 4294967273;
      }
    }
  }

  *(a1 + 16) = v27;
  return result;
}

uint64_t ccrsa_generate_fips186_key_trace(unint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, uint64_t (**a5)(void, unint64_t, void *), unsigned int (**a6)(void, unint64_t, uint64_t), void *a7)
{
  v9 = a1 + 63;
  v10 = (a1 + 63) >> 6;
  v11 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(v10);
  if (9 * v10 <= v11)
  {
    v12 = v11;
  }

  else
  {
    v12 = 9 * v10;
  }

  v13 = 8 * v10 - (v9 >> 6);
  v14 = v12 + v13;
  v15 = sizeof_struct_ccrns_mul_modulus();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = (v10 & 0x3FFFFFFFFFFFFFELL) + (v9 >> 6) + 25 * v10 + 4;
  v18 = (v15 + v16 - 1) / v16 + v17;
  if (v14 > v18)
  {
    v18 = v14;
  }

  v19 = v9 >> 7;
  v20 = 3 * (v9 >> 7) + 3;
  v21 = cc_malloc_clear(8 * (v18 + v20));
  v67[0] = v21;
  v58 = v10;
  v22 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(v10);
  if (9 * v10 <= v22)
  {
    v23 = v22;
  }

  else
  {
    v23 = 9 * v10;
  }

  v24 = v23 + v13;
  v25 = sizeof_struct_ccrns_mul_modulus();
  v26 = sizeof_struct_ccpolyzp_po2cyc();
  v27 = (v25 + v26 - 1) / v26 + v17;
  if (v24 > v27)
  {
    v27 = v24;
  }

  v67[1] = v27 + v20;
  v68 = 0;
  v69 = cc_ws_alloc;
  v70 = cc_ws_free;
  if (!v21)
  {
    return 4294967283;
  }

  if (a1 <= 0x2000)
  {
    v29 = a1;
    *a2 = v10;
    ccrsa_ctx_public();
    v31 = v30;
    v32 = v30 + 3;
    if (ccn_read_uint_internal(v10, &v30[2 * *v30 + 4], a3, a4))
    {
      v28 = 4294967268;
      cc_ws_free(v67);
    }

    else
    {
      v33 = v19 + 1;
      v66 = cc_ws_alloc(v67, v19 + 1);
      v34 = v69(v67, v19 + 1);
      v35 = *a2;
      v53 = *v31;
      v36 = a1 + 1;
      v37 = v69(v67, v33);
      v62 = v33;
      cc_clear(8 * v33, v37);
      v56 = v37;
      v57 = (v29 + 1) >> 1;
      ccn_set_bit(v37, v57, 1);
      if (v29 >= 0x200)
      {
        v54 = &a2[3 * v35];
        v55 = v29;
        v38 = 171;
        if (v29 > 0xFFE)
        {
          v38 = 201;
        }

        v39 = 101;
        if (v29 > 0x400)
        {
          v39 = 141;
        }

        v40 = (a3 + 7) >> 3;
        if (v29 <= 0xBFE)
        {
          v41 = v39;
        }

        else
        {
          v41 = v38;
        }

        v42 = &v32[2 * v53];
        v61 = v29 - (v36 >> 1);
        v43 = v62;
LABEL_27:
        v44 = ccn_bitlen_internal(v40, v42 + 1);
        v45 = v68;
        v46 = v69(v67, v43);
        v47 = v69(v67, v43);
        v28 = 4294967268;
        if ((v42[1] & 1) != 0 && v44 - 256 >= 0xFFFFFFFFFFFFFF11)
        {
          v48 = v47;
          if (a7)
          {
            cc_clear(0x1830uLL, a7);
            a7[389] = 0;
            a7[2] = 0;
          }

          probable_prime_ws = ccrsa_generate_probable_prime_ws(v67, v57, v66, v46, v41, v41, v40, v42 + 1, a5, a6, a7);
          if (!probable_prime_ws)
          {
            v50 = 0;
            while (1)
            {
              if (a7)
              {
                a7[389] = 1;
                a7[2] = 1;
              }

              probable_prime_ws = ccrsa_generate_probable_prime_ws(v67, v61, v34, v48, v41, v41, v40, v42 + 1, a5, a6, a7);
              if (probable_prime_ws)
              {
                break;
              }

              v51 = ccrsa_check_delta_100bits_ws(v67, v62, v66, v34, v46, v48);
              v28 = v51;
              if (v50 <= 0x62)
              {
                ++v50;
                if (v51 == -39)
                {
                  continue;
                }
              }

              v68 = v45;
              if (v51)
              {
                goto LABEL_44;
              }

              probable_prime_ws = ccrsa_crt_make_fips186_key_ws(v67, v55, a2, v40, v42 + 1, v66, v34);
              if (probable_prime_ws)
              {
                break;
              }

              v43 = v62;
              if (ccn_cmpn_internal(v58, v54 + 4, v62, v56) < 1)
              {
                goto LABEL_27;
              }

              if (ccrsa_pairwise_consistency_check_ws(v67, a2, a5))
              {
                v28 = 4294967259;
              }

              else
              {
                v28 = 0;
              }

              goto LABEL_44;
            }
          }

          v28 = probable_prime_ws;
        }
      }

      else
      {
        v28 = 4294967268;
      }

LABEL_44:
      v68 = 0;
      v70(v67);
    }
  }

  else
  {
    v28 = 4294967273;
    cc_ws_free(v67);
  }

  return v28;
}

uint64_t ccrsa_generate_fips186_key(unint64_t a1, unint64_t *a2, unint64_t a3, unsigned __int8 *a4, uint64_t (**a5)(void, unint64_t, void *), unsigned int (**a6)(void, unint64_t, uint64_t))
{
  v14 = timingsafe_enable_if_supported();
  fips186_key_trace = ccrsa_generate_fips186_key_trace(a1, a2, a3, a4, a5, a6, 0);
  cc_try_abort_if (fips186_key_trace == -37, "ccrsa_generate_fips186_key consistency");
  cc_disable_dit_with_sb(&v14);
  return fips186_key_trace;
}

uint64_t ccrsa_find_next_prime_ws(uint64_t a1, unint64_t a2, unint64_t *a3, unsigned int (**a4)(void, unint64_t, uint64_t))
{
  v7 = (a2 + 63) >> 6;
  v8 = ccrsa_num_mr_iterations_aux(a2);
  v9 = ccn_sub1(v7, a3, a3, 2uLL);
  if (v9)
  {
    return 4294967262;
  }

  *a3 |= 1uLL;
  v11 = *(a1 + 16);
  while (!v9)
  {
    if (!ccn_add1_ws(a1, v7, a3, a3, 2))
    {
      ccprime_rabin_miller_ws(a1, v7, a3, v8, a4);
      if (v9 < 2)
      {
        continue;
      }
    }

    result = 4294967262;
    goto LABEL_9;
  }

  result = 0;
LABEL_9:
  *(a1 + 16) = v11;
  return result;
}

BOOL OUTLINED_FUNCTION_2_12()
{

  return ccn_add1_ws(v0, v2, v1, v1, 1);
}

uint64_t ccrsa_sign_pss_blinded(uint64_t (**a1)(void, uint64_t, void *), unint64_t *a2, uint64_t *a3, uint64_t a4, size_t a5, uint64_t (**a6)(void, unint64_t, char *), size_t a7, char *a8, unint64_t *a9, char *a10)
{
  v50 = *MEMORY[0x29EDCA608];
  v17 = *a2;
  v18 = 9 * *a2;
  v19 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v18 <= v19)
  {
    v20 = v19;
  }

  else
  {
    v20 = v18;
  }

  v21 = cc_malloc_clear(8 * (v20 + 3 * v17));
  v44[0] = v21;
  v22 = *a2;
  v23 = 9 * *a2;
  v24 = CCRSA_CRT_POWER_BLINDED_WORKSPACE_N(*a2);
  if (v23 <= v24)
  {
    v25 = v24;
  }

  else
  {
    v25 = v23;
  }

  v44[1] = v25 + 3 * v22;
  v45 = 0;
  v46 = cc_ws_alloc;
  v47 = cc_ws_free;
  if (!v21)
  {
    return 4294967283;
  }

  v26 = cczp_bitlen(a2);
  if (v26 == 1024)
  {
    v27 = *a3;
    v29 = a7 - 2 < a5 && v27 == 512;
    v30 = 4294967273;
    if (a5 > a7 || v29)
    {
      goto LABEL_24;
    }
  }

  else
  {
    if (a5 > a7)
    {
LABEL_23:
      v30 = 4294967273;
LABEL_24:
      cc_ws_free(v44);
      return v30;
    }

    v27 = *a3;
  }

  if (v27 != a7)
  {
    goto LABEL_23;
  }

  v31 = (v26 + 7) >> 3;
  if (*a9 < v31)
  {
    goto LABEL_23;
  }

  v42 = v26 - 1;
  v40 = (v26 + 6) >> 3;
  *a9 = v31;
  if (a5)
  {
    v33 = *a6;
    if (a5 > 0xB)
    {
      v34 = v33(a6, a5, v48);
    }

    else
    {
      v34 = v33(a6, 12, __s);
      __memcpy_chk();
      cc_clear(a5, __s);
    }

    v35 = v46;
    v41 = v45;
  }

  else
  {
    v35 = cc_ws_alloc;
    v41 = 0;
    v34 = 0;
  }

  v36 = *a2;
  v37 = v35(v44, *a2);
  v37[v36 - 1] = 0;
  *v37 = 0;
  v38 = ccrsa_emsa_pss_encode_internal(a3, a4, a5, v48, a7, a8, v42, v37 + 8 * v36 - v40);
  ccn_swap(v36, v37);
  v39 = ccrsa_priv_crypt_blinded_ws(v44, a1, a2, v37, v37) | v38;
  if (v39 | v34)
  {
    cc_clear(8 * v36, v37);
    if (v34)
    {
      v30 = v34;
    }

    else
    {
      v30 = v39;
    }
  }

  else
  {
    ccn_write_uint_padded_ct_internal(v36, v37, *a9, a10);
    v30 = 0;
  }

  v45 = v41;
  v47(v44);
  return v30;
}

uint64_t fipspost_post_hkdf(char a1)
{
  v44 = *MEMORY[0x29EDCA608];
  v2 = ccsha1_di();
  v3 = ccsha256_di();
  v4 = ccsha512_di();
  v5 = ccsha3_224_di();
  v6 = ccsha3_256_di();
  v7 = ccsha3_384_di();
  v8 = ccsha3_512_di();
  memset(v43, 0, sizeof(v43));
  v42 = 0uLL;
  v41 = 0;
  memset(v40, 0, sizeof(v40));
  if ((a1 & 0x10) != 0)
  {
    LOBYTE(v43[0]) = 1;
  }

  v9 = 0;
  v10 = 0;
  v13[0] = v2;
  v13[1] = "sha1";
  v14 = xmmword_299CFCC18;
  v15 = unk_299CFCC28;
  v16 = v3;
  v17 = "sha256";
  v18 = xmmword_299CFCC38;
  v19 = unk_299CFCC48;
  v20 = v4;
  v21 = "sha512";
  v22 = xmmword_299CFCC58;
  v23 = unk_299CFCC68;
  v24 = v5;
  v25 = "sha3_224";
  v26 = xmmword_299CFCC78;
  v27 = unk_299CFCC88;
  v28 = v6;
  v29 = "sha3_256";
  v30 = xmmword_299CFCC98;
  v31 = unk_299CFCCA8;
  v32 = v7;
  v33 = "sha3_384";
  v34 = xmmword_299CFCCB8;
  v35 = unk_299CFCCC8;
  v36 = v8;
  v37 = "sha3_512";
  v38 = xmmword_299CFCCD8;
  v39 = unk_299CFCCE8;
  do
  {
    cchkdf(v13[v9], 32, v43, 16, &v42, 8, &v41, 32, v40);
    if (cc_cmp_safe(32, v40, &v13[v9 + 2]))
    {
      v11 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: HKDF with digest %s\n", v11, "fipspost_post_hkdf", 86, v13[v9 + 1]);
      v10 = 4294967221;
    }

    v9 += 6;
  }

  while (v9 != 42);
  return v10;
}

unint64_t ccn_cond_swap(uint64_t a1, char a2, unint64_t *a3, unint64_t *a4)
{
  result = ccn_mux_next_mask();
  for (i = __ROR8__(0x5555555555555555, a2 | (2 * result)); a1; --a1)
  {
    v10 = *a4 ^ *a3;
    *a3 ^= result;
    v11 = *a4 ^ result;
    *a4 = v11;
    v12 = *a3 ^ v10 & 0x5555555555555555;
    v13 = v11 ^ v10 & 0x5555555555555555;
    v14 = v10 & i;
    *a3++ = v12 ^ v14 ^ result;
    *a4++ = v13 ^ v14 ^ result;
  }

  return result;
}

uint64_t cccmac_sl_test_xor(uint64_t result, char *a2)
{
  LOBYTE(v2) = 0;
  v3 = *a2;
  for (i = 15; i != -1; --i)
  {
    v5 = a2[i];
    *(result + i) = v2 | (2 * v5);
    v2 = v5 >> 7;
  }

  *(result + 15) ^= (v3 >> 7) & 0x87;
  return result;
}

uint64_t cccmac_generate_subkeys(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5)
{
  v17[2] = *MEMORY[0x29EDCA608];
  v17[0] = 0;
  v17[1] = 0;
  __s[0] = 0;
  __s[1] = 0;
  result = cccbc_one_shot_explicit_internal(a1, a2, 16, *(a1 + 8), 1, a3, v17, __s, __s);
  if (!result)
  {
    LOBYTE(v8) = 0;
    v9 = SLOBYTE(__s[0]);
    for (i = 15; i != -1; --i)
    {
      v11 = *(__s + i);
      a4[i] = v8 | (2 * v11);
      v8 = v11 >> 7;
    }

    LOBYTE(v12) = 0;
    a4[15] ^= (v9 >> 7) & 0x87;
    v13 = *a4;
    for (j = 15; j != -1; --j)
    {
      v15 = a4[j];
      *(a5 + j) = v12 | (2 * v15);
      v12 = v15 >> 7;
    }

    *(a5 + 15) ^= (v13 >> 7) & 0x87;
    cc_clear(0x10uLL, __s);
    return 0;
  }

  return result;
}

uint64_t ccec_affine_point_from_x_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4)
{
  v7 = *a2;
  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v7);
  if ((ccn_cmp_internal(*a2, a4, a2 + 3) & 0x80000000) != 0)
  {
    cczp_to_ws(a1, a2);
    cczp_sqr_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_add_ws(a1, a2);
    cczp_sub_ws(a1, a2);
    cczp_add_ws(a1, a2);
    result = cczp_sqrt_ws(a1, a2);
    if (!result)
    {
      cczp_from_ws(a1, a2);
      cczp_from_ws(a1, a2);
      result = 0;
    }
  }

  else
  {
    result = 4294967289;
  }

  *(a1 + 16) = v8;
  return result;
}

const char *fips_allowed_mode_(const char *__s1, uint64_t a2)
{
  if (__s1)
  {
    v3 = __s1;
    v4 = 0;
    v5 = 1;
    v6 = &qword_29F287B70;
    do
    {
      if (!strcmp(v3, *(v6 - 1)) && *v6 == a2)
      {
        break;
      }

      v5 = v4 < 0x45;
      v6 += 2;
      ++v4;
    }

    while (v4 != 70);
    return v5;
  }

  return __s1;
}

const char *fips_allowed(const char *__s1, const char *a2)
{
  if (__s1)
  {
    v3 = __s1;
    v4 = 0;
    v5 = 1;
    for (i = &unk_29F2881B8; ; i += 3)
    {
      v7 = *(i - 4);
      v8 = *i;
      if (!strcmp(v3, *(i - 1)))
      {
        if (!(a2 | v8))
        {
          return v5;
        }

        if (a2)
        {
          if (v7 == 1)
          {
            v9 = strtoul(a2, 0, 10);
            if (v9 == v8 || v9 >= SHIDWORD(v8))
            {
              return v5;
            }
          }

          else if (!v7 && v8 && !strcmp(a2, v8))
          {
            return v5;
          }
        }
      }

      v5 = v4 < 0x84;
      if (++v4 == 133)
      {
        return v5;
      }
    }
  }

  return __s1;
}

BOOL fips_allowed_drbg_(char *__s1, const char *a2, const char *a3)
{
  result = 0;
  if (__s1 && a2 && a3)
  {
    v7 = 0;
    v8 = 1;
    v9 = off_29F287FD8;
    do
    {
      v10 = *v9;
      if (!strcmp(__s1, *(v9 - 2)) && !strcmp(a2, *(v9 - 1)) && !strcmp(a3, v10))
      {
        break;
      }

      v8 = v7 < 0x13;
      v9 += 3;
      ++v7;
    }

    while (v7 != 20);
    return v8;
  }

  return result;
}

uint64_t ccn_divmod_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, char *a7, unint64_t *a8)
{
  v56[2] = *MEMORY[0x29EDCA608];
  v12 = ccn_n(a6, a8);
  v13 = a2 - v12;
  v43 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, v12 + 1);
  v15 = (*(a1 + 24))(a1, v12 + 1);
  v50 = a1;
  v16 = (*(a1 + 24))(a1, v12 + 1);
  v14[v12] = 0;
  v49 = v12 - 1;
  v17 = __clz(a8[v12 - 1]);
  ccn_shift_left(v12, v14, a8, v17);
  v51 = v17;
  if (v12)
  {
    ccn_set(v12, v15, (a3 + 8 * v13));
  }

  v45 = -(v17 != 0);
  v46 = -v17 & 0x3F;
  ccn_zero(1, &v15[v12]);
  ccn_shift_left(v12 + 1, v15, v15, v17);
  v18 = 0;
  v19 = 0;
  v20 = v14[v49];
  v21 = v20 != 0x8000000000000000;
  v22 = -v20;
  v24 = -__PAIR128__(v23, v20) >> 64;
  v25 = 65;
  do
  {
    v26 = ((((__PAIR128__(v24, v22) - __PAIR128__(v20, v19)) >> 64) ^ v24 | v20 ^ v24) ^ v24) >> 63;
    v27 = v26-- != 0;
    v24 = (__PAIR128__(v24, v22) - __PAIR128__(v27 ? 0 : v20, v26 & v19)) >> 64;
    v22 -= v26 & v19;
    v18 = v26 & 1 | (2 * v18);
    *(&v28 + 1) = v20;
    *&v28 = v19;
    v19 = v28 >> 1;
    v20 >>= 1;
    --v25;
  }

  while (v25);
  v48 = v21 ? v18 + 2 : -1;
  v29 = (a3 - 8 * v12 + 8 * a2);
  v30 = a2 - v12;
  do
  {
    v31 = v13;
    v32 = *v29 << v51;
    *v15 = v32;
    if (v30)
    {
      *v15 = ((*(v29 - 1) & v45) >> v46) | v32;
    }

    v33 = v15[v12];
    v34 = v15[v49];
    v54 = v14[v49];
    v35 = v33 + ((v33 * v48) >> 64) - ((((v34 - v54) ^ v34 | v54 ^ v34) ^ v34) >> 63) + 2;
    v53 = v35 | -((((((v33 * v48) >> 64) - ((((v34 - v54) ^ v34 | v54 ^ v34) ^ v34) >> 63) + 2) ^ v35 | v35 ^ v33) ^ v35) >> 63);
    ccn_mul(1uLL, v56, &v53, &v54);
    v55[0] = v34;
    v55[1] = v33;
    v36 = ccn_sub_ws(0, 2, v56, v55, v56);
    v53 -= 2 * v36;
    v37 = ccn_add1_ws(0, 2, v56, v56, v54);
    v38 = v53 + v37;
    v16[v12] = ccn_mul1(v12, v16, v14, v53 + v37);
    v39 = ccn_sub_ws(v50, v12 + 1, v15, v15, v16);
    v40 = v39 - ccn_cond_add(v12 + 1, v39, v15, v15, v14);
    result = ccn_cond_add(v12 + 1, v40, v15, v15, v14);
    if (a5 && v30 < a4)
    {
      *(a5 + 8 * v30) = v38 - (v39 + v40);
    }

    if (v30)
    {
      result = memmove(v15 + 1, v15, 8 * v12);
    }

    --v30;
    --v29;
    v13 = v31;
  }

  while (v30 <= v31);
  if (a5 && a4 > v31 + 1)
  {
    result = cc_clear(8 * (a4 - (v31 + 1)), (a5 + 8 * (v31 + 1)));
  }

  if (a7)
  {
    ccn_shift_right(v12, v15, v15, v51);
    if (v12)
    {
      ccn_set(v12, a7, v15);
    }

    result = ccn_zero(a6 - v12, &a7[8 * v12]);
  }

  *(v50 + 16) = v43;
  return result;
}

unint64_t ccckg2_sizeof_ctx(uint64_t a1)
{
  v2 = (*(a1 + 8))();
  v3 = (*(a1 + 16))();
  v4 = *v2;
  v5 = (((cczp_bitlen(v2) + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL) + 16 * v4;
  v6 = (*v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  if ((v5 | 1) > v6 + 16 * *v2)
  {
    v7 = v5 + 1;
  }

  else
  {
    v7 = v6 + 16 * *v2;
  }

  return v7 + 40;
}

unint64_t ccckg2_sizeof_opening(uint64_t a1)
{
  v1 = (*(a1 + 8))();
  v2 = cczp_bitlen(&v1[5 * *v1 + 4]) + 7;
  return (((cczp_bitlen(v1) + 7) >> 2) | 1) + (v2 >> 3);
}

uint64_t ccckg2_init(_DWORD *a1, uint64_t a2)
{
  if (*a2 != 2)
  {
    return 4294967289;
  }

  v4 = ccckg2_sizeof_ctx(a2);
  v5 = cc_clear(v4, a1);
  *a1 = *a2;
  *(a1 + 1) = (*(a2 + 8))(v5);
  v6 = (*(a2 + 16))();
  result = 0;
  *(a1 + 2) = v6;
  *(a1 + 32) = 0;
  return result;
}

uint64_t ccckg2_derive_sk_ws(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, char *a6, uint64_t (**a7)(void, uint64_t, uint64_t *))
{
  v29 = *MEMORY[0x29EDCA608];
  if (*a3 != 4)
  {
    return 4294967289;
  }

  v12 = *(a2 + 8);
  v22 = *(a2 + 16);
  v13 = *v12;
  v25 = *(a1 + 16);
  v14 = (*(a1 + 24))(a1, 3 * *v12);
  v15 = (*(a1 + 24))(a1, 3 * v13);
  v16 = (*(a1 + 24))(a1, (24 * v13 + 23) >> 3);
  *v16 = v12;
  v17 = cczp_bitlen(v12);
  result = ccec_raw_import_pub(v12, ((v17 + 7) >> 2) & 0x3FFFFFFFFFFFFFFELL, a3 + 1, v16);
  if (result || (result = ccec_validate_point_and_projectify_ws(a1, v12, v14, (v16 + 16)), result) || (result = ccec_mult_blinded_ws(a1, v12, v15, (a2 + 8 * **(a2 + 8) + 40), v14, a7), result) || (result = ccec_affinify_ws(a1, v12), result))
  {
    v20 = v25;
  }

  else
  {
    v19 = cczp_bitlen(v12);
    ccn_write_uint_padded_internal(v13, (a4 + 16), (v19 + 7) >> 3, v28);
    result = ccec_export_pub(v16, v27);
    v20 = v25;
    if (!result)
    {
      v26[0] = v27;
      v26[1] = ((cczp_bitlen(v12) + 7) >> 2) | 1;
      v21 = cczp_bitlen(v12);
      result = ccansikdf_x963_iovec(v22, (v21 + 7) >> 3, v28, 1, v26, a5, a6);
    }
  }

  *(a1 + 16) = v20;
  return result;
}

uint64_t ccckg2_derive_sk(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, char *a5, uint64_t (**a6)(void, uint64_t, uint64_t *))
{
  v12 = *(a1 + 8);
  v13 = *v12;
  v14 = sizeof_struct_cche_galois_key();
  v15 = sizeof_struct_ccpolyzp_po2cyc();
  v21[0] = cc_malloc_clear(8 * ((v14 + v15 + 3 * v13 * v15 - 1) / v15 + 29 * v13));
  v16 = *v12;
  v17 = sizeof_struct_cche_galois_key();
  v18 = sizeof_struct_ccpolyzp_po2cyc();
  v21[1] = (v17 + v18 + 3 * v16 * v18 - 1) / v18 + 29 * v16;
  v21[2] = 0;
  v21[3] = cc_ws_alloc;
  v22 = cc_ws_free;
  if (!v21[0])
  {
    return 4294967283;
  }

  v19 = ccckg2_derive_sk_ws(v21, a1, a2, a3, a4, a5, a6);
  v22(v21);
  return v19;
}

uint64_t ccecies_export_eph_pub(char a1, uint64_t *a2, char *a3)
{
  if ((a1 & 2) != 0)
  {
    return ccec_export_pub(a2, a3);
  }

  if ((a1 & 4) != 0)
  {
    return ccec_compact_export_pub(a3, a2);
  }

  return 4294967289;
}

uint64_t ccn_cmpn_public_value(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  if (a1 >= a3)
  {
    v4 = a3;
  }

  else
  {
    v4 = a1;
  }

  if (a1 >= a3)
  {
    v5 = a2;
  }

  else
  {
    v5 = a4;
  }

  if (a1 <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a1;
  }

  if (a1 < a3)
  {
    v7 = -1;
  }

  else
  {
    v7 = 1;
  }

  v8 = ccn_cmp_public_value(v4, a2, a4);
  if (ccn_n(v6 - v4, &v5[v4]))
  {
    return v7;
  }

  else
  {
    return v8;
  }
}

uint64_t ccn_cmpn(unint64_t a1, uint64_t *a2, unint64_t a3, uint64_t *a4)
{
  v10 = timingsafe_enable_if_supported();
  v8 = ccn_cmpn_public_value(a1, a2, a3, a4);
  cc_disable_dit_with_sb(&v10);
  return v8;
}

uint64_t cche_decrypt_ctx_nof_n(unsigned int *a1)
{
  v2 = sizeof_struct_ccpolyzp_po2cyc() + 7;
  v3 = *a1;
  v4 = sizeof_struct_ccpolyzp_po2cyc();
  v5 = sizeof_struct_ccpolyzp_po2cyc();
  v6 = (v5 - 1 + v4) / v5;
  v7 = sizeof_struct_ccpolyzp_po2cyc_ctx() + 7;
  if (v3 >= 0x80)
  {
    v8 = 128;
  }

  else
  {
    v8 = v3;
  }

  v9 = (sizeof_struct_ccrns_mul_modulus() + 7) >> 3;
  v10 = v6 + (v2 >> 3) + 2 * (v7 >> 3) + 4 * (v3 + v9 * v8) + 12;
  if (a1[1] <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = a1[1];
  }

  v12 = sizeof_struct_ccpolyzp_po2cyc_base_convert();
  v13 = 1;
  v14 = 2;
  do
  {
    v10 += v13 + (v14 + v13 + 2 * (v13 - 1)) * v9 + (v5 - 1 + v12) / v5;
    ++v13;
    v14 += 2;
  }

  while (v13 <= v11);
  return v10;
}

unint64_t CCHE_DECRYPT_CTX_INIT_WORKSPACE_N(unsigned int a1)
{
  v2 = CCPOLYZP_PO2CYC_CTX_INIT_WORKSPACE_N(1);
  result = CCPOLYZP_PO2CYC_BASE_CONVERT_INIT_WORKSPACE_N(a1);
  if (v2 > result)
  {
    return v2;
  }

  return result;
}

unint64_t CCHE_DECRYPT_WORKSPACE_N(uint64_t a1, int a2)
{
  v4 = cche_ciphertext_fresh_npolys();
  v5 = sizeof_struct_ccrns_mul_modulus();
  v6 = sizeof_struct_ccpolyzp_po2cyc();
  v7 = (v5 + v6 - 1) / v6 + ((a2 * a1) + ((sizeof_struct_ccpolyzp_po2cyc() + 7) >> 3)) * v4;
  v8 = CCPOLYZP_PO2CYC_BASE_CONVERT_DIVIDE_AND_ROUND_WORKSPACE_N(a1, a2);
  v9 = CCPOLYZP_PO2CYC_BASE_CONVERT_EXACT_POLY_WORKSPACE_N(a1) + 15;
  if (v8 > v9)
  {
    v9 = v8;
  }

  return v7 + v9;
}

uint64_t cche_decrypt(unsigned int **a1, unsigned int *a2, uint64_t a3, uint64_t *a4)
{
  v15 = timingsafe_enable_if_supported();
  v8 = cche_param_ctx_polynomial_degree(a2);
  v9 = CCHE_DECRYPT_WORKSPACE_N(v8, *(*(a3 + 24) + 4));
  v13[0] = cc_malloc_clear(8 * v9);
  v10 = cche_param_ctx_polynomial_degree(a2);
  v13[1] = CCHE_DECRYPT_WORKSPACE_N(v10, *(*(a3 + 24) + 4));
  v13[2] = 0;
  v13[3] = cc_ws_alloc;
  v14 = cc_ws_free;
  if (v13[0])
  {
    v11 = cche_decrypt_ws(v13, a1, a2, a3, a4);
    v14(v13);
  }

  else
  {
    v11 = 4294967283;
  }

  cc_disable_dit_with_sb(&v15);
  return v11;
}

uint64_t ccder_blob_decode_uint_strict(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range_strict(a1, 2, v6);
  if (result)
  {
    return ccder_blob_decode_uint_range(v6, a2, a3);
  }

  return result;
}

BOOL ccder_blob_decode_uint_range(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1 != v4 && (*v3 & 0x80000000) == 0 && (*v3 || (++v3, v3 == v4) || *v3 < 0))
  {
    *a1 = v3;
    return ccn_read_uint_public_value(a2, a3, v4 - v3, v3) == 0;
  }

  else
  {
    v5 = 0;
    *a1 = 0;
    a1[1] = 0;
  }

  return v5;
}

uint64_t ccder_blob_decode_uint(unsigned __int8 **a1, unint64_t a2, void *a3)
{
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range(a1, 2, v6);
  if (result)
  {
    return ccder_blob_decode_uint_range(v6, a2, a3);
  }

  return result;
}

double ccmode_factory_gcm_encrypt(void *a1, void *a2)
{
  *a1 = ((*a2 + 7) & 0xFFFFFFFFFFFFFFF8) + 5 * ((a2[1] + 7) & 0xFFFFFFFFFFFFFFF8) + 128;
  *&result = 4073947;
  a1[1] = 4073947;
  a1[2] = 1;
  a1[3] = ccmode_gcm_init;
  a1[4] = ccmode_gcm_set_iv;
  a1[5] = ccmode_gcm_aad;
  a1[6] = ccmode_gcm_encrypt;
  a1[7] = ccmode_gcm_finalize;
  a1[8] = ccmode_gcm_reset;
  a1[9] = a2;
  return result;
}

uint64_t ccss_shamir_share_generator_init(uint64_t *a1, int *a2, unsigned int (**a3)(void, unint64_t, uint64_t), unsigned __int8 *a4, unint64_t a5)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v15 = 1;
  }

  v24 = v15;
  v16 = cczp_n((a2 + 2));
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v22[0] = cc_malloc_clear(8 * (5 * v16 + (v17 + 7) / v17) + 24);
  v18 = cczp_n((a2 + 2));
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v22[1] = 5 * v18 + (v19 + 7) / v19 + 3;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v22[0])
  {
    ccss_shamir_init_share_poly(a1, a2);
    share_poly_ws = ccss_shamir_generate_share_poly_ws(v22, a1, a3, a5, a4, 0);
    v23(v22);
  }

  else
  {
    share_poly_ws = 4294967283;
  }

  cc_disable_dit(&v24);
  return share_poly_ws;
}

uint64_t ccss_shamir_share_generator_init_with_secrets_less_than_prime(uint64_t *a1, int *a2, unsigned int (**a3)(void, unint64_t, uint64_t), unsigned __int8 *a4, unint64_t a5)
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) == 0 || (_ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) & 0x1000000) != 0)
  {
    v15 = 0;
  }

  else
  {
    __asm { MSR             DIT, #1 }

    v15 = 1;
  }

  v24 = v15;
  v16 = cczp_n((a2 + 2));
  v17 = sizeof_struct_ccpolyzp_po2cyc();
  v22[0] = cc_malloc_clear(8 * (5 * v16 + (v17 + 7) / v17) + 24);
  v18 = cczp_n((a2 + 2));
  v19 = sizeof_struct_ccpolyzp_po2cyc();
  v22[1] = 5 * v18 + (v19 + 7) / v19 + 3;
  v22[2] = 0;
  v22[3] = cc_ws_alloc;
  v23 = cc_ws_free;
  if (v22[0])
  {
    ccss_shamir_init_share_poly(a1, a2);
    share_poly_ws = ccss_shamir_generate_share_poly_ws(v22, a1, a3, a5, a4, 1);
    v23(v22);
  }

  else
  {
    share_poly_ws = 4294967283;
  }

  cc_disable_dit(&v24);
  return share_poly_ws;
}

uint64_t ccder_blob_decode_oid(unsigned __int8 **a1, uint64_t *a2)
{
  v3 = *a1;
  v6[0] = 0;
  v6[1] = 0;
  result = ccder_blob_decode_range(a1, 6, v6);
  if (result)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t ccmldsa_polyvec_matrix_expand_ntt_pointwise(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4)
{
  v18 = *MEMORY[0x29EDCA608];
  if (*(a1 + 4))
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v9 += ccmldsa_sample_rej_ntt_poly(v17, 0, v8, a3);
      v10 = (v8 & 0xFFFFFF) << 10;
      ccmldsa_ntt_pointwise(a2 + v10, v17, a4);
      LODWORD(v11) = *(a1 + 8);
      if (v11 >= 2)
      {
        v12 = 256;
        v13 = 1;
        do
        {
          v9 += ccmldsa_sample_rej_ntt_poly(v17, v13, v8, a3);
          ccmldsa_ntt_pointwise(v17, v17, a4 + 4 * (v12 & 0xFFFFFF00));
          ccmldsa_poly_add(a2 + v10, a2 + v10, v17);
          ++v13;
          v11 = *(a1 + 8);
          v12 += 256;
        }

        while (v13 < v11);
      }

      ++v8;
      v14 = *(a1 + 4);
    }

    while (v8 < v14);
    v15 = v14 << 8;
  }

  else
  {
    v9 = 0;
    v15 = 0;
    LODWORD(v11) = *(a1 + 8);
  }

  if (v9 >= v15 * v11)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t ccmldsa_polyvecl_add(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 8))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_add(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_reduce(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_poly_reduce(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_ntt_forward(uint64_t result, uint64_t a2)
{
  if (*(result + 8))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 8));
  }

  return result;
}

int32x4_t *ccmldsa_polyvecl_ntt_forward_eta(int32x4_t *result, uint64_t a2)
{
  if (result->i32[2])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward_eta((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3->u32[2]);
  }

  return result;
}

uint64_t ccmldsa_polyvecl_ntt_pointwise_poly(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 8))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_ntt_pointwise(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4);
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 8));
  }

  return result;
}

int *ccmldsa_polyvecl_ntt_inverse(int *result, uint64_t a2)
{
  if (result[2])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_inverse((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3[2]);
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 32))(a2 + v6, a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitunpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 40))(a2 + 4 * (v7 & 0xFFFFFF00), a3 + v6);
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitpack_z(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitpack_z(a2 + (v6 & 0xFFFFFF80), a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += 640;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_bitunpack_z(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 8))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitunpack_z(a2 + 4 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFF80));
      ++v8;
      v7 += 640;
      v6 += 256;
    }

    while (v8 < *(v5 + 8));
  }

  return result;
}

uint64_t ccmldsa_polyvecl_checknorm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  v7 = 0;
  while (!ccmldsa_poly_checknorm(a2 + 4 * (v6 & 0xFFFFFF00), v3))
  {
    ++v7;
    v6 += 256;
    if (v7 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return 4294967150;
}

uint64_t ccmldsa_polyveck_add(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_add(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_sub(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_sub(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_reduce(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_poly_reduce(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_ntt_forward(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

int32x4_t *ccmldsa_polyveck_ntt_forward_eta(int32x4_t *result, uint64_t a2)
{
  if (result->i32[1])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_forward_eta((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3->u32[1]);
  }

  return result;
}

uint64_t ccmldsa_polyveck_ntt_pointwise_poly(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_ntt_pointwise(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4);
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

int *ccmldsa_polyveck_ntt_inverse(int *result, uint64_t a2)
{
  if (result[1])
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_ntt_inverse((a2 + 4 * (v4 & 0xFFFFFF00)));
      ++v5;
      v4 += 256;
    }

    while (v5 < v3[1]);
  }

  return result;
}

uint64_t ccmldsa_polyveck_power2round(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_power2round(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

void ccmldsa_polyveck_shiftl(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v4 = 0;
    v5 = 0;
    do
    {
      ccmldsa_poly_shiftl(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(result + 4));
  }
}

uint64_t ccmldsa_polyveck_caddq(uint64_t result, uint64_t a2)
{
  if (*(result + 4))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      result = ccmldsa_poly_caddq(a2 + 4 * (v4 & 0xFFFFFF00));
      ++v5;
      v4 += 256;
    }

    while (v5 < *(v3 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_decompose(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(result + 4))
  {
    v7 = result;
    v8 = 0;
    v9 = 0;
    do
    {
      result = ccmldsa_poly_decompose(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(v7 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_make_hint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v8 = 0;
  v9 = 0;
  LODWORD(v10) = 0;
  do
  {
    v10 = ccmldsa_poly_make_hint(a2 + ((4 * v8) & 0x3FFFFFC00), a3 + ((4 * v8) & 0x3FFFFFC00), a4 + ((4 * v8) & 0x3FFFFFC00)) + v10;
    ++v9;
    v8 += 256;
  }

  while (v9 < *(a1 + 4));
  return v10;
}

uint64_t ccmldsa_polyveck_use_hint(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    do
    {
      result = ccmldsa_poly_use_hint(a2 + ((4 * v6) & 0x3FFFFFC00), a3 + ((4 * v6) & 0x3FFFFFC00));
      ++v7;
      v6 += 256;
    }

    while (v7 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 32))(a2 + v6, a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitunpack_eta(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = *(result + 28);
    do
    {
      result = (*(v5 + 40))(a2 + 4 * (v7 & 0xFFFFFF00), a3 + v6);
      ++v8;
      v7 += 256;
      v6 += v9;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitpack_t0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitpack_t0(a2 + (v6 & 0xFFFFFFE0), (a3 + 4 * (v7 & 0xFFFFFF00)));
      ++v8;
      v7 += 256;
      v6 += 416;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitunpack_t0(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitunpack_t0(a2 + 4 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFFE0));
      ++v8;
      v7 += 416;
      v6 += 256;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitpack_t1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitpack_t1(a2 + (v6 & 0xFFFFFFC0), a3 + 4 * (v7 & 0xFFFFFF00));
      ++v8;
      v7 += 256;
      v6 += 320;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_bitunpack_t1(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 4))
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      result = ccmldsa_poly_bitunpack_t1(a2 + 4 * (v6 & 0xFFFFFF00), a3 + (v7 & 0xFFFFFFC0));
      ++v8;
      v7 += 320;
      v6 += 256;
    }

    while (v8 < *(v5 + 4));
  }

  return result;
}

uint64_t ccmldsa_polyveck_checknorm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 4))
  {
    return 0;
  }

  v3 = a3;
  v6 = 0;
  v7 = 0;
  while (!ccmldsa_poly_checknorm(a2 + 4 * (v6 & 0xFFFFFF00), v3))
  {
    ++v7;
    v6 += 256;
    if (v7 >= *(a1 + 4))
    {
      return 0;
    }
  }

  return 4294967150;
}

uint64_t cche_ciphertext_fwd_ntt_internal(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v5 = sizeof_struct_ccpolyzp_po2cyc();
    result = ccpolyzp_po2cyc_fwd_ntt(&v3[((v4[1] * *v4) + ((v5 + 7) >> 3)) * v2]);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_ciphertext_fwd_ntt(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = cche_ciphertext_fwd_ntt_internal(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t cche_ciphertext_inv_ntt_internal(uint64_t a1)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v2 = 0;
  v3 = (a1 + 24);
  while (1)
  {
    v4 = *v3;
    v5 = sizeof_struct_ccpolyzp_po2cyc();
    result = ccpolyzp_po2cyc_inv_ntt(&v3[((v4[1] * *v4) + ((v5 + 7) >> 3)) * v2]);
    if (result)
    {
      break;
    }

    if (++v2 >= *(a1 + 8))
    {
      return 0;
    }
  }

  return result;
}

uint64_t cche_ciphertext_inv_ntt(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = cche_ciphertext_inv_ntt_internal(a1);
  cc_disable_dit_with_sb(&v4);
  return v2;
}

unint64_t ccpad_xts_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x29EDCA608];
  v17 = timingsafe_enable_if_supported();
  v12 = a4 & 0xF;
  if ((a4 & 0xF) != 0)
  {
    v13 = a4 & 0xFFFFFFFFFFFFFFF0;
    v14 = (*(a1 + 48))(a2, a3, (a4 >> 4) - 1, a5, a6);
    v19 = *v14;
    ccmode_xts_mult_alpha(v14);
    (*(a1 + 48))(a2, a3, 1, a5 + (a4 & 0xFFFFFFFFFFFFFFF0) - 16, v18);
    v15 = 0;
    *v14 = v19;
    do
    {
      v19.i8[v15] = *(a5 + v13 + v15);
      *(a6 + v13 + v15) = v18[v15];
      ++v15;
    }

    while (v12 != v15);
    if ((v15 - 1) <= 0xE)
    {
      memcpy((&v19 | v12), &v18[v12], 16 - v12);
    }

    (*(a1 + 48))(a2, a3, 1, &v19, a6 + (a4 & 0xFFFFFFFFFFFFFFF0) - 16);
  }

  else
  {
    (*(a1 + 48))(a2, a3, a4 >> 4, a5, a6);
  }

  cc_disable_dit_with_sb(&v17);
  return a4;
}

uint64_t fipspost_post_tdes_ecb(char a1)
{
  v8 = *MEMORY[0x29EDCA608];
  v2 = ccdes3_ecb_decrypt_mode();
  if ((a1 & 0x10) != 0)
  {
    v3 = &invalid_key;
  }

  else
  {
    v3 = &valid_key;
  }

  if (ccecb_one_shot(v2, 24, v3, 1, &ciphertext_data, v7))
  {
    v4 = mach_absolute_time();
    printf("FIPSPOST_USER [%llu] %s:%d: FAILED: des3_ecb_decrypt one_shot\n", v4, "fipspost_post_tdes_ecb_decrypt", 40);
    return 4294967223;
  }

  else
  {
    result = cc_cmp_safe(8, v7, &plaintext_data);
    if (result)
    {
      v6 = mach_absolute_time();
      printf("FIPSPOST_USER [%llu] %s:%d: FAILED: des3_ecb_decrypt cmp\n", v6, "fipspost_post_tdes_ecb_decrypt", 45);
      return 4294967221;
    }
  }

  return result;
}

uint64_t ccder_blob_encode_implicit_integer(uint64_t *a1, unint64_t a2, unint64_t a3, uint64_t *a4)
{
  v11 = 0;
  v12 = 0;
  v8 = ccn_write_int_size_public_value(a3, a4);
  v9 = ccder_blob_reserve_tl(a1, a2, v8, &v11);
  if (v9)
  {
    ccn_write_int_public_value(a3, a4, v12 - v11, v11);
  }

  return v9;
}

uint64_t ccder_sizeof_len(unint64_t a1)
{
  if (a1 < 0x80)
  {
    return 1;
  }

  v2 = 3;
  v3 = 4;
  v4 = 5;
  v5 = 6;
  v6 = 7;
  v7 = 8;
  if (HIBYTE(a1))
  {
    v7 = 9;
  }

  if (HIWORD(a1))
  {
    v6 = v7;
  }

  if (a1 >> 40)
  {
    v5 = v6;
  }

  if (HIDWORD(a1))
  {
    v4 = v5;
  }

  if (a1 >> 24)
  {
    v3 = v4;
  }

  if (a1 >= 0x10000)
  {
    v2 = v3;
  }

  if (a1 >= 0x100)
  {
    return v2;
  }

  else
  {
    return 2;
  }
}

void *ccaes_xts_encrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  v1 = ccaes_ecb_encrypt_mode();
  ccmode_factory_xts_encrypt(xts_encrypt, v0, v1);
  return xts_encrypt;
}

uint64_t cczp_mul_default_ws(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5)
{
  v9 = *(a1 + 16);
  v10 = cczp_n(a2);
  v11 = (*(a1 + 24))(a1, 2 * v10);
  v12 = cczp_n(a2);
  ccn_mul_ws(a1, v12, v11, a4, a5);
  result = cczp_mod_ws(a1, a2);
  *(a1 + 16) = v9;
  return result;
}

uint64_t cczp_mul(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = timingsafe_enable_if_supported();
  v8 = cczp_n(a1);
  v11[0] = cc_malloc_clear(32 * v8);
  v11[1] = 4 * cczp_n(a1);
  v11[2] = 0;
  v11[3] = cc_ws_alloc;
  v12 = cc_ws_free;
  if (v11[0])
  {
    (*(*(a1 + 16) + 16))(v11, a1, a2, a3, a4);
    v12(v11);
    v9 = 0;
  }

  else
  {
    v9 = 4294967283;
  }

  cc_disable_dit_with_sb(&v13);
  return v9;
}

uint64_t ccvrf_irtf_ed25519_string_to_point(int *a1, uint64_t a2)
{
  if (ge_frombytes_vartime(a1, a2))
  {
    return 4294967209;
  }

  else
  {
    return 0;
  }
}

__n128 ccvrf_irtf_ed25519_decode_proof(uint64_t a1, int *a2, _OWORD *a3, uint64_t a4)
{
  if (!ge_frombytes_vartime(a2, a1))
  {
    *a3 = *(a1 + 32);
    result = *(a1 + 48);
    v8 = *(a1 + 64);
    *a4 = result;
    *(a4 + 16) = v8;
  }

  return result;
}

uint64_t ccvrf_irtf_ed25519_encode_proof(int *a1, _OWORD *a2, _OWORD *a3, _OWORD *a4)
{
  ge_p3_tobytes(a4, a1);
  a4[2] = *a2;
  v7 = a3[1];
  a4[3] = *a3;
  a4[4] = v7;
  return 0;
}

uint64_t ccvrf_irtf_ed25519_hash_points(uint64_t a1, int **a2, uint64_t a3, void *a4)
{
  v14[16] = *MEMORY[0x29EDCA608];
  v13 = 516;
  if (a3)
  {
    v8 = v14;
    v9 = a3;
    do
    {
      v10 = *a2++;
      ge_p3_tobytes(v8, v10);
      v8 += 4;
      --v9;
    }

    while (v9);
  }

  ccdigest_internal(*(a1 + 40), (32 * a3) | 2, &v13, __src);
  memcpy(a4, __src, *(a1 + 32) >> 1);
  return cc_clear(0x40uLL, __src);
}

uint64_t ccpolyzp_po2cyc_init(void *a1, _DWORD *a2, uint64_t *a3)
{
  *a1 = a2;
  v3 = *a2 * a2[1];
  if (v3)
  {
    v4 = a1 + 1;
    do
    {
      v5 = *a3++;
      *v4++ = v5;
      --v3;
    }

    while (v3);
  }

  return 0;
}

_DWORD **ccpolyzp_po2cyc_coeff_negate(_DWORD **result, int **a2)
{
  v2 = (*a2)[1];
  if (v2)
  {
    v3 = 0;
    v4 = **a2;
    do
    {
      v5 = (*a2)[1] - 1;
      v6 = *a2;
      if (v5 > v3)
      {
        v6 = *a2;
        do
        {
          v6 = *(v6 + 14);
          --v5;
        }

        while (v5 > v3);
      }

      if (v4)
      {
        v7 = *(v6 + 2);
        v8 = &a2[**a2 * v3 + 1];
        v9 = &result[**result * v3 + 1];
        v10 = v4;
        do
        {
          v11 = *v8++;
          *v9++ = (v7 - v11) & -(v11 != 0);
          --v10;
        }

        while (v10);
      }

      ++v3;
    }

    while (v3 != v2);
  }

  return result;
}

_DWORD **ccpolyzp_po2cyc_coeff_add(_DWORD **result, int **a2, _DWORD **a3)
{
  v3 = (*a2)[1];
  if (v3)
  {
    v4 = 0;
    v5 = **a2;
    do
    {
      v6 = (*a2)[1] - 1;
      v7 = *a2;
      if (v6 > v4)
      {
        v7 = *a2;
        do
        {
          v7 = *(v7 + 14);
          --v6;
        }

        while (v6 > v4);
      }

      if (v5)
      {
        v8 = *(v7 + 2);
        v9 = &a3[**a3 * v4 + 1];
        v10 = &a2[**a2 * v4 + 1];
        v11 = &result[**result * v4 + 1];
        v12 = v5;
        do
        {
          v14 = *v10++;
          v13 = v14;
          v15 = *v9++;
          *v11++ = (((v13 - v8 + v15) >> 63) & v8) + v13 - v8 + v15;
          --v12;
        }

        while (v12);
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

_DWORD **ccpolyzp_po2cyc_eval_mul(_DWORD **result, int **a2, _DWORD **a3)
{
  v3 = (*a2)[1];
  if (v3)
  {
    v4 = 0;
    v5 = **a2;
    do
    {
      v6 = *a2;
      v7 = (*a2)[1];
      while (--v7 > v4)
      {
        v6 = *(v6 + 14);
      }

      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          v9 = (&a2[i + 1])[v4 * **a2];
          v10 = (&a3[i + 1])[v4 * **a3];
          v11 = (v10 * v9) >> 64;
          v12 = v10 * v9;
          v13 = *(v6 + 4);
          v14 = (v12 * v13) >> 64;
          v15 = (v11 * v13) >> 64;
          v16 = v11 * v13;
          v17 = __CFADD__(v14, v16);
          v18 = v14 + v16;
          v19 = v17;
          v20 = v19 + __CFADD__(v12 * *(v6 + 5), v18) + v15 + *(v6 + 5) * v11 + ((v12 * *(v6 + 5)) >> 64);
          (&result[i + 1])[v4 * **result] = (v12 + *(v6 + 2) * ~v20 + (((v12 + *(v6 + 2) * ~v20) >> 63) & *(v6 + 2)));
        }
      }

      ++v4;
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t ccpolyzp_po2cyc_coeff_scalar_mul_ws(uint64_t result, _DWORD **a2, int **a3, uint64_t a4)
{
  v4 = (*a3)[1];
  if (v4)
  {
    v8 = result;
    v9 = 0;
    v10 = **a3;
    v11 = a3 + 1;
    v12 = a2 + 1;
    do
    {
      v13 = *a3;
      v14 = (*a3)[1];
      if (v9 < (v14 - 1))
      {
        v15 = v14 - 2;
        do
        {
          v13 = *(v13 + 14);
        }

        while (v9 < v15--);
      }

      v17 = *(v13 + 2);
      v21 = 0;
      v22 = 0;
      v23 = 0;
      result = ccrns_mul_modulus_init_ws(v8, &v21, v17, *(a4 + 8 * v9));
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v19 = v11[(i + v9 * **a3)];
          v20 = v22 * v19 + v21 * ~((v23 * v19) >> 64);
          v12[(i + v9 * **a2)] = (v20 + ((v20 >> 63) & v21));
        }
      }

      ++v9;
    }

    while (v9 != v4);
  }

  return result;
}

uint64_t ccwrap_auth_encrypt_withiv_internal(uint64_t a1, uint64_t a2, size_t a3, const void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v25 = *MEMORY[0x29EDCA608];
  v14 = ccwrap_wrapped_size(a3);
  *a5 = v14;
  if (ccwrap_argsvalid(a1, a3, v14))
  {
    v22 = a6;
    v23 = *a7;
    v15 = a6 + 1;
    memmove(a6 + 1, a4, a3);
    v16 = 0;
    v17 = 1;
    do
    {
      if (a3 >= 8)
      {
        v18 = v15;
        v19 = v17;
        v20 = a3 >> 3;
        do
        {
          v24 = *v18;
          (*(a1 + 24))(a2, 1, &v23, &v23);
          v23 ^= bswap64(v19);
          *v18++ = v24;
          ++v19;
          --v20;
        }

        while (v20);
      }

      ++v16;
      v17 += a3 >> 3;
    }

    while (v16 != 6);
    result = 0;
    *v22 = v23;
  }

  else
  {
    *a5 = 0;
    return 4294967289;
  }

  return result;
}

uint64_t ccwrap_auth_encrypt_withiv(uint64_t a1, uint64_t a2, size_t a3, const void *a4, uint64_t *a5, void *a6, uint64_t *a7)
{
  v16 = timingsafe_enable_if_supported();
  v14 = ccwrap_auth_encrypt_withiv_internal(a1, a2, a3, a4, a5, a6, a7);
  cc_disable_dit_with_sb(&v16);
  return v14;
}

uint64_t ccdh_import_pub(uint64_t a1, unint64_t a2, unsigned __int8 *a3, void *a4)
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

  v19 = v13;
  ccdh_ctx_init(a1, a4);
  v14 = ccdh_gp_n(a1);
  if (ccn_read_uint_internal(v14, a4 + 2, a2, a3))
  {
    v15 = 4294967244;
  }

  else
  {
    v16 = ccdh_gp_n(a1);
    v17 = ccdh_gp_prime(a1);
    if (ccn_cmp_internal(v16, a4 + 2, v17) >= 0)
    {
      v15 = 4294967247;
    }

    else
    {
      v15 = 0;
    }
  }

  cc_disable_dit(&v19);
  return v15;
}

uint64_t ccmode_xts_init(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (cc_cmp_safe_internal(a3, a4, a5))
  {
    v10 = 0;
  }

  else
  {
    v10 = 4294967132;
  }

  (*(a1 + 32))(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t ccapsic_client_init_internal(void **a1, uint64_t **a2, uint64_t *a3, size_t a4, const void *a5)
{
  v9 = *a2;
  *a1 = *a2;
  a1[1] = a3;
  a1[2] = 0;
  v10 = *v9;
  v11 = sizeof_struct_ccpolyzp_po2cyc();
  v25[0] = cc_malloc_clear(8 * (5 * v10 + (v11 + 7) / v11) + 24);
  v12 = *v9;
  v13 = sizeof_struct_ccpolyzp_po2cyc();
  v25[1] = 5 * v12 + (v13 + 7) / v13 + 3;
  v25[2] = 0;
  v25[3] = cc_ws_alloc;
  v26 = cc_ws_free;
  if (v25[0])
  {
    if (a4 - 129 < 0xFFFFFFFFFFFFFF80)
    {
      goto LABEL_9;
    }

    v15 = *a2;
    v14 = a2 + 2;
    if (ccec_is_point_at_infinity(v15, v14))
    {
      goto LABEL_9;
    }

    memcpy(&a1[9 * **a1 + 24] + 2 * **a1, v14, 24 * *v9);
    v16 = ccec_projectify_ws(v25, v9);
    if (v16 || (v16 = ccec_projectify_ws(v25, v9), v16))
    {
      v18 = v16;
      goto LABEL_15;
    }

    v17 = *a1;
    if (v17 == ccec_cp_256())
    {
      v19 = &cch2c_p256_sha256_sswu_ro_info;
    }

    else if (v17 == ccec_cp_384())
    {
      v19 = &cch2c_p384_sha512_sswu_ro_info;
    }

    else
    {
      if (v17 != ccec_cp_521())
      {
LABEL_9:
        v18 = 4294967289;
LABEL_15:
        v26(v25);
        return v18;
      }

      v19 = &cch2c_p521_sha512_sswu_ro_info;
    }

    a1[2] = v19;
    v20 = cch2c_name(v19);
    v21 = strlen(v20);
    v22 = cch2c_name(a1[2]);
    memcpy(a1 + 4, v22, v21);
    v23 = a1 + v21 + 32;
    *v23 = 1230196801;
    v23[4] = 67;
    memcpy(v23 + 5, a5, a4);
    v18 = 0;
    a1[3] = (a4 + v21 + 5);
    goto LABEL_15;
  }

  return 4294967283;
}

uint64_t ccapsic_client_init(void **a1, uint64_t **a2, uint64_t *a3, size_t a4, const void *a5)
{
  v12 = timingsafe_enable_if_supported();
  inited = ccapsic_client_init_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v12);
  return inited;
}

uint64_t cckem_kyber1024_generate_key(uint64_t a1, uint64_t (**a2)(void, uint64_t, _OWORD *))
{
  cckem_public_ctx();
  v5 = (a1 + *(*a1 + 16) + 8);

  return ccmlkem_kem_keypair(cckyber1024_params, (v4 + 8), v5, a2);
}

uint64_t ccec_mult_default_ws(uint64_t a1, unint64_t *a2, uint64_t *a3, _BYTE *a4, unint64_t a5, uint64_t *a6)
{
  v12 = a2 + 4;
  if (cczp_bitlen(&a2[5 * *a2 + 4]) < a5)
  {
    return 4294967289;
  }

  v52 = a3;
  __src = a4;
  v55 = v12;
  v14 = *a2;
  v15 = (a5 + 63) >> 6;
  v54 = *(a1 + 16);
  v16 = 3 * *a2;
  v17 = (*(a1 + 24))(a1, v16);
  v18 = (*(a1 + 24))(a1, v14);
  v56 = ccn_n(v14, a6) == 0;
  if (a5 + 63 >= 0x40)
  {
    ccn_set((a5 + 63) >> 6, v18, a4);
  }

  ccn_zero(v14 - v15, &v18[8 * v15]);
  *&v18[8 * v15 - 8] &= 0xFFFFFFFFFFFFFFFFLL >> -a5;
  v51 = (a5 + 63) >> 6;
  v58 = v18;
  ccn_shift_right(v51, v18, v18, v56);
  ccec_double_ws(a1, a2, v17, a6);
  ccn_mux(3 * v14, !v56, v17, a6, v17);
  if (!ccn_n(v14, v17))
  {
LABEL_13:
    result = 0xFFFFFFFFLL;
    goto LABEL_16;
  }

  if (cczp_bitlen(&v55[5 * *a2]) >= a5)
  {
    v19 = *a2;
    if (ccn_n(*a2, v17))
    {
      v48 = v16;
      v46 = *(a1 + 16);
      v20 = (*(a1 + 24))(a1, 2 * v19);
      v21 = (*(a1 + 24))(a1, 2 * v19);
      v57 = 2 * v19;
      v22 = (*(a1 + 24))(a1, 2 * v19);
      v23 = *a2;
      v43 = *(a1 + 16);
      __dst = v22;
      (*(a1 + 24))(a1, *a2);
      v50 = v19;
      (*(a1 + 24))(a1, v23);
      (*(a1 + 24))(a1, v23);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_add_ws(a1, a2);
      cczp_add_ws(a1, a2);
      v47 = v17;
      cczp_mul_ws(a1, a2);
      cczp_sqr_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      cczp_sub_ws(a1, a2);
      v24 = a1;
      v25 = a1;
      v26 = v20;
      cczp_sub_ws(v24, a2);
      cczp_mul_ws(v25, a2);
      cczp_sqr_ws(v25, a2);
      cczp_add_ws(v25, a2);
      cczp_sub_ws(v25, a2);
      v27 = v18;
      v28 = *&v18[((a5 - 1) >> 3) & 0x1FFFFFFFFFFFFFF8];
      v49 = v25;
      *(v25 + 16) = v43;
      v29 = (v28 >> (a5 - 1)) & 1;
      v30 = !((v28 >> (a5 - 1)) & 1);
      v31 = &v21[v50];
      v32 = a5 - 2;
      if (v32)
      {
        v33 = v29;
        do
        {
          v34 = v29;
          v29 = (*&v27[(v32 >> 3) & 0x1FFFFFFFFFFFFFF8] >> v32) & 1;
          cczp_cond_negate(a2, v30, v31, v31);
          ccn_cond_swap(v57, v29 ^ v34 | v33 ^ 1, v26, v21);
          ccec_mult_XYCZaddC_ws(v49, a2, v26, v21);
          ccec_mult_XYCZadd_ws(v49, a2, v26, v21);
          LOBYTE(v30) = v29 & (v33 ^ 1);
          v27 = v18;
          v33 |= v29;
          --v32;
        }

        while (v32);
        v44 = v33 ^ 1;
      }

      else
      {
        v44 = v30;
      }

      cczp_cond_negate(a2, v30, v31, v31);
      ccn_cond_swap(v57, *v27 & 1 ^ v29, v26, v21);
      ccec_mult_XYCZaddC_ws(v49, a2, v26, v21);
      ccn_set(v57, __dst, v21);
      v35 = *v27;
      ccn_cond_swap(v57, *v27 & 1, v26, v21);
      v36 = v26;
      a1 = v49;
      v37 = v52;
      v42 = *(v49 + 16);
      cczp_sub_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      cczp_sqr_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      *(v49 + 16) = v42;
      ccn_cond_swap(v57, v35 & 1, v36, v21);
      ccec_mult_XYCZadd_ws(v49, a2, v36, v21);
      ccn_mux(v57, v35 & 1, v36, v21, v36);
      cczp_mul_ws(v49, a2);
      cczp_mul_ws(v49, a2);
      v38 = cczp_prime(&v55[5 * *a2]);
      ccn_sub1(v50, __dst, v38, 1uLL);
      v39 = (ccn_cmpn_internal(v51, v58, v50, __dst) & 1) == 0;
      is_point_at_infinity = ccec_is_point_at_infinity(a2, v47);
      ccn_mux(3 * v50, v44 | is_point_at_infinity | v39, v37, v47, v37);
      cczp_cond_negate(a2, v39, &v37[*a2], &v37[*a2]);
      v41 = v44 & ~*v58;
      ccn_cond_clear(v50, v44 & ~*v58 & 1, &v52[2 * *a2]);
      ccn_seti(v50, v36, 1);
      cczp_to_ws(v49, a2);
      ccn_mux(v50, v41 & 1, v37, v36, v37);
      ccn_mux(v50, v41 & 1, &v37[*a2], v36, &v37[*a2]);
      *(v49 + 16) = v46;
      ccec_full_add_ws(v49, a2);
      ccn_mux(v48, *__src & v56, v37, v47, v37);
      result = 0;
      goto LABEL_16;
    }

    goto LABEL_13;
  }

  result = 4294967289;
LABEL_16:
  *(a1 + 16) = v54;
  return result;
}

uint64_t ccec_mult_XYCZaddC_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_add_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v7;
  return result;
}

uint64_t ccec_mult_XYCZadd_ws(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  v7 = *(a1 + 16);
  (*(a1 + 24))(a1, *a2);
  (*(a1 + 24))(a1, v6);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_sub_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  result = cczp_sub_ws(a1, a2);
  *(a1 + 16) = v7;
  return result;
}

double ccmode_factory_siv_hmac_decrypt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&result = 600;
  *a1 = xmmword_299CF0E30;
  *(a1 + 16) = ccmode_siv_hmac_init;
  *(a1 + 24) = ccmode_siv_hmac_nonce;
  *(a1 + 32) = ccmode_siv_hmac_auth;
  *(a1 + 40) = ccmode_siv_hmac_decrypt;
  *(a1 + 48) = ccmode_siv_hmac_reset;
  *(a1 + 56) = a2;
  *(a1 + 64) = a3;
  return result;
}

size_t ccpad_cts3_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, _BYTE *a5, char *a6)
{
  v22 = *MEMORY[0x29EDCA608];
  v20 = timingsafe_enable_if_supported();
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

  if (v14 != 2 * v12)
  {
    cc_clear(2 * v12, __src);
    __memcpy_chk();
    a5 = __src;
  }

  (*(a1 + 24))(a2, a3, 2, a5, __src);
  v16 = 0;
  v17 = &__src[v12];
  do
  {
    v18 = __src[v16];
    __src[v16] = v17[v16];
    v17[v16++] = v18;
  }

  while (v12 != v16);
  memcpy(a6, __src, v14);
  cc_disable_dit_with_sb(&v20);
  return a4;
}

BOOL timingsafe_enable_if_supported()
{
  if ((MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    v0 = _ReadStatusReg(ARM64_SYSREG(3, 3, 4, 2, 5)) != 0;
    __asm { MSR             DIT, #1 }
  }

  else
  {
    v0 = 0;
  }

  if ((MEMORY[0xFFFFFC010] & 0x200000000000) != 0)
  {
    sb();
  }

  else
  {
    __dsb(0xFu);
    __isb(0xFu);
  }

  return v0;
}

uint64_t timingsafe_restore_if_supported(uint64_t result)
{
  if ((result & 1) == 0 && (MEMORY[0xFFFFFC010] & 0x200000000000000) != 0)
  {
    __asm { MSR             DIT, #0 }
  }

  return result;
}

int64x2_t AccelerateCrypto_SHA3_keccak_2x_hwassist(int64x2_t *a1, int64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a2[4];
  v11 = a2[5];
  v12 = a1[6];
  v13 = a1[7];
  v14 = a2[6];
  v15 = a2[7];
  v16 = a1[8];
  v17 = a1[9];
  v18 = a2[8];
  v19 = a2[9];
  v20 = a1[10];
  v21 = a1[11];
  v22 = a2[10];
  v23 = a2[11];
  *&_Q24 = a1[12].i64[0];
  *(&_Q24 + 1) = a2[12].i64[0];
  _Q0 = vzip1q_s64(*a1, *a2);
  _Q1 = vzip2q_s64(*a1, *a2);
  _Q2 = vzip1q_s64(v2, v3);
  _Q3 = vzip2q_s64(v2, v3);
  _Q4 = vzip1q_s64(v4, v6);
  _Q5 = vzip2q_s64(v4, v6);
  _Q6 = vzip1q_s64(v5, v7);
  _Q7 = vzip2q_s64(v5, v7);
  _Q8 = vzip1q_s64(v8, v10);
  _Q9 = vzip2q_s64(v8, v10);
  _Q10 = vzip1q_s64(v9, v11);
  _Q11 = vzip2q_s64(v9, v11);
  _Q12 = vzip1q_s64(v12, v14);
  _Q13 = vzip2q_s64(v12, v14);
  _Q14 = vzip1q_s64(v13, v15);
  _Q15 = vzip2q_s64(v13, v15);
  _Q16 = vzip1q_s64(v16, v18);
  _Q17 = vzip2q_s64(v16, v18);
  _Q18 = vzip1q_s64(v17, v19);
  _Q19 = vzip2q_s64(v17, v19);
  _Q20 = vzip1q_s64(v20, v22);
  _Q21 = vzip2q_s64(v20, v22);
  _Q22 = vzip1q_s64(v21, v23);
  _Q23 = vzip2q_s64(v21, v23);
  v49 = 0;
  v50 = &unk_299CFCD48;
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

    v96 = vld1q_dup_f64(v50);
    __asm
    {
      BCAX            V7.16B, V29.16B, V9.16B, V30.16B
      BCAX            V8.16B, V30.16B, V27.16B, V9.16B
      BCAX            V9.16B, V9.16B, V6.16B, V27.16B
      BCAX            V5.16B, V27.16B, V29.16B, V6.16B
    }

    ++v50;
    __asm { BCAX            V6.16B, V6.16B, V30.16B, V29.16B }

    v49 += 8;
    _Q0 = veorq_s8(_Q0, v96);
  }

  while (v49 != 192);
  v97 = vzip1q_s64(_Q0, _Q1);
  v98 = vzip2q_s64(_Q0, _Q1);
  result = vzip1q_s64(_Q2, _Q3);
  *a1 = v97;
  a1[1] = result;
  *a2 = v98;
  a2[1] = vzip2q_s64(_Q2, _Q3);
  a1[2] = vzip1q_s64(_Q4, _Q5);
  a1[3] = vzip1q_s64(_Q6, _Q7);
  a2[2] = vzip2q_s64(_Q4, _Q5);
  a2[3] = vzip2q_s64(_Q6, _Q7);
  a1[4] = vzip1q_s64(_Q8, _Q9);
  a1[5] = vzip1q_s64(_Q10, _Q11);
  a2[4] = vzip2q_s64(_Q8, _Q9);
  a2[5] = vzip2q_s64(_Q10, _Q11);
  a1[6] = vzip1q_s64(_Q12, _Q13);
  a1[7] = vzip1q_s64(_Q14, _Q15);
  a2[6] = vzip2q_s64(_Q12, _Q13);
  a2[7] = vzip2q_s64(_Q14, _Q15);
  a1[8] = vzip1q_s64(_Q16, _Q17);
  a1[9] = vzip1q_s64(_Q18, _Q19);
  a2[8] = vzip2q_s64(_Q16, _Q17);
  a2[9] = vzip2q_s64(_Q18, _Q19);
  a1[10] = vzip1q_s64(_Q20, _Q21);
  a1[11] = vzip1q_s64(_Q22, _Q23);
  a2[10] = vzip2q_s64(_Q20, _Q21);
  a2[11] = vzip2q_s64(_Q22, _Q23);
  a1[12].i64[0] = _Q24;
  a2[12].i64[0] = *(&_Q24 + 1);
  return result;
}

uint64_t ccrng_uniform_internal(uint64_t (**a1)(void, uint64_t, unint64_t *), unint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v6 = 0xFFFFFFFFFFFFFFFFLL >> __clz(a2);
    while (1)
    {
      v7 = (*a1)(a1, 8, a3);
      if (v7)
      {
        break;
      }

      v8 = *a3 & v6;
      *a3 = v8;
      if (v8 < a2)
      {
        return 0;
      }
    }

    v9 = v7;
  }

  else
  {
    v9 = 4294967289;
  }

  cc_clear(8uLL, a3);
  return v9;
}

uint64_t ccrng_uniform(uint64_t (**a1)(void, uint64_t, unint64_t *), unint64_t a2, unint64_t *a3)
{
  v8 = timingsafe_enable_if_supported();
  v6 = ccrng_uniform_internal(a1, a2, a3);
  cc_disable_dit_with_sb(&v8);
  return v6;
}

uint64_t cche_ciphertext_coeff_decompose_nptexts_internal(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = *(*(a1 + 24) + 4);
  do
  {
    if (v8)
    {
      for (i = 0; i != v8; ++i)
      {
        if (a2)
        {
          v10 = *(a2 + 4 * (v5 + i));
        }

        else
        {
          v10 = 0;
        }

        v6 = cche_ciphertext_coeff_decompose_nptexts_rns(a1, i, v10) + v6;
      }
    }

    ++v7;
    v5 += v8;
  }

  while (v7 != v2);
  return v6;
}

uint64_t cche_ciphertext_coeff_decompose_nptexts_rns(uint64_t *a1, unsigned int a2, int a3)
{
  v6 = cche_param_ctx_plaintext_modulus(*a1);
  v7 = a1[3];
  v8 = *(v7 + 4);
  while (--v8 > a2)
  {
    v7 = *(v7 + 112);
  }

  v9 = __clz(v6);
  v10 = *(v7 + 16);
  v11 = __clz(v10);
  if ((v10 ^ (v10 - 1)) > v10 - 1)
  {
    v12 = 63;
  }

  else
  {
    v12 = 64;
  }

  return (v12 - (v9 + a3 + v11) + 62) / (63 - v9);
}

uint64_t cche_ciphertext_coeff_decompose_nptexts(uint64_t a1, uint64_t a2)
{
  v6 = timingsafe_enable_if_supported();
  v4 = cche_ciphertext_coeff_decompose_nptexts_internal(a1, a2);
  cc_disable_dit_with_sb(&v6);
  return v4;
}

unint64_t ccder_sizeof_eckey(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ccder_sizeof_uint64(1);
  v7 = ccder_sizeof(4, a1) + v6;
  if (a2)
  {
    v8 = ccder_sizeof_oid(a2);
    v7 += ccder_sizeof(0xA000000000000000, v8);
  }

  if (a3)
  {
    v9 = ccder_sizeof(3, a3 + 1);
    v7 += ccder_sizeof(0xA000000000000001, v9);
  }

  return ccder_sizeof(0x2000000000000010, v7);
}

unint64_t ccn_write_int_size_public_value(uint64_t a1, uint64_t *a2)
{
  v2 = ccn_bitlen_public_value(a1, a2);
  if ((v2 & 7) != 0)
  {
    return (v2 + 7) >> 3;
  }

  else
  {
    return ((v2 + 7) >> 3) + 1;
  }
}

unint64_t ccn_write_int_size(uint64_t a1, uint64_t *a2)
{
  v7 = timingsafe_enable_if_supported();
  v4 = ccn_bitlen_public_value(a1, a2);
  if ((v4 & 7) != 0)
  {
    v5 = (v4 + 7) >> 3;
  }

  else
  {
    v5 = ((v4 + 7) >> 3) + 1;
  }

  cc_disable_dit_with_sb(&v7);
  return v5;
}

unint64_t ccn_write_int_public_value(unint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  if ((ccn_bitlen_public_value(a1, a2) & 7) == 0)
  {
    *a4++ = 0;
    --a3;
  }

  return ccn_write_uint_public_value(a1, a2, a3, a4);
}

uint64_t ccn_write_int(unint64_t a1, uint64_t *a2, unint64_t a3, _BYTE *a4)
{
  v9 = timingsafe_enable_if_supported();
  ccn_write_int_public_value(a1, a2, a3, a4);
  return cc_disable_dit_with_sb(&v9);
}

uint64_t ccrng_sequence_init(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  v7 = timingsafe_enable_if_supported();
  *a1 = sequence_repeat_generate;
  a1[1] = a3;
  a1[2] = a2;
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t sequence_repeat_generate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a1 + 16))
  {
    return 4294967291;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      *(a3 + i) = *(*(a1 + 8) + i % *(a1 + 16));
    }
  }

  return 0;
}

uint64_t ccrng_sequence_non_repeat_init(uint64_t (**a1)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, unint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, unint64_t a2, uint64_t a3))
{
  *a1 = non_repeat_sequence_generate;
  a1[1] = a3;
  a1[2] = a2;
  return 0;
}

uint64_t non_repeat_sequence_generate(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 16);
  if (v3 < a2)
  {
    return 4294967286;
  }

  if (a2)
  {
    for (i = 0; i != a2; ++i)
    {
      *(a3 + i) = *(*(a1 + 8) + i);
    }

    v3 = *(a1 + 16);
  }

  v4 = 0;
  *(a1 + 8) += a2;
  *(a1 + 16) = v3 - a2;
  return v4;
}

uint64_t ccrsa_num_mr_iterations(unint64_t a1)
{
  v1 = 5;
  v2 = 16;
  if (a1 > 0x1FF)
  {
    v2 = 7;
  }

  if (a1 <= 0x3FF)
  {
    v1 = v2;
  }

  if (a1 <= 0x5FF)
  {
    return v1;
  }

  else
  {
    return 4;
  }
}

uint64_t ccrsa_num_mr_iterations_aux(unint64_t a1)
{
  v1 = 38;
  if (a1 > 0xAA)
  {
    v1 = 41;
  }

  if (a1 <= 0xC8)
  {
    return v1;
  }

  else
  {
    return 44;
  }
}

uint64_t ccrsa_import_pub(unint64_t *a1, uint64_t a2, unsigned __int8 *a3)
{
  if (ccder_decode_rsa_pub_x509(a1, a3, &a3[a2]))
  {
    return 0;
  }

  if (ccder_decode_rsa_pub(a1, a3, &a3[a2]))
  {
    return 0;
  }

  return 4294967289;
}

BOOL ccder_blob_reserve(void *a1, unint64_t a2, void *a3)
{
  v3 = a1[1];
  v4 = v3 - *a1;
  if (v4 < a2)
  {
    v5 = 0;
    v3 = 0;
  }

  else
  {
    v5 = v3 - a2;
    a1[1] = v3 - a2;
  }

  result = v4 >= a2;
  *a3 = v5;
  a3[1] = v3;
  return result;
}

void *ccec_get_cp(uint64_t a1)
{
  if (a1 <= 255)
  {
    if (a1 == 192)
    {
      return ccec_cp_192();
    }

    if (a1 == 224)
    {
      return ccec_cp_224();
    }
  }

  else
  {
    switch(a1)
    {
      case 256:
        return ccec_cp_256();
      case 384:
        return ccec_cp_384();
      case 521:
        return ccec_cp_521();
    }
  }

  return 0;
}

uint64_t ccec_keysize_is_supported(uint64_t a1)
{
  v4 = timingsafe_enable_if_supported();
  v2 = 1;
  if (a1 <= 255)
  {
    if (a1 != 192 && a1 != 224)
    {
      goto LABEL_8;
    }
  }

  else if (a1 != 256 && a1 != 384 && a1 != 521)
  {
LABEL_8:
    v2 = 0;
  }

  cc_disable_dit_with_sb(&v4);
  return v2;
}

uint64_t ccn_p224_mul_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4, unint64_t *a5)
{
  v10 = *(a1 + 16);
  v11 = (*(a1 + 24))(a1, 8);
  ccn_mul_ws(a1, 4uLL, v11, a4, a5);
  result = ccn_p224_redc_ws(a1, a2, a3, v11);
  *(a1 + 16) = v10;
  return result;
}

uint64_t ccn_p224_sqr_ws(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t *a4)
{
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 8);
  ccn_sqr_ws(a1, 4uLL, v9, a4);
  result = ccn_p224_redc_ws(a1, a2, a3, v9);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccn_p224_from_ws(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v8 = *(a1 + 16);
  v9 = (*(a1 + 24))(a1, 8);
  ccn_set(4, v9, a4);
  ccn_zero(4, (v9 + 32));
  result = ccn_p224_redc_ws(a1, a2, a3, v9);
  *(a1 + 16) = v8;
  return result;
}

uint64_t ccn_p224_redc_ws(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v8 = 0;
  v9 = a4[2];
  do
  {
    v10 = &a4[v8];
    v11 = a4[v8];
    v12 = a4[v8 + 1];
    v13 = -v11;
    v14 = (-v11 * 0xFFFFFFFFuLL) >> 64;
    v15 = 0xFFFFFFFF00000001 * v11;
    v16 = (-v11 * 0xFFFFFFFF00000000) >> 64;
    v17 = __CFADD__(v11 << 32, v12);
    v18 = (v11 << 32) + v12;
    if (v17)
    {
      ++v16;
    }

    v17 = __CFADD__(__CFADD__(v11, v13), v18);
    v19 = __CFADD__(v11, v13) + v18;
    if (v17)
    {
      ++v16;
    }

    v20 = (v13 * 0xFFFFFFFFFFFFFFFFLL) >> 64;
    v17 = __CFADD__(v11, v9);
    v21 = v11 + v9;
    if (v17)
    {
      v22 = v20 + 1;
    }

    else
    {
      v22 = v20;
    }

    v23 = v21 + v16;
    if (__CFADD__(v21, v16))
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v22;
    }

    v25 = v10[3];
    v17 = __CFADD__(v15, v25);
    v26 = v15 + v25;
    if (v17)
    {
      ++v14;
    }

    v17 = __CFADD__(v26, v24);
    v9 = v26 + v24;
    if (v17)
    {
      v27 = v14 + 1;
    }

    else
    {
      v27 = v14;
    }

    v10[2] = v23;
    v10[3] = v9;
    *v10 = v27;
    v10[1] = v19;
    ++v8;
  }

  while (v8 != 4);
  v28 = ccn_add_ws(a1, 4, a4 + 4, a4 + 4, a4);
  v29 = cczp_prime(a2);
  v30 = ccn_sub_ws(a1, 4, a4, a4 + 4, v29) ^ v28;

  return ccn_mux(4, v30, a3, a4 + 4, a4);
}

uint64_t ccec_affinify_jacobian_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  (*(a1 + 24))(a1, v6);
  v9 = cczp_inv_ws(a1, a2);
  cczp_sqr_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccec_affinify_homogeneous_ws(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = cczp_n(a2);
  if (!ccn_n(v7, (a4 + 16 * *a2)))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v7);
  v9 = cczp_inv_ws(a1, a2);
  if (!v9)
  {
    cczp_mul_ws(a1, a2);
    cczp_mul_ws(a1, a2);
    cczp_from_ws(a1, a2);
    cczp_from_ws(a1, a2);
  }

  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccec_affinify(void *a1, uint64_t a2, uint64_t a3)
{
  v12 = timingsafe_enable_if_supported();
  v6 = cc_malloc_clear(88 * *a1);
  v7 = 11 * *a1;
  v10[0] = v6;
  v10[1] = v7;
  v10[2] = 0;
  v10[3] = cc_ws_alloc;
  v11 = cc_ws_free;
  if (v6)
  {
    v8 = (*(a1[2] + 80))(v10, a1, a2, a3);
    v11(v10);
  }

  else
  {
    v8 = 4294967283;
  }

  cc_disable_dit_with_sb(&v12);
  return v8;
}

uint64_t ccec_affinify_x_only_ws(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (ccec_is_point_at_infinity(a2, a4))
  {
    return 4294967289;
  }

  v8 = *(a1 + 16);
  (*(a1 + 24))(a1, v6);
  cczp_sqr_ws(a1, a2);
  v9 = cczp_inv_ws(a1, a2);
  cczp_mul_ws(a1, a2);
  cczp_from_ws(a1, a2);
  *(a1 + 16) = v8;
  return v9;
}

uint64_t ccsae_generate_h2c_pt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const void *a6, size_t a7, char *a8)
{
  v35 = *MEMORY[0x29EDCA608];
  v33 = timingsafe_enable_if_supported();
  v13 = (*(a1 + 16))();
  v14 = *v13;
  v15 = sizeof_struct_cche_galois_key();
  v16 = sizeof_struct_ccpolyzp_po2cyc();
  v17 = (v15 + v16 + 3 * v14 * v16 - 1) / v16;
  v29[0] = cc_malloc_clear(16 * (v17 + v14) + 8 * (v17 + 18 * v14));
  v18 = *v13;
  v19 = sizeof_struct_cche_galois_key();
  v20 = sizeof_struct_ccpolyzp_po2cyc();
  v21 = (v19 + v20 + 3 * v18 * v20 - 1) / v20;
  v29[1] = v21 + 18 * v18 + 2 * (v21 + v18);
  v30 = 0;
  v31 = cc_ws_alloc;
  v32 = cc_ws_free;
  if (v29[0])
  {
    v22 = 4294967289;
    v23 = cc_ws_free;
    if (a5 <= 0x40 && a7 <= 0x40)
    {
      v24 = (*(a1 + 16))();
      v25 = cc_ws_alloc(v29, (24 * *v24 + 23) >> 3);
      memset(v34, 0, sizeof(v34));
      __memcpy_chk();
      memcpy(v34 + a5, a6, a7);
      v26 = cch2c_ws(v29, a1, a3);
      if (!v26)
      {
        v26 = ccec_export_pub(v25, a8);
      }

      v22 = v26;
      v30 = 0;
      v23 = v32;
    }

    v23(v29);
  }

  else
  {
    v22 = 4294967283;
  }

  cc_disable_dit_with_sb(&v33);
  return v22;
}

uint64_t ccmgf_internal(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char *a5)
{
  v20 = *MEMORY[0x29EDCA608];
  v8 = MEMORY[0x2A1C7C4A8](a1);
  v10 = &__src[-v9 - 8];
  v12 = v11 / *v8;
  v13 = v12 * *v8;
  v15 = (v14 + v13);
  v16 = v11 - v13;
  if (v11 != v13)
  {
    ccdigest_init_internal(a1, v10);
    ccdigest_update_internal(a1, v10, a4, a5);
    HIDWORD(v18) = bswap32(v12);
    ccdigest_update_internal(a1, v10, 4uLL, &v18 + 4);
    (*(a1 + 56))(a1, v10, __src);
    memmove(v15, __src, v16);
  }

  while (v12)
  {
    LODWORD(v12) = v12 - 1;
    v15 -= *a1;
    ccdigest_init_internal(a1, v10);
    ccdigest_update_internal(a1, v10, a4, a5);
    HIDWORD(v18) = bswap32(v12);
    ccdigest_update_internal(a1, v10, 4uLL, &v18 + 4);
    (*(a1 + 56))(a1, v10, v15);
  }

  cc_clear(*(a1 + 8) + *(a1 + 16) + 12, v10);
  cc_clear(0x40uLL, __src);
  return 0;
}

uint64_t ccmgf(uint64_t a1, uint64_t a2, uint64_t a3, size_t a4, char *a5)
{
  v11 = timingsafe_enable_if_supported();
  ccmgf_internal(a1, a2, a3, a4, a5);
  cc_disable_dit_with_sb(&v11);
  return 0;
}

void *ccaes_ccm_encrypt_mode()
{
  v0 = ccaes_ecb_encrypt_mode();
  ccmode_factory_ccm_encrypt(&ccm_encrypt_info, v0);
  return &ccm_encrypt_info;
}

BOOL ccn_neg(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (a1)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *a3++;
      *v3++ = ~v5;
      --v4;
    }

    while (v4);
  }

  return ccn_add1_ws(0, a1, a2, a2, 1);
}

uint64_t ccrsa_init_pub(uint64_t *a1, void *a2, void *a3)
{
  v6 = 5 * *a1 + 3;
  v10[0] = cc_malloc_clear(8 * v6);
  v10[1] = v6;
  v11 = 0;
  v12 = cc_ws_alloc;
  v13 = cc_ws_free;
  if (!v10[0])
  {
    return 4294967283;
  }

  v7 = *a1;
  inited = cczp_mm_init_ws(v10, a1, *a1, a2);
  ccn_set(v7, &a1[2 * *a1 + 4], a3);
  v11 = 0;
  v13(v10);
  return inited;
}

unint64_t ccdh_generate_private_key_bitlen(void *a1)
{
  if (ccdh_gp_order_bitlen(a1))
  {

    return ccdh_gp_order_bitlen(a1);
  }

  else if (ccdh_gp_l(a1))
  {

    return ccdh_gp_l(a1);
  }

  else
  {

    return cczp_bitlen(a1);
  }
}

uint64_t ccentropy_digest_init(uint64_t a1, uint64_t a2, int a3)
{
  v7 = timingsafe_enable_if_supported();
  *a1 = entropy_digest_info;
  *(a1 + 8) = a2;
  *(a1 + 376) = a3;
  *(a1 + 380) = 0;
  ccdigest_init_internal(a2, (a1 + 16));
  cc_disable_dit_with_sb(&v7);
  return 0;
}

uint64_t ccentropy_digest_get_seed(uint64_t a1, size_t a2, void *a3)
{
  v9 = *MEMORY[0x29EDCA608];
  v3 = *(a1 + 8);
  if (*v3 < a2)
  {
    return 4294967291;
  }

  if (*(a1 + 380) < *(a1 + 376))
  {
    return 4294967286;
  }

  *(a1 + 380) = 0;
  (*(v3 + 56))(v3, a1 + 16, __src);
  ccdigest_init_internal(v3, (a1 + 16));
  memcpy(a3, __src, a2);
  cc_clear(0x40uLL, __src);
  return 0;
}

uint64_t ccentropy_digest_add_entropy(uint64_t a1, int a2, size_t a3, char *a4, BOOL *a5)
{
  v5 = *(a1 + 380);
  v6 = __CFADD__(v5, a2);
  v7 = v5 + a2;
  if (v6)
  {
    v7 = -1;
  }

  *(a1 + 380) = v7;
  if (a5)
  {
    *a5 = v7 >= *(a1 + 376);
  }

  ccdigest_update_internal(*(a1 + 8), (a1 + 16), a3, a4);
  return 0;
}

uint64_t ccrng_getentropy_generate(int a1, unint64_t a2, char *buffer)
{
  if (a2)
  {
    v4 = a2;
    do
    {
      if (v4 >= 0x100)
      {
        v5 = 256;
      }

      else
      {
        v5 = v4;
      }

      if (getentropy(buffer, v5) == -1)
      {
        ccrng_getentropy_generate_cold_1();
      }

      buffer += v5;
      v4 -= v5;
    }

    while (v4);
  }

  return 0;
}

uint64_t ccrng_drbg_init(uint64_t (**a1)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a2)(uint64_t a1, uint64_t a2, uint64_t a3), uint64_t (*a3)(uint64_t a1, uint64_t a2, uint64_t a3))
{
  v8 = timingsafe_enable_if_supported();
  inited = ccdrbg_init_internal(a2);
  if (!inited)
  {
    *a1 = generate_2;
    a1[1] = a2;
    a1[2] = a3;
  }

  cc_disable_dit_with_sb(&v8);
  return inited;
}