uint64_t sub_252260D98(_krb5_context *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v12 = *(a5 + 8);
  if (v12)
  {
    sub_25226227C(a1, v12);
    v13 = *(a5 + 8);
    v14 = *(a5 + 120);
    if (v13)
    {
      LODWORD(v16[0]) = *(a5 + 120);
      if (sub_252261E04(a1, *a3, a4, v16, v13))
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
    v14 = *(a5 + 120);
  }

  if (*(a2 + 448) || (*(a2 + 448) = v14, *(a2 + 480) = 0, result = krb5_get_pw_salt(a1, *a3, a2 + 456), !result))
  {
LABEL_7:
    result = sub_25226236C(a1, a2, a4, a5, a6, *(a5 + 8), 0);
    if (result)
    {
      if (result == -1980176628)
      {
        sub_25226B748(a1, 0, "In final stretch and pa require more stepping ?");
        return 2314790668;
      }
    }

    else
    {
      sub_25226B748(a1, 0, "final pamech done step");
      sub_252261EDC(a1, v16);
      return 0;
    }
  }

  return result;
}

uint64_t sub_252260ED8(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0;
  v27 = 0;
  memset(&v25, 0, sizeof(v25));
  memset(&v24, 0, sizeof(v24));
  memset(v23, 0, sizeof(v23));
  v21 = 0;
  v22 = 0;
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v15 = 0;
  krb5_keyblock_zero(&v24);
  krb5_keyblock_zero(&v25);
  v8 = *(a3 + 8);
  if (!v8 || (padata = krb5_find_padata(*(v8 + 8), *v8, 147, &v15)) == 0)
  {
    if ((*(a2 + 2) & 1) == 0 || !*(a2 + 376))
    {
      return 0;
    }

    v13 = 2529639059;
    krb5_set_error_message(a1, -1765328237, "Requested anonymous with PKINIT and KDC didn't set PKINIT_KX");
    return v13;
  }

  v10 = *(a2 + 944);
  if (!v10)
  {
    sub_2522A7CF8();
  }

  v11 = padata;
  v12 = krb5_crypto_init(a1, v10, 0, &v27);
  if (!v12)
  {
    v12 = sub_25228A958(*(v11 + 2), *(v11 + 1), v23, &v16);
    if (!v12)
    {
      v13 = krb5_decrypt_EncryptedData(a1, v27, 44, v23, &v21);
      sub_25228A9A8(v23);
      if (v13)
      {
        goto LABEL_7;
      }

      v12 = decode_EncryptionKey(v22, v21, &v25, &v16);
      if (!v12)
      {
        v12 = krb5_crypto_init(a1, &v25, 0, &v26);
        if (!v12)
        {
          v19 = 6;
          v20 = "PKINIT";
          v17 = 11;
          v18 = "KEYEXCHANGE";
          v12 = krb5_crypto_fx_cf2(a1, v26, v27, &v19, &v17, v25.magic, &v24);
          if (!v12)
          {
            if (v24.magic == *a4 && !krb5_data_ct_cmp(&v24.length, (a4 + 8)))
            {
              v13 = 0;
              *(a2 + 384) |= 0x20u;
            }

            else
            {
              v13 = 2529639059;
              krb5_set_error_message(a1, -1765328237, "PKINIT-KX session key doesn't match");
            }

            goto LABEL_7;
          }
        }
      }
    }
  }

  v13 = v12;
LABEL_7:
  krb5_free_keyblock_contents(a1, &v25);
  krb5_free_keyblock_contents(a1, &v24);
  if (v27)
  {
    krb5_crypto_destroy(a1, v27);
  }

  if (v26)
  {
    krb5_crypto_destroy(a1, v26);
  }

  return v13;
}

uint64_t sub_252261124(_krb5_context *a1, krb5_principal_data *a2, char *a3, char *a4, krb5_error_code (__cdecl *a5)(krb5_context, void *, const char *, const char *, int, krb5_prompt[]), void *a6, uint64_t a7)
{
  v38 = *MEMORY[0x277D85DE8];
  result_code = 0;
  *&result_code_string.magic = 0;
  result_code_string.data = 0;
  *&result_string.magic = 0;
  result_string.data = 0;
  opt = 0;
  v21 = 0;
  memset(&creds, 0, 144);
  init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(a1, &opt);
  if (!init_creds_opt_alloc)
  {
    krb5_get_init_creds_opt_set_tkt_life(opt, 60);
    krb5_get_init_creds_opt_set_forwardable(opt, 0);
    krb5_get_init_creds_opt_set_proxiable(opt, 0);
    if (a7 && (*a7 & 0x40) != 0)
    {
      krb5_get_init_creds_opt_set_preauth_list(opt, *(a7 + 64), *(a7 + 72));
    }

    krb5_data_zero(&result_code_string);
    krb5_data_zero(&result_string);
    init_creds_opt_alloc = krb5_get_init_creds_password(a1, &creds, a2, a3, a5, a6, 0, "kadmin/changepw", opt);
    krb5_get_init_creds_opt_free(a1, opt);
    if (init_creds_opt_alloc)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v26[0] = 1024;
      v26[1] = __s1;
      v31 = 1;
      v30 = "New password: ";
      v32 = v26;
      v33 = 2;
      v27[0] = 1024;
      v27[1] = __s2;
      v35 = 1;
      v34 = "Repeat new password: ";
      v36 = v27;
      v37 = 3;
      if ((a5)(a1, a6, 0, "Changing password", 2, &v30))
      {
        init_creds_opt_alloc = 2529639044;
        goto LABEL_25;
      }

      if (!strcmp(__s1, __s2))
      {
        break;
      }

      bzero(__s1, 0x400uLL);
      bzero(__s2, 0x400uLL);
    }

    v15 = krb5_set_password(a1, &creds, __s1, 0, &result_code, &result_code_string, &result_string);
    if (v15)
    {
      init_creds_opt_alloc = v15;
LABEL_25:
      bzero(__s1, 0x400uLL);
      bzero(__s2, 0x400uLL);
      krb5_data_free(&result_string);
      krb5_data_free(&result_code_string);
      krb5_free_cred_contents(a1, &creds);
      return init_creds_opt_alloc;
    }

    if (result_code)
    {
      data = result_code_string.data;
      v17 = "";
      if (!*&result_code_string.magic)
      {
        data = "";
      }

      if (*&result_string.magic)
      {
        v17 = result_string.data;
      }

      if (asprintf(&v21, "Failed: %.*s %.*s: %d\n", result_code_string.magic, data, result_string.magic, v17, result_code) < 0)
      {
        init_creds_opt_alloc = 12;
        goto LABEL_25;
      }

      v18 = v21;
    }

    else
    {
      v18 = strdup("Success");
      v21 = v18;
    }

    (a5)(a1, a6, 0, v18, 0, 0);
    if (result_code)
    {
      init_creds_opt_alloc = 25;
      krb5_set_error_message(a1, 25, "failed changing password: %s", v21);
    }

    else
    {
      strlcpy(a4, __s1, 0x400uLL);
      init_creds_opt_alloc = 0;
    }

    free(v21);
    goto LABEL_25;
  }

  return init_creds_opt_alloc;
}

uint64_t krb5_init_creds_get_as_reply_key(_krb5_context *a1, uint64_t a2, krb5_keyblock *a3)
{
  v3 = *(a2 + 1032);
  if (v3)
  {
    return krb5_copy_keyblock_contents(a1, v3, a3);
  }

  else
  {
    return 2529638937;
  }
}

uint64_t krb5_init_creds_set_nonce(uint64_t a1, uint64_t a2, int a3)
{
  *(a2 + 184) = a3;
  *(a2 + 188) = a3;
  return 0;
}

uint64_t krb5_init_creds_store_config(_krb5_context *a1, uint64_t a2, _krb5_ccache *a3)
{
  v6 = *(a2 + 392);
  if (!v6 || (*&v9.magic = strlen(*(a2 + 392)), v9.data = v6, result = krb5_cc_set_config(a1, a3, 0, "lkdc-hostname", &v9), !result))
  {
    v8 = *(a2 + 400);
    if (!v8)
    {
      return 0;
    }

    *&v9.magic = strlen(v8);
    v9.data = v8;
    result = krb5_cc_set_config(a1, a3, 0, "sitename", &v9);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t krb5_init_creds_store(krb5_context a1, uint64_t a2, krb5_ccache cache)
{
  v6 = (a2 + 8);
  v5 = *(a2 + 8);
  if (v5)
  {
    v8 = krb5_cc_initialize(a1, cache, v5);
    if (v8)
    {
      return v8;
    }

    v8 = krb5_cc_store_cred(a1, cache, v6);
    if (v8)
    {
      return v8;
    }

    if ((*(a2 + 145) & 0x80) != 0 && (v11 = xmmword_2796FF448, v8 = krb5_cc_set_config(a1, cache, *(a2 + 16), "fast_avail", &v11), v8))
    {
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v9 = 2529638937;
    krb5_set_error_message(a1, -1765328359, "init creds not completed yet");
  }

  return v9;
}

void krb5_init_creds_free(_krb5_context *a1, void *a2)
{
  sub_25225F530(a1, a2);

  free(a2);
}

uint64_t krb5_init_creds_get(_krb5_context *a1, uint64_t a2)
{
  v14.data = 0;
  v15 = 0;
  *&v14.magic = 0;
  v13[0] = 0;
  v13[1] = 0;
  krb5_data_zero(&v14);
  krb5_data_zero(v13);
  inited = krb5_sendto_ctx_alloc(a1, &v15);
  if (!inited)
  {
    krb5_sendto_ctx_set_func(v15, sub_25227A434, 0);
    v5 = *(a2 + 392);
    if (v5)
    {
      sub_25227A1EC(a1, v15, v5);
    }

    v6 = *(a2 + 400);
    if (v6)
    {
      sub_25227A244(a1, v15, v6);
    }

    if ((*(a2 + 444) & 8) != 0)
    {
      krb5_sendto_set_delegated_app(a1, v15, (a2 + 408), *(a2 + 424), *(a2 + 432));
    }

    while (1)
    {
      *&v10.tv_usec = 0;
      v11 = 0;
      *&v9.tv_usec = 0;
      v10.tv_sec = 0;
      v9.tv_sec = 0;
      v12 = 0;
      inited = krb5_init_creds_step(a1, a2, &v14, v13, 0, &v11, &v12);
      krb5_data_free(&v14);
      if (inited)
      {
        break;
      }

      if ((v12 & 1) == 0)
      {
        inited = 0;
        break;
      }

      gettimeofday(&v10, 0);
      v7 = krb5_sendto_context(a1, v15, v13, v11, &v14);
      if (v7)
      {
        inited = v7;
        break;
      }

      gettimeofday(&v9, 0);
      sub_2522A3BC0(&v9, &v10);
      sub_2522A3B60(a2 + 1080, &v9);
    }
  }

  if (v15)
  {
    krb5_sendto_ctx_free(a1, v15);
  }

  return inited;
}

krb5_error_code krb5_get_init_creds_password(krb5_context context, krb5_creds *creds, krb5_principal client, char *password, krb5_prompter_fct prompter, void *data, krb5_deltat start_time, char *in_tkt_service, krb5_get_init_creds_opt *k5_gic_options)
{
  v10 = *&start_time;
  v46 = *MEMORY[0x277D85DE8];
  v42 = 0;
  inited = krb5_init_creds_init(context, client, prompter, data, *&start_time, k5_gic_options, &v42);
  if (!inited)
  {
    v35 = creds;
    v37 = v10;
    v21 = password;
    v22 = 1;
    while (1)
    {
      v19 = v42;
      inited = krb5_init_creds_set_service(context, v42, in_tkt_service);
      if (inited)
      {
        break;
      }

      if (prompter && !(v21 | v19[42]))
      {
        v43 = 0u;
        v44 = 0u;
        v40 = 0;
        v41 = 0;
        v38 = 0;
        v39 = 0;
        krb5_unparse_name(context, client, &v39);
        asprintf(&v38, "%s's Password: ", v39);
        free(v39);
        *&v43 = v38;
        v41 = v45;
        v40 = 1024;
        DWORD2(v43) = 1;
        *&v44 = &v40;
        DWORD2(v44) = 1;
        v23 = (prompter)(context, data, 0, 0, 1, &v43);
        free(v38);
        if (v23)
        {
          bzero(v45, 0x400uLL);
          krb5_clear_error_message(context);
          v18 = -1765328252;
          goto LABEL_3;
        }

        v21 = v41;
      }

      if (v21)
      {
        inited = krb5_init_creds_set_password(context, v19, v21);
        if (inited)
        {
          break;
        }
      }

      ImpersonateBundle = HeimCredGetImpersonateBundle();
      if (ImpersonateBundle)
      {
        v25 = ImpersonateBundle;
        MainBundle = CFBundleGetMainBundle();
        if (MainBundle)
        {
          if ((*(context + 360) & 0x10) == 0)
          {
            v36 = v22;
            v27 = v21;
            Identifier = CFBundleGetIdentifier(MainBundle);
            v29 = CFStringCreateWithCString(0, v25, 0x8000100u);
            v30 = v29;
            if (v29 && Identifier)
            {
              v34 = v29;
              if (CFEqual(Identifier, v29))
              {
                sub_25226B748(context, 5, "Bundle identifiers match, not setting delegate");
                v21 = v27;
                v22 = v36;
              }

              else
              {
                v43 = 0uLL;
                v31 = NEHelperCacheCopyAppUUIDMapping();
                v21 = v27;
                v22 = v36;
                if (v31)
                {
                  xarray = v31;
                  if (MEMORY[0x25309E810]() == MEMORY[0x277D86440] && xpc_array_get_count(xarray))
                  {
                    v43 = *xpc_array_get_uuid(xarray, 0);
                  }

                  xpc_release(xarray);
                }

                krb5_init_creds_set_source_process(context, v19, &v43, 0, v25);
              }

              v30 = v34;
LABEL_30:
              CFRelease(v30);
              goto LABEL_31;
            }

            v21 = v27;
            v22 = v36;
            if (v29)
            {
              goto LABEL_30;
            }
          }
        }
      }

LABEL_31:
      inited = krb5_init_creds_get(context, v19);
      if (!inited)
      {
        krb5_process_last_request(context, k5_gic_options, v19);
        krb5_copy_creds_contents(context, (v19 + 1), v35);
        v18 = 0;
        if (v19)
        {
          goto LABEL_4;
        }

        return v18;
      }

      v18 = -1765328361;
      if (inited != -1765328361 || (v22 & 1) == 0)
      {
        break;
      }

      if (in_tkt_service)
      {
        v32 = strcmp(in_tkt_service, "kadmin/changepw");
        if (!prompter || !v32)
        {
          goto LABEL_3;
        }
      }

      else if (!prompter)
      {
        goto LABEL_3;
      }

      inited = sub_252261124(context, client, v19[42], &v43, prompter, data, k5_gic_options);
      if (!inited)
      {
        sub_25225F530(context, v19);
        free(v19);
        inited = krb5_init_creds_init(context, client, prompter, data, v37, k5_gic_options, &v42);
        v22 = 0;
        if (!inited)
        {
          continue;
        }
      }

      break;
    }
  }

  v18 = inited;
LABEL_3:
  v19 = v42;
  if (v42)
  {
LABEL_4:
    sub_25225F530(context, v19);
    free(v19);
  }

  return v18;
}

uint64_t krb5_get_init_creds_keyblock(_krb5_context *a1, _OWORD *a2, krb5_principal_data *a3, uint64_t a4, uint64_t a5, const char *a6, krb5_get_init_creds_opt *a7)
{
  v16 = 0;
  *a2 = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[5] = 0u;
  a2[6] = 0u;
  a2[7] = 0u;
  a2[8] = 0u;
  inited = krb5_init_creds_init(a1, a3, 0, 0, a5, a7, &v16);
  v13 = v16;
  if (!inited)
  {
    inited = krb5_init_creds_set_service(a1, v16, a6);
    if (!inited)
    {
      v13[44] = a4;
      v13[45] = sub_25225FE28;
      v14 = krb5_init_creds_get(a1, v13);
      if (!v14)
      {
        krb5_process_last_request(a1, a7, v13);
        krb5_copy_creds_contents(a1, (v13 + 1), a2);
      }

      goto LABEL_4;
    }
  }

  v14 = inited;
  if (v13)
  {
LABEL_4:
    sub_25225F530(a1, v13);
    free(v13);
  }

  return v14;
}

krb5_error_code krb5_get_init_creds_keytab(krb5_context context, krb5_creds *creds, krb5_principal client, krb5_keytab arg_keytab, krb5_deltat start_time, char *in_tkt_service, krb5_get_init_creds_opt *k5_gic_options)
{
  v16 = 0;
  *&creds->magic = 0u;
  *&creds->server = 0u;
  *&creds->keyblock.length = 0u;
  creds->times = 0u;
  *&creds->is_skey = 0u;
  creds->ticket = 0u;
  creds->second_ticket = 0u;
  *&creds->authdata = 0u;
  *&creds[1].client = 0u;
  inited = krb5_init_creds_init(context, client, 0, 0, *&start_time, k5_gic_options, &v16);
  v13 = v16;
  if (inited || (inited = krb5_init_creds_set_service(context, v16, in_tkt_service)) != 0 || (inited = krb5_init_creds_set_keytab(context, v13, arg_keytab)) != 0)
  {
    v14 = inited;
  }

  else
  {
    v14 = krb5_init_creds_get(context, v13);
    if (!v14)
    {
      krb5_process_last_request(context, k5_gic_options, v13);
      krb5_copy_creds_contents(context, v13 + 8, creds);
    }
  }

  if (v13)
  {
    sub_25225F530(context, v13);
    free(v13);
  }

  return v14;
}

_DWORD *sub_252261E04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  if (a5)
  {
    v10 = 0;
    for (i = &qword_280C4DEC8; ; i += 9)
    {
      v14 = 0;
      if (*i)
      {
        result = krb5_find_padata(*(a5 + 1), *a5, *(i - 8), &v14);
        if (result)
        {
          *(a4 + 8) = *(i - 8);
          result = (*i)(a1, a2, a3, a4, result + 2);
        }

        if (result)
        {
          return result;
        }
      }

      else
      {
        result = 0;
      }

      if (v10++ >= 0x12)
      {
        return result;
      }
    }
  }

  return 0;
}

double sub_252261EDC(_krb5_context *a1, uint64_t a2)
{
  v6 = *(a2 + 8);
  v7 = *(a2 + 24);
  krb5_free_salt(a1, &v6);
  v4 = *(a2 + 32);
  if (v4)
  {
    krb5_free_data(a1, v4);
  }

  *(a2 + 32) = 0;
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  return result;
}

uint64_t sub_252261F3C(uint64_t a1, _krb5_context *a2, int a3, int a4, const void *a5, size_t a6, const krb5_data *a7)
{
  *a1 = a3;
  *(a1 + 8) = a4;
  v12 = (a1 + 8);
  v13 = malloc_type_malloc(a6 + 1, 0xB4DD67EBuLL);
  *(a1 + 24) = v13;
  if (v13)
  {
    memcpy(v13, a5, a6);
    *(*(a1 + 24) + a6) = 0;
    *(a1 + 16) = a6;
    if (a7)
    {
      a7 = krb5_copy_data(a2, a7, (a1 + 32));
      if (a7)
      {
        krb5_clear_error_message(a2);
        v15 = *v12;
        v16 = *(v12 + 2);
        krb5_free_salt(a2, &v15);
      }
    }

    else
    {
      *(a1 + 32) = 0;
    }
  }

  else
  {
    krb5_clear_error_message(a2);
    return 12;
  }

  return a7;
}

uint64_t sub_25226201C(_krb5_context *a1, char *a2, const char *a3, uint64_t a4, __int128 *a5, void **a6)
{
  v19 = 0uLL;
  if (_krb5_have_debug(a1))
  {
    v17[0] = 0;
    v12 = krb5_enctype_to_string(a1, a2, v17);
    if (v12)
    {
      return v12;
    }

    sub_25226B748(a1, 5, "krb5_get_init_creds: using default_s2k_func: %s (%d)", v17[0], a2);
    free(v17[0]);
  }

  if (a3)
  {
    v13 = strlen(a3);
    if (a5)
    {
LABEL_6:
      v19 = *a5;
      goto LABEL_9;
    }
  }

  else
  {
    v13 = 0;
    if (a5)
    {
      goto LABEL_6;
    }
  }

  krb5_data_zero(&v19);
LABEL_9:
  v14 = malloc_type_malloc(0x18uLL, 0x10800404ACF7207uLL);
  *a6 = v14;
  if (!v14)
  {
    return krb5_enomem(a1);
  }

  *v17 = *a4;
  v18 = *(a4 + 16);
  v15 = krb5_string_to_key_data_salt_opaque(a1, a2, v13, a3, v17, v19, *(&v19 + 1), v14);
  if (v15)
  {
    free(*a6);
    *a6 = 0;
  }

  return v15;
}

void sub_252262164(uint64_t result, uint64_t a2, int a3)
{
  v5 = 0;
  v6 = &unk_280C4DE60;
  do
  {
    v8 = v6[18];
    v6 += 18;
    v7 = v8;
    if (v5 > 0x11)
    {
      break;
    }

    ++v5;
  }

  while (v7 != a3);
  if (v7 == a3)
  {
    v9 = heim_uniq_alloc(*(v6 + 3) + 55, "heim-pa-mech-ctx", sub_252262264);
    if (v9)
    {
      v10 = v9;
      *(v9 + 32) = v6;
      v11 = *(v6 + 5);
      if (!v11 || !v11(result, a2, v9 + 48))
      {
        sub_25226B748(result, 5, "Adding PA mech: %s", *(v6 + 1));
        heim_array_append_value(*(a2 + 1048), v10);
      }

      heim_release(v10);
    }
  }
}

uint64_t sub_252262264(uint64_t result)
{
  v1 = *(*(result + 32) + 64);
  if (v1)
  {
    return v1(result + 48);
  }

  return result;
}

uint64_t sub_25226227C(uint64_t a1, unsigned int *a2)
{
  result = _krb5_have_debug(a1);
  if (result)
  {
    result = sub_25226B748(a1, 5, "KDC sent %u patypes", *a2);
    if (*a2)
    {
      v5 = 0;
      do
      {
        v6 = &off_280C4DEB0;
        v7 = 19;
        while (*(v6 - 2) != *(*(a2 + 1) + 24 * v5))
        {
          v6 += 9;
          if (!--v7)
          {
            v8 = "unknown";
            goto LABEL_9;
          }
        }

        v8 = *v6;
LABEL_9:
        result = sub_25226B748(a1, 5, "KDC sent PA-DATA type: %u (%s)", *(*(a2 + 1) + 24 * v5++), v8);
      }

      while (v5 < *a2);
    }
  }

  return result;
}

uint64_t sub_25226236C(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int *a6, uint64_t a7)
{
  v7 = a6;
  padata = 0;
  v28 = 0;
  v14 = "Stepping pa-mech: %s";
  for (i = *(a2 + 1040) == 0; ; i = 1)
  {
    do
    {
      if (i)
      {
        if (!heim_array_get_length(*(a2 + 1048)))
        {
          sub_25226B748(a1, 0, "no more available_pa_mechs to try");
          return 2314790670;
        }

        *(a2 + 1040) = heim_array_copy_value(*(a2 + 1048), 0);
        heim_array_delete_value(*(a2 + 1048), 0);
      }

      v16 = *(*(a2 + 1040) + 32);
      v17 = *(v16 + 16);
      if (*(a2 + 984))
      {
        if ((v17 & 4) == 0)
        {
          sub_25226B748(a1, 0, "pa-mech %s dropped under FAST (not supported)");
LABEL_10:
          heim_release(*(a2 + 1040));
          v18 = 0;
          *(a2 + 1040) = 0;
          goto LABEL_15;
        }
      }

      else if ((v17 & 8) == 0)
      {
        sub_25226B748(a1, 0, "dropped pa-mech %s since not running under FAST");
        goto LABEL_10;
      }

      sub_25226B748(a1, 0, "pa-mech trying: %s, searching for %d", *(v16 + 8), *v16);
      v28 = 0;
      if (v7)
      {
        padata = krb5_find_padata(*(v7 + 1), *v7, **(*(a2 + 1040) + 32), &v28);
      }

      else
      {
        padata = 0;
      }

      v18 = *(a2 + 1040);
LABEL_15:
      i = 1;
    }

    while (!v18);
    sub_25226B748(a1, 5, v14, *(*(v18 + 32) + 8));
    v19 = padata;
    v20 = (*(*(*(a2 + 1040) + 32) + 56))(a1, a2, *(a2 + 1040) + 48, padata, a3, a4, a5, v7, a7);
    sub_25226B794(a1, 10, v20, "PA type %s returned %d", *(*(*(a2 + 1040) + 32) + 8), v20);
    if (!v20)
    {
      v21 = v14;
      v22 = *(a2 + 1040);
      v23 = *(v22 + 40);
      if (v23)
      {
        sub_25226B748(a1, 5, "Next PA type in set is: %s", *(v23[4] + 8));
        v20 = 2314790668;
      }

      else
      {
        v24 = *(*(v22 + 32) + 8);
        if (a4)
        {
          v20 = 0;
          *(a2 + 1056) = v24;
        }

        else
        {
          sub_25226B748(a1, 5, "PA %s done, but no ticket in sight!!!", v24);
          v20 = 2314790669;
        }
      }

      heim_retain(v23);
      heim_release(*(a2 + 1040));
      *(a2 + 1040) = v23;
      v14 = v21;
      v7 = a6;
    }

    if (v20 != -1980176627)
    {
      break;
    }

    sub_25226B748(a1, 5, "Dropping PA type %s", *(*(*(a2 + 1040) + 32) + 8));
    heim_release(*(a2 + 1040));
    *(a2 + 1040) = 0;
    padata = v19;
  }

  if (v20 == -1980176628)
  {
    sub_25226B748(a1, 5, "Continue needed for %s", *(*(*(a2 + 1040) + 32) + 8));
    return 2314790668;
  }

  else
  {
    if (v20)
    {
      sub_25226B748(a1, 5, "Other error from mech %s: %d", *(*(*(a2 + 1040) + 32) + 8), v20);
      heim_release(*(a2 + 1040));
      *(a2 + 1040) = 0;
    }

    return v20;
  }
}

krb5_error_code krb5_get_init_creds_opt_alloc(krb5_context context, krb5_get_init_creds_opt **opt)
{
  *opt = 0;
  v4 = malloc_type_calloc(1uLL, 0x60uLL, 0x10300404DCE2E84uLL);
  if (v4)
  {
    v5 = v4;
    v6 = malloc_type_calloc(1uLL, 0x40uLL, 0x10F00401127319BuLL);
    *&v5[1].proxiable = v6;
    if (v6)
    {
      v7 = 0;
      *v6 = 1;
      *opt = v5;
    }

    else
    {
      v7 = 12;
      krb5_set_error_message(context, 12, "malloc: out of memory");
      free(v5);
    }
  }

  else
  {
    v7 = 12;
    krb5_set_error_message(context, 12, "malloc: out of memory");
  }

  return v7;
}

void krb5_get_init_creds_opt_free(krb5_context context, krb5_get_init_creds_opt *opt)
{
  if (opt)
  {
    v3 = *&opt[1].proxiable;
    if (v3)
    {
      v4 = *v3 == 1;
      if (*v3 >= 1)
      {
        --*v3;
        if (v4)
        {
          sub_25227262C(opt);
          free(*&opt[1].proxiable);
        }

        *&opt->salt = 0u;
        *&opt[1].renew_life = 0u;
        *&opt->etype_list_length = 0u;
        *&opt->preauth_list = 0u;
        *&opt->flags = 0u;
        *&opt->proxiable = 0u;

        free(opt);
      }
    }
  }
}

void krb5_get_init_creds_opt_set_default_flags(_krb5_context *a1, const char *a2, const krb5_data *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v32 = 0;
  ret_value = sub_252262A2C(a1, 1, a3, "forwardable", a5, a6, a7, a8);
  krb5_appdefault_BOOLean(a1, a2, a3, "forwardable", ret_value, &ret_value);
  v12 = ret_value;
  *a4 |= 4u;
  *(a4 + 24) = v12;
  ret_value = sub_252262A2C(a1, 0, a3, "proxiable", v13, v14, v15, v16);
  krb5_appdefault_BOOLean(a1, a2, a3, "proxiable", ret_value, &ret_value);
  v17 = ret_value;
  *a4 |= 8u;
  *(a4 + 28) = v17;
  krb5_appdefault_time(a1, a2, a3, "ticket_lifetime", 0, &v32);
  v23 = v32;
  if (v32 || (v23 = sub_252262AD0(a1, a3, "ticket_lifetime", v18, v19, v20, v21, v22), (v32 = v23) != 0))
  {
    *a4 |= 1u;
    *(a4 + 8) = v23;
  }

  krb5_appdefault_time(a1, a2, a3, "renew_lifetime", 0, &v32);
  v29 = v32;
  if (v32 || (v29 = sub_252262AD0(a1, a3, "renew_lifetime", v24, v25, v26, v27, v28), (v32 = v29) != 0))
  {
    *a4 |= 2u;
    *(a4 + 16) = v29;
  }

  krb5_appdefault_BOOLean(a1, a2, a3, "no-addresses", 1, &ret_value);
  v30 = *(a4 + 88);
  if (v30)
  {
    if (ret_value)
    {
      v31 = 1;
    }

    else
    {
      v31 = 2;
    }

    *(v30 + 40) = v31;
  }

  else
  {
    krb5_set_error_message(a1, 22, "%s on non extendable opt", "init_creds_opt_set_pac_req");
  }
}

uint64_t sub_252262A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = krb5_config_get_BOOL_default(a1, 0, a2, a4, a5, a6, a7, a8, "realms");
  if (result == a2)
  {
    return krb5_config_get_BOOL_default(a1, 0, a2, v11, v12, v13, v14, v15, "libdefaults");
  }

  return result;
}

uint64_t sub_252262AD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = krb5_config_get_time(a1, 0, a3, a4, a5, a6, a7, a8, "realms");
  if (result < 0)
  {
    time = krb5_config_get_time(a1, 0, v10, v11, v12, v13, v14, v15, "libdefaults");
    return time & ~(time >> 63);
  }

  return result;
}

