uint64_t mbedtls_ecp_point_read_binary(uint64_t a1, uint64_t *a2, _BYTE *a3, unint64_t a4)
{
  binary = -20096;
  if (!a4)
  {
    return -20352;
  }

  v5 = mbedtls_mpi_size(a1 + 8);
  if (mbedtls_ecp_get_type(a1) != 1)
  {
    return binary;
  }

  if (!*a3)
  {
    if (a4 == 1)
    {
      return mbedtls_ecp_set_zero(a2);
    }

    else
    {
      return -20352;
    }
  }

  if (a4 < v5 + 1)
  {
    return -20352;
  }

  binary = mbedtls_mpi_read_binary(a2, (a3 + 1), v5);
  if (binary || (binary = mbedtls_mpi_lset((a2 + 4), 1uLL)) != 0)
  {
    return binary;
  }

  if (*a3 == 4)
  {
    if (a4 == 2 * v5 + 1)
    {
      return mbedtls_mpi_read_binary((a2 + 2), &a3[v5 + 1], v5);
    }

    else
    {
      return -20352;
    }
  }

  else if (*a3 == 2 || *a3 == 3)
  {
    if (a4 == v5 + 1)
    {
      return mbedtls_ecp_sw_derive_y(a1, a2, a2 + 2, *a3 & 1);
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_sw_derive_y(uint64_t a1, uint64_t *a2, uint64_t *a3, int a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  if (mbedtls_mpi_get_bit(a1 + 8, 0) == 1 && mbedtls_mpi_get_bit(v11 + 8, 1uLL) == 1)
  {
    v7 = 0;
    v6[0] = 0;
    v6[1] = 0;
    mbedtls_mpi_init(v6);
    v7 = ecp_sw_rhs(v11, v9, v10);
    if (!v7)
    {
      v7 = mbedtls_mpi_add_int(v6, v11 + 8, 1uLL);
      if (!v7)
      {
        v7 = mbedtls_mpi_shift_r(v6, 2uLL);
        if (!v7)
        {
          v7 = mbedtls_mpi_exp_mod(v9, v9, v6, (v11 + 8), 0);
          if (!v7)
          {
            bit = mbedtls_mpi_get_bit(v9, 0);
            if (bit != v8)
            {
              v7 = mbedtls_mpi_sub_mpi(v9, v11 + 8, v9);
            }
          }
        }
      }
    }

    mbedtls_mpi_free(v6);
    return v7;
  }

  else
  {
    return -20096;
  }
}

uint64_t mbedtls_ecp_tls_read_point(uint64_t a1, uint64_t *a2, void *a3, unint64_t a4)
{
  if (a4 >= 2)
  {
    v4 = (*a3)++;
    v7 = *v4;
    if (*v4 && v7 <= a4 - 1)
    {
      v6 = *a3;
      *a3 += v7;
      return mbedtls_ecp_point_read_binary(a1, a2, v6, v7);
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_tls_write_point(uint64_t a1, uint64_t a2, unsigned int a3, unint64_t *a4, _BYTE *a5, uint64_t a6)
{
  if (a3 < 2)
  {
    if (a6)
    {
      v7 = mbedtls_ecp_point_write_binary(a1, a2, a3, a4, a5 + 1, a6 - 1);
      if (v7)
      {
        return v7;
      }

      else
      {
        *a5 = (*a4)++;
        return 0;
      }
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_tls_read_group(uint64_t *a1, _WORD **a2, unint64_t a3)
{
  v8 = a1;
  v7 = a2;
  v6 = a3;
  v5 = -110;
  v4 = 0;
  v5 = mbedtls_ecp_tls_read_group_id(&v4, a2, a3);
  if (v5)
  {
    return v5;
  }

  else
  {
    return mbedtls_ecp_group_load(v8, v4);
  }
}

uint64_t mbedtls_ecp_tls_read_group_id(_DWORD *a1, _WORD **a2, unint64_t a3)
{
  if (a3 >= 3)
  {
    v3 = *a2;
    *a2 = (*a2 + 1);
    if (*v3 == 3)
    {
      v8 = *(*a2)++;
      v5 = mbedtls_ecp_curve_info_from_tls_id(bswap32(v8) >> 16);
      if (v5)
      {
        *a1 = *v5;
        return 0;
      }

      else
      {
        return -20096;
      }
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_tls_write_group(int *a1, unint64_t *a2, _BYTE *a3, unint64_t a4)
{
  if (mbedtls_ecp_curve_info_from_grp_id(*a1))
  {
    *a2 = 3;
    if (a4 >= *a2)
    {
      *a3 = 3;
      __memcpy_chk();
      return 0;
    }

    else
    {
      return -20224;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_mul_restartable(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    return ecp_mul_restartable_internal(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_mul_restartable_internal(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  v8 = mbedtls_ecp_check_privkey(a1, a3);
  if (!v8)
  {
    v8 = mbedtls_ecp_check_pubkey(a1, a4);
    if (!v8)
    {
      v8 = -20352;
      if (mbedtls_ecp_get_type(a1) == 1)
      {
        return ecp_mul_comb(a1, a2, a3, a4, a5, a6, a7);
      }
    }
  }

  return v8;
}

uint64_t mbedtls_ecp_muladd_restartable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t *a6, uint64_t a7)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  v10 = -110;
  memset(__b, 0, sizeof(__b));
  v8 = v16;
  if (mbedtls_ecp_get_type(v17) == 1)
  {
    mbedtls_ecp_point_init(__b);
    mpi_init_many(v19, 4);
    v10 = mbedtls_ecp_mul_shortcuts(v17, __b, v15, v14, v11);
    if (!v10)
    {
      v10 = mbedtls_ecp_mul_shortcuts(v17, v8, v13, v12, v11);
      if (!v10)
      {
        v10 = ecp_add_mixed(v17, v8, __b, v8, v19);
        if (!v10)
        {
          v10 = ecp_normalize_jac(v17, v8);
        }
      }
    }

    mpi_free_many(v19, 4);
    mbedtls_ecp_point_free(__b);
    return v10;
  }

  else
  {
    return -20096;
  }
}

uint64_t mpi_init_many(uint64_t result, uint64_t a2)
{
  for (i = result; a2--; i += 16)
  {
    v3 = i;
    result = mbedtls_mpi_init(v3);
  }

  return result;
}

uint64_t mbedtls_ecp_mul_shortcuts(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  v10 = a4;
  v9 = a5;
  v8 = -110;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v7);
  if (mbedtls_mpi_cmp_int(v11, 0))
  {
    if (mbedtls_mpi_cmp_int(v11, 1uLL))
    {
      if (mbedtls_mpi_cmp_int(v11, 0xFFFFFFFFFFFFFFFFLL))
      {
        v8 = ecp_mul_restartable_internal(v13, v12, v11, v10, 0, 0, v9);
      }

      else
      {
        v8 = mbedtls_ecp_check_pubkey(v13, v10);
        if (!v8)
        {
          v8 = mbedtls_ecp_copy(v12, v10);
          if (!v8)
          {
            v6 = mbedtls_mpi_cmp_int((v12 + 2), 0) != 0;
            v8 = mbedtls_mpi_sub_mpi(v7, v13 + 8, (v12 + 2));
            if (!v8)
            {
              v8 = mbedtls_mpi_safe_cond_assign((v12 + 2), v7, v6);
            }
          }
        }
      }
    }

    else
    {
      v8 = mbedtls_ecp_check_pubkey(v13, v10);
      if (!v8)
      {
        v8 = mbedtls_ecp_copy(v12, v10);
      }
    }
  }

  else
  {
    v8 = mbedtls_ecp_check_pubkey(v13, v10);
    if (!v8)
    {
      v8 = mbedtls_ecp_set_zero(v12);
    }
  }

  mbedtls_mpi_free(v7);
  return v8;
}

uint64_t ecp_add_mixed(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v7 = (a2 + 2);
  v6 = a2 + 4;
  if (a4[4])
  {
    if (mbedtls_mpi_cmp_int((a3 + 4), 0))
    {
      if (mbedtls_mpi_cmp_int((a4 + 4), 0))
      {
        if (mbedtls_mpi_cmp_int((a4 + 4), 1uLL))
        {
          return -20352;
        }

        else
        {
          v9 = mbedtls_mpi_mul_mod(a1, a5, a3 + 4, a3 + 4);
          if (!v9)
          {
            v9 = mbedtls_mpi_mul_mod(a1, a5 + 2, a5, a3 + 4);
            if (!v9)
            {
              v9 = mbedtls_mpi_mul_mod(a1, a5, a5, a4);
              if (!v9)
              {
                v9 = mbedtls_mpi_mul_mod(a1, a5 + 2, a5 + 2, a4 + 2);
                if (!v9)
                {
                  v9 = mbedtls_mpi_sub_mod(a1, a5, a5, a3);
                  if (!v9)
                  {
                    v9 = mbedtls_mpi_sub_mod(a1, (a5 + 2), (a5 + 2), (a3 + 2));
                    if (!v9)
                    {
                      if (mbedtls_mpi_cmp_int(a5, 0))
                      {
                        v9 = mbedtls_mpi_mul_mod(a1, v6, a3 + 4, a5);
                        if (!v9)
                        {
                          v9 = mbedtls_mpi_mul_mod(a1, a5 + 4, a5, a5);
                          if (!v9)
                          {
                            v9 = mbedtls_mpi_mul_mod(a1, a5 + 6, a5 + 4, a5);
                            if (!v9)
                            {
                              v9 = mbedtls_mpi_mul_mod(a1, a5 + 4, a5 + 4, a3);
                              if (!v9)
                              {
                                v9 = mbedtls_mpi_copy(a5, (a5 + 4));
                                if (!v9)
                                {
                                  v9 = mbedtls_mpi_shift_l_mod(a1, a5, 1);
                                  if (!v9)
                                  {
                                    v9 = mbedtls_mpi_mul_mod(a1, a2, a5 + 2, a5 + 2);
                                    if (!v9)
                                    {
                                      v9 = mbedtls_mpi_sub_mod(a1, a2, a2, a5);
                                      if (!v9)
                                      {
                                        v9 = mbedtls_mpi_sub_mod(a1, a2, a2, (a5 + 6));
                                        if (!v9)
                                        {
                                          v9 = mbedtls_mpi_sub_mod(a1, (a5 + 4), (a5 + 4), a2);
                                          if (!v9)
                                          {
                                            v9 = mbedtls_mpi_mul_mod(a1, a5 + 4, a5 + 4, a5 + 2);
                                            if (!v9)
                                            {
                                              v9 = mbedtls_mpi_mul_mod(a1, a5 + 6, a5 + 6, a3 + 2);
                                              if (!v9)
                                              {
                                                return mbedtls_mpi_sub_mod(a1, v7, (a5 + 4), (a5 + 6));
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

                      else if (mbedtls_mpi_cmp_int((a5 + 2), 0))
                      {
                        return mbedtls_ecp_set_zero(a2);
                      }

                      else
                      {
                        return ecp_double_jac(a1, a2, a3, a5);
                      }
                    }
                  }
                }
              }
            }
          }

          return v9;
        }
      }

      else
      {
        return mbedtls_ecp_copy(a2, a3);
      }
    }

    else
    {
      return mbedtls_ecp_copy(a2, a4);
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_normalize_jac(uint64_t a1, uint64_t *a2)
{
  v6 = a1;
  v5 = a2;
  if (mbedtls_mpi_cmp_int((a2 + 4), 0))
  {
    v4 = -110;
    v3[0] = 0;
    v3[1] = 0;
    mbedtls_mpi_init(v3);
    v4 = mbedtls_mpi_inv_mod(v3, (v5 + 4), v6 + 8);
    if (!v4)
    {
      v4 = mbedtls_mpi_mul_mod(v6, v5 + 2, v5 + 2, v3);
      if (!v4)
      {
        v4 = mbedtls_mpi_mul_mod(v6, v3, v3, v3);
        if (!v4)
        {
          v4 = mbedtls_mpi_mul_mod(v6, v5, v5, v3);
          if (!v4)
          {
            v4 = mbedtls_mpi_mul_mod(v6, v5 + 2, v5 + 2, v3);
            if (!v4)
            {
              v4 = mbedtls_mpi_lset((v5 + 4), 1uLL);
            }
          }
        }
      }
    }

    mbedtls_mpi_free(v3);
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t mpi_free_many(uint64_t result, uint64_t a2)
{
  for (i = result; a2--; i += 16)
  {
    v3 = i;
    result = mbedtls_mpi_free(v3);
  }

  return result;
}

uint64_t mbedtls_ecp_check_pubkey(uint64_t a1, uint64_t *a2)
{
  if (mbedtls_mpi_cmp_int((a2 + 4), 1uLL))
  {
    return -19584;
  }

  else if (mbedtls_ecp_get_type(a1) == 1)
  {
    return ecp_check_pubkey_sw(a1, a2);
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_check_pubkey_sw(uint64_t a1, uint64_t *a2)
{
  v7 = a1;
  v6 = a2;
  v5 = -110;
  v4[0] = 0;
  v4[1] = 0;
  v3[0] = 0;
  v3[1] = 0;
  if ((mbedtls_mpi_cmp_int(a2, 0) & 0x80000000) == 0 && (mbedtls_mpi_cmp_int((v6 + 2), 0) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(v6, v7 + 8) & 0x80000000) != 0 && (mbedtls_mpi_cmp_mpi((v6 + 2), v7 + 8) & 0x80000000) != 0)
  {
    mbedtls_mpi_init(v4);
    mbedtls_mpi_init(v3);
    v5 = mbedtls_mpi_mul_mod(v7, v4, v6 + 2, v6 + 2);
    if (!v5)
    {
      v5 = ecp_sw_rhs(v7, v3, v6);
      if (!v5)
      {
        if (mbedtls_mpi_cmp_mpi(v4, v3))
        {
          v5 = -19584;
        }
      }
    }

    mbedtls_mpi_free(v4);
    mbedtls_mpi_free(v3);
    return v5;
  }

  else
  {
    return -19584;
  }
}

uint64_t mbedtls_ecp_check_privkey(uint64_t a1, uint64_t a2)
{
  if (mbedtls_ecp_get_type(a1) == 1)
  {
    if ((mbedtls_mpi_cmp_int(a2, 1uLL) & 0x80000000) == 0 && (mbedtls_mpi_cmp_mpi(a2, a1 + 104) & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return -19584;
    }
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_gen_privkey(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  if (mbedtls_ecp_get_type(a1) == 1)
  {
    return mbedtls_ecp_gen_privkey_sw(a1 + 104, a2, a3, a4);
  }

  else
  {
    return -20352;
  }
}

uint64_t mbedtls_ecp_gen_privkey_sw(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_mpi_random(a2, 1uLL, a1, a3, a4);
  if (v5 == -14)
  {
    return -19712;
  }

  else
  {
    return v5;
  }
}

uint64_t mbedtls_ecp_gen_keypair_base(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6)
{
  v7 = mbedtls_ecp_gen_privkey(a1, a3, a5, a6);
  if (!v7)
  {
    return mbedtls_ecp_mul(a1, a4, a3, a2, a5, a6);
  }

  return v7;
}

uint64_t mbedtls_ecp_gen_key(int a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v5 = mbedtls_ecp_group_load(a2, a1);
  if (v5)
  {
    return v5;
  }

  else
  {
    return mbedtls_ecp_gen_keypair(a2, (a2 + 24), a2 + 26, a3, a4);
  }
}

uint64_t mbedtls_ecp_set_public_key(int a1, uint64_t *a2, uint64_t a3)
{
  if (*a2)
  {
    if (*a2 != a1)
    {
      return -20352;
    }

    return mbedtls_ecp_copy((a2 + 26), a3);
  }

  v4 = mbedtls_ecp_group_load(a2, a1);
  if (!v4)
  {
    return mbedtls_ecp_copy((a2 + 26), a3);
  }

  return v4;
}

uint64_t mbedtls_ecp_read_key(int a1, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v5 = mbedtls_ecp_group_load(a2, a1);
  if (v5)
  {
    return v5;
  }

  else
  {
    binary = -20096;
    if ((mbedtls_ecp_get_type(a2) != 1 || (binary = mbedtls_mpi_read_binary((a2 + 24), a3, a4)) == 0) && !binary)
    {
      binary = mbedtls_ecp_check_privkey(a2, (a2 + 24));
    }

    if (binary)
    {
      mbedtls_mpi_free((a2 + 24));
    }

    return binary;
  }
}

uint64_t mbedtls_ecp_write_key(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = -110;
  if (mbedtls_ecp_get_type(a1) == 1)
  {
    return mbedtls_mpi_write_binary(a1 + 192, a2, a3);
  }

  return v4;
}

uint64_t mbedtls_ecp_write_key_ext(uint64_t a1, unint64_t *a2, unint64_t a3, unint64_t a4)
{
  v5 = (*(a1 + 128) + 7) / 8uLL;
  if (v5 <= a4)
  {
    *a2 = v5;
    if (*(a1 + 202))
    {
      if (mbedtls_ecp_get_type(a1) == 1)
      {
        return mbedtls_mpi_write_binary(a1 + 192, a3, v5);
      }

      else
      {
        return -110;
      }
    }

    else
    {
      return -20352;
    }
  }

  else
  {
    *a2 = 0;
    return -20224;
  }
}

uint64_t mbedtls_ecp_check_pub_priv(_DWORD *a1, unsigned int *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = -110;
  memset(__b, 0, sizeof(__b));
  memset(v5, 0, sizeof(v5));
  if (!*v11 || *v11 != *v10 || mbedtls_mpi_cmp_mpi((v11 + 52), (v10 + 52)) || mbedtls_mpi_cmp_mpi((v11 + 56), (v10 + 56)) || mbedtls_mpi_cmp_mpi((v11 + 60), (v10 + 60)))
  {
    return -20352;
  }

  else
  {
    mbedtls_ecp_point_init(__b);
    mbedtls_ecp_group_init(v5);
    mbedtls_ecp_group_copy(v5, v10);
    v7 = mbedtls_ecp_mul(v5, __b, (v10 + 48), v10 + 7, v9, v8);
    if (!v7 && (mbedtls_mpi_cmp_mpi(__b, (v10 + 52)) || mbedtls_mpi_cmp_mpi(&__b[2], (v10 + 56)) || mbedtls_mpi_cmp_mpi(&__b[4], (v10 + 60))))
    {
      v7 = -20352;
    }

    mbedtls_ecp_point_free(__b);
    mbedtls_ecp_group_free(v5);
    return v7;
  }
}

uint64_t mbedtls_ecp_export(unsigned int *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (a2 && (v5 = mbedtls_ecp_group_copy(a2, a1)) != 0)
  {
    return v5;
  }

  else if (a3 && (v6 = mbedtls_mpi_copy(a3, (a1 + 48))) != 0)
  {
    return v6;
  }

  else if (a4 && (v7 = mbedtls_ecp_copy(a4, (a1 + 52))) != 0)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

uint64_t ecp_sw_rhs(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = mbedtls_mpi_mul_mod(a1, a2, a3, a3);
  if (!v4)
  {
    if (mbedtls_ecp_group_a_is_minus_3(a1))
    {
      v4 = mbedtls_mpi_sub_int_mod(a1, a2, a2, 3uLL);
      if (v4)
      {
        return v4;
      }
    }

    else
    {
      v4 = mbedtls_mpi_add_mod(a1, a2, a2, a1 + 24);
      if (v4)
      {
        return v4;
      }
    }

    v4 = mbedtls_mpi_mul_mod(a1, a2, a2, a3);
    if (!v4)
    {
      return mbedtls_mpi_add_mod(a1, a2, a2, a1 + 40);
    }
  }

  return v4;
}

uint64_t mbedtls_mpi_mul_mod(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v5 = mbedtls_mpi_mul_mpi(a2, a3, a4);
  if (!v5)
  {
    return ecp_modp(a2, a1);
  }

  return v5;
}

uint64_t mbedtls_mpi_sub_int_mod(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  for (i = mbedtls_mpi_sub_int(a2, a3, a4); !i; i = mbedtls_mpi_add_mpi(a2, a2, a1 + 8))
  {
    v5 = 0;
    if (*(a2 + 8) < 0)
    {
      v5 = mbedtls_mpi_cmp_int(a2, 0) != 0;
    }

    if (!v5)
    {
      break;
    }
  }

  return i;
}

uint64_t mbedtls_mpi_add_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_add_mpi(a2, a3, a4); !i; i = mbedtls_mpi_sub_abs(a2, a2, a1 + 8))
  {
    if ((mbedtls_mpi_cmp_mpi(a2, a1 + 8) & 0x80000000) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t ecp_modp(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 144))
  {
    if (*(a1 + 8) < 0 && mbedtls_mpi_cmp_int(a1, 0) || mbedtls_mpi_bitlen(a1) > 2 * *(a2 + 120))
    {
      return -20352;
    }

    else
    {
      v4 = (*(a2 + 144))(a1);
      if (!v4)
      {
        while (1)
        {
          v3 = 0;
          if (*(a1 + 8) < 0)
          {
            v3 = mbedtls_mpi_cmp_int(a1, 0) != 0;
          }

          if (!v3)
          {
            break;
          }

          v4 = mbedtls_mpi_add_mpi(a1, a1, a2 + 8);
          if (v4)
          {
            return v4;
          }
        }

        do
        {
          if ((mbedtls_mpi_cmp_mpi(a1, a2 + 8) & 0x80000000) != 0)
          {
            break;
          }

          v4 = mbedtls_mpi_sub_abs(a1, a1, a2 + 8);
        }

        while (!v4);
      }

      return v4;
    }
  }

  else
  {
    return mbedtls_mpi_mod_mpi(a1, a1, a2 + 8);
  }
}

uint64_t ecp_mul_comb(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6, uint64_t a7)
{
  v13 = ecp_pick_window_size(a1, 0);
  v9 = 1 << (v13 - 1);
  v10 = (*(a1 + 128) + v13 - 1) / v13;
  v8 = mbedtls_calloc(v9, 48);
  if (v8)
  {
    for (i = 0; i < v9; ++i)
    {
      mbedtls_ecp_point_init(v8 + 48 * i);
    }

    v14 = ecp_precompute_comb(a1, v8, a4, v13, v10);
    if (!v14)
    {
      v14 = ecp_mul_comb_after_precomp(a1, a2, a3, v8, v9, v13, v10, a5, a6, a7);
    }
  }

  else
  {
    v14 = -19840;
  }

  if (v8 == *(a1 + 176))
  {
    v8 = 0;
  }

  if (v8)
  {
    for (j = 0; j < v9; ++j)
    {
      mbedtls_ecp_point_free(v8 + 48 * j);
    }

    mbedtls_free(v8);
  }

  if (v14)
  {
    mbedtls_ecp_point_free(a2);
  }

  return v14;
}

uint64_t ecp_pick_window_size(uint64_t a1, char a2)
{
  if (*(a1 + 128) < 0x180uLL)
  {
    v2 = 4;
  }

  else
  {
    v2 = 5;
  }

  v4 = v2;
  if (!a2 || (v4 = v2 + 1, !mbedtls_aes_rk_offset()))
  {
    if (v4 > 2u)
    {
      v4 = 2;
    }
  }

  if (v4 >= *(a1 + 128))
  {
    return 2;
  }

  return v4;
}

uint64_t ecp_precompute_comb(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unint64_t a5)
{
  v9 = 1 << (a4 - 1);
  v25 = 0;
  mpi_init_many(v24, 4);
  v18 = mbedtls_ecp_copy(a2, a3);
  if (!v18)
  {
    for (i = 0; i < a5 * (a4 - 1); ++i)
    {
      v14 = 1 << (i / a5);
      v8 = (a2 + 48 * v14);
      if (!(i % a5))
      {
        v18 = mbedtls_ecp_copy(v8, a2 + 48 * (v14 >> 1));
        if (v18)
        {
          goto LABEL_26;
        }
      }

      v18 = ecp_double_jac(a1, v8, v8, v24);
      if (v18)
      {
        goto LABEL_26;
      }
    }

    v11 = 0;
    for (j = 1; j < v9; j *= 2)
    {
      v5 = v11++;
      (&v25)[v5] = (a2 + 48 * j);
    }

    v18 = ecp_normalize_jac_many(a1, &v25, v11);
    if (!v18)
    {
      for (k = 1; k < v9; k *= 2)
      {
        v12 = k;
        while (v12--)
        {
          v18 = ecp_add_mixed(a1, (a2 + 48 * (k + v12)), (a2 + 48 * v12), (a2 + 48 * k), v24);
          if (v18)
          {
            goto LABEL_26;
          }
        }
      }

      for (m = 0; m + 1 < v9; ++m)
      {
        (&v25)[m] = (a2 + 48 * m + 48);
      }

      v18 = ecp_normalize_jac_many(a1, &v25, m);
      if (!v18)
      {
        for (n = 0; n < v9; ++n)
        {
          mbedtls_mpi_free(a2 + 48 * n + 32);
        }
      }
    }
  }

LABEL_26:
  mpi_free_many(v24, 4);
  return v18;
}

uint64_t ecp_mul_comb_after_precomp(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5, unsigned __int8 a6, unint64_t a7, uint64_t (*a8)(uint64_t, uint64_t, unint64_t), uint64_t a9, uint64_t a10)
{
  v23 = a1;
  v22 = a2;
  v21 = a3;
  v20 = a4;
  v19 = a5;
  v18 = a6;
  v17 = a7;
  v16 = a8;
  v15 = a9;
  v14 = a10;
  v13 = -110;
  v12 = 0;
  v13 = ecp_comb_recode_scalar(a1, a3, v24, a7, a6, &v12);
  if (!v13)
  {
    v13 = ecp_mul_comb_core(v23, a2, v20, v19, v24, v17, v16, v15, v14);
    if (!v13)
    {
      v13 = ecp_safe_invert_jac(v23, a2, v12);
      if (!v13)
      {
        if (!v16)
        {
          return ecp_normalize_jac(v23, a2);
        }

        v13 = ecp_randomize_jac(v23, a2, v16, v15);
        if (!v13)
        {
          return ecp_normalize_jac(v23, a2);
        }
      }
    }
  }

  return v13;
}

uint64_t ecp_double_jac(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (mbedtls_ecp_group_a_is_minus_3(a1))
  {
    v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3 + 4, a3 + 4);
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_add_mod(a1, (a4 + 4), a3, (a4 + 2));
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_sub_mod(a1, (a4 + 6), a3, (a4 + 2));
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a4 + 4, a4 + 6);
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_mul_int_mod(a1, a4, (a4 + 2), 3);
    if (v5)
    {
      return v5;
    }
  }

  else
  {
    v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3, a3);
    if (v5)
    {
      return v5;
    }

    v5 = mbedtls_mpi_mul_int_mod(a1, a4, (a4 + 2), 3);
    if (v5)
    {
      return v5;
    }

    if (mbedtls_mpi_cmp_int(a1 + 24, 0))
    {
      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3 + 4, a3 + 4);
      if (v5)
      {
        return v5;
      }

      v5 = mbedtls_mpi_mul_mod(a1, a4 + 4, a4 + 2, a4 + 2);
      if (v5)
      {
        return v5;
      }

      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a4 + 4, (a1 + 24));
      if (v5)
      {
        return v5;
      }

      v5 = mbedtls_mpi_add_mod(a1, a4, a4, (a4 + 2));
      if (v5)
      {
        return v5;
      }
    }
  }

  v5 = mbedtls_mpi_mul_mod(a1, a4 + 4, a3 + 2, a3 + 2);
  if (!v5)
  {
    v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 4), 1);
    if (!v5)
    {
      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a3, a4 + 4);
      if (!v5)
      {
        v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 2), 1);
        if (!v5)
        {
          v5 = mbedtls_mpi_mul_mod(a1, a4 + 6, a4 + 4, a4 + 4);
          if (!v5)
          {
            v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 6), 1);
            if (!v5)
            {
              v5 = mbedtls_mpi_mul_mod(a1, a4 + 4, a4, a4);
              if (!v5)
              {
                v5 = mbedtls_mpi_sub_mod(a1, (a4 + 4), (a4 + 4), (a4 + 2));
                if (!v5)
                {
                  v5 = mbedtls_mpi_sub_mod(a1, (a4 + 4), (a4 + 4), (a4 + 2));
                  if (!v5)
                  {
                    v5 = mbedtls_mpi_sub_mod(a1, (a4 + 2), (a4 + 2), (a4 + 4));
                    if (!v5)
                    {
                      v5 = mbedtls_mpi_mul_mod(a1, a4 + 2, a4 + 2, a4);
                      if (!v5)
                      {
                        v5 = mbedtls_mpi_sub_mod(a1, (a4 + 2), (a4 + 2), (a4 + 6));
                        if (!v5)
                        {
                          v5 = mbedtls_mpi_mul_mod(a1, a4 + 6, a3 + 2, a3 + 4);
                          if (!v5)
                          {
                            v5 = mbedtls_mpi_shift_l_mod(a1, (a4 + 6), 1);
                            if (!v5)
                            {
                              v5 = mbedtls_mpi_copy(a2, (a4 + 4));
                              if (!v5)
                              {
                                v5 = mbedtls_mpi_copy(a2 + 16, (a4 + 2));
                                if (!v5)
                                {
                                  return mbedtls_mpi_copy(a2 + 32, (a4 + 6));
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

  return v5;
}

uint64_t ecp_normalize_jac_many(uint64_t a1, uint64_t **a2, unint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  if (a3 >= 2)
  {
    v7 = -110;
    i = 0;
    v4[0] = 0;
    v4[1] = 0;
    v5 = mbedtls_calloc(v8, 16);
    if (v5)
    {
      mbedtls_mpi_init(v4);
      mpi_init_many(v5, v8);
      v7 = mbedtls_mpi_copy(v5, (*v9 + 4));
      if (!v7)
      {
        for (i = 1; i < v8; ++i)
        {
          v7 = mbedtls_mpi_mul_mod(v10, (v5 + 16 * i), (v5 + 16 * (i - 1)), v9[i] + 4);
          if (v7)
          {
            goto LABEL_26;
          }
        }

        v7 = mbedtls_mpi_inv_mod(v5 + 16 * (v8 - 1), v5 + 16 * (v8 - 1), v10 + 8);
        if (!v7)
        {
          for (i = v8 - 1; ; --i)
          {
            if (i)
            {
              v7 = mbedtls_mpi_mul_mod(v10, v4, (v5 + 16 * i), (v5 + 16 * (i - 1)));
              if (v7)
              {
                break;
              }

              v7 = mbedtls_mpi_mul_mod(v10, (v5 + 16 * (i - 1)), (v5 + 16 * i), v9[i] + 4);
              if (v7)
              {
                break;
              }
            }

            else
            {
              v7 = mbedtls_mpi_copy(v4, v5);
              if (v7)
              {
                break;
              }
            }

            v7 = mbedtls_mpi_mul_mod(v10, v9[i] + 2, v9[i] + 2, v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_mul_mod(v10, v4, v4, v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_mul_mod(v10, v9[i], v9[i], v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_mul_mod(v10, v9[i] + 2, v9[i] + 2, v4);
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_shrink(v9[i], *(v10 + 18));
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_shrink((v9[i] + 2), *(v10 + 18));
            if (v7)
            {
              break;
            }

            v7 = mbedtls_mpi_lset((v9[i] + 4), 1uLL);
            if (v7 || !i)
            {
              break;
            }
          }
        }
      }

LABEL_26:
      mbedtls_mpi_free(v4);
      mpi_free_many(v5, v8);
      mbedtls_free(v5);
      return v7;
    }

    else
    {
      return -19840;
    }
  }

  else
  {
    return ecp_normalize_jac(v10, *v9);
  }
}

uint64_t mbedtls_mpi_sub_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_sub_mpi(a2, a3, a4); !i; i = mbedtls_mpi_add_mpi(a2, a2, a1 + 8))
  {
    v5 = 0;
    if (*(a2 + 8) < 0)
    {
      v5 = mbedtls_mpi_cmp_int(a2, 0) != 0;
    }

    if (!v5)
    {
      break;
    }
  }

  return i;
}

uint64_t mbedtls_mpi_mul_int_mod(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  for (i = mbedtls_mpi_mul_int(a2, a3, a4); !i; i = mbedtls_mpi_sub_abs(a2, a2, a1 + 8))
  {
    if ((mbedtls_mpi_cmp_mpi(a2, a1 + 8) & 0x80000000) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t mbedtls_mpi_shift_l_mod(uint64_t a1, uint64_t a2, uint64_t a3)
{
  for (i = mbedtls_mpi_shift_l(a2, a3); !i; i = mbedtls_mpi_sub_abs(a2, a2, a1 + 8))
  {
    if ((mbedtls_mpi_cmp_mpi(a2, a1 + 8) & 0x80000000) != 0)
    {
      break;
    }
  }

  return i;
}

uint64_t ecp_comb_recode_scalar(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 a5, unsigned __int8 *a6)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = a6;
  v10 = -110;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  mbedtls_mpi_init(v9);
  mbedtls_mpi_init(v8);
  if (mbedtls_mpi_get_bit(v16 + 104, 0) == 1)
  {
    v6 = mbedtls_mpi_get_bit(v15, 0) == 0;
    *v11 = v6;
    v10 = mbedtls_mpi_copy(v9, v15);
    if (!v10)
    {
      v10 = mbedtls_mpi_sub_mpi(v8, v16 + 104, v15);
      if (!v10)
      {
        v10 = mbedtls_mpi_safe_cond_assign(v9, v8, *v11);
        if (!v10)
        {
          ecp_comb_recode_core(v14, v13, v12, v9);
        }
      }
    }

    mbedtls_mpi_free(v8);
    mbedtls_mpi_free(v9);
    return v10;
  }

  else
  {
    return -20352;
  }
}

uint64_t ecp_mul_comb_core(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t), uint64_t a8, uint64_t a9)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = a4;
  v17 = a5;
  v16 = a6;
  v15 = a7;
  v14 = a8;
  v13 = a9;
  v12 = -110;
  memset(__b, 0, sizeof(__b));
  mbedtls_ecp_point_init(__b);
  mpi_init_many(v22, 4);
  v10 = v16;
  v12 = ecp_select_comb(v21, v20, v19, v18, *(v17 + v16));
  if (!v12 && (!v15 || (v12 = ecp_randomize_jac(v21, v20, v15, v14)) == 0))
  {
    do
    {
      if (!v10)
      {
        break;
      }

      --v10;
      v12 = ecp_double_jac(v21, v20, v20, v22);
      if (v12)
      {
        break;
      }

      v12 = ecp_select_comb(v21, __b, v19, v18, *(v17 + v10));
      if (v12)
      {
        break;
      }

      v12 = ecp_add_mixed(v21, v20, v20, __b, v22);
    }

    while (!v12);
  }

  mbedtls_ecp_point_free(__b);
  mpi_free_many(v22, 4);
  return v12;
}

uint64_t ecp_safe_invert_jac(uint64_t a1, uint64_t a2, char a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v5);
  v4 = mbedtls_mpi_cmp_int(v8 + 16, 0) != 0;
  v6 = mbedtls_mpi_sub_mpi(v5, v9 + 8, v8 + 16);
  if (!v6)
  {
    v6 = mbedtls_mpi_safe_cond_assign(v8 + 16, v5, v4 & v7);
  }

  mbedtls_mpi_free(v5);
  return v6;
}

uint64_t ecp_randomize_jac(uint64_t a1, uint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t), uint64_t a4)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v6 = -110;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v5);
  v6 = mbedtls_mpi_random(v5, 2uLL, v10 + 8, v8, v7);
  if (!v6)
  {
    v6 = mbedtls_mpi_mul_mod(v10, v9 + 4, v9 + 4, v5);
    if (!v6)
    {
      v6 = mbedtls_mpi_mul_mod(v10, v9 + 2, v9 + 2, v5);
      if (!v6)
      {
        v6 = mbedtls_mpi_mul_mod(v10, v5, v5, v5);
        if (!v6)
        {
          v6 = mbedtls_mpi_mul_mod(v10, v9, v9, v5);
          if (!v6)
          {
            v6 = mbedtls_mpi_mul_mod(v10, v9 + 2, v9 + 2, v5);
          }
        }
      }
    }
  }

  mbedtls_mpi_free(v5);
  if (v6 == -14)
  {
    return -19712;
  }

  return v6;
}

uint64_t ecp_comb_recode_core(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4)
{
  result = __memset_chk();
  for (i = 0; i < a2; ++i)
  {
    for (j = 0; j < a3; ++j)
    {
      result = mbedtls_mpi_get_bit(a4, i + a2 * j);
      *(a1 + i) |= result << j;
    }
  }

  v7 = 0;
  for (k = 1; k <= a2; ++k)
  {
    v6 = *(a1 + k) & v7;
    *(a1 + k) ^= v7;
    v5 = 1 - (*(a1 + k) & 1);
    v7 = v6 | *(a1 + k) & (*(a1 + k - 1) * v5);
    *(a1 + k) ^= *(a1 + k - 1) * v5;
    *(a1 + k - 1) |= v5 << 7;
  }

  return result;
}

uint64_t ecp_select_comb(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4, unsigned __int8 a5)
{
  v7 = (a5 & 0x7F) >> 1;
  for (i = 0; i < a4; ++i)
  {
    v8 = mbedtls_mpi_safe_cond_assign(a2, a3 + 48 * i, i == v7);
    if (v8)
    {
      return v8;
    }

    v8 = mbedtls_mpi_safe_cond_assign(a2 + 16, a3 + 48 * i + 16, i == v7);
    if (v8)
    {
      return v8;
    }
  }

  v8 = ecp_safe_invert_jac(a1, a2, a5 >> 7);
  if (!v8)
  {
    return mbedtls_mpi_lset(a2 + 32, 1uLL);
  }

  return v8;
}

uint64_t mbedtls_ecp_group_load(uint64_t *a1, int a2)
{
  mbedtls_ecp_group_free(a1);
  mbedtls_ecp_group_init(a1);
  *a1 = a2;
  if (a2 == 3)
  {
    a1[18] = ecp_mod_p256;
    return ecp_group_load(a1, &secp256r1_p, 0x20uLL, 0, 0, &secp256r1_b, 0x20uLL, &secp256r1_gx, 0x20uLL, &secp256r1_gy, 0x20uLL, &secp256r1_n, 0x20uLL, 0);
  }

  else
  {
    *a1 = 0;
    return -20096;
  }
}

uint64_t ecp_mod_p256(unsigned __int16 *a1)
{
  v8 = a1;
  v6 = 0;
  v5 = 0;
  v4 = 0;
  v7 = mbedtls_mpi_grow(a1, 9uLL);
  if (!v7)
  {
    v4 = **v8;
    add32(&v4, *(*v8 + 32), &v6);
    add32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    sub32(&v4, *(*v8 + 48), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 56), &v6);
    **v8 &= 0xFFFFFFFF00000000;
    **v8 |= v4;
    v4 = HIDWORD(**v8);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    add32(&v4, *(*v8 + 40), &v6);
    sub32(&v4, *(*v8 + 48), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 56), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    **v8 = **v8;
    **v8 |= v4 << 32;
    v4 = *(*v8 + 8);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, *(*v8 + 40), &v6);
    add32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 56), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    *(*v8 + 8) &= 0xFFFFFFFF00000000;
    *(*v8 + 8) |= v4;
    v4 = HIDWORD(*(*v8 + 8));
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    sub32(&v4, *(*v8 + 32), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    *(*v8 + 8) = *(*v8 + 8);
    *(*v8 + 8) |= v4 << 32;
    v4 = *(*v8 + 16);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, *(*v8 + 48), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    sub32(&v4, *(*v8 + 40), &v6);
    *(*v8 + 16) &= 0xFFFFFFFF00000000;
    *(*v8 + 16) |= v4;
    v4 = HIDWORD(*(*v8 + 16));
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    sub32(&v4, *(*v8 + 40), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    *(*v8 + 16) = *(*v8 + 16);
    *(*v8 + 16) |= v4 << 32;
    v4 = *(*v8 + 24);
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, *(*v8 + 56), &v6);
    add32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    sub32(&v4, *(*v8 + 32), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 32)), &v6);
    *(*v8 + 24) &= 0xFFFFFFFF00000000;
    *(*v8 + 24) |= v4;
    v4 = HIDWORD(*(*v8 + 24));
    v5 = v6;
    v6 = 0;
    if (v5 < 0)
    {
      sub32(&v4, -v5, &v6);
    }

    else
    {
      add32(&v4, v5, &v6);
    }

    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, HIDWORD(*(*v8 + 56)), &v6);
    add32(&v4, *(*v8 + 32), &v6);
    sub32(&v4, *(*v8 + 40), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 40)), &v6);
    sub32(&v4, *(*v8 + 48), &v6);
    sub32(&v4, HIDWORD(*(*v8 + 48)), &v6);
    *(*v8 + 24) = *(*v8 + 24);
    *(*v8 + 24) |= v4 << 32;
    v3 = 8;
    if (v6 <= 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = v6;
    }

    v4 = v2;
    *(*v8 + 32) &= 0xFFFFFFFF00000000;
    *(*v8 + 32) |= v4;
    v4 = 0;
    while (++v3 < 2 * v8[5])
    {
      if (v3 % 2)
      {
        *(*v8 + 8 * (v3 / 2)) = *(*v8 + 8 * (v3 / 2));
        *(*v8 + 8 * (v3 / 2)) |= v4 << 32;
      }

      else
      {
        *(*v8 + 8 * (v3 / 2)) &= 0xFFFFFFFF00000000;
        *(*v8 + 8 * (v3 / 2)) |= v4;
      }
    }

    if (v6 < 0)
    {
      mbedtls_ecp_fix_negative(v8, v6, 0x100uLL);
    }
  }

  return v7;
}

uint64_t ecp_group_load(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14)
{
  ecp_mpi_load(a1 + 8, a2, a3);
  if (a4)
  {
    ecp_mpi_load(a1 + 24, a4, a5);
  }

  ecp_mpi_load(a1 + 40, a6, a7);
  ecp_mpi_load(a1 + 104, a12, a13);
  ecp_mpi_load(a1 + 56, a8, a9);
  ecp_mpi_load(a1 + 72, a10, a11);
  ecp_mpi_set1(a1 + 88);
  *(a1 + 120) = mbedtls_mpi_bitlen(a1 + 8);
  *(a1 + 128) = mbedtls_mpi_bitlen(a1 + 104);
  *(a1 + 136) = 1;
  *(a1 + 176) = a14;
  *(a1 + 184) = 0;
  return 0;
}

uint64_t ecp_mpi_load(uint64_t result, uint64_t a2, unint64_t a3)
{
  *(result + 8) = 1;
  *(result + 10) = a3 / 8;
  *result = a2;
  return result;
}

uint64_t ecp_mpi_set1(uint64_t result)
{
  *(result + 8) = 1;
  *(result + 10) = 1;
  *result = &mpi_one;
  return result;
}

unsigned int *add32(unsigned int *result, unsigned int a2, char *a3)
{
  *result += a2;
  v3 = *a3;
  if (*result < a2)
  {
    ++v3;
  }

  *a3 = v3;
  return result;
}

unsigned int *sub32(unsigned int *result, unsigned int a2, _BYTE *a3)
{
  *a3 -= *result < a2;
  *result -= a2;
  return result;
}

uint64_t mbedtls_ecp_fix_negative(uint64_t result, char a2, unint64_t a3)
{
  for (i = 0; i <= a3 / 8 / 8; ++i)
  {
    *(*result + 8 * i) = -1 - *(*result + 8 * i);
  }

  v7 = 0;
  do
  {
    ++*(*result + 8 * v7);
    v3 = v7++;
    v4 = 0;
    if (!*(*result + 8 * v3))
    {
      v4 = v7 <= a3 / 8 / 8;
    }
  }

  while (v4);
  *(result + 8) = -1;
  v5 = -a2;
  if (a3 == 224)
  {
    v5 <<= 32;
  }

  *(*result + 8 * (a3 / 8 / 8)) += v5;
  return result;
}

uint64_t mbedtls_entropy_init(uint64_t a1)
{
  *(a1 + 28) = 0;
  __memset_chk();
  *(a1 + 24) = 0;
  return mbedtls_md_init(a1);
}

_DWORD *mbedtls_entropy_free(_DWORD *result)
{
  v1 = result;
  if (result[6] != -1)
  {
    mbedtls_md_free(result);
    v1[7] = 0;
    result = mbedtls_platform_zeroize(v1 + 8, 0x28uLL);
    v1[6] = -1;
  }

  return result;
}

uint64_t mbedtls_entropy_add_source(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = 0;
  v7 = *(a1 + 28);
  if (v7 < 1)
  {
    *(a1 + 32 + 40 * v7) = a2;
    *(a1 + 32 + 40 * v7 + 8) = a3;
    *(a1 + 32 + 40 * v7 + 24) = a4;
    *(a1 + 32 + 40 * v7 + 32) = a5;
    ++*(a1 + 28);
  }

  else
  {
    return -62;
  }

  return v6;
}

uint64_t entropy_update(void **a1, char a2, _BYTE *a3, unint64_t a4)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v9 = a4;
  v8 = a3;
  if (a4 > 0x20)
  {
    v4 = mbedtls_md_info_from_type(9);
    v7 = mbedtls_md(v4, v12, v11, v15);
    if (v7)
    {
      goto LABEL_10;
    }

    v8 = v15;
    v9 = 32;
  }

  v10[0] = v13;
  v10[1] = v9;
  if (!*(v14 + 6))
  {
    v5 = mbedtls_md_info_from_type(9);
    v7 = mbedtls_md_setup(v14, v5, 0);
    if (v7)
    {
      goto LABEL_10;
    }

    v7 = mbedtls_md_starts(v14);
    if (v7)
    {
      goto LABEL_10;
    }

    *(v14 + 6) = 1;
  }

  v7 = mbedtls_md_update(v14, v10, 2uLL);
  if (!v7)
  {
    v7 = mbedtls_md_update(v14, v8, v9);
  }

LABEL_10:
  mbedtls_platform_zeroize(v15, 0x20uLL);
  return v7;
}

uint64_t entropy_gather_internal(uint64_t a1)
{
  v6 = a1;
  v5 = -60;
  i = 0;
  v3 = 0;
  v2 = 0;
  if (*(a1 + 28))
  {
    for (i = 0; i < *(v6 + 7); ++i)
    {
      if (LODWORD(v6[5 * i + 8]) == 1)
      {
        v3 = 1;
      }

      v2 = 0;
      v5 = (v6[5 * i + 4])(v6[5 * i + 5], v8, 128, &v2);
      if (v5)
      {
        goto LABEL_15;
      }

      if (v2)
      {
        v5 = entropy_update(v6, i, v8, v2);
        if (v5)
        {
          return v5;
        }

        v6[5 * i + 6] = v6[5 * i + 6] + v2;
      }
    }

    if (!v3)
    {
      v5 = -61;
    }

LABEL_15:
    mbedtls_platform_zeroize(v8, 0x80uLL);
    return v5;
  }

  else
  {
    return -64;
  }
}

uint64_t mbedtls_entropy_func(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v13 = 0;
  if (a3 <= 0x20)
  {
    do
    {
      v3 = v13++;
      if (v3 > 256)
      {
        v14 = -60;
        goto LABEL_25;
      }

      v14 = entropy_gather_internal(a1);
      if (v14)
      {
        goto LABEL_25;
      }

      v10 = 1;
      v9 = 0;
      for (i = 0; i < *(a1 + 28); ++i)
      {
        if (*(a1 + 32 + 40 * i + 16) < *(a1 + 32 + 40 * i + 24))
        {
          v10 = 0;
        }

        if (*(a1 + 32 + 40 * i + 32) == 1)
        {
          v9 += *(a1 + 32 + 40 * i + 16);
        }
      }

      v7 = 1;
      if (v10)
      {
        v7 = v9 < 0x20;
      }
    }

    while (v7);
    memset(v16, 0, sizeof(v16));
    v14 = mbedtls_md_finish(a1, v16);
    if (!v14)
    {
      mbedtls_md_free(a1);
      mbedtls_md_init(a1);
      v4 = mbedtls_md_info_from_type(9);
      v14 = mbedtls_md_setup(a1, v4, 0);
      if (!v14)
      {
        v14 = mbedtls_md_starts(a1);
        if (!v14)
        {
          v14 = mbedtls_md_update(a1, v16, 0x20uLL);
          if (!v14)
          {
            v5 = mbedtls_md_info_from_type(9);
            v14 = mbedtls_md(v5, v16, 0x20uLL, v16);
            if (!v14)
            {
              for (j = 0; j < *(a1 + 28); ++j)
              {
                *(a1 + 32 + 40 * j + 16) = 0;
              }

              __memcpy_chk();
              v14 = 0;
            }
          }
        }
      }
    }

LABEL_25:
    mbedtls_platform_zeroize(v16, 0x20uLL);
    return v14;
  }

  else
  {
    return -60;
  }
}

uint64_t mbedtls_rsa_deduce_primes(void *a1, uint64_t *a2, uint64_t *a3, void *a4, __int128 *a5)
{
  v16 = a1;
  v15 = a2;
  v14 = a3;
  v13 = a4;
  v12 = a5;
  v11 = 0;
  i = 0;
  j = 0;
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  memcpy(__dst, &unk_10044AD68, sizeof(__dst));
  if (v13 && v12 && !*v13 && !*v12)
  {
    if (mbedtls_mpi_cmp_int(v16, 0) > 0 && mbedtls_mpi_cmp_int(v14, 1uLL) > 0 && (mbedtls_mpi_cmp_mpi(v14, v16) & 0x80000000) != 0 && mbedtls_mpi_cmp_int(v15, 1uLL) > 0 && (mbedtls_mpi_cmp_mpi(v15, v16) & 0x80000000) != 0)
    {
      mbedtls_mpi_init(v6);
      mbedtls_mpi_init(v7);
      v11 = mbedtls_mpi_mul_mpi(v7, v14, v15);
      if (!v11)
      {
        v11 = mbedtls_mpi_sub_int(v7, v7, 1uLL);
        if (!v11)
        {
          v8 = mbedtls_mpi_lsb(v7);
          if (v8)
          {
            v11 = mbedtls_mpi_shift_r(v7, v8);
            if (!v11)
            {
              for (i = **v16 % 8uLL == 1; i < 0x36uLL; ++i)
              {
                v11 = mbedtls_mpi_lset(v6, __dst[i]);
                if (v11)
                {
                  goto LABEL_38;
                }

                v11 = mbedtls_mpi_gcd(v13, v6, v16);
                if (v11)
                {
                  goto LABEL_38;
                }

                if (!mbedtls_mpi_cmp_int(v13, 1uLL))
                {
                  v11 = mbedtls_mpi_exp_mod(v6, v6, v7, v16, v12);
                  if (v11)
                  {
                    goto LABEL_38;
                  }

                  for (j = 1; j <= v8 && mbedtls_mpi_cmp_int(v6, 1uLL); ++j)
                  {
                    v11 = mbedtls_mpi_add_int(v6, v6, 1uLL);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_gcd(v13, v6, v16);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    if (mbedtls_mpi_cmp_int(v13, 1uLL) == 1 && mbedtls_mpi_cmp_mpi(v13, v16) == -1)
                    {
                      v11 = mbedtls_mpi_div_mpi(v12, 0, v16, v13);
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_sub_int(v6, v6, 1uLL);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_mul_mpi(v6, v6, v6);
                    if (v11)
                    {
                      goto LABEL_38;
                    }

                    v11 = mbedtls_mpi_mod_mpi(v6, v6, v16);
                    if (v11)
                    {
                      goto LABEL_38;
                    }
                  }

                  if (mbedtls_mpi_cmp_int(v6, 1uLL))
                  {
                    break;
                  }
                }
              }

              v11 = -4;
            }
          }

          else
          {
            v11 = -4;
          }
        }
      }

LABEL_38:
      mbedtls_mpi_free(v6);
      mbedtls_mpi_free(v7);
      return v11;
    }

    else
    {
      return -4;
    }
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_rsa_deduce_private_exponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = a1;
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v7 = 0;
  v6[0] = 0;
  v6[1] = 0;
  v5[0] = 0;
  v5[1] = 0;
  if (a4 && !mbedtls_mpi_cmp_int(v8, 0))
  {
    if (mbedtls_mpi_cmp_int(v11, 1uLL) > 0 && mbedtls_mpi_cmp_int(v10, 1uLL) > 0 && mbedtls_mpi_cmp_int(v9, 0))
    {
      mbedtls_mpi_init(v6);
      mbedtls_mpi_init(v5);
      v7 = mbedtls_mpi_sub_int(v6, v11, 1uLL);
      if (!v7)
      {
        v7 = mbedtls_mpi_sub_int(v5, v10, 1uLL);
        if (!v7)
        {
          v7 = mbedtls_mpi_gcd(v8, v6, v5);
          if (!v7)
          {
            v7 = mbedtls_mpi_mul_mpi(v6, v6, v5);
            if (!v7)
            {
              v7 = mbedtls_mpi_div_mpi(v6, 0, v6, v8);
              if (!v7)
              {
                v7 = mbedtls_mpi_inv_mod(v8, v9, v6);
              }
            }
          }
        }
      }

      mbedtls_mpi_free(v6);
      mbedtls_mpi_free(v5);
      return v7;
    }

    else
    {
      return -4;
    }
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_rsa_deduce_crt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  v8 = 0;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v7);
  if ((!v11 || (v8 = mbedtls_mpi_sub_int(v7, v14, 1uLL)) == 0 && (v8 = mbedtls_mpi_mod_mpi(v11, v12, v7)) == 0) && (!v10 || (v8 = mbedtls_mpi_sub_int(v7, v13, 1uLL)) == 0 && (v8 = mbedtls_mpi_mod_mpi(v10, v12, v7)) == 0))
  {
    if (v9)
    {
      v8 = mbedtls_mpi_inv_mod(v9, v13, v14);
    }
  }

  mbedtls_mpi_free(v7);
  return v8;
}

uint64_t mbedtls_rsa_validate_params(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v17 = a1;
  v16 = a2;
  v15 = a3;
  v14 = a4;
  v13 = a5;
  v12 = a6;
  v11 = a7;
  v10 = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  mbedtls_mpi_init(v9);
  mbedtls_mpi_init(v8);
  if (v16 && v15 && v17)
  {
    v10 = mbedtls_mpi_mul_mpi(v9, v16, v15);
    if (v10)
    {
      goto LABEL_35;
    }

    if (mbedtls_mpi_cmp_int(v17, 1uLL) <= 0 || mbedtls_mpi_cmp_mpi(v9, v17))
    {
      v10 = -16896;
      goto LABEL_35;
    }
  }

  if (v17 && v14 && v13 && (mbedtls_mpi_cmp_int(v14, 1uLL) <= 0 || mbedtls_mpi_cmp_int(v13, 1uLL) <= 0 || (mbedtls_mpi_cmp_mpi(v14, v17) & 0x80000000) == 0 || (mbedtls_mpi_cmp_mpi(v13, v17) & 0x80000000) == 0))
  {
    v10 = -16896;
  }

  else if (v16 && v15 && v14 && v13)
  {
    if (mbedtls_mpi_cmp_int(v16, 1uLL) > 0 && mbedtls_mpi_cmp_int(v15, 1uLL) > 0)
    {
      v10 = mbedtls_mpi_mul_mpi(v9, v14, v13);
      if (!v10)
      {
        v10 = mbedtls_mpi_sub_int(v9, v9, 1uLL);
        if (!v10)
        {
          v10 = mbedtls_mpi_sub_int(v8, v16, 1uLL);
          if (!v10)
          {
            v10 = mbedtls_mpi_mod_mpi(v9, v9, v8);
            if (!v10)
            {
              if (mbedtls_mpi_cmp_int(v9, 0))
              {
                v10 = -16896;
              }

              else
              {
                v10 = mbedtls_mpi_mul_mpi(v9, v14, v13);
                if (!v10)
                {
                  v10 = mbedtls_mpi_sub_int(v9, v9, 1uLL);
                  if (!v10)
                  {
                    v10 = mbedtls_mpi_sub_int(v8, v15, 1uLL);
                    if (!v10)
                    {
                      v10 = mbedtls_mpi_mod_mpi(v9, v9, v8);
                      if (!v10)
                      {
                        if (mbedtls_mpi_cmp_int(v9, 0))
                        {
                          v10 = -16896;
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

    else
    {
      v10 = -16896;
    }
  }

LABEL_35:
  mbedtls_mpi_free(v9);
  mbedtls_mpi_free(v8);
  if (v10 && v10 != -16896)
  {
    v10 -= 16896;
  }

  return v10;
}

uint64_t mbedtls_rsa_validate_crt(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v9 = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  mbedtls_mpi_init(v8);
  mbedtls_mpi_init(v7);
  if (v12)
  {
    if (!v15)
    {
      v9 = -16512;
      goto LABEL_26;
    }

    v9 = mbedtls_mpi_sub_int(v8, v15, 1uLL);
    if (v9)
    {
      goto LABEL_26;
    }

    v9 = mbedtls_mpi_sub_mpi(v7, v12, v13);
    if (v9)
    {
      goto LABEL_26;
    }

    v9 = mbedtls_mpi_mod_mpi(v7, v7, v8);
    if (v9)
    {
      goto LABEL_26;
    }

    if (mbedtls_mpi_cmp_int(v7, 0))
    {
      v9 = -16896;
      goto LABEL_26;
    }
  }

  if (!v11)
  {
LABEL_17:
    if (v10)
    {
      if (v15 && v14)
      {
        v9 = mbedtls_mpi_mul_mpi(v8, v10, v14);
        if (!v9)
        {
          v9 = mbedtls_mpi_sub_int(v8, v8, 1uLL);
          if (!v9)
          {
            v9 = mbedtls_mpi_mod_mpi(v8, v8, v15);
            if (!v9)
            {
              if (mbedtls_mpi_cmp_int(v8, 0))
              {
                v9 = -16896;
              }
            }
          }
        }
      }

      else
      {
        v9 = -16512;
      }
    }

    goto LABEL_26;
  }

  if (!v14)
  {
    v9 = -16512;
    goto LABEL_26;
  }

  v9 = mbedtls_mpi_sub_int(v8, v14, 1uLL);
  if (!v9)
  {
    v9 = mbedtls_mpi_sub_mpi(v7, v11, v13);
    if (!v9)
    {
      v9 = mbedtls_mpi_mod_mpi(v7, v7, v8);
      if (!v9)
      {
        if (mbedtls_mpi_cmp_int(v7, 0))
        {
          v9 = -16896;
          goto LABEL_26;
        }

        goto LABEL_17;
      }
    }
  }

LABEL_26:
  if (v9 && v9 != -16896 && v9 != -16512)
  {
    v9 -= 16896;
  }

  mbedtls_mpi_free(v8);
  mbedtls_mpi_free(v7);
  return v9;
}

uint64_t mbedtls_pk_ecc_set_group(unsigned int **a1, int a2)
{
  v3 = mbedtls_pk_ec_rw(*a1, a1[1]);
  if (!*mbedtls_pk_ec_rw(*a1, a1[1]) || *mbedtls_pk_ec_rw(*a1, a1[1]) == a2)
  {
    return mbedtls_ecp_group_load(v3, a2);
  }

  else
  {
    return -15616;
  }
}

uint64_t mbedtls_pk_ec_rw(unsigned int *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  if (mbedtls_pk_get_type(&v3) - 2 > 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t mbedtls_pk_ecc_set_key(unsigned int **a1, uint64_t a2, unint64_t a3)
{
  v5 = mbedtls_pk_ec_rw(*a1, a1[1]);
  key = mbedtls_ecp_read_key(*v5, v5, a2, a3);
  if (key)
  {
    return mbedtls_error_add(-15616, key);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_ecc_set_pubkey(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v4 = *(a1 + 8);
  binary = mbedtls_ecp_point_read_binary(v4, (v4 + 208), a2, a3);
  if (binary)
  {
    return binary;
  }

  else
  {
    return mbedtls_ecp_check_pubkey(v4, (v4 + 208));
  }
}

unint64_t mbedtls_mpi_core_bitlen(uint64_t a1, int a2)
{
  for (i = a2 - 1; (i & 0x80000000) == 0; --i)
  {
    if (*(a1 + 8 * i))
    {
      return 64 - mbedtls_mpi_core_clz(*(a1 + 8 * i)) + (i << 6);
    }
  }

  return 0;
}

unint64_t mbedtls_mpi_core_bigendian_to_host(unint64_t result, uint64_t a2)
{
  if (a2)
  {
    v4 = result;
    for (i = (result + 8 * (a2 - 1)); v4 <= i; --i)
    {
      v2 = mpi_bigendian_to_host(*v4);
      result = mpi_bigendian_to_host(*i);
      *v4 = result;
      *i = v2;
      ++v4;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_uint_le_mpi(uint64_t a1, uint64_t *a2, unint64_t a3)
{
  v8 = mbedtls_ct_uint_ge(*a2, a1);
  mbedtls_ct_compiler_opaque();
  v7 = v3;
  for (i = 1; i < a3; ++i)
  {
    v4 = mbedtls_ct_BOOL(a2[i]);
    v7 = mbedtls_ct_BOOL_or(v7, v4);
  }

  return mbedtls_ct_BOOL_or(v7, v8);
}

uint64_t mbedtls_mpi_core_lt_ct(uint64_t a1, uint64_t a2, uint64_t a3)
{
  mbedtls_ct_compiler_opaque();
  v13 = v3;
  mbedtls_ct_compiler_opaque();
  mbedtls_ct_compiler_opaque();
  v11 = v4;
  for (i = a3; i; --i)
  {
    v5 = mbedtls_ct_uint_lt(*(a2 + 8 * (i - 1)), *(a1 + 8 * (i - 1)));
    v12 = mbedtls_ct_BOOL_or(v11, v5);
    v9 = mbedtls_ct_uint_lt(*(a1 + 8 * (i - 1)), *(a2 + 8 * (i - 1)));
    v6 = mbedtls_ct_BOOL_not(v12);
    v7 = mbedtls_ct_BOOL_and(v9, v6);
    v13 = mbedtls_ct_BOOL_or(v13, v7);
    v11 = mbedtls_ct_BOOL_or(v12, v9);
  }

  return v13;
}

uint64_t mbedtls_mpi_core_cond_assign(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v8 = result;
  if (result != a2)
  {
    for (i = 0; i < a3; ++i)
    {
      result = mbedtls_ct_mpi_uint_if (a4, *(a2 + 8 * i), *(v8 + 8 * i));
      *(v8 + 8 * i) = result;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_cond_swap(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v9 = result;
  if (result != a2)
  {
    for (i = 0; i < a3; ++i)
    {
      v4 = *(v9 + 8 * i);
      *(v9 + 8 * i) = mbedtls_ct_mpi_uint_if (a4, *(a2 + 8 * i), v4);
      result = mbedtls_ct_mpi_uint_if (a4, v4, *(a2 + 8 * i));
      *(a2 + 8 * i) = result;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_read_le(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4 / 8 + (a4 % 8 != 0))
  {
    if (a1)
    {
      __memset_chk();
      for (i = 0; i < a4; ++i)
      {
        *(a1 + 8 * (i / 8)) |= *(a3 + i) << (8 * (i % 8));
      }
    }

    return 0;
  }

  else
  {
    return -8;
  }
}

uint64_t mbedtls_mpi_core_read_be(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >= a4 / 8 + (a4 % 8 != 0))
  {
    if (a2)
    {
      __memset_chk();
      if (a4)
      {
        __memcpy_chk();
      }

      mbedtls_mpi_core_bigendian_to_host(a1, a2);
      return 0;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -8;
  }
}

uint64_t mbedtls_mpi_core_write_le(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 8 * a2;
  if (8 * a2 >= a4)
  {
    v7 = a4;
    for (i = a4; i < v8; ++i)
    {
      if ((*(a1 + 8 * (i / 8)) >> (8 * (i % 8))))
      {
        return -8;
      }
    }
  }

  else
  {
    v7 = 8 * a2;
  }

  for (j = 0; j < v7; ++j)
  {
    *(a3 + j) = *(a1 + 8 * (j / 8)) >> (8 * (j % 8));
  }

  if (v8 < a4)
  {
    __memset_chk();
  }

  return 0;
}

uint64_t mbedtls_mpi_core_write_be(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v9 = 8 * a2;
  if (8 * a2 >= a4)
  {
    v8 = a4;
    v7 = a3;
    for (i = a4; i < v9; ++i)
    {
      if ((*(a1 + 8 * (i / 8)) >> (8 * (i % 8))))
      {
        return -8;
      }
    }
  }

  else
  {
    v8 = 8 * a2;
    v7 = a3 + a4 - v9;
    __memset_chk();
  }

  for (j = 0; j < v8; ++j)
  {
    *(v7 + v8 - j - 1) = *(a1 + 8 * (j / 8)) >> (8 * (j % 8));
  }

  return 0;
}

uint64_t mbedtls_mpi_core_shift_r(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = 0;
  v6 = a3 / 0x40;
  v5 = a3 & 0x3F;
  if (__PAIR128__(a3 / 0x40, a3 & 0x3F) > __PAIR128__(a2, 0))
  {
    return __memset_chk();
  }

  if (v6)
  {
    for (i = 0; i < a2 - v6; ++i)
    {
      *(result + 8 * i) = *(result + 8 * (i + v6));
    }

    while (i < a2)
    {
      *(result + 8 * i++) = 0;
    }
  }

  if ((a3 & 0x3F) != 0)
  {
    for (j = a2; j; --j)
    {
      v3 = *(result + 8 * (j - 1)) << (64 - v5);
      *(result + 8 * (j - 1)) >>= v5;
      *(result + 8 * (j - 1)) |= v4;
      v4 = v3;
    }
  }

  return result;
}

uint64_t mbedtls_mpi_core_shift_l(uint64_t result, unint64_t a2, unint64_t a3)
{
  v4 = 0;
  v6 = a3 / 0x40;
  v5 = a3 & 0x3F;
  if (a3 / 0x40)
  {
    for (i = a2; i > v6; --i)
    {
      *(result + 8 * (i - 1)) = *(result + 8 * (i - v6 - 1));
    }

    while (i)
    {
      *(result + 8 * --i) = 0;
    }
  }

  if ((a3 & 0x3F) != 0)
  {
    for (j = a3 / 0x40; j < a2; ++j)
    {
      v3 = *(result + 8 * j) >> (64 - v5);
      *(result + 8 * j) <<= v5;
      *(result + 8 * j) |= v4;
      v4 = v3;
    }
  }

  return result;
}

BOOL mbedtls_mpi_core_add(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = 0;
  for (i = 0; i < a4; ++i)
  {
    v5 = v8 + *(a2 + 8 * i);
    v9 = v5 < *(a2 + 8 * i);
    v6 = v5 + *(a3 + 8 * i);
    v8 = v9 + (v6 < *(a3 + 8 * i));
    *(a1 + 8 * i) = v6;
  }

  return v8;
}

BOOL mbedtls_mpi_core_add_if (uint64_t a1, uint64_t a2, unint64_t a3, unsigned int a4)
{
  v10 = 0;
  v9 = mbedtls_ct_BOOL(a4);
  for (i = 0; i < a3; ++i)
  {
    v7 = mbedtls_ct_BOOL_and(v9, *(a2 + 8 * i));
    v5 = v10 + *(a1 + 8 * i);
    v11 = v5 < *(a1 + 8 * i);
    v6 = v5 + v7;
    v10 = v11 + (v6 < v7);
    *(a1 + 8 * i) = v6;
  }

  return v10;
}

unint64_t mbedtls_mpi_core_sub(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = 0;
  for (i = 0; i < a4; ++i)
  {
    v5 = *(a2 + 8 * i) - v7;
    v7 = (v5 < *(a3 + 8 * i)) + (*(a2 + 8 * i) < v7);
    *(a1 + 8 * i) = v5 - *(a3 + 8 * i);
  }

  return v7;
}

unint64_t mbedtls_mpi_core_mla(unint64_t *a1, unint64_t a2, unint64_t *a3, unint64_t a4, unint64_t a5)
{
  v22 = a4;
  v21 = 0;
  if (a2 < a4)
  {
    v22 = a2;
  }

  v20 = a2 - v22;
  v19 = v22 >> 3;
  v18 = v22 & 7;
  while (v19--)
  {
    v6 = *a3 * a5 + *a1 + v21;
    *a1 = v6;
    v7 = a3[1] * a5 + a1[1] + *(&v6 + 1);
    a1[1] = v7;
    v8 = a3[2] * a5 + a1[2] + *(&v7 + 1);
    a1[2] = v8;
    v9 = a3[3] * a5 + a1[3] + *(&v8 + 1);
    a1[3] = v9;
    v10 = a3[4] * a5 + a1[4] + *(&v9 + 1);
    a1[4] = v10;
    v11 = a3[5] * a5 + a1[5] + *(&v10 + 1);
    a1[5] = v11;
    v12 = a3[6] * a5 + a1[6] + *(&v11 + 1);
    a1[6] = v12;
    v13 = a3[7] * a5 + a1[7] + *(&v12 + 1);
    a1[7] = v13;
    v21 = *(&v13 + 1);
    a1 += 8;
    a3 += 8;
  }

  while (v18--)
  {
    v15 = *a3 * a5 + *a1 + v21;
    *a1 = v15;
    v21 = *(&v15 + 1);
    ++a1;
    ++a3;
  }

  while (v20--)
  {
    *a1 += v21;
    v21 = *a1++ < v21;
  }

  return v21;
}

unint64_t mbedtls_mpi_core_mul(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __memset_chk();
  for (i = 0; i < a5; ++i)
  {
    result = mbedtls_mpi_core_mla((a1 + 8 * i), a3 + 1, a2, a3, *(a4 + 8 * i));
  }

  return result;
}

uint64_t mbedtls_mpi_core_montmul_init(void *a1)
{
  v3 = *a1 + 2 * ((*a1 + 2) & 4);
  for (i = 64; i >= 8; i /= 2u)
  {
    v3 *= 2 - *a1 * v3;
  }

  return -v3;
}

void mbedtls_mpi_core_montmul(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, unint64_t *a5, unint64_t a6, uint64_t a7, unint64_t *a8)
{
  __memset_chk();
  for (i = 0; i < a6; ++i)
  {
    v11 = (*a8 + *(a2 + 8 * i) * *a3) * a7;
    mbedtls_mpi_core_mla(a8, a6 + 2, a3, a4, *(a2 + 8 * i));
    mbedtls_mpi_core_mla(a8++, a6 + 2, a5, a6, v11);
  }

  v10 = a8[a6];
  v9 = mbedtls_mpi_core_sub(a1, a8, a5, a6);
  v8 = mbedtls_ct_BOOL(v10 ^ v9);
  mbedtls_ct_memcpy_if (v8, a1, a8, 0, 8 * a6);
}

uint64_t mbedtls_mpi_core_get_mont_r2_unsafe(uint64_t a1, uint64_t a2)
{
  v3 = mbedtls_mpi_lset(a1, 1uLL);
  if (!v3)
  {
    v3 = mbedtls_mpi_shift_l(a1, (2 * *(a2 + 10)) << 6);
    if (!v3)
    {
      v3 = mbedtls_mpi_mod_mpi(a1, a1, a2);
      if (!v3)
      {
        return mbedtls_mpi_shrink(a1, *(a2 + 10));
      }
    }
  }

  return v3;
}

uint64_t mbedtls_mpi_core_fill_random(unint64_t a1, unint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t), uint64_t a5)
{
  v7 = a3 / 8 + (a3 % 8 != 0);
  v6 = 8 * v7 - a3;
  if (a2 >= v7)
  {
    __memset_chk();
    __memset_chk();
    v8 = a4(a5, a1 + v6, a3);
    if (!v8)
    {
      mbedtls_mpi_core_bigendian_to_host(a1, v7);
    }

    return v8;
  }

  else
  {
    return -4;
  }
}

uint64_t mbedtls_mpi_core_random(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t), uint64_t a6)
{
  mbedtls_ct_compiler_opaque();
  mbedtls_ct_compiler_opaque();
  v13 = mbedtls_mpi_core_bitlen(a3, a4);
  v12 = (v13 + 7) / 8;
  if (v12 <= 4)
  {
    v6 = 250;
  }

  else
  {
    v6 = 30;
  }

  v10 = v6;
  do
  {
    v11 = mbedtls_mpi_core_fill_random(a1, a4, v12, a5, a6);
    if (v11)
    {
      break;
    }

    mbedtls_mpi_core_shift_r(a1, a4, 8 * v12 - v13);
    if (!--v10)
    {
      return -14;
    }

    v15 = mbedtls_mpi_core_uint_le_mpi(a2, a1, a4);
    v14 = mbedtls_mpi_core_lt_ct(a1, a3, a4);
    v9 = mbedtls_ct_BOOL_and(v15, v14);
    mbedtls_ct_compiler_opaque();
  }

  while (v9 == v7);
  return v11;
}

void mbedtls_mpi_core_exp_mod(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, uint64_t a6, unint64_t *a7, void *a8)
{
  window_size = exp_mod_get_window_size();
  v15 = &a8[(1 << window_size) * a4];
  v14 = &v15[a4];
  v13 = mbedtls_mpi_core_montmul_init(a3);
  exp_mod_precompute_window(a2, a3, a4, v13, a7, 1 << window_size, a8, v14);
  __memcpy_chk();
  v12 = a6;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  do
  {
    mbedtls_mpi_core_montmul(a1, a1, a1, a4, a3, a4, v13, v14);
    if (v11)
    {
      --v11;
    }

    else
    {
      --v12;
      v11 = 63;
    }

    ++v10;
    v9 = (2 * v9) | (*(a5 + 8 * v12) >> v11) & 1;
    if (v10 == window_size || !v11 && !v12)
    {
      mbedtls_mpi_core_ct_uint_table_lookup(v15, a8, a4, 1 << window_size, v9);
      mbedtls_mpi_core_montmul(a1, a1, v15, a4, a3, a4, v13, v14);
      v9 = 0;
      v10 = 0;
    }

    v8 = 0;
    if (!v11)
    {
      v8 = v12 == 0;
    }
  }

  while (!v8);
}

void exp_mod_precompute_window(uint64_t a1, unint64_t *a2, unint64_t a3, uint64_t a4, unint64_t *a5, unint64_t a6, void *a7, unint64_t *a8)
{
  __memset_chk();
  *a7 = 1;
  mbedtls_mpi_core_montmul(a7, a7, a5, a3, a2, a3, a4, a8);
  __memcpy_chk();
  v9 = &a7[a3];
  for (i = 2; i < a6; ++i)
  {
    mbedtls_mpi_core_montmul(&v9[a3], v9, &a7[a3], a3, a2, a3, a4, a8);
    v9 += a3;
  }
}

uint64_t mbedtls_mpi_core_ct_uint_table_lookup(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v11 = result;
  for (i = 0; i < a4; ++i)
  {
    v5 = mbedtls_ct_uint_eq(i, a5);
    result = mbedtls_mpi_core_cond_assign(v11, a2, a3, v5);
    a2 += 8 * a3;
  }

  return result;
}

BOOL mbedtls_mpi_core_sub_int(uint64_t a1, uint64_t a2, _BOOL8 a3, unint64_t a4)
{
  for (i = 0; i < a4; ++i)
  {
    v6 = *(a2 + 8 * i);
    v5 = v6 - a3;
    a3 = v6 - a3 > v6;
    *(a1 + 8 * i) = v5;
  }

  return a3;
}

uint64_t mbedtls_mpi_core_check_zero_ct(uint64_t a1, unint64_t a2)
{
  v4 = 0;
  for (i = 0; i < a2; ++i)
  {
    v4 |= *(a1 + 8 * i);
  }

  return mbedtls_ct_BOOL(v4);
}

void mbedtls_mpi_core_from_mont_rep(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t a4, uint64_t a5, unint64_t *a6)
{
  v6[6] = a1;
  v6[5] = a2;
  v6[4] = a3;
  v6[3] = a4;
  v6[2] = a5;
  v6[1] = a6;
  v6[0] = 1;
  mbedtls_mpi_core_montmul(a1, a2, v6, 1uLL, a3, a4, a5, a6);
}

uint64_t mbedtls_ct_uint_ne()
{
  mbedtls_ct_compiler_opaque();
  v3 = v0;
  mbedtls_ct_compiler_opaque();
  return mbedtls_ct_BOOL(v3 ^ v1);
}

void *mbedtls_md_info_from_type(int a1)
{
  if (a1 == 9)
  {
    return &mbedtls_sha256_info;
  }

  else
  {
    return 0;
  }
}

void **mbedtls_md_free(void **result)
{
  v1 = result;
  if (result && *result)
  {
    if (result[1])
    {
      if (**result == 9)
      {
        mbedtls_sha256_free(result[1]);
      }

      mbedtls_free(v1[1]);
    }

    if (v1[2])
    {
      mbedtls_zeroize_and_free(v1[2], 2 * *(*v1 + 5));
    }

    return mbedtls_platform_zeroize(v1, 0x18uLL);
  }

  return result;
}

uint64_t mbedtls_md_clone(void *a1, uint64_t a2)
{
  if (a1 && *a1 && a2 && *a2 && *a1 == *a2)
  {
    if (**a2 == 9)
    {
      mbedtls_sha256_clone(a1[1], *(a2 + 8));
      return 0;
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_setup(void **a1, unsigned __int8 *a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      *a1 = a2;
      a1[1] = 0;
      a1[2] = 0;
      if (*a2 == 9)
      {
        a1[1] = mbedtls_calloc(1, 104);
        if (a1[1])
        {
          mbedtls_sha256_init(a1[1]);
          if (!a3 || (a1[2] = mbedtls_calloc(2, a2[5])) != 0)
          {
            return 0;
          }

          else
          {
            mbedtls_md_free(a1);
            return -20864;
          }
        }

        else
        {
          return -20864;
        }
      }

      else
      {
        return -20736;
      }
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_starts(_DWORD **a1)
{
  if (a1 && *a1)
  {
    if (**a1 == 9)
    {
      return mbedtls_sha256_starts(a1[1], 0);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *a1)
  {
    if (**a1 == 9)
    {
      return mbedtls_sha256_update(*(a1 + 8), a2, a3);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_finish(_DWORD **a1, uint64_t a2)
{
  if (a1 && *a1)
  {
    if (**a1 == 9)
    {
      return mbedtls_sha256_finish(a1[1], a2);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md(_DWORD *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (*a1 == 9)
    {
      return mbedtls_sha256(a2, a3, a4, 0);
    }

    else
    {
      return -20736;
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_get_size(uint64_t a1)
{
  if (a1)
  {
    return *(a1 + 4);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_md_get_type(unsigned int *a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

void *mbedtls_md_info_from_string(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = &md_names; ; i += 2)
  {
    v2 = 0;
    if (*i)
    {
      v2 = strcmp(*i, a1) != 0;
    }

    if (!v2)
    {
      break;
    }
  }

  return mbedtls_md_info_from_type(*(i + 2));
}

char *mbedtls_md_get_name(_DWORD *a1)
{
  if (!a1)
  {
    return 0;
  }

  for (i = &md_names; ; i += 2)
  {
    v2 = 0;
    if (*(i + 2))
    {
      v2 = *(i + 2) != *a1;
    }

    if (!v2)
    {
      break;
    }
  }

  return *i;
}

uint64_t mbedtls_md_info_from_ctx(uint64_t a1)
{
  if (a1)
  {
    return *a1;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_md_hmac_starts(void *a1, _BYTE *a2, unint64_t a3)
{
  v7 = a3;
  if (a1 && *a1 && a1[2])
  {
    if (a3 > *(*a1 + 5))
    {
      v6 = mbedtls_md_starts(a1);
      if (v6 || (v6 = mbedtls_md_update(a1, a2, v7)) != 0 || (v6 = mbedtls_md_finish(a1, v13)) != 0)
      {
LABEL_22:
        mbedtls_platform_zeroize(v13, 0x20uLL);
        return v6;
      }

      v7 = *(*a1 + 4);
      a2 = v13;
    }

    v5 = a1[2];
    v4 = v5 + *(*a1 + 5);
    __memset_chk();
    __memset_chk();
    for (i = 0; i + 16 <= v7; i += 16)
    {
      *(v5 + i) = veorq_s8(*(v5 + i), *&a2[i]);
    }

    while (i < v7)
    {
      *(v5 + i) ^= a2[i];
      ++i;
    }

    for (j = 0; j + 16 <= v7; j += 16)
    {
      *(v4 + j) = veorq_s8(*(v4 + j), *&a2[j]);
    }

    while (j < v7)
    {
      *(v4 + j) ^= a2[j];
      ++j;
    }

    v6 = mbedtls_md_starts(a1);
    if (!v6)
    {
      v6 = mbedtls_md_update(a1, v5, *(*a1 + 5));
    }

    goto LABEL_22;
  }

  return -20736;
}

uint64_t mbedtls_md_hmac_update(void *a1, uint64_t a2, unint64_t a3)
{
  if (a1 && *a1 && a1[2])
  {
    return mbedtls_md_update(a1, a2, a3);
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_hmac_finish(void *a1, uint64_t a2)
{
  if (a1 && *a1 && a1[2])
  {
    v3 = a1[2] + *(*a1 + 5);
    v4 = mbedtls_md_finish(a1, v11);
    if (v4)
    {
      return v4;
    }

    else
    {
      v5 = mbedtls_md_starts(a1);
      if (v5)
      {
        return v5;
      }

      else
      {
        v6 = mbedtls_md_update(a1, v3, *(*a1 + 5));
        if (v6)
        {
          return v6;
        }

        else
        {
          v7 = mbedtls_md_update(a1, v11, *(*a1 + 4));
          if (v7)
          {
            return v7;
          }

          else
          {
            return mbedtls_md_finish(a1, a2);
          }
        }
      }
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_hmac_reset(void *a1)
{
  if (a1 && *a1 && a1[2])
  {
    v2 = a1[2];
    v3 = mbedtls_md_starts(a1);
    if (v3)
    {
      return v3;
    }

    else
    {
      return mbedtls_md_update(a1, v2, *(*a1 + 5));
    }
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_md_hmac(unsigned __int8 *a1, _BYTE *a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v14 = a1;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  v10 = a5;
  v9 = a6;
  memset(v8, 0, sizeof(v8));
  if (a1)
  {
    mbedtls_md_init(v8);
    v7 = mbedtls_md_setup(v8, v14, 1);
    if (!v7)
    {
      v7 = mbedtls_md_hmac_starts(v8, v13, v12);
      if (!v7)
      {
        v7 = mbedtls_md_hmac_update(v8, v11, v10);
        if (!v7)
        {
          v7 = mbedtls_md_hmac_finish(v8, v9);
        }
      }
    }

    mbedtls_md_free(v8);
    return v7;
  }

  else
  {
    return -20736;
  }
}

uint64_t mbedtls_ct_memcmp(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = 0;
  v5 = 0;
  while (v8 + 4 <= a3)
  {
    unaligned_volatile_uint32 = mbedtls_get_unaligned_volatile_uint32((a1 + v8));
    v5 |= unaligned_volatile_uint32 ^ mbedtls_get_unaligned_volatile_uint32((a2 + v8));
    v8 += 4;
  }

  while (v8 < a3)
  {
    v5 |= *(a1 + v8) ^ *(a2 + v8);
    ++v8;
  }

  return v5 | HIWORD(v5);
}

void mbedtls_ct_memcpy_if (uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v8 = a1;
  mbedtls_ct_compiler_opaque();
  v7 = ~v5;
  if (!a4)
  {
    a4 = a2;
  }

  for (i = 0; i + 8 <= a5; i += 8)
  {
    __memcpy_chk();
  }

  while (i < a5)
  {
    *(a2 + i) = *(a3 + i) & v8 | *(a4 + i) & v7;
    ++i;
  }
}

void mbedtls_ct_memcpy_offset(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  while (a4 <= a5)
  {
    v6 = mbedtls_ct_uint_eq(a4, a3);
    mbedtls_ct_memcpy_if (v6, a1, a2 + a4++, 0, a6);
  }
}

uint64_t mbedtls_oid_get_attr_short_name(uint64_t a1, void *a2)
{
  v3 = oid_x520_attr_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[4];
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_x520_attr_from_asn1(uint64_t a1)
{
  v3 = &oid_x520_attr_type;
  v2 = &oid_x520_attr_type;
  if (!&oid_x520_attr_type || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_x509_ext_type(uint64_t a1, _DWORD *a2)
{
  v3 = oid_x509_ext_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_x509_ext_from_asn1(uint64_t a1)
{
  v3 = &oid_x509_ext;
  v2 = &oid_x509_ext;
  if (!&oid_x509_ext || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_extended_key_usage(uint64_t a1, void *a2)
{
  v3 = oid_ext_key_usage_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[3];
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_ext_key_usage_from_asn1(uint64_t a1)
{
  v3 = &oid_ext_key_usage;
  v2 = &oid_ext_key_usage;
  if (!&oid_ext_key_usage || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 4;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_certificate_policies(uint64_t a1, void *a2)
{
  v3 = oid_certificate_policies_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[3];
    return 0;
  }

  else
  {
    return -46;
  }
}

const void **oid_certificate_policies_from_asn1(uint64_t a1)
{
  v3 = &oid_certificate_policies;
  v2 = &oid_certificate_policies;
  if (!&oid_certificate_policies || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 4;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_sig_alg_desc(uint64_t a1, void *a2)
{
  v3 = oid_sig_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = v3[3];
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_sig_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_sig_alg;
  v2 = &oid_sig_alg;
  if (!&oid_sig_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_sig_alg(uint64_t a1, _DWORD *a2, _DWORD *a3)
{
  v4 = oid_sig_alg_from_asn1(a1);
  if (v4)
  {
    *a2 = *(v4 + 8);
    *a3 = *(v4 + 9);
    return 0;
  }

  else
  {
    return -46;
  }
}

uint64_t mbedtls_oid_get_oid_by_sig_alg(int a1, int a2, char **a3, void *a4)
{
  for (i = &oid_sig_alg; *i; i += 5)
  {
    if (*(i + 9) == a1 && *(i + 8) == a2)
    {
      *a3 = *i;
      *a4 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_pk_alg(uint64_t a1, _DWORD *a2)
{
  v3 = oid_pk_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_pk_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_pk_alg;
  v2 = &oid_pk_alg;
  if (!&oid_pk_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_pk_alg(int a1, char **a2, void *a3)
{
  for (i = &oid_pk_alg; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_ec_grp(uint64_t a1, _DWORD *a2)
{
  v3 = oid_grp_id_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_grp_id_from_asn1(uint64_t a1)
{
  v3 = &oid_ecp_grp;
  v2 = &oid_ecp_grp;
  if (!&oid_ecp_grp || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_ec_grp(int a1, char **a2, void *a3)
{
  for (i = &oid_ecp_grp; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_ec_grp_algid(uint64_t a1, _DWORD *a2)
{
  v3 = oid_grp_id_algid_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

const void **oid_grp_id_algid_from_asn1(uint64_t a1)
{
  v3 = &oid_ecp_grp_algid;
  v2 = &oid_ecp_grp_algid;
  if (!&oid_ecp_grp_algid || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_ec_grp_algid(int a1, void *a2, void *a3)
{
  for (i = &oid_ecp_grp_algid; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_cipher_alg(uint64_t a1, _DWORD *a2)
{
  v3 = oid_cipher_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_cipher_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_cipher_alg;
  v2 = &oid_cipher_alg;
  if (!&oid_cipher_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_md_alg(uint64_t a1, _DWORD *a2)
{
  v3 = oid_md_alg_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_md_alg_from_asn1(uint64_t a1)
{
  v3 = &oid_md_alg;
  v2 = &oid_md_alg;
  if (!&oid_md_alg || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_oid_by_md(int a1, char **a2, void *a3)
{
  for (i = &oid_md_alg; *i; i += 5)
  {
    if (*(i + 8) == a1)
    {
      *a2 = *i;
      *a3 = i[1];
      return 0;
    }
  }

  return -46;
}

uint64_t mbedtls_oid_get_md_hmac(uint64_t a1, _DWORD *a2)
{
  v3 = oid_md_hmac_from_asn1(a1);
  if (v3)
  {
    *a2 = *(v3 + 8);
    return 0;
  }

  else
  {
    return -46;
  }
}

char **oid_md_hmac_from_asn1(uint64_t a1)
{
  v3 = &oid_md_hmac;
  v2 = &oid_md_hmac;
  if (!&oid_md_hmac || !a1)
  {
    return 0;
  }

  while (*v2)
  {
    if (v2[1] == *(a1 + 8) && !memcmp(*v2, *(a1 + 16), *(a1 + 8)))
    {
      return v3;
    }

    v3 += 5;
    v2 = v3;
  }

  return 0;
}

uint64_t mbedtls_oid_get_numeric_string(char *a1, unint64_t a2, uint64_t a3)
{
  v7 = a2;
  v6 = 0;
  if (a2 <= 0x7FFFFFFF)
  {
    if (*(a3 + 8))
    {
      for (i = 0; i < *(a3 + 8); ++i)
      {
        if (v6 > 0x1FFFFFF)
        {
          return -104;
        }

        if (!v6 && *(*(a3 + 16) + i) == 128)
        {
          return -104;
        }

        v6 = (v6 << 7) | *(*(a3 + 16) + i) & 0x7F;
        if ((*(*(a3 + 16) + i) & 0x80) == 0)
        {
          if (v7 == a2)
          {
            if (v6 < 0x50)
            {
              if (v6 < 0x28)
              {
                v3 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%c.%u", 48, v6);
              }

              else
              {
                v3 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%c.%u", 49, v6 - 40);
              }
            }

            else
            {
              v3 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, "%c.%u", 50, v6 - 80);
            }

            v9 = v3;
          }

          else
          {
            v9 = __snprintf_chk(a1, v7, 0, 0xFFFFFFFFFFFFFFFFLL, ".%u", v6);
          }

          if (v9 < 2 || v9 >= v7)
          {
            return -11;
          }

          v7 -= v9;
          a1 += v9;
          v6 = 0;
        }
      }

      if (v6)
      {
        return -96;
      }

      else
      {
        return (a2 - v7);
      }
    }

    else
    {
      return -96;
    }
  }

  else
  {
    return -100;
  }
}

uint64_t mbedtls_oid_from_numeric_string(uint64_t a1, _BYTE *a2, unint64_t a3)
{
  v21 = a1;
  v20 = a2;
  v19 = a3;
  v18 = -104;
  v17 = a2;
  v16 = &a2[a3];
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  v10 = 0;
  for (i = 0; i < v19; ++i)
  {
    if (v20[i] == 46)
    {
      ++v10;
    }
  }

  if (v10 && v10 <= 0x7F)
  {
    v8 = 5;
    v7 = 5 * v10;
    *(v21 + 16) = mbedtls_calloc(5 * v10, 1);
    if (!*(v21 + 16))
    {
      return -106;
    }

    v6 = *(v21 + 16);
    v5 = *(v21 + 16) + v7;
    v18 = oid_parse_number(&v14, &v17, v16);
    if (!v18)
    {
      if (v14 <= 2)
      {
        if (v17 < v16 && *v17 == 46)
        {
          ++v17;
          v18 = oid_parse_number(&v13, &v17, v16);
          if (!v18)
          {
            if (v14 >= 2 || v13 <= 0x27)
            {
              if (v17 < v16)
              {
                if (*v17 != 46)
                {
                  v18 = -104;
                  goto LABEL_40;
                }

                ++v17;
              }

              if (v13 > -1 - 40 * v14)
              {
                v18 = -104;
              }

              else
              {
                v3 = oid_subidentifier_encode_into(&v6, v5, 40 * v14 + v13);
                v18 = v3;
                if (!v3)
                {
                  while (v17 < v16)
                  {
                    v18 = oid_parse_number(&v15, &v17, v16);
                    if (v18)
                    {
                      goto LABEL_40;
                    }

                    if (v17 < v16)
                    {
                      if (*v17 != 46)
                      {
                        v18 = -104;
                        goto LABEL_40;
                      }

                      ++v17;
                    }

                    v18 = oid_subidentifier_encode_into(&v6, v5, v15);
                    if (v18)
                    {
                      goto LABEL_40;
                    }
                  }

                  v12 = v6 - *(v21 + 16);
                  v11 = mbedtls_calloc(v12, 1);
                  if (v11)
                  {
                    __memcpy_chk();
                    mbedtls_free(*(v21 + 16));
                    *(v21 + 16) = v11;
                    *(v21 + 8) = v12;
                    *v21 = 6;
                    return 0;
                  }

                  v18 = -106;
                }
              }
            }

            else
            {
              v18 = -104;
            }
          }
        }

        else
        {
          v18 = -104;
        }
      }

      else
      {
        v18 = -104;
      }
    }

LABEL_40:
    mbedtls_free(*(v21 + 16));
    *(v21 + 16) = 0;
    *(v21 + 8) = 0;
    return v18;
  }

  return -104;
}

uint64_t oid_parse_number(_DWORD *a1, unint64_t *a2, unint64_t a3)
{
  v5 = -104;
  for (*a1 = 0; ; *a1 += *(*a2)++ - 48)
  {
    v4 = 0;
    if (*a2 < a3)
    {
      v4 = 0;
      if (**a2 >= 48)
      {
        v4 = **a2 <= 57;
      }
    }

    if (!v4)
    {
      break;
    }

    v5 = 0;
    if (*a1 > 0x19999999u)
    {
      return -104;
    }

    *a1 *= 10;
  }

  return v5;
}

uint64_t oid_subidentifier_encode_into(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = oid_subidentifier_num_bytes(a3);
  if (a2 - *a1 >= v5)
  {
    *(*a1 + v5 - 1) = a3 & 0x7F;
    v7 = a3 >> 7;
    for (i = 2; i <= v5; ++i)
    {
      *(*a1 + v5 - i) = v7 & 0x7F | 0x80;
      v7 >>= 7;
    }

    *a1 += v5;
    return 0;
  }

  else
  {
    return -11;
  }
}

uint64_t oid_subidentifier_num_bytes(unsigned int a1)
{
  v2 = 0;
  do
  {
    a1 >>= 7;
    ++v2;
  }

  while (a1);
  return v2;
}

uint64_t mbedtls_pem_read_buffer(void *a1, const char *a2, const char *a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v24 = a1;
  v23 = a2;
  v22 = a3;
  v21 = a4;
  v20 = a5;
  v19 = a6;
  v18 = a7;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  if (a1)
  {
    __s1 = strstr(v21, v23);
    if (__s1)
    {
      v10 = strstr(v21, v22);
      if (v10 && v10 > __s1)
      {
        __s1a = &__s1[strlen(v23)];
        if (*__s1a == 32)
        {
          ++__s1a;
        }

        if (*__s1a == 13)
        {
          ++__s1a;
        }

        if (*__s1a == 10)
        {
          __s1b = (__s1a + 1);
          v7 = strlen(v22);
          v9 = &v10[v7];
          if (v10[v7] == 32)
          {
            ++v9;
          }

          if (*v9 == 13)
          {
            ++v9;
          }

          if (*v9 == 10)
          {
            ++v9;
          }

          *v18 = v9 - v21;
          v16 = 0;
          if (v10 - __s1b >= 22 && !memcmp(__s1b, "Proc-Type: 4,ENCRYPTED", 0x16uLL))
          {
            return -5120;
          }

          else if (__s1b < v10)
          {
            v17 = mbedtls_base64_decode(0, 0, &v15, __s1b, v10 - __s1b);
            if (v17 == -44)
            {
              return mbedtls_error_add(-4352, -44);
            }

            else if (v15)
            {
              v14 = mbedtls_calloc(1, v15);
              if (v14)
              {
                v17 = mbedtls_base64_decode(v14, v15, &v15, __s1b, v10 - __s1b);
                if (v17)
                {
                  mbedtls_zeroize_and_free(v14, v15);
                  return mbedtls_error_add(-4352, v17);
                }

                else if (v16)
                {
                  mbedtls_zeroize_and_free(v14, v15);
                  return -5120;
                }

                else
                {
                  *v24 = v14;
                  v24[1] = v15;
                  return 0;
                }
              }

              else
              {
                return -4480;
              }
            }

            else
            {
              return -5248;
            }
          }

          else
          {
            return -4352;
          }
        }

        else
        {
          return -4224;
        }
      }

      else
      {
        return -4224;
      }
    }

    else
    {
      return -4224;
    }
  }

  else
  {
    return -5248;
  }
}

void *mbedtls_pem_free(void **a1)
{
  if (*a1)
  {
    mbedtls_zeroize_and_free(*a1, a1[1]);
  }

  mbedtls_free(a1[2]);
  return mbedtls_platform_zeroize(a1, 0x18uLL);
}

void *mbedtls_pk_init(void *result)
{
  *result = 0;
  result[1] = 0;
  return result;
}

void *mbedtls_pk_free(void *result)
{
  v1 = result;
  if (result)
  {
    if (*result)
    {
      if (*(*result + 80))
      {
        (*(*result + 80))(result[1]);
      }
    }

    return mbedtls_platform_zeroize(v1, 0x10uLL);
  }

  return result;
}

void *mbedtls_pk_info_from_type(int a1)
{
  switch(a1)
  {
    case 1:
      return &mbedtls_rsa_info;
    case 2:
      return &mbedtls_eckey_info;
    case 3:
      return &mbedtls_eckeydh_info;
    case 4:
      return &mbedtls_ecdsa_info;
  }

  return 0;
}

uint64_t mbedtls_pk_setup(void *a1, uint64_t a2)
{
  if (a2 && !*a1)
  {
    if (!*(a2 + 72) || (v2 = (*(a2 + 72))(), (a1[1] = v2) != 0))
    {
      *a1 = a2;
      return 0;
    }

    else
    {
      return -16256;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_can_do(uint64_t a1, unsigned int a2)
{
  if (a1 && *a1)
  {
    return (*(*a1 + 24))(a2);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_verify_restartable(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  if ((a2 || v9) && !v10)
  {
    return -16000;
  }

  else if (*v12 && !pk_hashlen_helper(v11, &v9))
  {
    if (*(*v12 + 32))
    {
      return (*(*v12 + 32))(v12, v11, v10, v9, a5, a6);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t pk_hashlen_helper(int a1, void *a2)
{
  if (*a2)
  {
    return 0;
  }

  else
  {
    *a2 = mbedtls_md_get_size_from_type(a1);
    if (*a2)
    {
      return 0;
    }

    else
    {
      return -1;
    }
  }
}

uint64_t mbedtls_pk_verify_ext(unsigned int a1, unsigned int *a2, unsigned int **a3, unsigned int a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((a4 || a6) && !a5)
  {
    return -16000;
  }

  else if (*a3)
  {
    if (mbedtls_pk_can_do(a3, a1))
    {
      if (a1 == 6)
      {
        if (mbedtls_pk_get_type(a3) == 1)
        {
          if (a4 || a6 <= 0xFFFFFFFF)
          {
            if (a2)
            {
              if (a8 >= mbedtls_pk_get_len(a3))
              {
                v8 = mbedtls_pk_rsa(*a3, a3[1]);
                v10 = mbedtls_rsa_rsassa_pss_verify_ext(v8, a4, a6, a5, *a2, a2[1], a7);
                if (v10)
                {
                  return v10;
                }

                else if (a8 <= mbedtls_pk_get_len(a3))
                {
                  return 0;
                }

                else
                {
                  return -14592;
                }
              }

              else
              {
                return -17280;
              }
            }

            else
            {
              return -16000;
            }
          }

          else
          {
            return -16000;
          }
        }

        else
        {
          return -14720;
        }
      }

      else if (a2)
      {
        return -16000;
      }

      else
      {
        return mbedtls_pk_verify(a3, a4, a5, a6, a7, a8);
      }
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_get_type(unsigned int **a1)
{
  if (a1 && *a1)
  {
    return **a1;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_rsa(unsigned int *a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2;
  if (mbedtls_pk_get_type(&v3) == 1)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_sign_restartable(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v18 = a1;
  v17 = a2;
  v16 = a3;
  v15 = a4;
  if ((a2 || v15) && !v16)
  {
    return -16000;
  }

  else if (*v18 && !pk_hashlen_helper(v17, &v15))
  {
    if (*(*v18 + 40))
    {
      return (*(*v18 + 40))(v18, v17, v16, v15, a5, a6, a7, a8, a9, a10);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_sign_ext(unsigned int a1, unsigned int **a2, unsigned int a3, uint64_t a4, uint64_t a5, _BYTE *a6, unint64_t a7, void *a8, uint64_t (*a9)(uint64_t, uint64_t, unint64_t), uint64_t a10)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  if (*a2)
  {
    if (mbedtls_pk_can_do(v19, v20))
    {
      if (v20 == 6)
      {
        if (a7 >= mbedtls_pk_get_len(v19))
        {
          if (pk_hashlen_helper(v18, &v16))
          {
            return -16000;
          }

          else
          {
            v12 = mbedtls_pk_rsa(*v19, v19[1]);
            v11 = mbedtls_rsa_rsassa_pss_sign_no_mode_check(v12, a9, a10, v18, v16, v17, a6);
            if (!v11)
            {
              *a8 = *(v12 + 8);
            }

            return v11;
          }
        }

        else
        {
          return -14464;
        }
      }

      else
      {
        return mbedtls_pk_sign(v19, v18, v17, v16, a6, a7, a8, a9, a10);
      }
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_decrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    if (*(*a1 + 48))
    {
      return (*(*a1 + 48))(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_encrypt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a1)
  {
    if (*(*a1 + 56))
    {
      return (*(*a1 + 56))(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_check_pair(_DWORD **a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*a1 && *a2)
  {
    if (a3)
    {
      if (*(*a2 + 64))
      {
        if (**a2 == 5)
        {
          if (**a1 != 1)
          {
            return -16128;
          }
        }

        else if (**a2 != 7 && *a1 != *a2)
        {
          return -16128;
        }

        return (*(*a2 + 64))(a1, a2, a3, a4);
      }

      return -14720;
    }

    else
    {
      return -16000;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t mbedtls_pk_get_bitlen(uint64_t a1)
{
  if (a1 && *a1)
  {
    return (*(*a1 + 16))(a1);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_pk_debug(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    if (*(*a1 + 88))
    {
      (*(*a1 + 88))(a1, a2);
      return 0;
    }

    else
    {
      return -16128;
    }
  }

  else
  {
    return -16000;
  }
}

const char *mbedtls_pk_get_name(uint64_t a1)
{
  if (a1 && *a1)
  {
    return *(*a1 + 8);
  }

  else
  {
    return "invalid PK";
  }
}

BOOL rsa_can_do(int a1)
{
  v2 = 1;
  if (a1 != 1)
  {
    return a1 == 6;
  }

  return v2;
}

uint64_t rsa_verify_wrap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v8 = *(a1 + 8);
  len = mbedtls_rsa_get_len(v8);
  if (a2 || a4 <= 0xFFFFFFFF)
  {
    if (a6 >= len)
    {
      v9 = mbedtls_rsa_pkcs1_verify(v8, a2, a4, a3, a5);
      if (v9)
      {
        return v9;
      }

      else if (a6 <= len)
      {
        return 0;
      }

      else
      {
        return -14592;
      }
    }

    else
    {
      return -17280;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t rsa_sign_wrap(uint64_t a1, int a2, uint64_t a3, unint64_t a4, _BYTE *a5, unint64_t a6, unint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, unint64_t), uint64_t a9)
{
  v15 = a4;
  v10 = *(a1 + 8);
  if (a2 || a4 <= 0xFFFFFFFF)
  {
    *a7 = mbedtls_rsa_get_len(v10);
    if (a6 >= *a7)
    {
      return mbedtls_rsa_pkcs1_sign(v10, a8, a9, a2, v15, a3, a5);
    }

    else
    {
      return -14464;
    }
  }

  else
  {
    return -16000;
  }
}

uint64_t rsa_decrypt_wrap(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, unint64_t), uint64_t a8)
{
  v9 = *(a1 + 8);
  if (a3 == mbedtls_rsa_get_len(v9))
  {
    return mbedtls_rsa_pkcs1_decrypt(v9, a7, a8, a5, a2, a4, a6);
  }

  else
  {
    return -16512;
  }
}

uint64_t rsa_encrypt_wrap(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t *a5, unint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, void), uint64_t a8)
{
  v9 = *(a1 + 8);
  *a5 = mbedtls_rsa_get_len(v9);
  if (*a5 <= a6)
  {
    return mbedtls_rsa_pkcs1_encrypt(v9, a7, a8, a3, a2, a4);
  }

  else
  {
    return -17408;
  }
}

uint64_t rsa_alloc_wrap()
{
  v1 = mbedtls_calloc(1, 232);
  if (v1)
  {
    mbedtls_rsa_init(v1);
  }

  return v1;
}

uint64_t rsa_debug(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 1;
  *(a2 + 8) = "rsa.N";
  *(a2 + 16) = v2 + 16;
  *(a2 + 24) = 1;
  *(a2 + 32) = "rsa.E";
  *(a2 + 40) = v2 + 32;
  return result;
}

BOOL eckey_can_do(int a1)
{
  v2 = 1;
  if (a1 != 2)
  {
    v2 = 1;
    if (a1 != 3)
    {
      return a1 == 4;
    }
  }

  return v2;
}

uint64_t ecdsa_verify_wrap(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unsigned __int8 *a5, uint64_t a6)
{
  signature = mbedtls_ecdsa_read_signature(*(a1 + 8), a3, a4, a5, a6);
  if (signature == -19456)
  {
    return -14592;
  }

  else
  {
    return signature;
  }
}

uint64_t eckey_alloc_wrap()
{
  v1 = mbedtls_calloc(1, 256);
  if (v1)
  {
    mbedtls_ecp_keypair_init(v1);
  }

  return v1;
}

uint64_t eckey_debug(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  *a2 = 2;
  *(a2 + 8) = "eckey.Q";
  *(a2 + 16) = v2 + 208;
  return result;
}

BOOL eckeydh_can_do(int a1)
{
  v2 = 1;
  if (a1 != 2)
  {
    return a1 == 3;
  }

  return v2;
}

uint64_t mbedtls_pk_parse_subpubkey(unsigned __int8 **a1, unsigned __int8 *a2, unsigned int **a3)
{
  v13 = a1;
  v12 = a2;
  v11 = a3;
  tag = -110;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v7 = 0;
  v6 = 0;
  tag = mbedtls_asn1_get_tag(a1, a2, &v9, 48);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  else
  {
    v12 = &(*v13)[v9];
    tag = pk_get_pk_alg(v13, v12, &v7, v8, &v6);
    if (tag)
    {
      return tag;
    }

    else
    {
      tag = mbedtls_asn1_get_bitstring_null(v13, v12, &v9);
      if (tag)
      {
        return mbedtls_error_add(-15104, tag);
      }

      else if (&(*v13)[v9] == v12)
      {
        v5 = mbedtls_pk_info_from_type(v7);
        if (v5)
        {
          tag = mbedtls_pk_setup(v11, v5);
          if (tag)
          {
            return tag;
          }

          else
          {
            if (v7 == 1)
            {
              v3 = mbedtls_pk_rsa(*v11, v11[1]);
              tag = mbedtls_rsa_parse_pubkey(v3, *v13, (v12 - *v13));
              if (tag)
              {
                if (tag > -96 || tag < -108)
                {
                  tag = -15104;
                }

                else
                {
                  tag = mbedtls_error_add(-15104, tag);
                }
              }

              else
              {
                *v13 = v12;
              }
            }

            else if (v7 == 3 || v7 == 2)
            {
              tag = pk_use_ecparams(v8, v11);
              if (!tag)
              {
                tag = mbedtls_pk_ecc_set_pubkey(v11, *v13, v12 - *v13);
                *v13 = v12;
              }
            }

            else
            {
              tag = -15488;
            }

            if (!tag && *v13 != v12)
            {
              tag = mbedtls_error_add(-15104, -102);
            }

            if (tag)
            {
              mbedtls_pk_free(v11);
            }

            return tag;
          }
        }

        else
        {
          return -15488;
        }
      }

      else
      {
        return mbedtls_error_add(-15104, -102);
      }
    }
  }
}

uint64_t pk_get_pk_alg(unsigned __int8 **a1, unsigned __int8 *a2, _DWORD *a3, _DWORD *a4, _DWORD *a5)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  v9 = a4;
  v8 = a5;
  alg = -110;
  memset(v6, 0, sizeof(v6));
  __memset_chk();
  alg = mbedtls_asn1_get_alg(v12, v11, v6, v9);
  if (alg)
  {
    return mbedtls_error_add(-14976, alg);
  }

  else
  {
    alg = mbedtls_oid_get_pk_alg(v6, v10);
    if (alg == -46)
    {
      alg = mbedtls_oid_get_ec_grp_algid(v6, v8);
      if (!alg)
      {
        *v10 = 2;
      }
    }

    if (alg)
    {
      return -15488;
    }

    else if (*v10 == 1 && (*v9 != 5 && *v9 || *(v9 + 1)))
    {
      return -14976;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t pk_use_ecparams(_DWORD *a1, unsigned int **a2)
{
  v6 = a1;
  v5 = a2;
  v4 = -110;
  v3 = 0;
  if (*a1 != 6)
  {
    v4 = pk_ecc_group_id_from_specified();
    if (v4)
    {
      return v4;
    }

    return mbedtls_pk_ecc_set_group(v5, v3);
  }

  if (!mbedtls_oid_get_ec_grp(v6, &v3))
  {
    return mbedtls_pk_ecc_set_group(v5, v3);
  }

  return -14848;
}

uint64_t mbedtls_pk_parse_key(unsigned int **a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, unint64_t), uint64_t a7)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  v17 = a6;
  v16 = a7;
  v15 = -110;
  v14 = 0;
  v13 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  if (!a3)
  {
    return -15616;
  }

  mbedtls_pem_init(&v10);
  if (v21[v20 - 1])
  {
    v15 = -4224;
  }

  else
  {
    v15 = mbedtls_pem_read_buffer(&v10, "-----BEGIN RSA PRIVATE KEY-----", "-----END RSA PRIVATE KEY-----", v21, v19, v18, &v13);
  }

  switch(v15)
  {
    case 0u:
      v14 = mbedtls_pk_info_from_type(1);
      v15 = mbedtls_pk_setup(v22, v14);
      if (v15 || (v7 = mbedtls_pk_rsa(*v22, v22[1]), (v15 = mbedtls_rsa_parse_key(v7, v10, v11)) != 0))
      {
        mbedtls_pk_free(v22);
      }

LABEL_37:
      mbedtls_pem_free(&v10);
      return v15;
    case 0xFFFFEC80:
      return -15232;
    case 0xFFFFED00:
      return -15360;
  }

  if (v15 != -4224)
  {
    return v15;
  }

  if (v21[v20 - 1])
  {
    v15 = -4224;
  }

  else
  {
    v15 = mbedtls_pem_read_buffer(&v10, "-----BEGIN EC PRIVATE KEY-----", "-----END EC PRIVATE KEY-----", v21, v19, v18, &v13);
  }

  switch(v15)
  {
    case 0u:
      v14 = mbedtls_pk_info_from_type(2);
      v15 = mbedtls_pk_setup(v22, v14);
      if (v15 || (v15 = pk_parse_key_sec1_der(v22, v10, v11, v17, v16)) != 0)
      {
        mbedtls_pk_free(v22);
      }

      goto LABEL_37;
    case 0xFFFFEC80:
      return -15232;
    case 0xFFFFED00:
      return -15360;
  }

  if (v15 != -4224)
  {
    return v15;
  }

  if (v21[v20 - 1])
  {
    v15 = -4224;
  }

  else
  {
    v15 = mbedtls_pem_read_buffer(&v10, "-----BEGIN PRIVATE KEY-----", "-----END PRIVATE KEY-----", v21, 0, 0, &v13);
  }

  if (!v15)
  {
    v15 = pk_parse_key_pkcs8_unencrypted_der(v22, v10, v11, v17, v16);
    if (v15)
    {
      mbedtls_pk_free(v22);
    }

    goto LABEL_37;
  }

  if (v15 == -4224)
  {
    v15 = pk_parse_key_pkcs8_unencrypted_der(v22, v21, v20, v17, v16);
    if (v15)
    {
      mbedtls_pk_free(v22);
      mbedtls_pk_init(v22);
      v14 = mbedtls_pk_info_from_type(1);
      if (mbedtls_pk_setup(v22, v14) || (v8 = mbedtls_pk_rsa(*v22, v22[1]), mbedtls_rsa_parse_key(v8, v21, v20)))
      {
        mbedtls_pk_free(v22);
        mbedtls_pk_init(v22);
        v14 = mbedtls_pk_info_from_type(2);
        if (mbedtls_pk_setup(v22, v14) || pk_parse_key_sec1_der(v22, v21, v20, v17, v16))
        {
          mbedtls_pk_free(v22);
          return -15616;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return v15;
  }
}

uint64_t pk_parse_key_sec1_der(unsigned int **a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t), uint64_t a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  tag = -110;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  v9 = a2;
  tag = mbedtls_asn1_get_tag(&v9, &a2[a3], &v12, 48);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  v7 = &v9[v12];
  tag = mbedtls_asn1_get_int(&v9, &v9[v12], &v14);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  if (v14 != 1)
  {
    return -15744;
  }

  tag = mbedtls_asn1_get_tag(&v9, v7, &v12, 4);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  v8 = v9;
  v11 = v12;
  v9 += v12;
  v13 = 0;
  if (v9 != v7)
  {
    tag = mbedtls_asn1_get_tag(&v9, v7, &v12, 160);
    if (tag)
    {
      if (tag != -98)
      {
        return mbedtls_error_add(-15616, tag);
      }
    }

    else
    {
      tag = pk_get_ecparams(&v9, &v9[v12], v10);
      if (tag || (tag = pk_use_ecparams(v10, v20)) != 0)
      {
        return tag;
      }
    }
  }

  tag = mbedtls_pk_ecc_set_key(v20, v8, v11);
  if (tag)
  {
    return tag;
  }

  if (v9 == v7)
  {
    goto LABEL_29;
  }

  tag = mbedtls_asn1_get_tag(&v9, v7, &v12, 161);
  if (!tag)
  {
    v6 = &v9[v12];
    tag = mbedtls_asn1_get_bitstring_null(&v9, &v9[v12], &v12);
    if (!tag)
    {
      if (&v9[v12] != v6)
      {
        return mbedtls_error_add(-15616, -102);
      }

      tag = mbedtls_pk_ecc_set_pubkey(v20, v9, v6 - v9);
      if (tag)
      {
        if (tag != -20096)
        {
          return -15616;
        }
      }

      else
      {
        v13 = 1;
      }

      goto LABEL_29;
    }

    return mbedtls_error_add(-15616, tag);
  }

  if (tag != -98)
  {
    return mbedtls_error_add(-15616, tag);
  }

LABEL_29:
  if (v13 || (tag = mbedtls_pk_ecc_set_pubkey_from_prv(v20, v8, v11, v17, v16)) == 0)
  {
    return 0;
  }

  else
  {
    return tag;
  }
}

uint64_t pk_parse_key_pkcs8_unencrypted_der(unsigned int **a1, unsigned __int8 *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t), uint64_t a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  tag = 0;
  v14 = 0;
  v13 = 0;
  memset(v12, 0, sizeof(v12));
  v11 = a2;
  v10 = &a2[a3];
  v9 = 0;
  v8 = 0;
  tag = mbedtls_asn1_get_tag(&v11, &a2[a3], &v13, 48);
  if (tag)
  {
    return mbedtls_error_add(-15616, tag);
  }

  v10 = &v11[v13];
  if ((tag = mbedtls_asn1_get_int(&v11, &v11[v13], &v14)) != 0)
  {
    return mbedtls_error_add(-15616, tag);
  }

  else
  {
    if (v14)
    {
      return mbedtls_error_add(-15744, tag);
    }

    tag = pk_get_pk_alg(&v11, v10, &v9, v12, &v8);
    if (tag)
    {
      return tag;
    }

    tag = mbedtls_asn1_get_tag(&v11, v10, &v13, 4);
    if (tag)
    {
      return mbedtls_error_add(-15616, tag);
    }

    if (!v13)
    {
      return mbedtls_error_add(-15616, -96);
    }

    v7 = mbedtls_pk_info_from_type(v9);
    if (!v7)
    {
      return -15488;
    }

    tag = mbedtls_pk_setup(v20, v7);
    if (tag)
    {
      return tag;
    }

    if (v9 == 1)
    {
      v5 = mbedtls_pk_rsa(*v20, v20[1]);
      tag = mbedtls_rsa_parse_key(v5, v11, v13);
      if (tag)
      {
LABEL_18:
        mbedtls_pk_free(v20);
        return tag;
      }
    }

    else
    {
      if (v9 != 2 && v9 != 3)
      {
        return -15488;
      }

      tag = pk_use_ecparams(v12, v20);
      if (tag)
      {
        goto LABEL_18;
      }

      tag = pk_parse_key_sec1_der(v20, v11, v13, v17, v16);
      if (tag)
      {
        goto LABEL_18;
      }
    }

    v10 = &v11[v13];
    if (&v11[v13] == &v19[v18])
    {
      return 0;
    }

    else
    {
      return mbedtls_error_add(-15616, -102);
    }
  }
}

uint64_t mbedtls_pk_parse_public_key(unsigned int **a1, char *a2, unsigned __int8 *a3)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = -110;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  if (!a3)
  {
    return -15616;
  }

  mbedtls_pem_init(&v6);
  if (v13[v14 - 1])
  {
    v12 = -4224;
  }

  else
  {
    v12 = mbedtls_pem_read_buffer(&v6, "-----BEGIN RSA PUBLIC KEY-----", "-----END RSA PUBLIC KEY-----", v14, 0, 0, &v9);
  }

  if (!v12)
  {
    v11 = v6;
    v10 = mbedtls_pk_info_from_type(1);
    if (!v10)
    {
      mbedtls_pem_free(&v6);
      return -15488;
    }

    v12 = mbedtls_pk_setup(v15, v10);
    if (!v12)
    {
      v3 = mbedtls_pk_rsa(*v15, v15[1]);
      v12 = mbedtls_rsa_parse_pubkey(v3, v11, v7);
      if (v12)
      {
        mbedtls_pk_free(v15);
      }
    }

LABEL_21:
    mbedtls_pem_free(&v6);
    return v12;
  }

  if (v12 != -4224)
  {
    goto LABEL_21;
  }

  if (v13[v14 - 1])
  {
    v12 = -4224;
  }

  else
  {
    v12 = mbedtls_pem_read_buffer(&v6, "-----BEGIN PUBLIC KEY-----", "-----END PUBLIC KEY-----", v14, 0, 0, &v9);
  }

  if (!v12)
  {
    v11 = v6;
    v12 = mbedtls_pk_parse_subpubkey(&v11, &v7[v6], v15);
    mbedtls_pem_free(&v6);
    return v12;
  }

  if (v12 != -4224)
  {
    goto LABEL_21;
  }

  mbedtls_pem_free(&v6);
  v10 = mbedtls_pk_info_from_type(1);
  if (v10)
  {
    v12 = mbedtls_pk_setup(v15, v10);
    if (v12)
    {
      return v12;
    }

    else
    {
      v11 = v14;
      v4 = mbedtls_pk_rsa(*v15, v15[1]);
      v12 = mbedtls_rsa_parse_pubkey(v4, v11, v13);
      if (v12)
      {
        mbedtls_pk_free(v15);
        if (v12 == -98)
        {
          v11 = v14;
          return mbedtls_pk_parse_subpubkey(&v11, &v13[v14], v15);
        }

        return v12;
      }

      else
      {
        return 0;
      }
    }
  }

  else
  {
    return -15488;
  }
}

uint64_t pk_get_ecparams(unsigned __int8 **a1, unsigned __int8 *a2, unsigned int *a3)
{
  if (a2 - *a1 >= 1)
  {
    *a3 = **a1;
    if (*a3 == 6 || pk_ecc_tag_is_specified_ec_domain())
    {
      tag = mbedtls_asn1_get_tag(a1, a2, a3 + 1, *a3);
      if (tag)
      {
        return mbedtls_error_add(-15616, tag);
      }

      else
      {
        *(a3 + 2) = *a1;
        *a1 += *(a3 + 1);
        if (*a1 == a2)
        {
          return 0;
        }

        else
        {
          return mbedtls_error_add(-15616, -102);
        }
      }
    }

    else
    {
      return mbedtls_error_add(-15616, -98);
    }
  }

  else
  {
    return mbedtls_error_add(-15616, -96);
  }
}

uint64_t mbedtls_platform_set_calloc_free(uint64_t (*a1)(void, void), uint64_t (*a2)(void))
{
  mbedtls_calloc_func = a1;
  mbedtls_free_func = a2;
  return 0;
}

void *mbedtls_platform_zeroize(void *result, size_t a2)
{
  if (a2)
  {
    return _memset(result, 0, a2);
  }

  return result;
}

uint64_t mbedtls_zeroize_and_free(void *a1, size_t a2)
{
  if (a1)
  {
    mbedtls_platform_zeroize(a1, a2);
  }

  return mbedtls_free(a1);
}

uint64_t mbedtls_rsa_parse_key(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  tag = 0;
  v8 = 0;
  v7 = 0;
  v6 = 0;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v4);
  v6 = v11;
  v5 = &v11[v10];
  tag = mbedtls_asn1_get_tag(&v6, &v11[v10], &v7, 48);
  if (tag)
  {
    return tag;
  }

  else if (v5 == &v6[v7])
  {
    tag = mbedtls_asn1_get_int(&v6, v5, &v8);
    if (tag)
    {
      return tag;
    }

    else if (v8)
    {
      return -16512;
    }

    else
    {
      tag = asn1_get_nonzero_mpi(&v6, v5, v4);
      if (!tag)
      {
        tag = mbedtls_rsa_import(v12, v4, 0, 0, 0, 0);
        if (!tag)
        {
          tag = asn1_get_nonzero_mpi(&v6, v5, v4);
          if (!tag)
          {
            tag = mbedtls_rsa_import(v12, 0, 0, 0, 0, v4);
            if (!tag)
            {
              tag = asn1_get_nonzero_mpi(&v6, v5, v4);
              if (!tag)
              {
                tag = mbedtls_rsa_import(v12, 0, 0, 0, v4, 0);
                if (!tag)
                {
                  tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                  if (!tag)
                  {
                    tag = mbedtls_rsa_import(v12, 0, v4, 0, 0, 0);
                    if (!tag)
                    {
                      tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                      if (!tag)
                      {
                        tag = mbedtls_rsa_import(v12, 0, 0, v4, 0, 0);
                        if (!tag)
                        {
                          tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                          if (!tag)
                          {
                            tag = mbedtls_mpi_copy((v12 + 12), v4);
                            if (!tag)
                            {
                              tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                              if (!tag)
                              {
                                tag = mbedtls_mpi_copy((v12 + 14), v4);
                                if (!tag)
                                {
                                  tag = asn1_get_nonzero_mpi(&v6, v5, v4);
                                  if (!tag)
                                  {
                                    tag = mbedtls_mpi_copy((v12 + 16), v4);
                                    if (!tag)
                                    {
                                      tag = mbedtls_rsa_complete(v12);
                                      if (!tag)
                                      {
                                        tag = mbedtls_rsa_check_pubkey(v12);
                                        if (!tag && v6 != v5)
                                        {
                                          tag = -102;
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

      mbedtls_mpi_free(v4);
      if (tag)
      {
        mbedtls_rsa_free(v12);
      }

      return tag;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t asn1_get_nonzero_mpi(unsigned __int8 **a1, uint64_t a2, uint64_t a3)
{
  mpi = mbedtls_asn1_get_mpi(a1, a2, a3);
  if (mpi)
  {
    return mpi;
  }

  else if (mbedtls_mpi_cmp_int(a3, 0))
  {
    return 0;
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_import(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2 && (v7 = mbedtls_mpi_copy(a1 + 16, a2)) != 0 || a3 && (v7 = mbedtls_mpi_copy(a1 + 64, a3)) != 0 || a4 && (v7 = mbedtls_mpi_copy(a1 + 80, a4)) != 0 || a5 && (v7 = mbedtls_mpi_copy(a1 + 48, a5)) != 0 || a6 && (v7 = mbedtls_mpi_copy(a1 + 32, a6)) != 0)
  {
    return mbedtls_error_add(-16512, v7);
  }

  else
  {
    if (a2)
    {
      *(a1 + 8) = mbedtls_mpi_size(a1 + 16);
    }

    return 0;
  }
}

uint64_t mbedtls_rsa_complete(void *a1)
{
  v14 = mbedtls_mpi_cmp_int((a1 + 2), 0) != 0;
  v13 = mbedtls_mpi_cmp_int((a1 + 8), 0) != 0;
  v12 = mbedtls_mpi_cmp_int((a1 + 10), 0) != 0;
  v11 = mbedtls_mpi_cmp_int((a1 + 6), 0) != 0;
  v10 = mbedtls_mpi_cmp_int((a1 + 4), 0) != 0;
  v9 = mbedtls_mpi_cmp_int((a1 + 12), 0) != 0;
  v8 = mbedtls_mpi_cmp_int((a1 + 14), 0) != 0;
  v7 = mbedtls_mpi_cmp_int((a1 + 16), 0) != 0;
  v6 = 0;
  if (v13)
  {
    v6 = 0;
    if (v12)
    {
      v6 = 0;
      if (v11)
      {
        v6 = v10;
      }
    }
  }

  v5 = 0;
  if (v14)
  {
    v5 = 0;
    if (!v13)
    {
      v5 = 0;
      if (!v12)
      {
        v5 = 0;
        if (v11)
        {
          v5 = v10;
        }
      }
    }
  }

  v4 = 0;
  if (v13)
  {
    v4 = 0;
    if (v12)
    {
      v4 = 0;
      if (!v11)
      {
        v4 = v10;
      }
    }
  }

  v3 = 0;
  if (v14)
  {
    v3 = 0;
    if (!v13)
    {
      v3 = 0;
      if (!v12)
      {
        v3 = 0;
        if (!v11)
        {
          v3 = v10;
        }
      }
    }
  }

  v2 = 1;
  if (!v6)
  {
    v2 = 1;
    if (!v5)
    {
      v2 = v4;
    }
  }

  if (v2 || v3)
  {
    if (!v14 && v13 && v12)
    {
      v15 = mbedtls_mpi_mul_mpi(a1 + 2, a1 + 8, a1 + 10);
      if (v15)
      {
        return mbedtls_error_add(-16512, v15);
      }

      a1[1] = mbedtls_mpi_size((a1 + 2));
    }

    if (v5)
    {
      v15 = mbedtls_rsa_deduce_primes(a1 + 2, a1 + 4, a1 + 6, a1 + 8, a1 + 5);
      if (v15)
      {
        return mbedtls_error_add(-16512, v15);
      }
    }

    else if (v4)
    {
      v15 = mbedtls_rsa_deduce_private_exponent((a1 + 8), (a1 + 10), (a1 + 4), (a1 + 6));
      if (v15)
      {
        return mbedtls_error_add(-16512, v15);
      }
    }

    if (!v2 || v9 && v8 && v7 || (v15 = mbedtls_rsa_deduce_crt((a1 + 8), (a1 + 10), (a1 + 6), (a1 + 12), (a1 + 14), (a1 + 16))) == 0)
    {
      return rsa_check_context(a1, v2);
    }

    return mbedtls_error_add(-16512, v15);
  }

  return -16512;
}

uint64_t mbedtls_rsa_check_pubkey(uint64_t a1)
{
  if (rsa_check_context(a1, 0))
  {
    return -16896;
  }

  else if (mbedtls_mpi_bitlen(a1 + 16) >= 0x80)
  {
    if (mbedtls_mpi_get_bit(a1 + 32, 0) && mbedtls_mpi_bitlen(a1 + 32) >= 2 && (mbedtls_mpi_cmp_mpi(a1 + 32, a1 + 16) & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return -16896;
    }
  }

  else
  {
    return -16896;
  }
}

uint64_t mbedtls_rsa_free(uint64_t result)
{
  v1 = result;
  if (result)
  {
    mbedtls_mpi_free(result + 192);
    mbedtls_mpi_free(v1 + 208);
    mbedtls_mpi_free(v1 + 144);
    mbedtls_mpi_free(v1 + 48);
    mbedtls_mpi_free(v1 + 80);
    mbedtls_mpi_free(v1 + 64);
    mbedtls_mpi_free(v1 + 32);
    mbedtls_mpi_free(v1 + 16);
    mbedtls_mpi_free(v1 + 176);
    mbedtls_mpi_free(v1 + 160);
    mbedtls_mpi_free(v1 + 128);
    mbedtls_mpi_free(v1 + 112);
    return mbedtls_mpi_free(v1 + 96);
  }

  return result;
}

uint64_t mbedtls_rsa_parse_pubkey(void *a1, unsigned __int8 *a2, unsigned __int8 *a3)
{
  v8 = a1;
  v7[2] = a2;
  v7[1] = a3;
  v7[0] = a2;
  v6 = &a3[a2];
  tag = -110;
  v4 = 0;
  tag = mbedtls_asn1_get_tag(v7, &a3[a2], &v4, 48);
  if (tag)
  {
    return tag;
  }

  else if (v6 == &v7[0][v4])
  {
    tag = mbedtls_asn1_get_tag(v7, v6, &v4, 2);
    if (tag)
    {
      return tag;
    }

    else
    {
      tag = mbedtls_rsa_import_raw(v8, v7[0], v4, 0, 0, 0, 0, 0, 0, 0, 0);
      if (tag)
      {
        return -16512;
      }

      else
      {
        v7[0] += v4;
        tag = mbedtls_asn1_get_tag(v7, v6, &v4, 2);
        if (tag)
        {
          return tag;
        }

        else
        {
          tag = mbedtls_rsa_import_raw(v8, 0, 0, 0, 0, 0, 0, 0, 0, v7[0], v4);
          if (tag)
          {
            return -16512;
          }

          else
          {
            v7[0] += v4;
            if (mbedtls_rsa_complete(v8) || mbedtls_rsa_check_pubkey(v8))
            {
              return -16512;
            }

            else if (v7[0] == v6)
            {
              return 0;
            }

            else
            {
              return -102;
            }
          }
        }
      }
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_import_raw(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11)
{
  binary = 0;
  if (a2)
  {
    binary = mbedtls_mpi_read_binary(a1 + 16, a2, a3);
    if (binary)
    {
      goto LABEL_12;
    }

    *(a1 + 8) = mbedtls_mpi_size(a1 + 16);
  }

  if ((!a4 || (binary = mbedtls_mpi_read_binary(a1 + 64, a4, a5)) == 0) && (!a6 || (binary = mbedtls_mpi_read_binary(a1 + 80, a6, a7)) == 0) && (!a8 || (binary = mbedtls_mpi_read_binary(a1 + 48, a8, a9)) == 0))
  {
    if (a10)
    {
      binary = mbedtls_mpi_read_binary(a1 + 32, a10, a11);
    }
  }

LABEL_12:
  if (binary)
  {
    return mbedtls_error_add(-16512, binary);
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_write_key(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = 0;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v4);
  v5 = mbedtls_rsa_export_crt(v9, 0, 0, v4);
  if (!v5)
  {
    v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
    if ((v5 & 0x80000000) == 0)
    {
      v6 += v5;
      v5 = mbedtls_rsa_export_crt(v9, 0, v4, 0);
      if (!v5)
      {
        v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
        if ((v5 & 0x80000000) == 0)
        {
          v6 += v5;
          v5 = mbedtls_rsa_export_crt(v9, v4, 0, 0);
          if (!v5)
          {
            v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
            if ((v5 & 0x80000000) == 0)
            {
              v6 += v5;
              v5 = mbedtls_rsa_export(v9, 0, 0, v4, 0, 0);
              if (!v5)
              {
                v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                if ((v5 & 0x80000000) == 0)
                {
                  v6 += v5;
                  v5 = mbedtls_rsa_export(v9, 0, v4, 0, 0, 0);
                  if (!v5)
                  {
                    v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                    if ((v5 & 0x80000000) == 0)
                    {
                      v6 += v5;
                      v5 = mbedtls_rsa_export(v9, 0, 0, 0, v4, 0);
                      if (!v5)
                      {
                        v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                        if ((v5 & 0x80000000) == 0)
                        {
                          v6 += v5;
                          v5 = mbedtls_rsa_export(v9, 0, 0, 0, 0, v4);
                          if (!v5)
                          {
                            v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                            if ((v5 & 0x80000000) == 0)
                            {
                              v6 += v5;
                              v5 = mbedtls_rsa_export(v9, v4, 0, 0, 0, 0);
                              if (!v5)
                              {
                                v5 = mbedtls_asn1_write_mpi(v7, v8, v4);
                                if ((v5 & 0x80000000) == 0)
                                {
                                  v6 += v5;
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

  mbedtls_mpi_free(v4);
  if ((v5 & 0x80000000) != 0)
  {
    return v5;
  }

  else
  {
    v5 = mbedtls_asn1_write_int(v7, v8, 0);
    if ((v5 & 0x80000000) != 0)
    {
      return v5;
    }

    else
    {
      v6 += v5;
      v5 = mbedtls_asn1_write_len(v7, v8, v6);
      if ((v5 & 0x80000000) != 0)
      {
        return v5;
      }

      else
      {
        v6 += v5;
        v5 = mbedtls_asn1_write_tag(v7, v8, 48);
        if ((v5 & 0x80000000) != 0)
        {
          return v5;
        }

        else
        {
          v6 += v5;
          return v6;
        }
      }
    }
  }
}

uint64_t mbedtls_rsa_export_crt(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  if (mbedtls_mpi_cmp_int(a1 + 16, 0))
  {
    v5 = 0;
    if (mbedtls_mpi_cmp_int(a1 + 64, 0))
    {
      v5 = 0;
      if (mbedtls_mpi_cmp_int(a1 + 80, 0))
      {
        v5 = 0;
        if (mbedtls_mpi_cmp_int(a1 + 48, 0))
        {
          v5 = mbedtls_mpi_cmp_int(a1 + 32, 0) != 0;
        }
      }
    }
  }

  if (v5)
  {
    if (a2 && (v6 = mbedtls_mpi_copy(a2, a1 + 96)) != 0 || a3 && (v6 = mbedtls_mpi_copy(a3, a1 + 112)) != 0 || a4 && (v6 = mbedtls_mpi_copy(a4, a1 + 128)) != 0)
    {
      return mbedtls_error_add(-16512, v6);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_export(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = 0;
  if (mbedtls_mpi_cmp_int(a1 + 16, 0))
  {
    v7 = 0;
    if (mbedtls_mpi_cmp_int(a1 + 64, 0))
    {
      v7 = 0;
      if (mbedtls_mpi_cmp_int(a1 + 80, 0))
      {
        v7 = 0;
        if (mbedtls_mpi_cmp_int(a1 + 48, 0))
        {
          v7 = mbedtls_mpi_cmp_int(a1 + 32, 0) != 0;
        }
      }
    }
  }

  if (!v7 && (a3 || a4 || a5))
  {
    return -16512;
  }

  else if (a2 && (v8 = mbedtls_mpi_copy(a2, a1 + 16)) != 0 || a3 && (v8 = mbedtls_mpi_copy(a3, a1 + 64)) != 0 || a4 && (v8 = mbedtls_mpi_copy(a4, a1 + 80)) != 0 || a5 && (v8 = mbedtls_mpi_copy(a5, a1 + 48)) != 0 || a6 && (v8 = mbedtls_mpi_copy(a6, a1 + 32)) != 0)
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_write_pubkey(uint64_t a1, unint64_t a2, unint64_t *a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  v6 = -110;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v4);
  v6 = mbedtls_rsa_export(v9, 0, 0, 0, 0, v4);
  if (!v6)
  {
    v6 = mbedtls_asn1_write_mpi(v7, v8, v4);
    if ((v6 & 0x80000000) == 0)
    {
      v5 += v6;
      v6 = mbedtls_rsa_export(v9, v4, 0, 0, 0, 0);
      if (!v6)
      {
        v6 = mbedtls_asn1_write_mpi(v7, v8, v4);
        if ((v6 & 0x80000000) == 0)
        {
          v5 += v6;
        }
      }
    }
  }

  mbedtls_mpi_free(v4);
  if (v6 < 0)
  {
    return v6;
  }

  else
  {
    v6 = mbedtls_asn1_write_len(v7, v8, v5);
    if (v6 < 0)
    {
      return v6;
    }

    else
    {
      v5 += v6;
      v6 = mbedtls_asn1_write_tag(v7, v8, 48);
      if (v6 < 0)
      {
        return v6;
      }

      else
      {
        v5 += v6;
        return v5;
      }
    }
  }
}

uint64_t rsa_check_context(uint64_t a1, int a2)
{
  v4 = *(a1 + 8);
  if (v4 == mbedtls_mpi_size(a1 + 16) && *(a1 + 8) <= 0x20uLL)
  {
    v2 = mbedtls_mpi_cmp_int(a1 + 16, 0);
    if (v2 > 0 && mbedtls_mpi_get_bit(a1 + 16, 0))
    {
      if (!a2 || mbedtls_mpi_cmp_int(a1 + 64, 0) > 0 && mbedtls_mpi_get_bit(a1 + 64, 0) && mbedtls_mpi_cmp_int(a1 + 80, 0) > 0 && mbedtls_mpi_get_bit(a1 + 80, 0))
      {
        if (mbedtls_mpi_cmp_int(a1 + 32, 0) > 0)
        {
          if (a2 && (mbedtls_mpi_cmp_int(a1 + 96, 0) <= 0 || mbedtls_mpi_cmp_int(a1 + 112, 0) <= 0))
          {
            return -16512;
          }

          else if (a2 && mbedtls_mpi_cmp_int(a1 + 128, 0) <= 0)
          {
            return -16512;
          }

          else
          {
            return 0;
          }
        }

        else
        {
          return -16512;
        }
      }

      else
      {
        return -16512;
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_export_raw(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, unint64_t a9, unint64_t a10, unint64_t a11)
{
  v13 = 0;
  v12 = 0;
  if (mbedtls_mpi_cmp_int(a1 + 16, 0))
  {
    v12 = 0;
    if (mbedtls_mpi_cmp_int(a1 + 64, 0))
    {
      v12 = 0;
      if (mbedtls_mpi_cmp_int(a1 + 80, 0))
      {
        v12 = 0;
        if (mbedtls_mpi_cmp_int(a1 + 48, 0))
        {
          v12 = mbedtls_mpi_cmp_int(a1 + 32, 0) != 0;
        }
      }
    }
  }

  if (!v12 && (a4 || a6 || a8))
  {
    return -16512;
  }

  else
  {
    if ((!a2 || (v13 = mbedtls_mpi_write_binary(a1 + 16, a2, a3)) == 0) && (!a4 || (v13 = mbedtls_mpi_write_binary(a1 + 64, a4, a5)) == 0) && (!a6 || (v13 = mbedtls_mpi_write_binary(a1 + 80, a6, a7)) == 0) && (!a8 || (v13 = mbedtls_mpi_write_binary(a1 + 48, a8, a9)) == 0))
    {
      if (a10)
      {
        return mbedtls_mpi_write_binary(a1 + 32, a10, a11);
      }
    }

    return v13;
  }
}

uint64_t mbedtls_rsa_init(uint64_t a1)
{
  result = __memset_chk();
  *(a1 + 224) = 0;
  *(a1 + 228) = 0;
  return result;
}

uint64_t mbedtls_rsa_set_padding(uint64_t a1, int a2, int a3)
{
  if (a2 == 1)
  {
    if (!a3 || mbedtls_md_info_from_type(a3))
    {
      *(a1 + 224) = 1;
      *(a1 + 228) = a3;
      return 0;
    }

    else
    {
      return -16640;
    }
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_check_privkey(uint64_t *a1)
{
  if (mbedtls_rsa_check_pubkey(a1) || rsa_check_context(a1, 1))
  {
    return -16896;
  }

  else if (mbedtls_rsa_validate_params((a1 + 2), a1 + 8, a1 + 10, a1 + 6, a1 + 4, 0, 0))
  {
    return -16896;
  }

  else if (mbedtls_rsa_validate_crt((a1 + 8), a1 + 10, (a1 + 6), (a1 + 12), (a1 + 14), a1 + 16))
  {
    return -16896;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_check_pub_priv(uint64_t a1, uint64_t *a2)
{
  if (mbedtls_rsa_check_pubkey(a1) || mbedtls_rsa_check_privkey(a2))
  {
    return -16896;
  }

  else if (mbedtls_mpi_cmp_mpi(a1 + 16, (a2 + 2)) || mbedtls_mpi_cmp_mpi(a1 + 32, (a2 + 4)))
  {
    return -16896;
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_rsa_public(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v9 = a1;
  v8 = a2;
  v7 = a3;
  binary = -110;
  v5 = 0;
  v4[0] = 0;
  v4[1] = 0;
  if (rsa_check_context(a1, 0))
  {
    return -16512;
  }

  else
  {
    mbedtls_mpi_init(v4);
    binary = mbedtls_mpi_read_binary(v4, v8, *(v9 + 8));
    if (!binary)
    {
      if ((mbedtls_mpi_cmp_mpi(v4, v9 + 16) & 0x80000000) != 0)
      {
        v5 = *(v9 + 8);
        binary = mbedtls_mpi_exp_mod(v4, v4, v9 + 32, (v9 + 16), (v9 + 144));
        if (!binary)
        {
          binary = mbedtls_mpi_write_binary(v4, v7, v5);
        }
      }

      else
      {
        binary = -4;
      }
    }

    mbedtls_mpi_free(v4);
    if (binary)
    {
      return mbedtls_error_add(-17024, binary);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t mbedtls_rsa_private(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3, uint64_t a4, unint64_t a5)
{
  v22 = a1;
  v21 = a2;
  v20 = a3;
  v19 = a4;
  v18 = a5;
  binary = -110;
  v16 = 0;
  v15[0] = 0;
  v15[1] = 0;
  v14[0] = 0;
  v14[1] = 0;
  v13[0] = 0;
  v13[1] = 0;
  v12[0] = 0;
  v12[1] = 0;
  v11[0] = 0;
  v11[1] = 0;
  v10[0] = 0;
  v10[1] = 0;
  v9[0] = 0;
  v9[1] = 0;
  v8[0] = 0;
  v8[1] = 0;
  v7[0] = 0;
  v7[1] = 0;
  v6[0] = 0;
  v6[1] = 0;
  if (a2)
  {
    if (rsa_check_context(v22, 1))
    {
      return -16512;
    }

    else
    {
      mbedtls_mpi_init(v15);
      mbedtls_mpi_init(v14);
      mbedtls_mpi_init(v13);
      mbedtls_mpi_init(v12);
      mbedtls_mpi_init(v9);
      mbedtls_mpi_init(v8);
      mbedtls_mpi_init(v11);
      mbedtls_mpi_init(v10);
      mbedtls_mpi_init(v7);
      mbedtls_mpi_init(v6);
      binary = mbedtls_mpi_read_binary(v15, v19, *(v22 + 8));
      if (!binary)
      {
        if ((mbedtls_mpi_cmp_mpi(v15, v22 + 16) & 0x80000000) != 0)
        {
          binary = rsa_prepare_blinding(v22, v21, v20);
          if (!binary)
          {
            binary = mbedtls_mpi_mul_mpi(v15, v15, (v22 + 192));
            if (!binary)
            {
              binary = mbedtls_mpi_mod_mpi(v15, v15, v22 + 16);
              if (!binary)
              {
                binary = mbedtls_mpi_copy(v7, v15);
                if (!binary)
                {
                  binary = mbedtls_mpi_sub_int(v14, v22 + 64, 1uLL);
                  if (!binary)
                  {
                    binary = mbedtls_mpi_sub_int(v13, v22 + 80, 1uLL);
                    if (!binary)
                    {
                      binary = mbedtls_mpi_fill_random(v12, 0x1CuLL, v21, v20);
                      if (!binary)
                      {
                        binary = mbedtls_mpi_mul_mpi(v9, v14, v12);
                        if (!binary)
                        {
                          binary = mbedtls_mpi_add_mpi(v9, v9, v22 + 96);
                          if (!binary)
                          {
                            binary = mbedtls_mpi_fill_random(v12, 0x1CuLL, v21, v20);
                            if (!binary)
                            {
                              binary = mbedtls_mpi_mul_mpi(v8, v13, v12);
                              if (!binary)
                              {
                                binary = mbedtls_mpi_add_mpi(v8, v8, v22 + 112);
                                if (!binary)
                                {
                                  binary = mbedtls_mpi_exp_mod(v11, v15, v9, (v22 + 64), (v22 + 160));
                                  if (!binary)
                                  {
                                    binary = mbedtls_mpi_exp_mod(v10, v15, v8, (v22 + 80), (v22 + 176));
                                    if (!binary)
                                    {
                                      binary = mbedtls_mpi_sub_mpi(v15, v11, v10);
                                      if (!binary)
                                      {
                                        binary = mbedtls_mpi_mul_mpi(v11, v15, (v22 + 128));
                                        if (!binary)
                                        {
                                          binary = mbedtls_mpi_mod_mpi(v15, v11, v22 + 64);
                                          if (!binary)
                                          {
                                            binary = mbedtls_mpi_mul_mpi(v11, v15, (v22 + 80));
                                            if (!binary)
                                            {
                                              binary = mbedtls_mpi_add_mpi(v15, v10, v11);
                                              if (!binary)
                                              {
                                                binary = mbedtls_mpi_exp_mod(v6, v15, v22 + 32, (v22 + 16), (v22 + 144));
                                                if (!binary)
                                                {
                                                  if (mbedtls_mpi_cmp_mpi(v6, v7))
                                                  {
                                                    binary = -17280;
                                                  }

                                                  else
                                                  {
                                                    binary = rsa_unblind(v15, (v22 + 208), (v22 + 16));
                                                    if (!binary)
                                                    {
                                                      v16 = *(v22 + 8);
                                                      binary = mbedtls_mpi_write_binary(v15, v18, v16);
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

        else
        {
          binary = -4;
        }
      }

      mbedtls_mpi_free(v14);
      mbedtls_mpi_free(v13);
      mbedtls_mpi_free(v12);
      mbedtls_mpi_free(v9);
      mbedtls_mpi_free(v8);
      mbedtls_mpi_free(v15);
      mbedtls_mpi_free(v11);
      mbedtls_mpi_free(v10);
      mbedtls_mpi_free(v6);
      mbedtls_mpi_free(v7);
      if (binary && binary >= -127)
      {
        return mbedtls_error_add(-17152, binary);
      }

      else
      {
        return binary;
      }
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t rsa_prepare_blinding(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3)
{
  v10 = a1;
  v9 = a2;
  v8 = a3;
  v7 = 0;
  v6 = 0;
  v5[0] = 0;
  v5[1] = 0;
  mbedtls_mpi_init(v5);
  if (*(v10 + 208))
  {
    v7 = mbedtls_mpi_mul_mpi((v10 + 192), (v10 + 192), (v10 + 192));
    if (!v7)
    {
      v7 = mbedtls_mpi_mod_mpi(v10 + 192, v10 + 192, v10 + 16);
      if (!v7)
      {
        v7 = mbedtls_mpi_mul_mpi((v10 + 208), (v10 + 208), (v10 + 208));
        if (!v7)
        {
          v7 = mbedtls_mpi_mod_mpi(v10 + 208, v10 + 208, v10 + 16);
        }
      }
    }
  }

  else
  {
    do
    {
      v3 = v6++;
      if (v3 > 10)
      {
        v7 = -17536;
        goto LABEL_18;
      }

      v7 = mbedtls_mpi_fill_random(v10 + 208, *(v10 + 8) - 1, v9, v8);
      if (!v7)
      {
        v7 = mbedtls_mpi_fill_random(v5, *(v10 + 8) - 1, v9, v8);
        if (!v7)
        {
          v7 = mbedtls_mpi_mul_mpi((v10 + 192), (v10 + 208), v5);
          if (!v7)
          {
            v7 = mbedtls_mpi_mod_mpi(v10 + 192, v10 + 192, v10 + 16);
            if (!v7)
            {
              v7 = mbedtls_mpi_inv_mod(v10 + 192, v10 + 192, v10 + 16);
              if (!v7 || v7 == -14)
              {
                continue;
              }
            }
          }
        }
      }

      goto LABEL_18;
    }

    while (v7 == -14);
    v7 = mbedtls_mpi_mul_mpi((v10 + 192), (v10 + 192), v5);
    if (!v7)
    {
      v7 = mbedtls_mpi_mod_mpi(v10 + 192, v10 + 192, v10 + 16);
      if (!v7)
      {
        v7 = mbedtls_mpi_exp_mod((v10 + 192), v10 + 192, v10 + 32, (v10 + 16), (v10 + 144));
      }
    }
  }

LABEL_18:
  mbedtls_mpi_free(v5);
  return v7;
}

uint64_t rsa_unblind(uint64_t *a1, unint64_t **a2, unint64_t **a3)
{
  v12 = a1;
  v11 = a2;
  v10 = a3;
  mont_r2_unsafe = -110;
  v8 = mbedtls_mpi_core_montmul_init(*a3);
  v7 = *(v10 + 5);
  v6 = mbedtls_mpi_core_montmul_working_limbs(v7);
  v5[0] = 0;
  v5[1] = 0;
  v4[0] = 0;
  v4[1] = 0;
  mbedtls_mpi_init(v5);
  mbedtls_mpi_init(v4);
  mont_r2_unsafe = mbedtls_mpi_core_get_mont_r2_unsafe(v5, v10);
  if (!mont_r2_unsafe)
  {
    mont_r2_unsafe = mbedtls_mpi_grow(v4, v6);
    if (!mont_r2_unsafe)
    {
      mont_r2_unsafe = mbedtls_mpi_grow(v12, v7);
      if (!mont_r2_unsafe)
      {
        mont_r2_unsafe = mbedtls_mpi_grow(v11, v7);
        if (!mont_r2_unsafe)
        {
          mbedtls_mpi_core_to_mont_rep(*v12, *v12, *v10, v7, v8, v5[0], v4[0]);
          mbedtls_mpi_core_montmul(*v12, *v12, *v11, v7, *v10, v7, v8, v4[0]);
        }
      }
    }
  }

  mbedtls_mpi_free(v5);
  mbedtls_mpi_free(v4);
  return mont_r2_unsafe;
}

uint64_t mbedtls_rsa_rsaes_oaep_encrypt(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if (a2)
  {
    size_from_type = mbedtls_md_get_size_from_type(*(a1 + 228));
    if (size_from_type)
    {
      v18 = *(a1 + 8);
      if (a6 + 2 * size_from_type + 2 >= a6 && v18 >= a6 + 2 * size_from_type + 2)
      {
        __memset_chk();
        v8 = a8;
        v12 = a8 + 1;
        *v8 = 0;
        v14 = a2(a3, v12, size_from_type);
        if (v14)
        {
          return mbedtls_error_add(-17536, v14);
        }

        else
        {
          v13 = v12 + size_from_type;
          v15 = compute_hash(*(a1 + 228), a4, a5, v13);
          if (v15)
          {
            return v15;
          }

          else
          {
            *(v13 + size_from_type + v18 - 2 * size_from_type - 2 - a6) = 1;
            if (a6)
            {
              __memcpy_chk();
            }

            v16 = mgf_mask((a8 + size_from_type + 1), v18 - size_from_type - 1, a8 + 1, size_from_type, *(a1 + 228));
            if (v16)
            {
              return v16;
            }

            else
            {
              v17 = mgf_mask((a8 + 1), size_from_type, a8 + size_from_type + 1, v18 - size_from_type - 1, *(a1 + 228));
              if (v17)
              {
                return v17;
              }

              else
              {
                return mbedtls_rsa_public(a1, a8, a8);
              }
            }
          }
        }
      }

      else
      {
        return -16512;
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t compute_hash(int a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = mbedtls_md_info_from_type(a1);
  if (v5)
  {
    return mbedtls_md(v5, a2, a3, a4);
  }

  else
  {
    return -16512;
  }
}

uint64_t mgf_mask(_BYTE *a1, unint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v20 = a1;
  v19 = a2;
  v18 = a3;
  v17 = a4;
  v16 = a5;
  v14 = 0;
  size = 0;
  i = 0;
  v11 = 0;
  v10 = 0;
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  mbedtls_md_init(v8);
  v9 = mbedtls_md_info_from_type(v16);
  if (v9)
  {
    mbedtls_md_init(v8);
    v10 = mbedtls_md_setup(v8, v9, 0);
    if (!v10)
    {
      size = mbedtls_md_get_size(v9);
      memset(v22, 0, sizeof(v22));
      v15 = 0;
      v14 = v20;
      while (v19)
      {
        v11 = size;
        if (v19 < size)
        {
          v11 = v19;
        }

        v10 = mbedtls_md_starts(v8);
        if (v10)
        {
          break;
        }

        v10 = mbedtls_md_update(v8, v18, v17);
        if (v10)
        {
          break;
        }

        v10 = mbedtls_md_update(v8, &v15, 4uLL);
        if (v10)
        {
          break;
        }

        v10 = mbedtls_md_finish(v8, v22);
        if (v10)
        {
          break;
        }

        for (i = 0; i < v11; ++i)
        {
          v5 = *(v22 + i);
          v6 = v14++;
          *v6 ^= v5;
        }

        ++HIBYTE(v15);
        v19 -= v11;
      }
    }

    mbedtls_platform_zeroize(v22, 0x20uLL);
    mbedtls_md_free(v8);
    return v10;
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_pkcs1_encrypt(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, void), uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsaes_oaep_encrypt(a1, a2, a3, 0, 0, a4, a5, a6);
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_rsaes_oaep_decrypt(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3, uint64_t a4, unint64_t a5, void *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  if (*(a1 + 224) == 1)
  {
    v27 = *(a1 + 8);
    if (v27 >= 0x10 && v27 <= 0x20)
    {
      size_from_type = mbedtls_md_get_size_from_type(*(a1 + 228));
      if (size_from_type)
      {
        if (2 * size_from_type + 2 > v27)
        {
          return -16512;
        }

        else
        {
          v9 = mbedtls_rsa_private(a1, a2, a3, a7, &v38);
          v28 = v9;
          if (!v9)
          {
            v28 = mgf_mask(v39, size_from_type, &v39[size_from_type], v27 - size_from_type - 1, *(a1 + 228));
            if (!v28)
            {
              v28 = mgf_mask(&v39[size_from_type], v27 - size_from_type - 1, v39, size_from_type, *(a1 + 228));
              if (!v28)
              {
                v28 = compute_hash(*(a1 + 228), a4, a5, v37);
                if (!v28)
                {
                  v22 = &v39[size_from_type];
                  v18 = mbedtls_ct_BOOL(v38);
                  v10 = mbedtls_ct_memcmp(v37, v22, size_from_type);
                  v11 = mbedtls_ct_BOOL(v10);
                  v21 = mbedtls_ct_BOOL_or(v18, v11);
                  v23 = &v22[size_from_type];
                  v25 = 0;
                  mbedtls_ct_compiler_opaque();
                  v20 = v12;
                  for (i = 0; i < v27 - 2 * size_from_type - 2; ++i)
                  {
                    v13 = mbedtls_ct_uint_eq(v23[i], 0);
                    v20 = mbedtls_ct_BOOL_and(v20, v13);
                    v25 += mbedtls_ct_uint_if_else_0(v20, 1u);
                  }

                  v24 = &v23[v25 + 1];
                  v14 = mbedtls_ct_uint_ne();
                  v17 = mbedtls_ct_BOOL_or(v21, v14);
                  mbedtls_ct_compiler_opaque();
                  if (v17 == v15)
                  {
                    if (v27 - (v24 - &v38) <= a9)
                    {
                      *a6 = v27 - (v24 - &v38);
                      if (*a6)
                      {
                        __memcpy_chk();
                      }

                      v28 = 0;
                    }

                    else
                    {
                      v28 = -17408;
                    }
                  }

                  else
                  {
                    v28 = -16640;
                  }
                }
              }
            }
          }

          mbedtls_platform_zeroize(&v38, 0x20uLL);
          mbedtls_platform_zeroize(v37, 0x20uLL);
          return v28;
        }
      }

      else
      {
        return -16512;
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_pkcs1_decrypt(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsaes_oaep_decrypt(a1, a2, a3, 0, 0, a4, a5, a6, a7);
  }

  else
  {
    return -16640;
  }
}

uint64_t rsa_rsassa_pss_sign_no_mode_check(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7, _BYTE *a8)
{
  v17 = 0;
  if ((a4 || a5) && !a6)
  {
    return -16512;
  }

  else if (a2)
  {
    v24 = *(a1 + 8);
    if (a4)
    {
      size_from_type = mbedtls_md_get_size_from_type(a4);
      if (!size_from_type)
      {
        return -16512;
      }

      if (a5 != size_from_type)
      {
        return -16512;
      }
    }

    v12 = *(a1 + 228);
    if (!v12)
    {
      v12 = a4;
    }

    v9 = mbedtls_md_get_size_from_type(v12);
    v18 = v9;
    if (v9)
    {
      if (a7 == -1)
      {
        if (v24 < 2 * v9)
        {
          return -16512;
        }

        if (v24 >= 2 * v9 + 2)
        {
          v19 = v9;
        }

        else
        {
          v19 = v24 - v9 - 2;
        }
      }

      else
      {
        if (a7 < 0 || a7 + v9 + 2 > v24)
        {
          return -16512;
        }

        v19 = a7;
      }

      __memset_chk();
      v13 = mbedtls_mpi_bitlen(a1 + 16) - 1;
      v10 = &a8[v24 - v18 - v19 - 2];
      v22 = v10 + 1;
      *v10 = 1;
      v20 = (v10 + 1);
      v14 = a2(a3, (v10 + 1), v19);
      if (v14)
      {
        return mbedtls_error_add(-17536, v14);
      }

      else
      {
        v23 = &v22[v19];
        v15 = hash_mprime(a6, a5, v20, v19, v23, v12);
        if (v15)
        {
          return v15;
        }

        else
        {
          if (!(v13 % 8))
          {
            v17 = 1;
          }

          v16 = mgf_mask(&a8[v17], v24 - v18 - 1 - v17, v23, v18, v12);
          if (v16)
          {
            return v16;
          }

          else
          {
            *a8 &= 255 >> (8 * v24 - (mbedtls_mpi_bitlen(a1 + 16) - 1));
            *(v23 + v18) = -68;
            return mbedtls_rsa_private(a1, a2, a3, a8, a8);
          }
        }
      }
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t rsa_rsassa_pss_sign(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3, int a4, unsigned int a5, uint64_t a6, int a7, _BYTE *a8)
{
  if (*(a1 + 224) == 1)
  {
    if (*(a1 + 228) || a4)
    {
      return rsa_rsassa_pss_sign_no_mode_check(a1, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      return -16512;
    }
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_pkcs1_sign(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, unint64_t), uint64_t a3, int a4, unsigned int a5, uint64_t a6, _BYTE *a7)
{
  if ((a4 || a5) && !a6)
  {
    return -16512;
  }

  else if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsassa_pss_sign(a1, a2, a3, a4, a5, a6, a7);
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_rsassa_pss_verify_ext(uint64_t a1, int a2, unsigned int a3, uint64_t a4, int a5, int a6, uint64_t a7)
{
  memset(v29, 0, sizeof(v29));
  if ((a2 || a3) && !a4)
  {
    return -16512;
  }

  else
  {
    v18 = *(a1 + 8);
    if (v18 >= 0x10 && v18 <= 0x20)
    {
      v19 = mbedtls_rsa_public(a1, a7, v29);
      if (v19)
      {
        return v19;
      }

      else
      {
        v16 = v29;
        if (*(v29 + v18 - 1) == 188)
        {
          if (a2)
          {
            size_from_type = mbedtls_md_get_size_from_type(a2);
            if (!size_from_type)
            {
              return -16512;
            }

            if (a3 != size_from_type)
            {
              return -16512;
            }
          }

          __n = mbedtls_md_get_size_from_type(a5);
          if (__n)
          {
            v8 = mbedtls_mpi_bitlen(a1 + 16);
            v12 = v8 - 1;
            if (LOBYTE(v29[0]) >> (8 - 8 * v18 + v8 - 1))
            {
              return -16512;
            }

            else
            {
              if (!(v12 % 8))
              {
                v16 = v29 + 1;
                --v18;
              }

              if (v18 >= __n + 2)
              {
                __n_4 = &v16[v18 - __n - 1];
                v20 = mgf_mask(v16, v18 - __n - 1, __n_4, __n, a5);
                if (v20)
                {
                  return v20;
                }

                else
                {
                  LOBYTE(v29[0]) &= 255 >> (8 * v18 - v12);
                  while (1)
                  {
                    v11 = 0;
                    if (v16 < __n_4 - 1)
                    {
                      v11 = *v16 == 0;
                    }

                    if (!v11)
                    {
                      break;
                    }

                    ++v16;
                  }

                  v9 = v16;
                  v17 = (v16 + 1);
                  if (*v9 == 1)
                  {
                    v13 = &__n_4[-v17];
                    if (a6 == -1 || v13 == a6)
                    {
                      v21 = hash_mprime(a4, a3, v17, v13, __s2, a5);
                      if (v21)
                      {
                        return v21;
                      }

                      else if (!memcmp(__n_4, __s2, __n))
                      {
                        return 0;
                      }

                      else
                      {
                        return -17280;
                      }
                    }

                    else
                    {
                      return -16640;
                    }
                  }

                  else
                  {
                    return -16640;
                  }
                }
              }

              else
              {
                return -16512;
              }
            }
          }

          else
          {
            return -16512;
          }
        }

        else
        {
          return -16640;
        }
      }
    }

    else
    {
      return -16512;
    }
  }
}

uint64_t hash_mprime(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v15 = a1;
  v14 = a2;
  v13 = a3;
  v12 = a4;
  v11 = a5;
  v10 = a6;
  v17 = 0;
  memset(v9, 0, sizeof(v9));
  v7 = mbedtls_md_info_from_type(a6);
  if (v7)
  {
    mbedtls_md_init(v9);
    v8 = mbedtls_md_setup(v9, v7, 0);
    if (!v8)
    {
      v8 = mbedtls_md_starts(v9);
      if (!v8)
      {
        v8 = mbedtls_md_update(v9, &v17, 8uLL);
        if (!v8)
        {
          v8 = mbedtls_md_update(v9, v15, v14);
          if (!v8)
          {
            v8 = mbedtls_md_update(v9, v13, v12);
            if (!v8)
            {
              v8 = mbedtls_md_finish(v9, v11);
            }
          }
        }
      }
    }

    mbedtls_md_free(v9);
    return v8;
  }

  else
  {
    return -16512;
  }
}

uint64_t mbedtls_rsa_rsassa_pss_verify(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if ((a2 || a3) && !a4)
  {
    return -16512;
  }

  else
  {
    if (*(a1 + 228))
    {
      v6 = *(a1 + 228);
    }

    else
    {
      v6 = a2;
    }

    return mbedtls_rsa_rsassa_pss_verify_ext(a1, a2, a3, a4, v6, -1, a5);
  }
}

uint64_t mbedtls_rsa_pkcs1_verify(uint64_t a1, int a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  if ((a2 || a3) && !a4)
  {
    return -16512;
  }

  else if (*(a1 + 224) == 1)
  {
    return mbedtls_rsa_rsassa_pss_verify(a1, a2, a3, a4, a5);
  }

  else
  {
    return -16640;
  }
}

uint64_t mbedtls_rsa_copy(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = *(a2 + 8);
  v3 = mbedtls_mpi_copy(a1 + 16, a2 + 16);
  if (!v3)
  {
    v3 = mbedtls_mpi_copy(a1 + 32, a2 + 32);
    if (!v3)
    {
      v3 = mbedtls_mpi_copy(a1 + 48, a2 + 48);
      if (!v3)
      {
        v3 = mbedtls_mpi_copy(a1 + 64, a2 + 64);
        if (!v3)
        {
          v3 = mbedtls_mpi_copy(a1 + 80, a2 + 80);
          if (!v3)
          {
            v3 = mbedtls_mpi_copy(a1 + 96, a2 + 96);
            if (!v3)
            {
              v3 = mbedtls_mpi_copy(a1 + 112, a2 + 112);
              if (!v3)
              {
                v3 = mbedtls_mpi_copy(a1 + 128, a2 + 128);
                if (!v3)
                {
                  v3 = mbedtls_mpi_copy(a1 + 160, a2 + 160);
                  if (!v3)
                  {
                    v3 = mbedtls_mpi_copy(a1 + 176, a2 + 176);
                    if (!v3)
                    {
                      v3 = mbedtls_mpi_copy(a1 + 144, a2 + 144);
                      if (!v3)
                      {
                        v3 = mbedtls_mpi_copy(a1 + 192, a2 + 192);
                        if (!v3)
                        {
                          v3 = mbedtls_mpi_copy(a1 + 208, a2 + 208);
                          if (!v3)
                          {
                            *(a1 + 224) = *(a2 + 224);
                            *(a1 + 228) = *(a2 + 228);
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

  if (v3)
  {
    mbedtls_rsa_free(a1);
  }

  return v3;
}

void *mbedtls_sha256_free(void *result)
{
  if (result)
  {
    return mbedtls_platform_zeroize(result, 0x68uLL);
  }

  return result;
}

uint64_t mbedtls_sha256_starts(_DWORD *a1, int a2)
{
  if (a2)
  {
    return -116;
  }

  else
  {
    a1[16] = 0;
    a1[17] = 0;
    a1[18] = 1779033703;
    a1[19] = -1150833019;
    a1[20] = 1013904242;
    a1[21] = -1521486534;
    a1[22] = 1359893119;
    a1[23] = -1694144372;
    a1[24] = 528734635;
    a1[25] = 1541459225;
    return 0;
  }
}

uint64_t mbedtls_internal_sha256_process(uint64_t a1, uint64_t a2)
{
  v18 = a1;
  v17 = a2;
  bzero(&v6, 0x128uLL);
  for (i = 0; i < 8; ++i)
  {
    *(&v9 + i) = *(v18 + 72 + 4 * i);
  }

  for (j = 0; j < 0x40; ++j)
  {
    if (j >= 0x10)
    {
      v8[j] = (((v8[j - 2] << 15) | (v8[j - 2] >> 17)) ^ ((v8[j - 2] << 13) | (v8[j - 2] >> 19)) ^ (v8[j - 2] >> 10)) + v8[j - 7] + (((v8[j - 15] << 25) | (v8[j - 15] >> 7)) ^ ((v8[j - 15] << 14) | (v8[j - 15] >> 18)) ^ (v8[j - 15] >> 3)) + v8[j - 16];
    }

    else
    {
      v20 = (v17 + 4 * j);
      v19 = 0;
      v19 = *v20;
      v8[j] = bswap32(v19);
    }

    v6 = v16 + (((v13 << 26) | (v13 >> 6)) ^ ((v13 << 21) | (v13 >> 11)) ^ ((v13 << 7) | (v13 >> 25))) + (v15 ^ v13 & (v14 ^ v15)) + K[j] + v8[j];
    v7 = (((v9 << 30) | (v9 >> 2)) ^ ((v9 << 19) | (v9 >> 13)) ^ ((v9 << 10) | (v9 >> 22))) + (v9 & v10 | v11 & (v9 | v10));
    v12 += v6;
    v6 += v7;
    v16 = v15;
    v15 = v14;
    v14 = v13;
    v13 = v12;
    v12 = v11;
    v11 = v10;
    v10 = v9;
    v9 = v6;
  }

  for (k = 0; k < 8; ++k)
  {
    *(v18 + 72 + 4 * k) += *(&v9 + k);
  }

  mbedtls_platform_zeroize(&v6, 0x128uLL);
  return 0;
}

uint64_t mbedtls_sha256_update(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v8 = a3;
  if (a3)
  {
    v5 = *(a1 + 64) & 0x3F;
    v6 = (64 - v5);
    *(a1 + 64) += a3;
    *(a1 + 64) = *(a1 + 64);
    if (*(a1 + 64) < a3)
    {
      ++*(a1 + 68);
    }

    if (v5 && a3 >= v6)
    {
      __memcpy_chk();
      v7 = mbedtls_internal_sha256_process(a1, a1);
      if (!v7)
      {
        a2 += v6;
        v8 -= v6;
        goto LABEL_10;
      }

      return v7;
    }

    else
    {
LABEL_10:
      while (v8 >= 0x40)
      {
        v4 = mbedtls_internal_sha256_process_many(a1, a2, v8);
        if (v4 < 0x40)
        {
          return -1;
        }

        a2 += v4;
        v8 -= v4;
      }

      if (v8)
      {
        __memcpy_chk();
      }

      return 0;
    }
  }

  else
  {
    return 0;
  }
}

uint64_t mbedtls_internal_sha256_process_many(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = 0;
  while (a3 >= 0x40)
  {
    if (mbedtls_internal_sha256_process(a1, a2))
    {
      return 0;
    }

    a2 += 64;
    a3 -= 64;
    v4 += 64;
  }

  return v4;
}

uint64_t mbedtls_sha256_finish(_DWORD *a1, uint64_t a2)
{
  v3 = a1[16] & 0x3F;
  *(a1 + v3) = 0x80;
  if (v3 + 1 <= 0x38 || (__memset_chk(), (v4 = mbedtls_internal_sha256_process(a1, a1)) == 0))
  {
    __memset_chk();
    __memcpy_chk();
    __memcpy_chk();
    v4 = mbedtls_internal_sha256_process(a1, a1);
    if (!v4)
    {
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      __memcpy_chk();
      v4 = 0;
    }
  }

  mbedtls_sha256_free(a1);
  return v4;
}

uint64_t mbedtls_sha256(uint64_t a1, unint64_t a2, uint64_t a3, int a4)
{
  memset(__b, 0, sizeof(__b));
  if (a4)
  {
    return -116;
  }

  else
  {
    mbedtls_sha256_init(__b);
    v5 = mbedtls_sha256_starts(__b, 0);
    if (!v5)
    {
      v5 = mbedtls_sha256_update(__b, a1, a2);
      if (!v5)
      {
        v5 = mbedtls_sha256_finish(__b, a3);
      }
    }

    mbedtls_sha256_free(__b);
    return v5;
  }
}

uint64_t mbedtls_ssl_write_client_hello(void *a1)
{
  v7 = a1;
  v5 = 0;
  v4 = 0;
  v3 = 0;
  v2 = 0;
  started = ssl_prepare_client_hello(a1);
  if (started)
  {
    return started;
  }

  started = mbedtls_ssl_start_handshake_msg(v7, 1, &v5, &v4);
  if (started)
  {
    return started;
  }

  started = ssl_write_client_hello_body(v7, v5, v5 + v4, &v3, &v2);
  if (started)
  {
    return started;
  }

  if (*(*v7 + 9) != 1)
  {
    started = mbedtls_ssl_add_hs_hdr_to_checksum(v7, 1, v3);
    if (started)
    {
      return started;
    }

    started = (*(v7[13] + 24))(v7, v5, v3 - v2);
    if (started)
    {
      return started;
    }

    started = mbedtls_ssl_finish_handshake_msg(v7, v4, v3);
    if (!started)
    {
      mbedtls_ssl_handshake_set_state(v7, 2);
    }

    return started;
  }

  v7[46] = v3 + 4;
  mbedtls_ssl_send_flight_completed(v7);
  mbedtls_ssl_handshake_set_state(v7, 2);
  started = mbedtls_ssl_write_handshake_msg(v7);
  if (!started)
  {
    started = mbedtls_ssl_flight_transmit(v7);
    if (started)
    {
      return started;
    }

    return started;
  }

  return started;
}

uint64_t ssl_prepare_client_hello(void *a1)
{
  v2 = a1[12];
  if (v2)
  {
    if (*a1[13])
    {
      *(a1 + 3) = *(v2 + 4);
      *(a1[13] + 4) = *(a1 + 3);
    }

    else
    {
      *(a1[13] + 4) = *(*a1 + 4);
    }

    if (*(*a1 + 9) == 1 && *(a1[13] + 752) || (random = ssl_generate_random(a1)) == 0)
    {
      v3 = *(v2 + 16);
      if (*(a1 + 3) == 771 && (v3 < 0x10 || v3 > 0x20 || !*a1[13]))
      {
        v3 = 0;
      }

      if (v3 != *(v2 + 16) && (*(v2 + 16) = v3) != 0 && (v5 = (*(*a1 + 40))(*(*a1 + 48), v2 + 24, v3)) != 0)
      {
        return v5;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return random;
    }
  }

  else
  {
    return -27648;
  }
}

uint64_t ssl_write_client_hello_body(void *a1, unsigned __int8 *a2, unint64_t a3, void *a4, void *a5)
{
  v25 = a1;
  v24 = a2;
  v23 = a3;
  v22 = a4;
  v21 = a5;
  v20 = 0;
  v19 = a1[13];
  v18 = a2;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  *a4 = 0;
  *v21 = 0;
  v11 = 0;
  if (*(v19 + 4) <= 0x303u)
  {
    v11 = *(v25 + 3) >= 0x303u;
  }

  if (mbedtls_ssl_chk_buf_ptr(v18, v23, 2uLL))
  {
    return -27136;
  }

  else
  {
    mbedtls_ssl_write_version(v18, *(*v25 + 9), 771);
    v18 += 2;
    if (mbedtls_ssl_chk_buf_ptr(v18, v23, 0x20uLL))
    {
      return -27136;
    }

    else
    {
      __memcpy_chk();
      v18 += 32;
      if (mbedtls_ssl_chk_buf_ptr(v18, v23, *(v25[12] + 16) + 1))
      {
        return -27136;
      }

      else
      {
        v5 = *(v25[12] + 16);
        v6 = v18++;
        *v6 = v5;
        __memcpy_chk();
        v18 += *(v25[12] + 16);
        if (*(*v25 + 9) == 1)
        {
          v13 = 0;
          if (*(v19 + 752))
          {
            v13 = *(v19 + 760);
          }

          if (mbedtls_ssl_chk_buf_ptr(v18, v23, v13 + 1))
          {
            return -27136;
          }

          v7 = v18++;
          *v7 = v13;
          if (v13)
          {
            __memcpy_chk();
            v18 += v13;
          }
        }

        v20 = ssl_write_client_hello_cipher_suites(v25, v18, v23, &v14, &v16);
        if (v20)
        {
          return v20;
        }

        else
        {
          v18 += v16;
          if (mbedtls_ssl_chk_buf_ptr(v18, v23, 2uLL))
          {
            return -27136;
          }

          else
          {
            v8 = v18++;
            *v8 = 1;
            v9 = v18++;
            *v9 = 0;
            if (mbedtls_ssl_chk_buf_ptr(v18, v23, 2uLL))
            {
              return -27136;
            }

            else
            {
              v17 = v18;
              v18 += 2;
              v12 = 0;
              if (v11)
              {
                v12 = v14 != 0;
              }

              if (v12)
              {
                v20 = ssl_write_supported_groups_ext(v25, v18, v23, v12, &v16);
                if (v20)
                {
                  return v20;
                }

                v18 += v16;
              }

              if (v11)
              {
                v20 = mbedtls_ssl_tls12_write_client_hello_exts(v25, v18, v23, v14, &v16);
                if (v20)
                {
                  return v20;
                }

                v18 += v16;
              }

              v15 = (v18 - v17 - 2);
              if (v18 - v17 == 2)
              {
                v18 = v17;
              }

              else
              {
                v28 = v17;
                v27 = bswap32(v15) >> 16;
                __memcpy_chk();
              }

              *v22 = v18 - v24;
              return 0;
            }
          }
        }
      }
    }
  }
}

BOOL mbedtls_ssl_chk_buf_ptr(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v4 = 1;
  if (a1 <= a2)
  {
    return a3 > a2 - a1;
  }

  return v4;
}

uint64_t ssl_write_client_hello_cipher_suites(uint64_t a1, unint64_t a2, unint64_t a3, _DWORD *a4, void *a5)
{
  *a4 = 0;
  *a5 = 0;
  v8 = *(*a1 + 16);
  if (mbedtls_ssl_chk_buf_ptr(a2, a3, 2uLL))
  {
    return -27136;
  }

  else
  {
    v10 = a2 + 2;
    for (i = 0; *(v8 + 4 * i); ++i)
    {
      v6 = mbedtls_ssl_ciphersuite_from_id(*(v8 + 4 * i));
      if (!mbedtls_ssl_validate_ciphersuite(a1, v6, *(*(a1 + 104) + 4), *(a1 + 12)))
      {
        *a4 |= mbedtls_ssl_ciphersuite_uses_ec(v6);
        if (mbedtls_ssl_chk_buf_ptr(v10, a3, 2uLL))
        {
          return -27136;
        }

        __memcpy_chk();
        v10 += 2;
      }
    }

    if (mbedtls_ssl_chk_buf_ptr(v10, a3, 2uLL))
    {
      return -27136;
    }

    else
    {
      __memcpy_chk();
      __memcpy_chk();
      *a5 = v10 + 2 - a2;
      return 0;
    }
  }
}

uint64_t ssl_write_supported_groups_ext(void *a1, unint64_t a2, unint64_t a3, char a4, void *a5)
{
  groups = mbedtls_ssl_get_groups(a1);
  *a5 = 0;
  if (mbedtls_ssl_chk_buf_ptr(a2, a3, 6uLL))
  {
    return -27136;
  }

  else
  {
    v10 = a2 + 6;
    v8 = v10;
    if (groups)
    {
      while (*groups)
      {
        v6 = 0;
        if ((a4 & 1) != 0 && mbedtls_ssl_tls12_named_group_is_ecdhe(*groups))
        {
          v6 = mbedtls_ssl_get_ecp_group_id_from_tls_id(*groups) != 0;
        }

        if (v6)
        {
          if (mbedtls_ssl_chk_buf_ptr(v10, a3, 2uLL))
          {
            return -27136;
          }

          __memcpy_chk();
          v10 += 2;
        }

        ++groups;
      }

      if (v10 == v8)
      {
        return -27648;
      }

      else
      {
        __memcpy_chk();
        __memcpy_chk();
        __memcpy_chk();
        *a5 = v10 - a2;
        return 0;
      }
    }

    else
    {
      return -24192;
    }
  }
}

uint64_t mbedtls_ssl_get_groups(void *a1)
{
  if (a1[13] && *(a1[13] + 56))
  {
    return *(a1[13] + 56);
  }

  else
  {
    return *(*a1 + 160);
  }
}

BOOL mbedtls_ssl_tls12_named_group_is_ecdhe(__int16 a1)
{
  v2 = 1;
  if (a1 != 29)
  {
    v2 = 1;
    if (a1 != 26)
    {
      v2 = 1;
      if (a1 != 27)
      {
        v2 = 1;
        if (a1 != 28)
        {
          v2 = 1;
          if (a1 != 30)
          {
            v2 = 1;
            if (a1 != 18)
            {
              v2 = 1;
              if (a1 != 19)
              {
                v2 = 1;
                if (a1 != 20)
                {
                  v2 = 1;
                  if (a1 != 21)
                  {
                    v2 = 1;
                    if (a1 != 22)
                    {
                      v2 = 1;
                      if (a1 != 23)
                      {
                        v2 = 1;
                        if (a1 != 24)
                        {
                          return a1 == 25;
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

  return v2;
}

uint64_t mbedtls_ssl_set_client_transport_id(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*(*a1 + 8) == 1)
  {
    mbedtls_free(a1[51]);
    v3 = mbedtls_calloc(1, a3);
    a1[51] = v3;
    if (v3)
    {
      __memcpy_chk();
      a1[52] = a3;
      return 0;
    }

    else
    {
      return -32512;
    }
  }

  else
  {
    return -28928;
  }
}

void *mbedtls_ssl_conf_dtls_cookies(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result[12] = a2;
  result[13] = a3;
  result[14] = a4;
  return result;
}

uint64_t mbedtls_ssl_handshake_server_step(uint64_t a1)
{
  v2 = 0;
  switch(*(a1 + 8))
  {
    case 0:
      *(a1 + 8) = 1;
      goto LABEL_19;
    case 1:
      v2 = ssl_parse_client_hello(a1);
      goto LABEL_19;
    case 2:
      v2 = ssl_write_server_hello(a1);
      goto LABEL_19;
    case 3:
      v2 = mbedtls_ssl_write_certificate(a1);
      goto LABEL_19;
    case 4:
      v2 = ssl_write_server_key_exchange(a1);
      goto LABEL_19;
    case 5:
    case 9:
      v2 = ssl_write_certificate_request(a1);
      goto LABEL_19;
    case 6:
      v2 = ssl_write_server_hello_done(a1);
      goto LABEL_19;
    case 7:
      v2 = mbedtls_ssl_parse_certificate(a1);
      goto LABEL_19;
    case 8:
      v2 = ssl_parse_client_key_exchange(a1);
      goto LABEL_19;
    case 0xA:
      v2 = mbedtls_ssl_parse_change_cipher_spec(a1);
      goto LABEL_19;
    case 0xB:
      v2 = mbedtls_ssl_parse_finished(a1);
      goto LABEL_19;
    case 0xC:
      v2 = mbedtls_ssl_write_change_cipher_spec(a1);
      goto LABEL_19;
    case 0xD:
      v2 = mbedtls_ssl_write_finished(a1);
      goto LABEL_19;
    case 0xE:
      *(a1 + 8) = 15;
      goto LABEL_19;
    case 0xF:
      mbedtls_ssl_handshake_wrapup(a1);
LABEL_19:
      v3 = v2;
      break;
    case 0x11:
      v3 = -27264;
      break;
    default:
      v3 = -28928;
      break;
  }

  return v3;
}

uint64_t ssl_parse_client_hello(void *a1)
{
  v27 = a1;
  input = 0;
  v25 = 0;
  i = 0;
  v23 = 0;
  v22 = 0;
  v21 = 0;
  v20 = 0;
  v19 = 0;
  v18 = 0;
  v17 = 0;
  v16 = 0;
  v15 = 0;
  v14 = 0;
  v13 = 0;
  v12 = 0;
  j = 0;
  v10 = 0;
  v9 = 0;
  v8 = 0;
  v7 = 0;
  while (1)
  {
    if (!*(v27 + 73))
    {
      input = mbedtls_ssl_fetch_input(v27, 5uLL);
      if (input)
      {
        return input;
      }
    }

    v12 = v27[23];
    if (*v12 != 22)
    {
      return -30464;
    }

    if (*(*v27 + 9) != 1)
    {
      break;
    }

    if (*v27[22] || *(v27[22] + 1))
    {
      return -26112;
    }

    __memcpy_chk();
    if (!mbedtls_ssl_dtls_replay_check(v27))
    {
      mbedtls_ssl_dtls_replay_update(v27);
      break;
    }

    v27[32] = 0;
    v27[30] = 0;
  }

  v44 = v27[24];
  v43 = 0;
  v43 = *v44;
  v19 = bswap32(v43) >> 16;
  if (*(v27 + 73))
  {
    *(v27 + 73) = 0;
  }

  else
  {
    if (v19 > 0x4000)
    {
      return -26112;
    }

    v1 = mbedtls_ssl_in_hdr_len(v27);
    input = mbedtls_ssl_fetch_input(v27, v1 + v19);
    if (input)
    {
      return input;
    }

    if (*(*v27 + 9) == 1)
    {
      v27[32] = v19 + mbedtls_ssl_in_hdr_len(v27);
    }

    else
    {
      v27[30] = 0;
    }
  }

  v12 = v27[26];
  input = (*(v27[13] + 24))(v27, v12, v19);
  if (input)
  {
    return input;
  }

  if (v19 < mbedtls_ssl_hs_hdr_len(v27))
  {
    return -29440;
  }

  if (*v12 != 1)
  {
    return -30464;
  }

  if (*(v12 + 1))
  {
    return -29440;
  }

  v6 = (*(v12 + 2) << 8) | (*(v12 + 1) << 16) | *(v12 + 3);
  if (v19 != mbedtls_ssl_hs_hdr_len(v27) + v6)
  {
    return -29440;
  }

  if (*(*v27 + 9) == 1)
  {
    v42 = (v27[26] + 4);
    v41 = 0;
    v41 = *v42;
    v5 = bswap32(v41) >> 16;
    *(v27[13] + 764) = v5;
    *(v27[13] + 768) = v5 + 1;
    if ((*(v27[26] + 7) << 8) | (*(v27[26] + 6) << 16) | *(v27[26] + 8) || ((*(v27[26] + 2) << 8) | (*(v27[26] + 1) << 16) | *(v27[26] + 3)) != ((*(v27[26] + 10) << 8) | (*(v27[26] + 9) << 16) | *(v27[26] + 11)))
    {
      return -28800;
    }
  }

  v12 = (v12 + mbedtls_ssl_hs_hdr_len(v27));
  v19 -= mbedtls_ssl_hs_hdr_len(v27);
  if (v19 < 0x26)
  {
    return -29440;
  }

  *(v27 + 3) = mbedtls_ssl_read_version(v12, *(*v27 + 9));
  *(v27[12] + 4) = *(v27 + 3);
  *(v27[12] + 2) = *(*v27 + 8);
  if (*(v27 + 3) != 771)
  {
    mbedtls_ssl_send_alert_message(v27, 2, 70);
    return -28288;
  }

  __memcpy_chk();
  v17 = *(v12 + 34);
  if (v17 > 0x20 || v17 + 36 > v19)
  {
LABEL_72:
    mbedtls_ssl_send_alert_message(v27, 2, 50);
    return -29440;
  }

  *(v27[12] + 16) = v17;
  __memset_chk();
  __memcpy_chk();
  if (*(*v27 + 9) == 1)
  {
    v14 = v17 + 35;
    v13 = *(v12 + v17 + 35);
    if (v17 + 36 + v13 + 2 > v19)
    {
      goto LABEL_72;
    }

    if (*(*v27 + 104))
    {
      if ((*(*v27 + 104))(*(*v27 + 112), v12 + v14 + 1, v13, v27[51], v27[52]))
      {
        *(v27[13] + 761) = 1;
      }

      else
      {
        *(v27[13] + 761) = 0;
      }
    }

    else if (v13)
    {
      return -29440;
    }

    v22 = v14 + 1 + v13;
  }

  else
  {
    v22 = v17 + 35;
  }

  v40 = v12 + v22;
  v39 = 0;
  v39 = *(v12 + v22);
  v18 = bswap32(v39) >> 16;
  if (v18 < 2)
  {
    goto LABEL_72;
  }

  if (v18 + 2 + v22 + 1 > v19)
  {
    goto LABEL_72;
  }

  if (v18 % 2)
  {
    goto LABEL_72;
  }

  v21 = v22 + 2 + v18;
  v16 = *(v12 + v21);
  if (!v16 || v16 > 0x10 || v16 + v21 + 1 > v19)
  {
    goto LABEL_72;
  }

  v20 = v21 + 1 + v16;
  if (v19 <= v20)
  {
    v15 = 0;
  }

  else
  {
    if (v19 < v20 + 2)
    {
      goto LABEL_72;
    }

    v38 = v12 + v20;
    v37 = 0;
    v37 = *(v12 + v20);
    v15 = bswap32(v37) >> 16;
    if (v19 != v20 + 2 + v15)
    {
      goto LABEL_72;
    }
  }

  v10 = v12 + v20 + 2;
  while (v15)
  {
    if (v15 < 4)
    {
      goto LABEL_72;
    }

    v36 = v10;
    v35 = 0;
    v35 = *v10;
    v4 = bswap32(v35) >> 16;
    v34 = v10 + 2;
    v33 = 0;
    v33 = *(v10 + 1);
    v3 = bswap32(v33) >> 16;
    if (v3 + 4 > v15)
    {
      goto LABEL_72;
    }

    switch(v4)
    {
      case 1u:
        input = ssl_parse_max_fragment_length_ext(v27, v10 + 4, v3);
        if (input)
        {
          return input;
        }

        break;
      case 0xAu:
        input = ssl_parse_supported_groups_ext(v27, v10 + 2, v3);
        if (input)
        {
          return input;
        }

        break;
      case 0xBu:
        *(v27[13] + 1) |= 1u;
        input = ssl_parse_supported_point_formats(v27, v10 + 4, v3);
        if (input)
        {
          return input;
        }

        break;
      case 0x100u:
        input = ssl_parse_ecjpake_kkpp(v27, (v10 + 4), v3);
        if (input)
        {
          return input;
        }

        break;
      case 0xFF01u:
        input = ssl_parse_renegotiation_info(v27, v10 + 4, v3);
        if (input)
        {
          return input;
        }

        break;
    }

    v15 -= v3 + 4;
    v10 += v3 + 4;
  }

  i = 0;
  j = v12 + v22 + 2;
  while (i < v18)
  {
    if (!*j && j[1] == 255)
    {
      *(v27 + 106) = 1;
      break;
    }

    i += 2;
    j += 2;
  }

  if (*(v27 + 106) != 1 && *(*v27 + 11) == 2)
  {
    v9 = 1;
  }

  if (v9 == 1)
  {
    mbedtls_ssl_send_alert_message(v27, 2, 40);
    return -28160;
  }

  if (*(*v27 + 192))
  {
    input = (*(*v27 + 192))(v27);
    if (input)
    {
      return input;
    }
  }

  v25 = 0;
  v8 = *(*v27 + 16);
  v7 = 0;
  if (*(*v27 + 15) == 1)
  {
    v23 = 0;
    j = v12 + v22 + 2;
    while (v23 < v18)
    {
      for (i = 0; *(v8 + 4 * i); ++i)
      {
        v32 = j;
        v31 = 0;
        v31 = *j;
        if (*(v8 + 4 * i) == bswap32(v31) >> 16)
        {
          v25 = 1;
          input = ssl_ciphersuite_match(v27, *(v8 + 4 * i), &v7);
          if (input)
          {
            return input;
          }

          if (v7)
          {
            goto LABEL_130;
          }
        }
      }

      v23 += 2;
      j += 2;
    }

LABEL_129:
    mbedtls_ssl_send_alert_message(v27, 2, 40);
    return -28160;
  }

  i = 0;
LABEL_120:
  if (!*(v8 + 4 * i))
  {
    goto LABEL_129;
  }

  v23 = 0;
  for (j = v12 + v22 + 2; ; j += 2)
  {
    if (v23 >= v18)
    {
      ++i;
      goto LABEL_120;
    }

    v30 = j;
    v29 = 0;
    v29 = *j;
    if (*(v8 + 4 * i) == bswap32(v29) >> 16)
    {
      v25 = 1;
      input = ssl_ciphersuite_match(v27, *(v8 + 4 * i), &v7);
      if (input)
      {
        return input;
      }

      if (v7)
      {
        break;
      }
    }

    v23 += 2;
  }

LABEL_130:
  *(v27[12] + 8) = *(v8 + 4 * i);
  *(v27[13] + 16) = v7;
  ++*(v27 + 2);
  if (*(*v27 + 9) == 1)
  {
    mbedtls_ssl_recv_flight_completed(v27);
  }

  return 0;
}

uint64_t ssl_write_server_hello(int *a1)
{
  v11 = a1;
  v10 = -110;
  v9 = 0;
  if (*(*a1 + 9) == 1 && *(*(v11 + 13) + 761))
  {
    return ssl_write_hello_verify_request(v11);
  }

  else
  {
    v5 = *(v11 + 44);
    mbedtls_ssl_write_version(v5 + 4, *(*v11 + 9), v11[3]);
    v10 = (*(*v11 + 40))(*(*v11 + 48), v5 + 6, 4);
    if (v10)
    {
      return v10;
    }

    else
    {
      v10 = (*(*v11 + 40))(*(*v11 + 48), v5 + 10, 20);
      if (v10)
      {
        return v10;
      }

      else
      {
        v10 = (*(*v11 + 40))(*(*v11 + 48), v5 + 30, 8);
        if (v10)
        {
          return v10;
        }

        else
        {
          __memcpy_chk();
          ssl_handle_id_based_session_resumption(v11);
          if (**(v11 + 13))
          {
            v11[2] = 12;
            v10 = mbedtls_ssl_derive_keys(v11);
            if (v10)
            {
              return v10;
            }
          }

          else
          {
            ++v11[2];
            *(*(v11 + 12) + 16) = 32;
            v10 = (*(*v11 + 40))(*(*v11 + 48), *(v11 + 12) + 24, 32);
            if (v10)
            {
              return v10;
            }
          }

          *(v5 + 38) = *(*(v11 + 12) + 16);
          __memcpy_chk();
          v1 = bswap32(*(*(v11 + 12) + 8)) >> 16;
          v16 = v5 + 39 + *(*(v11 + 12) + 16);
          v15 = v1;
          __memcpy_chk();
          v4 = v16 + 3;
          *(v16 + 2) = 0;
          ssl_write_renegotiation_ext(v11, (v4 + 2), &v9);
          v6 = v9;
          ssl_write_max_fragment_length_ext(v11, (v4 + 2 + v9), &v9);
          v7 = v6 + v9;
          v3 = mbedtls_ssl_ciphersuite_from_id(*(*(v11 + 12) + 8));
          if (v3 && mbedtls_ssl_ciphersuite_uses_ec(v3))
          {
            ssl_write_supported_point_formats_ext(v11, (v4 + 2 + v7), &v9);
            v7 += v9;
          }

          ssl_write_ecjpake_kkpp_ext(v11, v4 + 2 + v7, &v9);
          v8 = v7 + v9;
          if (v8)
          {
            v14 = v4;
            v13 = bswap32(v8) >> 16;
            __memcpy_chk();
            v4 += v8 + 2;
          }

          *(v11 + 46) = v4 - v5;
          v11[90] = 22;
          **(v11 + 44) = 2;
          return mbedtls_ssl_write_handshake_msg(v11);
        }
      }
    }
  }
}