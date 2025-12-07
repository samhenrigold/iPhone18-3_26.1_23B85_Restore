void *sub_25227C388(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = *(a2 + 40);
  if (v8 == 4)
  {
    return result;
  }

  v10 = result;
  if (!v8)
  {
    v11 = *(a2 + 88);
    if (v11 >= result[8])
    {
      v19 = *(result[4] + 8);
      v20 = *(v19 + 24);
      if (!v20 || *(v20 + 88) > v11)
      {
        *(v19 + 24) = a2;
      }

      return result;
    }

    sub_25227B530(result[9], result[10], a2, a4, a5, a6, a7, a8);
  }

  if (*(a2 + 88) >= v10[8])
  {
LABEL_11:
    v16 = (*(v10[5] + 8) + 24);
    v17 = (*(v10[6] + 8) + 24);
    v18 = (*(v10[7] + 8) + 24);

    return sub_25227C4DC(a2, v16, v17, v18);
  }

  v12 = *(a2 + 80);
  if (!v12)
  {
    sub_2522A7EFC();
  }

  v13 = v10[9];
  v14 = v12 - 1;
  *(a2 + 80) = v14;
  if (v14)
  {
    sub_25227B628(v13, a2, a2, "retrying sending to", a5, a6, a7, a8, v21);
    v15 = *(v10[9] + 88) / *(*(a2 + 72) + 24);
    if (v15 <= 1)
    {
      v15 = 1;
    }

    *(a2 + 88) = v15;
    *(a2 + 88) += time(0);
    sub_25227B660(v10[9], v10[10], a2);
    goto LABEL_11;
  }

  return sub_25227C1FC(v13, a2, "host timed out", a4, a5, a6, a7, a8);
}

uint64_t sub_25227C4DC(uint64_t result, char *a2, char *a3, _DWORD *a4)
{
  v4 = *(result + 64);
  if (v4 >= 1024)
  {
    sub_2522A7F14();
  }

  v7 = result;
  v8 = *(result + 40);
  if ((v8 - 1) >= 2)
  {
    if (v8 != 3)
    {
      goto LABEL_10;
    }

    result = __darwin_check_fd_set_overflow(*(result + 64), a2, 0);
    a3 = a2;
    if (!result)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (__darwin_check_fd_set_overflow(*(result + 64), a2, 0))
  {
    *&a2[(v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v4;
  }

  v4 = *(v7 + 64);
  result = __darwin_check_fd_set_overflow(v4, a3, 0);
  if (result)
  {
LABEL_9:
    *&a3[(v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL] |= 1 << v4;
  }

LABEL_10:
  v10 = *(v7 + 64);
  if (v10 > *a4)
  {
    *a4 = v10 + 1;
  }

  return result;
}

uint64_t sub_25227C5E4(uint64_t result, uint64_t a2)
{
  if (!*(a2 + 40))
  {
    v2 = *(a2 + 88) - *(result + 32);
    *(a2 + 88) = v2;
    if (v2 <= *(result + 40))
    {
      v2 = *(result + 40);
    }

    *(a2 + 88) = v2;
  }

  return result;
}

void sub_25227C624(void *a1, uint64_t a2, _DWORD *a3)
{
  if (*(a2 + 40) == 4)
  {
    sub_2522A7F2C();
  }

  v4 = *(a2 + 64);
  if (v4 >= 1024)
  {
    sub_2522A7F14();
  }

  v7 = (*(a1[4] + 8) + 24);
  if (__darwin_check_fd_set_overflow(*(a2 + 64), v7, 0))
  {
    v8 = *(v7 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) & (1 << v4);
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a2 + 64);
  v10 = (*(a1[5] + 8) + 24);
  if (__darwin_check_fd_set_overflow(v9, v10, 0))
  {
    v16 = (*&v10[(v9 >> 3) & 0x1FFFFFFFFFFFFFFCLL] >> v9) & 1;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v16 = 0;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  if (!v16)
  {
    goto LABEL_28;
  }

LABEL_11:
  v17 = a1[7];
  v18 = a1[8];
  v19 = v16 ^ 1;
  if (*(a2 + 40) != 1)
  {
    v19 = 1;
  }

  if ((v19 & 1) == 0)
  {
    sub_25227B660(a1[7], a1[8], a2);
  }

  if (!v8 || (sub_25227B628(v17, v11, a2, "reading packet", v12, v13, v14, v15, v23), v20 = (*(*(a2 + 72) + 16))(v17, a2, v18 + 120), v20 == -1))
  {
LABEL_20:
    if (v16)
    {
      if (*(a2 + 40) == 2)
      {
        ++*(v18 + 224);
        sub_25227B628(v17, v11, a2, "writing packet", v12, v13, v14, v15, v23);
        v22 = (*(*(a2 + 72) + 8))(v17, a2);
        if (v22 != -1)
        {
          if (!v22)
          {
            v21 = 0;
            *(a2 + 40) = 3;
            goto LABEL_27;
          }

          sub_25227C1FC(v17, a2, "host dead, write failed");
        }
      }
    }

    v21 = 0;
    goto LABEL_27;
  }

  if (v20)
  {
    sub_25227C1FC(v17, a2, "host disconnected");
    goto LABEL_20;
  }

  sub_25227B628(v17, v11, a2, "host completed", v12, v13, v14, v15, v23);
  v21 = 1;
LABEL_27:
  *(*(a1[6] + 8) + 24) |= v21;
LABEL_28:
  if (*(*(a1[6] + 8) + 24))
  {
    *a3 = 1;
  }
}

krb5_error_code krb5_sendauth(krb5_context a1, krb5_auth_context *a2, krb5_pointer a3, char *a4, krb5_principal a5, krb5_principal a6, krb5_flags a7, krb5_data *a8, krb5_creds *a9, krb5_ccache cache, krb5_error **a11, krb5_ap_rep_enc_part **a12, krb5_creds **a13)
{
  v55 = 0;
  *&v54.magic = 0;
  v54.data = 0;
  *&v53.magic = 0;
  v53.data = 0;
  v52 = 0u;
  memset(v51, 0, sizeof(v51));
  v49 = 0;
  principal = 0;
  *__buf = 318767104;
  if (krb5_net_write(a1, a3, __buf, 4uLL) != 4 || krb5_net_write(a1, a3, "KRB5_SENDAUTH_V1.0", 0x13uLL) != 19 || (v21 = strlen(a4), v22 = v21 + 1, *__buf = bswap32(v21 + 1), krb5_net_write(a1, a3, __buf, 4uLL) != 4) || krb5_net_write(a1, a3, a4, v22) != v22)
  {
    v24 = *__error();
    strerror(v24);
    krb5_set_error_message(a1, v24, "write: %s");
    return v24;
  }

  v23 = krb5_net_read(a1, a3, &v55, 1uLL);
  if ((v23 & 0x8000000000000000) != 0)
  {
    v24 = *__error();
    strerror(v24);
    krb5_set_error_message(a1, v24, "read: %s");
    return v24;
  }

  if (v23 != 1)
  {
    v24 = -1765328178;
    goto LABEL_13;
  }

  if (v55)
  {
    krb5_clear_error_message(a1);
    return -1765328177;
  }

  if (!a9)
  {
    v27 = cache;
    v28 = cache;
    if (cache)
    {
      if (a5)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v30 = krb5_cc_default(a1, &cache);
      if (v30)
      {
        return v30;
      }

      v28 = cache;
      if (a5)
      {
        goto LABEL_21;
      }
    }

    credentials = krb5_cc_get_principal(a1, v28, &principal);
    if (credentials)
    {
      goto LABEL_38;
    }

    a5 = principal;
    v28 = cache;
LABEL_21:
    v52 = 0u;
    memset(&v51[16], 0, 112);
    *v51 = a5;
    *&v51[8] = a6;
    credentials = krb5_get_credentials(a1, 0, v28, v51, &v49);
    if (!credentials)
    {
      if (!v27)
      {
        krb5_cc_close(a1, cache);
      }

      goto LABEL_17;
    }

LABEL_38:
    v24 = credentials;
    if (!v27)
    {
      krb5_cc_close(a1, cache);
    }

    return v24;
  }

  if (a9->addresses)
  {
    v49 = a9;
    goto LABEL_17;
  }

  v30 = krb5_get_credentials(a1, 0, cache, a9, &v49);
  if (v30)
  {
    return v30;
  }

LABEL_17:
  v26 = a13;
  v24 = krb5_mk_req_extended(a1, a2, a7, a8, v49, &v54);
  if (v26)
  {
    *v26 = v49;
  }

  else if (v49)
  {
    krb5_free_creds(a1, v49);
  }

  if (principal)
  {
    krb5_free_principal(a1, principal);
  }

  if (!v24)
  {
    message = krb5_write_message(a1, a3, &v54);
    if (message)
    {
      goto LABEL_33;
    }

    krb5_data_free(&v54);
    message = krb5_read_message(a1, a3, &v53);
    if (message)
    {
      goto LABEL_33;
    }

    if (*&v53.magic)
    {
      v48 = 0;
      v46 = 0u;
      v47 = 0u;
      v44 = 0u;
      v45 = 0u;
      v42 = 0;
      v43 = 0u;
      v24 = krb5_rd_error(a1, &v53, &v42);
      krb5_data_free(&v53);
      if (!v24)
      {
        v32 = a11;
        v24 = krb5_error_from_rd_error(a1, &v42, 0);
        if (v32 && (v33 = malloc_type_malloc(0x68uLL, 0x10B00406D2B8025uLL), (*v32 = v33) != 0))
        {
          v34 = v42;
          v35 = v44;
          v33[1] = v43;
          v33[2] = v35;
          *v33 = v34;
          v36 = v45;
          v37 = v46;
          v38 = v47;
          *(v33 + 12) = v48;
          v33[4] = v37;
          v33[5] = v38;
          v33[3] = v36;
        }

        else
        {
          krb5_free_error_contents(a1, &v42);
        }

        return v24;
      }

LABEL_13:
      krb5_clear_error_message(a1);
      return v24;
    }

    krb5_data_free(&v53);
    if ((a7 & 2) == 0)
    {
      return 0;
    }

    *&v42.magic = 0;
    v42.data = 0;
    v41 = 0;
    krb5_data_zero(&v42);
    message = krb5_read_message(a1, a3, &v42);
    if (message)
    {
LABEL_33:
      v24 = message;
      krb5_set_error_message(a1, message, "krb5_sendauth: server closed connection");
      return v24;
    }

    v39 = a12;
    if (a12)
    {
      v40 = a12;
    }

    else
    {
      v40 = &v41;
    }

    v24 = krb5_rd_rep(a1, *a2, &v42, v40);
    krb5_data_free(&v42);
    if (!v24)
    {
      if (!v39)
      {
        krb5_free_ap_rep_enc_part(a1, v41);
      }

      return 0;
    }
  }

  return v24;
}

krb5_error_code krb5_set_default_realm(krb5_context a1, const char *a2)
{
  v18 = 0;
  v4 = heim_array_create();
  v5 = v4;
  if (a2)
  {
    sub_25227CDE8(v4, v4, a2);
  }

  else
  {
    krb5_plugin_run_f(a1, "krb5", "krb5_configuration", 0, 0, v4, sub_25227CE44);
    strings = krb5_config_get_strings(a1, 0, v6, v7, v8, v9, v10, v11, "libdefaults");
    v13 = strings;
    v18 = strings;
    if (strings)
    {
      goto LABEL_4;
    }

    if (!heim_array_get_length(v5))
    {
      LODWORD(strings) = krb5_get_host_realm(a1, 0, &v18);
      if (strings)
      {
        v16 = strings;
        heim_release(v5);
        return v16;
      }

      v13 = v18;
      if (v18)
      {
LABEL_4:
        v14 = *v13;
        if (*v13)
        {
          v15 = 1;
          do
          {
            sub_25227CDE8(strings, v5, v14);
            v13 = v18;
            v14 = v18[v15++];
          }

          while (v14);
        }

        krb5_free_host_realm(a1, v13);
      }
    }
  }

  heim_release(*(a1 + 9));
  v16 = 0;
  *(a1 + 9) = v5;
  return v16;
}

void sub_25227CDE8(int a1, __CFArray *a2, char *cStr)
{
  v4 = heim_string_create(cStr);
  if (v4)
  {
    v5 = v4;
    heim_array_append_value(a2, v4);

    heim_release(v5);
  }
}

uint64_t sub_25227CE44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 24);
  if (v4)
  {
    return v4(a1, a3, a4, sub_25227CDE8);
  }

  else
  {
    return 2529639161;
  }
}

uint64_t krb5_sock_to_principal(_krb5_context *a1, int a2, const char *a3, krb5_int32 a4, krb5_principal *a5)
{
  v25 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0;
  v18 = 0u;
  v15 = 128;
  if (getsockname(a2, &v17, &v15) < 0)
  {
    v13 = __error();
    v12 = *v13;
    strerror(*v13);
    krb5_set_error_message(a1, v12, "getsockname: %s");
  }

  else
  {
    v9 = getnameinfo(&v17, v15, v16, 0x401u, 0, 0, 0);
    if (v9)
    {
      v10 = v9;
      v11 = __error();
      v12 = krb5_eai_to_heim_errno(v10, *v11);
      gai_strerror(v10);
      krb5_set_error_message(a1, v12, "getnameinfo: %s");
    }

    else
    {
      return krb5_sname_to_principal(a1, v16, a3, a4, a5);
    }
  }

  return v12;
}

void *krb5_storage_emem()
{
  v0 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (v0)
  {
    v1 = malloc_type_malloc(0x20uLL, 0x101004038BDA701uLL);
    if (v1)
    {
      v2 = v1;
      *v0 = v1;
      v0[6] = 0x89F8E70500000000;
      v1[1] = 1024;
      v3 = malloc_type_malloc(0x400uLL, 0xA5AAB35AuLL);
      *v2 = v3;
      if (v3)
      {
        v2[2] = 0;
        v2[3] = v3;
        v0[1] = sub_25227D0C8;
        v0[2] = sub_25227D12C;
        v0[3] = sub_25227D1E4;
        v0[4] = sub_25227D290;
        v0[5] = sub_25227D370;
        v0[7] = 0x1FFFFFFFLL;
        return v0;
      }

      free(v0);
      v4 = v2;
    }

    else
    {
      v4 = v0;
    }

    free(v4);
    return 0;
  }

  return v0;
}

size_t sub_25227D0C8(void **a1, void *__dst, size_t a3)
{
  v5 = (*a1)[3];
  if (**a1 + (*a1)[2] - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = **a1 + (*a1)[2] - v5;
  }

  memmove(__dst, v5, v6);
  (a1[3])(a1, v6, 1);
  return v6;
}

size_t sub_25227D12C(void ***a1, void *__src, size_t __len)
{
  v3 = __len;
  v6 = *a1;
  v7 = **a1;
  v8 = v6[3];
  if (v6[1] + v7 - v8 < __len)
  {
    v9 = v8 - v7;
    v10 = (v8 - v7 + __len) << (v8 - v7 + __len < 0x1000);
    v11 = malloc_type_realloc(v7, v10, 0xF8A29809uLL);
    if (!v11)
    {
      return -1;
    }

    *v6 = v11;
    v6[1] = v10;
    v8 = &v11[v9];
    v6[3] = &v11[v9];
  }

  memmove(v8, __src, v3);
  (a1[3])(a1, v3, 1);
  return v3;
}

uint64_t sub_25227D1E4(uint64_t a1, unint64_t a2, int a3)
{
  v3 = *a1;
  switch(a3)
  {
    case 2:
      v6 = *(a1 + 24);
      goto LABEL_10;
    case 1:
      v6 = *(a1 + 24);
LABEL_10:
      v6();
      return v3[3] - *v3;
    case 0:
      v4 = v3[1];
      if (v4 >= a2)
      {
        v4 = a2;
      }

      v5 = v4 & ~(v4 >> 63);
      v3[3] = *v3 + v5;
      if (v5 > v3[2])
      {
        v3[2] = v5;
      }

      return v3[3] - *v3;
  }

  *__error() = 22;
  return -1;
}

uint64_t sub_25227D290(void ***a1, size_t size)
{
  v3 = *a1;
  if (size)
  {
    v5 = *v3;
    v4 = v3[1];
    v6 = v3[3];
    if (v4 < size || v4 >> 1 > size)
    {
      v8 = malloc_type_realloc(*v3, size, 0x654D941FuLL);
      if (!v8)
      {
        return 12;
      }

      v11 = v8;
      v9 = v6 - v5;
      v10 = v3[1];
      if (size > v10)
      {
        bzero(&v10[v8], size - v10);
      }

      *v3 = v11;
      v3[1] = size;
      v6 = &v11[v9];
      v3[3] = &v11[v9];
    }

    else
    {
      v11 = *v3;
    }
  }

  else
  {
    free(*v3);
    v11 = 0;
    v6 = 0;
    v3[3] = 0;
    *v3 = 0;
    v3[1] = 0;
  }

  v3[2] = size;
  result = 0;
  if (v6 - v11 > size)
  {
    v3[3] = &v11[size];
  }

  return result;
}

void sub_25227D370(void ***a1)
{
  v1 = *a1;
  bzero(**a1, (*a1)[2]);
  v2 = *v1;

  free(v2);
}

uint64_t _krb5_auth_con_setup_pfs(_krb5_context *a1, uint64_t a2, unsigned int a3)
{
  v6 = MEMORY[0x25309D8F0]();
  ccDRBGGetRngState();
  sub_25226B748(a1, 20, "Setting up PFS for auth context");
  v7 = malloc_type_calloc(1uLL, 0x90uLL, 0x10B0040D51C2B2DuLL);
  if (v7)
  {
    v14 = v7;
    strings = krb5_config_get_strings(a1, 0, v8, v9, v10, v11, v12, v13, "libdefaults");
    v16 = strings;
    if (strings)
    {
      v17 = *strings;
      if (!*strings)
      {
        krb5_config_free_strings(strings);
        v14[5].magic = 0;
        goto LABEL_20;
      }

      v18 = 0;
      v19 = (strings + 1);
      do
      {
        v18 = sub_25227E5CC(a1, v18, v17);
        v20 = *v19++;
        v17 = v20;
      }

      while (v20);
    }

    else
    {
      LODWORD(v18) = sub_25227E5CC(a1, 0, "ALL");
    }

    krb5_config_free_strings(v16);
    v14[5].magic = v18;
    if (v18)
    {
      if (a3 <= 0x17 && ((1 << a3) & 0x870000) != 0)
      {
        *&v14[4].magic = xmmword_2797028D0;
        v14[4].contents = 0;
        v21 = malloc_type_calloc(1uLL, (32 * *v6) | 0x10, 0x60040B37CB4BBuLL);
        v14[2].contents = v21;
        if (!v21)
        {
LABEL_15:
          free(v14);
          goto LABEL_16;
        }

        if (cccurve25519_make_key_pair() || ccec_generate_key_fips())
        {
          krb5_free_keyblock_contents(a1, v14 + 3);
          free(v14[2].contents);
          goto LABEL_15;
        }

        *(a2 + 104) = v14;
        return 0;
      }

LABEL_21:
      free(v14);
      return 0;
    }

LABEL_20:
    sub_25226B748(a1, 10, "No PFS configuration");
    goto LABEL_21;
  }

LABEL_16:

  return krb5_enomem(a1);
}

void sub_25227D5D0(_krb5_context *a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  if (v2)
  {
    free(*(v2 + 64));
    krb5_free_keyblock_contents(a1, (*(a2 + 104) + 72));
    krb5_free_principal(a1, *(*(a2 + 104) + 128));
    v5 = *(a2 + 104);
    v5[7] = 0u;
    v5[8] = 0u;
    v5[5] = 0u;
    v5[6] = 0u;
    v5[3] = 0u;
    v5[4] = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *v5 = 0u;
    free(*(a2 + 104));
    *(a2 + 104) = 0;
  }
}

uint64_t sub_25227D650(_krb5_context *a1, uint64_t a2, const char *a3, krb5_keyblock *a4)
{
  v4 = *(a2 + 104);
  memset(&v10, 0, sizeof(v10));
  if (!v4)
  {
    sub_2522A7F74();
  }

  v5 = (v4 + 72);
  if (!*(v4 + 72))
  {
    sub_2522A7F5C();
  }

  if (!*(v4 + 136))
  {
    sub_2522A7F44();
  }

  sub_25226B748(a1, 10, "krb5_pfs: updating to PFS key for direction %s", a3);
  result = _krb5_fast_cf2(a1, a4, "AP PFS shared key", v5, a3, &v10, 0);
  if (result != -1980176606)
  {
    if (result)
    {
      return result;
    }

    krb5_free_keyblock_contents(a1, a4);
    *a4 = v10;
    _krb5_debug_keyblock(a1, 20, a3, a4);
  }

  return 0;
}

uint64_t sub_25227D738(_krb5_context *a1, uint64_t a2, const krb5_principal_data *a3, unsigned int *a4)
{
  v8 = *(a2 + 104);
  v26 = 0;
  v27 = 0;
  v22 = 0;
  v23 = 0;
  v21 = 0;
  v28 = 0;
  v29 = 0;
  v25[0] = 0;
  v25[1] = 0;
  v24 = 0;
  krb5_data_zero(&v21);
  if (!sub_25227DA20(a1, a2))
  {
    return 0;
  }

  v9 = *(v8 + 120);
  if ((v9 & 1) == 0)
  {
    if ((v9 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    v13 = *(v8 + 64);
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v12 = sub_25227E2DC(a1, &v30, v13);
    if (v12)
    {
      goto LABEL_11;
    }

    v11 = sub_25228ADF8(v25, &v30);
    sub_25228ADE8(&v30);
    if (v11)
    {
      goto LABEL_12;
    }

LABEL_4:
    v10 = krb5_copy_principal(a1, a3, (v8 + 128));
    if (v10)
    {
      v11 = v10;
      sub_25227D5D0(a1, a2);
      sub_25228AEC8(&v24);
      return v11;
    }

    checksum = krb5_crypto_init(a1, *(a2 + 32), 0, &v26);
    if (checksum)
    {
      goto LABEL_17;
    }

    v21 = sub_25228AEB8(&v24);
    v16 = malloc_type_malloc(v21, 0xE9EF7E75uLL);
    v22 = v16;
    if (v16)
    {
      v17 = sub_25228AE98(v16 + v21 - 1, v21, &v24, &v23);
      if (v17)
      {
        v11 = v17;
        free(v22);
        v22 = 0;
        goto LABEL_12;
      }

      if (v23 != v21)
      {
        sub_2522A7F8C();
      }

      v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
      v24 = v18;
      if (v18)
      {
        checksum = krb5_create_checksum(a1, v26, 0xFFFFFFE5, 0, v22, v21, v18);
        if (!checksum)
        {
          LODWORD(v27) = 513;
          v28 = sub_25228AEB8(&v24);
          v19 = malloc_type_malloc(v28, 0xE2DE8353uLL);
          v29 = v19;
          if (v19)
          {
            v20 = sub_25228AE98(v19 + v28 - 1, v28, &v24, &v23);
            if (v20)
            {
              v11 = v20;
              free(v29);
              v29 = 0;
              goto LABEL_12;
            }

            if (v28 != v23)
            {
              krb5_abortx(a1, "internal error in ASN.1 encoder");
            }

            checksum = sub_25228A8C0(a4, &v27);
            goto LABEL_17;
          }

          goto LABEL_29;
        }
      }

      else
      {
        checksum = krb5_enomem(a1);
      }

LABEL_17:
      v11 = checksum;
      goto LABEL_12;
    }

LABEL_29:
    v11 = 12;
    goto LABEL_12;
  }

  v30 = 2;
  v31 = 0;
  v32 = 0;
  v12 = krb5_data_copy(&v31, (v8 + 32), 0x20uLL);
  if (v12)
  {
LABEL_11:
    v11 = v12;
    sub_25228ADE8(&v30);
    goto LABEL_12;
  }

  v11 = sub_25228ADF8(v25, &v30);
  sub_25228ADE8(&v30);
  if (!v11)
  {
    if ((*(v8 + 120) & 2) == 0)
    {
      goto LABEL_4;
    }

    goto LABEL_10;
  }

LABEL_12:
  if (v26)
  {
    krb5_crypto_destroy(a1, v26);
  }

  sub_25228AEC8(&v24);
  sub_25228A83C(&v27);
  free(v22);
  return v11;
}

BOOL sub_25227DA20(_krb5_context *a1, uint64_t a2)
{
  v7 = 0;
  v4 = krb5_crypto_prf_length(a1, **(a2 + 32), &v7);
  if (v4 == -1980176606)
  {
    sub_25226B748(a1, 10, "Enctype %d doesn't support PFS", **(a2 + 32));
    return 0;
  }

  else
  {
    if (v4)
    {
      v6 = 1;
    }

    else
    {
      v6 = v7 == 0;
    }

    return !v6;
  }
}

uint64_t sub_25227DAA8(_krb5_context *a1, uint64_t a2)
{
  v28 = 0;
  v29 = 0;
  v27 = 0;
  v31 = 0;
  v32 = 0;
  v30 = 0;
  krb5_data_zero(&v28);
  v4 = *(a2 + 64);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v4 + 80);
  if (!v5)
  {
    return v5;
  }

  if (!*(a2 + 32))
  {
    sub_2522A7FBC();
  }

  if (!sub_25227DA20(a1, a2) || _krb5_get_ad(a1, v5, 0, 513, &v28))
  {
    return 0;
  }

  v5 = sub_25228AE78(v29, v28, &v30, &v27);
  krb5_data_free(&v28);
  if (v5)
  {
    goto LABEL_18;
  }

  v7 = *(a2 + 32);
  v33 = 0;
  v8 = v30;
  if (!v30)
  {
    v5 = 2314790689;
    v13 = "peer sent no checksum";
LABEL_14:
    krb5_set_error_message(a1, -1980176607, v13, *ctype);
    goto LABEL_18;
  }

  v30 = 0;
  v9 = sub_25228AEB8(&v30);
  v10 = malloc_type_malloc(v9, 0xB7B84F25uLL);
  if (!v10)
  {
    v5 = 12;
    goto LABEL_17;
  }

  v11 = v10;
  *ctype = 0;
  v12 = sub_25228AE98(v10 + v9 - 1, v9, &v30, &v33);
  if (v12)
  {
    v5 = v12;
    free(v11);
LABEL_17:
    v30 = v8;
    goto LABEL_18;
  }

  v30 = v8;
  if (v9 != v33)
  {
    sub_2522A7FA4();
  }

  v14 = krb5_crypto_init(a1, v7, 0, ctype);
  if (v14)
  {
    v5 = v14;
    free(v11);
    goto LABEL_18;
  }

  if (!krb5_checksum_is_keyed(a1, *v8))
  {
    v5 = 2314790689;
    free(v11);
    v13 = "checksum not keyed";
    goto LABEL_14;
  }

  v5 = krb5_verify_checksum(a1, ctype[0], 0xFFFFFFE5, v11, v9, v8, v15);
  krb5_crypto_destroy(a1, *ctype);
  free(v11);
  if (v5)
  {
    goto LABEL_18;
  }

  v16 = _krb5_auth_con_setup_pfs(a1, a2, **(a2 + 32));
  if (v16)
  {
    goto LABEL_25;
  }

  if (!v31)
  {
LABEL_45:
    v5 = 2314790688;
    krb5_set_error_message(a1, -1980176608, "No acceptable PFS group sent", *ctype);
    goto LABEL_18;
  }

  v17 = v32;
  v18 = 1;
  do
  {
    if (*v17 == 2)
    {
      v19 = 1;
    }

    else
    {
      if (*v17 != 1)
      {
        v20 = 0;
        goto LABEL_38;
      }

      v19 = 2;
    }

    if ((*(*(a2 + 104) + 120) & v19) != 0)
    {
      v20 = v17;
    }

    else
    {
      v20 = 0;
    }

LABEL_38:
    if (v20)
    {
      break;
    }

    v17 += 6;
  }

  while (v18++ < v31);
  if (!v20)
  {
    goto LABEL_45;
  }

  v22 = *(a2 + 104);
  v23 = *(a2 + 64);
  v24 = *(v23 + 8);
  *ctype = *(v23 + 16);
  v26 = *(v23 + 32);
  v16 = _krb5_principalname2krb5_principal(a1, (v22 + 128), ctype, v24);
  if (v16)
  {
LABEL_25:
    v5 = v16;
    goto LABEL_18;
  }

  v5 = sub_25227DDD0(a1, a2, **(a2 + 32), v20);
  if (!v5)
  {
    sub_25228AEC8(&v30);
    sub_25226B748(a1, 10, "PFS server made selected");
    return v5;
  }

LABEL_18:
  sub_25228AEC8(&v30);
  sub_25227D5D0(a1, a2);
  return v5;
}

uint64_t sub_25227DDD0(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = *(a2 + 104);
  ccDRBGGetRngState();
  if (!v7)
  {
    sub_2522A7F74();
  }

  v18 = 0;
  v19 = 0;
  v8 = krb5_data_zero(&v18);
  if (*a4 == 1)
  {
    if ((*(v7 + 120) & 2) != 0)
    {
      v12 = MEMORY[0x25309D8F0](v8);
      v13 = MEMORY[0x28223BE20]();
      if (MEMORY[0x25309D920](v13, *(a4 + 8), *(a4 + 16), &v17 - v14))
      {
        v15 = "failed to import public key";
      }

      else
      {
        v16 = krb5_data_alloc(&v18, 8 * *v12);
        if (v16)
        {
          v10 = v16;
          goto LABEL_23;
        }

        if (!ccec_compute_key())
        {
          goto LABEL_21;
        }

        v15 = "Failed to complete share key";
      }

      v10 = 2314790688;
      krb5_set_error_message(a1, -1980176608, v15);
      return v10;
    }

LABEL_9:
    v10 = 2314790688;
    krb5_set_error_message(a1, -1980176608, "Group %d not accepted", *a4);
    return v10;
  }

  if (*a4 != 2 || (*(v7 + 120) & 1) == 0)
  {
    goto LABEL_9;
  }

  if (*(a4 + 8) == 32)
  {
    v9 = krb5_data_alloc(&v18, 0x20uLL);
    if (v9)
    {
      v10 = v9;
LABEL_23:
      bzero(v19, v18);
      krb5_data_free(&v18);
      return v10;
    }

    if (cccurve25519_with_rng())
    {
      v10 = 2314790688;
      krb5_set_error_message(a1, -1980176608, "Failed to complete share key");
      return v10;
    }

LABEL_21:
    v10 = _krb5_pk_kdf(a1, (v7 + 96), v19, v18, *(v7 + 128), 0, a3, 0, 0, 0, v7 + 72);
    if (!v10)
    {
      _krb5_debug_keyblock(a1, 20, "PFS shared keyblock", v7 + 72);
      *(v7 + 136) = *a4;
    }

    goto LABEL_23;
  }

  v10 = 2314790688;
  krb5_set_error_message(a1, -1980176608, "public key of wrong length");
  return v10;
}

uint64_t sub_25227E054(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 104);
  v21 = 0;
  v18 = 0;
  if (!v3)
  {
    sub_2522A7FD4();
  }

  if (!*(v3 + 136))
  {
    sub_2522A7F44();
  }

  v19 = 0;
  v20 = 0;
  krb5_data_zero(&v19);
  v7 = malloc_type_calloc(1uLL, 0x20uLL, 0x10A0040E158D9E9uLL);
  *(a3 + 40) = v7;
  if (!v7)
  {
    return krb5_enomem(a1);
  }

  v8 = *(v3 + 136);
  if (v8 == 1)
  {
    checksum = sub_25227E2DC(a1, (v7 + 2), *(v3 + 64));
    if (checksum)
    {
      goto LABEL_11;
    }
  }

  else
  {
    if (v8 != 2)
    {
      heim_abort("Invalid PFS group:0");
    }

    v7[2] = 2;
    checksum = krb5_data_copy(v7 + 2, (v3 + 32), 0x20uLL);
    if (checksum)
    {
      goto LABEL_11;
    }
  }

  checksum = krb5_crypto_init(a1, *(a2 + 32), 0, &v21);
  if (!checksum)
  {
    v19 = sub_25228AEF8(*(a3 + 40));
    v13 = malloc_type_malloc(v19, 0xDB743EB2uLL);
    v20 = v13;
    if (!v13)
    {
      v10 = 12;
      goto LABEL_12;
    }

    v14 = sub_25228AED8(v13 + v19 - 1, v19, *(a3 + 40), &v18);
    if (v14)
    {
      v10 = v14;
      free(v20);
      v20 = 0;
      goto LABEL_12;
    }

    if (v18 != v19)
    {
      sub_2522A7F8C();
    }

    v15 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
    **(a3 + 40) = v15;
    if (v15)
    {
      checksum = krb5_create_checksum(a1, v21, 0xFFFFFFE3, 0, v20, v19, v15);
      if (!checksum)
      {
        sub_25226B748(a1, 20, "PFS deriving new keys on server");
        checksum = sub_25227D650(a1, a2, "session key", *(a2 + 32));
        if (!checksum)
        {
          v16 = *(a2 + 40);
          if (!v16 || (checksum = sub_25227D650(a1, a2, "server key", v16), !checksum))
          {
            v17 = *(a2 + 48);
            if (!v17 || (checksum = sub_25227D650(a1, a2, "client key", v17), !checksum))
            {
              v10 = 0;
              *a2 |= 0x100u;
              goto LABEL_12;
            }
          }
        }
      }
    }

    else
    {
      checksum = krb5_enomem(a1);
    }
  }

LABEL_11:
  v10 = checksum;
LABEL_12:
  sub_25227D5D0(a1, a2);
  krb5_crypto_destroy(a1, v21);
  if (v20)
  {
    free(v20);
  }

  if (v10)
  {
    v11 = *(a3 + 40);
    if (v11)
    {
      sub_25228AF08(v11);
      free(*(a3 + 40));
      *(a3 + 40) = 0;
    }
  }

  return v10;
}

uint64_t sub_25227E2DC(_krb5_context *a1, uint64_t a2, void *a3)
{
  *a2 = 1;
  v5 = ((cczp_bitlen() + 7) >> 2) | 1;
  *(a2 + 8) = v5;
  v6 = malloc_type_malloc(v5, 0x97AB5E20uLL);
  *(a2 + 16) = v6;
  if (v6)
  {
    ccec_export_pub();
    return 0;
  }

  else
  {

    return krb5_enomem(a1);
  }
}

uint64_t sub_25227E374(krb5_context a1, uint64_t a2, uint64_t a3)
{
  if (!*(a2 + 104))
  {
    sub_2522A8034();
  }

  v4 = *(a3 + 40);
  if (!v4)
  {
    sub_2522A801C();
  }

  v7 = *(a2 + 32);
  v19 = 0;
  v8 = *v4;
  if (!*v4)
  {
    v13 = 2314790689;
    krb5_set_error_message(a1, -1980176607, "peer sent no checksum", v19);
    goto LABEL_11;
  }

  *v4 = 0;
  v9 = sub_25228AEF8(v4);
  v10 = malloc_type_malloc(v9, 0x7062AEFBuLL);
  if (!v10)
  {
    v13 = 12;
    goto LABEL_10;
  }

  v11 = v10;
  *ctype = 0;
  v12 = sub_25228AED8(v10 + v9 - 1, v9, v4, &v19);
  if (v12)
  {
    v13 = v12;
    free(v11);
LABEL_10:
    *v4 = v8;
    goto LABEL_11;
  }

  *v4 = v8;
  if (v9 != v19)
  {
    sub_2522A7FEC();
  }

  v15 = krb5_crypto_init(a1, v7, 0, ctype);
  if (v15)
  {
    v13 = v15;
    free(v11);
    goto LABEL_11;
  }

  if (!krb5_checksum_is_keyed(a1, *v8))
  {
    v13 = 2314790689;
    free(v11);
    krb5_set_error_message(a1, -1980176607, "checksum not keyed", v19);
    goto LABEL_11;
  }

  v13 = krb5_verify_checksum(a1, ctype[0], 0xFFFFFFE3, v11, v9, v8, v16);
  krb5_crypto_destroy(a1, *ctype);
  free(v11);
  if (v13)
  {
LABEL_11:
    sub_25227D5D0(a1, a2);
    return v13;
  }

  v17 = sub_25227DDD0(a1, a2, **(a2 + 32), *(a3 + 40) + 8);
  if (v17 || (sub_25226B748(a1, 10, "PFS client made secret"), sub_25226B748(a1, 20, "PFS deriving new keys on client"), v17 = sub_25227D650(a1, a2, "session key", *(a2 + 32)), v17) || (v18 = *(a2 + 40)) != 0 && (v17 = sub_25227D650(a1, a2, "client key", v18), v17))
  {
    v13 = v17;
    goto LABEL_11;
  }

  if (!*(*(a2 + 104) + 136))
  {
    sub_2522A8004();
  }

  v13 = 0;
  *a2 |= 0x100u;
  return v13;
}

uint64_t sub_25227E5CC(uint64_t a1, uint64_t a2, const char *a3)
{
  v5 = *a3;
  if (v5 == 45)
  {
    v6 = a3 + 1;
  }

  else
  {
    v6 = a3;
  }

  if (!strcasecmp(v6, "ALL"))
  {
    v7 = 3;
  }

  else if (!strcasecmp(v6, "dh25519"))
  {
    v7 = 1;
  }

  else
  {
    if (strcasecmp(v6, "nist-p256") && strcasecmp(v6, "p256") && strcasecmp(v6, "all-nist"))
    {
      sub_25226B748(a1, 10, "unsupported dh curve(s): %s", v6);
      return a2;
    }

    v7 = 2;
  }

  v8 = a2 & ~v7;
  v9 = v7 | a2;
  if (v5 == 45)
  {
    return v8;
  }

  else
  {
    return v9;
  }
}

void *krb5_storage_from_fd(int a1)
{
  v1 = dup(a1);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  v3 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (!v3)
  {
    close(v2);
    return v3;
  }

  v4 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
  *v3 = v4;
  if (!v4)
  {
    close(v2);
    free(v3);
    return 0;
  }

  v3[6] = 0x89F8E70500000000;
  *v4 = v2;
  v3[1] = sub_25227E7B0;
  v3[2] = sub_25227E7BC;
  v3[3] = sub_25227E7C8;
  v3[4] = sub_25227E7D4;
  v3[5] = sub_25227E80C;
  v3[7] = 0x1FFFFFFFLL;
  return v3;
}

uint64_t sub_25227E7D4(int **a1, off_t a2)
{
  if (ftruncate(**a1, a2) == -1)
  {
    return *__error();
  }

  else
  {
    return 0;
  }
}

void *krb5_storage_from_mem(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (v4)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x10100406AB5462FuLL);
    if (v5)
    {
      *v4 = v5;
      v4[6] = 0x89F8E70500000000;
      *v5 = a1;
      v5[1] = a2;
      v5[2] = a1;
      v4[1] = sub_25227E8F4;
      v4[2] = sub_25227E958;
      v4[3] = sub_25227E9B4;
      v4[4] = sub_25227EA48;
      v4[5] = 0;
      v4[7] = 0x1FFFFFFFLL;
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

size_t sub_25227E8F4(void **a1, void *__dst, size_t a3)
{
  v5 = (*a1)[2];
  if (**a1 + (*a1)[1] - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = **a1 + (*a1)[1] - v5;
  }

  memmove(__dst, v5, v6);
  (a1[3])(a1, v6, 1);
  return v6;
}

size_t sub_25227E958(void **a1, const void *a2, size_t a3)
{
  v4 = **a1 + (*a1)[1];
  v5 = (*a1)[2];
  if (v4 - v5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = v4 - v5;
  }

  memmove(v5, a2, v6);
  (a1[3])(a1, v6, 1);
  return v6;
}

uint64_t sub_25227E9B4(uint64_t a1, unint64_t a2, int a3)
{
  v4 = *a1;
  if (a3 == 2)
  {
    v7 = *(a1 + 24);
  }

  else
  {
    if (a3 != 1)
    {
      if (a3)
      {
        *__error() = 22;
        return -1;
      }

      else
      {
        v5 = v4[1];
        if (v5 >= a2)
        {
          v5 = a2;
        }

        result = v5 & ~(v5 >> 63);
        v4[2] = *v4 + result;
      }

      return result;
    }

    v7 = *(a1 + 24);
  }

  return v7();
}

uint64_t sub_25227EA48(uint64_t a1, int64_t a2)
{
  v2 = *a1;
  if (*(*a1 + 8) < a2)
  {
    return 34;
  }

  v2[1] = a2;
  result = 0;
  if (v2[2] - *v2 > a2)
  {
    v2[2] = *v2 + a2;
  }

  return result;
}

void *krb5_storage_from_readonly_mem(uint64_t a1, uint64_t a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (v4)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x10100406AB5462FuLL);
    if (v5)
    {
      *v4 = v5;
      v4[6] = 0x89F8E70500000000;
      *v5 = a1;
      v5[1] = a2;
      v5[2] = a1;
      v4[1] = sub_25227E8F4;
      v4[2] = sub_25227EB78;
      v4[3] = sub_25227E9B4;
      v4[4] = sub_25227EB80;
      v4[5] = 0;
      v4[7] = 0x1FFFFFFFLL;
    }

    else
    {
      free(v4);
      return 0;
    }
  }

  return v4;
}

void *krb5_storage_from_mem_copy(const void *a1, size_t a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x10800405C5E1C9BuLL);
  if (v4)
  {
    v5 = malloc_type_malloc(0x18uLL, 0x10100406AB5462FuLL);
    if (v5)
    {
      v6 = v5;
      *v4 = v5;
      v4[6] = 0x89F8E70500000000;
      v7 = malloc_type_malloc(a2, 0x23FB8016uLL);
      *v6 = v7;
      if (v7)
      {
        memcpy(v7, a1, a2);
        v8 = *v6;
        v6[1] = a2;
        v6[2] = v8;
        v4[1] = sub_25227E8F4;
        v4[2] = sub_25227E958;
        v4[3] = sub_25227E9B4;
        v4[4] = sub_25227EA48;
        v4[5] = sub_25227ECA4;
        return v4;
      }

      free(v4);
      v9 = v6;
    }

    else
    {
      v9 = v4;
    }

    free(v9);
    return 0;
  }

  return v4;
}

void sub_25227ECA4(void ***a1)
{
  v1 = *a1;
  bzero(**a1, (*a1)[1]);
  v2 = *v1;

  free(v2);
}

uint64_t krb5_storage_free(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    v2(a1);
  }

  free(*a1);
  free(a1);
  return 0;
}