uint64_t krb5_get_init_creds_opt_set_addressless(_krb5_context *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v4 = 0;
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    *(v3 + 40) = v5;
  }

  else
  {
    v4 = 22;
    krb5_set_error_message(a1, 22, "%s on non extendable opt", "init_creds_opt_set_pac_req");
  }

  return v4;
}

void krb5_get_init_creds_opt_set_etype_list(krb5_get_init_creds_opt *opt, krb5_enctype *etype_list, int etype_list_length)
{
  opt->flags |= 0x10u;
  opt->address_list = etype_list;
  LODWORD(opt->preauth_list) = etype_list_length;
}

void krb5_get_init_creds_opt_set_preauth_list(krb5_get_init_creds_opt *opt, krb5_preauthtype *preauth_list, int preauth_list_length)
{
  opt->flags |= 0x40u;
  opt[1].flags = preauth_list_length;
  opt->salt = preauth_list;
}

_DWORD *krb5_get_init_creds_opt_set_anonymous(_DWORD *result, int a2)
{
  *result |= 0x100u;
  result[8] = a2;
  return result;
}

uint64_t krb5_get_init_creds_opt_set_pa_password(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 88);
  if (v4)
  {
    v5 = 0;
    *(v4 + 8) = a3;
    *(v4 + 16) = a4;
  }

  else
  {
    v5 = 22;
    krb5_set_error_message(a1, 22, "%s on non extendable opt", "init_creds_opt_set_pa_password");
  }

  return v5;
}

uint64_t krb5_get_init_creds_opt_set_pac_request(_krb5_context *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v4 = 0;
    if (a3)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    *(v3 + 24) = v5;
  }

  else
  {
    v4 = 22;
    krb5_set_error_message(a1, 22, "%s on non extendable opt", "init_creds_opt_set_pac_req");
  }

  return v4;
}

void krb5_get_init_creds_opt_set_canonicalize(krb5_get_init_creds_opt *opt, int canonicalize)
{
  v3 = *(*&canonicalize + 88);
  if (v3)
  {
    v4 = *(v3 + 44);
    if (v2)
    {
      v5 = v4 | 2;
    }

    else
    {
      v5 = v4 & 0xFFFFFFFD;
    }

    *(v3 + 44) = v5;
  }

  else
  {
    krb5_set_error_message(opt, 22, "%s on non extendable opt", "init_creds_opt_set_canonicalize");
  }
}

uint64_t krb5_get_init_creds_opt_set_win2k(_krb5_context *a1, uint64_t a2, int a3)
{
  v3 = *(a2 + 88);
  if (v3)
  {
    v4 = *(v3 + 44);
    v5 = 0;
    if (a3)
    {
      v6 = v4 | 0x4C;
    }

    else
    {
      v6 = v4 & 0xFFFFFFB3;
    }

    *(v3 + 44) = v6;
  }

  else
  {
    v5 = 22;
    krb5_set_error_message(a1, 22, "%s on non extendable opt", "init_creds_opt_set_win2k");
  }

  return v5;
}

krb5_error_code krb5_get_init_creds_opt_set_process_last_req(krb5_context a1, krb5_get_init_creds_opt *a2, krb5_gic_process_last_req a3, void *a4)
{
  v4 = *&a2[1].proxiable;
  if (v4)
  {
    v5 = 0;
    *(v4 + 48) = a3;
    *(v4 + 56) = a4;
  }

  else
  {
    v5 = 22;
    krb5_set_error_message(a1, 22, "%s on non extendable opt", "init_creds_opt_set_win2k");
  }

  return v5;
}

void krb5_free_keyblock_contents(krb5_context a1, krb5_keyblock *a2)
{
  if (a2)
  {
    contents = a2->contents;
    if (contents)
    {
      bzero(contents, *&a2->length);
    }

    krb5_data_free(&a2->length);
    a2->magic = 0;
  }
}

void krb5_free_keyblock(krb5_context a1, krb5_keyblock *a2)
{
  if (a2)
  {
    krb5_free_keyblock_contents(a1, a2);

    free(a2);
  }
}

krb5_error_code krb5_copy_keyblock(krb5_context a1, const krb5_keyblock *a2, krb5_keyblock **a3)
{
  *a3 = 0;
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
  if (v6)
  {
    v7 = v6;
    v8 = copy_EncryptionKey(a2, v6);
    if (v8)
    {
      free(v7);
    }

    else
    {
      *a3 = v7;
    }
  }

  else
  {
    v8 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v8;
}

uint64_t krb5_keyblock_init(_krb5_context *a1, char *a2, const void *a3, size_t a4, void *a5)
{
  v8 = a2;
  v12 = 0;
  a5[1] = 0;
  a5[2] = 0;
  *a5 = 0;
  v10 = krb5_enctype_keysize(a1, a2, &v12);
  if (!v10)
  {
    if (v12 == a4)
    {
      v10 = krb5_data_copy(a5 + 1, a3, a4);
      if (v10)
      {
        krb5_set_error_message(a1, v10, "malloc: out of memory");
      }

      else
      {
        *a5 = v8;
      }
    }

    else
    {
      v10 = 2529639062;
      krb5_set_error_message(a1, -1765328234, "Encryption key %d is %lu bytes long, %lu was passed in");
    }
  }

  return v10;
}

uint64_t sub_252263050(_krb5_context *a1, const char *a2, uint64_t a3)
{
  v6 = malloc_type_malloc(0x10uLL, 0x1010040A1D9428BuLL);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = strdup(a2);
  *v7 = v8;
  if (!v8)
  {
    free(v7);
LABEL_5:
    v9 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v9;
  }

  v9 = 0;
  v7[2] = 0;
  *(a3 + 88) = v7;
  return v9;
}

uint64_t sub_252263110(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 88);
  free(*v2);
  free(v2);
  return 0;
}

uint64_t sub_252263184(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  krb5_storage_free(*(a3 + 8));
  sub_25225709C(a1, *a3);
  close(*a3);
  return 0;
}

uint64_t sub_2522631C8(_krb5_context *a1, uint64_t a2, unsigned int **a3)
{
  v6 = *(a2 + 88);
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v7 = open(*v6, 16777218);
  if ((v7 & 0x80000000) == 0)
  {
    v8 = v7;
    v43 = 0;
    sub_252287100(v7);
    v9 = sub_252256F84(a1, v8, 1);
    if (!v9)
    {
      v10 = krb5_storage_from_fd(v8);
      v11 = v10;
      if (!v10)
      {
        v14 = "out of memory";
        goto LABEL_26;
      }

      krb5_storage_set_eof_code(v10, -1765328202);
      if (!krb5_ret_int8(v11, &v43 + 1))
      {
        if (HIBYTE(v43) != 5)
        {
          v13 = 2529639125;
          v41 = *v6;
          v14 = "Bad version in keytab %s";
          goto LABEL_28;
        }

        v27 = krb5_ret_int8(v11, &v43);
        if (v27)
        {
          v13 = v27;
          v41 = *v6;
          v14 = "failed reading tag from keytab %s";
          goto LABEL_28;
        }

        v20 = v43;
        *(a2 + 96) = v43;
        goto LABEL_15;
      }

      v12 = sub_252264078(a2, v11);
      if (v12)
      {
        v13 = v12;
        v41 = *v6;
        v42 = strerror(v12);
        v14 = "%s: keytab is corrupted: %s";
LABEL_28:
        v28 = a1;
        v29 = v13;
        goto LABEL_29;
      }

LABEL_14:
      v20 = *(a2 + 96);
LABEL_15:
      sub_252263A7C(a1, v11, v20);
      v21 = krb5_storage_emem();
      if (v21)
      {
        v22 = v21;
        v23 = *a3;
        is_flags = krb5_storage_is_flags(v21, 2);
        v25 = *(v23 + 4);
        if (is_flags)
        {
          ++v25;
        }

        v26 = krb5_store_int16(v22, v25);
        if (!v26)
        {
          v26 = sub_2522641AC(v22, *(v23 + 3));
          if (!v26)
          {
            if (v23[2])
            {
              v31 = 0;
              while (1)
              {
                v26 = sub_2522641AC(v22, *(*(v23 + 2) + 8 * v31));
                if (v26)
                {
                  break;
                }

                if (++v31 >= v23[2])
                {
                  goto LABEL_38;
                }
              }
            }

            else
            {
LABEL_38:
              if (krb5_storage_is_flags(v22, 4) || (v26 = krb5_store_int32(v22, *v23), !v26))
              {
                v32 = krb5_store_int32(v22, *(a3 + 10));
                if (v32)
                {
                  v13 = v32;
                  krb5_set_error_message(a1, v32, "Failed storing timpstamp in keytab %s");
                }

                else
                {
                  v33 = krb5_store_int8(v22, *(a3 + 8));
                  if (v33)
                  {
                    v13 = v33;
                    krb5_set_error_message(a1, v33, "Failed storing kvno in keytab %s");
                  }

                  else
                  {
                    v34 = sub_2522640E0(a1, v6, v22, a3 + 8);
                    if (v34)
                    {
                      v13 = v34;
                    }

                    else
                    {
                      if ((*(v6 + 8) & 1) != 0 || (v35 = krb5_store_int32(v22, *(a3 + 2)), !v35) && (v35 = krb5_store_uint32(v22, *(a3 + 11)), !v35))
                      {
                        v13 = krb5_storage_to_data(v22, &v45);
                        krb5_storage_free(v22);
                        if (!v13)
                        {
                          while (1)
                          {
                            if (krb5_ret_int32(v11, &v44) == -1765328202)
                            {
                              v37 = v45;
                              v44 = v45;
                              goto LABEL_58;
                            }

                            v36 = v44;
                            if ((v44 & 0x80000000) != 0)
                            {
                              v44 = -v44;
                              if (-v36 >= v45)
                              {
                                break;
                              }
                            }

                            krb5_storage_seek(v11);
                          }

                          krb5_storage_seek(v11);
                          v37 = v44;
LABEL_58:
                          v13 = krb5_store_int32(v11, v37);
                          if (krb5_storage_write(v11) < 0)
                          {
                            v38 = __error();
                            v13 = *v38;
                            v39 = *v6;
                            v40 = strerror(*v38);
                            krb5_set_error_message(a1, v13, "Failed writing keytab block in keytab %s: %s", v39, v40);
                          }

                          bzero(v46, v45);
                          krb5_data_free(&v45);
                          goto LABEL_30;
                        }

                        v41 = *v6;
                        v14 = "Failed converting keytab entry to memory block for keytab %s";
                        goto LABEL_28;
                      }

                      v13 = v35;
                      krb5_set_error_message(a1, v35, "Failed storing extended kvno in keytab %s");
                    }
                  }
                }

                goto LABEL_21;
              }
            }
          }
        }

        v13 = v26;
        krb5_set_error_message(a1, v26, "Failed storing principal in keytab %s");
LABEL_21:
        krb5_storage_free(v22);
        goto LABEL_30;
      }

      v14 = "malloc: out of memory";
LABEL_26:
      v13 = 12;
      v28 = a1;
      v29 = 12;
LABEL_29:
      krb5_set_error_message(v28, v29, v14, v41, v42);
      goto LABEL_30;
    }

    goto LABEL_9;
  }

  v15 = open(*v6, 16779778, 384);
  if ((v15 & 0x80000000) == 0)
  {
    v8 = v15;
    sub_252287100(v15);
    v9 = sub_252256F84(a1, v8, 1);
    if (!v9)
    {
      v11 = krb5_storage_from_fd(v8);
      krb5_storage_set_eof_code(v11, -1765328202);
      v19 = sub_252264078(a2, v11);
      if (v19)
      {
        v13 = v19;
LABEL_30:
        krb5_storage_free(v11);
        sub_25225709C(a1, v8);
        goto LABEL_31;
      }

      goto LABEL_14;
    }

LABEL_9:
    v13 = v9;
LABEL_31:
    close(v8);
    return v13;
  }

  v16 = __error();
  v13 = *v16;
  v17 = *v6;
  v18 = strerror(*v16);
  krb5_set_error_message(a1, v13, "open(%s): %s", v17, v18);
  return v13;
}

uint64_t sub_252263688(_krb5_context *a1, _krb5_kt *a2, uint64_t a3)
{
  v26 = *MEMORY[0x277D85DE8];
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  cursor = 0;
  v14 = 0;
  v15 = 0;
  v11 = 0;
  v12 = 0;
  if (sub_252263888(a1, a2, 16777218, 1, &cursor))
  {
    goto LABEL_4;
  }

  if (sub_252263AE4(a1, a2, v16, &cursor, &v12, &v11))
  {
    krb5_kt_end_seq_get(a1, a2, &cursor);
LABEL_4:
    krb5_clear_error_message(a1);
    return 2529639093;
  }

  v7 = 0;
  do
  {
    if (krb5_kt_compare(a1, v16, *a3, *(a3 + 8), *(a3 + 16)))
    {
      v8 = v14;
      krb5_storage_seek(v14);
      v9 = v11 - v12 - 4;
      krb5_store_int32(v8, (4 - (v11 - v12)));
      v18 = 0u;
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v23 = 0u;
      v24 = 0u;
      for (i = 0u; v9; v9 -= v10)
      {
        if (v9 >= 0x80)
        {
          v10 = 128;
        }

        else
        {
          v10 = v9;
        }

        krb5_storage_write(v8);
      }

      v7 = 1;
    }

    krb5_kt_free_entry(a1, v16);
  }

  while (!sub_252263AE4(a1, a2, v16, &cursor, &v12, &v11));
  krb5_kt_end_seq_get(a1, a2, &cursor);
  if (!v7)
  {
    goto LABEL_4;
  }

  return 0;
}

uint64_t sub_252263850(_krb5_context *a1, const char *a2, uint64_t a3)
{
  result = sub_252263050(a1, a2, a3);
  if (!result)
  {
    *(*(a3 + 88) + 8) |= 1u;
  }

  return result;
}

uint64_t sub_252263888(_krb5_context *a1, uint64_t a2, int a3, int a4, int *a5)
{
  v10 = *(a2 + 88);
  if (a3)
  {
    v11 = 2;
  }

  else
  {
    v11 = 4;
  }

  if ((a3 & 2) != 0)
  {
    v12 = 6;
  }

  else
  {
    v12 = v11;
  }

  if (access(*v10, v12))
  {
    v13 = __error();
    v14 = *v13;
    v24 = *v10;
    v25 = strerror(*v13);
    v15 = "keytab %s access failed: %s";
LABEL_9:
    krb5_set_error_message(a1, v14, v15, v24, v25);
    return v14;
  }

  v17 = open(*v10, a3);
  *a5 = v17;
  if (v17 < 0)
  {
    v19 = __error();
    v14 = *v19;
    v24 = *v10;
    v25 = strerror(*v19);
    v15 = "keytab %s open failed: %s";
    goto LABEL_9;
  }

  sub_252287100(v17);
  v14 = sub_252256F84(a1, *a5, a4);
  v18 = *a5;
  if (v14)
  {
    close(v18);
  }

  else
  {
    v20 = krb5_storage_from_fd(v18);
    *(a5 + 1) = v20;
    if (v20)
    {
      v26 = 0;
      krb5_storage_set_eof_code(v20, -1765328202);
      v21 = krb5_ret_int8(*(a5 + 1), &v26 + 1);
      if (v21)
      {
        v14 = v21;
      }

      else
      {
        v22 = *(a5 + 1);
        if (HIBYTE(v26) != 5)
        {
          krb5_storage_free(v22);
          sub_25225709C(a1, *a5);
          close(*a5);
          krb5_clear_error_message(a1);
          return 2529639125;
        }

        v14 = krb5_ret_int8(v22, &v26);
        if (!v14)
        {
          v23 = v26;
          *(a2 + 96) = v26;
          sub_252263A7C(a1, *(a5 + 1), v23);
          return v14;
        }
      }

      krb5_storage_free(*(a5 + 1));
      sub_25225709C(a1, *a5);
      close(*a5);
      krb5_clear_error_message(a1);
    }

    else
    {
      sub_25225709C(a1, *a5);
      close(*a5);
      v14 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  return v14;
}

uint64_t sub_252263A7C(_krb5_context *a1, uint64_t a2, int a3)
{
  if (a3 != 2)
  {
    if (a3 == 1)
    {
      v4 = 7;
      goto LABEL_6;
    }

    krb5_warnx(a1, "storage_set_flags called with bad vno (%d)", a3);
  }

  v4 = 0;
LABEL_6:

  return krb5_storage_set_flags(a2, v4);
}

uint64_t sub_252263AE4(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, void *a6)
{
  v11 = *(a2 + 88);
  v44 = 0;
  v43 = 0;
  v42 = 0;
  for (i = *(a4 + 8); ; i = *(a4 + 8))
  {
    v13 = krb5_storage_seek(i);
    v14 = krb5_ret_int32(*(a4 + 8), &v44);
    if (v14)
    {
      return v14;
    }

    if ((v44 & 0x80000000) == 0)
    {
      break;
    }
  }

  v16 = *(a4 + 8);
  v17 = malloc_type_calloc(1uLL, 0x20uLL, 0x10900408A8AD7E9uLL);
  if (!v17)
  {
    v15 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_12;
  }

  v18 = v17;
  size_6[0] = 0;
  v19 = krb5_ret_int16(v16, size_6);
  if (!v19)
  {
    is_flags = krb5_storage_is_flags(v16, 2);
    v23 = size_6[0];
    if (is_flags)
    {
      v23 = --size_6[0];
    }

    if (v23 < 0)
    {
      v15 = 2529639094;
      krb5_set_error_message(a1, -1765328202, "Keytab principal contains invalid length in keytab %s");
      goto LABEL_10;
    }

    v24 = sub_252263F90(a1, v16, &v18->data);
    if (v24)
    {
      v15 = v24;
      v39 = *v11;
      v20 = "Can't read realm from keytab: %s";
      goto LABEL_9;
    }

    v25 = malloc_type_calloc(size_6[0], 8uLL, 0x10040436913F5uLL);
    v18->realm.data = v25;
    if (!v25)
    {
      v15 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      goto LABEL_10;
    }

    v40 = a6;
    v41 = a3;
    v26 = size_6[0];
    v18->realm.magic = size_6[0];
    if (v26)
    {
      v27 = 0;
      v28 = 0;
      while (1)
      {
        v29 = sub_252263F90(a1, v16, &v18->realm.data[v27]);
        if (v29)
        {
          break;
        }

        ++v28;
        v27 += 8;
        if (v28 >= v18->realm.magic)
        {
          goto LABEL_26;
        }
      }

      v15 = v29;
      krb5_set_error_message(a1, v29, "Can't read principal from keytab: %s", *v11);
      a3 = v41;
      goto LABEL_10;
    }

LABEL_26:
    if (krb5_storage_is_flags(v16, 4))
    {
      v18->magic = 0;
      a3 = v41;
    }

    else
    {
      size = 0;
      v31 = krb5_ret_int32(v16, &size);
      v18->magic = size;
      a3 = v41;
      if (v31)
      {
        v15 = v31;
        v39 = *v11;
        v20 = "Can't read name-type from keytab: %s";
        goto LABEL_9;
      }
    }

    *a3 = v18;
    v30 = krb5_ret_uint32(*(a4 + 8), &v42);
    *(a3 + 40) = v42;
    if (v30 || (v30 = krb5_ret_int8(*(a4 + 8), &v43), v30))
    {
      v15 = v30;
      goto LABEL_12;
    }

    *(a3 + 8) = v43;
    v32 = *(a4 + 8);
    size_6[0] = 0;
    v15 = krb5_ret_int16(v32, size_6);
    if (v15)
    {
      goto LABEL_48;
    }

    *(a3 + 16) = size_6[0];
    LOWORD(size) = 0;
    v15 = krb5_ret_int16(v32, &size);
    if (v15)
    {
      goto LABEL_48;
    }

    v33 = size;
    if ((size & 0x8000000000000000) != 0)
    {
      v37 = "bad size value";
    }

    else
    {
      *(a3 + 24) = size;
      v34 = malloc_type_calloc(1uLL, v33, 0xAB8D118CuLL);
      *(a3 + 32) = v34;
      if (v34)
      {
        v35 = krb5_storage_read(v32);
        if (v35 == size)
        {
          goto LABEL_40;
        }

        if ((v35 & 0x8000000000000000) == 0)
        {
          v15 = 2529639094;
          goto LABEL_47;
        }

        v15 = *__error();
        a3 = v41;
        if (!v15)
        {
LABEL_40:
          v36 = v13 - krb5_storage_seek(*(a4 + 8));
          if (v44 + v36 + 4 < 4)
          {
            v15 = 0;
          }

          else
          {
            v15 = krb5_ret_int32(*(a4 + 8), &v42 + 1);
            if (!v15 && HIDWORD(v42))
            {
              v15 = 0;
              *(v41 + 8) = HIDWORD(v42);
            }
          }

          if (v44 + v36 + 4 < 8)
          {
            v38 = 0;
          }

          else
          {
            v15 = krb5_ret_uint32(*(a4 + 8), &v42);
            if (v15)
            {
              goto LABEL_57;
            }

            v38 = v42;
          }

          *(v41 + 44) = v38;
LABEL_57:
          *(v41 + 48) = 0;
          if (a5)
          {
            *a5 = v13;
          }

          if (v40)
          {
            *v40 = v13 + v44 + 4;
          }

          a3 = v41;
          if (!v15)
          {
            goto LABEL_13;
          }

          goto LABEL_12;
        }

LABEL_48:
        krb5_set_error_message(a1, v15, "Cant read keyblock from file %s");
        goto LABEL_12;
      }

      v37 = "malloc: out of memory";
    }

    v15 = 12;
    krb5_set_error_message(a1, 12, v37);
LABEL_47:
    a3 = v41;
    goto LABEL_48;
  }

  v15 = v19;
  v39 = *v11;
  v20 = "Failed decoding length of keytab principal in keytab file %s";
LABEL_9:
  krb5_set_error_message(a1, v15, v20, v39);
LABEL_10:
  krb5_free_principal(a1, v18);
LABEL_12:
  krb5_kt_free_entry(a1, a3);
LABEL_13:
  krb5_storage_seek(*(a4 + 8));
  return v15;
}

uint64_t sub_252263F90(_krb5_context *a1, uint64_t a2, void *a3)
{
  v11 = 0;
  v6 = krb5_ret_int16(a2, &v11);
  if (v6)
  {
    return v6;
  }

  if (v11 < 0)
  {
    v9 = "bad size value";
LABEL_9:
    v6 = 12;
    krb5_set_error_message(a1, 12, v9);
    return v6;
  }

  v7 = malloc_type_calloc(1uLL, v11 + 1, 0xFEE8116AuLL);
  *a3 = v7;
  if (!v7)
  {
    v9 = "malloc: out of memory";
    goto LABEL_9;
  }

  v8 = krb5_storage_read(a2);
  v6 = 0;
  *(*a3 + v11) = 0;
  if (v8 != v11)
  {
    if (v8 < 0)
    {
      return *__error();
    }

    else
    {
      return 2529639094;
    }
  }

  return v6;
}

uint64_t sub_252264078(uint64_t a1, uint64_t a2)
{
  result = krb5_store_int8(a2, 5);
  if (!result)
  {
    v5 = *(a1 + 96);
    if (!v5)
    {
      LOBYTE(v5) = 2;
      *(a1 + 96) = 2;
    }

    return krb5_store_int8(a2, v5);
  }

  return result;
}

uint64_t sub_2522640E0(_krb5_context *a1, const char **a2, uint64_t a3, __int16 *a4)
{
  v8 = krb5_store_int16(a3, *a4);
  if (v8 || (v11 = *(a4 + 1), v8 = krb5_store_int16(a3, v11), (v8 & 0x80000000) != 0))
  {
    v9 = v8;
  }

  else
  {
    v12 = krb5_storage_write(a3);
    if (v12 == v11)
    {
      return 0;
    }

    if (v12 < 0)
    {
      v9 = *__error();
      if (!v9)
      {
        return v9;
      }
    }

    else
    {
      v9 = 2529639094;
    }
  }

  krb5_set_error_message(a1, v9, "Cant store keyblock to file %s", *a2);
  return v9;
}

uint64_t sub_2522641AC(uint64_t a1, char *__s)
{
  v3 = strlen(__s);
  result = krb5_store_int16(a1, v3);
  if ((result & 0x80000000) == 0)
  {
    v5 = krb5_storage_write(a1);
    if (v5 == v3)
    {
      return 0;
    }

    else if (v5 < 0)
    {
      return *__error();
    }

    else
    {
      return 2529639094;
    }
  }

  return result;
}

uint64_t krb5_kt_register(uint64_t a1, __int128 *a2)
{
  if (strlen(*a2) < 0x1E)
  {
    v5 = malloc_type_realloc(*(a1 + 264), 104 * *(a1 + 256) + 104, 0x10D00400BBDB9B3uLL);
    if (v5)
    {
      v4 = 0;
      v6 = &v5[104 * *(a1 + 256)];
      v7 = *a2;
      v8 = a2[2];
      *(v6 + 1) = a2[1];
      *(v6 + 2) = v8;
      *v6 = v7;
      v9 = a2[3];
      v10 = a2[4];
      v11 = a2[5];
      *(v6 + 12) = *(a2 + 12);
      *(v6 + 4) = v10;
      *(v6 + 5) = v11;
      *(v6 + 3) = v9;
      *(a1 + 264) = v5;
      ++*(a1 + 256);
    }

    else
    {
      v4 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  else
  {
    v4 = 2529639091;
    krb5_set_error_message(a1, -1765328205, "can't register cache type, prefix too long");
  }

  return v4;
}

krb5_error_code krb5_kt_resolve(krb5_context a1, const char *a2, krb5_keytab *a3)
{
  v4 = a2;
  v6 = strchr(a2, 58);
  if (v6)
  {
    v7 = *v4;
    if (v7 == 47)
    {
      v8 = "FILE";
    }

    else
    {
      v8 = v4;
    }

    if (v7 == 47)
    {
      v9 = 4;
    }

    else
    {
      v9 = v6 - v4;
    }

    if (v7 != 47)
    {
      v4 = v6 + 1;
    }
  }

  else
  {
    v8 = "FILE";
    v9 = 4;
  }

  v10 = *(a1 + 64);
  if (v10 < 1)
  {
    LODWORD(v11) = 0;
  }

  else
  {
    v11 = 0;
    v12 = *(a1 + 33);
    while (strncasecmp(v8, *v12, v9))
    {
      ++v11;
      v12 += 13;
      if (v10 == v11)
      {
        goto LABEL_19;
      }
    }
  }

  if (v11 == v10)
  {
LABEL_19:
    v13 = -1765328204;
    krb5_set_error_message(a1, -1765328204, "unknown keytab type %.*s");
  }

  else
  {
    v14 = malloc_type_malloc(0x68uLL, 0x10D00400BBDB9B3uLL);
    if (v14)
    {
      v15 = v14;
      v16 = *(a1 + 33) + 104 * v11;
      v17 = *(v16 + 48);
      v18 = *(v16 + 64);
      v19 = *(v16 + 96);
      v14[5] = *(v16 + 80);
      v21 = *(v16 + 16);
      v20 = *(v16 + 32);
      *v14 = *v16;
      v14[1] = v21;
      v14[3] = v17;
      v14[4] = v18;
      v14[2] = v20;
      *(v14 + 11) = 0;
      *(v14 + 12) = v19;
      v13 = (*(v14 + 1))(a1, v4, v14);
      if (v13)
      {
        free(v15);
        v15 = 0;
      }

      *a3 = v15;
    }

    else
    {
      v13 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
    }
  }

  return v13;
}

krb5_error_code krb5_kt_default_name(krb5_context a1, char *a2, int a3)
{
  if (strlcpy(a2, *(a1 + 26), *&a3) < *&a3)
  {
    return 0;
  }

  krb5_clear_error_message(a1);
  return -1765328247;
}

uint64_t krb5_kt_default_modify_name(_krb5_context *a1, char *__dst, size_t __size)
{
  v6 = *(a1 + 27);
  if (!v6)
  {
    v6 = *(a1 + 26);
    if (!strncasecmp(v6, "ANY:", 4uLL))
    {
      v8 = strcspn(v6 + 4, ",");
      if (v8 < __size)
      {
        v9 = v8;
        strlcpy(__dst, v6 + 4, __size);
        v7 = 0;
        __dst[v9] = 0;
        return v7;
      }

LABEL_7:
      v7 = 2529639049;
      krb5_clear_error_message(a1);
      return v7;
    }
  }

  if (strlcpy(__dst, v6, __size) >= __size)
  {
    goto LABEL_7;
  }

  return 0;
}

krb5_error_code krb5_kt_read_service_key(krb5_context a1, krb5_pointer a2, krb5_principal a3, krb5_kvno a4, krb5_enctype a5, krb5_keyblock **a6)
{
  v15 = 0;
  keytab = 0;
  memset(&v14, 0, sizeof(v14));
  if (!a2)
  {
    a2 = *(a1 + 26);
  }

  entry = krb5_kt_resolve(a1, a2, &keytab);
  if (!entry)
  {
    v12 = keytab;
    entry = krb5_kt_get_entry(a1, keytab, a3, a4, a5, &v14);
    (*(v12 + 3))(a1, v12);
    *v12 = 0u;
    *(v12 + 1) = 0u;
    *(v12 + 2) = 0u;
    *(v12 + 3) = 0u;
    *(v12 + 4) = 0u;
    *(v12 + 5) = 0u;
    *(v12 + 12) = 0;
    free(v12);
    if (!entry)
    {
      entry = krb5_copy_keyblock(a1, &v14.timestamp, a6);
      krb5_free_principal(a1, *&v14.magic);
      krb5_free_keyblock_contents(a1, &v14.timestamp);
    }
  }

  return entry;
}

krb5_error_code krb5_kt_get_entry(krb5_context context, krb5_keytab keytab, krb5_const_principal principal, krb5_kvno vno, krb5_enctype enctype, krb5_keytab_entry *entry)
{
  v7 = *&enctype;
  v12 = *(keytab + 5);
  if (!v12)
  {
    v14 = *(keytab + 6);
    if (v14)
    {
      v23 = 0;
      memset(&entrya, 0, sizeof(entrya));
      memset(cursor, 0, sizeof(cursor));
      if (!v14(context, keytab, cursor))
      {
        LODWORD(entry->principal) = 0;
        if (!krb5_kt_next_entry(context, keytab, &entrya, cursor))
        {
          if (vno <= 0)
          {
            v15 = --vno;
          }

          else
          {
            v15 = vno;
          }

          do
          {
            if (krb5_kt_compare(context, &entrya, principal, 0, v7))
            {
              if (LODWORD(entrya.principal) == vno || v15 == LODWORD(entrya.principal))
              {
                krb5_kt_copy_entry_contents(context, &entrya, entry);
                krb5_free_principal(context, *&entrya.magic);
                krb5_free_keyblock_contents(context, &entrya.timestamp);
                v23 = 0;
                memset(&entrya, 0, sizeof(entrya));
                v20 = *(keytab + 8);
                if (v20)
                {
                  v20(context, keytab, cursor);
                }

                else
                {
                  krb5_set_error_message(context, -1980176636, "end_seq_get is not supported in the %s  keytab", *keytab);
                }

                return 0;
              }

              if (!vno)
              {
                v17 = entry->principal;
                if (SLODWORD(entrya.principal) > v17)
                {
                  if (v17)
                  {
                    krb5_free_principal(context, *&entry->magic);
                    krb5_free_keyblock_contents(context, &entry->timestamp);
                    *&entry[1].magic = 0;
                    *&entry->timestamp = 0u;
                    *&entry->key.length = 0u;
                    *&entry->magic = 0u;
                  }

                  krb5_kt_copy_entry_contents(context, &entrya, entry);
                }
              }
            }

            krb5_free_principal(context, *&entrya.magic);
            krb5_free_keyblock_contents(context, &entrya.timestamp);
            v23 = 0;
            memset(&entrya, 0, sizeof(entrya));
          }

          while (!krb5_kt_next_entry(context, keytab, &entrya, cursor));
        }

        v18 = *(keytab + 8);
        if (v18)
        {
          v18(context, keytab, cursor);
        }

        else
        {
          krb5_set_error_message(context, -1980176636, "end_seq_get is not supported in the %s  keytab", *keytab);
        }

        if (LODWORD(entry->principal))
        {
          return 0;
        }

        v19 = -1765328203;
        sub_252264CD0(context, 2529639093, keytab, principal, v7, vno);
        return v19;
      }
    }

    else
    {
      krb5_set_error_message(context, -1980176636, "start_seq_get is not supported in the %s keytab type", *keytab);
    }

    v19 = -1765328203;
    *(context + 72) = -1765328203;
    return v19;
  }

  return v12();
}

krb5_error_code krb5_kt_close(krb5_context context, krb5_keytab keytab)
{
  v3 = (*(keytab + 3))(context);
  *keytab = 0u;
  *(keytab + 1) = 0u;
  *(keytab + 2) = 0u;
  *(keytab + 3) = 0u;
  *(keytab + 4) = 0u;
  *(keytab + 5) = 0u;
  *(keytab + 12) = 0;
  free(keytab);
  return v3;
}

uint64_t krb5_kt_free_entry(_krb5_context *a1, uint64_t a2)
{
  krb5_free_principal(a1, *a2);
  krb5_free_keyblock_contents(a1, (a2 + 16));
  *(a2 + 48) = 0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  return 0;
}

uint64_t krb5_kt_get_full_name(_krb5_context *a1, uint64_t a2, char **a3)
{
  v10 = *MEMORY[0x277D85DE8];
  *a3 = 0;
  __strlcpy_chk();
  v6 = (*(a2 + 16))(a1, a2, v8, 1024);
  if (!v6)
  {
    if (asprintf(a3, "%s:%s", v9, v8) == -1)
    {
      v6 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory");
      *a3 = 0;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t krb5_kt_destroy(uint64_t a1, uint64_t (**a2)(void))
{
  v4 = a2[4]();
  (a2[3])(a1, a2);
  *a2 = 0u;
  *(a2 + 1) = 0u;
  *(a2 + 2) = 0u;
  *(a2 + 3) = 0u;
  *(a2 + 4) = 0u;
  *(a2 + 5) = 0u;
  a2[12] = 0;
  free(a2);
  return v4;
}

uint64_t krb5_kt_compare(uint64_t a1, void *a2, _DWORD *a3, int a4, int a5)
{
  if (!a3)
  {
    return (!a4 || *(a2 + 2) == a4) && (!a5 || *(a2 + 4) == a5);
  }

  if (*a3 == -1202)
  {
    v10 = krb5_principal_compare_any_realm;
    result = (krb5_principal_compare_any_realm)(a1, *a2);
  }

  else
  {
    v10 = krb5_principal_compare;
    result = (krb5_principal_compare)(a1, *a2);
  }

  if (result)
  {
    v12 = a2[6];
    if (v12 && *v12)
    {
      v13 = 0;
      v14 = 0;
      while (!v10(a1, *(v12 + 1) + v13, a3))
      {
        ++v14;
        v12 = a2[6];
        v13 += 32;
        if (v14 >= *v12)
        {
          return (!a4 || *(a2 + 2) == a4) && (!a5 || *(a2 + 4) == a5);
        }
      }

      return 0;
    }

    return (!a4 || *(a2 + 2) == a4) && (!a5 || *(a2 + 4) == a5);
  }

  return result;
}

uint64_t sub_252264CD0(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, int a6)
{
  v18 = *MEMORY[0x277D85DE8];
  v14 = 0;
  v15 = 0;
  krb5_unparse_name_fixed(a1, a4, v17, 0x100uLL);
  krb5_kt_get_full_name(a1, a3, &v15);
  if (a5)
  {
    krb5_enctype_to_string(a1, a5, &v14);
  }

  if (a6)
  {
    snprintf(__str, 0x19uLL, "(kvno %d)", a6);
  }

  else
  {
    __str[0] = 0;
  }

  v11 = v15;
  if (!v15)
  {
    v11 = "unknown keytab";
  }

  v12 = v14;
  if (!v14)
  {
    v12 = "unknown enctype";
  }

  krb5_set_error_message(a1, a2, "Failed to find %s%s in keytab %s (%s)", v17, __str, v11, v12);
  free(v15);
  if (v14)
  {
    free(v14);
  }

  return a2;
}

krb5_error_code krb5_kt_start_seq_get(krb5_context context, krb5_keytab keytab, krb5_kt_cursor *cursor)
{
  v4 = *(keytab + 6);
  if (v4)
  {

    return v4(context);
  }

  else
  {
    krb5_set_error_message(context, -1980176636, "start_seq_get is not supported in the %s keytab type", *keytab);
    return -1980176636;
  }
}

krb5_error_code krb5_kt_next_entry(krb5_context context, krb5_keytab keytab, krb5_keytab_entry *entry, krb5_kt_cursor *cursor)
{
  *&entry[1].magic = 0;
  *&entry->timestamp = 0u;
  *&entry->key.length = 0u;
  *&entry->magic = 0u;
  v5 = *(keytab + 7);
  if (v5)
  {

    return v5(context);
  }

  else
  {
    krb5_set_error_message(context, -1980176636, "next_entry is not supported in the %s  keytab", *keytab);
    return -1980176636;
  }
}

uint64_t krb5_kt_copy_entry_contents(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  *(a3 + 8) = *(a2 + 8);
  v6 = krb5_copy_principal(a1, *a2, a3);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = krb5_copy_keyblock_contents(a1, (a2 + 16), (a3 + 16));
    if (!v7)
    {
      *(a3 + 40) = *(a2 + 40);
      return v7;
    }
  }

  krb5_free_principal(a1, *a3);
  krb5_free_keyblock_contents(a1, (a3 + 16));
  *(a3 + 48) = 0;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  return v7;
}

krb5_error_code krb5_kt_end_seq_get(krb5_context context, krb5_keytab keytab, krb5_kt_cursor *cursor)
{
  v4 = *(keytab + 8);
  if (v4)
  {

    return v4(context);
  }

  else
  {
    krb5_set_error_message(context, -1980176636, "end_seq_get is not supported in the %s  keytab", *keytab);
    return -1980176636;
  }
}

krb5_error_code krb5_kt_add_entry(krb5_context a1, krb5_keytab a2, krb5_keytab_entry *a3)
{
  if (*(a2 + 9))
  {
    LODWORD(a3->key.contents) = time(0);
    v6 = *(a2 + 9);

    return v6(a1, a2, a3);
  }

  else
  {
    krb5_set_error_message(a1, -1765328201, "Add is not supported in the %s keytab", *a2);
    return -1765328201;
  }
}

krb5_error_code krb5_kt_remove_entry(krb5_context a1, krb5_keytab a2, krb5_keytab_entry *a3)
{
  v4 = *(a2 + 10);
  if (v4)
  {

    return v4(a1);
  }

  else
  {
    krb5_set_error_message(a1, -1765328201, "Remove is not supported in the %s keytab", *a2);
    return -1765328201;
  }
}

uint64_t krb5_kt_have_content(krb5_context a1, const char **a2)
{
  v11 = 0;
  memset(&entry, 0, sizeof(entry));
  memset(cursor, 0, sizeof(cursor));
  v8 = 0;
  v4 = a2[6];
  if (v4)
  {
    if (!(v4)(a1, a2, cursor))
    {
      v5 = krb5_kt_next_entry(a1, a2, &entry, cursor);
      v6 = a2[8];
      if (v6)
      {
        (v6)(a1, a2, cursor);
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      else
      {
        krb5_set_error_message(a1, -1980176636, "end_seq_get is not supported in the %s  keytab", *a2);
        if (!v5)
        {
LABEL_10:
          krb5_free_principal(a1, *&entry.magic);
          krb5_free_keyblock_contents(a1, &entry.timestamp);
          return v5;
        }
      }
    }
  }

  else
  {
    krb5_set_error_message(a1, -1980176636, "start_seq_get is not supported in the %s keytab type", *a2);
  }

  v5 = 2529639093;
  if (!krb5_kt_get_full_name(a1, a2, &v8))
  {
    krb5_set_error_message(a1, -1765328203, "No entry in keytab: %s", v8);
    free(v8);
  }

  return v5;
}

void _krb5_state_srv_sort(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2 >= 2)
  {
    qsort(*(a1 + 88), v2, 8uLL, sub_25226539C);
    v4 = *(a1 + 96);
    if (v4 >= 2)
    {
      v5 = 0;
      v6 = 0;
      for (i = 1; i < v4; ++i)
      {
        v8 = *(a1 + 88);
        v9 = *(*(v8 + 8 * v6) + 34);
        v10 = *(v8 + 8 * i);
        if (v9 == *(v10 + 34))
        {
          v11 = *(v10 + 36) + v5;
          v12 = v6;
        }

        else
        {
          v11 = 0;
          if (v6 >= i)
          {
            goto LABEL_18;
          }

          v12 = i;
          if (v5)
          {
            v13 = v6;
            do
            {
              v14 = ~*(a1 + 96);
              v15 = arc4random() % v5;
              v16 = v6;
              do
              {
                v17 = *(*(a1 + 88) + 8 * v16);
                v18 = *(v17 + 36);
                if ((v18 & 0x80000000) == 0)
                {
                  v19 = v15 >= v18;
                  v15 -= v18;
                  if (v15 == 0 || !v19)
                  {
                    v5 -= v18;
                    *(v17 + 36) = v14;
                    goto LABEL_15;
                  }
                }

                ++v16;
              }

              while (i != v16);
              sub_25226B748(*(a1 + 32), 2, "o too large: sum %d", v5);
LABEL_15:
              ++v13;
            }

            while (v13 < i && v5);
            v11 = 0;
            v4 = *(a1 + 96);
LABEL_18:
            v12 = i;
          }
        }

        v5 = v11;
        v6 = v12;
      }
    }

    v20 = *(a1 + 88);

    qsort(v20, v4, 8uLL, sub_25226539C);
  }
}

uint64_t sub_25226539C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a1 + 34);
  v4 = *(*a2 + 34);
  result = (v3 - v4);
  if (v3 == v4)
  {
    return (*(v2 + 36) - *(*a2 + 36));
  }

  return result;
}

size_t sub_2522653C4(const char *a1)
{
  result = strlen(a1);
  if (result)
  {
    if (a1[result - 1] == 46)
    {
      a1[result - 1] = 0;
    }
  }

  return result;
}

void sub_252265400(void *a1)
{
  v2 = a1[1];
  if (v2)
  {
    freeaddrinfo(v2);
    a1[1] = 0;
  }

  v3 = a1[5];
  if (v3)
  {
    free(v3);
  }

  free(a1);
}

uint64_t krb5_krbhst_format_string(int a1, int *a2, char *__str, size_t __size)
{
  *&__stra[3] = 0;
  *__stra = 0;
  v7 = *a2;
  if ((*a2 - 1) > 2)
  {
    v8 = "";
  }

  else
  {
    v8 = off_2796FF5B8[v7 - 1];
  }

  if (*(a2 + 2) != *(a2 + 3))
  {
    snprintf(__stra, 7uLL, ":%d", *(a2 + 2));
    v7 = *a2;
  }

  if (v7 == 3)
  {
    v9 = *(a2 + 5);
    v10 = "/";
  }

  else
  {
    v10 = "";
    v9 = "";
  }

  snprintf(__str, __size, "%s%s%s%s%s", v8, a2 + 48, __stra, v10, v9);
  return 0;
}

uint64_t krb5_krbhst_get_addrinfo(uint64_t a1, unsigned int *a2, addrinfo **a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = (a2 + 2);
  v4 = *(a2 + 1);
  if (v4)
  {
    result = 0;
  }

  else
  {
    v8 = (a2 + 12);
    v13 = *(a2 + 2);
    v14 = (a2 + 12);
    snprintf(__str, 0x20uLL, "%d", v13);
    v9 = *a2;
    memset(&v15, 0, sizeof(v15));
    if (v9 <= 3)
    {
      v15.ai_socktype = dword_2522A9F20[v9];
    }

    v15.ai_flags = 4100;
    result = getaddrinfo(v8, __str, &v15, v5);
    if (result)
    {
      v15.ai_flags &= ~4u;
      if (strchr(v8, 46) && v8[strlen(v8) - 1] != 46)
      {
        if (asprintf(&v14, "%s.", v8) < 0)
        {
          return 12;
        }

        v10 = v14;
        if (!v14)
        {
          return 12;
        }
      }

      else
      {
        v10 = v8;
      }

      v11 = getaddrinfo(v10, __str, &v15, v5);
      if (v14 != v8)
      {
        free(v14);
      }

      if (v11)
      {
        v12 = __error();
        result = krb5_eai_to_heim_errno(v11, *v12);
      }

      else
      {
        result = 0;
      }
    }

    v4 = *v5;
  }

  *a3 = v4;
  return result;
}

uint64_t krb5_krbhst_init_flags(_krb5_context *a1, char *a2, int a3, int a4, uint64_t *a5)
{
  *a5 = 0;
  switch(a3)
  {
    case 3:
      v9 = krb5_getportbyname(a1, "kpasswd", "udp", 0x1D0u);
      v10 = "change_password";
      v11 = sub_252265D94;
      break;
    case 2:
      v9 = krb5_getportbyname(a1, "kerberos-adm", "tcp", 0x2EDu);
      v10 = "admin";
      v11 = sub_252265BE4;
      break;
    case 1:
      v9 = krb5_getportbyname(a1, "kerberos", "udp", 0x58u);
      v10 = "kdc";
      v11 = sub_2522658E4;
      break;
    default:
      v19 = 25;
      krb5_set_error_message(a1, 25, "unknown krbhst type (%u)", a3);
      return v19;
  }

  v12 = v11;
  v13 = heim_uniq_alloc(0xF0uLL, "krbhst-context", sub_25226885C);
  if (!v13)
  {
    return 12;
  }

  v14 = v13;
  v15 = strdup(a2);
  *(v14 + 96) = v15;
  if (!v15 || (v16 = sub_2522A7A70("krbhst-srv"), (*(v14 + 200) = v16) == 0) || (v17 = sub_2522A7A70("krbhst-addrinfo"), (*(v14 + 208) = v17) == 0))
  {
    heim_release(v14);
    return 12;
  }

  v18 = bswap32(v9);
  sub_25226B748(a1, 2, "Trying to find service %s for realm %s flags %x", v10, a2, a4);
  if (!strchr(a2, 46))
  {
    *(v14 + 104) |= 0x100u;
  }

  if ((a4 & 2) != 0)
  {
    *(v14 + 104) |= 0x200u;
  }

  *(v14 + 176) = v14 + 168;
  *(v14 + 184) = v14 + 168;
  pthread_mutex_init((v14 + 32), 0);
  v19 = 0;
  *(v14 + 120) = v12;
  *(v14 + 108) = HIWORD(v18);
  *a5 = v14;
  return v19;
}

uint64_t sub_2522658E4(_krb5_context *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 104);
  if ((v11 & 0x800) == 0)
  {
    *(a2 + 104) = v11 | 0x800;
    if (*(a2 + 128))
    {
      sub_25226B748(a1, 5, "adding hostname: %s", *(a2 + 128));
      sub_252266AAC(a1, a2, "hostname", *(a2 + 128), *(a2 + 108), *(a2 + 112));
    }

    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 0x400) == 0)
  {
    sub_252266320(a1, a2, 1u);
    *(a2 + 104) |= 0x400u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 1) == 0)
  {
    sub_252266398(a1, a2, "kdc", a4, a5, a6, a7, a8);
    *(a2 + 104) |= 1u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 0x100) != 0)
  {
    v12 = 2529639068;
    sub_25226B748(a1, 1, "Configuration exists for realm %s, wont go to DNS");
    return v12;
  }

  if (!*(a1 + 61))
  {
    goto LABEL_33;
  }

  if ((v11 & 0x10) == 0)
  {
    v14 = *(a2 + 136);
    if (v14)
    {
      sub_252266494(a1, a2, v14, "tcp", "kerberos");
      *(a2 + 104) |= 0x10u;
      if (sub_252266014(a2, a3))
      {
        return 0;
      }

      v11 = *(a2 + 104);
    }
  }

  if ((v11 & 4) == 0)
  {
    sub_252266494(a1, a2, 0, "tcp", "kerberos");
    *(a2 + 104) |= 4u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 0x202) != 0)
  {
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_31;
    }
  }

  else
  {
    sub_252266494(a1, a2, 0, "udp", "kerberos");
    *(a2 + 104) |= 2u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
    if ((v11 & 0x40) != 0)
    {
      goto LABEL_31;
    }
  }

  sub_252266494(a1, a2, 0, "kkdcp", "kerberos");
  *(a2 + 104) |= 0x40u;
  if (sub_252266014(a2, a3))
  {
    return 0;
  }

  v11 = *(a2 + 104);
LABEL_31:
  if ((v11 & 0x20) == 0)
  {
    sub_252266494(a1, a2, 0, "http", "kerberos");
    *(a2 + 104) |= 0x20u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }
  }

LABEL_33:
  while (1)
  {
    v15 = *(a2 + 104);
    if ((v15 & 0x80) != 0)
    {
      break;
    }

    v12 = sub_252266870(a1, a2, *(a2 + 108), (v15 >> 9) & 1, a5, a6, a7, a8);
    if (v12 || sub_252266014(a2, a3))
    {
      return v12;
    }
  }

  v12 = 2529639068;
  sub_25226B748(a1, 0, "No KDC entries found for %s");
  return v12;
}

uint64_t sub_252265BE4(_krb5_context *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 104);
  if ((v11 & 0x400) == 0)
  {
    sub_252266320(a1, a2, 3u);
    *(a2 + 104) |= 0x400u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 1) == 0)
  {
    sub_252266398(a1, a2, "admin_server", a4, a5, a6, a7, a8);
    *(a2 + 104) |= 1u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 0x100) != 0)
  {
    v12 = 2529639068;
    sub_25226B748(a1, 1, "Configuration exists for realm %s, wont go to DNS");
    return v12;
  }

  if ((v11 & 4) != 0 || !*(a1 + 61) || (sub_252266494(a1, a2, 0, "tcp", "kerberos-adm"), *(a2 + 104) |= 4u, !sub_252266014(a2, a3)))
  {
    pthread_mutex_lock((a2 + 32));
    v13 = *(a2 + 176);
    pthread_mutex_unlock((a2 + 32));
    if (v13 != a2 + 168)
    {
      goto LABEL_17;
    }

    v18 = *(a2 + 104);
    if ((v18 & 0x80) != 0)
    {
      goto LABEL_17;
    }

    v12 = sub_252266870(a1, a2, *(a2 + 108), (v18 >> 9) & 1, v14, v15, v16, v17);
    if (v12)
    {
      return v12;
    }

    *(a2 + 104) |= 0x80u;
    if (!sub_252266014(a2, a3))
    {
LABEL_17:
      v12 = 2529639068;
      sub_25226B748(a1, 0, "No admin entries found for realm %s");
      return v12;
    }
  }

  return 0;
}

uint64_t sub_252265D94(_krb5_context *a1, uint64_t a2, int **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a2 + 104);
  if ((v11 & 0x400) == 0)
  {
    sub_252266320(a1, a2, 5u);
    *(a2 + 104) |= 0x400u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 1) == 0)
  {
    sub_252266398(a1, a2, "kpasswd_server", a4, a5, a6, a7, a8);
    *(a2 + 104) |= 1u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }

    v11 = *(a2 + 104);
  }

  if ((v11 & 0x100) != 0)
  {
    v12 = 2529639068;
    sub_25226B748(a1, 1, "Configuration exists for realm %s, wont go to DNS");
    return v12;
  }

  if (*(a1 + 61))
  {
    if ((v11 & 0x202) != 0)
    {
      if ((v11 & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_252266494(a1, a2, 0, "udp", "kpasswd");
      *(a2 + 104) |= 2u;
      if (sub_252266014(a2, a3))
      {
        return 0;
      }

      if ((*(a2 + 104) & 4) != 0)
      {
        goto LABEL_17;
      }
    }

    sub_252266494(a1, a2, 0, "tcp", "kpasswd");
    *(a2 + 104) |= 4u;
    if (sub_252266014(a2, a3))
    {
      return 0;
    }
  }

LABEL_17:
  pthread_mutex_lock((a2 + 32));
  v13 = *(a2 + 176);
  pthread_mutex_unlock((a2 + 32));
  if (v13 == a2 + 168)
  {
    *(a2 + 104) = 0;
    *(a2 + 112) = *(a2 + 108);
    *(a2 + 120) = sub_252265BE4;
    v12 = sub_252265BE4(a1, a2, a3, v14, v15, v16, v17, v18);
    if (!v12)
    {
      **a3 = (*(a2 + 104) >> 9) & 1;
    }
  }

  else
  {
    v12 = 2529639068;
    sub_25226B748(a1, 0, "No kpasswd entries found for realm %s");
  }

  return v12;
}

uint64_t krb5_krbhst_next(uint64_t a1, uint64_t a2, void *a3)
{
  if (sub_252266014(a2, a3))
  {
    return 0;
  }

  v7 = *(a2 + 120);

  return v7(a1, a2, a3);
}

BOOL sub_252266014(uint64_t a1, void *a2)
{
  pthread_mutex_lock((a1 + 32));
  v4 = **(a1 + 176);
  if (v4)
  {
    *a2 = v4;
    *(a1 + 176) = **(a1 + 176) + 16;
  }

  v5 = v4 != 0;
  pthread_mutex_unlock((a1 + 32));
  return v5;
}

uint64_t krb5_krbhst_next_as_string(uint64_t a1, uint64_t a2, char *a3, size_t a4)
{
  *v9 = 0;
  LODWORD(result) = sub_252266014(a2, v9);
  if (result || (result = (*(a2 + 120))(a1, a2, v9), !result))
  {
    krb5_krbhst_format_string(result, *v9, a3, a4);
    return 0;
  }

  return result;
}

uint64_t krb5_krbhst_set_hostname(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v6 = *(a2 + 128);
  if (v6)
  {
    free(v6);
  }

  v7 = strdup(__s1);
  *(a2 + 128) = v7;
  if (v7)
  {
    return 0;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_krbhst_set_sitename(_krb5_context *a1, uint64_t a2, char *__s1)
{
  v6 = *(a2 + 136);
  if (v6)
  {
    free(v6);
  }

  v7 = strdup(__s1);
  *(a2 + 136) = v7;
  if (v7)
  {
    return 0;
  }

  return krb5_enomem(a1);
}

uint64_t krb5_krbhst_set_delgated_uuid(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  if (a3)
  {
    *(a2 + 104) |= 0x1000u;
    *(a2 + 144) = *a3;
    sub_25226B748(a1, 5, "krb5_krbhst_set_delegated_uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", *a3, *(a3 + 1), *(a3 + 2), *(a3 + 3), *(a3 + 4), *(a3 + 5), *(a3 + 6), *(a3 + 7), *(a3 + 8), *(a3 + 9), *(a3 + 10), *(a3 + 11), *(a3 + 12), *(a3 + 13), *(a3 + 14), *(a3 + 15));
  }

  return 0;
}

uint64_t krb5_krbhst_set_delgated_pid(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    *(a2 + 104) |= 0x1000u;
    *(a2 + 160) = a3;
    sub_25226B748(a1, 5, "krb5_krbhst_set_delegated_pid: %d", a3);
  }

  return 0;
}

uint64_t krb5_krbhst_reset(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 32));
  *(a2 + 176) = a2 + 168;

  return pthread_mutex_unlock((a2 + 32));
}