uint64_t krb5_storage_to_data(uint64_t a1, size_t *a2)
{
  v4 = 2314790665;
  v5 = (*(a1 + 24))(a1, 0, 1);
  if (v5 < 0)
  {
    return 2314790664;
  }

  v6 = v5;
  v7 = (*(a1 + 24))(a1, 0, 2);
  if (v7 <= 102400)
  {
    v8 = v7;
    v9 = *(a1 + 56);
    if (!v9 || v9 >= v7)
    {
      v4 = krb5_data_alloc(a2, v7);
      if (!v4)
      {
        if (!v8)
        {
          return 0;
        }

        (*(a1 + 24))(a1, 0, 0);
        (*(a1 + 8))(a1, a2[1], *a2);
        v4 = 0;
      }

      (*(a1 + 24))(a1, v6, 0);
    }
  }

  return v4;
}

uint64_t krb5_store_int32(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 48) & 0x60) != 0x40 && (*(a1 + 48) & 1) == 0)
  {
    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      LODWORD(a2) = sub_252288C8C(a2);
    }
  }

  else
  {
    LODWORD(a2) = bswap32(a2);
  }

  return sub_25227EEFC(a1, a2, 4);
}

uint64_t sub_25227EEFC(uint64_t a1, int a2, uint64_t a3)
{
  v9 = *MEMORY[0x277D85DE8];
  _krb5_put_int(v8, a2, a3);
  v5 = (*(a1 + 16))(a1, v8, a3);
  if (v5 < 0)
  {
    v7 = __error();
  }

  else
  {
    if (v5 == a3)
    {
      return 0;
    }

    v7 = (a1 + 52);
  }

  return *v7;
}