uint64_t sub_252266320(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v5[1] = a2;
  v5[0] = a3;
  v5[2] = krb5_homedir_access(a1) != 0;
  return krb5_plugin_run_f(a1, "krb5", "service_locator", 0, 0, v5, sub_252266EA8);
}

void sub_252266398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  strings = krb5_config_get_strings(a1, 0, a3, a4, a5, a6, a7, a8, "realms");
  v11 = "";
  if (!strings)
  {
    v11 = " not";
  }

  sub_25226B748(a1, 2, "configuration file for realm %s%s found", *(a2 + 96), v11);
  if (strings)
  {
    *(a2 + 104) |= 0x100u;
    v12 = *strings;
    if (*strings)
    {
      v13 = (strings + 1);
      do
      {
        sub_252266AAC(a1, a2, "config", v12, *(a2 + 108), *(a2 + 112));
        v14 = *v13++;
        v12 = v14;
      }

      while (v14);
    }

    krb5_config_free_strings(strings);
  }
}

void sub_252266494(_krb5_context *a1, uint64_t a2, uint64_t a3, char *a4, char *a5)
{
  v22 = 0;
  if (!krb5_realm_is_lkdc(*(a2 + 96)))
  {
    if (!strcasecmp(a4, "udp"))
    {
      v10 = 0;
    }

    else
    {
      if (strcasecmp(a4, "tcp"))
      {
        if (!strcasecmp(a4, "http"))
        {
          v12 = 0;
          v11 = bswap32(krb5_getportbyname(a1, "http", "tcp", 0x50u)) >> 16;
          v10 = 2;
        }

        else
        {
          if (strcasecmp(a4, "kkdcp"))
          {
            return;
          }

          v11 = bswap32(krb5_getportbyname(a1, "https", "tcp", 0x1BBu)) >> 16;
          v12 = "kkdcp";
          v10 = 3;
        }

LABEL_13:
        if (a3)
        {
          asprintf(&v22, "_%s._%s.%s._sites.%s.");
        }

        else
        {
          asprintf(&v22, "_%s._%s.%s.");
        }

        if (v22)
        {
          v13 = heim_uniq_alloc(0x68uLL, "heim-query-ctx", sub_2522671B0);
          if (v13)
          {
            context = v13;
            *(v13 + 32) = a1;
            v15 = j__dispatch_semaphore_create(0);
            *(context + 40) = v15;
            *(context + 56) = v22;
            if (v15)
            {
              v16 = heim_retain(a2);
              *(context + 48) = v16;
              *(context + 64) = v11;
              *(context + 68) = v10;
              *(context + 72) = v12;
              *(context + 88) = 0;
              *(context + 96) = 0;
              v24 = 69632;
              if (*(a2 + 216))
              {
                goto LABEL_20;
              }

              if ((*(a2 + 105) & 0x10) != 0)
              {
                DelegateConnection = DNSServiceCreateDelegateConnection();
              }

              else
              {
                DelegateConnection = DNSServiceCreateConnection((a2 + 216));
              }

              if (DelegateConnection)
              {
                sub_25226B748(a1, 2, "Failed setting up search context for domain %s failed: %d");
              }

              else
              {
                if (!DNSServiceSetDispatchQueue(*(a2 + 216), *(a2 + 200)))
                {
                  v16 = *(context + 48);
LABEL_20:
                  v17 = sub_252267334(a1, v16[12], a2, &v24);
                  sdRef = *(a2 + 216);
                  heim_retain(context);
                  if (DNSServiceQueryRecordWithAttribute(&sdRef, v24 | 0x4000, v17, *(context + 56), 0x21u, 1u, MEMORY[0x277D85ED8], sub_25226766C, context))
                  {
                    sub_25226B748(a1, 2, "searching DNS for domain %s failed: %d");
                  }

                  else
                  {
                    v19 = *(context + 40);
                    v20 = dispatch_time(0, 10000000000);
                    if (dispatch_semaphore_wait(v19, v20))
                    {
                      sub_25226B748(a1, 2, "searching DNS %s for domain timed out", *(context + 56));
                    }

                    v21 = *(a2 + 200);
                    block[0] = MEMORY[0x277D85DD0];
                    block[1] = 0x40000000;
                    block[2] = sub_252267F0C;
                    block[3] = &unk_2796FF490;
                    block[4] = sdRef;
                    block[5] = context;
                    dispatch_sync(v21, block);
                  }

                  goto LABEL_35;
                }

                DNSServiceRefDeallocate(*(a2 + 216));
                sub_25226B748(a1, 2, "Failed setting run queue for SRV query: %d");
              }

LABEL_35:
              heim_release(context);
              return;
            }

            heim_release(context);
          }

          else
          {
            free(v22);
          }
        }

        krb5_enomem(a1);
        return;
      }

      v10 = 1;
    }

    v11 = *(a2 + 112);
    v12 = 0;
    if (!v11)
    {
      v11 = bswap32(krb5_getportbyname(a1, a5, a4, 0x58u)) >> 16;
    }

    goto LABEL_13;
  }
}

uint64_t sub_252266870(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v24 = *MEMORY[0x277D85DE8];
  __s = 0;
  result = krb5_config_get_BOOL_default(a1, 0, 0, a4, a5, a6, a7, a8, "libdefaults");
  if (!result)
  {
    goto LABEL_5;
  }

  sub_25226B748(a1, 2, "fallback lookup %u for realm %s (service %s)", *(a2 + 164), *(a2 + 96), "kerberos");
  if (*(a2 + 164) > 4u || krb5_realm_is_lkdc(*(a2 + 96)))
  {
LABEL_4:
    result = 0;
LABEL_5:
    *(a2 + 104) |= 0x80u;
    return result;
  }

  v21 = 0;
  if (*(a2 + 164))
  {
    v13 = asprintf(&__s, "%s-%u.%s.");
  }

  else
  {
    v13 = asprintf(&__s, "%s.%s.");
  }

  v14 = v13;
  result = 12;
  if ((v14 & 0x80000000) == 0 && __s)
  {
    memset(&v20, 0, sizeof(v20));
    if (v8 <= 3)
    {
      v20.ai_socktype = dword_2522A9F20[v8];
    }

    snprintf(__str, 0x20uLL, "%d", a3);
    if (getaddrinfo(__s, __str, &v20, &v21))
    {
      free(__s);
      goto LABEL_4;
    }

    v15 = strlen(__s);
    v16 = malloc_type_calloc(1uLL, v15 + 56, 0x10F00401387887AuLL);
    if (v16)
    {
      v17 = v16;
      *v16 = v8;
      *(v16 + 3) = a3;
      *(v16 + 2) = a3;
      v18 = __s;
      *(v16 + 1) = v21;
      *(v16 + 4) = "fallback";
      v19 = (v16 + 12);
      memmove(v16 + 12, v18, v15);
      v19[v15] = 0;
      free(__s);
      sub_252266DA4(a1, a2, v17);
      result = 0;
      ++*(a2 + 164);
    }

    else
    {
      free(__s);
      return 12;
    }
  }

  return result;
}

uint64_t sub_252266AAC(uint64_t a1, uint64_t a2, uint64_t a3, char *__s, __int16 a5, int a6)
{
  LOWORD(v7) = a5;
  v8 = __s;
  v12 = strlen(__s);
  v13 = malloc_type_calloc(1uLL, v12 + 56, 0x10F00401387887AuLL);
  if (!v13)
  {
    return 12;
  }

  v14 = v13;
  *v13 = (*(a2 + 104) >> 9) & 1;
  if (!strncmp(v8, "http://", 7uLL))
  {
    *v14 = 2;
    v8 += 7;
    goto LABEL_14;
  }

  if (!strncmp(v8, "http/", 5uLL))
  {
    *v14 = 2;
    v8 += 5;
    v15 = "http";
    v16 = a1;
    v17 = 80;
LABEL_11:
    v7 = bswap32(krb5_getportbyname(v16, v15, "tcp", v17)) >> 16;
    goto LABEL_14;
  }

  if (!strncmp(v8, "kkdcp://", 8uLL))
  {
    *v14 = 3;
    v8 += 8;
    v15 = "https";
    v16 = a1;
    v17 = 443;
    goto LABEL_11;
  }

  if (!strncmp(v8, "tcp/", 4uLL))
  {
    *v14 = 1;
    goto LABEL_13;
  }

  if (!strncmp(v8, "udp/", 4uLL))
  {
    *v14 = 0;
LABEL_13:
    v8 += 4;
  }

LABEL_14:
  *(v14 + 4) = a3;
  if (*v8 == 91)
  {
    v18 = strchr(v8, 93);
    if (v18)
    {
      v19 = v18;
      v20 = &v18[~v8];
      memcpy(v14 + 24, v8 + 1, v20);
      *(v14 + v20 + 48) = 0;
      v22 = v19[1];
      v21 = v19 + 1;
      v23 = v22 == 58;
      if (v22 == 58)
      {
        v8 = v21 + 1;
      }

      else
      {
        v8 = v21;
      }

      if (v23)
      {
        v24 = v21 + 1;
      }

      else
      {
        v24 = 0;
      }

LABEL_25:
      v8 = strchr(v8, 47);
      if (!v8)
      {
        goto LABEL_32;
      }

      goto LABEL_28;
    }
  }

  v25 = strcspn(v8, ":/");
  if (!v25)
  {
    v28 = strlen(v8);
    memcpy(v14 + 24, v8, v28 + 1);
    v24 = 0;
LABEL_28:
    v27 = *v8;
    goto LABEL_30;
  }

  v26 = v25;
  memcpy(v14 + 24, v8, v25);
  *(v14 + v26 + 48) = 0;
  v27 = v8[v26];
  if (v27 == 58)
  {
    v24 = &v8[v26 + 1];
    goto LABEL_25;
  }

  v24 = 0;
  v8 += v26;
LABEL_30:
  if (v27 == 47)
  {
    *(v14 + 5) = strdup(v8 + 1);
  }

LABEL_32:
  rk_strlwr(v14 + 48);
  v14[3] = v7;
  v14[2] = v7;
  if (v24)
  {
    if (*v24)
    {
      __endptr = 0;
      v14[2] = strtol(v24, &__endptr, 0);
      if (__endptr == v24)
      {
        v30 = *(v14 + 5);
        if (v30)
        {
          free(v30);
        }

        free(v14);
        return 12;
      }
    }
  }

  if (a6)
  {
    v14[2] = a6;
  }

  sub_252266DA4(a1, a2, v14);
  return 0;
}

uint64_t sub_252266DA4(uint64_t a1, uint64_t a2, int *a3)
{
  pthread_mutex_lock((a2 + 32));
  if (a3)
  {
    do
    {
      v5 = *(a3 + 2);
      *(a3 + 2) = 0;
      v6 = *(a2 + 168);
      if (v6)
      {
        v7 = *a3;
        while (1)
        {
          v8 = *v6;
          if (*v6 == v7)
          {
            v9 = *(v6 + 2);
            if (v9 == *(a3 + 2) && !strcasecmp(v6 + 48, a3 + 48))
            {
              break;
            }
          }

          v6 = *(v6 + 2);
          if (!v6)
          {
            goto LABEL_8;
          }
        }

        sub_25226B748(a1, 10, "dropping dup KDC host: %s:%d (proto %u)", v6 + 48, v9, v8);
        sub_252265400(a3);
      }

      else
      {
LABEL_8:
        **(a2 + 184) = a3;
        *(a2 + 184) = a3 + 4;
      }

      a3 = v5;
    }

    while (v5);
  }

  return pthread_mutex_unlock((a2 + 32));
}

uint64_t sub_252266EA8(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int *a4)
{
  if (*a2 >= 3)
  {
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = *a4;
      v6 = *(a4 + 2);
      v7 = *(*(a4 + 1) + 96);
      v8 = sub_252266F5C;
      return v4(a3, v6, v5, v7, 0, 0, v8);
    }

LABEL_5:
    v4 = *(a2 + 32);
    v5 = *a4;
    v6 = *(a4 + 2);
    v7 = *(*(a4 + 1) + 96);
    v8 = sub_252266F78;
    return v4(a3, v6, v5, v7, 0, 0, v8);
  }

  if (*a2 == 2)
  {
    goto LABEL_5;
  }

  if (a4[4])
  {
    return (*(a2 + 24))(a3, *a4, *(*(a4 + 1) + 96), 0, 0, sub_252266F78);
  }

  else
  {
    return 2529639161;
  }
}

uint64_t sub_252266F78(_DWORD *a1, uint64_t a2, const sockaddr *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = rk_socket_sockaddr_size(a3);
  v6 = sub_252288B74(a3);
  if (getnameinfo(a3, v5, v11, 0x401u, __str, 0x20u, 10))
  {
    return 0;
  }

  v8 = a1[28];
  if (!v8)
  {
    if (atoi(__str))
    {
      goto LABEL_6;
    }

    v8 = a1[27];
  }

  snprintf(__str, 0x20uLL, "%d", v8);
LABEL_6:
  v9 = (a1[26] >> 9) & 1;
  result = sub_2522670A4(a1, v11, __str, v6, v9);
  if (!result)
  {
    if (v9)
    {
      return 0;
    }

    result = sub_2522670A4(a1, v11, __str, v6, 1u);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2522670A4(uint64_t a1, char *a2, char *a3, __int16 a4, unsigned int a5)
{
  memset(&v15, 0, sizeof(v15));
  if (a5 <= 3)
  {
    v15.ai_socktype = dword_2522A9F20[a5];
  }

  v14 = 0;
  if (!getaddrinfo(a2, a3, &v15, &v14))
  {
    v9 = strlen(a2);
    v10 = malloc_type_calloc(1uLL, v9 + 56, 0x10F00401387887AuLL);
    if (!v10)
    {
      return 12;
    }

    v11 = v10;
    *v10 = a5;
    *(v10 + 3) = a4;
    *(v10 + 2) = a4;
    *(v10 + 1) = v14;
    *(v10 + 4) = "plugin";
    v12 = (v10 + 12);
    memmove(v10 + 12, a2, v9);
    v12[v9] = 0;
    sub_252266DA4(*(a1 + 192), a1, v11);
  }

  return 0;
}

void sub_2522671B0(uint64_t a1)
{
  free(*(a1 + 56));
  v2 = *(a1 + 40);
  if (v2)
  {
    dispatch_release(v2);
  }

  v3 = *(a1 + 88);
  if (v3)
  {
    if (*(a1 + 96))
    {
      v4 = 0;
      v5 = MEMORY[0x277D85DD0];
      do
      {
        v6 = *(*(a1 + 48) + 208);
        v7[0] = v5;
        v7[1] = 0x40000000;
        v7[2] = sub_2522672A8;
        v7[3] = &unk_2796FF470;
        v7[4] = a1;
        v7[5] = v4;
        dispatch_sync(v6, v7);
        heim_release(*(*(a1 + 88) + 8 * v4++));
      }

      while (v4 < *(a1 + 96));
      v3 = *(a1 + 88);
    }

    free(v3);
    *(a1 + 96) = 0;
  }

  heim_release(*(a1 + 48));
}

void sub_2522672A8(uint64_t a1)
{
  v2 = *(*(*(*(a1 + 32) + 88) + 8 * *(a1 + 40)) + 64);
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    v3 = *(a1 + 40);
    *(*(*(*(a1 + 32) + 88) + 8 * v3) + 64) = 0;
    v4 = *(*(*(a1 + 32) + 88) + 8 * v3);
    if ((*(v4 + 96) & 1) == 0)
    {
      *(v4 + 96) |= 1u;
      v5 = *(*(*(a1 + 32) + 88) + 8 * *(a1 + 40));

      heim_release(v5);
    }
  }
}

uint64_t sub_252267334(uint64_t a1, char *__s1, uint64_t a3, _DWORD *a4)
{
  v7 = strdup(__s1);
  rk_strlwr(v7);
  host = nw_endpoint_create_host(v7, "88");
  if (host)
  {
    v9 = host;
    v10 = MEMORY[0x25309E200]();
    if (v10)
    {
      v11 = v10;
      if ((*(a3 + 105) & 0x10) != 0)
      {
        sub_25226B748(a1, 5, "host_create(%s): have delegate uuid", v7);
        nw_parameters_set_e_proc_uuid();
      }

      else
      {
        getpid();
        nw_parameters_set_pid();
      }

      evaluator_for_endpoint = nw_path_create_evaluator_for_endpoint();
      if (evaluator_for_endpoint)
      {
        v15 = evaluator_for_endpoint;
        v16 = nw_path_evaluator_copy_path();
        if (v16)
        {
          v17 = v16;
          if (nw_path_is_flow_divert())
          {
            if (nw_path_get_vpn_config_id())
            {
              sub_25226B748(a1, 5, "host_create(%s): vpn config uuid: %02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x%02x", v7, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
              nw_path_is_per_app_vpn();
              dns_service_id = ne_session_service_get_dns_service_id();
              sub_25226B748(a1, 5, "host_create(%s): AppVPN: %d", v7, dns_service_id);
              if (dns_service_id)
              {
                *a4 |= 0x10000000u;
              }
            }

            else
            {
              sub_25226B748(a1, 5, "host_create(%s): path have no config id", v7);
              dns_service_id = 0;
            }

            v20 = 0;
          }

          else
          {
            v19 = nw_path_copy_scoped_interface();
            v20 = v19;
            if (v19)
            {
              dns_service_id = nw_interface_get_index(v19);
              sub_25226B748(a1, 5, "host_create(%s): use dns_service_id %d", v7, dns_service_id);
            }

            else
            {
              sub_25226B748(a1, 5, "host_create(%s): no interface", v7);
              dns_service_id = 0;
            }
          }

          nw_release(v17);
          nw_release(v9);
          nw_release(v15);
          if (v20)
          {
            nw_release(v20);
          }

LABEL_27:
          nw_release(v11);
          if (!v7)
          {
            return dns_service_id;
          }

          goto LABEL_8;
        }

        sub_25226B748(a1, 5, "host_create(%s): path is NULL", v7);
        nw_release(v9);
        v18 = v15;
      }

      else
      {
        sub_25226B748(a1, 5, "host_create(%s): nw_path_evaluator_t is NULL", v7);
        v18 = v9;
      }

      nw_release(v18);
      dns_service_id = 0;
      goto LABEL_27;
    }

    sub_25226B748(a1, 5, "host_create(%s): nw_parameters_t is NULL", v7);
    nw_release(v9);
  }

  else
  {
    sub_25226B748(a1, 5, "host_create(%s): nw_endpoint_t host is NULL", v7);
  }

  dns_service_id = 0;
  if (v7)
  {
LABEL_8:
    free(v7);
  }

  return dns_service_id;
}

void sub_25226766C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, const u_char *a9, uint64_t a10, uint64_t a11)
{
  if (*(a11 + 80))
  {
    v13 = *(a11 + 32);

    sub_25226B748(v13, 10, "Got SRV callback after MoreComing == 0 was already set!", a4, a5, a6, a7, a8);
    return;
  }

  if (a4)
  {
    sub_25226B748(*(a11 + 32), 10, "SRV callback: error: %d", a4);
    v12 = 0;
LABEL_11:
    v15 = (a11 + 32);
    sub_25226B748(*(a11 + 32), 10, "SRV callback end: %s", a5);
    goto LABEL_12;
  }

  v12 = a2;
  if (a6 != 33)
  {
    sub_25226B748(*(a11 + 32), 10, "SRV callback: rd_len no srv query");
    goto LABEL_11;
  }

  v14 = a8;
  if (a8 <= 6)
  {
    sub_25226B748(*(a11 + 32), 10, "SRV callback: rd_len too short: %d");
    goto LABEL_11;
  }

  v33 = __rev16(*a9);
  v34 = __rev16(*(a9 + 1));
  v35 = __rev16(*(a9 + 2));
  v15 = (a11 + 32);
  sub_25226B748(*(a11 + 32), 10, "Got SRV callback: %s:%d prio: %d weight: %d", a5, v35, v33, v34);
  v36 = malloc_type_malloc(v14 + 1, 0xF061BD64uLL);
  if (!v36)
  {
    sub_25226B748(*v15, 10, "SRV callback: failed to allocate hostname", v58);
    goto LABEL_11;
  }

  v37 = v36;
  v38 = res_9_dn_expand(a9, &a9[v14], a9 + 6, v36, v14);
  if (v38 < 0 || v38 + 6 > v14)
  {
    sub_25226B748(*v15, 10, "SRV callback: dn_expand: %d");
LABEL_64:
    sub_25226B748(*v15, 10, "SRV callback end: %s", a5);
    free(v37);
    goto LABEL_12;
  }

  v39 = strlen(v37);
  if (v39 && v37[v39 - 1] == 46)
  {
    v37[v39 - 1] = 0;
  }

  if (sub_252267F68(*v15, v37))
  {
    goto LABEL_64;
  }

  v40 = heim_uniq_alloc(0x68uLL, "heim-srv-object", sub_252268034);
  if (!v40)
  {
    sub_25226B748(*v15, 10, "SRV callback: alloc heim-srv-object");
    goto LABEL_64;
  }

  v41 = v40;
  *(v40 + 32) = v35;
  *(v40 + 34) = v33;
  *(v40 + 36) = v34;
  *(v40 + 40) = a11;
  *(v40 + 80) = v37;
  v42 = *(a11 + 32);
  if ((*(*(a11 + 48) + 105) & 0x10) != 0)
  {
    v46 = sub_2522590FC(v42);
    v47 = *(a11 + 48);
    LODWORD(v61[0]) = 69632;
    v62[0] = 0;
    sub_25226B748(*(a11 + 32), 10, "Got delegated query on: %s", *(v41 + 80));
    *(v41 + 72) = heim_retain(*(v47 + 208));
    DelegateConnection = DNSServiceCreateDelegateConnection();
    v49 = *(a11 + 32);
    if (DelegateConnection)
    {
      sub_25226B748(v49, 2, "Failed setting up search context for addrinfo resolving for %s failed: %d");
      goto LABEL_72;
    }

    sub_25226B748(v49, 10, "setting queue");
    v51 = DNSServiceSetDispatchQueue(*(v41 + 56), *(v41 + 72));
    v52 = *v15;
    if (v51)
    {
      sub_25226B748(v52, 2, "Failed setting run queue for SRV query: %d");
      goto LABEL_72;
    }

    v53 = sub_252267334(v52, *(*(a11 + 48) + 96), v47, v61);
    v54 = j__dispatch_semaphore_create(0);
    *(v41 + 48) = v54;
    if (!v54)
    {
      goto LABEL_72;
    }

    heim_retain(v41);
    if (v46)
    {
      if ((v46 & 2) != 0)
      {
        v56 = 3;
      }

      else
      {
        *(v41 + 96) |= 0x20u;
        v56 = 1;
      }
    }

    else
    {
      v55 = *(v41 + 96);
      *(v41 + 96) = v55 | 0x10;
      if ((v46 & 2) == 0)
      {
        *(v41 + 96) = v55 | 0x30;
        sub_25226B748(*v15, 10, "No support address families: %s");
        goto LABEL_84;
      }

      v56 = 2;
    }

    sub_25226B748(*v15, 10, "DNS SRV using address flags: %08x", v56);
    asprintf(v62, "%s.", *(v41 + 80));
    *(v41 + 64) = *(v41 + 56);
    AddrInfo = DNSServiceGetAddrInfo((v41 + 64), LODWORD(v61[0]) | 0x4000, v53, v56, v62[0], sub_25226812C, v41);
    free(v62[0]);
    if (AddrInfo)
    {
      sub_25226B748(*v15, 10, "Failed doing A/AAAA lookup: %s: %d");
      goto LABEL_84;
    }
  }

  else
  {
    sub_25226B748(v42, 10, "Adding host: %s:%d", v37, v35);
    sub_2522684A8(v41, *(v41 + 80), 0, "srv", a11);
  }

  v43 = malloc_type_realloc(*(a11 + 88), 8 * (*(a11 + 96) + 1), 0x2004093837F09uLL);
  if (!v43)
  {
    sub_25226B748(*v15, 10, "SRV callback: realloc failed");
    if (*(v41 + 64))
    {
      v50 = *(v41 + 72);
      v59[0] = MEMORY[0x277D85DD0];
      v59[1] = 0x40000000;
      v59[2] = sub_252268590;
      v59[3] = &unk_2796FF4B0;
      v59[4] = v41;
      dispatch_sync(v50, v59);
      goto LABEL_72;
    }

LABEL_84:
    heim_release(v41);
    goto LABEL_72;
  }

  *(a11 + 88) = v43;
  v44 = heim_retain(v41);
  v45 = *(a11 + 96);
  *(*(a11 + 88) + 8 * v45) = v44;
  *(a11 + 96) = v45 + 1;
LABEL_72:
  sub_25226B748(*v15, 10, "SRV callback end: %s", a5);
  heim_release(v41);
LABEL_12:
  if ((v12 & 1) == 0)
  {
    sub_25226B748(*(a11 + 32), 10, "SRV callback no more coming");
    v16 = time(0);
    if (*(a11 + 80))
    {
      sub_2522A7D10();
    }

    *(a11 + 80) |= 1u;
    if (*(a11 + 96))
    {
      v17 = 0;
      v18 = v16 + 10;
      do
      {
        v19 = *(*(a11 + 88) + 8 * v17);
        v20 = *(v19 + 88);
        if (v20)
        {
          v21 = (v20 + 48);
        }

        else
        {
          v22 = *(v19 + 80);
          if (v22)
          {
            v21 = v22;
          }

          else
          {
            v21 = "<no-hostname>";
          }
        }

        v23 = v18 - time(0);
        v24 = *(*(*(a11 + 88) + 8 * v17) + 48);
        if (v24)
        {
          v25 = v23 < 1;
        }

        else
        {
          v25 = 1;
        }

        if (v25)
        {
          if (!v24)
          {
            goto LABEL_38;
          }
        }

        else if (v17 < *(*v15 + 344))
        {
          sub_25226B748(*v15, 10, "SRV waiting for addrinfo: %s", v21);
          if (sub_2522A7A8C(*(*(*(a11 + 88) + 8 * v17) + 48), v23))
          {
            v26 = *(*(a11 + 48) + 208);
            v61[0] = MEMORY[0x277D85DD0];
            v61[1] = 0x40000000;
            v61[2] = sub_25226875C;
            v61[3] = &unk_2796FF518;
            v61[4] = a11;
            v61[5] = v17;
            v27 = v61;
LABEL_33:
            dispatch_sync(v26, v27);
            v28 = *v15;
            if (qword_27F4D9570 != -1)
            {
              sub_2522A7D28();
            }

            if (qword_27F4D9560 && qword_27F4D9568)
            {
              sub_25226B748(v28, 10, " DNS adding negative cache for %s for %ld seconds", v21, 3600);
              v62[0] = MEMORY[0x277D85DD0];
              v62[1] = 0x40000000;
              v62[2] = sub_2522687D0;
              v62[3] = &unk_2796FF578;
              v62[4] = 3600;
              v62[5] = v21;
              dispatch_sync(qword_27F4D9560, v62);
            }

            goto LABEL_38;
          }

          goto LABEL_38;
        }

        if (*(*(a11 + 48) + 208))
        {
          sub_25226B748(*(a11 + 32), 10, "SRV timeout waiting for addrinfo: %s", v21);
          v26 = *(*(a11 + 48) + 208);
          block[0] = MEMORY[0x277D85DD0];
          block[1] = 0x40000000;
          block[2] = sub_252268778;
          block[3] = &unk_2796FF538;
          block[4] = a11;
          block[5] = v17;
          v27 = block;
          goto LABEL_33;
        }

LABEL_38:
        ++v17;
      }

      while (v17 < *(a11 + 96));
    }

    _krb5_state_srv_sort(a11);
    sub_25226B748(*(a11 + 32), 10, "SRV order after sorting");
    if (*(a11 + 96))
    {
      v29 = 0;
      do
      {
        v30 = *(*(a11 + 88) + 8 * v29);
        v31 = *(v30 + 88);
        if (v31)
        {
          v32 = (v31 + 48);
          LODWORD(v31) = *(v31 + 4);
        }

        else
        {
          v32 = *(v30 + 80);
          if (!v32)
          {
            v32 = "<no-hostname>";
          }
        }

        sub_25226B748(*(a11 + 32), 10, "  SRV%lu kdc: %s:%d prio: %d weight: %d", v29, v32, v31, *(v30 + 34), *(v30 + 36));
        if (v29 < *(*v15 + 344))
        {
          sub_252266DA4(*v15, *(a11 + 48), *(*(*(a11 + 88) + 8 * v29) + 88));
          *(*(*(a11 + 88) + 8 * v29) + 88) = 0;
        }

        ++v29;
      }

      while (v29 < *(a11 + 96));
    }

    dispatch_semaphore_signal(*(a11 + 40));
    heim_release(a11);
  }
}

void sub_252267F0C(uint64_t a1)
{
  DNSServiceRefDeallocate(*(a1 + 32));
  v2 = *(a1 + 40);
  if ((*(v2 + 80) & 1) == 0)
  {
    *(v2 + 80) |= 1u;
    v3 = *(a1 + 40);

    heim_release(v3);
  }
}

uint64_t sub_252267F68(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  if (qword_27F4D9560)
  {
    v3 = qword_27F4D9568 == 0;
  }

  else
  {
    v3 = 1;
  }

  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  if (!v3)
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_2522685FC;
    block[3] = &unk_2796FF4D8;
    block[4] = &v6;
    block[5] = a2;
    block[6] = a1;
    dispatch_sync(qword_27F4D9560, block);
    v2 = v7[3];
  }

  _Block_object_dispose(&v6, 8);
  return v2;
}

void *sub_252268034(uint64_t a1)
{
  if ((*(a1 + 96) & 1) == 0)
  {
    sub_25226B748(0, 10, "srv_release w/o getAddrDone set");
  }

  v2 = *(a1 + 48);
  if (v2)
  {
    heim_release(v2);
  }

  v3 = *(a1 + 72);
  if (v3)
  {
    v7 = *(a1 + 56);
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    heim_retain(v3);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_252268710;
    block[3] = &unk_2796FF4F8;
    v9 = vextq_s8(v7, v7, 8uLL);
    v10 = v3;
    dispatch_async(v3, block);
  }

  v4 = *(a1 + 80);
  if (v4)
  {
    free(v4);
  }

  result = *(a1 + 88);
  if (result)
  {
    do
    {
      v6 = result[2];
      sub_252265400(result);
      result = v6;
    }

    while (v6);
  }

  return result;
}

void sub_25226812C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, char *a5, const sockaddr *a6, uint64_t a7, uint64_t a8)
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = *(a8 + 40);
  v28 = 0;
  if (*(a8 + 96))
  {
    return;
  }

  if ((*(a8 + 96) & 2) != 0)
  {
    sub_25226B748(*(v8 + 32), 10, "SRV getaddrinfo: canceled: %s", a4);
    goto LABEL_13;
  }

  if (!a4)
  {
    sub_25226B748(*(v8 + 32), 10, "DNS getaddrinfo callback on: %s for af = %d", a5, a6->sa_family);
    sa_family = a6->sa_family;
    if (sa_family == 2)
    {
      v16 = 4;
    }

    else
    {
      if (sa_family != 30)
      {
        v17 = 1;
LABEL_41:
        v23 = sub_252288B34(a6);
        if (!getnameinfo(a6, v23, v30, 0x401u, 0, 0, 2))
        {
          snprintf(__str, 0x20uLL, "%d", *(a8 + 32));
          v24 = *(v8 + 68);
          memset(&v27.ai_socktype, 0, 40);
          if (v24 <= 3)
          {
            v27.ai_socktype = dword_2522A9F20[v24];
          }

          v25 = a6->sa_family;
          v27.ai_flags = 4100;
          v27.ai_family = v25;
          sub_25226B748(*(v8 + 32), 10, " SRV getaddrinfo: %s domain: proto: %d addr: %s:%d", *(v8 + 56), v24, v30, *(a8 + 32));
          v26 = getaddrinfo(v30, __str, &v27, &v28);
          if (v26)
          {
            sub_25226B748(*(v8 + 32), 10, " SRV getaddrinfo: failed to parse host: [%s]:%s error: %d", v30, __str, v26);
          }

          if (v28)
          {
            sub_25226B748(*(v8 + 32), 10, " Adding srv-addrinfo host: %s:%d", a5, *(a8 + 32));
            sub_2522684A8(a8, a5, v28, "srv-addrinfo", v8);
          }
        }

        goto LABEL_14;
      }

      v16 = 8;
    }

    v17 = 0;
    *(a8 + 96) |= v16;
    goto LABEL_41;
  }

  if (a4 == -65554)
  {
    v13 = a6->sa_family;
    if (v13 == 2)
    {
      v14 = 16;
    }

    else
    {
      if (v13 != 30)
      {
        v17 = 1;
        goto LABEL_39;
      }

      v14 = 32;
    }

    v17 = 0;
    *(a8 + 96) |= v14;
LABEL_39:
    sub_25226B748(*(v8 + 32), 10, "SRV callback: getaddrinfo on %s: no such record for af = %d", a5, a6->sa_family);
    goto LABEL_14;
  }

  sub_25226B748(*(v8 + 32), 10, "SRV getaddrinfo other error: %d", a4);
LABEL_13:
  v17 = 1;
LABEL_14:
  v18 = "more coming";
  if ((a2 & 1) == 0)
  {
    v18 = "done";
  }

  v19 = "yes";
  if ((*(a8 + 96) & 4) != 0)
  {
    v20 = "yes";
  }

  else
  {
    v20 = "waiting";
  }

  if ((*(a8 + 96) & 0x10) != 0)
  {
    v20 = "no-rr";
  }

  if ((*(a8 + 96) & 8) == 0)
  {
    v19 = "waiting";
  }

  if ((*(a8 + 96) & 0x20) != 0)
  {
    v21 = "no-rr";
  }

  else
  {
    v21 = v19;
  }

  sub_25226B748(*(v8 + 32), 10, " SRV getaddrinfo end: %s (%s) (IPv4:%s) (IPv6:%s)", a5, v18, v20, v21);
  if (v17)
  {
    v22 = "failed";
LABEL_28:
    sub_25226B748(*(v8 + 32), 10, " DNS getaddrinfo done: %s %s", *(a8 + 80), v22);
    *(a8 + 96) |= 1u;
    j__dispatch_semaphore_signal(*(a8 + 48));
    heim_release(a8);
    return;
  }

  if ((*(a8 + 96) & 0x14) != 0 && (a2 & 1) == 0 && (*(a8 + 96) & 0x28) != 0)
  {
    v22 = "success";
    goto LABEL_28;
  }
}

void sub_2522684A8(uint64_t a1, char *__s, addrinfo *a3, uint64_t a4, uint64_t a5)
{
  v10 = strlen(__s);
  v11 = malloc_type_calloc(1uLL, v10 + 56, 0x10F00401387887AuLL);
  if (v11)
  {
    v12 = v11;
    v13 = strlen(__s);
    memcpy(v12 + 24, __s, v13 + 1);
    *v12 = *(a5 + 68);
    v12[3] = 0;
    v12[2] = *(a1 + 32);
    v14 = *(a5 + 72);
    if (v14)
    {
      *(v12 + 5) = strdup(v14);
    }

    *(v12 + 4) = a4;
    v15 = *(a1 + 88);
    *(v12 + 1) = a3;
    *(v12 + 2) = v15;
    *(a1 + 88) = v12;
  }

  else if (a3)
  {

    freeaddrinfo(a3);
  }
}

void sub_252268590(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 64);
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
    *(*(a1 + 32) + 64) = 0;
    v3 = *(a1 + 32);
    if ((*(v3 + 96) & 1) == 0)
    {
      *(v3 + 96) |= 1u;
      v4 = *(a1 + 32);

      heim_release(v4);
    }
  }
}

void sub_2522685FC(uint64_t a1)
{
  v2 = heim_string_create(*(a1 + 40));
  if (v2)
  {
    v3 = v2;
    v4 = heim_dict_copy_value(qword_27F4D9568, v2);
    if (v4)
    {
      v5 = v4;
      v6 = time(0);
      *(*(*(a1 + 32) + 8) + 24) = heim_number_get_int(v5);
      *(*(*(a1 + 32) + 8) + 24) -= v6;
      heim_release(v5);
    }

    v7 = *(*(*(a1 + 32) + 8) + 24);
    if (v7 <= 0)
    {
      heim_dict_delete_key(qword_27F4D9568, v3);
      *(*(*(a1 + 32) + 8) + 24) = 0;
    }

    else
    {
      sub_25226B748(*(a1 + 48), 10, " DNS negative cache for host %s for another %ld seconds", *(a1 + 40), v7);
    }

    heim_release(v3);
  }
}

void sub_252268710(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    DNSServiceRefDeallocate(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    DNSServiceRefDeallocate(v3);
  }

  v4 = a1[6];

  heim_release(v4);
}

uint64_t sub_25226875C(uint64_t result)
{
  v1 = *(*(*(result + 32) + 88) + 8 * *(result + 40));
  *(v1 + 96) |= 2u;
  return result;
}

uint64_t sub_252268778(uint64_t result)
{
  v1 = *(*(*(result + 32) + 88) + 8 * *(result + 40));
  *(v1 + 96) |= 2u;
  return result;
}

dispatch_queue_t sub_252268794()
{
  qword_27F4D9568 = heim_dict_create();
  result = dispatch_queue_create("krbhst-dns-cache", 0);
  qword_27F4D9560 = result;
  return result;
}

void sub_2522687D0(uint64_t a1)
{
  v2 = time(0);
  v3 = heim_number_create(*(a1 + 32) + v2);
  if (v3)
  {
    v4 = v3;
    v5 = heim_string_create(*(a1 + 40));
    if (v5)
    {
      v6 = v5;
      heim_dict_set_value(qword_27F4D9568, v5, v4);
      heim_release(v4);
      v4 = v6;
    }

    heim_release(v4);
  }
}

void sub_25226885C(uint64_t a1)
{
  v2 = *(a1 + 168);
  if (v2)
  {
    do
    {
      v3 = v2[2];
      sub_252265400(v2);
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 168) = 0;
  v4 = *(a1 + 128);
  if (v4)
  {
    free(v4);
    *(a1 + 128) = 0;
  }

  v5 = *(a1 + 136);
  if (v5)
  {
    free(v5);
    *(a1 + 136) = 0;
  }

  v6 = *(a1 + 216);
  if (v6)
  {
    *(a1 + 216) = 0;
    v7 = *(a1 + 200);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 0x40000000;
    block[2] = sub_252268954;
    block[3] = &unk_2796FF598;
    block[4] = v6;
    dispatch_async(v7, block);
  }

  v8 = *(a1 + 200);
  if (v8)
  {
    sub_2522A7A78(v8);
    *(a1 + 200) = 0;
  }

  v9 = *(a1 + 208);
  if (v9)
  {
    sub_2522A7A78(v9);
    *(a1 + 208) = 0;
  }

  pthread_mutex_destroy((a1 + 32));
  free(*(a1 + 96));
  *(a1 + 96) = 0;
}

uint64_t sub_25226895C(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, __int128 *a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, unsigned int *a11, krb5_keyblock **a12, uint64_t a13)
{
  v71 = 0;
  v72 = 0;
  v70 = 0;
  *a13 = 0u;
  *(a13 + 16) = 0u;
  *(a13 + 32) = 0u;
  *(a13 + 48) = 0u;
  *(a13 + 64) = 0u;
  *(a13 + 80) = 0u;
  *(a13 + 96) = 0u;
  *(a13 + 112) = 0;
  krb5_data_zero(&v70);
  v21 = *(*a2 + 240);
  if (v21)
  {
    v68 = 0;
    v66 = 0u;
    v67 = 0u;
    v64 = 0u;
    v65 = 0u;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    memset(v69, 0, sizeof(v69));
    checksum = v21(a1, a2, &v42, v69);
    if (!checksum)
    {
      sub_25228B680(v69);
    }

    return checksum;
  }

  v23 = *(a9 + 136);
  if (!a6)
  {
    goto LABEL_16;
  }

  v40 = 0;
  v41 = 0;
  v69[0] = 0uLL;
  v44 = 0uLL;
  v42 = *a6;
  v24 = *(a6 + 3);
  *&v43 = *(a6 + 2);
  *(&v43 + 1) = v24;
  *&v45 = 0;
  *(&v45 + 1) = "Kerberos";
  inited = _krb5_s4u2self_to_checksumdata(a1, &v42, v69);
  if (inited)
  {
    goto LABEL_21;
  }

  v26 = krb5_crypto_init(a1, (a9 + 16), 0, &v41);
  if (!v26)
  {
    checksum = krb5_create_checksum(a1, v41, 0x11u, 0, *(&v69[0] + 1), *&v69[0], &v44);
    krb5_crypto_destroy(a1, v41);
    krb5_data_free(v69);
    if (checksum)
    {
      goto LABEL_22;
    }

    v27 = sub_25228B46C(&v42);
    v28 = malloc_type_malloc(v27, 0x21E65DFCuLL);
    if (!v28)
    {
      checksum = 12;
      goto LABEL_13;
    }

    v38 = v27;
    v39 = v28;
    v29 = sub_25228B44C(v28 + v27 - 1, v27, &v42, &v40);
    if (v29)
    {
      checksum = v29;
      free(v39);
LABEL_13:
      sub_25228AB34(&v44);
      goto LABEL_22;
    }

    sub_25228AB34(&v44);
    if (v27 != v40)
    {
      krb5_abortx(a1, "internal asn1 error");
    }

    inited = krb5_padata_add(a1, a11, 129, v39, v27);
    if (inited)
    {
      goto LABEL_21;
    }

LABEL_16:
    *a13 = 0xC00000005;
    if (*(a8 + 16))
    {
      *(a13 + 80) = 1;
      v30 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
      *(a13 + 88) = v30;
      if (!v30)
      {
        goto LABEL_51;
      }

      *v30 = *(a8 + 16);
    }

    else
    {
      inited = _krb5_init_etype(a1, 4, (a13 + 80), (a13 + 88), 0);
      if (inited)
      {
        goto LABEL_21;
      }
    }

    *(a13 + 16) = v23 & 0xA | a5 & 0xFFFFFFF5;
    *(a13 + 96) = a4;
    inited = sub_25228A694(*(a8 + 8) + 24, a13 + 32);
    if (inited)
    {
      goto LABEL_21;
    }

    v32 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800407C14B876uLL);
    *(a13 + 40) = v32;
    if (v32)
    {
      inited = sub_25228A708(*(a8 + 8), v32);
      if (inited)
      {
        goto LABEL_21;
      }

      v33 = malloc_type_calloc(1uLL, 8uLL, 0x100004000313F17uLL);
      *(a13 + 56) = v33;
      if (v33)
      {
        *v33 = *(a8 + 56);
        *(a13 + 72) = a10;
        if (!a7)
        {
          goto LABEL_35;
        }

        v34 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
        *(a13 + 112) = v34;
        if (v34)
        {
          *v34 = 1;
          v35 = malloc_type_calloc(1uLL, 0x48uLL, 0x1090040DEC7D988uLL);
          *(*(a13 + 112) + 8) = v35;
          if (v35)
          {
            inited = sub_25228AA8C(a7, v35);
            if (inited)
            {
              goto LABEL_21;
            }

LABEL_35:
            if (a11)
            {
              v36 = *(a13 + 8);
              if (!v36)
              {
                v36 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL);
                *(a13 + 8) = v36;
                if (!v36)
                {
                  goto LABEL_52;
                }
              }

              inited = sub_25228AC5C(a11, v36);
              if (inited)
              {
                goto LABEL_21;
              }
            }

            inited = krb5_auth_con_init(a1, &v72);
            if (inited)
            {
              goto LABEL_21;
            }

            inited = krb5_auth_con_generatelocalsubkey(a1, v72, (a9 + 16));
            if (inited)
            {
              goto LABEL_21;
            }

            inited = sub_252268EE4(a1, a13 + 16, (a8 + 104), *(v72 + 5));
            if (inited)
            {
              goto LABEL_21;
            }

            if (*(a13 + 8) || (v37 = malloc_type_calloc(1uLL, 0x10uLL, 0x1020040D5A9D86FuLL), (*(a13 + 8) = v37) != 0))
            {
              inited = sub_25226905C(a1, v72, a13 + 16, a2, a9, &v70);
              if (!inited)
              {
                if (a3)
                {
                  *(a3 + 24) = v72;
                  inited = sub_252286248(a1, a3, 0);
                  *(a3 + 24) = 0;
                  if (inited)
                  {
                    goto LABEL_21;
                  }

                  inited = sub_25228653C(a1, a3, &v70, a13);
                  if (inited)
                  {
                    goto LABEL_21;
                  }

                  *(a3 + 4) &= ~0x20u;
                }

                inited = krb5_padata_add(a1, *(a13 + 8), 1, v71, v70);
                if (!inited)
                {
                  krb5_data_zero(&v70);
                  inited = krb5_auth_con_getlocalsubkey(a1, v72, a12);
                }
              }

LABEL_21:
              checksum = inited;
              goto LABEL_22;
            }

LABEL_52:
            inited = krb5_enomem(a1);
            goto LABEL_21;
          }
        }
      }
    }

LABEL_51:
    checksum = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory", v38);
    goto LABEL_22;
  }

  checksum = v26;
  krb5_data_free(v69);
LABEL_22:
  if (v72)
  {
    krb5_auth_con_free(a1, v72);
  }

  if (checksum)
  {
    *(a13 + 96) = 0;
    sub_25228AD48(a13);
  }

  krb5_data_free(&v70);
  return checksum;
}

uint64_t sub_252268EE4(_krb5_context *a1, uint64_t a2, _DWORD *a3, const krb5_keyblock *a4)
{
  if (!*a3)
  {
    v12 = 0;
LABEL_6:
    *(a2 + 88) = 0;
    return v12;
  }

  v15 = 0;
  v16 = 0;
  v8 = sub_25228A88C(a3);
  v9 = malloc_type_malloc(v8, 0xDAAFBD2AuLL);
  if (!v9)
  {
    return 12;
  }

  v10 = v9;
  v11 = sub_25228A86C(v9 + v8 - 1, v8, a3, &v16);
  if (!v11)
  {
    if (v8 != v16)
    {
      krb5_abortx(a1, "internal error in ASN.1 encoder", v15);
    }

    v14 = malloc_type_calloc(1uLL, 0x20uLL, 0x1090040863882BEuLL);
    *(a2 + 88) = v14;
    if (!v14)
    {
      free(v10);
      v12 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory", v15);
      return v12;
    }

    v12 = krb5_crypto_init(a1, a4, 0, &v15);
    if (!v12)
    {
      krb5_encrypt_EncryptedData(a1, v15, 5, v10, v16, 0, *(a2 + 88));
      free(v10);
      krb5_crypto_destroy(a1, v15);
      return v12;
    }

    free(v10);
    free(*(a2 + 88));
    goto LABEL_6;
  }

  v12 = v11;
  free(v10);
  return v12;
}

uint64_t sub_25226905C(_krb5_context *a1, _krb5_auth_context *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v18 = a2;
  v16 = 0;
  v11 = sub_25228AC90(a3);
  v12 = malloc_type_malloc(v11, 0xE35F7BBDuLL);
  if (!v12)
  {
    return 12;
  }

  v13 = v12;
  v14 = sub_25228AC70(v12 + v11 - 1, v11, a3, &v16);
  if (!v14)
  {
    if (v11 != v16)
    {
      krb5_abortx(a1, "internal error in ASN.1 encoder");
    }

    v17[0] = v11;
    v17[1] = v13;
    v14 = sub_25226D9BC(a1, &v18, 0, v17, a4, a5, a6, 6u, 7);
  }

  free(v13);
  return v14;
}

uint64_t sub_252269158(_krb5_context *a1, krb5_keyblock *a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    sub_2522A7D50();
  }

  v16 = 0;
  v17 = 0;
  v14 = 0;
  v15 = 0;
  memset(&v13, 0, sizeof(v13));
  krb5_data_zero(&v16);
  krb5_keyblock_zero(&v13);
  if (*a4)
  {
    v9 = sub_252269344(a1, *(a4 + 8), *a4, &v13);
    if (v9)
    {
      return v9;
    }

    v10 = krb5_crypto_init(a1, &v13, 0, &v14);
    krb5_free_keyblock_contents(a1, &v13);
    if (v10)
    {
      return v10;
    }

    if (krb5_decrypt_EncryptedData(a1, v14, 9, a5 + 120, &v16))
    {
      v11 = **a4 != 23 || krb5_decrypt_EncryptedData(a1, v14, 8, a5 + 120, &v16) != 0;
    }

    else
    {
      v11 = 0;
    }

    krb5_crypto_destroy(a1, v14);
    if (*a4 && !v11)
    {
LABEL_17:
      if (sub_25228AF9C(v17, v16, a5 + 152, &v15))
      {
        v10 = sub_25228AFCC(v17, v16, a5 + 152, &v15);
        if (v10)
        {
          krb5_set_error_message(a1, v10, "Failed to decode encpart in ticket");
        }
      }

      else
      {
        v10 = 0;
      }

      krb5_data_free(&v16);
      return v10;
    }
  }

  v9 = sub_252269344(a1, *(a4 + 8), a2, &v13);
  if (v9)
  {
    return v9;
  }

  v10 = krb5_crypto_init(a1, &v13, 0, &v14);
  krb5_free_keyblock_contents(a1, &v13);
  if (!v10)
  {
    v10 = krb5_decrypt_EncryptedData(a1, v14, 8, a5 + 120, &v16);
    krb5_crypto_destroy(a1, v14);
    if (!v10)
    {
      goto LABEL_17;
    }
  }

  return v10;
}

uint64_t sub_252269344(_krb5_context *a1, uint64_t a2, krb5_keyblock *a3, krb5_keyblock *a4)
{
  if (a2 && *(a2 + 80))
  {
    sub_25226B748(a1, 5, "_krb5_fast_tgs_strengthen_key");
    v8 = *(a2 + 80);
    magic = a3->magic;
    if (*v8 != a3->magic)
    {
      v11 = 2529638953;
      krb5_set_error_message(a1, -1765328343, "strengthen_key %d not same enctype as reply key %d", *v8, magic);
      return v11;
    }

    _krb5_debug_keyblock(a1, 10, "tkt: strengthen_key", v8);
    _krb5_debug_keyblock(a1, 10, "tkt: old reply_key", a3);
    v10 = _krb5_fast_cf2(a1, *(a2 + 80), "strengthenkey", a3, "replykey", a4, 0);
    if (!v10)
    {
      goto LABEL_5;
    }

    return v10;
  }

  v10 = krb5_copy_keyblock_contents(a1, a3, a4);
  if (v10)
  {
    return v10;
  }

LABEL_5:
  _krb5_debug_keyblock(a1, 10, "tkt: extract key", a4);
  return 0;
}

uint64_t krb5_tkt_creds_init(_krb5_context *a1, uint64_t a2, const krb5_creds *a3, int a4, uint64_t *a5)
{
  *a5 = 0;
  v10 = heim_uniq_alloc(0x208uLL, "tkt-ctx", sub_25226958C);
  if (!v10)
  {
    return 12;
  }

  v11 = v10;
  *(v10 + 32) = a1;
  *(v10 + 40) = sub_25226960C;
  *(v10 + 48) = a4;
  *(v10 + 88) = a2;
  if ((a4 & 0x10) == 0)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_4;
    }

LABEL_10:
    *(v10 + 68) |= 0x10000000u;
    *(v10 + 48) = a4 | 8;
    if ((a4 & 0x80) == 0)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  *(v10 + 68) |= 2u;
  if ((a4 & 2) != 0)
  {
    goto LABEL_10;
  }

LABEL_4:
  if ((a4 & 0x80) != 0)
  {
LABEL_5:
    *(v10 + 68) |= 0x8000u;
  }

LABEL_6:
  v12 = krb5_copy_creds(a1, a3, (v10 + 96));
  if (v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = krb5_unparse_name(a1, *(*(v11 + 96) + 8), (v11 + 56));
    if (!v13)
    {
      *a5 = v11;
      return v13;
    }
  }

  heim_release(v11);
  return v13;
}

void sub_25226958C(uint64_t a1)
{
  v2 = *(a1 + 512);
  if (v2)
  {
    krb5_free_creds(*(a1 + 32), v2);
  }

  sub_252269758(*(a1 + 32), a1);
  v3 = *(a1 + 408);
  if (v3)
  {
    v4 = *v3;
    if (*v3)
    {
      v5 = 1;
      do
      {
        krb5_free_creds(*(a1 + 32), v4);
        v3 = *(a1 + 408);
        v4 = v3[v5++];
      }

      while (v4);
    }

    free(v3);
  }

  v6 = *(a1 + 56);

  free(v6);
}

uint64_t sub_25226960C(uint64_t a1, uint64_t a2)
{
  sub_25226B748(a1, 10, "tkt_init: %s", *(a2 + 56));
  *(a2 + 40) = sub_2522697AC;
  return 0;
}

uint64_t krb5_tkt_creds_step(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, void *a5, _DWORD *a6)
{
  krb5_data_zero(a4);
  *a6 = 0;
  *a5 = 0;
  *(a2 + 64) = 0;
  if (!*a4)
  {
    while (1)
    {
      v14 = *(a2 + 40);
      if (!v14)
      {
        break;
      }

      result = v14(a1, a2, a3, a4, a5, a6);
      if (result)
      {
        if (*(a2 + 64) != result)
        {
          sub_2522A7D7C();
        }

        return result;
      }

      v13 = *a4;
      if (*a6)
      {
        if (!v13)
        {
          sub_2522A7DAC();
        }

        if (!*a5)
        {
          sub_2522A7D94();
        }

        return 0;
      }

      if (v13)
      {
        sub_2522A7DC4();
      }
    }
  }

  return 0;
}

uint64_t krb5_tkt_creds_get_creds(_krb5_context *a1, uint64_t a2, krb5_creds **a3)
{
  if (*(a2 + 40))
  {
    return 22;
  }

  if (*(a2 + 512))
  {
    return krb5_copy_creds(a1, *(a2 + 512), a3);
  }

  return *(a2 + 64);
}

void sub_252269758(_krb5_context *a1, uint64_t a2)
{
  sub_252286DEC(a1, a2 + 424);
  krb5_free_cred_contents(a1, (a2 + 120));
  krb5_free_cred_contents(a1, (a2 + 264));
  krb5_free_keyblock(a1, *(a2 + 112));
  *(a2 + 112) = 0;
}