uint64_t krb5_ret_int32(uint64_t a1, unsigned int *a2)
{
  v4 = sub_25227F014(a1, a2, 4);
  if (!v4)
  {
    if (*(a1 + 48) & 0x60) == 0x40 || (*(a1 + 48))
    {
      v6 = bswap32(*a2);
LABEL_9:
      *a2 = v6;
      return v4;
    }

    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      v6 = sub_252288C8C(*a2);
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t sub_25227F014(uint64_t a1, _DWORD *a2, uint64_t a3)
{
  v8 = 0;
  v6 = (*(a1 + 8))(a1, v9);
  if (v6 < 0)
  {
    return *__error();
  }

  if (v6 != a3)
  {
    return *(a1 + 52);
  }

  _krb5_get_int(v9, &v8, a3);
  result = 0;
  *a2 = v8;
  return result;
}

uint64_t krb5_ret_uint32(uint64_t a1, _DWORD *a2)
{
  v4 = 0;
  result = krb5_ret_int32(a1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t krb5_store_int16(uint64_t a1, unsigned int a2)
{
  if ((*(a1 + 48) & 0x60) != 0x40 && (*(a1 + 48) & 1) == 0)
  {
    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      LOWORD(a2) = sub_252288C94(a2);
    }
  }

  else
  {
    a2 = bswap32(a2) >> 16;
  }

  return sub_25227EEFC(a1, a2, 2);
}

uint64_t krb5_ret_int16(uint64_t a1, _WORD *a2)
{
  v9 = 0;
  v4 = sub_25227F014(a1, &v9, 2);
  if (!v4)
  {
    v5 = v9;
    *a2 = v9;
    if (*(a1 + 48) & 0x60) == 0x40 || (*(a1 + 48))
    {
      v7 = bswap32(v5) >> 16;
LABEL_9:
      *a2 = v7;
      return v4;
    }

    if ((*(a1 + 48) & 0x60) == 0x20)
    {
      LOWORD(v7) = sub_252288C94(v5);
      goto LABEL_9;
    }
  }

  return v4;
}

uint64_t krb5_ret_uint16(uint64_t a1, _WORD *a2)
{
  v4 = 0;
  result = krb5_ret_int16(a1, &v4);
  if (!result)
  {
    *a2 = v4;
  }

  return result;
}

uint64_t krb5_store_int8(uint64_t a1, char a2)
{
  v6 = a2;
  v3 = (*(a1 + 16))(a1, &v6, 1);
  if (v3 == 1)
  {
    return 0;
  }

  if (v3 < 0)
  {
    v5 = __error();
  }

  else
  {
    v5 = (a1 + 52);
  }

  return *v5;
}

uint64_t krb5_ret_int8(uint64_t a1, uint64_t a2)
{
  v3 = (*(a1 + 8))(a1, a2, 1);
  if (v3 == 1)
  {
    return 0;
  }

  if (v3 < 0)
  {
    v5 = __error();
  }

  else
  {
    v5 = (a1 + 52);
  }

  return *v5;
}

uint64_t krb5_ret_uint8(uint64_t a1, _BYTE *a2)
{
  v7 = 0;
  v4 = (*(a1 + 8))(a1, &v7, 1);
  if (v4 == 1 || (v4 < 0 ? (v5 = __error()) : (v5 = (a1 + 52)), result = *v5, !result))
  {
    result = 0;
    *a2 = v7;
  }

  return result;
}

uint64_t krb5_store_data(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 2314790665;
  if (a2 <= 102400)
  {
    v6 = *(a1 + 56);
    if (!v6 || v6 >= a2)
    {
      result = krb5_store_int32(a1, a2);
      if ((result & 0x80000000) == 0)
      {
        v9 = (*(a1 + 16))(a1, a3, a2);
        if (v9 < 0)
        {
          v10 = __error();
        }

        else
        {
          if (v9 == a2)
          {
            return 0;
          }

          v10 = (a1 + 52);
        }

        return *v10;
      }
    }
  }

  return result;
}

uint64_t krb5_ret_data(uint64_t a1, size_t *a2)
{
  v9 = 0;
  result = krb5_ret_int32(a1, &v9);
  if (!result)
  {
    result = 2314790665;
    v5 = v9;
    if (v9 <= 102400)
    {
      v6 = *(a1 + 56);
      if (!v6 || v6 >= v9)
      {
        result = krb5_data_alloc(a2, v9);
        if (!result)
        {
          if (v5 && (v7 = (*(a1 + 8))(a1, a2[1], v5), v7 != v5))
          {
            if (v7 < 0)
            {
              v8 = __error();
            }

            else
            {
              v8 = (a1 + 52);
            }

            return *v8;
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t krb5_store_string(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v8[0] = v4;
  v8[1] = __s;
  if (v4 > 2048 || ((v5 = *(a1 + 56)) != 0 ? (v6 = v5 < v4) : (v6 = 0), v6))
  {
    krb5_data_free(v8);
    return 2314790665;
  }

  else
  {

    return krb5_store_data(a1, v4, __s);
  }
}

uint64_t krb5_ret_string(uint64_t a1, void *a2)
{
  v8 = 0;
  ptr = 0;
  result = krb5_ret_data(a1, &v8);
  if (!result)
  {
    if (v8 > 2048 || (v5 = *(a1 + 56)) != 0 && v5 < v8)
    {
      krb5_data_free(&v8);
      return 2314790665;
    }

    else
    {
      v6 = malloc_type_realloc(ptr, v8 + 1, 0x616AE4F1uLL);
      *a2 = v6;
      if (v6)
      {
        v7 = v6;
        result = 0;
        v7[v8] = 0;
      }

      else
      {
        free(ptr);
        return 12;
      }
    }
  }

  return result;
}

uint64_t krb5_store_stringz(uint64_t a1, char *__s)
{
  v4 = 2314790665;
  v5 = strlen(__s) + 1;
  if (v5 <= 2048)
  {
    v6 = *(a1 + 56);
    if (!v6 || v6 >= v5)
    {
      v8 = (*(a1 + 16))(a1, __s, v5);
      if (v8 < 0 || v8 != v5)
      {
        return *(a1 + 52);
      }

      else
      {
        return 0;
      }
    }
  }

  return v4;
}

uint64_t krb5_ret_stringz(uint64_t a1, void *a2)
{
  v4 = 0;
  v5 = 0;
  v12 = 0;
  while (1)
  {
    if ((*(a1 + 8))(a1, &v12, 1) != 1)
    {
      free(v4);
      return *(a1 + 52);
    }

    if (v5 == 2048 || ((v6 = *(a1 + 56)) != 0 ? (v7 = v6 <= v5) : (v7 = 0), v7))
    {
      free(v4);
      return 2314790665;
    }

    v8 = malloc_type_realloc(v4, v5 + 1, 0x717C6329uLL);
    if (!v8)
    {
      break;
    }

    v9 = v8;
    v10 = v12;
    v8[v5++] = v12;
    v4 = v8;
    if (!v10)
    {
      result = 0;
      *a2 = v9;
      return result;
    }
  }

  free(v4);
  return 12;
}

uint64_t krb5_store_stringnl(uint64_t a1, char *__s)
{
  v4 = strlen(__s);
  v5 = (*(a1 + 16))(a1, __s, v4);
  if ((v5 & 0x8000000000000000) == 0 && v5 == v4 && (*(a1 + 16))(a1, "\n", 1) == 1)
  {
    return 0;
  }

  else
  {
    return *(a1 + 52);
  }
}

uint64_t krb5_ret_stringnl(uint64_t a1, void *a2)
{
  v11 = 0;
  if ((*(a1 + 8))(a1, &v11, 1) == 1)
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    while (1)
    {
      if (v11 == 13)
      {
        v6 = 1;
      }

      else
      {
        if (v6 && v11 != 10)
        {
          free(v5);
          return 2529639050;
        }

        if (v4 + 1 > 2048 || (v7 = *(a1 + 56)) != 0 && v7 < v4 + 1)
        {
          free(v5);
          return 2314790665;
        }

        v8 = malloc_type_realloc(v5, v4 + 1, 0x865B7203uLL);
        if (!v8)
        {
          free(v5);
          return 12;
        }

        v9 = v8;
        if (v11 == 10)
        {
          result = 0;
          v9[v4] = 0;
          *a2 = v9;
          return result;
        }

        v8[v4] = v11;
        v5 = v8;
        ++v4;
      }

      if ((*(a1 + 8))(a1, &v11, 1) != 1)
      {
        goto LABEL_16;
      }
    }
  }

  v5 = 0;
LABEL_16:
  free(v5);
  return *(a1 + 52);
}

uint64_t krb5_store_principal(uint64_t a1, char **a2)
{
  v4 = *(a1 + 48);
  if ((v4 & 4) == 0)
  {
    result = krb5_store_int32(a1, *a2);
    if (result)
    {
      return result;
    }

    v4 = *(a1 + 48);
  }

  result = krb5_store_int32(a1, *(a2 + 2) + ((v4 >> 1) & 1));
  if (!result)
  {
    result = krb5_store_string(a1, a2[3]);
    if (!result)
    {
      if (*(a2 + 2))
      {
        v6 = 0;
        do
        {
          result = krb5_store_string(a1, *&a2[2][8 * v6]);
          if (result)
          {
            break;
          }

          ++v6;
        }

        while (v6 < *(a2 + 2));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t krb5_ret_principal(uint64_t a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900408A8AD7E9uLL);
  if (!v4)
  {
    return 12;
  }

  v5 = v4;
  v17 = 0;
  if ((*(a1 + 48) & 4) != 0)
  {
    v17 = 0;
  }

  else
  {
    v6 = krb5_ret_int32(a1, &v17);
    if (v6)
    {
LABEL_7:
      v7 = v6;
      goto LABEL_8;
    }
  }

  v16 = 0;
  v6 = krb5_ret_int32(a1, &v16);
  if (v6)
  {
    goto LABEL_7;
  }

  v8 = *(a1 + 48) << 30;
  v9 = v16 + (v8 >> 31);
  if ((v16 + (v8 >> 31)) < 0)
  {
    free(v5);
    return 22;
  }

  v10 = *(a1 + 56);
  if (v10 && v10 >> 3 < v9)
  {
    free(v5);
    return 2314790665;
  }

  *v5 = v17;
  v5[2] = v9;
  v6 = krb5_ret_string(a1, v5 + 3);
  if (v6)
  {
    goto LABEL_7;
  }

  v11 = malloc_type_calloc(v9, 8uLL, 0x10040436913F5uLL);
  *(v5 + 2) = v11;
  if (v9 && !v11)
  {
    free(*(v5 + 3));
    free(v5);
    return 12;
  }

  if (!v9)
  {
LABEL_24:
    v7 = 0;
    *a2 = v5;
    return v7;
  }

  v13 = 0;
  while (1)
  {
    v14 = krb5_ret_string(a1, (*(v5 + 2) + 8 * v13));
    if (v14)
    {
      break;
    }

    if (++v13 == v9)
    {
      goto LABEL_24;
    }
  }

  v7 = v14;
  do
  {
    free(*(*(v5 + 2) + 8 * v13));
  }

  while (v13-- > 0);
  free(*(v5 + 3));
LABEL_8:
  free(v5);
  return v7;
}

uint64_t krb5_store_keyblock(uint64_t a1, __int16 *a2)
{
  result = krb5_store_int16(a1, *a2);
  if (!result)
  {
    if ((*(a1 + 48) & 8) == 0 || (result = krb5_store_int16(a1, *a2), !result))
    {
      v5 = *(a2 + 1);
      v6 = *(a2 + 2);

      return krb5_store_data(a1, v5, v6);
    }
  }

  return result;
}

uint64_t krb5_ret_keyblock(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = krb5_ret_int16(a1, &v5);
  if (!result)
  {
    *a2 = v5;
    if ((*(a1 + 48) & 8) == 0 || (result = krb5_ret_int16(a1, &v5), !result))
    {

      return krb5_ret_data(a1, (a2 + 8));
    }
  }

  return result;
}

uint64_t krb5_store_times(uint64_t a1, unsigned int *a2)
{
  result = krb5_store_int32(a1, *a2);
  if (!result)
  {
    result = krb5_store_int32(a1, a2[2]);
    if (!result)
    {
      result = krb5_store_int32(a1, a2[4]);
      if (!result)
      {
        v5 = a2[6];

        return krb5_store_int32(a1, v5);
      }
    }
  }

  return result;
}

uint64_t krb5_ret_times(uint64_t a1, void *a2)
{
  v5 = 0;
  result = krb5_ret_int32(a1, &v5);
  *a2 = v5;
  if (!result)
  {
    result = krb5_ret_int32(a1, &v5);
    a2[1] = v5;
    if (!result)
    {
      result = krb5_ret_int32(a1, &v5);
      a2[2] = v5;
      if (!result)
      {
        result = krb5_ret_int32(a1, &v5);
        a2[3] = v5;
      }
    }
  }

  return result;
}

uint64_t krb5_store_address(uint64_t a1, __int16 *a2)
{
  result = krb5_store_int16(a1, *a2);
  if (!result)
  {
    v5 = *(a2 + 1);
    v6 = *(a2 + 2);

    return krb5_store_data(a1, v5, v6);
  }

  return result;
}

uint64_t krb5_ret_address(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  result = krb5_ret_int16(a1, &v5);
  if (!result)
  {
    *a2 = v5;

    return krb5_ret_data(a1, (a2 + 8));
  }

  return result;
}

uint64_t krb5_store_addrs(uint64_t a1, uint64_t a2, __int128 *a3)
{
  LODWORD(v4) = a2;
  result = krb5_store_int32(a1, a2);
  if (!result)
  {
    v4 = v4;
    if (v4)
    {
      while (1)
      {
        v7 = *a3;
        v8 = *(a3 + 2);
        result = krb5_store_address(a1, &v7);
        if (result)
        {
          break;
        }

        a3 = (a3 + 24);
        if (!--v4)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t krb5_ret_addrs(uint64_t a1, unsigned int *a2)
{
  LODWORD(count) = 0;
  result = krb5_ret_int32(a1, &count);
  if (!result)
  {
    v5 = count;
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = v6 / 0x18 >= count;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      *a2 = count;
      v8 = malloc_type_calloc(v5, 0x18uLL, 0x10800404ACF7207uLL);
      *(a2 + 1) = v8;
      v9 = *a2;
      if (v8)
      {
        if (v9)
        {
          v10 = 0;
          v11 = 0;
          while (1)
          {
            result = krb5_ret_address(a1, *(a2 + 1) + v10);
            if (result)
            {
              break;
            }

            ++v11;
            v10 += 24;
            if (v11 >= *a2)
            {
              return 0;
            }
          }
        }

        else
        {
          return 0;
        }
      }

      else if (v9)
      {
        return 12;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 2314790665;
    }
  }

  return result;
}

uint64_t krb5_store_authdata(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  result = krb5_store_int32(a1, a2);
  if (!result)
  {
    if (v4)
    {
      v7 = v4 - 1;
      v8 = (a3 + 16);
      do
      {
        if (krb5_store_int16(a1, *(v8 - 8)))
        {
          break;
        }

        v9 = krb5_store_data(a1, *(v8 - 1), *v8) || v7-- == 0;
        v8 += 3;
      }

      while (!v9);
    }

    return 0;
  }

  return result;
}

uint64_t krb5_ret_authdata(uint64_t a1, uint64_t a2)
{
  v15 = 0;
  result = krb5_ret_int32(a1, &v15);
  if (!result)
  {
    v5 = v15;
    v6 = v15;
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = v7 / 0x18 >= v15;
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      *a2 = v15;
      v9 = malloc_type_calloc(v6, 0x18uLL, 0x10800404ACF7207uLL);
      *(a2 + 8) = v9;
      if (v9)
      {
        v10 = 1;
      }

      else
      {
        v10 = v5 == 0;
      }

      if (v10)
      {
        if (v5 < 1)
        {
          return 0;
        }

        else
        {
          v11 = 0;
          v14 = 0;
          v12 = 24 * v5;
          do
          {
            result = krb5_ret_int16(a1, &v14);
            if (result)
            {
              break;
            }

            v13 = *(a2 + 8);
            *(v13 + v11) = v14;
            result = krb5_ret_data(a1, (v13 + v11 + 8));
            if (result)
            {
              break;
            }

            v11 += 24;
          }

          while (v12 != v11);
        }
      }

      else
      {
        return 12;
      }
    }

    else
    {
      return 2314790665;
    }
  }

  return result;
}

uint64_t krb5_store_creds(uint64_t a1, uint64_t a2)
{
  result = krb5_store_principal(a1, *a2);
  if (!result)
  {
    result = krb5_store_principal(a1, *(a2 + 8));
    if (!result)
    {
      v12 = *(a2 + 16);
      *&v13 = *(a2 + 32);
      result = krb5_store_keyblock(a1, &v12);
      if (!result)
      {
        v5 = *(a2 + 56);
        v12 = *(a2 + 40);
        v13 = v5;
        result = krb5_store_times(a1, &v12);
        if (!result)
        {
          result = krb5_store_int8(a1, *(a2 + 88) != 0);
          if (!result)
          {
            v6 = *(a2 + 136);
            if ((*(a1 + 48) & 0x80) != 0)
            {
              v9 = a1;
            }

            else
            {
              v7 = TicketFlags2int(*(a2 + 136));
              LODWORD(v6) = 0;
              v8 = 32;
              do
              {
                v6 = v7 & 1 | (2 * v6);
                v7 >>= 1;
                --v8;
              }

              while (v8);
              v9 = a1;
            }

            result = krb5_store_int32(v9, v6);
            if (!result)
            {
              result = krb5_store_addrs(a1, *(a2 + 120), *(a2 + 128));
              if (!result)
              {
                result = krb5_store_authdata(a1, *(a2 + 104), *(a2 + 112));
                if (!result)
                {
                  result = krb5_store_data(a1, *(a2 + 72), *(a2 + 80));
                  if (!result)
                  {
                    v10 = *(a2 + 88);
                    v11 = *(a2 + 96);

                    return krb5_store_data(a1, v10, v11);
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t krb5_ret_creds(uint64_t a1, uint64_t a2)
{
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  result = krb5_ret_principal(a1, a2);
  if (!result)
  {
    result = krb5_ret_principal(a1, (a2 + 8));
    if (!result)
    {
      result = krb5_ret_keyblock(a1, a2 + 16);
      if (!result)
      {
        result = krb5_ret_times(a1, (a2 + 40));
        if (!result)
        {
          v11 = 0;
          v5 = (*(a1 + 8))(a1, &v11, 1);
          if (v5 == 1 || (v5 < 0 ? (v6 = __error()) : (v6 = (a1 + 52)), result = *v6, !result))
          {
            v10 = 0;
            result = krb5_ret_int32(a1, &v10);
            if (!result)
            {
              v7 = v10;
              if (v10 >= 0x10000)
              {
                v8 = 0;
                v9 = 32;
                do
                {
                  v8 = v7 & 1 | (2 * v8);
                  v7 >>= 1;
                  --v9;
                }

                while (v9);
              }

              else
              {
                v8 = v10;
              }

              *(a2 + 136) = v8;
              result = krb5_ret_addrs(a1, (a2 + 120));
              if (!result)
              {
                result = krb5_ret_authdata(a1, a2 + 104);
                if (!result)
                {
                  result = krb5_ret_data(a1, (a2 + 72));
                  if (!result)
                  {
                    return krb5_ret_data(a1, (a2 + 88));
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t krb5_store_creds_tag(uint64_t a1, uint64_t a2)
{
  v4 = *a2 != 0;
  if (*a2)
  {
    v5 = 3;
  }

  else
  {
    v5 = 2;
  }

  if (*(a2 + 8))
  {
    v4 = v5;
  }

  v6 = (a2 + 16);
  if (*(a2 + 16))
  {
    v4 |= 4u;
  }

  if (*(a2 + 80))
  {
    v4 |= 8u;
  }

  if (*(a2 + 88))
  {
    v4 |= 0x10u;
  }

  if (*(a2 + 104))
  {
    v4 |= 0x20u;
  }

  if (*(a2 + 120))
  {
    v7 = v4 | 0x40;
  }

  else
  {
    v7 = v4;
  }

  result = krb5_store_int32(a1, v7);
  if (!result)
  {
    if (!*a2 || (result = krb5_store_principal(a1, *a2), !result))
    {
      v9 = *(a2 + 8);
      if (!v9 || (result = krb5_store_principal(a1, v9), !result))
      {
        if (!*v6 || (v16 = *v6, *&v17 = *(v6 + 2), result = krb5_store_keyblock(a1, &v16), !result))
        {
          v10 = *(a2 + 56);
          v16 = *(a2 + 40);
          v17 = v10;
          result = krb5_store_times(a1, &v16);
          if (!result)
          {
            result = krb5_store_int8(a1, *(a2 + 88) != 0);
            if (!result)
            {
              v11 = TicketFlags2int(*(a2 + 136));
              LODWORD(v12) = 0;
              v13 = 32;
              do
              {
                v12 = v11 & 1 | (2 * v12);
                v11 >>= 1;
                --v13;
              }

              while (v13);
              result = krb5_store_int32(a1, v12);
              if (!result)
              {
                if (!*(a2 + 120) || (result = krb5_store_addrs(a1, *(a2 + 120), *(a2 + 128)), !result))
                {
                  if (!*(a2 + 104) || (result = krb5_store_authdata(a1, *(a2 + 104), *(a2 + 112)), !result))
                  {
                    v14 = *(a2 + 80);
                    if (!v14 || (result = krb5_store_data(a1, *(a2 + 72), v14), !result))
                    {
                      v15 = *(a2 + 96);
                      if (!v15)
                      {
                        return 0;
                      }

                      result = krb5_store_data(a1, *(a2 + 88), v15);
                      if (!result)
                      {
                        return 0;
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

  return result;
}

uint64_t krb5_ret_creds_tag(uint64_t a1, uint64_t a2)
{
  v13 = 0;
  v11 = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  result = krb5_ret_int32(a1, &v11);
  if (!result)
  {
    v5 = v11;
    if ((v11 & 1) == 0 || (result = krb5_ret_principal(a1, a2), !result))
    {
      if ((v5 & 2) == 0 || (result = krb5_ret_principal(a1, (a2 + 8)), !result))
      {
        if ((v5 & 4) == 0 || (result = krb5_ret_keyblock(a1, a2 + 16), !result))
        {
          result = krb5_ret_times(a1, (a2 + 40));
          if (!result)
          {
            v6 = (*(a1 + 8))(a1, &v13, 1);
            if (v6 == 1 || (v6 < 0 ? (v7 = __error()) : (v7 = (a1 + 52)), result = *v7, !result))
            {
              v12 = 0;
              result = krb5_ret_int32(a1, &v12);
              if (!result)
              {
                v8 = v12;
                if (v12 >= 0x10000)
                {
                  v9 = 0;
                  v10 = 32;
                  do
                  {
                    v9 = v8 & 1 | (2 * v9);
                    v8 >>= 1;
                    --v10;
                  }

                  while (v10);
                }

                else
                {
                  v9 = v12;
                }

                *(a2 + 136) = v9;
                if ((v5 & 0x40) == 0 || (result = krb5_ret_addrs(a1, (a2 + 120)), !result))
                {
                  if ((v5 & 0x20) == 0 || (result = krb5_ret_authdata(a1, a2 + 104), !result))
                  {
                    if ((v5 & 8) == 0 || (result = krb5_ret_data(a1, (a2 + 72)), !result))
                    {
                      if ((v5 & 0x10) != 0)
                      {
                        return krb5_ret_data(a1, (a2 + 88));
                      }

                      else
                      {
                        return 0;
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

  return result;
}

uint64_t krb5_store_uuid(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16))(a1, a2, 16) == 16)
  {
    return 0;
  }

  else
  {
    return 2314790666;
  }
}

uint64_t krb5_ret_uuid(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 8))(a1, a2, 16) == 16)
  {
    return 0;
  }

  else
  {
    return 2314790666;
  }
}

void krb5_free_ticket(krb5_context a1, krb5_ticket *a2)
{
  sub_25228AAC0(a2);
  krb5_free_principal(a1, *&a2[2].enc_part.kvno);
  krb5_free_principal(a1, *&a2[2].enc_part.ciphertext.magic);
  free(a2);
}

krb5_error_code krb5_copy_ticket(krb5_context a1, const krb5_ticket *a2, krb5_ticket **a3)
{
  *a3 = 0;
  v6 = malloc_type_malloc(0x98uLL, 0x10B0040764A81A9uLL);
  if (v6)
  {
    v7 = v6;
    v8 = sub_25228AAD0(a2, v6);
    if (v8)
    {
      v9 = v8;
    }

    else
    {
      v10 = krb5_copy_principal(a1, *&a2[2].enc_part.kvno, (v7 + 136));
      if (v10)
      {
        v9 = v10;
      }

      else
      {
        v9 = krb5_copy_principal(a1, *&a2[2].enc_part.ciphertext.magic, (v7 + 144));
        if (!v9)
        {
          *a3 = v7;
          return v9;
        }

        krb5_free_principal(a1, *(v7 + 136));
      }

      sub_25228AAC0(v7);
    }

    free(v7);
  }

  else
  {
    v9 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v9;
}

uint64_t _krb5_get_ad(_krb5_context *a1, unsigned int *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v13 = 0;
  krb5_data_zero(a5);
  if (!a2)
  {
    v10 = "No authorization data";
    goto LABEL_6;
  }

  v9 = sub_252280914(a1, a4, a5, &v13, 1, a2, 0);
  if (!v9)
  {
    if (v13)
    {
      return 0;
    }

    v12 = a4;
    v10 = "Have no authorization data of type %d";
LABEL_6:
    v9 = 2;
    krb5_set_error_message(a1, 2, v10, v12);
  }

  return v9;
}

uint64_t sub_252280914(_krb5_context *a1, uint64_t a2, void *a3, _DWORD *a4, uint64_t a5, unsigned int *a6, int a7)
{
  if (a7 > 9)
  {
    v26 = 10;
    v10 = "Authorization data nested deeper then %d levels, stop searching";
LABEL_3:
    v11 = 2;
    v12 = a1;
    v13 = 2;
    goto LABEL_4;
  }

  if (!*a6)
  {
    return 0;
  }

  v16 = a5;
  v18 = 0;
  v19 = 0;
  while (1)
  {
    v20 = *(a6 + 1);
    v21 = *(v20 + v18);
    if (*a4 || v21 != a2)
    {
      break;
    }

    v24 = der_copy_octet_string();
    if (v24)
    {
      v11 = v24;
      v10 = "malloc: out of memory";
      goto LABEL_29;
    }

    *a4 = 1;
LABEL_23:
    ++v19;
    v18 += 24;
    if (v19 >= *a6)
    {
      return 0;
    }
  }

  if (v21 == 5)
  {
    if (v16)
    {
      v10 = "Authorization data contains AND-OR element that is unknown to the application";
      goto LABEL_3;
    }

    goto LABEL_23;
  }

  if (v21 != 1)
  {
    if (v16)
    {
      v26 = *(v20 + v18);
      v10 = "Authorization data contains unknown type (%d) ";
      goto LABEL_3;
    }

    goto LABEL_23;
  }

  v27[0] = 0;
  v27[1] = 0;
  v23 = sub_25228A84C(*(v20 + v18 + 16), *(v20 + v18 + 8), v27, 0);
  if (!v23)
  {
    v11 = sub_252280914(a1, a2, a3, a4, 0, v27, a7 + 1);
    sub_25228A89C(v27);
    if (v11)
    {
      goto LABEL_5;
    }

    goto LABEL_23;
  }

  v11 = v23;
  v26 = v23;
  v10 = "Failed to decode IF_RELEVANT with %d";
LABEL_29:
  v12 = a1;
  v13 = v11;
LABEL_4:
  krb5_set_error_message(v12, v13, v10, a4, a5, a6, v26);
LABEL_5:
  if (*a4)
  {
    krb5_data_free(a3);
    *a4 = 0;
  }

  return v11;
}

uint64_t krb5_ticket_get_authorization_data_type(_krb5_context *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v13 = 0;
  krb5_data_zero(a4);
  v8 = *(a2 + 128);
  if (!v8)
  {
    v10 = "Ticket have not authorization data";
    goto LABEL_6;
  }

  v9 = sub_252280914(a1, a3, a4, &v13, 1, v8, 0);
  if (!v9)
  {
    if (v13)
    {
      return 0;
    }

    v12 = a3;
    v10 = "Ticket have not authorization data of type %d";
LABEL_6:
    v9 = 2;
    krb5_set_error_message(a1, 2, v10, v12);
  }

  return v9;
}

uint64_t sub_252280B7C(uint64_t a1, uint64_t a2, uint64_t a3, const krb5_keyblock *a4, uint64_t a5, krb5_address *const *a6, int a7, char a8, uint64_t a9, uint64_t (*a10)(_krb5_context *a1, const krb5_keyblock *a2, uint64_t a3, uint64_t a4, uint64_t a5), uint64_t a11)
{
  v18 = a10;
  v67 = 0;
  v68 = 0;
  *v66 = 0;
  if (!a10)
  {
    v18 = sub_252281144;
  }

  v19 = v18(a1, a4, a5, a11, a2);
  if (v19)
  {
    goto LABEL_4;
  }

  if ((a8 & 0x20) != 0 && a9 && (*(a2 + 208) & 0x8000) != 0)
  {
    *ctype = 0;
    seed = 0uLL;
    v64 = 0;
    v62 = 0;
    sub_25226B748(a1, 5, "processing enc-ap-rep");
    v23 = *(a2 + 288);
    if (!v23 || (padata = krb5_find_padata(*(v23 + 8), *v23, 149, &v62)) == 0)
    {
      v20 = 2529638953;
      sub_25226B748(a1, 5, "KRB5_PADATA_REQ_ENC_PA_REP missing");
      goto LABEL_5;
    }

    v25 = padata;
    v19 = krb5_crypto_init(a1, a4, 0, ctype);
    if (v19)
    {
      goto LABEL_4;
    }

    v26 = sub_25228AAE4(*(v25 + 2), *(v25 + 1), &seed, 0);
    if (v26)
    {
      v20 = v26;
      krb5_crypto_destroy(a1, *ctype);
      goto LABEL_5;
    }

    v20 = krb5_verify_checksum(a1, ctype[0], 0x38, *(a9 + 8), *a9, &seed, v27);
    krb5_crypto_destroy(a1, *ctype);
    sub_25228AB34(&seed);
    v28 = "in";
    if (!v20)
    {
      v28 = "";
    }

    sub_25226B794(a1, 5, v20, "enc-ap-rep: %svalid", v28);
    if (v20)
    {
      goto LABEL_5;
    }
  }

  *(a3 + 32) = 0;
  *(a3 + 24) = 0;
  *(a3 + 16) = *(a2 + 152);
  v29 = krb5_data_copy((a3 + 24), *(a2 + 168), *(a2 + 160));
  if (v29)
  {
    v20 = v29;
LABEL_23:
    krb5_clear_error_message(a1);
    goto LABEL_5;
  }

  v30 = *(a2 + 16);
  seed = *(a2 + 24);
  v64 = *(a2 + 40);
  v19 = _krb5_principalname2krb5_principal(a1, &v68, &seed, v30);
  if (v19)
  {
    goto LABEL_4;
  }

  if ((a8 & 1) == 0)
  {
    v31 = sub_252281228(a1, a2, *a3, v68, (a3 + 16));
    if (v31)
    {
      goto LABEL_30;
    }
  }

  krb5_free_principal(a1, *a3);
  *a3 = v68;
  v32 = *(a2 + 248);
  seed = *(a2 + 256);
  v64 = *(a2 + 272);
  v19 = _krb5_principalname2krb5_principal(a1, &v68, &seed, v32);
  if (v19)
  {
LABEL_4:
    v20 = v19;
LABEL_5:
    sub_25226B748(a1, 5, "_krb5_extract_ticket failed with %d", v20);
    goto LABEL_6;
  }

  if ((a8 & 2) == 0)
  {
    v31 = sub_2522814C4(a1, a2, a8, *(a3 + 8), v68, (a3 + 16));
    if (v31)
    {
LABEL_30:
      v20 = v31;
      krb5_free_principal(a1, v68);
      goto LABEL_5;
    }
  }

  krb5_free_principal(a1, *(a3 + 8));
  v33 = v68;
  *(a3 + 8) = v68;
  if ((a8 & 4) != 0)
  {
    realm = krb5_principal_get_realm(a1, v33);
    v44 = krb5_principal_get_realm(a1, *a3);
    v45 = *(a2 + 248);
    if (strcmp(v45, realm) || strcmp(v45, v44))
    {
      v20 = 2529638953;
      krb5_set_error_message(a1, -1765328343, "server realm (%s) doesn't match client's (%s)", realm, v44);
      goto LABEL_23;
    }
  }

  if (*(a2 + 192) != a7)
  {
    v20 = 2529638953;
    v46 = "malloc: out of memory";
LABEL_47:
    v47 = a1;
    v48 = -1765328343;
LABEL_58:
    krb5_set_error_message(v47, v48, v46, v59, v60, v61);
    goto LABEL_5;
  }

  krb5_timeofday(a1, v66);
  if ((a8 & 0x10) != 0 && (*(a2 + 208) & 0x200) != 0 && !*(a1 + 108))
  {
    v60 = "kdc_timesync";
    v61 = 0;
    if (krb5_config_get_BOOL(a1, 0, v34, v35, v36, v37, v38, v39, "libdefaults"))
    {
      *(a1 + 108) = *(a2 + 216) - v66[0];
      krb5_timeofday(a1, v66);
    }
  }

  v40 = *(a2 + 224);
  if (!v40)
  {
    v40 = (a2 + 216);
  }

  v41 = *v40;
  v42 = *(a3 + 48);
  if (!v42)
  {
    if (krb5_time_abs(v41, *v66) > *(a1 + 80))
    {
      krb5_time_abs(v41, *v66);
      v20 = 2529638949;
      krb5_set_error_message(a1, -1765328347, "time skew (%ld) larger than max (%d)");
      goto LABEL_5;
    }

    v42 = *(a3 + 48);
  }

  if (v42 && v41 != v42)
  {
    v20 = 2529638953;
    krb5_clear_error_message(a1);
    v46 = "startime is not the requested startime";
LABEL_57:
    v47 = a1;
    v48 = 0;
    goto LABEL_58;
  }

  *(a3 + 48) = v41;
  v49 = *(a2 + 240);
  if (v49)
  {
    v49 = *v49;
  }

  v50 = *(a3 + 64);
  if (v50 && v49 > v50)
  {
    v20 = 2529638953;
    krb5_clear_error_message(a1);
    v46 = "renewtime is past the requested renewtime";
    goto LABEL_57;
  }

  *(a3 + 64) = v49;
  *(a3 + 40) = *(a2 + 216);
  v51 = *(a3 + 56);
  v52 = *(a2 + 232);
  if (v51 && v52 > v51)
  {
    v20 = 2529638953;
    krb5_clear_error_message(a1);
    v46 = "endtime is past the requested endtime";
    goto LABEL_47;
  }

  *(a3 + 56) = v52;
  v53 = *(a2 + 280);
  if (v53)
  {
    v54 = (a3 + 120);
    v55 = a1;
LABEL_67:
    krb5_copy_addresses(v55, v53, v54);
    goto LABEL_68;
  }

  if (a6)
  {
    v54 = (a3 + 120);
    v55 = a1;
    v53 = a6;
    goto LABEL_67;
  }

  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
LABEL_68:
  *(a3 + 136) = *(a2 + 208);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  v56 = sub_25228AA6C(a2 + 48);
  *(a3 + 72) = v56;
  v57 = malloc_type_malloc(v56, 0x34071F5BuLL);
  *(a3 + 80) = v57;
  if (!v57)
  {
    v20 = 12;
    goto LABEL_5;
  }

  v58 = sub_25228AA4C(v57 + *(a3 + 72) - 1, *(a3 + 72), a2 + 48, &v67);
  if (v58)
  {
    v20 = v58;
    free(*(a3 + 80));
    *(a3 + 80) = 0;
    goto LABEL_5;
  }

  if (*(a3 + 72) != v67)
  {
    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  v20 = 0;
  *(a3 + 88) = 0;
  *(a3 + 96) = 0;
LABEL_6:
  bzero(*(a2 + 168), *(a2 + 160));
  return v20;
}

uint64_t sub_252281144(_krb5_context *a1, const krb5_keyblock *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = 0;
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v8 = krb5_crypto_init(a1, a2, 0, &v11);
  if (v8)
  {
    return v8;
  }

  v9 = krb5_decrypt_EncryptedData(a1, v11, a3, a5 + 120, &v13);
  krb5_crypto_destroy(a1, v11);
  if (!v9)
  {
    if (sub_25228AF9C(v14, v13, a5 + 152, &v12))
    {
      v9 = sub_25228AFCC(v14, v13, a5 + 152, &v12);
      krb5_data_free(&v13);
      if (v9)
      {
        krb5_set_error_message(a1, v9, "Failed to decode encpart in ticket");
      }
    }

    else
    {
      krb5_data_free(&v13);
      return 0;
    }
  }

  return v9;
}

uint64_t sub_252281228(krb5_context a1, uint64_t a2, krb5_const_principal a3, krb5_const_principal a4, const krb5_keyblock *a5)
{
  v31 = 0;
  v30 = 0u;
  memset(v29, 0, sizeof(v29));
  v27 = 0;
  *ctype = 0;
  v26 = 0;
  v9 = *(a2 + 8);
  if (v9)
  {
    padata = krb5_find_padata(*(v9 + 8), *v9, 133, &v26);
    if (padata)
    {
      v12 = sub_25228B4AC(*(padata + 2), *(padata + 1), v29, &v27);
      if (v12)
      {
        v13 = v12;
        data = a3->data;
        v14 = "Failed to decode ClientCanonicalized from realm %s";
        v15 = a1;
        v16 = v13;
LABEL_5:
        krb5_set_error_message(v15, v16, v14, data);
        return v13;
      }

      v18 = sub_25228B49C(v29);
      v19 = malloc_type_malloc(v18, 0x84CD2CC0uLL);
      if (!v19)
      {
        v13 = 12;
        goto LABEL_17;
      }

      v20 = v19;
      v21 = sub_25228B47C(v19 + v18 - 1, v18, v29, &v27);
      if (v21)
      {
        goto LABEL_15;
      }

      if (v18 != v27)
      {
        krb5_abortx(a1, "internal asn.1 error");
      }

      v21 = krb5_crypto_init(a1, a5, 0, ctype);
      if (v21)
      {
LABEL_15:
        v13 = v21;
        free(v20);
LABEL_17:
        sub_25228B4CC(v29);
        return v13;
      }

      v13 = krb5_verify_checksum(a1, ctype[0], 0xFFFFFFE9, v20, v18, &v30, v22);
      krb5_crypto_destroy(a1, *ctype);
      free(v20);
      if (v13)
      {
        krb5_set_error_message(a1, v13, "Failed to verify client canonicalized data from realm %s", a3->data);
        goto LABEL_17;
      }

      if (sub_2522756DC(a1, a3, v29))
      {
        if (sub_2522756DC(a1, a4, &v29[1] + 8))
        {
          return 0;
        }

        v13 = 2529639058;
        sub_25228B4CC(v29);
        v14 = "Mapped name doesn't match in client referral";
      }

      else
      {
        v13 = 2529639058;
        sub_25228B4CC(v29);
        v14 = "Requested name doesn't match in client referral";
      }

      v15 = a1;
      v16 = -1765328238;
      goto LABEL_5;
    }
  }

  if (krb5_principal_compare(a1, a3, a4) || (*(a2 + 209) & 0x80) != 0)
  {
    return 0;
  }

  v25 = 0;
  krb5_unparse_name(a1, a4, &v25);
  v17 = v25;
  if (!v25)
  {
    v17 = "<unknown name>";
  }

  v13 = 2529638953;
  krb5_set_error_message(a1, -1765328343, "Not same client principal returned (%s)as requested", v17);
  krb5_xfree(v25);
  return v13;
}

uint64_t sub_2522814C4(krb5_context a1, uint64_t a2, char a3, krb5_const_principal a4, krb5_const_principal a5, const krb5_keyblock *a6)
{
  v23 = 0;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v18 = 0;
  v9 = *(a2 + 8);
  if (!v9 || (padata = krb5_find_padata(*(v9 + 8), *v9, 25, &v18)) == 0)
  {
    if (krb5_principal_compare(a1, a4, a5) != 1 && krb5_realm_compare(a1, a4, a5) != 1 && !krb5_principal_is_krbtgt(a1, a5))
    {
      v15 = 2529638953;
      krb5_set_error_message(a1, -1765328343, "Not same server principal returned as requested");
      return v15;
    }

    return 0;
  }

  v13 = padata;
  memset(v22, 0, sizeof(v22));
  v24 = 0u;
  v25 = 0u;
  v14 = sub_25228A958(*(padata + 2), *(padata + 1), v22, &v21);
  if (v14)
  {
    return v14;
  }

  if (v21 != *(v13 + 1))
  {
    v15 = 2529638953;
    sub_25228A9A8(v22);
    krb5_set_error_message(a1, -1765328343, "Referral EncryptedData wrong for realm %s");
    return v15;
  }

  v16 = krb5_crypto_init(a1, a6, 0, &v23);
  if (v16)
  {
    v15 = v16;
    sub_25228A9A8(v22);
    return v15;
  }

  v15 = krb5_decrypt_EncryptedData(a1, v23, 26, v22, &v19);
  sub_25228A9A8(v22);
  krb5_crypto_destroy(a1, v23);
  if (!v15)
  {
    v15 = sub_25228B4DC(v20, v19, &v24, &v21);
    krb5_data_free(&v19);
    if (!v15)
    {
      if (strcmp(a4->data, a5->data))
      {
        v15 = 2529638953;
        sub_25228B4FC(&v24);
        krb5_set_error_message(a1, -1765328343, "server ref realm mismatch, requested realm %s got back %s");
        return v15;
      }

      if (krb5_principal_is_krbtgt(a1, a5))
      {
        if (!v24 || strcmp(*v24, *(a5->realm.data + 1)))
        {
          v15 = 2529638953;
          sub_25228B4FC(&v24);
          krb5_set_error_message(a1, -1765328343, "tgt returned with wrong ref");
          return v15;
        }
      }

      else if (!krb5_principal_compare(a1, a5, a4))
      {
        v15 = 2529638953;
        sub_25228B4FC(&v24);
        krb5_set_error_message(a1, -1765328343, "req princ no same as returned");
        return v15;
      }

      if (v25)
      {
        if (!sub_2522756DC(a1, a4, v25))
        {
          v15 = 2529638953;
          sub_25228B4FC(&v24);
          krb5_set_error_message(a1, -1765328343, "referred principal not same as requested");
          return v15;
        }
      }

      else if ((a3 & 8) != 0)
      {
        v15 = 2529638953;
        sub_25228B4FC(&v24);
        krb5_set_error_message(a1, -1765328343, "Requested principal missing on AS-REQ");
        return v15;
      }

      sub_25228B4FC(&v24);
      return 0;
    }
  }

  return v15;
}

krb5_error_code krb5_set_real_time(krb5_context a1, krb5_timestamp a2, krb5_int32 a3)
{
  v10.tv_sec = 0;
  *&v10.tv_usec = 0;
  gettimeofday(&v10, 0);
  tv_usec = v10.tv_usec;
  v7 = a2 - LODWORD(v10.tv_sec);
  *(a1 + 27) = a2 - LODWORD(v10.tv_sec);
  if (a3 < 0)
  {
    goto LABEL_4;
  }

  v8 = a3 - tv_usec;
  *(a1 + 28) = v8;
  if (v8 < 0)
  {
    tv_usec = v8 + 1000000;
    *(a1 + 27) = v7 - 1;
LABEL_4:
    *(a1 + 28) = tv_usec;
  }

  return 0;
}

krb5_error_code krb5_timeofday(krb5_context a1, krb5_timestamp *a2)
{
  v4 = time(0);
  *a2 = v4;
  if (a1)
  {
    *a2 = v4 + *(a1 + 27);
  }

  return 0;
}

krb5_error_code krb5_us_timeofday(krb5_context a1, krb5_timestamp *a2, krb5_int32 *a3)
{
  v8.tv_sec = 0;
  *&v8.tv_usec = 0;
  gettimeofday(&v8, 0);
  tv_sec = v8.tv_sec;
  *a2 = v8.tv_sec;
  if (a1)
  {
    *a2 = tv_sec + *(a1 + 27);
  }

  *a3 = v8.tv_usec;
  return 0;
}

uint64_t krb5_format_time(uint64_t a1, time_t a2, char *a3, size_t a4, int a5)
{
  v12 = a2;
  if (*(a1 + 200))
  {
    v9 = gmtime(&v12);
  }

  else
  {
    v9 = localtime(&v12);
  }

  if (!v9)
  {
    goto LABEL_8;
  }

  v10 = 192;
  if (!a5)
  {
    v10 = 272;
  }

  if (!strftime(a3, a4, *(a1 + v10), v9))
  {
LABEL_8:
    snprintf(a3, a4, "%ld", v12);
  }

  return 0;
}

krb5_error_code krb5_string_to_deltat(char *a1, krb5_deltat *a2)
{
  v3 = parse_time(a1, "s");
  *a2 = v3;
  if (v3 == -1)
  {
    return -1765328136;
  }

  else
  {
    return 0;
  }
}

uint64_t krb5_time_abs(uint64_t a1, uint64_t a2)
{
  if (a1 - a2 >= 0)
  {
    return a1 - a2;
  }

  else
  {
    return a2 - a1;
  }
}

uint64_t krb5_domain_x500_decode(_krb5_context *a1, uint64_t a2, char *a3, void *a4, _DWORD *a5, char *a6, const char *a7)
{
  v8 = a2;
  if (!a2)
  {
    *a4 = 0;
    *a5 = 0;
    return v8;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = a3;
  do
  {
    if (v13)
    {
LABEL_4:
      v13 = 0;
      goto LABEL_5;
    }

    v15 = &a3[v12];
    v16 = a3[v12];
    if (v16 == 92)
    {
      v13 = 1;
    }

    else
    {
      if (v16 != 44)
      {
        goto LABEL_4;
      }

      v17 = malloc_type_malloc(v15 - v14 + 1, 0xC1BAF61FuLL);
      if (!v17)
      {
        v67 = v11;
        goto LABEL_31;
      }

      v18 = v17;
      memcpy(v17, v14, v15 - v14);
      v18[v15 - v14] = 0;
      v19 = sub_25228228C(v18);
      if (!v19)
      {
        v67 = v11;
        goto LABEL_30;
      }

      if (v11)
      {
        v20 = v11;
        do
        {
          v21 = v20;
          v20 = v20[2];
        }

        while (v20);
        v22 = v19;
      }

      else
      {
        v22 = 0;
        v21 = v19;
        v11 = v19;
      }

      v13 = 0;
      v21[2] = v22;
      v14 = v15 + 1;
    }

LABEL_5:
    ++v12;
  }

  while (v12 != v8);
  v67 = v11;
  v23 = (&a3[v8] - v14);
  v24 = malloc_type_malloc((v23 + 1), 0x62654BEFuLL);
  if (!v24)
  {
    free(v11);
    goto LABEL_31;
  }

  v25 = v24;
  memcpy(v24, v14, v23);
  v23[v25] = 0;
  v26 = sub_25228228C(v25);
  if (v26)
  {
    if (v11)
    {
      v27 = v11;
      do
      {
        v28 = v27;
        v27 = v27[2];
      }

      while (v27);
      v29 = v26;
      v26 = v11;
    }

    else
    {
      v29 = 0;
      v28 = v26;
      v11 = v26;
    }

    v28[2] = v29;
    v67 = v26;
    goto LABEL_33;
  }

LABEL_30:
  sub_252282388(v11);
LABEL_31:
  v30 = krb5_enomem(a1);
  if (v30)
  {
    return v30;
  }

LABEL_33:
  if (!v11)
  {
    *a5 = 0;
LABEL_84:
    v58 = 1;
    goto LABEL_85;
  }

  v31 = 0;
  v32 = v11;
  while (2)
  {
    if ((v32[1] & 4) == 0)
    {
      if ((v32[1] & 2) != 0 && (v32[1] & 1) == 0 && v31)
      {
        v33 = strlen(*v32);
        v34 = v33 + strlen(v31);
        v35 = malloc_type_malloc(v34 + 1, 0x143C2095uLL);
        if (!v35)
        {
          break;
        }

        v36 = v35;
        strlcpy(v35, v31, v34 + 1);
        strlcat(v36, *v32, v34 + 1);
        free(*v32);
        *v32 = v36;
      }

      goto LABEL_45;
    }

    if (!v31)
    {
      v31 = a6;
    }

    v37 = strlen(*v32);
    v38 = v37 + strlen(v31);
    v39 = malloc_type_realloc(*v32, v38 + 1, 0xFFCD1ADFuLL);
    if (v39)
    {
      *v32 = v39;
      strlcat(v39, v31, v38 + 1);
LABEL_45:
      v31 = *v32;
      v32 = v32[2];
      if (!v32)
      {
        goto LABEL_46;
      }

      continue;
    }

    break;
  }

  sub_252282388(v11);
  v30 = krb5_enomem(a1);
  if (v30)
  {
    return v30;
  }

LABEL_46:
  v40 = v11;
  do
  {
    if (!**v40)
    {
      while (1)
      {
        v41 = v40;
        v40 = v40[2];
        if (!v40)
        {
          break;
        }

        v42 = *v40;
        if (**v40)
        {
          goto LABEL_53;
        }
      }

      v42 = a7;
LABEL_53:
      v43 = strlen(a6);
      v44 = strlen(v42);
      if (v43 >= v44)
      {
        v45 = a6;
      }

      else
      {
        v45 = v42;
      }

      if (v43 >= v44)
      {
        a6 = v42;
      }

      v46 = &v45[strlen(v45)];
      v47 = strlen(a6);
      if (!strcmp(&v46[-v47], a6))
      {
        while (1)
        {
          v52 = strchr(v45, 46);
          if (!v52)
          {
            break;
          }

          v45 = v52 + 1;
          if (!strcmp(v52 + 1, a6))
          {
            goto LABEL_74;
          }

          v53 = malloc_type_calloc(1uLL, 0x18uLL, 0x10300401532B4FEuLL);
          if (!v53)
          {
            goto LABEL_73;
          }

          v50 = v53;
          v53[2] = v41[2];
          v41[2] = v53;
          v54 = strdup(v45);
          *v50 = v54;
          if (!v54)
          {
LABEL_72:
            v41[2] = v50[2];
            free(v50);
LABEL_73:
            v55 = krb5_enomem(a1);
            if (!v55)
            {
              goto LABEL_74;
            }

            v8 = v55;
            goto LABEL_96;
          }
        }
      }

      else if (!strncmp(v45, a6, v47))
      {
        while (1)
        {
          if (v46 < v45 || *v46 == 47)
          {
            v48 = v46 - v45;
            if (v46 == v45)
            {
              v8 = 2529638924;
              goto LABEL_96;
            }

            if (!strncmp(a6, v45, v46 - v45))
            {
              goto LABEL_74;
            }

            v49 = malloc_type_calloc(1uLL, 0x18uLL, 0x10300401532B4FEuLL);
            if (!v49)
            {
              goto LABEL_73;
            }

            v50 = v49;
            v49[2] = v41[2];
            v41[2] = v49;
            v51 = malloc_type_malloc(v48 + 1, 0x87776961uLL);
            *v50 = v51;
            if (!v51)
            {
              goto LABEL_72;
            }

            memcpy(v51, v45, v46 - v45);
            (*v50)[v48] = 0;
          }

          --v46;
        }
      }

      v8 = 2529638924;
      krb5_clear_error_message(a1);
LABEL_96:
      sub_252282388(v11);
      return v8;
    }

    v41 = v40;
LABEL_74:
    a6 = *v41;
    v40 = v41[2];
  }

  while (v40);
  v56 = v67;
  *a5 = 0;
  if (!v56)
  {
    goto LABEL_84;
  }

  v57 = &v67;
  do
  {
    if (**v56)
    {
      ++*a5;
      v57 = (v56 + 16);
    }

    else
    {
      *v57 = *(v56 + 2);
      free(*v56);
      free(v56);
    }

    v56 = *v57;
  }

  while (*v57);
  v58 = *a5 + 1;
  if (v58 >> 29)
  {
    return 34;
  }

LABEL_85:
  v59 = malloc_type_malloc(8 * v58, 0x10040436913F5uLL);
  if (v59)
  {
    v60 = v59;
    *a4 = v59;
    v61 = v67;
    if (v67)
    {
      do
      {
        *v60++ = *v61;
        v62 = v61[2];
        free(v61);
        v61 = v62;
      }

      while (v62);
    }

    return 0;
  }

  else
  {

    return krb5_enomem(a1);
  }
}

uint64_t krb5_domain_x500_encode(const char **a1, unsigned int a2, size_t *a3)
{
  krb5_data_zero(a3);
  if (!a2)
  {
    return 0;
  }

  v6 = 0;
  v7 = a2;
  v8 = a2;
  v9 = a1;
  do
  {
    v10 = *v9++;
    v11 = v6 + strlen(v10);
    if (*v10 == 47)
    {
      v6 = v11 + 1;
    }

    else
    {
      v6 = v11;
    }

    --v8;
  }

  while (v8);
  v12 = v6 + a2;
  v13 = (v6 + a2);
  v14 = malloc_type_malloc(v12, 0x139E8009uLL);
  if (!v14)
  {
    return 12;
  }

  v15 = v14;
  v16 = 0;
  *v14 = 0;
  do
  {
    if (v16 * 8)
    {
      strlcat(v15, ",", v13);
    }

    v17 = a1[v16];
    if (*v17 == 47)
    {
      strlcat(v15, " ", v13);
      v17 = a1[v16];
    }

    strlcat(v15, v17, v13);
    ++v16;
  }

  while (v7 != v16);
  a3[1] = v15;
  v18 = strlen(v15);
  result = 0;
  *a3 = v18;
  return result;
}

uint64_t krb5_check_transited(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  if (a5)
  {
    strings = krb5_config_get_strings(a1, 0, a3, a4, a5, a6, a7, a8, "capaths");
    v13 = 0;
LABEL_3:
    if (strings)
    {
      v14 = strings;
      while (1)
      {
        v15 = *v14;
        if (!*v14)
        {
          break;
        }

        ++v14;
        if (!strcmp(v15, *(a4 + 8 * v13)))
        {
          if (++v13 != v8)
          {
            goto LABEL_3;
          }

          krb5_config_free_strings(strings);
          return 0;
        }
      }
    }

    else
    {
      v13 = 0;
    }

    v8 = 2529638955;
    krb5_config_free_strings(strings);
    krb5_set_error_message(a1, -1765328341, "no transit allowed through realm %s", *(a4 + 8 * v13));
    if (a6)
    {
      *a6 = v13;
    }
  }

  return v8;
}

uint64_t krb5_check_transited_realms(_krb5_context *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = a3;
  strings = krb5_config_get_strings(a1, 0, a3, a4, a5, a6, a7, a8, "libdefaults");
  if (!strings)
  {
    return 0;
  }

  v12 = strings;
  v13 = 0;
  if (v9)
  {
    v14 = 0;
    v15 = v9;
    do
    {
      v16 = *v12;
      if (*v12)
      {
        v17 = *(a2 + 8 * v14);
        v18 = (v12 + 1);
        while (strcmp(v16, v17))
        {
          v19 = *v18++;
          v16 = v19;
          if (!v19)
          {
            goto LABEL_11;
          }
        }

        krb5_set_error_message(a1, -1765328341, "no transit allowed through realm %s", v16);
        v13 = 2529638955;
        if (a4)
        {
          *a4 = v14;
        }
      }

LABEL_11:
      ++v14;
    }

    while (v14 != v15);
  }

  krb5_config_free_strings(v12);
  return v13;
}

unsigned __int8 **sub_25228228C(unsigned __int8 *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x18uLL, 0x10300401532B4FEuLL);
  v3 = v2;
  if (v2)
  {
    *v2 = a1;
    v4 = *a1;
    if (*a1)
    {
      v5 = 0;
      v6 = a1;
      do
      {
        v7 = *v2;
        if (v4 == 32 && v6 == v7)
        {
          *(v2 + 8) |= 1u;
        }

        else
        {
          if (v4 == 47 && a1 == v7)
          {
            *(v2 + 8) |= 2u;
          }

          v8 = *v6;
          if (v5)
          {
            goto LABEL_17;
          }

          if (v8 != 92)
          {
            if (v8 == 46)
            {
              if (v6[1])
              {
                LOBYTE(v8) = 46;
              }

              else
              {
                *(v2 + 8) |= 4u;
                LOBYTE(v8) = *v6;
              }
            }

LABEL_17:
            v5 = 0;
            *a1++ = v8;
            goto LABEL_18;
          }

          v5 = 1;
        }

LABEL_18:
        v9 = *++v6;
        v4 = v9;
      }

      while (v9);
    }

    *a1 = 0;
  }

  else
  {
    free(a1);
  }

  return v3;
}

void sub_252282388(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    do
    {
      v2 = *(v1 + 16);
      free(*v1);
      free(v1);
      v1 = v2;
    }

    while (v2);
  }
}

krb5_error_code krb5_verify_init_creds(krb5_context context, krb5_creds *creds, krb5_principal ap_req_server, krb5_keytab ap_req_keytab, krb5_ccache *ccache, krb5_verify_init_creds_opt *k5_vic_options)
{
  v36 = 0;
  id = 0;
  v34 = 0;
  v35 = 0;
  v12 = "host";
  v33 = 0;
  if (k5_vic_options && *&k5_vic_options[1])
  {
    v12 = k5_vic_options[1];
  }

  *&v38.magic = 0;
  v38.data = 0;
  krb5_data_zero(&v38);
  if (ap_req_server)
  {
    v34 = ap_req_server;
  }

  else
  {
    v22 = krb5_sname_to_principal(context, 0, v12, 3, &v34);
    if (v22)
    {
      v13 = v22;
      if (sub_25228269C(context, k5_vic_options, v23, v24, v25, v26, v27, v28))
      {
        v13 = 0;
      }

      goto LABEL_24;
    }
  }

  if (ap_req_keytab)
  {
    v33 = ap_req_keytab;
  }

  else
  {
    v15 = krb5_kt_default(context, &v33);
    if (v15)
    {
      goto LABEL_23;
    }
  }

  if (ccache && *ccache)
  {
    id = *ccache;
  }

  else
  {
    v15 = krb5_cc_new_unique(context, krb5_cc_type_memory[0], 0, &id);
    if (v15)
    {
      goto LABEL_23;
    }

    v15 = krb5_cc_initialize(context, id, *&creds->magic);
    if (v15)
    {
      goto LABEL_23;
    }

    v15 = krb5_cc_store_cred(context, id, creds);
    if (v15)
    {
      goto LABEL_23;
    }
  }

  if (krb5_principal_compare(context, v34, creds->client))
  {
LABEL_12:
    v13 = krb5_mk_req_extended(context, &v35, 0, 0, creds, &v38);
    krb5_auth_con_free(context, v35);
    v35 = 0;
    if (v13)
    {
      goto LABEL_26;
    }

    v14 = -1765328203;
    v15 = krb5_rd_req(context, &v35, &v38, v34, v33, 0, 0);
    if (v15 == -1765328203)
    {
      goto LABEL_46;
    }

LABEL_23:
    v13 = v15;
    goto LABEL_24;
  }

  v32 = 0u;
  memset(&v31[16], 0, 112);
  *v31 = *&creds->magic;
  *&v31[8] = v34;
  credentials = krb5_get_credentials(context, 0, id, v31, &v36);
  if (!credentials)
  {
    creds = v36;
    goto LABEL_12;
  }

  v14 = credentials;
LABEL_46:
  if (sub_25228269C(context, k5_vic_options, v16, v17, v18, v19, v20, v21))
  {
    v13 = 0;
  }

  else
  {
    v13 = v14;
  }

LABEL_24:
  if (v35)
  {
    krb5_auth_con_free(context, v35);
  }

LABEL_26:
  krb5_data_free(&v38);
  if (v36)
  {
    krb5_free_creds(context, v36);
  }

  if (!ap_req_server && v34)
  {
    krb5_free_principal(context, v34);
  }

  if (!ap_req_keytab && v33)
  {
    krb5_kt_close(context, v33);
  }

  if (!id)
  {
    goto LABEL_39;
  }

  if (!ccache)
  {
    goto LABEL_38;
  }

  if (v13)
  {
    if (*ccache)
    {
      return v13;
    }

LABEL_38:
    krb5_cc_destroy(context, id);
  }

LABEL_39:
  if (ccache && !v13 && !*ccache)
  {
    *ccache = id;
  }

  return v13;
}

krb5_error_code krb5_get_validated_creds(krb5_context context, krb5_creds *creds, krb5_principal client, krb5_ccache ccache, char *in_tkt_service)
{
  if (krb5_principal_compare(context, *&creds->magic, client) == 1)
  {
    ap_req_server = 0;
    inited = krb5_sname_to_principal(context, 0, in_tkt_service, 3, &ap_req_server);
    if (!inited)
    {
      k5_vic_options = 0;
      v12 = 0;
      inited = krb5_verify_init_creds(context, creds, ap_req_server, 0, 0, &k5_vic_options);
      krb5_free_principal(context, ap_req_server);
    }
  }

  else
  {
    inited = -1765328238;
    krb5_set_error_message(context, -1765328238, "Validation credentials and client doesn't match");
  }

  return inited;
}

double krb5_verify_opt_init(uint64_t a1)
{
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 24) = 1;
  *(a1 + 32) = "host";
  *(a1 + 48) = krb5_prompter_posix;
  return result;
}

uint64_t krb5_verify_opt_alloc(_krb5_context *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F0040986054B4uLL);
  *a2 = v4;
  if (v4)
  {
    v5 = 0;
    v4[2] = 0u;
    v4[3] = 0u;
    *v4 = 0u;
    v4[1] = 0u;
    *(v4 + 6) = 1;
    *(v4 + 4) = "host";
    *(v4 + 6) = krb5_prompter_posix;
  }

  else
  {
    v5 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v5;
}

uint64_t krb5_verify_opt_set_prompter(uint64_t result, uint64_t a2, uint64_t a3)
{
  *(result + 48) = a2;
  *(result + 56) = a3;
  return result;
}

uint64_t krb5_verify_user_opt(const __CFArray **a1, krb5_principal_data *a2, char *a3, _BYTE *a4)
{
  if (a4 && (*a4 & 1) != 0)
  {
    v16 = 0;
    default_realms = krb5_get_default_realms(a1, &v16);
    if (!default_realms)
    {
      v10 = v16;
      v11 = *v16;
      if (*v16)
      {
        v12 = v16 + 1;
        do
        {
          v13 = krb5_principal_set_realm(a1, a2, v11);
          if (v13)
          {
            break;
          }

          v13 = sub_2522829E0(a1, a2, a3, a4);
          v14 = *v12++;
          v11 = v14;
        }

        while (v14 && v13 != 0);
        default_realms = v13;
        v10 = v16;
      }

      else
      {
        default_realms = 2529639136;
      }

      krb5_free_host_realm(a1, v10);
    }

    return default_realms;
  }

  else
  {

    return sub_2522829E0(a1, a2, a3, a4);
  }
}

uint64_t sub_2522829E0(_krb5_context *a1, krb5_principal_data *a2, char *a3, uint64_t a4)
{
  opt = 0;
  memset(creds, 0, sizeof(creds));
  init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(a1, &opt);
  if (!init_creds_opt_alloc)
  {
    realm = krb5_principal_get_realm(a1, a2);
    krb5_get_init_creds_opt_set_default_flags(a1, 0, realm, opt, v10, v11, v12, v13);
    init_creds_opt_alloc = krb5_get_init_creds_password(a1, creds, a2, a3, *(a4 + 48), *(a4 + 56), 0, 0, opt);
    if (init_creds_opt_alloc)
    {
LABEL_15:
      krb5_get_init_creds_opt_free(a1, opt);
      return init_creds_opt_alloc;
    }

    v15 = *(a4 + 8);
    v14 = *(a4 + 16);
    v16 = *(a4 + 24);
    v17 = *(a4 + 40);
    if (*(a4 + 32))
    {
      v18 = *(a4 + 32);
    }

    else
    {
      v18 = "host";
    }

    k5_vic_options = 0;
    v26 = 0;
    v24 = 0;
    krb5_verify_init_creds_opt_init(&k5_vic_options);
    krb5_verify_init_creds_opt_set_ap_req_nofail(&k5_vic_options, v16);
    sub_2522823E4(&k5_vic_options, v18);
    inited = krb5_verify_init_creds(a1, creds, v17, v14, 0, &k5_vic_options);
    if (inited)
    {
      goto LABEL_7;
    }

    if (v15)
    {
      v24 = v15;
      v20 = v15;
    }

    else
    {
      inited = krb5_cc_default(a1, &v24);
      if (inited)
      {
LABEL_7:
        init_creds_opt_alloc = inited;
LABEL_14:
        krb5_free_cred_contents(a1, creds);
        goto LABEL_15;
      }

      v20 = v24;
    }

    init_creds_opt_alloc = krb5_cc_initialize(a1, v20, a2);
    if (!init_creds_opt_alloc)
    {
      init_creds_opt_alloc = krb5_cc_store_cred(a1, v24, creds);
    }

    if (!v15)
    {
      krb5_cc_close(a1, v24);
    }

    goto LABEL_14;
  }

  return init_creds_opt_alloc;
}

uint64_t krb5_verify_user(const __CFArray **a1, krb5_principal_data *a2, uint64_t a3, char *a4, int a5, unint64_t a6)
{
  v7[0] = 0;
  v8 = 0u;
  v11 = 0;
  v7[1] = a3;
  DWORD2(v8) = a5;
  v10 = krb5_prompter_posix;
  v9 = a6;
  return krb5_verify_user_opt(a1, a2, a4, v7);
}

uint64_t krb5_verify_user_lrealm(const __CFArray **a1, krb5_principal_data *a2, uint64_t a3, char *a4, int a5, unint64_t a6)
{
  v8 = 0u;
  v11 = 0;
  v7[1] = a3;
  DWORD2(v8) = a5;
  v10 = krb5_prompter_posix;
  v9 = a6;
  v7[0] = 1;
  return krb5_verify_user_opt(a1, a2, a4, v7);
}

uint64_t sub_252282C58(_krb5_context *a1, int a2, krb5_error_code a3, int a4, void (*a5)(char *), const char *a6, va_list a7)
{
  *&v27[3] = 0;
  *v27 = 0;
  v24 = 0;
  v25 = 0;
  v26 = 0;
  if (!a6)
  {
    v16 = &v26;
    goto LABEL_8;
  }

  __strlcat_chk(v27, "%s", v23);
  if (a2)
  {
    __strlcat_chk(v27, ": ", 7, 7);
  }

  v14 = vasprintf(&v24, a6, a7);
  result = 12;
  if ((v14 & 0x80000000) == 0 && v24)
  {
    v26 = v24;
    v16 = &v25;
LABEL_8:
    v17 = 0;
    if (a1 && a2)
    {
      __strlcat_chk(v27, "%s", v23);
      error_message = krb5_get_error_message(a1, a3);
      v17 = error_message;
      v19 = "<unknown error>";
      if (error_message)
      {
        v19 = error_message;
      }

      *v16 = v19;
    }

    if (a5)
    {
      a5(v27);
LABEL_18:
      free(v24);
      krb5_free_error_message(a1, v17);
      return 0;
    }

    if (a1)
    {
      v20 = *(a1 + 19);
      v22 = v25;
      v21 = v26;
      if (v20)
      {
        krb5_log(a1, v20, a4, v27, v26, v25);
        goto LABEL_18;
      }
    }

    else
    {
      v22 = v25;
      v21 = v26;
    }

    warnx(v27, v21, v22);
    goto LABEL_18;
  }

  return result;
}

void krb5_err(_krb5_context *a1, int a2, krb5_error_code a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_252282C58(a1, 1, a3, 0, 0, a4, va);
  exit(a2);
}

void krb5_errx(_krb5_context *a1, int a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_252282C58(a1, 0, 0, 0, 0, a3, va);
  exit(a2);
}

void krb5_abort(_krb5_context *a1, krb5_error_code a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  sub_252282C58(a1, 1, a2, 0, heim_abort, a3, va);
  abort();
}

void krb5_abortx(_krb5_context *a1, const char *a2, ...)
{
  va_start(va, a2);
  sub_252282C58(a1, 0, 0, 0, 0, a2, va);
  abort();
}

uint64_t krb5_set_warn_dest(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 152);
  if (v4)
  {
    krb5_closelog(a1, v4);
  }

  *(a1 + 152) = a2;
  return 0;
}

uint64_t krb5_set_debug_dest(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 160);
  if (v4)
  {
    krb5_closelog(a1, v4);
  }

  *(a1 + 160) = a2;
  return 0;
}

uint64_t krb5_write_message(_krb5_context *a1, int *a2, void **a3)
{
  v6 = *a3;
  _krb5_put_int(__buf, v6, 4);
  if (krb5_net_write(a1, a2, __buf, 4uLL) == 4 && krb5_net_write(a1, a2, a3[1], v6) == v6)
  {
    return 0;
  }

  v8 = __error();
  v7 = *v8;
  v9 = strerror(*v8);
  krb5_set_error_message(a1, v7, "write: %s", v9);
  return v7;
}

uint64_t krb5_write_priv_message(_krb5_context *a1, _krb5_auth_context *a2, int *a3, krb5_data *a4)
{
  *&v8.magic = 0;
  v8.data = 0;
  v6 = krb5_mk_priv(a1, a2, a4, &v8, 0);
  if (!v6)
  {
    v6 = krb5_write_message(a1, a3, &v8);
    krb5_data_free(&v8);
  }

  return v6;
}

uint64_t krb5_write_safe_message(_krb5_context *a1, _krb5_auth_context *a2, int *a3, krb5_data *a4)
{
  *&v8.magic = 0;
  v8.data = 0;
  v6 = krb5_mk_safe(a1, a2, a4, &v8, 0);
  if (!v6)
  {
    v6 = krb5_write_message(a1, a3, &v8);
    krb5_data_free(&v8);
  }

  return v6;
}

uint64_t _krb5_expand_default_cc_name_0(_krb5_context *a1, char *__s1, void **a3)
{
  if (!__s1 || (v4 = __s1, !*__s1))
  {
    v4 = 0;
    *a3 = strdup("");
    return v4;
  }

  v6 = 0;
  __s = 0;
  *a3 = 0;
  v7 = &qword_286472560;
  while (1)
  {
    if (!*v4)
    {
      return 0;
    }

    v8 = strstr(v4, "%{");
    v9 = v8;
    if (!v8)
    {
      break;
    }

    v10 = &v8[-v4];
    if (v8 == v4)
    {
      break;
    }

    v11 = malloc_type_malloc((v10 + 1), 0xBF1E03B6uLL);
    __s = v11;
    if (!v11)
    {
      v20 = *a3;
LABEL_39:
      if (!v20)
      {
LABEL_42:
        *a3 = 0;
        v4 = 12;
        if (a1)
        {
          krb5_set_error_message(a1, 12, "malloc - out of memory");
        }

        return v4;
      }

      v23 = v20;
LABEL_41:
      free(v23);
      goto LABEL_42;
    }

    memcpy(v11, v4, v9 - v4);
    v10[__s] = 0;
LABEL_22:
    v18 = __s;
    v4 = v9;
LABEL_23:
    v20 = *a3;
    if (!v18)
    {
      goto LABEL_39;
    }

    v21 = strlen(v18);
    v22 = malloc_type_realloc(v20, v21 + v6 + 1, 0x7E0FBFEEuLL);
    if (!v22)
    {
      free(__s);
      v23 = *a3;
      if (!*a3)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    *a3 = v22;
    memcpy(&v22[v6], __s, v21 + 1);
    free(__s);
    v6 += v21;
    if (!v4)
    {
      return v4;
    }
  }

  if (!v8)
  {
    v18 = strdup(v4);
    v4 = 0;
    __s = v18;
    goto LABEL_23;
  }

  v12 = strchr(v8, 125);
  if (v12)
  {
    v13 = v12;
    v14 = &v12[-v9];
    __s = 0;
    if (*v9 == 37 && *(v9 + 1) == 123 && v14 >= 3 && *v12 == 125)
    {
      v15 = a1;
      v16 = v7;
      v17 = 11;
      do
      {
        if (!strncmp((v9 + 2), *(v7 - 2), v14 - 2))
        {
          a1 = v15;
          v19 = (v7[1])(v15, 0, *v7, &__s);
          if (!v19)
          {
            v9 = (v13 + 1);
            v7 = v16;
            goto LABEL_22;
          }

          v4 = v19;
          goto LABEL_33;
        }

        v7 += 4;
        --v17;
      }

      while (v17);
      a1 = v15;
      if (!v15)
      {
        goto LABEL_32;
      }

LABEL_29:
      v4 = 22;
      krb5_set_error_message(a1, 22, "Invalid token: %.*s", v14, v9);
    }

    else
    {
      if (a1)
      {
        goto LABEL_29;
      }

LABEL_32:
      v4 = 22;
    }

LABEL_33:
    if (*a3)
    {
      free(*a3);
    }

    *a3 = 0;
  }

  else
  {
    if (*a3)
    {
      free(*a3);
    }

    *a3 = 0;
    v4 = 22;
    if (a1)
    {
      krb5_set_error_message(a1, 22, "variable missing }");
    }
  }

  return v4;
}

uint64_t sub_252283548(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v15 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 360) & 0x10) != 0)
  {
    return 0;
  }

  v5 = 2529639048;
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v7 = MainBundle;
    InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
    if (InfoDictionary)
    {
      if (CFDictionaryGetCount(InfoDictionary))
      {
        v9 = CFBundleCopyResourcesDirectoryURL(v7);
        if (v9)
        {
          v10 = v9;
          v11 = CFURLGetFileSystemRepresentation(v9, 1u, buffer, 1024);
          CFRelease(v10);
          v5 = 12;
          if (v11)
          {
            v12 = strdup(buffer);
            *a4 = v12;
            if (v12)
            {
              return 0;
            }

            else
            {
              return 12;
            }
          }
        }
      }
    }
  }

  return v5;
}

uint64_t sub_25228362C(int a1, int a2, char *a3, char **a4)
{
  v5 = getenv(a3);
  if (!v5)
  {
    v5 = "";
  }

  v6 = strdup(v5);
  *a4 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_252283674(_krb5_context *a1, int a2, char *__s1, char **a4)
{
  v6 = strdup(__s1);
  *a4 = v6;
  if (v6)
  {
    return 0;
  }

  v7 = 12;
  krb5_set_error_message(a1, 12, "malloc - out of memory");
  return v7;
}

uint64_t sub_2522836CC(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  if (issuid() || (v5 = getenv("TEMP")) == 0)
  {
    v5 = "/tmp";
  }

  v6 = strdup(v5);
  *a4 = v6;
  if (v6)
  {
    return 0;
  }

  else
  {
    return 12;
  }
}

uint64_t sub_252283724(uint64_t a1, uint64_t a2, uint64_t a3, char **a4)
{
  v5 = getuid();
  v6 = asprintf(a4, "%u", v5);
  result = 12;
  if ((v6 & 0x80000000) == 0)
  {
    if (*a4)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  return result;
}

uint64_t sub_25228377C(_krb5_context *a1, uint64_t a2, uint64_t a3, char **a4)
{
  memset(&v8, 0, sizeof(v8));
  if (getaudit_addr(&v8, 48))
  {
    if (asprintf(a4, "%lu", v8.ai_asid) < 0 || !*a4)
    {
      return krb5_enomem(a1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v6 = *__error();
    krb5_set_error_message(a1, v6, "cant get audit information for the session");
  }

  return v6;
}

uint64_t sub_252283820(_krb5_context *a1, uint64_t a2, uint64_t a3, char **a4)
{
  v6 = strdup("");
  *a4 = v6;
  if (v6)
  {
    return 0;
  }

  v7 = 12;
  if (a1)
  {
    krb5_set_error_message(a1, 12, "Out of memory");
  }

  return v7;
}

uint64_t sub_252283888(_krb5_context *a1, void *a2, void *dataOut, size_t size, int a5, uint64_t a6, const void *a7)
{
  v7 = *(a2[1] + 8);
  dataOutMoved = 0;
  if (size > 0xF)
  {
    if (size == 16)
    {
      if (CCCrypt(a5 == 0, *(*(v7 + 16) + 80), 0, *(*a2 + 16), *(*a2 + 8), 0, dataOut, 0x10uLL, dataOut, 0x10uLL, &dataOutMoved))
      {
        sub_2522A8094();
      }

      if (dataOutMoved != 16)
      {
        sub_2522A80AC();
      }
    }

    else
    {
      v12 = *(v7 + 8 * (a5 == 0));
      v13 = malloc_type_malloc(size, 0xA2A026C1uLL);
      if (!v13)
      {
        return 12;
      }

      v14 = v13;
      if (a7)
      {
        v15 = a7;
      }

      else
      {
        v15 = &unk_2522A9FF0;
      }

      CCCryptorReset(v12, v15);
      if (CCCryptorUpdate(v12, dataOut, size, v14, size, &dataOutMoved))
      {
        sub_2522A804C();
      }

      v16 = size - dataOutMoved;
      if (CCCryptorFinal(v12, &v14[dataOutMoved], size - dataOutMoved, &dataOutMoved))
      {
        sub_2522A8064();
      }

      if (v16 != dataOutMoved)
      {
        sub_2522A807C();
      }

      memcpy(dataOut, v14, size);
      free(v14);
    }

    return 0;
  }

  else
  {
    v8 = 22;
    krb5_set_error_message(a1, 22, "message block too short");
  }

  return v8;
}

uint64_t sub_252283A10(_krb5_context *a1, const krb5_keyblock **a2, void *a3, size_t *a4)
{
  v8 = *&(*a2)[2].magic;
  v23 = 0;
  v24 = 0;
  dataIn = 0;
  LODWORD(v23) = *v8;
  v9 = krb5_data_alloc(&v24, *(v8 + 24));
  if (v9)
  {
    v10 = v9;
    krb5_set_error_message(a1, v9, "malloc: out memory");
  }

  else
  {
    v11 = (*(v8 + 40))(a1, 0, a3[1], *a3, 0, &v23);
    if (v11)
    {
      v10 = v11;
      krb5_data_free(&v24);
    }

    else
    {
      v12 = *a2;
      if (v24 < (*a2)->contents)
      {
        krb5_abortx(a1, "internal prf error");
      }

      v22 = 0;
      if (krb5_derive_key(a1, a2[1], *v12, "prf", 3uLL, &v22))
      {
        krb5_abortx(a1, "krb5_derive_key");
      }

      contents = (*a2)->contents;
      v14 = v24 / contents * contents;
      if (v14 != *&(*a2)[3].length)
      {
        sub_2522A80C4();
      }

      if (krb5_data_alloc(a4, contents))
      {
        krb5_abortx(a1, "malloc failed");
      }

      v15 = (*a2)[1].contents;
      v16 = *(v15 + 20);
      v17 = v22->contents;
      v18 = *(v15 + 3);
      dataOut = a4[1];
      dataOutMoved = 0;
      if (CCCrypt(0, v16, 0, v17, v18, 0, dataIn, v14, dataOut, v14, &dataOutMoved) || dataOutMoved != v14)
      {
        krb5_abortx(a1, "encrypt failed");
      }

      krb5_data_free(&v24);
      krb5_free_keyblock(a1, v22);
      return 0;
    }
  }

  return v10;
}

uint64_t sub_252283BDC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *a3;
  cryptorRef = *(a3[1] + 8);
  v6 = *(a2 + 80);
  *(cryptorRef + 16) = a2;
  if (CCCryptorCreateWithMode(0, 2u, v6, 0xCu, 0, *(v4 + 16), *(v4 + 8), 0, 0, 0, 0, cryptorRef) || (result = CCCryptorCreateWithMode(1u, 2u, v6, 0xCu, 0, *(*a3 + 16), *(*a3 + 8), 0, 0, 0, 0, (cryptorRef + 8)), result))
  {
    abort();
  }

  return result;
}

uint64_t sub_252283C80(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  CCCryptorRelease(*v2);
  v3 = v2[1];

  return CCCryptorRelease(v3);
}

uint64_t sub_252283CC0(_krb5_context *a1, uint64_t *a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  v9 = sub_2522513C0(7);
  strcpy(v19, "signaturekey");
  if (CCDigestCreate())
  {
    v15[1] = 0;
    v13 = 0;
    *v16 = xmmword_2522AA010;
    *&v16[16] = &v17;
    v10 = sub_252251134(a1, v9, v19, 0xDuLL, 0, a2, v16);
    if (v10)
    {
      v11 = v10;
      CCDigestDestroy();
    }

    else
    {
      v15[0] = &v13;
      v14 = *&v16[8];
      CCDigestUpdate();
      CCDigestUpdate();
      CCDigestFinal();
      CCDigestDestroy();
      return sub_252251134(a1, v9, v18, 0x10uLL, 0, v15, a6);
    }
  }

  else
  {
    v11 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v11;
}

uint64_t sub_252283E50(uint64_t a1, int *a2)
{
  v2 = *a2;
  if (*a2 > 22)
  {
    if (v2 == 23)
    {
      v3 = 15;
      goto LABEL_10;
    }

    if (v2 == 24)
    {
      v3 = 0;
      goto LABEL_10;
    }
  }

  else
  {
    if (v2 == 3)
    {
      v3 = 8;
      goto LABEL_10;
    }

    if (v2 == 22)
    {
      v3 = 13;
LABEL_10:
      *a2 = v3;
    }
  }

  return 0;
}

uint64_t sub_252283EA4(_krb5_context *a1, uint64_t *a2, unsigned __int8 *a3, uint64_t a4, int a5, int a6)
{
  v6 = a6;
  v43 = *MEMORY[0x277D85DE8];
  if (a6 > 22)
  {
    if (a6 == 23)
    {
      v6 = 15;
    }

    else if (a6 == 24)
    {
      v6 = 0;
    }
  }

  else if (a6 == 3)
  {
    v6 = 8;
  }

  else if (a6 == 22)
  {
    v6 = 13;
  }

  if (a5)
  {
    v42 = 0;
    v40 = 0u;
    v41 = 0u;
    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    v11 = sub_2522513C0(7);
    v24 = 0;
    v25 = 0;
    *v26 = 0;
    v20 = 0;
    v21 = 0;
    v17 = 0;
    v28[0] = v6;
    *v27 = xmmword_2522AA010;
    *&v27[16] = &v31;
    if (!sub_252251134(0, v11, v28, 4uLL, 0, a2, v27))
    {
      v30 = v31;
      *&v18 = 16;
      *(&v18 + 1) = &v30;
      v19 = &v17;
      v22 = 16;
      v23 = a3;
      if (!sub_252251134(0, v11, a3 + 16, a4 - 16, 0, &v19, &v21))
      {
        v19 = &v17;
        v18 = *&v27[8];
        v25 = 16;
        *v26 = v29;
        if (!sub_252251134(0, v11, a3, 0x10uLL, 0, &v19, &v24))
        {
          hc_EVP_CIPHER_CTX_init(&v32);
          v12 = hc_EVP_rc4();
          hc_EVP_CipherInit_ex(&v32, v12, 0, *v26, 0, 1);
          hc_EVP_Cipher(&v32);
          hc_EVP_CIPHER_CTX_cleanup(&v32);
          return 0;
        }
      }
    }

LABEL_21:
    krb5_abortx(a1, "hmac failed");
  }

  v42 = 0;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v14 = sub_2522513C0(7);
  v24 = 0;
  v25 = 0;
  *v26 = 0;
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v20 = 0;
  v17 = 0;
  v16 = v6;
  *v27 = xmmword_2522AA010;
  *&v27[16] = &v31;
  if (sub_252251134(0, v14, &v16, 4uLL, 0, a2, v27))
  {
    goto LABEL_21;
  }

  v30 = v31;
  v19 = &v17;
  v18 = *&v27[8];
  v25 = 16;
  *v26 = v29;
  if (sub_252251134(0, v14, a3, 0x10uLL, 0, &v19, &v24))
  {
    goto LABEL_21;
  }

  hc_EVP_CIPHER_CTX_init(&v32);
  v15 = hc_EVP_rc4();
  hc_EVP_CipherInit_ex(&v32, v15, 0, *v26, 0, 0);
  hc_EVP_Cipher(&v32);
  hc_EVP_CIPHER_CTX_cleanup(&v32);
  *&v18 = 16;
  *(&v18 + 1) = &v30;
  v19 = &v17;
  v22 = 16;
  v23 = v28;
  if (sub_252251134(0, v14, a3 + 16, a4 - 16, 0, &v19, &v21))
  {
    goto LABEL_21;
  }

  v31 = 0uLL;
  v30 = 0uLL;
  v29[0] = 0;
  v29[1] = 0;
  result = ct_memcmp(v23, a3, 16);
  if (result)
  {
    krb5_clear_error_message(a1);
    return 2529638943;
  }

  return result;
}

uint64_t sub_252284240(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  v8 = sub_2522513C0(14);
  v9 = krb5_data_alloc(a4, *(v8 + 3));
  if (!v9)
  {
    v10 = a4[1];
    v12[1] = *a4;
    v12[2] = v10;
    v12[0] = 0;
    if (sub_252251134(a1, v8, *(a3 + 8), *a3, 0, (a2 + 8), v12))
    {
      krb5_data_free(a4);
    }
  }

  return v9;
}

_BYTE *sub_2522842DC(_BYTE *result, _BYTE *a2)
{
  *result ^= *a2;
  result[1] ^= a2[1];
  result[2] ^= a2[2];
  result[3] ^= a2[3];
  result[4] ^= a2[4];
  result[5] ^= a2[5];
  result[6] ^= a2[6];
  result[7] ^= a2[7];
  return result;
}

uint64_t sub_252284360(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = CCDigest();
  if (result)
  {
    krb5_abortx(a1, "md5 checksum failed");
  }

  return result;
}

uint64_t sub_2522843AC(_krb5_context *a1, const krb5_keyblock **a2, void *a3, size_t *a4)
{
  v20 = *MEMORY[0x277D85DE8];
  v8 = *&(*a2)[2].magic;
  v16 = 0;
  v17[0] = 0;
  v17[1] = 0;
  LODWORD(v16) = *v8;
  v9 = krb5_data_alloc(v17, *(v8 + 24));
  if (v9)
  {
    v10 = v9;
    krb5_set_error_message(a1, v9, "malloc: out memory");
  }

  else
  {
    v11 = (*(v8 + 40))(a1, 0, a3[1], *a3, 0, &v16);
    if (v11)
    {
      v10 = v11;
      krb5_data_free(v17);
    }

    else
    {
      v12 = *a2;
      if (v17[0] < (*a2)->contents)
      {
        krb5_abortx(a1, "internal prf error");
      }

      v15 = 0;
      if (krb5_derive_key(a1, a2[1], *v12, "prf", 3uLL, &v15))
      {
        krb5_abortx(a1, "krb5_derive_key");
      }

      if (v17[0] / (*a2)->contents * (*a2)->contents != *&(*a2)[3].length)
      {
        sub_2522A80C4();
      }

      if (krb5_data_alloc(a4, v17[0] / (*a2)->contents * (*a2)->contents))
      {
        krb5_abortx(a1, "malloc failed");
      }

      v13 = (*((*a2)[1].contents + 10))();
      v19 = 0;
      memset(v18, 0, sizeof(v18));
      hc_EVP_CIPHER_CTX_init(v18);
      hc_EVP_CipherInit_ex(v18, v13, 0, v15->contents, 0, 1);
      hc_EVP_Cipher(v18);
      hc_EVP_CIPHER_CTX_cleanup(v18);
      krb5_data_free(v17);
      krb5_free_keyblock(a1, v15);
      return 0;
    }
  }

  return v10;
}

_BYTE *sub_2522845C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a4 <= 0x14)
  {
    abort();
  }

  bzero(*(a2 + 16), *(a2 + 8));
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = v7;
  do
  {
    for (i = 0; i != 7; ++i)
    {
      *(v8 + i) = *(a3 + i);
    }

    v10 = 0;
    for (j = 6; j != -1; --j)
    {
      v10 = 2 * (*(a3 + j) & 1 | v10);
    }

    *(v7 + 8 * v6++ + 7) = v10;
    v8 += 8;
    a3 += 7;
  }

  while (v6 != 3);
  v12 = *(a2 + 16);
  v13 = 3;
  do
  {
    MEMORY[0x25309CF50](v12, 8);
    result = MEMORY[0x25309CF40](v12, 8);
    if (result)
    {
      result = sub_2522842DC(v12, byte_2522AA020);
    }

    v12 += 8;
    --v13;
  }

  while (v13);
  return result;
}

uint64_t sub_2522846B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  for (i = v3; ; i = *(a2 + 16))
  {
    krb5_generate_random_block(i, *(a2 + 8));
    MEMORY[0x25309CF50](v3, 8);
    MEMORY[0x25309CF50](v3 + 8, 8);
    MEMORY[0x25309CF50](v3 + 16, 8);
    if (!MEMORY[0x25309CF40](v3, 8) && !MEMORY[0x25309CF40](v3 + 8, 8))
    {
      result = MEMORY[0x25309CF40](v3 + 16, 8);
      if (!result)
      {
        break;
      }
    }
  }

  return result;
}

uint64_t sub_25228473C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a3[1] + 8);
  v5 = (*(a2 + 80))(a1);
  hc_EVP_CIPHER_CTX_init(v4);
  hc_EVP_CIPHER_CTX_init(v4 + 168);
  hc_EVP_CipherInit_ex(v4, v5, 0, *(*a3 + 16), 0, 1);
  v6 = *(*a3 + 16);

  return hc_EVP_CipherInit_ex(v4 + 168, v5, 0, v6, 0, 0);
}

uint64_t sub_2522847D4(uint64_t a1, uint64_t a2)
{
  v2 = *(*(a2 + 8) + 8);
  hc_EVP_CIPHER_CTX_cleanup(v2);

  return hc_EVP_CIPHER_CTX_cleanup(v2 + 21);
}

uint64_t sub_252284814(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, void *__src)
{
  v7 = *(*(a2 + 8) + 8);
  if (a5)
  {
    v8 = 0;
  }

  else
  {
    v8 = 168;
  }

  if (__src)
  {
    hc_EVP_CipherInit_ex(v7 + v8, 0, 0, 0, __src, 0xFFFFFFFFLL);
LABEL_8:
    hc_EVP_Cipher(v7 + v8);
    return 0;
  }

  v10 = hc_EVP_CIPHER_CTX_iv_length(v7 + v8);
  v11 = malloc_type_malloc(v10, 0xC1854EE2uLL);
  if (v11)
  {
    v12 = v11;
    bzero(v11, v10);
    hc_EVP_CipherInit_ex(v7 + v8, 0, 0, 0, v12, 0xFFFFFFFFLL);
    free(v12);
    goto LABEL_8;
  }

  krb5_clear_error_message(a1);
  return 12;
}

uint64_t _krb5_pk_octetstring2key(_krb5_context *a1, int a2, uint64_t a3, uint64_t a4, void *a5, void *a6, uint64_t a7)
{
  v26 = *MEMORY[0x277D85DE8];
  v12 = sub_252250F58(a2);
  if (!v12)
  {
    v19 = 2529639062;
    krb5_set_error_message(a1, -1765328234, "encryption type %d not supported");
    return v19;
  }

  v13 = (*(*(v12 + 5) + 16) + 7) >> 3;
  v14 = malloc_type_malloc(v13, 0x24050FFCuLL);
  if (!v14)
  {
LABEL_16:
    v19 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v19;
  }

  v15 = v14;
  if (!CCDigestCreate())
  {
    free(v15);
    goto LABEL_16;
  }

  v21 = a2;
  v22 = a7;
  v16 = 0;
  v23 = 0;
  v17 = v13;
  do
  {
    CCDigestReset();
    CCDigestUpdate();
    CCDigestUpdate();
    if (a5)
    {
      CCDigestUpdate();
    }

    if (a6)
    {
      CCDigestUpdate();
    }

    CCDigestFinal();
    if (v17 >= 0x14)
    {
      v18 = 20;
    }

    else
    {
      v18 = v17;
    }

    memcpy(v15 + v16, __src, v18);
    v16 += 20;
    ++v23;
    v17 -= 20;
  }

  while (v16 < v13);
  __src[0] = 0;
  __src[1] = 0;
  v25 = 0;
  CCDigestDestroy();
  v19 = krb5_random_to_key(a1, v21, v15, v13, v22);
  *v15 = 0;
  free(v15);
  return v19;
}

uint64_t _krb5_pk_kdf(_krb5_context *a1, __int128 *a2, uint64_t a3, uint64_t a4, __int128 *a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v52 = *MEMORY[0x277D85DE8];
  if (!der_heim_oid_cmp())
  {
    v19 = 20;
LABEL_6:
    v41 = 0;
    v42 = 0;
    v20 = *(a2 + 2);
    if (v20 && (*v20 != 2 || **(v20 + 8) != 5))
    {
      v17 = 2529639062;
      v18 = "kdf params not NULL or the NULL-type";
      goto LABEL_16;
    }

    v21 = sub_252250F58(a7);
    if (!v21)
    {
      v17 = 2529639062;
      v37 = a7;
      v18 = "encryption type %d not supported";
      goto LABEL_16;
    }

    v22 = (*(*(v21 + 5) + 16) + 7) >> 3;
    v23 = malloc_type_malloc(v22, 0x7022B891uLL);
    if (v23)
    {
      v38 = v19;
      v39 = v22;
      v40 = v23;
      v43 = 0;
      krb5_data_zero(&v41);
      v51 = 0;
      *v49 = 0u;
      *v50 = 0u;
      __src = 0u;
      v48 = 0u;
      v46[1] = a8;
      v46[0] = a7;
      v46[2] = a9;
      v46[3] = a10;
      v24 = sub_25228BDA4(v46);
      v44 = v24;
      v25 = malloc_type_malloc(v24, 0x8375F6B6uLL);
      v45 = v25;
      if (!v25)
      {
        v17 = 12;
        goto LABEL_19;
      }

      v26 = v25;
      v27 = sub_25228BD84(v25 + v24 - 1, v24, v46, &v43);
      if (v27)
      {
        v17 = v27;
        free(v26);
LABEL_19:
        krb5_set_error_message(a1, v17, "malloc: out of memory");
LABEL_20:
        v29 = v40;
LABEL_21:
        free(v29);
        return v17;
      }

      if (v24 != v43)
      {
        goto LABEL_45;
      }

      if (a5)
      {
        v30 = sub_252284F3C(a1, a5, &v48 + 8);
        if (v30)
        {
          v17 = v30;
LABEL_29:
          free(v26);
          goto LABEL_20;
        }
      }

      if (a6)
      {
        v31 = sub_252284F3C(a1, a6, &v49[1]);
        if (v31)
        {
          v17 = v31;
          free(v49[0]);
          goto LABEL_29;
        }
      }

      __src = *a2;
      *&v48 = *(a2 + 2);
      v50[1] = &v44;
      v41 = sub_25228BD74(&__src);
      v32 = malloc_type_malloc(v41, 0x9826D9FDuLL);
      v42 = v32;
      if (v32)
      {
        v17 = sub_25228BD54(v32 + v41 - 1, v41, &__src, &v43);
        if (v17)
        {
          free(v42);
          v42 = 0;
        }
      }

      else
      {
        v17 = 12;
      }

      free(v49[0]);
      free(v50[0]);
      free(v45);
      if (v17)
      {
        goto LABEL_19;
      }

      if (v41 != v43)
      {
LABEL_45:
        krb5_abortx(a1, "asn1 compiler internal error");
      }

      if (CCDigestCreate())
      {
        v33 = 0;
        v34 = 1;
        v35 = v39;
        do
        {
          CCDigestReset();
          _krb5_put_int(v46, v34, 4);
          CCDigestUpdate();
          CCDigestUpdate();
          CCDigestUpdate();
          CCDigestFinal();
          if (v35 >= v38)
          {
            v36 = v38;
          }

          else
          {
            v36 = v35;
          }

          memcpy(v40 + v33, &__src, v36);
          v33 += v38;
          ++v34;
          v35 -= v38;
        }

        while (v33 < v39);
        *v49 = 0u;
        *v50 = 0u;
        __src = 0u;
        v48 = 0u;
        CCDigestDestroy();
        free(v42);
        v17 = krb5_random_to_key(a1, a7, v40, v39, a11);
        *v40 = 0;
        v29 = v40;
        goto LABEL_21;
      }

      free(v40);
      free(v42);
    }

    v17 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v17;
  }

  if (!der_heim_oid_cmp())
  {
    v19 = 64;
    goto LABEL_6;
  }

  v17 = 2529639062;
  v18 = "KDF not supported";
LABEL_16:
  krb5_set_error_message(a1, -1765328234, v18, v37);
  return v17;
}

uint64_t sub_252284F3C(_krb5_context *a1, __int128 *a2, uint64_t a3)
{
  v13 = *a2;
  v5 = *(a2 + 3);
  v14 = *(a2 + 2);
  v11 = 0;
  v12 = v5;
  v6 = sub_25228BB94(&v12);
  *a3 = v6;
  v7 = malloc_type_malloc(v6, 0xD73B5B43uLL);
  *(a3 + 8) = v7;
  if (!v7)
  {
    v9 = 12;
    goto LABEL_5;
  }

  v8 = sub_25228BB74(v7 + *a3 - 1, *a3, &v12, &v11);
  if (v8)
  {
    v9 = v8;
    free(*(a3 + 8));
    *(a3 + 8) = 0;
LABEL_5:
    krb5_data_zero(a3);
    krb5_set_error_message(a1, v9, "Failed to encode KRB5PrincipalName");
    return v9;
  }

  if (*a3 != v11)
  {
    krb5_abortx(a1, "asn1 compiler internal error");
  }

  return 0;
}

uint64_t krb5_generate_random_block(uint64_t a1, uint64_t a2)
{
  result = CCRandomCopyBytes();
  if (result)
  {
    krb5_abortx(0, "Failed reading %lu random bytes", a2);
  }

  return result;
}

uint64_t sub_252285078(_krb5_context *a1, int a2, size_t a3, const char *a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7, krb5_keyblock *a8)
{
  v14 = 2529639063;
  if (a6 == 4)
  {
    v23[0] = 0;
    _krb5_get_int(a7, v23, 4);
    v15 = v23[0];
  }

  else
  {
    if (a6)
    {
      return v14;
    }

    v15 = _krb5_AES_string_to_default_iterator;
  }

  v16 = sub_252250F58(a2);
  if (v16)
  {
    v17 = v16;
    v23[1] = 0;
    v18 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
    v23[0] = v18;
    if (v18)
    {
      v19 = v18;
      *v18 = a2;
      v20 = krb5_data_alloc(v18 + 1, *(*(v17 + 40) + 24));
      if (v20)
      {
        v21 = v20;
        krb5_set_error_message(a1, v20, "malloc: out of memory");
        return v21;
      }

      else if (hc_PKCS5_PBKDF2_HMAC_SHA1(a4, a3, *(a5 + 16), *(a5 + 8), v15, *(*(v17 + 40) + 24), v19[2]))
      {
        v14 = sub_252253880(a1, v17, v23, "kerberos", 8uLL);
        if (!v14)
        {
          v14 = krb5_copy_keyblock_contents(a1, v23[0], a8);
        }

        sub_252253BF0(a1, v23, v17);
      }

      else
      {
        sub_252253BF0(a1, v23, v17);
        krb5_set_error_message(a1, -1765328233, "Error calculating s2k", v23[0]);
      }
    }

    else
    {
      v14 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory", 0);
    }
  }

  return v14;
}

uint64_t sub_252285234(_krb5_context *a1, int a2, size_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v23 = 0;
  if (getenv("KRB5_USE_BROKEN_ARCFOUR_STRING2KEY"))
  {
    v13 = 0;
  }

  else
  {
    v13 = krb5_heim_use_broken_arcfour_string2key == 0;
  }

  if (v13)
  {
    v15 = malloc_type_malloc(a3 + 1, 0x55378076uLL);
    if (!v15)
    {
      v14 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      return v14;
    }

    v16 = v15;
    memcpy(v15, a4, a3);
    v16[a3] = 0;
    if (CCDigestCreate())
    {
      v17 = wind_utf8ucs2_length(v16, &v23);
      if (v17)
      {
        v14 = v17;
        krb5_set_error_message(a1, v17, "Password not an UCS2 string");
LABEL_21:
        CCDigestDestroy();
LABEL_22:
        free(v16);
        return v14;
      }

      v18 = malloc_type_malloc(2 * v23, 0x1000040BDFB0063uLL);
      v19 = v18;
      if (!v23 || v18)
      {
        v21 = wind_utf8ucs2(v16, v18, &v23);
        if (v21)
        {
          v14 = v21;
          krb5_set_error_message(a1, v21, "Password not an UCS2 string");
        }

        else
        {
          if (v23)
          {
            for (i = 0; i < v23; ++i)
            {
              CCDigestUpdate();
              CCDigestUpdate();
            }
          }

          *a8 = a2;
          v14 = krb5_data_alloc((a8 + 8), 0x10uLL);
          if (v14)
          {
            krb5_set_error_message(a1, 12, "malloc: out of memory");
          }

          else
          {
            CCDigestFinal();
          }
        }

        CCDigestDestroy();
        if (v19)
        {
          bzero(v19, v23);
          free(v19);
        }

        goto LABEL_22;
      }
    }

    v14 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_21;
  }

  if (CCDigestCreate())
  {
    for (; a3; --a3)
    {
      ++a4;
      CCDigestUpdate();
      v24 = 0;
      CCDigestUpdate();
    }

    *a8 = a2;
    v14 = krb5_data_alloc((a8 + 8), 0x10uLL);
    if (v14)
    {
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }

    else
    {
      CCDigestFinal();
    }
  }

  else
  {
    v14 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  CCDigestDestroy();
  return v14;
}

uint64_t sub_2522854F8(_krb5_context *a1, uint64_t a2, size_t a3, const void *a4, uint64_t a5, uint64_t a6, uint64_t a7, krb5_keyblock *a8)
{
  v12 = a2;
  v14 = *(a5 + 8) + a3;
  v15 = malloc_type_malloc(v14, 0xFC907358uLL);
  if (v14)
  {
    v16 = v15 == 0;
  }

  else
  {
    v16 = 0;
  }

  if (v16)
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return 12;
  }

  else
  {
    v17 = v15;
    memcpy(v15, a4, a3);
    memcpy(&v17[a3], *(a5 + 16), *(a5 + 8));
    v18 = krb5_string_to_key_derived(a1, v17, v14, v12, a8);
    bzero(v17, v14);
    free(v17);
    return v18;
  }
}

krb5_error_code krb5_salttype_to_string(krb5_int32 a1, char *a2, size_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = *&a1;
  v7 = sub_252250F58(a2);
  if (v7)
  {
    v8 = *(*(v7 + 5) + 56);
    if (v8 && (v9 = *v8) != 0)
    {
      v10 = (v8 + 6);
      while (v9 != v5)
      {
        v11 = *v10;
        v10 += 3;
        v9 = v11;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      v14 = strdup(*(v10 - 2));
      *v4 = v14;
      if (v14)
      {
        return 0;
      }

      else
      {
        v12 = 12;
        krb5_set_error_message(v6, 12, "malloc: out of memory");
      }
    }

    else
    {
LABEL_7:
      v12 = -1980176638;
      krb5_set_error_message(v6, -1980176638, "salttype %u not supported");
    }
  }

  else
  {
    v12 = -1765328234;
    krb5_set_error_message(v6, -1765328234, "encryption type %d not supported");
  }

  return v12;
}

krb5_error_code krb5_string_to_salttype(char *a1, krb5_int32 *a2)
{
  v4 = v3;
  v5 = v2;
  v7 = sub_252250F58(a2);
  if (v7)
  {
    v8 = *(*(v7 + 5) + 56);
    if (v8 && (v9 = *v8) != 0)
    {
      v10 = (v8 + 6);
      while (strcasecmp(*(v10 - 2), v5))
      {
        v11 = *v10;
        v10 += 3;
        v9 = v11;
        if (!v11)
        {
          goto LABEL_7;
        }
      }

      v12 = 0;
      *v4 = v9;
    }

    else
    {
LABEL_7:
      v12 = -1980176638;
      krb5_set_error_message(a1, -1980176638, "salttype %s not supported");
    }
  }

  else
  {
    v12 = -1765328234;
    krb5_set_error_message(a1, -1765328234, "encryption type %d not supported");
  }

  return v12;
}

uint64_t krb5_get_pw_salt(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 3;
  v5 = strlen(*(a2 + 24));
  v6 = *(a2 + 8);
  if (v6)
  {
    v7 = *(a2 + 16);
    do
    {
      v8 = *v7++;
      v5 += strlen(v8);
      --v6;
    }

    while (v6);
  }

  result = krb5_data_alloc((a3 + 8), v5);
  if (!result)
  {
    v10 = *(a3 + 16);
    v11 = strlen(*(a2 + 24));
    memcpy(v10, *(a2 + 24), v11);
    if (*(a2 + 8))
    {
      v12 = 0;
      v13 = &v10[strlen(*(a2 + 24))];
      v14 = *(a2 + 16);
      do
      {
        v15 = *(v14 + 8 * v12);
        v16 = strlen(v15);
        memcpy(v13, v15, v16);
        v14 = *(a2 + 16);
        v13 += strlen(*(v14 + 8 * v12++));
      }

      while (v12 < *(a2 + 8));
    }

    return 0;
  }

  return result;
}

uint64_t krb5_string_to_key_data(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = 0uLL;
  v16 = 0;
  pw_salt = krb5_get_pw_salt(a1, a5, &v15);
  if (!pw_salt)
  {
    v13 = v15;
    v14 = v16;
    pw_salt = krb5_string_to_key_data_salt(a1, a2, a3, a4, &v13, a6);
    v13 = v15;
    v14 = v16;
    krb5_data_free(&v13 + 1);
  }

  return pw_salt;
}

uint64_t krb5_string_to_key_data_salt(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6)
{
  v15 = 0;
  v16 = 0;
  krb5_data_zero(&v15);
  v13 = *a5;
  v14 = *(a5 + 2);
  return krb5_string_to_key_data_salt_opaque(a1, a2, a3, a4, &v13, v15, v16, a6);
}

krb5_error_code krb5_string_to_key(krb5_context context, const krb5_encrypt_block *eblock, krb5_keyblock *keyblock, const krb5_data *data, const krb5_data *salt)
{
  v10 = strlen(keyblock);

  return krb5_string_to_key_data(context, eblock, v10, keyblock, data, salt);
}

uint64_t krb5_string_to_key_data_salt_opaque(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = sub_252250F58(a2);
  if (v16)
  {
    v17 = *(*(v16 + 5) + 56);
    if (v17 && (v18 = *v17) != 0)
    {
      v19 = v17 + 6;
      while (v18 != *a5)
      {
        v20 = *v19;
        v19 += 6;
        v18 = v20;
        if (!v20)
        {
          goto LABEL_7;
        }
      }

      v23 = *(v19 - 1);
      v24 = *a5;
      v25 = *(a5 + 2);
      return v23(a1, a2, a3, a4, &v24, a6, a7, a8);
    }

    else
    {
LABEL_7:
      v21 = 2314790658;
      krb5_set_error_message(a1, -1980176638, "salt type %u not supported");
    }
  }

  else
  {
    v21 = 2529639062;
    krb5_set_error_message(a1, -1765328234, "encryption type %d not supported");
  }

  return v21;
}

uint64_t krb5_string_to_key_salt(_krb5_context *a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5)
{
  v10 = strlen(__s);
  v12 = *a4;
  v13 = *(a4 + 16);
  return krb5_string_to_key_data_salt(a1, a2, v10, __s, &v12, a5);
}

uint64_t krb5_string_to_key_salt_opaque(_krb5_context *a1, uint64_t a2, char *__s, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = strlen(__s);
  v16 = *a4;
  v17 = *(a4 + 16);
  return krb5_string_to_key_data_salt_opaque(a1, a2, v14, __s, &v16, a5, a6, a7);
}

uint64_t krb5_string_to_key_derived(_krb5_context *a1, const void *a2, size_t a3, int a4, krb5_keyblock *a5)
{
  v10 = sub_252250F58(a4);
  if (!v10)
  {
    v16 = 2529639062;
    krb5_set_error_message(a1, -1765328234, "encryption type %d not supported");
    return v16;
  }

  v11 = v10;
  v12 = *(*(v10 + 5) + 16);
  v13 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
  v23[0] = v13;
  if (!v13)
  {
    goto LABEL_10;
  }

  v14 = v13;
  v15 = krb5_data_alloc(v13 + 1, *(*(v11 + 40) + 24));
  if (v15)
  {
    v16 = v15;
    free(v14);
    return v16;
  }

  v17 = v12 >> 3;
  v14->magic = a4;
  v18 = malloc_type_malloc(v17, 0xA4DC22C8uLL);
  if (!v18)
  {
    krb5_free_keyblock(a1, v14);
LABEL_10:
    v16 = 12;
    goto LABEL_11;
  }

  v19 = v18;
  v20 = sub_25226E0FC(a2, a3, v18, v17);
  if (v20)
  {
    v16 = v20;
    free(v19);
LABEL_11:
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v16;
  }

  v23[1] = 0;
  sub_2522845C4(a1, v14, v19, v17);
  bzero(v19, v17);
  free(v19);
  v22 = sub_252253880(a1, v11, v23, "kerberos", 8uLL);
  if (!v22)
  {
    v22 = krb5_copy_keyblock_contents(a1, v23[0], a5);
  }

  v16 = v22;
  sub_252253BF0(a1, v23, v11);
  return v16;
}

uint64_t _krb5_put_int(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3 - 1 >= 0)
  {
    v3 = a3;
    do
    {
      *(a1 - 1 + v3) = a2;
      a2 >>= 8;
      --v3;
    }

    while (v3);
  }

  return a3;
}

uint64_t _krb5_get_int(unsigned __int8 *a1, unint64_t *a2, uint64_t a3)
{
  v3 = 0;
  if (a3)
  {
    v4 = a3;
    do
    {
      v5 = *a1++;
      v3 = v5 | (v3 << 8);
      --v4;
    }

    while (v4);
  }

  *a2 = v3;
  return a3;
}

uint64_t sub_252285EB0(uint64_t a1)
{
  v2 = 0;
  krb5_plugin_run_f(a1, "krb5", "ccache_ops", 0, 0, &v2, sub_252285F04);
  return v2;
}

uint64_t sub_252285F04(uint64_t a1, int *a2, uint64_t a3, _DWORD *a4)
{
  if (!a2 || *a2 <= 7)
  {
    v5 = krb5_cc_register(a1, a2, 1);
    if (v5)
    {
      *a4 = v5;
    }
  }

  return 2529639161;
}

uint64_t _krb5_fast_cf2(_krb5_context *a1, const krb5_keyblock *a2, const char *a3, const krb5_keyblock *a4, const char *a5, krb5_keyblock *a6, krb5_keyblock ***a7)
{
  v20 = 0;
  v21 = 0;
  v14 = krb5_crypto_init(a1, a2, 0, &v21);
  if (v14)
  {
    return v14;
  }

  v16 = krb5_crypto_init(a1, a4, 0, &v20);
  if (v16)
  {
    v15 = v16;
    krb5_crypto_destroy(a1, v21);
  }

  else
  {
    v19[1] = a3;
    v18[1] = a5;
    v19[0] = strlen(a3);
    v18[0] = strlen(a5);
    v15 = krb5_crypto_fx_cf2(a1, v21, v20, v19, v18, a2->magic, a6);
    krb5_crypto_destroy(a1, v21);
    krb5_crypto_destroy(a1, v20);
    if (!v15)
    {
      if (a7)
      {
        v15 = krb5_crypto_init(a1, a6, 0, a7);
        if (v15)
        {
          krb5_free_keyblock_contents(a1, a6);
        }
      }

      else
      {
        return 0;
      }
    }
  }

  return v15;
}

uint64_t sub_2522860A0(_krb5_context *a1, _krb5_ccache *a2, krb5_data *a3, krb5_keyblock *a4, krb5_keyblock ***a5)
{
  v25 = 0;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  krb5_data_zero(v14);
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  *principal = 0u;
  v10 = krb5_auth_con_init(a1, &v25);
  if (v10 || (v10 = krb5_cc_get_principal(a1, a2, principal), v10))
  {
LABEL_3:
    credentials = v10;
    goto LABEL_4;
  }

  v13 = krb5_make_principal(a1, &principal[1], principal[0]->data, "krbtgt", principal[0]->data, 0);
  if (v13)
  {
    credentials = v13;
    krb5_free_principal(a1, principal[0]);
  }

  else
  {
    credentials = krb5_get_credentials(a1, 0, a2, principal, &v15);
    krb5_free_principal(a1, principal[1]);
    krb5_free_principal(a1, principal[0]);
    if (!credentials)
    {
      v10 = krb5_auth_con_add_AuthorizationData(a1, v25, 0x47u, v14);
      if (!v10)
      {
        v10 = krb5_mk_req_extended(a1, &v25, 4, 0, v15, a3);
        if (!v10)
        {
          v10 = _krb5_fast_cf2(a1, *(v25 + 5), "subkeyarmor", *(v25 + 4), "ticketarmor", a4, a5);
        }
      }

      goto LABEL_3;
    }
  }

LABEL_4:
  if (v25)
  {
    krb5_auth_con_free(a1, v25);
  }

  if (v15)
  {
    krb5_free_creds(a1, v15);
  }

  return credentials;
}

uint64_t sub_252286248(krb5_context a1, uint64_t a2, const char *a3)
{
  v7 = (a2 + 48);
  v6 = *(a2 + 48);
  if (v6)
  {
    if (*a2 != 1)
    {
      heim_abort("unknown state type: %d", *a2);
    }

    krb5_crypto_destroy(a1, v6);
  }

  else
  {
    if (!*(a2 + 16) && !*(a2 + 24))
    {
      v8 = *(a2 + 4);
      if ((v8 & 0x100) == 0)
      {
        if ((v8 & 0x20) == 0)
        {
          return 0;
        }

        v9 = 2529638953;
        krb5_set_error_message(a1, -1765328343, "Expected FAST, but no FAST was in the response from the KDC");
        return v9;
      }
    }

    *a2 = 1;
  }

  krb5_free_keyblock_contents(a1, (a2 + 56));
  v10 = *(a2 + 24);
  v11 = *(a2 + 4);
  if (!v10)
  {
    if ((v11 & 0x1000) == 0)
    {
      sub_2522A80F4();
    }

    v15 = *(a2 + 32);
    if (v15)
    {
      sub_25228B54C(v15);
      free(*(a2 + 32));
    }

    v16 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
    if (!v16)
    {
      return 12;
    }

    v17 = v16;
    if (*(a2 + 5))
    {
      memset(v24, 0, sizeof(v24));
      v21 = 0;
      v22 = 0;
      heim_base_once_f(&qword_27F4D9590, &qword_27F4D9598, sub_252286E84);
      if (!qword_27F4D9598)
      {
        free(v17);
        v9 = 2;
        krb5_set_error_message(a1, 2, "Failed to open fast armor service");
        return v9;
      }

      krb5_data_zero(&v21);
      v23[1] = a3;
      v23[0] = strlen(a3);
      v18 = heim_ipc_call(qword_27F4D9598, v23, &v21, 0);
      if (v18)
      {
        v9 = v18;
        krb5_set_error_message(a1, v18, "Failed to get armor service credential");
      }

      else
      {
        v9 = sub_25228B690(v22, v21, v24, 0);
        krb5_data_free(&v21);
        if (!v9)
        {
          v19 = sub_25228B55C(v17, v24);
          if (v19)
          {
            v9 = v19;
            sub_25228B6B0(v24);
          }

          else
          {
            v9 = krb5_copy_keyblock_contents(a1, &v24[1], (a2 + 56));
            sub_25228B6B0(v24);
            if (!v9)
            {
              v20 = krb5_crypto_init(a1, (a2 + 56), 0, v7);
              if (!v20)
              {
                goto LABEL_21;
              }

              v9 = v20;
            }
          }
        }
      }
    }

    else
    {
      *v16 = 1;
      v9 = sub_2522860A0(a1, *(a2 + 16), (v16 + 8), (a2 + 56), v7);
      if (!v9)
      {
LABEL_21:
        v9 = 0;
        *(a2 + 32) = v17;
        return v9;
      }
    }

    sub_25228B54C(v17);
    free(v17);
    return v9;
  }

  if ((v11 & 0x1000) != 0)
  {
    sub_2522A80DC();
  }

  v13 = *(v10 + 32);
  v12 = *(v10 + 40);

  return _krb5_fast_cf2(a1, v12, "subkeyarmor", v13, "ticketarmor", (a2 + 56), v7);
}

uint64_t sub_25228653C(_krb5_context *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v28 = 0;
  if ((*(a2 + 4) & 0x80) != 0)
  {
    sub_25226B748(a1, 10, "fast disabled, not doing any fast wrapping", a4);
    return 0;
  }

  v31 = 0;
  v32 = 0;
  v29 = 0;
  v30 = 0;
  v34 = 0u;
  memset(v35, 0, sizeof(v35));
  v36 = 0;
  memset(v33, 0, sizeof(v33));
  krb5_data_zero(&v31);
  krb5_data_zero(&v29);
  v8 = *(a2 + 4);
  if (!*(a2 + 48))
  {
    if ((v8 & 0x20) != 0)
    {
      v10 = 2529638953;
      krb5_set_error_message(a1, -1765328343, "Expected FAST, but no FAST was in the response from the KDC");
      return v10;
    }

    return 0;
  }

  *(a2 + 4) = v8 | 0x20;
  LODWORD(v33[0]) |= 2u;
  checksum = sub_25228ACB0((a4 + 2), &v33[1] + 8);
  if (!checksum)
  {
    if ((*(a2 + 5) & 0x10) == 0)
    {
LABEL_12:
      v12 = a4[1];
      if (v12)
      {
        v10 = sub_25228AC5C(v12, v33 + 8);
        sub_25228AC4C(a4[1]);
        if (v10)
        {
          goto LABEL_5;
        }

LABEL_22:
        v31 = sub_25228B52C(v33);
        v21 = malloc_type_malloc(v31, 0xF5760E69uLL);
        v32 = v21;
        if (v21)
        {
          v22 = sub_25228B50C(v21 + v31 - 1, v31, v33, &v28);
          if (v22)
          {
LABEL_24:
            v10 = v22;
            free(v32);
            v32 = 0;
            goto LABEL_5;
          }

          if (v31 != v28)
          {
            sub_2522A7C98();
          }

          LODWORD(v34) = *a2;
          if (v34 != 1)
          {
            krb5_data_free(&v31);
            heim_abort("unknown FAST type, internal error:false");
          }

          *(&v34 + 1) = *(a2 + 32);
          *(a2 + 32) = 0;
          v23 = *(a2 + 48);
          if (!v23)
          {
            sub_2522A813C();
          }

          checksum = krb5_create_checksum(a1, v23, 0x32u, 0, a3[1], *a3, v35);
          if (checksum)
          {
            goto LABEL_4;
          }

          v10 = krb5_encrypt_EncryptedData(a1, *(a2 + 48), 51, v32, v31, 0, &v35[3]);
          krb5_data_free(&v31);
          if (v10)
          {
            goto LABEL_5;
          }

          v31 = sub_25228B590(&v34);
          v24 = malloc_type_malloc(v31, 0x668A2151uLL);
          v32 = v24;
          if (v24)
          {
            v22 = sub_25228B570(v24 + v31 - 1, v31, &v34, &v28);
            if (!v22)
            {
              if (v31 != v28)
              {
                sub_2522A7C98();
              }

              v10 = krb5_padata_add(a1, a4[1], 136, v32, v31);
              if (!v10)
              {
                krb5_data_zero(&v31);
              }

              goto LABEL_5;
            }

            goto LABEL_24;
          }
        }

LABEL_44:
        v10 = 12;
        goto LABEL_5;
      }

      v20 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
      a4[1] = v20;
      if (v20)
      {
        goto LABEL_22;
      }

LABEL_25:
      checksum = krb5_enomem(a1);
      goto LABEL_4;
    }

    sub_25228ACA0((a4 + 2));
    v13 = strdup("WELLKNOWN:ANONYMOUS");
    a4[4] = v13;
    if (!v13)
    {
      goto LABEL_25;
    }

    v14 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800407C14B876uLL);
    a4[3] = v14;
    if (v14)
    {
      *v14 = 1;
      v14[2] = 2;
      *(a4[3] + 16) = malloc_type_calloc(2uLL, 8uLL, 0x10040436913F5uLL);
      v15 = a4[3];
      v16 = v15[2];
      if (v16)
      {
        *v16 = strdup("WELLKNOWN");
        v17 = *(a4[3] + 16);
        if (*v17)
        {
          v17[1] = strdup("ANONYMOUS");
          v18 = *(a4[3] + 16);
          if (*(v18 + 8))
          {
LABEL_40:
            v25 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
            a4[7] = v25;
            *v25 = 0;
            if (a3)
            {
              sub_2522A810C();
            }

            v29 = sub_25228AC90((a4 + 2));
            v26 = malloc_type_malloc(v29, 0x3FC9F0BEuLL);
            v30 = v26;
            if (!v26)
            {
              goto LABEL_44;
            }

            v27 = sub_25228AC70(v26 + v29 - 1, v29, (a4 + 2), &v28);
            if (v27)
            {
              v10 = v27;
              free(v30);
              v30 = 0;
              goto LABEL_5;
            }

            if (v29 != v28)
            {
              sub_2522A8124();
            }

            a3 = &v29;
            goto LABEL_12;
          }

          v19 = *v18;
        }

        else
        {
          v19 = 0;
        }

        free(v19);
        free(*(*(a4[3] + 16) + 8));
        free(*(a4[3] + 16));
        v15 = a4[3];
      }

      free(v15);
    }

    checksum = krb5_enomem(a1);
    if (checksum)
    {
      goto LABEL_4;
    }

    goto LABEL_40;
  }

LABEL_4:
  v10 = checksum;
LABEL_5:
  sub_25228B53C(v33);
  sub_25228B5A0(&v34);
  krb5_data_free(&v31);
  krb5_data_free(&v29);
  return v10;
}

uint64_t sub_2522869C8(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a2 + 48))
  {
    v8 = 2529639059;
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    if (*(a4 + 36) != -1765328293)
    {
      sub_25226B748(a1, 10, "using fast but no FAST error code ?");
    }

    v15 = 0;
    padata = krb5_find_padata(*(a3 + 8), *a3, 136, &v15);
    if (padata)
    {
      v10 = sub_252286B74(a1, a2, padata, v16);
      if (!v10)
      {
        v15 = 0;
        v12 = krb5_find_padata(*(&v16[0] + 1), v16[0], 137, &v15);
        if (!v12)
        {
          krb5_set_error_message(a1, -1765328237, "No wrapped error");
          goto LABEL_10;
        }

        v13 = v12;
        sub_25228B34C(a4);
        v10 = krb5_rd_error(a1, (v13 + 2), a4);
        if (!v10)
        {
          v14 = *(a4 + 96);
          if (v14)
          {
            sub_25226B748(a1, 10, "FAST wrapped KBB_ERROR contained e_data: %d", *v14);
          }

          sub_25228AC4C(a3);
          v8 = 0;
          *(a3 + 8) = *(&v16[0] + 1);
          *a3 = v16[0];
          *(&v16[0] + 1) = 0;
          LODWORD(v16[0]) = 0;
          goto LABEL_10;
        }
      }

      v8 = v10;
    }

    else
    {
      krb5_set_error_message(a1, -1765328237, "FAST fast respons is missing fx-fast data");
    }

LABEL_10:
    sub_25228B5D0(v16);
    return v8;
  }

  if ((*(a2 + 4) & 0x20) == 0)
  {
    return 0;
  }

  v8 = 2529638953;
  krb5_set_error_message(a1, -1765328343, "Expected FAST, but no FAST was in the response from the KDC", a4);
  return v8;
}

uint64_t sub_252286B74(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = 0;
  memset(v11, 0, sizeof(v11));
  v7 = sub_25228B5E0(*(a3 + 16), *(a3 + 8), v11, 0);
  if (!v7)
  {
    if (LODWORD(v11[0]) == 1)
    {
      v9 = 0;
      v10 = 0;
      v7 = krb5_decrypt_EncryptedData(a1, *(a2 + 48), 52, v11 + 8, &v9);
      if (!v7)
      {
        v7 = sub_25228B5B0(v10, v9, a4, 0);
        krb5_data_free(&v9);
      }
    }

    else
    {
      v7 = 2529638936;
    }

    sub_25228B600(v11);
  }

  return v7;
}

uint64_t sub_252286C38(krb5_context a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = 0;
  if (!a4)
  {
    return 0;
  }

  if (!*(a4 + 48) || (v8 = *(a5 + 8)) == 0 || (padata = krb5_find_padata(*(v8 + 8), *v8, 136, &v22)) == 0)
  {
    if ((*(a4 + 4) & 0x20) != 0)
    {
      v13 = 2529638953;
      krb5_set_error_message(a1, -1765328343, "Expected FAST, but no FAST was in the response from the KDC");
      return v13;
    }

    return 0;
  }

  v25 = 0;
  v23 = 0u;
  *v24 = 0u;
  v12 = sub_252286B74(a1, a4, padata, &v23);
  if (!v12)
  {
    sub_25228AC4C(*(a5 + 8));
    v12 = sub_25228AC5C(&v23, *(a5 + 8));
    if (!v12)
    {
      v15 = v24[0];
      if (!v24[0])
      {
        goto LABEL_17;
      }

      v18 = *(a4 + 80);
      v17 = (a4 + 80);
      v16 = v18;
      if (v18)
      {
        krb5_free_keyblock(a1, v16);
        v15 = v24[0];
      }

      v12 = krb5_copy_keyblock(a1, v15, v17);
      if (!v12)
      {
LABEL_17:
        v13 = 2529638936;
        if (v25 != a2)
        {
          goto LABEL_8;
        }

        if (!v24[1])
        {
          if (a3)
          {
            v13 = 2529638936;
          }

          else
          {
            v13 = 0;
          }

          goto LABEL_8;
        }

        v20 = 0uLL;
        v21 = 0;
        v19 = 0;
        v12 = sub_25228A694(&v24[1]->contents, &v19);
        if (!v12)
        {
          sub_25228A684(a5 + 16);
          *(a5 + 16) = v19;
          v13 = sub_25228A708(&v24[1][1], &v20);
          if (!v13)
          {
            sub_25228A6F8(a5 + 24);
            *(a5 + 24) = v20;
            *(a5 + 40) = v21;
          }

          goto LABEL_8;
        }
      }
    }
  }

  v13 = v12;
LABEL_8:
  sub_25228B5D0(&v23);
  return v13;
}

double sub_252286DEC(krb5_context a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    krb5_cc_close(a1, v4);
  }

  v5 = *(a2 + 40);
  if (v5)
  {
    krb5_free_principal(a1, v5);
  }

  v6 = *(a2 + 48);
  if (v6)
  {
    krb5_crypto_destroy(a1, v6);
  }

  v7 = *(a2 + 80);
  if (v7)
  {
    krb5_free_keyblock(a1, v7);
  }

  krb5_free_keyblock_contents(a1, (a2 + 56));
  v8 = *(a2 + 32);
  if (v8)
  {
    sub_25228B54C(v8);
    free(*(a2 + 32));
  }

  *(a2 + 80) = 0;
  result = 0.0;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return result;
}

size_t base64_encode(uint64_t a1, unsigned int a2, const char **a3)
{
  if (a2 >> 29 || (v6 = malloc_type_malloc((((1431655766 * (4 * a2)) >> 32) + 4), 0x100004077774924uLL)) == 0)
  {
    *a3 = 0;
    return 0xFFFFFFFFLL;
  }

  else
  {
    v7 = v6;
    if (a2)
    {
      v8 = 1;
      v7 = v6;
      do
      {
        v9 = *(a1 + v8 - 1) << 8;
        if (v8 < a2)
        {
          v9 |= *(a1 + v8);
        }

        v10 = (v9 << 8);
        if (v8 + 1 < a2)
        {
          v10 = v10 | *(a1 + v8 + 1);
        }

        v11 = v8 + 2;
        *v7 = aAbcdefghijklmn[v10 >> 18];
        v7[1] = aAbcdefghijklmn[(v10 >> 12) & 0x3F];
        v7[2] = aAbcdefghijklmn[(v10 >> 6) & 0x3F];
        v12 = aAbcdefghijklmn[v10 & 0x3F];
        if (v8 + 2 > a2)
        {
          v12 = 61;
        }

        v7[3] = v12;
        if (v8 + 1 > a2)
        {
          v7[2] = 61;
        }

        v7 += 4;
        v8 += 3;
      }

      while (v11 < a2);
    }

    *v7 = 0;
    *a3 = v6;
    return strlen(v6);
  }
}

uint64_t base64_decode(char *__s, _BYTE *a2)
{
  v2 = a2;
  v4 = a2;
  while (1)
  {
    v5 = *__s;
    if (v5 != 61 && (!*__s || !memchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", v5, 0x41uLL)))
    {
      return (v4 - v2);
    }

    if (strlen(__s) < 4)
    {
      return 0xFFFFFFFFLL;
    }

    v6 = 0;
    v7 = 0;
    v8 = 0;
    do
    {
      v8 <<= 6;
      v9 = __s[v6];
      if (v9 == 61)
      {
        ++v7;
      }

      else
      {
        if (v7 > 0)
        {
          return 0xFFFFFFFFLL;
        }

        v10 = 0;
        v11 = 65;
        while (v11 != v9)
        {
          v11 = aAbcdefghijklmn[++v10];
          if (v10 == 64)
          {
            LODWORD(v10) = -1;
            break;
          }
        }

        v8 += v10;
      }

      ++v6;
    }

    while (v6 != 4);
    if (v7 > 2)
    {
      return 0xFFFFFFFFLL;
    }

    v12 = v8 | (v7 << 24);
    if (v12 == -1)
    {
      return 0xFFFFFFFFLL;
    }

    *v4 = BYTE2(v8);
    if (v12 >> 25)
    {
      ++v4;
    }

    else
    {
      v4[1] = BYTE1(v8);
      if (HIBYTE(v12))
      {
        v4 += 2;
      }

      else
      {
        v4[2] = v8;
        v4 += 3;
      }
    }

    __s += 4;
  }
}

uint64_t sub_252287100(int a1)
{
  result = fcntl(a1, 1);
  if (result != -1)
  {
    return fcntl(a1, 2, result | 1);
  }

  return result;
}

uint64_t rk_cloexec_file(FILE *a1)
{
  v1 = fileno(a1);

  return sub_252287100(v1);
}

uint64_t sub_252287174(DIR *a1)
{
  v1 = dirfd(a1);

  return sub_252287100(v1);
}

void *sub_25228719C(size_t a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_calloc(a1, a2, a3);
  if (!result)
  {
    if (a2 * a1)
    {
      errx(1, "calloc %lu failed", a2 * a1);
    }
  }

  return result;
}

void *sub_2522871EC(size_t a1, malloc_type_id_t a2)
{
  result = malloc_type_malloc(a1, a2);
  if (a1)
  {
    if (!result)
    {
      errx(1, "malloc %lu failed", a1);
    }
  }

  return result;
}

void *sub_252287234(void *a1, size_t a2, malloc_type_id_t a3)
{
  result = malloc_type_realloc(a1, a2, a3);
  if (a2)
  {
    if (!result)
    {
      errx(1, "realloc %lu failed", a2);
    }
  }

  return result;
}

char *rk_estrdup(const char *a1)
{
  result = strdup(a1);
  if (!result)
  {
    sub_2522A8154();
  }

  return result;
}

uint64_t sub_2522872AC(char *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    v8 = 0;
    goto LABEL_8;
  }

  v6 = a2;
  v8 = malloc_type_malloc((2 * a2) | 1, 0x7F214C42uLL);
  if (!v8)
  {
LABEL_8:
    v9 = -1;
    goto LABEL_11;
  }

  if (v6)
  {
    v9 = 2 * v6;
    v10 = v8 + 1;
    do
    {
      *(v10 - 1) = *(a3 + (*a1 >> 4));
      v11 = *a1++;
      *v10 = *(a3 + (v11 & 0xF));
      v10 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {
    v9 = 0;
  }

  v8[v9] = 0;
LABEL_11:
  *a4 = v8;
  return v9;
}

unint64_t rk_hex_decode(char *a1, _BYTE *a2, size_t a3)
{
  v5 = a1;
  v6 = strlen(a1);
  v7 = v6 & 1;
  if (v7 + (v6 >> 1) > a3)
  {
    return -1;
  }

  v9 = v6;
  if (v6)
  {
    v10 = *v5++;
    *a2++ = sub_252287400(v10);
  }

  if (v9 >= 2)
  {
    v11 = v9 >> 1;
    v12 = v5 + 1;
    v13 = v11;
    do
    {
      v14 = sub_252287400(*(v12 - 1));
      *a2++ = sub_252287400(*v12) | (16 * v14);
      v12 += 2;
      --v13;
    }

    while (v13);
  }

  else
  {
    v11 = 0;
  }

  return v11 + v7;
}

uint64_t sub_252287400(unsigned __int8 a1)
{
  v1 = __toupper(a1);
  result = 0;
  LOBYTE(v3) = 48;
  while (v1 != v3)
  {
    v3 = a0123456789abcd[++result];
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

size_t sub_252287454(int a1, char *a2, size_t a3)
{
  if (!a3)
  {
    return a3;
  }

  v6 = a3;
  while (1)
  {
    while (1)
    {
      v7 = read(a1, a2, v6);
      v8 = v7;
      if ((v7 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (*__error() != 4)
      {
        return v8;
      }
    }

    if (!v7)
    {
      break;
    }

    a2 += v7;
    v6 -= v7;
    if (!v6)
    {
      return a3;
    }
  }

  return v8;
}

ssize_t sub_2522874D8(int __fd, char *__buf, size_t __nbyte)
{
  v3 = __nbyte;
  if (__nbyte)
  {
    v6 = __nbyte;
    do
    {
      while (1)
      {
        v7 = write(__fd, __buf, v6);
        v8 = v7;
        if (v7 < 0)
        {
          break;
        }

        __buf += v7;
        v6 -= v7;
        if (!v6)
        {
          return v3;
        }
      }
    }

    while (*__error() == 4);
    return v8;
  }

  return v3;
}

uint64_t sub_2522875FC(char *a1, const char **a2, char *a3, uint64_t (*a4)(uint64_t, uint64_t, void), uint64_t a5, int a6)
{
  if (a3)
  {
    v9 = *a2;
    if (!*a2)
    {
      return 0xFFFFFFFFLL;
    }

    v11 = a2 + 2;
    while (strcasecmp(v9, a3))
    {
      v12 = *v11;
      v11 += 2;
      v9 = v12;
      if (!v12)
      {
        return 0xFFFFFFFFLL;
      }
    }

    v13 = *(v11 - 2);
  }

  else
  {
    v13 = 1;
  }

  if (!*a1)
  {
    return a5;
  }

  v33 = v13;
  v14 = MEMORY[0x277D85DE0];
  while (2)
  {
    __endptr = 0;
    v15 = a1 - 1;
    do
    {
      v16 = v15[1];
      if (v16 < 0)
      {
        v17 = __maskrune(v15[1], 0x4000uLL);
      }

      else
      {
        v17 = *(v14 + 4 * v16 + 60) & 0x4000;
      }

      ++v15;
    }

    while (v16 == 44 || v17 != 0);
    v19 = strtol(v15, &__endptr, 0);
    v20 = __endptr;
    if (v15 == __endptr)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19;
    }

    if (!a6 && v15 == __endptr)
    {
      return 0xFFFFFFFFLL;
    }

    a1 = __endptr;
    do
    {
      v22 = *a1;
      if (v22 < 0)
      {
        v23 = __maskrune(*a1, 0x4000uLL);
      }

      else
      {
        v23 = *(v14 + 4 * v22 + 60) & 0x4000;
      }

      ++a1;
    }

    while (v23);
    if (v22 == 43)
    {
      LODWORD(v21) = 1;
    }

    else if (v22 == 45)
    {
      LODWORD(v21) = -1;
    }

    else
    {
      if (!v22)
      {
        return a4(a5, v21, v33);
      }

      --a1;
    }

    if (v21)
    {
      v24 = 0;
    }

    else
    {
      v24 = v15 == v20;
    }

    if (v24)
    {
      v21 = 1;
    }

    else
    {
      v21 = v21;
    }

    v25 = strcspn(a1, ", \t");
    v26 = v25;
    if (v25 >= 2 && a1[v25 - 1] == 115)
    {
      v26 = v25 - 1;
    }

    v27 = *a2;
    if (!*a2)
    {
      return 0xFFFFFFFFLL;
    }

    v28 = 0;
    v29 = 0;
    v30 = a2;
    while (strncasecmp(a1, v27, v26))
    {
LABEL_50:
      v31 = v30[2];
      v30 += 2;
      v27 = v31;
      if (!v31)
      {
        goto LABEL_51;
      }
    }

    if (v26 != strlen(v27))
    {
      ++v28;
      v29 = v30;
      goto LABEL_50;
    }

    a5 = a4(a5, v21, *(v30 + 2));
    if ((a5 & 0x80000000) != 0)
    {
      return a5;
    }

    a1 += v26;
    if (*v30)
    {
      goto LABEL_54;
    }

LABEL_51:
    if (v28 != 1)
    {
      return 0xFFFFFFFFLL;
    }

    a5 = a4(a5, v21, *(v29 + 2));
    if ((a5 & 0x80000000) != 0)
    {
      return a5;
    }

    a1 += v26;
LABEL_54:
    if (*a1 == 115)
    {
      ++a1;
    }

    if (*a1)
    {
      continue;
    }

    return a5;
  }
}

uint64_t sub_25228789C(int a1, int a2, unsigned int a3)
{
  if (a2 == 1)
  {
    v3 = a3 | a1;
  }

  else
  {
    v3 = -1;
  }

  if (!a2)
  {
    v3 = a3;
  }

  if (a2 == -1)
  {
    return a1 & ~a3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2522878F0(uint64_t a1, uint64_t a2, char *__str, size_t __size, uint64_t (*a5)(char *, size_t, uint64_t, void, uint64_t), uint64_t (*a6)(uint64_t), const char *a7)
{
  v7 = __size;
  v8 = __str;
  if (!a1)
  {
    return snprintf(__str, __size, "%s", a7);
  }

  v9 = a1;
  if (a1 < 1)
  {
    return 0;
  }

  v13 = 0;
  while (*a2)
  {
    v14 = *(a2 + 8);
    if (v14 <= v9)
    {
      v15 = v9 / v14;
      v9 = a6(v9);
      v16 = a5(v8, v7, v15, *a2, v9);
      if ((v16 & 0x80000000) != 0)
      {
        return v16;
      }

      v17 = v16 <= v7;
      if (v16 <= v7)
      {
        v7 -= v16;
      }

      else
      {
        v7 = 0;
      }

      if (v17)
      {
        v8 += v16;
      }

      else
      {
        v8 = 0;
      }

      v13 = (v16 + v13);
    }

    a2 += 16;
    if (v9 <= 0)
    {
      return v13;
    }
  }

  return v13;
}

uint64_t sub_2522879E8(char *a1, size_t a2, int a3, const char *a4, int a5)
{
  v5 = "s";
  v6 = "";
  if (a3 == 1)
  {
    v5 = "";
  }

  if (a5 > 0)
  {
    v6 = " ";
  }

  return snprintf(a1, a2, "%d %s%s%s", a3, a4, v5, v6);
}

uint64_t sub_252287A78(uint64_t result, unsigned int a2)
{
  if (a2 <= result)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

const char *sub_252287A84(const char *result, FILE *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = *result;
  if (*result)
  {
    v4 = result;
    v5 = 0;
    v6 = 16;
    result = *result;
    do
    {
      v7 = strlen(result);
      if (v5 <= v7)
      {
        v5 = v7;
      }

      result = *&v4[v6];
      v6 += 16;
    }

    while (result);
    if (v2)
    {
      do
      {
        v8 = v4;
        v9 = v4 + 16;
        do
        {
          v4 = v9;
          if (!*v9)
          {
            result = fprintf(a2, "1 %s\n");
            goto LABEL_17;
          }

          v10 = *(v8 + 2);
          v9 += 16;
        }

        while (*(v4 + 2) == v10);
        v11 = v4;
        while (v10 % *(v11 + 2))
        {
          v12 = *(v11 + 2);
          v11 += 16;
          if (!v12)
          {
            v13 = -16;
            goto LABEL_16;
          }
        }

        v13 = 0;
LABEL_16:
        sub_2522878F0(v10, &v11[v13], __str, 0x400uLL, sub_2522879E8, sub_252287A40, "0");
        result = fprintf(a2, "1 %*s = %s\n");
LABEL_17:
        ;
      }

      while (*v4);
    }
  }

  return result;
}

uint64_t sub_252287C28(char *a1, size_t a2, uint64_t a3, const char *a4, int a5)
{
  v5 = "";
  if (a5 > 0)
  {
    v5 = ", ";
  }

  return snprintf(a1, a2, "%s%s", a4, v5);
}

const char **print_flags_table(const char **result, FILE *a2)
{
  v2 = *result;
  if (*result)
  {
    v4 = result + 2;
    do
    {
      if (*v4)
      {
        v5 = ", ";
      }

      else
      {
        v5 = "\n";
      }

      result = fprintf(a2, "%s%s", v2, v5);
      v6 = *v4;
      v4 += 2;
      v2 = v6;
    }

    while (v6);
  }

  return result;
}

unsigned __int8 *rk_strlwr(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1 + 1;
    do
    {
      *(v3 - 1) = __tolower(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return a1;
}

void sub_252287D38(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  free(a1);
}

void **rk_strpoolprintf(void **a1, char *a2, ...)
{
  va_start(va, a2);
  v3 = a1;
  if (!a1)
  {
    v4 = malloc_type_malloc(0x10uLL, 0x1010040FDD9F14CuLL);
    v3 = v4;
    if (!v4)
    {
      return v3;
    }

    *v4 = 0;
    v4[1] = 0;
  }

  __src[0] = 0;
  va_copy(&__src[1], va);
  v5 = vasprintf(__src, a2, va);
  if (__src[0] && (v6 = v5, (v7 = malloc_type_realloc(*v3, v3[1] + v5 + 1, 0x52B4E89uLL)) != 0))
  {
    *v3 = v7;
    memcpy(v3[1] + v7, __src[0], v6 + 1);
    v3[1] = v3[1] + v6;
    free(__src[0]);
  }

  else
  {
    sub_252287D38(v3);
    return 0;
  }

  return v3;
}

char *rk_strpoolcollect(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    free(a1);
    return v2;
  }

  else
  {

    return strdup("");
  }
}

uint64_t rk_strsep_copy(const char **a1, const char *a2, void *a3, size_t a4)
{
  v4 = *a1;
  if (!*a1)
  {
    return -1;
  }

  v8 = strcspn(*a1, a2);
  v9 = &v4[v8];
  *a1 = &v4[v8];
  if (a4)
  {
    if (v8 < a4)
    {
      a4 = v8;
    }

    memcpy(a3, v4, a4);
    *(a3 + a4) = 0;
    v9 = *a1;
  }

  result = v9 - v4;
  v12 = *v9;
  v11 = v9 + 1;
  if (!v12)
  {
    v11 = 0;
  }

  *a1 = v11;
  return result;
}

unsigned __int8 *rk_strupr(unsigned __int8 *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = a1 + 1;
    do
    {
      *(v3 - 1) = __toupper(v2);
      v4 = *v3++;
      v2 = v4;
    }

    while (v4);
  }

  return a1;
}

void sub_252287F68(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    free(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    do
    {
      v4 = *(v3 + 32);
      sub_252287FC0(v3);
      v3 = v4;
    }

    while (v4);
  }

  free(a1);
}

void sub_252287FC0(void **a1)
{
  v2 = *a1;
  if (v2)
  {
    free(v2);
  }

  v3 = a1[3];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

_DWORD *sub_25228800C(unsigned __int16 *a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = malloc_type_calloc(1uLL, 0x38uLL, 0x1030040EB7735E0uLL);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  v20 = a1;
  *v4 = __rev16(*a1);
  v4[1] = 0;
  v6 = a1[1] & 1;
  v4[1] = v6;
  v4[2] = (*(a1 + 2) >> 1) & 0xF;
  v7 = *(a1 + 2);
  if ((v7 & 0x20) == 0)
  {
    if ((a1[1] & 0x40) == 0)
    {
      goto LABEL_4;
    }

LABEL_15:
    v6 |= 4u;
    v4[1] = v6;
    if ((a1[1] & 0x80) == 0)
    {
      goto LABEL_5;
    }

    goto LABEL_16;
  }

  v6 |= 2u;
  v4[1] = v6;
  v7 = *(a1 + 2);
  if ((v7 & 0x40) != 0)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((v7 & 0x80) == 0)
  {
    goto LABEL_5;
  }

LABEL_16:
  v6 |= 8u;
  v4[1] = v6;
LABEL_5:
  v8 = *(a1 + 3);
  if ((v8 & 1) == 0)
  {
    if ((v8 & 4) == 0)
    {
      goto LABEL_7;
    }

LABEL_18:
    v6 |= 2u;
    v4[1] = v6;
    v8 = *(a1 + 3);
    if ((v8 & 8) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 |= 0x10u;
  v4[1] = v6;
  v8 = *(a1 + 3);
  if ((v8 & 4) != 0)
  {
    goto LABEL_18;
  }

LABEL_7:
  if ((v8 & 8) != 0)
  {
LABEL_8:
    v4[1] = v6 | 0x40;
    v8 = *(a1 + 3);
  }

LABEL_9:
  v4[3] = v8 >> 4;
  v9 = __rev16(a1[2]);
  v4[4] = v9;
  v4[5] = __rev16(a1[3]);
  v4[6] = __rev16(a1[4]);
  v4[7] = __rev16(a1[5]);
  if (v9 == 1)
  {
    v10 = a1 + a2;
    v11 = res_9_dn_expand(a1, v10, a1 + 12, __s1, 1025);
    if ((v11 & 0x80000000) == 0)
    {
      v12 = v11;
      v13 = strdup(__s1);
      *(v5 + 4) = v13;
      if (v13)
      {
        v14 = (a1 + v12 + 12);
        if (v14 + 2 <= v10)
        {
          v5[10] = __rev16(*v14);
          v5[11] = __rev16(v14[1]);
          v20 = v14 + 2;
          v16 = (v5 + 12);
          if (v5[5])
          {
            v17 = 0;
            while (!sub_2522882BC(a1, v10, &v20, v16))
            {
              v16 = (*v16 + 4);
              if (++v17 >= v5[5])
              {
                goto LABEL_27;
              }
            }
          }

          else
          {
LABEL_27:
            if (v5[6])
            {
              v18 = 0;
              while (!sub_2522882BC(a1, v10, &v20, v16))
              {
                v16 = (*v16 + 4);
                if (++v18 >= v5[6])
                {
                  goto LABEL_31;
                }
              }
            }

            else
            {
LABEL_31:
              if (!v5[7])
              {
LABEL_35:
                *v16 = 0;
                return v5;
              }

              v19 = 0;
              while (!sub_2522882BC(a1, v10, &v20, v16))
              {
                v16 = (*v16 + 4);
                if (++v19 >= v5[7])
                {
                  goto LABEL_35;
                }
              }
            }
          }
        }
      }
    }

    sub_252287F68(v5);
  }

  else
  {
    free(v4);
  }

  return 0;
}

uint64_t sub_2522882BC(const u_char *a1, const u_char *a2, const u_char **a3, void ***a4)
{
  v45 = *MEMORY[0x277D85DE8];
  v8 = *a3;
  *a4 = 0;
  v9 = res_9_dn_expand(a1, a2, v8, __s1, 1025);
  if ((v9 & 0x80000000) != 0)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = &v8[v9];
  v11 = (v10 + 10);
  if (v10 + 10 > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = __rev16(*(v10 + 4));
  if (&v11[v12] > a2)
  {
    return 0xFFFFFFFFLL;
  }

  v42 = &v11[v12];
  v13 = *v10;
  v14 = *(v10 + 1);
  v15 = *(v10 + 1);
  v16 = malloc_type_calloc(1uLL, 0x28uLL, 0x10B2040F871B7ADuLL);
  if (!v16)
  {
    return 0xFFFFFFFFLL;
  }

  v43 = v16;
  v17 = strdup(__s1);
  *v43 = v17;
  if (!v17)
  {
    goto LABEL_50;
  }

  v18 = __rev16(v13);
  *(v43 + 2) = v18;
  *(v43 + 3) = __rev16(v14);
  *(v43 + 4) = bswap32(v15);
  *(v43 + 5) = v12;
  if (v18 <= 23)
  {
    if (v18 <= 14)
    {
      if (v18 != 2 && v18 != 5 && v18 != 12)
      {
LABEL_56:
        v30 = malloc_type_malloc(v12, 0x100004077774924uLL);
        v22 = v43;
        v43[3] = v30;
        if (!v12 || v30)
        {
          if (v12)
          {
            v31 = v10 + 10;
            goto LABEL_62;
          }

LABEL_64:
          result = 0;
          *a3 = v42;
          *a4 = v22;
          return result;
        }

        goto LABEL_65;
      }

      if ((res_9_dn_expand(a1, a2, v10 + 10, __s1, 1025) & 0x80000000) == 0)
      {
        v21 = strdup(__s1);
        v22 = v43;
        v43[3] = v21;
        if (v21)
        {
          goto LABEL_64;
        }

        goto LABEL_65;
      }

      goto LABEL_55;
    }

    if (v18 != 15)
    {
      if (v18 == 16)
      {
        if (v12)
        {
          v38 = *v11;
          if (v12 > v38)
          {
            v39 = malloc_type_malloc(v38 + 1, 0x100004077774924uLL);
            v43[3] = v39;
            if (v39)
            {
              strncpy(v39, v10 + 11, v10[10]);
              v22 = v43;
              *(v43[3] + v10[10]) = 0;
              goto LABEL_64;
            }

            v37 = v43;
            goto LABEL_66;
          }
        }

        goto LABEL_55;
      }

      if (v18 != 18)
      {
        goto LABEL_56;
      }
    }

    v27 = res_9_dn_expand(a1, a2, v10 + 12, __s1, 1025);
    if ((v27 & 0x80000000) == 0 && v27 + 2 <= v12)
    {
      v24 = strlen(__s1);
      v28 = malloc_type_malloc(v24 + 8, 0x100004090D0E795uLL);
      v43[3] = v28;
      if (!v28)
      {
        v37 = v43;
        goto LABEL_66;
      }

      *v28 = __rev16(*(v10 + 5));
      v26 = v43[3] + 4;
LABEL_34:
      strlcpy(v26, __s1, v24 + 1);
LABEL_63:
      v22 = v43;
      goto LABEL_64;
    }

LABEL_55:
    v37 = v43;
    goto LABEL_66;
  }

  if (v18 <= 36)
  {
    if (v18 != 24)
    {
      if (v18 != 25)
      {
        if (v18 != 33)
        {
          goto LABEL_56;
        }

        v23 = res_9_dn_expand(a1, a2, v10 + 16, __s1, 1025);
        if (v23 < 0 || v23 + 6 > v12)
        {
          goto LABEL_55;
        }

        v24 = strlen(__s1);
        v25 = malloc_type_malloc(v24 + 16, 0x10000408B6DE1C6uLL);
        v22 = v43;
        v43[3] = v25;
        if (v25)
        {
          *v25 = __rev16(*(v10 + 5));
          *(v43[3] + 1) = __rev16(*(v10 + 6));
          *(v43[3] + 2) = __rev16(*(v10 + 7));
          v26 = v43[3] + 12;
          goto LABEL_34;
        }

        goto LABEL_65;
      }

      goto LABEL_41;
    }

    if (v12 <= 0x12)
    {
      goto LABEL_50;
    }

    v33 = res_9_dn_expand(a1, a2, v10 + 28, __s1, 1025);
    if ((v33 & 0x80000000) != 0)
    {
      goto LABEL_55;
    }

    v34 = v33;
    if (v33 + 18 > v12)
    {
      goto LABEL_55;
    }

    v35 = v12 - v33 - 18;
    v24 = strlen(__s1);
    v36 = malloc_type_malloc(v35 + v24 + 56, 0x1010040B631D888uLL);
    v22 = v43;
    v43[3] = v36;
    if (v36)
    {
      *v36 = __rev16(*(v10 + 5));
      *(v43[3] + 1) = v10[12];
      *(v43[3] + 2) = v10[13];
      *(v43[3] + 3) = bswap32(*(v10 + 14));
      *(v43[3] + 4) = bswap32(*(v10 + 18));
      *(v43[3] + 5) = bswap32(*(v10 + 22));
      *(v43[3] + 6) = __rev16(*(v10 + 13));
      *(v43[3] + 5) = v35;
      memcpy(v43[3] + 48, &v10[v34 + 28], v35);
      *(v43[3] + 4) = v43[3] + v35 + 48;
      v26 = *(v43[3] + 4);
      goto LABEL_34;
    }

LABEL_65:
    v37 = v22;
    goto LABEL_66;
  }

  if (v18 == 37)
  {
    if (v12 > 4)
    {
      v12 = (v12 - 5);
      v40 = malloc_type_malloc(v12 + 31, 0x1000040C9C95C44uLL);
      v22 = v43;
      v43[3] = v40;
      if (v40)
      {
        *v40 = __rev16(*(v10 + 5));
        *(v43[3] + 1) = __rev16(*(v10 + 6));
        *(v43[3] + 2) = v10[14];
        *(v43[3] + 2) = v12;
        v30 = v43[3] + 24;
        v31 = v10 + 15;
        goto LABEL_62;
      }

      goto LABEL_65;
    }

    goto LABEL_50;
  }

  if (v18 != 43)
  {
    if (v18 != 44)
    {
      goto LABEL_56;
    }

    if (v12 <= 1)
    {
      goto LABEL_55;
    }

    v12 = (v12 - 2);
    v29 = malloc_type_malloc(v12 + 23, 0x100004057661CB1uLL);
    v22 = v43;
    v43[3] = v29;
    if (v29)
    {
      *v29 = v10[10];
      *(v43[3] + 1) = v10[11];
      *(v43[3] + 1) = v12;
      v30 = v43[3] + 16;
      v31 = v10 + 12;
      goto LABEL_62;
    }

    goto LABEL_65;
  }

LABEL_41:
  if (v12 > 3)
  {
    v12 = (v12 - 4);
    v32 = malloc_type_malloc(v12 + 31, 0x1000040C9C95C44uLL);
    v22 = v43;
    v43[3] = v32;
    if (!v32)
    {
      goto LABEL_65;
    }

    *v32 = __rev16(*(v10 + 5));
    *(v43[3] + 1) = v10[12];
    *(v43[3] + 2) = v10[13];
    *(v43[3] + 2) = v12;
    v30 = v43[3] + 24;
    v31 = v10 + 14;
LABEL_62:
    memcpy(v30, v31, v12);
    goto LABEL_63;
  }

LABEL_50:
  v37 = v43;
LABEL_66:
  sub_252287FC0(v37);
  return 0xFFFFFFFFLL;
}

_DWORD *sub_2522888AC(const char *a1, char *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = "a";
  v5 = &off_2796FFA70;
  while (strcasecmp(a2, v4))
  {
    v6 = *v5;
    v5 += 2;
    v4 = v6;
    if (!v6)
    {
      goto LABEL_29;
    }
  }

  v7 = *(v5 - 2);
  if (v7 == -1)
  {
LABEL_29:
    if (dword_27F4D9834)
    {
    }

    return 0;
  }

  fromlen = 128;
  v8 = dns_open(0);
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = 1500;
    from = 0;
    v25 = 0u;
    v12 = MEMORY[0x277D85DF8];
    while (1)
    {
      do
      {
        v13 = v11;
        if (v10)
        {
          free(v10);
        }

        if (dword_27F4D9834)
        {
          dns_set_debug(v9, 1u);
          v14 = "a";
          if (v7 != 1)
          {
            v15 = &dword_2796FFA78;
            do
            {
              v14 = *(v15 - 1);
              if (!v14)
              {
                break;
              }

              v16 = *v15;
              v15 += 4;
            }

            while (v16 != v7);
          }

          fprintf(*v12, "dns_lookup(%s, %d, %s), buffer size %d\n", a1, 1, v14, v11);
        }

        v17 = malloc_type_malloc(v11, 0x9795A0BEuLL);
        if (!v17)
        {
          dns_free(v9);
          return 0;
        }

        v10 = v17;
        v11 = dns_search(v9, a1, 1u, v7, v17, v11, &from, &fromlen);
        if (dword_27F4D9834)
        {
          v18 = "a";
          if (v7 != 1)
          {
            v19 = &dword_2796FFA78;
            do
            {
              v18 = *(v19 - 1);
              if (!v18)
              {
                break;
              }

              v20 = *v19;
              v19 += 4;
            }

            while (v20 != v7);
          }

          fprintf(*v12, "dns_lookup(%s, %d, %s) --> %d\n", a1, 1, v18, v11);
        }
      }

      while (v11 > v13);
      if (v11 > 0)
      {
        v21 = sub_25228800C(v10, v11);
        free(v10);
        dns_free(v9);
        return v21;
      }

      if (v13 > 65534)
      {
        break;
      }

      if ((2 * v13) >= 0xFFFF)
      {
        v11 = 0xFFFF;
      }

      else
      {
        v11 = 2 * v13;
      }
    }

    dns_free(v9);
    free(v10);
  }

  return 0;
}

uint64_t sub_252288B34(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 2)
  {
    return 4;
  }

  else
  {
    return 16 * (v1 == 30);
  }
}

uint64_t rk_socket_sockaddr_size(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30)
  {
    v2 = 28;
  }

  else
  {
    v2 = 0;
  }

  if (v1 == 2)
  {
    return 16;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_252288B74(uint64_t a1)
{
  v1 = *(a1 + 1);
  if (v1 == 30 || v1 == 2)
  {
    return *(a1 + 2);
  }

  else
  {
    return 0;
  }
}