uint64_t sub_2522697AC(_krb5_context *a1, uint64_t a2)
{
  v11 = 0;
  sub_25226B748(a1, 10, "tkt_step_referrals: %s", *(a2 + 56));
  *(a2 + 264) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 344) = 0u;
  *(a2 + 360) = 0u;
  *(a2 + 376) = 0u;
  *(a2 + 392) = 0u;
  *(a2 + 104) = 0x8000;
  realm = krb5_principal_get_realm(a1, **(a2 + 96));
  principal = krb5_make_principal(a1, &v11, realm, "krbtgt", realm, 0);
  v6 = sub_2522699C4;
  if (principal)
  {
    goto LABEL_2;
  }

  v8 = *(a2 + 88);
  v9 = v11;
  memset(mcreds, 0, sizeof(mcreds));
  krb5_cc_clear_mcred(mcreds);
  *&mcreds[8] = v9;
  if (krb5_cc_retrieve_cred(a1, v8, 0x80000000, mcreds, (a2 + 120)))
  {
    v7 = -1765328243;
    v13 = 0;
    if (krb5_unparse_name(a1, v9, &v13))
    {
      krb5_clear_error_message(a1);
    }

    else
    {
      krb5_set_error_message(a1, -1765328243, "Matching credential (%s) not found", v13);
      free(v13);
    }

    krb5_free_principal(a1, v11);
    v6 = sub_2522699C4;
  }

  else
  {
    krb5_free_principal(a1, v11);
    principal = krb5_copy_principal(a1, **(a2 + 96), (a2 + 264));
    v6 = sub_2522699C4;
    if (principal || (principal = krb5_copy_principal(a1, *(*(a2 + 96) + 8), (a2 + 272)), v6 = sub_2522699C4, principal))
    {
LABEL_2:
      v7 = principal;
      goto LABEL_13;
    }

    v7 = krb5_principal_set_realm(a1, *(a2 + 272), *(*(a2 + 128) + 24));
    v6 = sub_252269A30;
    if (v7)
    {
      v6 = sub_2522699C4;
    }
  }

LABEL_13:
  *(a2 + 64) = v7;
  *(a2 + 40) = v6;
  return 0;
}

uint64_t sub_2522699C4(_krb5_context *a1, uint64_t a2)
{
  sub_25226B748(a1, 10, "tkt_direct_init: %s", *(a2 + 56));
  sub_252269758(a1, a2);
  *(a2 + 64) = 22;
  *(a2 + 40) = sub_252269C10;
  return 0;
}

uint64_t sub_252269A30(_krb5_context *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _DWORD *a6)
{
  v20[1] = 0;
  v21 = 0;
  v20[0] = 0;
  memset(v22, 0, sizeof(v22));
  v23 = 0u;
  v24 = 0;
  krb5_generate_random_block(a2 + 108, 4);
  if (_krb5_have_debug(a1))
  {
    v18 = 0;
    v19 = 0;
    krb5_unparse_name(a1, *(a2 + 128), &v18);
    krb5_unparse_name(a1, *(a2 + 272), &v19);
    sub_25226B748(a1, 10, "sending TGS-REQ for %s using %s", v19, v18);
  }

  v11 = sub_25226895C(a1, *(a2 + 88), a2 + 424, *(a2 + 80), *(a2 + 104), *(a2 + 72), 0, a2 + 264, a2 + 120, *(a2 + 108), v20, (a2 + 112), v22);
  if (v11)
  {
    v12 = v11;
    v13 = 0;
  }

  else
  {
    v15 = sub_25228AD38(v22);
    *a4 = v15;
    v16 = malloc_type_malloc(v15, 0xE8BE7B23uLL);
    *(a4 + 8) = v16;
    if (v16)
    {
      v17 = sub_25228AD18(v16 + *a4 - 1, *a4, v22, &v21);
      if (v17)
      {
        v12 = v17;
        free(*(a4 + 8));
        v13 = 0;
        *(a4 + 8) = 0;
      }

      else
      {
        if (*a4 != v21)
        {
          krb5_abortx(a1, "internal error in ASN.1 encoder");
        }

        *&v23 = 0;
        sub_25228AD48(v22);
        v12 = 0;
        *a5 = *(*(*(a2 + 128) + 16) + 8);
        *a6 |= 1u;
        v13 = sub_252269C70;
      }
    }

    else
    {
      v13 = 0;
      v12 = 12;
    }
  }

  *(a2 + 64) = v12;
  *(a2 + 40) = v13;
  return v12;
}

uint64_t sub_252269C10(_krb5_context *a1, uint64_t a2)
{
  sub_25226B748(a1, 10, "tkt_step_capath: %s", *(a2 + 56));
  sub_252269758(a1, a2);
  *(a2 + 64) = 22;
  *(a2 + 40) = 0;
  return 0;
}

uint64_t sub_252269C70(_krb5_context *a1, uint64_t a2, const krb5_data *a3)
{
  memset(v30, 0, sizeof(v30));
  sub_25226B748(a1, 10, "tkt_referral_recv: %s", *(a2 + 56));
  v42 = 0;
  memset(v43, 0, sizeof(v43));
  v44 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  *v31 = 0u;
  if (*(**(a2 + 88) + 248))
  {
    v6 = 22;
LABEL_3:
    sub_25226B748(a1, 10, "tkt_referral_recv: parse_tgs_rep %d", v6);
    sub_252269758(a1, a2);
LABEL_4:
    result = 0;
    v8 = sub_252269C10;
    goto LABEL_5;
  }

  if (sub_25228AF58(a3->data, *&a3->magic, v43, &v42))
  {
    if (krb5_rd_error(a1, a3, &v43[18] + 1))
    {
      krb5_clear_error_message(a1);
      krb5_free_kdc_rep(a1, v43);
      v6 = -1765328344;
      goto LABEL_3;
    }

    v40 = 0;
    v41 = 0;
    if (*(&v44 + 1) && (v10 = sub_25228AC2C(*(*(&v44 + 1) + 8), **(&v44 + 1), &v40, 0)) != 0)
    {
      v6 = v10;
      krb5_set_error_message(a1, v10, "Failed to decode METHOD-DATA");
    }

    else
    {
      v6 = sub_2522869C8(a1, a2 + 424, &v40, &v43[18] + 8);
      sub_25228AC4C(&v40);
      if (!v6)
      {
        v6 = krb5_error_from_rd_error(a1, &v43[18] + 8, *(a2 + 96));
        if (_krb5_have_debug(a1))
        {
          error_message = krb5_get_error_message(a1, v6);
          sub_25226B748(a1, 5, "parse_tgs_rep: KRB-ERROR %d/%s", v6, error_message);
          krb5_free_error_message(a1, error_message);
        }
      }
    }
  }

  else
  {
    v9 = sub_252286C38(a1, *(a2 + 108), 0, a2 + 424, v43);
    if (v9 || (v9 = krb5_copy_principal(a1, *(a2 + 264), v31)) != 0 || (v9 = krb5_copy_principal(a1, *(a2 + 272), &v31[1])) != 0)
    {
      v6 = v9;
      goto LABEL_3;
    }

    *(&v34 + 1) = *(*(a2 + 96) + 56);
    v12 = (*(a2 + 106) & 1) != 0 || *(a2 + 72);
    v40 = *(a2 + 112);
    v41 = a2 + 424;
    v6 = sub_252280B7C(a1, v43, v31, (a2 + 136), 0, (a2 + 240), *(a2 + 108), v12, 0, sub_252269158, &v40);
  }

  krb5_free_kdc_rep(a1, v43);
  if (v6)
  {
    goto LABEL_3;
  }

  if (!krb5_principal_compare_any_realm(a1, *(a2 + 272), v31[1]))
  {
    if (krb5_principal_is_krbtgt(a1, v31[1]))
    {
      sub_25226B748(a1, 10, "KDC for realm %s sends a referrals to %s", *(*(a2 + 128) + 24), *(v31[1]->realm.data + 1));
      krb5_cc_clear_mcred(v30);
      *(&v30[0] + 1) = v31[1];
      v13 = *(a2 + 408);
      if (v13)
      {
        v14 = 0;
        do
        {
          v15 = v13[v14];
          v16 = v15 != 0;
          if (!v15)
          {
            break;
          }

          if (krb5_compare_creds(a1, 0x80000000, v30, v15))
          {
            sub_25226B748(a1, 5, "Referral from %s loops back to realm %s", *(*(a2 + 128) + 24), v31[1]->data);
            goto LABEL_4;
          }

          ++v14;
          v13 = *(a2 + 408);
        }

        while (v13);
        if (v14 >= 0x10)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v16 = 1;
      }

      v17 = DWORD2(v39);
      if (*(a2 + 416))
      {
        v18 = (WORD4(v39) & 0x2000) == 0;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        *(a2 + 416) = 0;
        DWORD2(v39) = v17 & 0xFFFFDFFF;
      }

      if (v16)
      {
        v19 = 0;
      }

      else
      {
        v19 = -1;
        v20 = v13;
        do
        {
          v21 = *v20++;
          ++v19;
        }

        while (v21);
      }

      v22 = malloc_type_realloc(v13, 8 * (v19 + 2), 0x2004093837F09uLL);
      if (v22)
      {
        *(a2 + 408) = v22;
        v23 = &v22[8 * v19];
        v24 = krb5_copy_creds(a1, v31, v23);
        v23[1] = 0;
        if (!v24)
        {
          krb5_free_cred_contents(a1, (a2 + 120));
          v25 = v36;
          *(a2 + 184) = v35;
          v26 = v33;
          *(a2 + 168) = v34;
          *(a2 + 152) = v26;
          v27 = *v31;
          *(a2 + 136) = v32;
          v28 = v38;
          *(a2 + 248) = v39;
          v29 = v37;
          *(a2 + 232) = v28;
          *(a2 + 216) = v29;
          *(a2 + 200) = v25;
          *(a2 + 120) = v27;
          result = krb5_principal_set_realm(a1, *(a2 + 272), *(*(a2 + 128) + 24));
          if (!result)
          {
            v8 = sub_252269A30;
            goto LABEL_5;
          }
        }
      }

      else
      {
        krb5_set_error_message(a1, 12, "malloc: out of memory");
      }
    }

    else
    {
      krb5_set_error_message(a1, -1765328349, "Got back an non krbtgt ticket referrals");
      krb5_free_cred_contents(a1, v31);
    }

    goto LABEL_4;
  }

  result = krb5_copy_creds(a1, v31, (a2 + 512));
  if (result)
  {
    *(a2 + 64) = result;
    return result;
  }

  krb5_free_cred_contents(a1, v31);
  result = 0;
  v8 = sub_25226A1A0;
LABEL_5:
  *(a2 + 40) = v8;
  return result;
}

uint64_t sub_25226A1A0(_krb5_context *a1, uint64_t a2)
{
  sub_25226B748(a1, 10, "tkt_step_store: %s", *(a2 + 56));
  *(a2 + 64) = 0;
  *(a2 + 40) = 0;
  if ((*(a2 + 48) & 8) == 0)
  {
    v4 = *(a2 + 408);
    if (v4)
    {
      v5 = *v4;
      if (*v4)
      {
        v6 = *(a2 + 88);
        v7 = v4 + 1;
        do
        {
          client = v5->client;
          if (krb5_principal_is_krbtgt(a1, client) && strcmp(*(*(client + 16) + 8), *(client + 24)))
          {
            krb5_cc_store_cred(a1, v6, *(v7 - 1));
          }

          v9 = *v7++;
          v5 = v9;
        }

        while (v9);
        v10 = *v4;
        if (*v4)
        {
          v11 = v4 + 1;
          do
          {
            krb5_free_creds(a1, v10);
            v12 = *v11++;
            v10 = v12;
          }

          while (v12);
        }
      }

      free(*(a2 + 408));
      *(a2 + 408) = 0;
    }

    v13 = *(a2 + 512);
    if (!v13)
    {
      sub_2522A7DDC();
    }

    krb5_cc_store_cred(a1, *(a2 + 88), v13);
    if (!krb5_principal_compare_any_realm(a1, *(*(a2 + 512) + 8), *(*(a2 + 96) + 8)))
    {
      v14 = *(a2 + 512);
      creds[0] = *v14;
      v15 = v14[4];
      v17 = v14[1];
      v16 = v14[2];
      creds[3] = v14[3];
      creds[4] = v15;
      creds[1] = v17;
      creds[2] = v16;
      v18 = v14[8];
      v20 = v14[5];
      v19 = v14[6];
      creds[7] = v14[7];
      creds[8] = v18;
      creds[5] = v20;
      creds[6] = v19;
      v21 = *(a2 + 88);
      v22 = *(*(a2 + 96) + 8);
      v23 = *(v22 + 2);
      v25 = *v22;
      v26 = v23;
      v27 = "";
      *(&creds[0] + 1) = &v25;
      krb5_cc_store_cred(a1, v21, creds);
    }
  }

  return 0;
}

krb5_BOOLean krb5_kuserok(krb5_context a1, krb5_principal a2, const char *a3)
{
  __str[128] = *MEMORY[0x277D85DE8];
  v36 = 0;
  v6 = getpwnam(a3);
  if (!v6)
  {
    goto LABEL_47;
  }

  v7 = v6;
  pw_dir = v6->pw_dir;
  v9 = strlen(pw_dir);
  v10 = malloc_type_malloc(v9 + 12, 0x585C2464uLL);
  if (!v10)
  {
    goto LABEL_47;
  }

  v11 = v10;
  strlcpy(v10, pw_dir, v9 + 12);
  strlcat(v11, "/.k5login", v9 + 12);
  v12 = sub_25226A758(a1, v11, v7, a2, &v36);
  if (v12)
  {
    v13 = 0;
  }

  else
  {
    v13 = v36 == 1;
  }

  if (v13)
  {
    free(v11);
    return 1;
  }

  v14 = v12;
  strlcat(v11, ".d", v9 + 12);
  memset(&v38, 0, sizeof(v38));
  v36 = 0;
  if (lstat(v11, &v38) < 0)
  {
    goto LABEL_39;
  }

  if ((v38.st_mode & 0xF000) == 0x4000)
  {
    if (v38.st_uid)
    {
      v15 = v38.st_uid == *(v7 + 16);
    }

    else
    {
      v15 = 1;
    }

    v16 = v15;
    if ((v38.st_mode & 0x12) != 0 || (v16 & 1) == 0)
    {
      free(v11);
      goto LABEL_47;
    }

    v17 = opendir(v11);
    if (v17)
    {
      v18 = v17;
      memset(&v37, 0, sizeof(v37));
      v19 = dirfd(v17);
      if ((fstat(v19, &v37) & 0x80000000) == 0)
      {
        if (v38.st_dev == v37.st_dev && v38.st_ino == v37.st_ino)
        {
          v20 = readdir(v18);
          if (v20)
          {
            v21 = 0;
            do
            {
              d_name = v20->d_name;
              v22 = v20->d_name[0];
              if (v22 != 35 && (v22 != 46 || v20->d_name[1] && (v20->d_name[1] != 46 || v20->d_name[2])) && d_name[strlen(v20->d_name) - 1] != 126)
              {
                snprintf(__str, 0x400uLL, "%s/%s", v11, d_name);
                v24 = sub_25226A758(a1, __str, v7, a2, &v36);
                v21 = v36;
                if (!v24 && v36 == 1)
                {
                  break;
                }
              }

              v20 = readdir(v18);
            }

            while (v20);
            v25 = v21 == 1;
          }

          else
          {
            v25 = 0;
          }

          closedir(v18);
          free(v11);
          goto LABEL_46;
        }

        closedir(v18);
        v27 = 13;
        goto LABEL_40;
      }

      closedir(v18);
    }

LABEL_39:
    v27 = *__error();
LABEL_40:
    free(v11);
    if (v27 != 20 && v27 != 2)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  free(v11);
LABEL_42:
  if (v14 != 2)
  {
    goto LABEL_47;
  }

  if (krb5_principal_get_comp_string(a1, a2, 1u) || (__str[0] = 0, krb5_get_default_realms(a1, __str)))
  {
    v25 = 0;
  }

  else
  {
    v31 = __str[0];
    if (*__str[0])
    {
      v32 = __str[0] + 1;
      while (1)
      {
        realm = krb5_principal_get_realm(a1, a2);
        if (!strcmp(realm, *(v32 - 1)))
        {
          comp_string = krb5_principal_get_comp_string(a1, a2, 0);
          if (!strcmp(comp_string, a3))
          {
            break;
          }
        }

        if (!*v32++)
        {
          v25 = 0;
          goto LABEL_63;
        }
      }

      v25 = 1;
LABEL_63:
      v31 = __str[0];
    }

    else
    {
      v25 = 0;
    }

    krb5_free_host_realm(a1, v31);
  }

LABEL_46:
  if (v25)
  {
    return 1;
  }

LABEL_47:
  __str[0] = 0;
  __str[1] = 0;
  *&v38.st_dev = 0;
  v38.st_ino = 0;
  *&v37.st_dev = 0;
  v26 = !krb5_unparse_name(a1, a2, &v37) && (v28 = strlen(a3), !mbr_identifier_to_uuid(4, a3, v28, &v38)) && (v29 = strlen(*&v37.st_dev), !mbr_identifier_to_uuid(12, *&v37.st_dev, v29, __str)) && uuid_compare(__str, &v38) == 0;
  if (*&v37.st_dev)
  {
    free(*&v37.st_dev);
  }

  return v26;
}

uint64_t sub_25226A758(_krb5_context *a1, char *__filename, uint64_t a3, const krb5_principal_data *a4, krb5_BOOLean *a5)
{
  v18 = *MEMORY[0x277D85DE8];
  memset(&v16, 0, sizeof(v16));
  *a5 = 0;
  v9 = fopen(__filename, "r");
  if (!v9)
  {
    return *__error();
  }

  v10 = v9;
  rk_cloexec_file(v9);
  v11 = fileno(v10);
  if (fstat(v11, &v16))
  {
    fclose(v10);
    return *__error();
  }

  if ((v16.st_mode & 0xF000) == 0x4000)
  {
    fclose(v10);
    return 21;
  }

  else if (v16.st_uid && v16.st_uid != *(a3 + 16) || (v16.st_mode & 0x12) != 0)
  {
    fclose(v10);
    return 13;
  }

  else
  {
    while (fgets(__s, 1024, v10))
    {
      v15 = 0;
      v13 = strcspn(__s, "\n");
      if (__s[v13] == 10 || (v14 = fgetc(v10), v14 == -1))
      {
        __s[v13] = 0;
        if (!krb5_parse_name(a1, __s, &v15))
        {
          *a5 = krb5_principal_compare(a1, a4, v15);
          krb5_free_principal(a1, v15);
          if (*a5)
          {
            break;
          }
        }
      }

      else
      {
        while (v14 != -1 && v14 != 10)
        {
          v14 = fgetc(v10);
        }
      }
    }

    fclose(v10);
    return 0;
  }
}

uint64_t krb5_initlog(_krb5_context *a1, const char *a2, char ***a3)
{
  v6 = malloc_type_calloc(1uLL, 0x18uLL, 0x1030040B20C17F8uLL);
  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = v6;
  v8 = strdup(a2);
  *v7 = v8;
  if (!v8)
  {
    free(v7);
LABEL_5:
    v9 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    return v9;
  }

  v9 = 0;
  *a3 = v7;
  return v9;
}

uint64_t krb5_addlog_func(_krb5_context *a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = malloc_type_realloc(*(a2 + 16), 32 * *(a2 + 8) + 32, 0x10800409938AC02uLL);
  if (v14)
  {
    v15 = 0;
    v16 = *(a2 + 8);
    *(a2 + 8) = v16 + 1;
    *(a2 + 16) = v14;
    v17 = &v14[32 * v16];
    *v17 = a3;
    *(v17 + 1) = a4;
    *(v17 + 1) = a5;
    *(v17 + 2) = a6;
    *(v17 + 3) = a7;
  }

  else
  {
    v15 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
  }

  return v15;
}

uint64_t krb5_addlog_dest(_krb5_context *a1, const char **a2, char *a3)
{
  v3 = a3;
  v76 = *MEMORY[0x277D85DE8];
  v58 = -1;
  v59 = 0;
  v57 = 0;
  v56 = a3;
  v6 = sscanf(a3, "%d%c%d/", &v59, &v57, &v58);
  if (v6 == 2 && v57 == 47)
  {
    if (v59 < 0)
    {
      v58 = -v59;
      v59 = 0;
    }

    else
    {
      v58 = v59;
    }
  }

  else if (!v6)
  {
    goto LABEL_10;
  }

  v7 = strchr(v3, 47);
  v56 = v7;
  if (!v7)
  {
    v20 = 2314790656;
    v55 = v3;
    v21 = "failed to parse %s";
    goto LABEL_40;
  }

  v3 = v7 + 1;
  v56 = v7 + 1;
LABEL_10:
  if (!strcmp(v3, "STDERR"))
  {
    return sub_25226B2A0(a1, a2, v59, v58, 0, 0, *MEMORY[0x277D85DF8], 1, 0);
  }

  if (!strcmp(v3, "CONSOLE"))
  {
    return sub_25226B2A0(a1, a2, v59, v58, "/dev/console", "w", 0, 0, 0);
  }

  if (!strncmp(v3, "FILE", 4uLL))
  {
    v23 = v3[4];
    if (v23 == 61 || v23 == 58)
    {
      v24 = strdup(v3 + 5);
      if (v24)
      {
        v25 = v24;
        if (v23 == 61)
        {
          v26 = open(v24, 1545, 438);
          if (v26 < 0)
          {
            v53 = __error();
            v20 = *v53;
            strerror(*v53);
            krb5_set_error_message(a1, v20, "open(%s) logile: %s");
          }

          else
          {
            v27 = v26;
            sub_252287100(v26);
            v28 = fdopen(v27, "a");
            if (v28)
            {
              v29 = v28;
              v30 = 1;
              return sub_25226B2A0(a1, a2, v59, v58, v25, "a", v29, v30, 1);
            }

            v20 = *__error();
            close(v27);
            strerror(v20);
            krb5_set_error_message(a1, v20, "fdopen(%s) logfile: %s");
          }

          free(v25);
          return v20;
        }

        v29 = 0;
        v30 = 0;
        return sub_25226B2A0(a1, a2, v59, v58, v25, "a", v29, v30, 1);
      }

LABEL_79:
      v20 = 12;
      krb5_set_error_message(a1, 12, "malloc: out of memory", v54);
      return v20;
    }
  }

  if (!strncmp(v3, "DEVICE", 6uLL))
  {
    v31 = v3[6];
    if (v31 == 61 || v31 == 58)
    {
      v33 = v58;
      v32 = v59;
      v34 = strdup(v3 + 7);
      return sub_25226B2A0(a1, a2, v32, v33, v34, "w", 0, 0, 1);
    }
  }

  if (!strncmp(v3, "SYSLOG", 6uLL) && (v3[6] == 58 || !v3[6]))
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *facility = 0u;
    v56 = v3 + 6;
    if (v3[6])
    {
      v56 = v3 + 7;
    }

    if (rk_strsep_copy(&v56, ":", &v68, 0x80uLL) != -1)
    {
      rk_strsep_copy(&v56, ":", facility, 0x80uLL);
    }

    if (!v68)
    {
      __strlcpy_chk();
    }

    if (!facility[0])
    {
      __strlcpy_chk();
    }

    v9 = v58;
    v8 = v59;
    v36 = malloc_type_malloc(4uLL, 0x100004052888210uLL);
    if (!v36)
    {
      goto LABEL_79;
    }

    v11 = v36;
    v37 = &off_2796FF5D0;
    v38 = "EMERG";
    do
    {
      if (!strcasecmp(v38, &v68))
      {
        break;
      }

      v39 = v37[2];
      v37 += 2;
      v38 = v39;
    }

    while (v39);
    if (*(v37 + 2) == -1)
    {
      v40 = 3;
    }

    else
    {
      v40 = *(v37 + 2);
    }

    LODWORD(v11->isa) = v40;
    v41 = &off_2796FF5D0;
    v42 = "EMERG";
    do
    {
      if (!strcasecmp(v42, facility))
      {
        break;
      }

      v43 = v41[2];
      v41 += 2;
      v42 = v43;
    }

    while (v43);
    if (*(v41 + 2) == -1)
    {
      v44 = 32;
    }

    else
    {
      v44 = *(v41 + 2);
    }

    LODWORD(v11->isa) = v44 | v40;
    openlog(*a2, 9, v44);
    v18 = sub_25226B9B0;
    v19 = sub_25226B9E0;
    goto LABEL_78;
  }

  if (*v3 == 65 && v3[1] == 83 && v3[2] == 76 && (v3[3] == 58 || !v3[3]))
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *facility = 0u;
    v56 = v3 + 3;
    if (v3[3])
    {
      v56 = v3 + 4;
    }

    if (rk_strsep_copy(&v56, ":", &v68, 0x80uLL) != -1)
    {
      rk_strsep_copy(&v56, ":", facility, 0x80uLL);
    }

    if (!v68)
    {
      __strlcpy_chk();
    }

    if (!facility[0])
    {
      __strlcpy_chk();
    }

    v9 = v58;
    v8 = v59;
    v10 = malloc_type_malloc(0x18uLL, 0x1020040EDCEB4C7uLL);
    if (!v10)
    {
      goto LABEL_79;
    }

    v11 = v10;
    v12 = &off_2796FF7A0;
    v13 = "EMERG";
    do
    {
      if (!strcasecmp(v13, &v68))
      {
        break;
      }

      v14 = v12[2];
      v12 += 2;
      v13 = v14;
    }

    while (v14);
    v15 = *(v12 + 2);
    if (v15 == -1)
    {
      v15 = 3;
    }

    LODWORD(v11[2].isa) = v15;
    v16 = getprogname();
    v11->isa = asl_open(v16, facility, 0);
    v17 = asl_new(0);
    v11[1].isa = v17;
    asl_set(v17, "org.h5l.asl", "krb5");
    v18 = sub_25226BA08;
    v19 = sub_25226BA40;
LABEL_78:
    v45 = v19;
    v46 = a1;
    v47 = a2;
    v48 = v8;
    v49 = v9;
    v50 = v11;
    return krb5_addlog_func(v46, v47, v48, v49, v18, v45, v50);
  }

  if (!strncmp(v3, "OSLOG", 5uLL) && (v3[5] == 58 || !v3[5]))
  {
    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v67 = 0u;
    v65 = 0u;
    v66 = 0u;
    v63 = 0u;
    v64 = 0u;
    v61 = 0u;
    v62 = 0u;
    *facility = 0u;
    v56 = v3 + 5;
    if (v3[5])
    {
      v56 = v3 + 6;
    }

    if (rk_strsep_copy(&v56, ":", &v68, 0x80uLL) != -1)
    {
      rk_strsep_copy(&v56, ":", facility, 0x80uLL);
    }

    if (!v68)
    {
      __strlcpy_chk();
    }

    if (!facility[0])
    {
      __strlcpy_chk();
    }

    v52 = v58;
    v51 = v59;
    v50 = os_log_create("com.apple.Heimdal", facility);
    if (v68 ^ 0x75626564 | WORD2(v68) ^ 0x67)
    {
      v18 = sub_25226BA84;
    }

    else
    {
      v18 = sub_25226BB20;
    }

    v45 = j__os_release;
    v46 = a1;
    v47 = a2;
    v48 = v51;
    v49 = v52;
    return krb5_addlog_func(v46, v47, v48, v49, v18, v45, v50);
  }

  v20 = 2314790656;
  v55 = v3;
  v21 = "unknown log type: %s";
LABEL_40:
  krb5_set_error_message(a1, -1980176640, v21, v55);
  return v20;
}

uint64_t sub_25226B2A0(_krb5_context *a1, uint64_t a2, int a3, int a4, void *a5, uint64_t a6, uint64_t a7, int a8, int a9)
{
  v17 = malloc_type_malloc(0x20uLL, 0x107004068A0B128uLL);
  if (v17)
  {
    *v17 = a5;
    v17[1] = a6;
    v17[2] = a7;
    *(v17 + 6) = a8;
    *(v17 + 7) = a9;

    return krb5_addlog_func(a1, a2, a3, a4, sub_25226B864, sub_25226B950, v17);
  }

  else
  {
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    if (a5 && a9)
    {
      free(a5);
    }

    return 12;
  }
}

uint64_t krb5_openlog(_krb5_context *a1, const char *a2, char ***a3)
{
  v11 = krb5_initlog(a1, a2, a3);
  if (v11)
  {
    return v11;
  }

  strings = krb5_config_get_strings(a1, 0, v5, v6, v7, v8, v9, v10, "logging");
  if (strings || (strings = krb5_config_get_strings(a1, 0, v13, v14, v15, v16, v17, v18, "logging")) != 0)
  {
    v19 = strings;
    v20 = *strings;
    if (*strings)
    {
      v21 = strings + 1;
      do
      {
        v22 = krb5_addlog_dest(a1, *a3, v20);
        v23 = *v21++;
        v20 = v23;
        if (v23)
        {
          v24 = v22 == 0;
        }

        else
        {
          v24 = 0;
        }
      }

      while (v24);
      v11 = v22;
    }

    else
    {
      v11 = 0;
    }

    krb5_config_free_strings(v19);
    return v11;
  }

  v26 = *a3;

  return krb5_addlog_dest(a1, v26, "SYSLOG");
}

uint64_t krb5_closelog(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) >= 1)
  {
    v3 = 0;
    v4 = 0;
    do
    {
      (*(*(a2 + 16) + v3 + 16))(*(*(a2 + 16) + v3 + 24));
      ++v4;
      v3 += 32;
    }

    while (v4 < *(a2 + 8));
  }

  free(*(a2 + 16));
  free(*a2);
  free(a2);
  return 0;
}

uint64_t krb5_vlog_msg(uint64_t a1, uint64_t a2, void **a3, int a4, char *a5, va_list a6)
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = 0;
  if (a2 && *(a2 + 8) >= 1)
  {
    v12 = 0;
    v13 = 0;
    v14 = 0;
    for (i = 0; i < *(a2 + 8); ++i)
    {
      v16 = *(a2 + 16);
      if (*(v16 + v12) > a4)
      {
        goto LABEL_10;
      }

      v17 = *(v16 + v12 + 4);
      if ((v17 & 0x80000000) == 0 && v17 < a4)
      {
        goto LABEL_10;
      }

      if (v13)
      {
        if (!v14)
        {
          goto LABEL_13;
        }
      }

      else
      {
        v13 = time(0);
        krb5_format_time(a1, v13, v22, 0x40uLL, 1);
        if (!v14)
        {
LABEL_13:
          v18 = vasprintf(&v21, a5, a6);
          if (v21)
          {
            v19 = v18 < 0;
          }

          else
          {
            v19 = 1;
          }

          if (v19)
          {
            v14 = a5;
          }

          else
          {
            v14 = v21;
          }
        }
      }

      (*(*(a2 + 16) + v12 + 8))(v22, v14, *(*(a2 + 16) + v12 + 24));
LABEL_10:
      v12 += 32;
    }
  }

  if (a3)
  {
    *a3 = v21;
  }

  else
  {
    free(v21);
  }

  return 0;
}

uint64_t krb5_log_msg(uint64_t a1, uint64_t a2, int a3, void **a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  krb5_vlog_msg(a1, a2, a4, a3, a5, va);
  return 0;
}

uint64_t krb5_log(uint64_t a1, uint64_t a2, int a3, char *a4, ...)
{
  va_start(va, a4);
  krb5_vlog_msg(a1, a2, 0, a3, a4, va);
  return 0;
}

uint64_t sub_25226B748(uint64_t result, int a2, char *a3, ...)
{
  va_start(va, a3);
  if (result)
  {
    if (*(result + 160))
    {
      return krb5_vlog_msg(result, *(result + 160), 0, a2, a3, va);
    }
  }

  return result;
}

void sub_25226B794(_krb5_context *a1, int a2, krb5_error_code a3, char *a4, ...)
{
  va_start(va, a4);
  v10[0] = 0;
  if (a1)
  {
    if (*(a1 + 20))
    {
      va_copy(&v10[1], va);
      vasprintf(v10, a4, va);
      if (v10[0])
      {
        error_message = krb5_get_error_message(a1, a3);
        v8 = error_message;
        v9 = "<unknown error>";
        if (error_message)
        {
          v9 = error_message;
        }

        krb5_log(a1, *(a1 + 20), a2, "%s: %s", v10[0], v9);
        krb5_free_error_message(a1, v8);
        free(v10[0]);
      }
    }
  }
}

BOOL _krb5_have_debug(_BOOL8 result)
{
  if (result)
  {
    return *(result + 160) != 0;
  }

  return result;
}

void sub_25226B864(const char *a1, char *__s, uint64_t a3)
{
  v6 = strlen(__s);
  if (*(a3 + 24))
  {
    v7 = *(a3 + 16);
    if (!v7)
    {
      return;
    }
  }

  else
  {
    v7 = fopen(*a3, *(a3 + 8));
    if (!v7)
    {
      return;
    }
  }

  v8 = malloc_type_malloc(4 * v6 + 4, 0x3AC059B0uLL);
  if (v8)
  {
    v9 = v8;
    strvisx(v8, __s, v6, 1);
    fprintf(v7, "%s %s\n", a1, v9);
    free(v9);
  }

  if (!*(a3 + 24))
  {

    fclose(v7);
  }
}

void sub_25226B950(FILE **a1)
{
  if (*(a1 + 6))
  {
    if (!*a1)
    {
      goto LABEL_7;
    }

    fclose(a1[2]);
  }

  if (*a1 && *(a1 + 7))
  {
    free(*a1);
  }

LABEL_7:

  free(a1);
}

void sub_25226B9E0(void *a1)
{
  free(a1);

  closelog();
}

void sub_25226BA40(void *a1)
{
  MEMORY[0x25309D7E0](a1[1]);
  MEMORY[0x25309D7D0](*a1);

  free(a1);
}

void sub_25226BA84(int a1, uint64_t a2, os_log_t oslog)
{
  v7 = *MEMORY[0x277D85DE8];
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136446210;
    v6 = a2;
    _os_log_impl(&dword_252245000, oslog, OS_LOG_TYPE_DEFAULT, "%{public}s", &v5, 0xCu);
  }
}

void sub_25226BB20(int a1, uint64_t a2, os_log_t oslog)
{
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEBUG))
  {
    sub_2522A7DF4(a2, oslog);
  }
}

uint64_t sub_25226BB74(uint64_t a1, uint64_t a2, const char *a3)
{
  pthread_mutex_lock(&stru_27F4D6550);
  v6 = off_27F4D6540;
  if (off_27F4D6540)
  {
    while (1)
    {
      v7 = *v6;
      if (!strcmp(*v6, a3))
      {
        break;
      }

      v6 = v6[5];
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    sub_25226B748(a1, 20, "mcc_resolve, found: %s\n", v7);
    pthread_mutex_lock((v6 + 11));
    ++*(v6 + 2);
    pthread_mutex_unlock((v6 + 11));
  }

  else
  {
LABEL_4:
    v6 = sub_25226CAF4(a3);
    sub_25226B748(a1, 20, "mcc_resolve, allocated: %s\n", *v6);
  }

  pthread_mutex_unlock(&stru_27F4D6550);
  *(*a2 + 16) = v6;
  *(*a2 + 8) = 152;
  return 0;
}

uint64_t sub_25226BC6C(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock(&stru_27F4D6550);
  v4 = sub_25226CAF4(0);
  sub_25226B748(a1, 20, "mcc_gen_new: %s\n", *v4);
  pthread_mutex_unlock(&stru_27F4D6550);
  *(*a2 + 16) = v4;
  *(*a2 + 8) = 152;
  return 0;
}

uint64_t sub_25226BCF8(_krb5_context *a1, uint64_t a2, const krb5_principal_data *a3)
{
  v5 = *(a2 + 16);
  v14 = 0;
  pthread_mutex_lock(&stru_27F4D6550);
  pthread_mutex_lock((v5 + 11));
  sub_25226B748(a1, 20, "mcc_initialize: %s\n", *v5);
  v6 = *(v5 + 3);
  *(v5 + 3) = 0;
  v5[7] = time(0);
  v7 = krb5_copy_principal(a1, a3, &v14);
  if (!v7)
  {
    v8 = v5[2];
    if (v8)
    {
      krb5_free_principal(a1, v8);
    }

    v5[2] = v14;
    sub_25226CC34(a1, v5);
    if (v6)
    {
      sub_25226B748(a1, 20, "mcc_initialize was dead: %s\n", *v5);
      v9 = off_27F4D6540;
      if (off_27F4D6540)
      {
        v10 = *v5;
        v11 = off_27F4D6540;
        while (strcmp(v10, *v11))
        {
          v11 = v11[5];
          if (!v11)
          {
            v5[5] = v9;
            *(v9 + 6) = v5 + 5;
            goto LABEL_12;
          }
        }

        v12 = v5[2];
        if (v12)
        {
          krb5_free_principal(a1, v12);
          v5[2] = 0;
        }

        *(v5 + 3) = 1;
        v7 = 17;
      }

      else
      {
        v5[5] = 0;
        qword_27F4D6548 = (v5 + 5);
LABEL_12:
        v7 = 0;
        off_27F4D6540 = v5;
        v5[6] = &off_27F4D6540;
      }
    }

    else
    {
      v7 = 0;
    }
  }

  pthread_mutex_unlock((v5 + 11));
  pthread_mutex_unlock(&stru_27F4D6550);
  return v7;
}

uint64_t sub_25226BE80(_krb5_context *a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  sub_25226B748(a1, 20, "mcc_destroy: %s\n", *v3);
  pthread_mutex_lock(&stru_27F4D6550);
  sub_25226CCA0(a1, v3);
  pthread_mutex_unlock(&stru_27F4D6550);
  return 0;
}

uint64_t sub_25226BEF4(uint64_t a1, uint64_t a2)
{
  if (sub_25226CD60(a1, *(a2 + 16)))
  {
    krb5_data_free((a2 + 8));
  }

  return 0;
}

uint64_t sub_25226BF2C(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  pthread_mutex_lock((v5 + 88));
  if (*(v5 + 12))
  {
    pthread_mutex_unlock((v5 + 88));
    return 2;
  }

  else
  {
    v7 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10A0040A2A4A3C5uLL);
    if (v7)
    {
      v8 = v7;
      v7[18] = 0;
      v9 = *(v5 + 32);
      v7[19] = v9;
      *v9 = v7;
      *(v5 + 32) = v7 + 18;
      *(v7 + 7) = 0u;
      *(v7 + 8) = 0u;
      *(v7 + 5) = 0u;
      *(v7 + 6) = 0u;
      *(v7 + 3) = 0u;
      *(v7 + 4) = 0u;
      *(v7 + 1) = 0u;
      *(v7 + 2) = 0u;
      *v7 = 0u;
      v6 = krb5_copy_creds_contents(a1, a3, v7);
      if (v6)
      {
        v10 = v8[18];
        v11 = v8[19];
        v12 = (v10 + 152);
        if (!v10)
        {
          v12 = (v5 + 32);
        }

        *v12 = v11;
        *v11 = v10;
        free(v8);
      }

      else
      {
        *(v5 + 56) = time(0);
      }

      pthread_mutex_unlock((v5 + 88));
    }

    else
    {
      v6 = 2529639110;
      pthread_mutex_unlock((v5 + 88));
      krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
    }
  }

  return v6;
}

uint64_t sub_25226C05C(_krb5_context *a1, uint64_t a2, krb5_principal *a3)
{
  v5 = *(a2 + 16);
  pthread_mutex_lock((v5 + 88));
  sub_25226B748(a1, 20, "mcc_get_principal: %p\n", v5);
  if (*(v5 + 12) || (v7 = *(v5 + 16)) == 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = krb5_copy_principal(a1, v7, a3);
  }

  pthread_mutex_unlock((v5 + 88));
  return v6;
}

uint64_t sub_25226C0E8(_krb5_context *a1, uint64_t a2, uint64_t **a3)
{
  v5 = *(a2 + 16);
  pthread_mutex_lock((v5 + 88));
  if (*(v5 + 12))
  {
    pthread_mutex_unlock((v5 + 88));
    return 2;
  }

  else
  {
    v8 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
    if (v8)
    {
      v9 = v8;
      *v8 = 0;
      v8[1] = v8;
      v10 = *(v5 + 24);
      if (v10)
      {
        while (1)
        {
          v11 = *(v10 + 144);
          v12 = malloc_type_calloc(1uLL, 0xA0uLL, 0x10A0040A2A4A3C5uLL);
          if (!v12)
          {
            v6 = 2529639110;
            krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
            sub_25226CE34(a1, v9);
            v16 = v9;
            goto LABEL_13;
          }

          v13 = v12;
          v14 = krb5_copy_creds_contents(a1, v10, v12);
          if (v14)
          {
            break;
          }

          v13[18] = 0;
          v15 = v9[1];
          v13[19] = v15;
          *v15 = v13;
          v9[1] = (v13 + 18);
          v10 = v11;
          if (!v11)
          {
            goto LABEL_9;
          }
        }

        v6 = v14;
        v16 = v13;
LABEL_13:
        free(v16);
        pthread_mutex_unlock((v5 + 88));
      }

      else
      {
LABEL_9:
        pthread_mutex_unlock((v5 + 88));
        v6 = 0;
        *a3 = v9;
      }
    }

    else
    {
      v6 = 2529639110;
      pthread_mutex_unlock((v5 + 88));
      krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
    }
  }

  return v6;
}

uint64_t sub_25226C264(uint64_t a1, uint64_t a2, void ***a3, _OWORD *a4)
{
  v5 = *(a2 + 16);
  v6 = *a3;
  pthread_mutex_lock((v5 + 88));
  v7 = *(v5 + 12);
  pthread_mutex_unlock((v5 + 88));
  if (v7)
  {
    return 2;
  }

  v9 = *v6;
  if (!*v6)
  {
    return 2529639054;
  }

  *a4 = *v9;
  v10 = v9[1];
  v11 = v9[2];
  v12 = v9[4];
  a4[3] = v9[3];
  a4[4] = v12;
  a4[1] = v10;
  a4[2] = v11;
  v13 = v9[5];
  v14 = v9[6];
  v15 = v9[8];
  a4[7] = v9[7];
  a4[8] = v15;
  a4[5] = v13;
  a4[6] = v14;
  v16 = *(v9 + 18);
  v17 = *(v9 + 19);
  v18 = v6 + 1;
  if (v16)
  {
    v18 = (v16 + 152);
  }

  *v18 = v17;
  *v17 = v16;
  free(v9);
  return 0;
}

uint64_t sub_25226C314(_krb5_context *a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  *a3 = 0;
  sub_25226CE34(a1, v3);
  free(v3);
  return 0;
}

uint64_t sub_25226C34C(_krb5_context *a1, uint64_t a2, int a3, uint64_t a4)
{
  v7 = *(a2 + 16);
  pthread_mutex_lock((v7 + 88));
  v8 = *(v7 + 24);
  if (v8)
  {
    do
    {
      v9 = *(v8 + 144);
      if (krb5_compare_creds(a1, a3, a4, v8))
      {
        krb5_free_cred_contents(a1, v8);
        v10 = *(v8 + 144);
        v11 = *(v8 + 152);
        v12 = (v10 + 152);
        if (!v10)
        {
          v12 = (v7 + 32);
        }

        *v12 = v11;
        *v11 = v10;
        free(v8);
        *(v7 + 56) = time(0);
      }

      v8 = v9;
    }

    while (v9);
  }

  pthread_mutex_unlock((v7 + 88));
  return 0;
}

uint64_t sub_25226C414(_krb5_context *a1, const char *****a2)
{
  v4 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040AFF93C70uLL);
  if (v4)
  {
    v5 = v4;
    *v4 = 0;
    v4[1] = v4;
    pthread_mutex_lock(&stru_27F4D6550);
    v6 = off_27F4D6540;
    if (off_27F4D6540)
    {
      do
      {
        while (1)
        {
          v7 = v6;
          v6 = v6[5];
          v8 = malloc_type_calloc(1uLL, 0x18uLL, 0xA0040E93CF5C4uLL);
          if (!v8)
          {
            pthread_mutex_unlock(&stru_27F4D6550);
            v12 = 12;
            krb5_set_error_message(a1, 12, "malloc: out of memory");
            sub_25226CEA0(a1, v5);
            return v12;
          }

          v9 = v8;
          v8[1] = 0;
          *v8 = v7;
          v10 = v5[1];
          v8[2] = v10;
          *v10 = v8;
          v5[1] = (v8 + 1);
          sub_25226B748(a1, 20, "mcc_get_cache_first, adding to cursor cache: %s\n", *v7);
          if (*v9)
          {
            break;
          }

LABEL_7:
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        pthread_mutex_lock((*v9 + 88));
        v11 = *v9;
        if (*(*v9 + 12))
        {
          pthread_mutex_unlock((v11 + 88));
          *v9 = 0;
          goto LABEL_7;
        }

        ++*(v11 + 8);
        pthread_mutex_unlock((v11 + 88));
      }

      while (v6);
    }

LABEL_10:
    pthread_mutex_unlock(&stru_27F4D6550);
    v12 = 0;
    *a2 = v5;
  }

  else
  {
    v12 = 2529639110;
    krb5_set_error_message(a1, -1765328186, "malloc: out of memory");
  }

  return v12;
}

uint64_t sub_25226C5BC(_krb5_context *a1, void **a2, void *a3)
{
  v3 = 2529639054;
  if (!a2)
  {
    return v3;
  }

  v8 = a2 + 1;
  v7 = *a2;
  while (!v7)
  {
LABEL_9:
    v7 = *a2;
    if (!*a2)
    {
      return v3;
    }
  }

  v9 = v7[1];
  v10 = v7[2];
  v11 = (v9 + 2);
  if (!v9)
  {
    v11 = v8;
  }

  *v11 = v10;
  *v10 = v9;
  v12 = *v7;
  free(v7);
  pthread_mutex_lock((v12 + 11));
  v13 = *(v12 + 3);
  pthread_mutex_unlock((v12 + 11));
  if (v13)
  {
    sub_25226B748(a1, 20, "mcc_get_cache_next, not returning, already dead: %s\n", *v12);
    if (sub_25226CD60(a1, v12))
    {
      sub_25226B748(a1, 20, "mcc_get_cache_next, needs to be freed: %s\n", *v12);
      free(v12);
    }

    goto LABEL_9;
  }

  sub_25226B748(a1, 20, "mcc_get_cache_next, returning: %s\n", *v12);
  v3 = sub_25224B218(a1, &krb5_mcc_ops, a3);
  if (!v3)
  {
    *(*a3 + 16) = v12;
    *(*a3 + 8) = 152;
  }

  return v3;
}

uint64_t sub_25226C70C(uint64_t a1, const char ****a2)
{
  sub_25226CEA0(a1, a2);
  free(a2);
  return 0;
}

uint64_t sub_25226C73C(_krb5_context *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 16);
  v6 = *(a3 + 16);
  sub_25226B748(a1, 20, "mcc_move, from: %s to: %s\n", *v5, *v6);
  pthread_mutex_lock(&stru_27F4D6550);
  v7 = v5[5];
  v8 = v5[6];
  v9 = (v7 + 48);
  if (!v7)
  {
    v9 = &qword_27F4D6548;
  }

  *v9 = v8;
  *v8 = v7;
  pthread_mutex_lock((v5 + 11));
  pthread_mutex_lock((v6 + 88));
  v10 = *(v6 + 24);
  if (v10)
  {
    do
    {
      v11 = *(v10 + 144);
      krb5_free_cred_contents(a1, v10);
      v12 = *(v10 + 144);
      v13 = *(v10 + 152);
      v14 = (v12 + 152);
      if (!v12)
      {
        v14 = (v6 + 32);
      }

      *v14 = v13;
      *v13 = v12;
      free(v10);
      v10 = v11;
    }

    while (v11);
  }

  v15 = v5[3];
  if (v15)
  {
    v16 = v15 + 144;
    v17 = *(v15 + 18);
    if (v17)
    {
      do
      {
        v18 = v17;
        v19 = *(v15 + 19);
        *(v18 + 19) = v19;
        *v19 = v18;
        v20 = *(v6 + 32);
        *(v15 + 18) = 0;
        *(v15 + 19) = v20;
        *v20 = v15;
        *(v6 + 32) = v16;
        v16 = v18 + 144;
        v17 = *(v18 + 18);
        v15 = v18;
      }

      while (v17);
    }

    else
    {
      v18 = v5[3];
    }

    v21 = *(v18 + 19);
    v5[4] = v21;
    *v21 = 0;
    v22 = *(v6 + 32);
    *(v18 + 18) = 0;
    *(v18 + 19) = v22;
    *v22 = v18;
    *(v6 + 32) = v16;
  }

  v23 = *(v6 + 16);
  *(v6 + 16) = v5[2];
  v5[2] = v23;
  v24 = time(0);
  v5[7] = v24;
  *(v6 + 56) = v24;
  pthread_mutex_unlock((v5 + 11));
  pthread_mutex_unlock((v6 + 88));
  sub_25226CCA0(a1, v5);
  pthread_mutex_unlock(&stru_27F4D6550);
  if (sub_25226CD60(a1, v5))
  {
    krb5_data_free((a2 + 8));
    sub_25226B748(a1, 20, "mcc_move, from freed\n");
  }

  else
  {
    sub_25226B748(a1, 20, "mcc_move, from not freed\n");
  }

  return 0;
}

uint64_t sub_25226C910(_krb5_context *a1, char **a2)
{
  v4 = strdup("MEMORY:");
  *a2 = v4;
  if (v4)
  {
    return 0;
  }

  v5 = 12;
  krb5_set_error_message(a1, 12, "malloc: out of memory");
  return v5;
}

uint64_t sub_25226C96C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  pthread_mutex_lock((v4 + 88));
  *a3 = *(v4 + 56);
  pthread_mutex_unlock((v4 + 88));
  return 0;
}

uint64_t sub_25226C9AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  pthread_mutex_lock((v4 + 88));
  *(v4 + 64) = a3;
  pthread_mutex_unlock((v4 + 88));
  return 0;
}

uint64_t sub_25226C9E8(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a2 + 16);
  pthread_mutex_lock((v4 + 88));
  *a3 = *(v4 + 64);
  pthread_mutex_unlock((v4 + 88));
  return 0;
}

uint64_t sub_25226CA3C(_krb5_context *a1, uint64_t a2, void *a3)
{
  pthread_mutex_lock(&stru_27F4D6550);
  v6 = off_27F4D6540;
  if (off_27F4D6540)
  {
    while (*(v6 + 9) != *a3 || *(v6 + 10) != a3[1])
    {
      v6 = *(v6 + 5);
      if (!v6)
      {
        goto LABEL_7;
      }
    }

    pthread_mutex_lock((v6 + 88));
    ++*(v6 + 2);
    pthread_mutex_unlock((v6 + 88));
    pthread_mutex_unlock(&stru_27F4D6550);
    result = 0;
    *(a2 + 8) = 152;
    *(a2 + 16) = v6;
  }

  else
  {
LABEL_7:
    pthread_mutex_unlock(&stru_27F4D6550);
    krb5_clear_error_message(a1);
    return 2529639054;
  }

  return result;
}

char **sub_25226CAF4(const char *a1)
{
  v2 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B0040EEA56EF3uLL);
  v3 = v2;
  if (v2)
  {
    if (a1)
    {
      v4 = strdup(a1);
      *v3 = v4;
      if (!v4)
      {
LABEL_14:
        free(v3);
        return 0;
      }
    }

    else
    {
      if (asprintf(v2, "%p", v2) < 0)
      {
        goto LABEL_14;
      }

      v4 = *v3;
      if (!*v3)
      {
        goto LABEL_14;
      }
    }

    v5 = off_27F4D6540;
    if (off_27F4D6540)
    {
      while (strcmp(v4, *v5))
      {
        v5 = v5[5];
        if (!v5)
        {
          goto LABEL_10;
        }
      }

      free(v4);
      goto LABEL_14;
    }

LABEL_10:
    v3[1] = 1;
    v3[2] = 0;
    v3[3] = 0;
    v3[4] = (v3 + 3);
    v3[7] = time(0);
    v3[8] = 0;
    krb5_generate_random_block((v3 + 9), 16);
    pthread_mutex_init((v3 + 11), 0);
    v6 = off_27F4D6540;
    v3[5] = off_27F4D6540;
    v7 = (v6 + 48);
    v8 = v6 == 0;
    off_27F4D6540 = v3;
    v9 = &qword_27F4D6548;
    if (!v8)
    {
      v9 = v7;
    }

    *v9 = (v3 + 5);
    v3[6] = &off_27F4D6540;
  }

  return v3;
}

void sub_25226CC34(krb5_context a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *(v2 + 144);
      krb5_free_cred_contents(a1, v2);
      v6 = *(v2 + 144);
      v7 = *(v2 + 152);
      v8 = (v6 + 152);
      if (!v6)
      {
        v8 = v4;
      }

      *v8 = v7;
      *v7 = v6;
      free(v2);
      v2 = v5;
    }

    while (v5);
  }
}

uint64_t sub_25226CCA0(_krb5_context *a1, uint64_t a2)
{
  pthread_mutex_lock((a2 + 88));
  sub_25226B748(a1, 20, "mcc_destroy_internal_locked: %s\n", *a2);
  if (!*(a2 + 8))
  {
    sub_2522A7E6C();
  }

  if (!*(a2 + 12))
  {
    v4 = *(a2 + 40);
    v5 = *(a2 + 48);
    v6 = &qword_27F4D6548;
    if (v4)
    {
      v6 = (v4 + 48);
    }

    *v6 = v5;
    *v5 = v4;
    v7 = *(a2 + 16);
    if (v7)
    {
      krb5_free_principal(a1, v7);
      *(a2 + 16) = 0;
    }

    *(a2 + 12) = 1;
    sub_25226CC34(a1, a2);
  }

  return pthread_mutex_unlock((a2 + 88));
}

uint64_t sub_25226CD60(uint64_t a1, const char **a2)
{
  pthread_mutex_lock(&stru_27F4D6550);
  pthread_mutex_lock((a2 + 11));
  sub_25226B748(a1, 20, "mcc_close_internal: %s, %u\n", *a2, *(a2 + 2));
  v4 = *(a2 + 2) - 1;
  *(a2 + 2) = v4;
  if (v4 || !*(a2 + 3))
  {
    pthread_mutex_unlock((a2 + 11));
    v5 = 0;
  }

  else
  {
    sub_25226B748(a1, 20, "mcc_close_internal, dead: %s\n", *a2);
    pthread_mutex_unlock((a2 + 11));
    free(*a2);
    *a2 = 0;
    pthread_mutex_destroy((a2 + 11));
    v5 = 1;
  }

  pthread_mutex_unlock(&stru_27F4D6550);
  return v5;
}

void sub_25226CE34(krb5_context a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v4 = a2 + 1;
    do
    {
      v5 = *(v2 + 144);
      krb5_free_cred_contents(a1, v2);
      v6 = *(v2 + 144);
      v7 = *(v2 + 152);
      v8 = (v6 + 152);
      if (!v6)
      {
        v8 = v4;
      }

      *v8 = v7;
      *v7 = v6;
      free(v2);
      v2 = v5;
    }

    while (v5);
  }
}

void sub_25226CEA0(uint64_t a1, const char ****a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = a2 + 1;
    do
    {
      sub_25226B748(a1, 20, "mcc_free_cache_cursor, closing cache: %s\n", **v2);
      if (sub_25226CD60(a1, *v2))
      {
        v6 = *v2;
        sub_25226B748(a1, 20, "mcc_free_cache_cursor, needs to be freed: %s\n", **v2);
        free(v6);
      }

      v7 = v2[1];
      v8 = v2[2];
      v9 = (v7 + 2);
      if (!v7)
      {
        v9 = v5;
      }

      *v9 = v8;
      *v8 = v7;
      free(v2);
      v2 = *a2;
    }

    while (*a2);
  }
}

uint64_t _krb5_s4u2self_to_checksumdata(_krb5_context *a1, unsigned int *a2, size_t *a3)
{
  v6 = krb5_storage_emem();
  if (v6)
  {
    v7 = v6;
    krb5_storage_set_flags(v6, 32);
    v8 = krb5_store_int32(v7, *a2);
    if (!v8)
    {
      if (a2[2])
      {
        v9 = 0;
        while (1)
        {
          v10 = strlen(*(*(a2 + 2) + 8 * v9));
          if (krb5_storage_write(v7) != v10)
          {
            break;
          }

          if (++v9 >= a2[2])
          {
            goto LABEL_7;
          }
        }
      }

      else
      {
LABEL_7:
        v11 = strlen(*(a2 + 3));
        if (krb5_storage_write(v7) == v11)
        {
          v12 = strlen(*(a2 + 7));
          if (krb5_storage_write(v7) == v12)
          {
            v13 = krb5_storage_to_data(v7, a3);
            krb5_storage_free(v7);
            return v13;
          }
        }
      }

      v8 = 12;
    }

    krb5_clear_error_message(a1);
  }

  else
  {
    krb5_clear_error_message(a1);
    return 12;
  }

  return v8;
}

_BYTE *krb5_uuid_to_string(uint64_t a1)
{
  result = malloc_type_malloc(0x25uLL, 0x1000040451B5BE8uLL);
  if (result)
  {
    v3 = 0;
    v4 = result;
    do
    {
      if ((v3 & 0xD) == 8 || (v3 & 0xD) == 4)
      {
        *v4++ = 45;
      }

      *v4 = byte_2522A9F48[*(a1 + v3) >> 4];
      v4[1] = byte_2522A9F48[*(a1 + v3) & 0xF];
      v4 += 2;
      ++v3;
    }

    while (v3 != 16);
    *v4 = 0;
  }

  return result;
}

uint64_t krb5_string_to_uuid(char *a1, uint64_t a2)
{
  v3 = a1;
  if (strlen(a1) == 36)
  {
    v4 = 0;
    while (1)
    {
      if ((v4 & 0xD) == 8 || (v4 & 0xD) == 4)
      {
        v6 = *v3++;
        if (v6 != 45)
        {
          break;
        }
      }

      v7 = sub_25226D220(*v3);
      *(a2 + v4) = sub_25226D220(v3[1]) | (16 * v7);
      v3 += 2;
      if (++v4 == 16)
      {
        return 0;
      }
    }
  }

  return 22;
}

uint64_t sub_25226D220(unsigned __int8 a1)
{
  v1 = __toupper(a1);
  result = 0;
  LOBYTE(v3) = 48;
  while (v1 != v3)
  {
    v3 = byte_2522A9F48[++result];
    if (!v3)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

krb5_error_code krb5_mk_error(krb5_context a1, const krb5_error *a2, krb5_data *a3)
{
  v8 = v7;
  v9 = v6;
  v10 = v5;
  v11 = v4;
  v12 = v3;
  error_message = a3;
  v14 = a2;
  v32 = a3;
  *v25 = 0;
  v24 = 0;
  v23 = 0;
  krb5_us_timeofday(a1, v25, &v24);
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0;
  v26[0] = 0x1E00000005;
  v26[2] = v8;
  v26[3] = *v25;
  LODWORD(v27) = v24;
  v26[1] = v9;
  if ((v14 + 1765328256) > 0xFFFFFF7F)
  {
    v16 = 0;
    v17 = v14 + 1765328384;
    goto LABEL_6;
  }

  if (!error_message)
  {
    error_message = krb5_get_error_message(a1, v14);
    v32 = error_message;
    v17 = 60;
    v16 = error_message;
LABEL_6:
    DWORD1(v27) = v17;
    if (!error_message)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v16 = 0;
  DWORD1(v27) = 60;
LABEL_7:
  *(&v30 + 1) = &v32;
LABEL_8:
  if (v12)
  {
    v31 = v12;
  }

  if (v10)
  {
    v29 = *v10;
    v18 = *(v10 + 3);
    *&v30 = *(v10 + 2);
  }

  else
  {
    v18 = aUnspecifiedRea;
  }

  *(&v28 + 1) = v18;
  if (v11)
  {
    *(&v27 + 1) = v11 + 24;
    *&v28 = v11;
  }

  v19 = sub_25228B33C(v26);
  *v33 = v19;
  v20 = malloc_type_malloc(v19, 0x7C313FE2uLL);
  *(v33 + 8) = v20;
  if (!v20)
  {
    v21 = 12;
    if (!v16)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v21 = sub_25228B31C(v20 + *v33 - 1, *v33, v26, &v23);
  if (v21)
  {
    free(*(v33 + 8));
    *(v33 + 8) = 0;
  }

  if (v16)
  {
LABEL_19:
    krb5_free_error_message(a1, v16);
  }

LABEL_20:
  if (!v21 && *v33 != v23)
  {
    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  return v21;
}

krb5_error_code krb5_mk_priv(krb5_context a1, krb5_auth_context a2, const krb5_data *a3, krb5_data *a4, krb5_replay_data *a5)
{
  size = 0;
  if (!a5 && (*a2 & 0xA) != 0)
  {
    return -1765328169;
  }

  v10 = *(a2 + 5);
  if (!v10)
  {
    v10 = *(a2 + 6);
    if (!v10)
    {
      v10 = *(a2 + 4);
    }
  }

  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  v33 = 0uLL;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  v29 = *a3;
  krb5_us_timeofday(a1, &v25, &v26);
  v11 = *a2;
  if (*a2)
  {
    v12 = &v25;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = &v26;
  }

  else
  {
    v13 = 0;
  }

  v30 = v12;
  v31 = v13;
  if ((v11 & 2) != 0)
  {
    *&a5->timestamp = v25;
    a5->seq = v26;
  }

  if ((v11 & 4) != 0)
  {
    v14 = &v26 + 4;
    HIDWORD(v26) = *(a2 + 14);
  }

  else
  {
    v14 = 0;
  }

  v32 = v14;
  if ((v11 & 8) != 0)
  {
    a5[1].timestamp = *(a2 + 14);
  }

  v33 = *(a2 + 8);
  krb5_data_zero(&v35 + 1);
  v15 = sub_25228B21C(&v29);
  v16 = malloc_type_malloc(v15, 0xE7B48088uLL);
  if (!v16)
  {
    goto LABEL_33;
  }

  v17 = v16;
  v18 = &v16[v15];
  v19 = sub_25228B1FC(&v16[v15 - 1], v15, &v29, &size);
  if (v19)
  {
LABEL_22:
    v9 = v19;
    free(v17);
LABEL_34:
    krb5_data_free(&v35 + 1);
    return v9;
  }

  if (v15 != size)
  {
LABEL_38:
    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  *&v34 = 0x1500000005;
  DWORD2(v34) = v10->magic;
  *&v35 = 0;
  v20 = krb5_crypto_init(a1, v10, 0, &v27);
  if (v20)
  {
    v9 = v20;
LABEL_26:
    free(v17);
    return v9;
  }

  v9 = krb5_encrypt(a1, v27, 0xD, &v18[-size], size, &v35 + 8);
  krb5_crypto_destroy(a1, v27);
  free(v17);
  if (v9)
  {
    return v9;
  }

  v21 = sub_25228B1BC(&v34);
  v22 = malloc_type_malloc(v21, 0xDA1ADE83uLL);
  if (!v22)
  {
LABEL_33:
    v9 = 12;
    goto LABEL_34;
  }

  v17 = v22;
  v23 = &v22[v21];
  v19 = sub_25228B19C(&v22[v21 - 1], v21, &v34, &size);
  if (v19)
  {
    goto LABEL_22;
  }

  if (v21 != size)
  {
    goto LABEL_38;
  }

  krb5_data_free(&v35 + 1);
  if (krb5_data_copy(a4, &v23[-size], size))
  {
    v9 = 12;
    krb5_set_error_message(a1, 12, "malloc: out of memory");
    goto LABEL_26;
  }

  free(v17);
  v9 = 0;
  if ((*a2 & 4) != 0)
  {
    ++*(a2 + 14);
  }

  return v9;
}

krb5_error_code krb5_mk_rep(krb5_context a1, krb5_auth_context a2, krb5_data *a3)
{
  v31 = 0;
  v25 = 0;
  eblock = 0;
  v24 = 0u;
  v23 = 0u;
  v29 = 0;
  v30 = 0;
  v22 = 0xF00000005;
  v6 = *(a2 + 8);
  v27 = *(v6 + 56);
  v28 = 0;
  LODWORD(v28) = *(v6 + 48);
  v7 = *a2;
  if ((*a2 & 0x20) != 0)
  {
    v8 = *(a2 + 5);
    if (!v8)
    {
      v10 = krb5_auth_con_generatelocalsubkey(a1, a2, *(a2 + 4));
      if (v10)
      {
        goto LABEL_18;
      }

      v8 = *(a2 + 5);
    }

    if (krb5_copy_keyblock(a1, v8, &v29))
    {
LABEL_16:
      v10 = krb5_enomem(a1);
LABEL_18:
      v16 = v10;
      goto LABEL_19;
    }

    v7 = *a2;
  }

  if ((v7 & 4) != 0)
  {
    if (!*(a2 + 14))
    {
      krb5_generate_seq_number(a1, *(a2 + 4), a2 + 14);
    }

    v9 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
    v30 = v9;
    if (v9)
    {
      *v9 = *(a2 + 14);
      goto LABEL_11;
    }

    goto LABEL_16;
  }

  v30 = 0;
LABEL_11:
  LODWORD(v23) = **(a2 + 4);
  *(&v23 + 1) = 0;
  if (*(a2 + 13))
  {
    v10 = sub_25227E054(a1, a2, &v22);
    if (v10)
    {
      goto LABEL_18;
    }
  }

  v11 = sub_25228B0FC(&v27);
  v12 = malloc_type_malloc(v11, 0x55B3CBDEuLL);
  if (!v12)
  {
    v16 = 12;
    goto LABEL_19;
  }

  v13 = v12;
  v14 = v11 + v12;
  v15 = sub_25228B0DC(v11 + v12 - 1, v11, &v27, &eblock);
  if (v15)
  {
    v16 = v15;
    free(v13);
    goto LABEL_19;
  }

  if (v11 != eblock)
  {
    goto LABEL_34;
  }

  v18 = krb5_crypto_init(a1, *(a2 + 4), 0, &v31);
  if (v18 || (v18 = krb5_encrypt(a1, v31, 0xC, v14 - eblock, eblock, &v24)) != 0)
  {
    v16 = v18;
    goto LABEL_25;
  }

  v19 = sub_25228B09C(&v22);
  *&a3->magic = v19;
  v20 = malloc_type_malloc(v19, 0x10AC7BABuLL);
  a3->data = v20;
  if (!v20)
  {
    v16 = 12;
    goto LABEL_25;
  }

  v21 = sub_25228B07C(&v20[*&a3->magic - 1], *&a3->magic, &v22, &eblock);
  if (v21)
  {
    v16 = v21;
    free(a3->data);
    a3->data = 0;
    goto LABEL_25;
  }

  if (*&a3->magic != eblock)
  {
LABEL_34:
    krb5_abortx(a1, "internal error in ASN.1 encoder", v22, v23, v24, v25);
  }

  v16 = 0;
LABEL_25:
  free(v13);
  if (v31)
  {
    krb5_crypto_destroy(a1, v31);
  }

LABEL_19:
  sub_25228B10C(&v27);
  sub_25228B0AC(&v22);
  return v16;
}

uint64_t sub_25226D9BC(krb5_context a1, krb5_auth_context *a2, char a3, uint64_t *a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, int a9)
{
  v31 = 0;
  v32 = 0;
  memset(v30, 0, sizeof(v30));
  v29 = 0;
  if (!a2)
  {
    checksum = krb5_auth_con_init(a1, &v29);
    if (checksum)
    {
      return checksum;
    }

LABEL_8:
    v18 = v29;
    if ((a3 & 4) != 0 && !*(v29 + 5))
    {
      v19 = krb5_auth_con_generatelocalsubkey(a1, v29, (a6 + 16));
      if (v19)
      {
LABEL_13:
        checksum = v19;
        goto LABEL_14;
      }

      v18 = v29;
    }

    krb5_free_keyblock(a1, *(v18 + 4));
    v19 = krb5_copy_keyblock(a1, (a6 + 16), v29 + 4);
    if (v19)
    {
      goto LABEL_13;
    }

    if (a2)
    {
      if ((a3 & 8) != 0)
      {
        checksum = _krb5_auth_con_setup_pfs(a1, v29, **(v29 + 4));
        if (checksum)
        {
          return checksum;
        }
      }
    }

    if (!a4)
    {
      v27 = 0;
      goto LABEL_27;
    }

    v21 = *(v29 + 4);
    magic = v21->magic;
    if (v21->magic <= 0x18u)
    {
      if (((1 << magic) & 0x180000C) != 0)
      {
        v24 = *a4;
        v23 = a4[1];
        v25 = a1;
        v26 = 7;
        goto LABEL_24;
      }

      if (magic == 1)
      {
        v24 = *a4;
        v23 = a4[1];
        v25 = a1;
        v26 = 2;
LABEL_24:
        checksum = krb5_create_checksum(v25, 0, 0, v26, v23, v24, v30);
        if (!checksum)
        {
LABEL_25:
          v27 = v30;
LABEL_27:
          checksum = _krb5_build_authenticator(a1, v29, **(v29 + 4), a6, v27, &v31, a9);
          if (v27)
          {
            sub_25228AB34(v27);
          }

          if (checksum)
          {
            goto LABEL_14;
          }

          v19 = krb5_build_ap_req(a1, **(v29 + 4), a6, a3, v31, v32, a7);
          goto LABEL_13;
        }

LABEL_14:
        if (!a2)
        {
          krb5_auth_con_free(a1, v29);
        }

        return checksum;
      }
    }

    v28 = 0;
    v19 = krb5_crypto_init(a1, v21, 0, &v28);
    if (v19)
    {
      goto LABEL_13;
    }

    checksum = krb5_create_checksum(a1, v28, a8, 0, a4[1], *a4, v30);
    krb5_crypto_destroy(a1, v28);
    if (!checksum)
    {
      goto LABEL_25;
    }

    goto LABEL_14;
  }

  v16 = *a2;
  if (*a2)
  {
    checksum = 0;
  }

  else
  {
    checksum = krb5_auth_con_init(a1, a2);
    v16 = *a2;
  }

  v29 = v16;
  if (!checksum)
  {
    goto LABEL_8;
  }

  return checksum;
}

uint64_t krb5_mk_req_exact(_krb5_context *a1, krb5_auth_context *a2, krb5_flags a3, const krb5_principal_data *a4, krb5_data *a5, krb5_ccache cache, krb5_data *a7)
{
  v18 = 0;
  *principal = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = krb5_cc_get_principal(a1, cache, principal);
  if (v14)
  {
    return v14;
  }

  v16 = krb5_copy_principal(a1, a4, &principal[1]);
  if (v16)
  {
    credentials = v16;
    krb5_free_cred_contents(a1, principal);
  }

  else
  {
    *(&v22 + 1) = 0;
    if (a2 && *a2 && *(*a2 + 22))
    {
      LODWORD(v20) = *(*a2 + 22);
    }

    credentials = krb5_get_credentials(a1, 0, cache, principal, &v18);
    krb5_free_cred_contents(a1, principal);
    if (!credentials)
    {
      credentials = krb5_mk_req_extended(a1, a2, a3, a5, v18, a7);
      krb5_free_creds(a1, v18);
    }
  }

  return credentials;
}

krb5_error_code krb5_mk_req(krb5_context a1, krb5_auth_context *a2, krb5_flags a3, char *a4, char *a5, krb5_data *a6, krb5_ccache a7, krb5_data *a8)
{
  v19 = 0;
  v20 = 0;
  v18 = 0;
  v15 = krb5_expand_hostname_realms(a1, a5, &v19, &v20);
  if (v15)
  {
    return v15;
  }

  principal = krb5_make_principal(a1, &v18, *v20, a4, v19, 0);
  free(v19);
  krb5_free_host_realm(a1, v20);
  if (!principal)
  {
    principal = krb5_mk_req_exact(a1, a2, a3, v18, a6, a7, a8);
    krb5_free_principal(a1, v18);
  }

  return principal;
}

krb5_error_code krb5_mk_safe(krb5_context a1, krb5_auth_context a2, const krb5_data *a3, krb5_data *a4, krb5_replay_data *a5)
{
  v27 = 0;
  if (!a5 && (*a2 & 0xA) != 0)
  {
    return -1765328169;
  }

  v10 = *(a2 + 5);
  if (!v10)
  {
    v10 = *(a2 + 6);
    if (!v10)
    {
      v10 = *(a2 + 4);
    }
  }

  v35 = 0;
  v33 = 0u;
  v34 = 0u;
  v25 = 0;
  v26 = 0;
  v28 = 0x1400000005;
  *v24 = 0;
  v29 = *a3;
  krb5_us_timeofday(a1, v24, &v25);
  v11 = *a2;
  if (*a2)
  {
    v12 = v24;
  }

  else
  {
    v12 = 0;
  }

  if (v11)
  {
    v13 = &v25;
  }

  else
  {
    v13 = 0;
  }

  v30 = v12;
  v31 = v13;
  if ((v11 & 2) != 0)
  {
    *&a5->timestamp = *v24;
    a5->seq = v25;
  }

  if ((v11 & 4) != 0)
  {
    v14 = &v25 + 4;
    HIDWORD(v25) = *(a2 + 14);
  }

  else
  {
    v14 = 0;
  }

  v32 = v14;
  if ((v11 & 8) != 0)
  {
    a5[1].timestamp = *(a2 + 14);
  }

  v33 = *(a2 + 8);
  LODWORD(v34) = 0;
  *(&v34 + 1) = 0;
  v35 = 0;
  v15 = sub_25228B15C(&v28);
  v16 = malloc_type_malloc(v15, 0x7617CEA5uLL);
  if (!v16)
  {
    return 12;
  }

  v17 = v16;
  v18 = sub_25228B13C(v16 + v15 - 1, v15, &v28, &v27);
  if (v18)
  {
LABEL_24:
    checksum = v18;
    free(v17);
    return checksum;
  }

  if (v15 != v27)
  {
    goto LABEL_36;
  }

  v18 = krb5_crypto_init(a1, v10, 0, &v26);
  if (v18)
  {
    goto LABEL_24;
  }

  checksum = krb5_create_checksum(a1, v26, 0xFu, 0, v17, v27, &v34);
  krb5_crypto_destroy(a1, v26);
  free(v17);
  if (checksum)
  {
    return checksum;
  }

  v20 = sub_25228B15C(&v28);
  v21 = malloc_type_malloc(v20, 0x74643B12uLL);
  if (!v21)
  {
    checksum = 12;
    goto LABEL_32;
  }

  v22 = v21;
  v23 = sub_25228B13C(v21 + v20 - 1, v20, &v28, &v27);
  if (v23)
  {
    checksum = v23;
    free(v22);
LABEL_32:
    sub_25228AB34(&v34);
    return checksum;
  }

  sub_25228AB34(&v34);
  if (v20 != v27)
  {
LABEL_36:
    krb5_abortx(a1, "internal error in ASN.1 encoder");
  }

  *&a4->magic = v20;
  a4->data = v22;
  checksum = 0;
  if ((*a2 & 4) != 0)
  {
    ++*(a2 + 14);
  }

  return checksum;
}

uint64_t sub_25226E0FC(const void *a1, size_t a2, char *a3, size_t a4)
{
  v6 = a2;
  if (a4 <= a2)
  {
    v8 = a2;
  }

  else
  {
    v8 = a4;
  }

  v9 = 2 * v8;
  v10 = malloc_type_malloc(2 * v8, 0x42393B02uLL);
  v11 = malloc_type_malloc(v6, 0xFCDD0660uLL);
  v12 = v11;
  if (v10)
  {
    v13 = v11 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    v14 = 12;
    if (!v11)
    {
      goto LABEL_35;
    }

    goto LABEL_34;
  }

  v36 = v9;
  memcpy(v11, a1, v6);
  bzero(a3, a4);
  v15 = 0;
  v16 = 8 * v6;
  v17 = v6 & 0x1FFFFFFFFFFFFFFFLL;
  v38 = v6;
  v18 = v10 - 1;
  v19 = a3 - 1;
  v37 = v10;
  while (2)
  {
    memcpy(&v10[v15], v12, v6);
    if (!v16)
    {
      goto LABEL_20;
    }

    v20 = malloc_type_malloc(v17, 0x731AC717uLL);
    if (!v20)
    {
      v14 = 12;
      v9 = v36;
      v6 = v38;
      if (!v12)
      {
        goto LABEL_35;
      }

LABEL_34:
      bzero(v12, v6);
      free(v12);
      goto LABEL_35;
    }

    v21 = v20;
    memcpy(v20, v12, v17);
    v22 = 0;
    do
    {
      v23 = 8 * v22 - 0xD % v16;
      do
      {
        v24 = v23;
        v23 += v16;
      }

      while ((v24 & 0x8000000000000000) != 0);
      v25 = v24 >> 3;
      v26 = v24 & 7;
      v27 = v24 + 8;
      v28 = -v24 & 7;
      if (v27 <= v16)
      {
        LOBYTE(v28) = 8 - v26;
      }

      *(v12 + v22++) = (v21[(v25 + 1) % v17] >> v28) | (v21[v25] << v26);
    }

    while (v22 != v17);
    free(v21);
    v10 = v37;
    v6 = v38;
LABEL_20:
    for (v15 += v6; v15 >= a4; memmove(v10, &v10[a4], v15))
    {
      if (((a4 - 1) & 0x8000000000000000) == 0)
      {
        v29 = 0;
        v30 = a4;
        do
        {
          v31 = v29 + v19[v30] + v18[v30];
          v29 = v31 > 0xFF;
          v19[v30--] = v31;
        }

        while (v30);
        if (v31 >= 0x100)
        {
          v32 = a4 - 1;
          do
          {
            v33 = a3[v32]++ + 1;
            v34 = v32-- != 0;
          }

          while (v34 && ((v33 >> 8) & 1) != 0);
        }
      }

      v15 -= a4;
      if (!v15)
      {
        goto LABEL_33;
      }
    }

    if (v15)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v14 = 0;
  v9 = v36;
  if (v12)
  {
    goto LABEL_34;
  }

LABEL_35:
  if (v10)
  {
    bzero(v10, v9);
    free(v10);
  }

  return v14;
}

size_t krb5_net_write_block(uint64_t a1, int *a2, char *a3, size_t a4, uint64_t a5)
{
  v6 = a4;
  v8 = *a2;
  v18 = 0;
  v19 = 0;
  v9 = 1 << v8;
  v10 = v8 >> 5;
  v11 = a4;
  while (1)
  {
    memset(&v17, 0, sizeof(v17));
    if (__darwin_check_fd_set_overflow(v8, &v17, 0))
    {
      v17.fds_bits[v10] |= v9;
    }

    if (a5)
    {
      v18 = a5;
      LODWORD(v19) = 0;
      v12 = &v18;
    }

    else
    {
      v12 = 0;
    }

    v13 = select(v8 + 1, 0, &v17, 0, v12);
    if ((v13 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      return -1;
    }

LABEL_16:
    if (!v11)
    {
      return v6;
    }
  }

  if (!v13)
  {
    return 0;
  }

  if (!__darwin_check_fd_set_overflow(v8, &v17, 0) || (v17.fds_bits[v10] & v9) == 0)
  {
    *__error() = 60;
    return -1;
  }

  v14 = write(v8, a3, v11);
  v15 = v14;
  if ((v14 & 0x8000000000000000) == 0)
  {
    a3 += v14;
    v11 -= v14;
    goto LABEL_16;
  }

  if (*__error() == 4)
  {
    goto LABEL_16;
  }

  return v15;
}

uint64_t krb5_pac_parse(_krb5_context *a1, const void *a2, size_t a3, void *a4)
{
  v8 = heim_uniq_alloc(0x68uLL, "krb5-pac", sub_25226E898);
  if (!v8)
  {
    v12 = krb5_enomem(a1);
    goto LABEL_12;
  }

  v29 = 0;
  v9 = krb5_storage_from_readonly_mem(a2, a3);
  if (!v9)
  {
    v12 = krb5_enomem(a1);
    goto LABEL_9;
  }

  v10 = v9;
  krb5_storage_set_flags(v9, 32);
  v11 = krb5_ret_uint32(v10, &v29 + 1);
  if (!v11)
  {
    v11 = krb5_ret_uint32(v10, &v29);
    if (!v11)
    {
      if (!HIDWORD(v29))
      {
        v15 = "PAC have too few buffers";
LABEL_19:
        v12 = 22;
        krb5_set_error_message(a1, 22, v15, v27, v28);
        goto LABEL_6;
      }

      if (HIDWORD(v29) >= 0x3E9)
      {
        v12 = 2314790741;
        krb5_set_error_message(a1, -1980176555, "PAC have too many buffers");
        goto LABEL_6;
      }

      if (v29)
      {
        v27 = v29;
        v15 = "PAC have wrong version %d";
        goto LABEL_19;
      }

      v16 = (16 * HIDWORD(v29)) | 8;
      v17 = malloc_type_calloc(1uLL, v16, 0xE6C7D756uLL);
      v8[4] = v17;
      if (!v17)
      {
        v12 = krb5_enomem(a1);
        goto LABEL_6;
      }

      v18 = HIDWORD(v29);
      *v17 = HIDWORD(v29);
      v17[1] = v29;
      if (v16 > a3)
      {
        v12 = 22;
        goto LABEL_6;
      }

      if (!v18)
      {
LABEL_51:
        v12 = krb5_data_copy(v8 + 5, a2, a3);
        if (!v12)
        {
          krb5_storage_free(v10);
          goto LABEL_12;
        }

        goto LABEL_6;
      }

      v19 = 0;
      v20 = 3;
      while (1)
      {
        v11 = krb5_ret_uint32(v10, &v17[v20 - 1]);
        if (v11)
        {
          break;
        }

        v11 = krb5_ret_uint32(v10, (v8[4] + v20 * 4));
        if (v11)
        {
          break;
        }

        v11 = krb5_ret_uint32(v10, (v8[4] + v20 * 4 + 8));
        if (v11)
        {
          break;
        }

        v11 = krb5_ret_uint32(v10, (v8[4] + v20 * 4 + 4));
        if (v11)
        {
          break;
        }

        v17 = v8[4];
        v21 = &v17[v20];
        v22 = v17[v20 + 2];
        if ((v22 & 7) != 0)
        {
          v15 = "PAC out of allignment";
          goto LABEL_19;
        }

        if (v21[1])
        {
          v15 = "PAC high offset set";
          goto LABEL_19;
        }

        if (a3 < v22)
        {
          v15 = "PAC offset off end";
          goto LABEL_19;
        }

        if (v22 < v16)
        {
          v27 = v17[v20 + 2];
          v28 = v16;
          v15 = "PAC offset inside header: %lu %lu";
          goto LABEL_19;
        }

        if (a3 - v22 < v17[v20])
        {
          v15 = "PAC length off end";
          goto LABEL_19;
        }

        v25 = *(v21 - 1);
        v23 = v21 - 1;
        v24 = v25;
        if (v25 > 6)
        {
          if (v24 == 7)
          {
            if (v8[8])
            {
              v26 = "KDC checksum";
LABEL_62:
              v27 = v26;
              v15 = "PAC have two %s";
              goto LABEL_19;
            }

            v8[8] = v23;
          }

          else
          {
            if (v24 != 10)
            {
LABEL_45:
              sub_25226B748(a1, 5, "krb5_pac_parse: unsupported pac type %d", v24);
              v17 = v8[4];
              goto LABEL_50;
            }

            if (v8[9])
            {
              v26 = "logon names";
              goto LABEL_62;
            }

            v8[9] = v23;
          }
        }

        else if (v24 == 2)
        {
          if (v8[10])
          {
            v26 = "credential info";
            goto LABEL_62;
          }

          v8[10] = v23;
        }

        else
        {
          if (v24 != 6)
          {
            goto LABEL_45;
          }

          if (v8[7])
          {
            v26 = "server checksum";
            goto LABEL_62;
          }

          v8[7] = v23;
        }

LABEL_50:
        ++v19;
        v20 += 4;
        if (v19 >= *v17)
        {
          goto LABEL_51;
        }
      }
    }
  }

  v12 = v11;
  krb5_clear_error_message(a1);
LABEL_6:
  krb5_storage_free(v10);
LABEL_9:
  v13 = v8[4];
  if (v13)
  {
    free(v13);
  }

  free(v8);
  v8 = 0;
LABEL_12:
  *a4 = v8;
  return v12;
}