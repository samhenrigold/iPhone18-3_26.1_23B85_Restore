uint64_t __ApplePrivate_gsskrb5_extract_authtime_from_sec_context(OM_uint32 *minor_status, gss_ctx_id_t_desc_struct *a2, void *a3)
{
  data_set = 0;
  if (!a2)
  {
    v5 = 851968;
    v7 = 22;
LABEL_10:
    *minor_status = v7;
    return v5;
  }

  v5 = gss_inquire_sec_context_by_oid(minor_status, a2, &__gss_krb5_get_authtime_x_oid_desc, &data_set);
  if (!v5)
  {
    if (data_set && data_set->count == 1 && (elements = data_set->elements, elements->length == 4))
    {
      v7 = 0;
      v5 = 0;
      *a3 = *elements->value;
    }

    else
    {
      v5 = 851968;
      v7 = 22;
    }

    gss_release_buffer_set(minor_status, &data_set);
    goto LABEL_10;
  }

  return v5;
}

OM_uint32 gsskrb5_extract_authz_data_from_sec_context(OM_uint32 *minor_status, gss_ctx_id_t context_handle, int ad_type, gss_buffer_t ad_data)
{
  data_set = 0;
  if (!context_handle)
  {
    goto LABEL_3;
  }

  *&desired_object.length = 0;
  if (der_get_oid())
  {
    goto LABEL_3;
  }

  v11 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v19 = v11;
  if (!v11)
  {
    der_free_oid();
    goto LABEL_12;
  }

  v12 = v11;
  der_free_oid();
  *v12 = ad_type;
  desired_object.length = der_length_oid();
  v13 = malloc_type_malloc(desired_object.length, 0xCB60E5BuLL);
  desired_object.elements = v13;
  if (!v13)
  {
    free(v19);
    goto LABEL_12;
  }

  v14 = v13;
  if (der_put_oid())
  {
    free(v19);
    free(v14);
LABEL_3:
    v8 = 851968;
    v9 = 22;
LABEL_4:
    *minor_status = v9;
    return v8;
  }

  if (desired_object.length)
  {
    abort();
  }

  free(v19);
  v8 = gss_inquire_sec_context_by_oid(minor_status, context_handle, &desired_object, &data_set);
  free(desired_object.elements);
  if (!v8)
  {
    if (!data_set || data_set->count != 1)
    {
      gss_release_buffer_set(minor_status, &data_set);
      goto LABEL_3;
    }

    v15 = malloc_type_malloc(data_set->elements->length, 0x1CCD2A26uLL);
    ad_data->value = v15;
    if (v15)
    {
      elements = data_set->elements;
      length = elements->length;
      value = elements->value;
      ad_data->length = elements->length;
      memcpy(v15, value, length);
      gss_release_buffer_set(minor_status, &data_set);
      v9 = 0;
      v8 = 0;
      goto LABEL_4;
    }

    gss_release_buffer_set(minor_status, &data_set);
LABEL_12:
    v8 = 851968;
    v9 = 12;
    goto LABEL_4;
  }

  return v8;
}

uint64_t gsskrb5_extract_key(OM_uint32 *a1, gss_ctx_id_t_desc_struct *a2, gss_OID_desc_struct *a3, krb5_keyblock **a4)
{
  v11 = 0;
  data_set = 0;
  if (!a2)
  {
    goto LABEL_10;
  }

  inited = krb5_init_context(&v11);
  if (inited)
  {
    *a1 = inited;
    return 851968;
  }

  result = gss_inquire_sec_context_by_oid(a1, a2, a3, &data_set);
  if (result)
  {
    return result;
  }

  if (!data_set || data_set->count != 1)
  {
    gss_release_buffer_set(a1, &data_set);
LABEL_10:
    *a1 = 22;
    return 851968;
  }

  if (krb5_storage_from_mem())
  {
    *a4 = malloc_type_calloc(1uLL, 0x18uLL, 0x10800404ACF7207uLL);
    v10 = krb5_ret_keyblock();
    gss_release_buffer_set(a1, &data_set);
    krb5_storage_free();
  }

  else
  {
    gss_release_buffer_set(a1, &data_set);
    v10 = 12;
  }

  if (a4 && v10)
  {
    krb5_free_keyblock(v11, *a4);
    *a4 = 0;
  }

  if (v11)
  {
    heim_release();
  }

  *a1 = v10;
  if (v10)
  {
    return 851968;
  }

  else
  {
    return 0;
  }
}

uint64_t __ApplePrivate_gsskrb5_set_default_realm(const char *a1)
{
  _gss_load_mech();
  v6[1] = a1;
  v6[0] = strlen(a1);
  v2 = _gss_mechs;
  if (_gss_mechs)
  {
    v5 = 0;
    do
    {
      v3 = v2[41];
      if (v3)
      {
        v3(&v5, 0, &__gss_krb5_set_default_realm_x_oid_desc, v6);
      }

      v2 = *v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t __ApplePrivate_gss_krb5_get_tkt_flags(OM_uint32 *minor_status, gss_ctx_id_t_desc_struct *a2, _DWORD *a3)
{
  data_set = 0;
  if (a2)
  {
    result = gss_inquire_sec_context_by_oid(minor_status, a2, &__gss_krb5_get_tkt_flags_x_oid_desc, &data_set);
    if (result)
    {
      return result;
    }

    if (data_set)
    {
      if (data_set->count == 1)
      {
        elements = data_set->elements;
        if (elements->length > 3)
        {
          *a3 = *elements->value;
          gss_release_buffer_set(minor_status, &data_set);
          return 0;
        }
      }
    }

    gss_release_buffer_set(minor_status, &data_set);
  }

  *minor_status = 22;
  return 851968;
}

uint64_t __ApplePrivate_gsskrb5_set_time_offset(uint64_t a1)
{
  v4 = a1;
  _gss_load_mech();
  v6[0] = 4;
  v6[1] = &v4;
  v1 = _gss_mechs;
  if (_gss_mechs)
  {
    v5 = 0;
    do
    {
      v2 = v1[41];
      if (v2)
      {
        v2(&v5, 0, &__gss_krb5_set_time_offset_x_oid_desc, v6);
      }

      v1 = *v1;
    }

    while (v1);
  }

  return 0;
}

uint64_t __ApplePrivate_gsskrb5_get_time_offset(_DWORD *a1)
{
  _gss_load_mech();
  v6[0] = 4;
  v6[1] = &v5;
  v2 = _gss_mechs;
  if (!_gss_mechs)
  {
    return 0x100000;
  }

  v5 = 0;
  while (1)
  {
    v3 = v2[41];
    if (v3)
    {
      result = v3(&v5 + 4, 0, &__gss_krb5_get_time_offset_x_oid_desc, v6);
      if (!result)
      {
        break;
      }
    }

    v2 = *v2;
    if (!v2)
    {
      return 0x100000;
    }
  }

  *a1 = v5;
  return result;
}

uint64_t _gss_load_mech()
{
  v127 = *MEMORY[0x277D85DE8];
  pthread_mutex_lock(&_gss_mech_mutex);
  if (_gss_mechs)
  {

    return pthread_mutex_unlock(&_gss_mech_mutex);
  }

  else
  {
    minor_status = 0;
    if (!gss_create_empty_oid_set(&minor_status, &_gss_mech_oids))
    {
      v1 = __gss_pku2u_initialize();
      add_builtin(v1);
      v2 = __gss_iakerb_initialize();
      add_builtin(v2);
      v3 = __gss_ntlm_initialize();
      add_builtin(v3);
      v4 = __gss_scram_initialize();
      add_builtin(v4);
      v5 = __gss_netlogon_initialize();
      add_builtin(v5);
      v6 = __gss_spnego_initialize();
      add_builtin(v6);
      v7 = __gss_krb5_initialize();
      add_builtin(v7);
      v125 = 0;
      b.elements = 0;
      __stringp = 0;
      *&b.length = 0;
      v122 = 0;
      if (!csops() && (v122 & 0x800) == 0)
      {
        v8 = fopen("/etc/gss/mech", "r");
        if (v8)
        {
          v9 = v8;
          rk_cloexec_file();
          if (fgets(v126, 256, v9))
          {
            v10 = MEMORY[0x277D85DE0];
            v120 = v9;
            do
            {
              if (v126[0] != 35)
              {
                __stringp = v126;
                v11 = strsep(&__stringp, "\t\n ");
                if (__stringp)
                {
                  for (i = __stringp + 1; ; ++i)
                  {
                    v13 = *(i - 1);
                    if (v13 < 0)
                    {
                      if (!__maskrune(*(i - 1), 0x4000uLL))
                      {
                        break;
                      }
                    }

                    else if ((*(v10 + 4 * v13 + 60) & 0x4000) == 0)
                    {
                      break;
                    }

                    __stringp = i;
                  }
                }

                v14 = strsep(&__stringp, "\t\n ");
                if (__stringp)
                {
                  for (j = __stringp + 1; ; ++j)
                  {
                    v16 = *(j - 1);
                    if (v16 < 0)
                    {
                      if (!__maskrune(*(j - 1), 0x4000uLL))
                      {
                        break;
                      }
                    }

                    else if ((*(v10 + 4 * v16 + 60) & 0x4000) == 0)
                    {
                      break;
                    }

                    __stringp = j;
                  }
                }

                v17 = strsep(&__stringp, "\t\n ");
                if (__stringp)
                {
                  for (k = __stringp + 1; ; ++k)
                  {
                    v19 = *(k - 1);
                    if (v19 < 0)
                    {
                      if (!__maskrune(*(k - 1), 0x4000uLL))
                      {
                        break;
                      }
                    }

                    else if ((*(v10 + 4 * v19 + 60) & 0x4000) == 0)
                    {
                      break;
                    }

                    __stringp = k;
                  }
                }

                v20 = strsep(&__stringp, "\t\n ");
                if (v11)
                {
                  if (v14)
                  {
                    if (v17)
                    {
                      if (v20)
                      {
                        b.length = 0;
                        b.elements = 0;
                        v21 = 1;
                        v22 = v14;
                        do
                        {
                          v23 = strchr(v22, 46);
                          v22 = v23 + 1;
                          --v21;
                        }

                        while (v23);
                        if (v21)
                        {
                          v24 = 0;
                          v25 = 1;
                          do
                          {
                            v26 = 0;
                            v27 = 0;
                            v28 = v25;
                            v29 = v14;
                            do
                            {
                              v30 = v29;
                              v31 = strchr(v29, 46);
                              v32 = 0;
                              v29 = v31 + 1;
                              while (1)
                              {
                                v33 = *v30;
                                if (!*v30 || v33 == 46)
                                {
                                  break;
                                }

                                v32 = v33 + 10 * v32 - 48;
                                ++v30;
                              }

                              if (v27)
                              {
                                if (v27 == 1)
                                {
                                  if (v24)
                                  {
                                    *v24++ += v32;
                                  }

                                  ++v26;
                                }

                                else
                                {
                                  v34 = 0;
                                  if (v32)
                                  {
                                    v35 = v32;
                                    do
                                    {
                                      ++v34;
                                      v36 = v35 > 0x7F;
                                      v35 >>= 7;
                                    }

                                    while (v36);
                                  }

                                  if (v34 <= 1)
                                  {
                                    v34 = 1;
                                  }

                                  v37 = 7 * v34 - 7;
                                  do
                                  {
                                    if (v24)
                                    {
                                      *v24++ = (v32 >> v37) & 0x7F | ((v37 != 0) << 7);
                                    }

                                    v37 -= 7;
                                  }

                                  while (v37 != -7);
                                  v26 += v34 - 1 + 1;
                                }
                              }

                              else if (v24)
                              {
                                *v24 = 40 * v32;
                              }

                              ++v27;
                            }

                            while (v31);
                            if (!v26)
                            {
                              goto LABEL_12;
                            }

                            if (!v24)
                            {
                              v38 = malloc_type_malloc(v26, 0x4D31BDA0uLL);
                              if (!v38)
                              {
                                goto LABEL_12;
                              }

                              v24 = v38;
                              b.length = v26;
                              b.elements = v38;
                            }

                            v25 = 0;
                          }

                          while ((v28 & 1) != 0);
                          v39 = &_gss_mechs;
                          while (1)
                          {
                            v39 = *v39;
                            if (!v39)
                            {
                              break;
                            }

                            if (gss_oid_equal((v39 + 7), &b))
                            {
                              free(b.elements);
                              goto LABEL_12;
                            }
                          }

                          v40 = dlopen(v17, 5);
                          if (!v40)
                          {
                            goto LABEL_196;
                          }

                          v41 = malloc_type_calloc(1uLL, 0x228uLL, 0x10F00406CEBB635uLL);
                          if (!v41)
                          {
                            goto LABEL_196;
                          }

                          v42 = v41;
                          *(v41 + 4) = v40;
                          *(v41 + 8) = b;
                          *(v41 + 6) = strdup(v11);
                          *(v42 + 7) = b;
                          *(v42 + 18) = 0;
                          v43 = malloc_type_calloc(1uLL, 0x20uLL, 0x8004018A671A6uLL);
                          v42[67] = v43;
                          if (!v43 || gss_add_oid_set_member(&v125, (v42 + 7), &_gss_mech_oids) >> 16)
                          {
                            goto LABEL_195;
                          }

                          v44 = dlsym(v40, "gss_acquire_cred");
                          v42[10] = v44;
                          if (!v44 || v44 == gss_acquire_cred)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_acquire_cred\n";
                            goto LABEL_193;
                          }

                          v45 = dlsym(v40, "gss_release_cred");
                          v42[11] = v45;
                          if (!v45 || v45 == gss_release_cred)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_release_cred\n";
                            goto LABEL_193;
                          }

                          v46 = dlsym(v40, "gss_init_sec_context");
                          v42[12] = v46;
                          if (!v46 || v46 == gss_init_sec_context)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_init_sec_context\n";
                            v110 = 39;
                            goto LABEL_194;
                          }

                          v47 = dlsym(v40, "gss_accept_sec_context");
                          v42[13] = v47;
                          if (!v47 || v47 == gss_accept_sec_context)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_accept_sec_context\n";
                            goto LABEL_199;
                          }

                          v48 = dlsym(v40, "gss_process_context_token");
                          v42[14] = v48;
                          if (!v48 || v48 == gss_process_context_token)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_process_context_token\n";
                            v110 = 44;
                            goto LABEL_194;
                          }

                          v49 = dlsym(v40, "gss_delete_sec_context");
                          v42[15] = v49;
                          if (!v49 || v49 == gss_delete_sec_context)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_delete_sec_context\n";
LABEL_199:
                            v110 = 41;
                            goto LABEL_194;
                          }

                          v50 = dlsym(v40, "gss_context_time");
                          v42[16] = v50;
                          if (!v50 || v50 == gss_context_time)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_context_time\n";
LABEL_193:
                            v110 = 35;
                            goto LABEL_194;
                          }

                          v51 = dlsym(v40, "gss_get_mic");
                          v42[17] = v51;
                          if (!v51 || v51 == gss_get_mic)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_get_mic\n";
                            v110 = 30;
                            goto LABEL_194;
                          }

                          v52 = dlsym(v40, "gss_verify_mic");
                          v42[18] = v52;
                          if (!v52 || v52 == gss_verify_mic)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_verify_mic\n";
                            v110 = 33;
                            goto LABEL_194;
                          }

                          v53 = dlsym(v40, "gss_wrap");
                          v42[19] = v53;
                          if (!v53 || v53 == gss_wrap)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_wrap\n";
                            v110 = 27;
                            goto LABEL_194;
                          }

                          v54 = dlsym(v40, "gss_unwrap");
                          v42[20] = v54;
                          if (!v54 || v54 == gss_unwrap)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_unwrap\n";
                            v110 = 29;
                            goto LABEL_194;
                          }

                          v55 = dlsym(v40, "gss_display_status");
                          v42[21] = v55;
                          if (!v55 || v55 == gss_display_status)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_display_status\n";
                            goto LABEL_209;
                          }

                          v56 = dlsym(v40, "gss_indicate_mechs");
                          v42[22] = v56;
                          if (!v56 || v56 == gss_indicate_mechs)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_indicate_mechs\n";
                            goto LABEL_209;
                          }

                          v57 = dlsym(v40, "gss_compare_name");
                          v42[23] = v57;
                          if (!v57 || v57 == gss_compare_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_compare_name\n";
                            goto LABEL_193;
                          }

                          v58 = dlsym(v40, "gss_display_name");
                          v42[24] = v58;
                          if (!v58 || v58 == gss_display_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_display_name\n";
                            goto LABEL_193;
                          }

                          v59 = dlsym(v40, "gss_import_name");
                          v42[25] = v59;
                          if (!v59 || v59 == gss_import_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_import_name\n";
LABEL_214:
                            v110 = 34;
                            goto LABEL_194;
                          }

                          v60 = dlsym(v40, "gss_export_name");
                          v42[26] = v60;
                          if (!v60 || v60 == gss_export_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_export_name\n";
                            goto LABEL_214;
                          }

                          v61 = dlsym(v40, "gss_release_name");
                          v42[27] = v61;
                          if (!v61 || v61 == gss_release_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_release_name\n";
                            goto LABEL_193;
                          }

                          v62 = dlsym(v40, "gss_inquire_cred");
                          v42[28] = v62;
                          if (!v62 || v62 == gss_inquire_cred)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_inquire_cred\n";
                            goto LABEL_193;
                          }

                          v63 = dlsym(v40, "gss_inquire_context");
                          v42[29] = v63;
                          if (!v63 || v63 == gss_inquire_context)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_inquire_context\n";
                            goto LABEL_219;
                          }

                          v64 = dlsym(v40, "gss_wrap_size_limit");
                          v42[30] = v64;
                          if (!v64 || v64 == gss_wrap_size_limit)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_wrap_size_limit\n";
LABEL_219:
                            v110 = 38;
LABEL_194:
                            fwrite(v109, v110, 1uLL, v108);
LABEL_195:
                            free(v42[67]);
                            free(v42[8]);
                            free(v42[6]);
                            free(v42);
LABEL_196:
                            dlclose(v40);
                            goto LABEL_12;
                          }

                          v65 = dlsym(v40, "gss_add_cred");
                          v42[31] = v65;
                          if (!v65 || v65 == gss_add_cred)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_add_cred\n";
                            v110 = 31;
                            goto LABEL_194;
                          }

                          v66 = dlsym(v40, "gss_inquire_cred_by_mech");
                          v42[32] = v66;
                          if (!v66 || v66 == gss_inquire_cred_by_mech)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_inquire_cred_by_mech\n";
                            v110 = 43;
                            goto LABEL_194;
                          }

                          v67 = dlsym(v40, "gss_export_sec_context");
                          v42[33] = v67;
                          if (!v67 || v67 == gss_export_sec_context)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_export_sec_context\n";
                            goto LABEL_199;
                          }

                          v68 = dlsym(v40, "gss_import_sec_context");
                          v42[34] = v68;
                          if (!v68 || v68 == gss_import_sec_context)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_import_sec_context\n";
                            goto LABEL_199;
                          }

                          v69 = dlsym(v40, "gss_inquire_names_for_mech");
                          v42[35] = v69;
                          if (!v69 || v69 == gss_inquire_names_for_mech)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_inquire_names_for_mech\n";
                            goto LABEL_226;
                          }

                          v70 = dlsym(v40, "gss_inquire_mechs_for_name");
                          v42[36] = v70;
                          if (!v70 || v70 == gss_inquire_mechs_for_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_inquire_mechs_for_name\n";
LABEL_226:
                            v110 = 45;
                            goto LABEL_194;
                          }

                          v71 = dlsym(v40, "gss_canonicalize_name");
                          v42[37] = v71;
                          if (!v71 || v71 == gss_canonicalize_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_canonicalize_name\n";
                            v110 = 40;
                            goto LABEL_194;
                          }

                          v72 = dlsym(v40, "gss_duplicate_name");
                          v42[38] = v72;
                          if (!v72 || v72 == gss_duplicate_name)
                          {
                            v108 = *MEMORY[0x277D85DF8];
                            v109 = "can't find symbol gss_duplicate_name\n";
LABEL_209:
                            v110 = 37;
                            goto LABEL_194;
                          }

                          v73 = dlsym(v40, "gss_inquire_cred_by_oid");
                          if (v73 == gss_inquire_cred_by_oid)
                          {
                            v74 = 0;
                          }

                          else
                          {
                            v74 = v73;
                          }

                          v42[40] = v74;
                          v75 = dlsym(v40, "gss_inquire_sec_context_by_oid");
                          if (v75 == gss_inquire_sec_context_by_oid)
                          {
                            v76 = 0;
                          }

                          else
                          {
                            v76 = v75;
                          }

                          v42[39] = v76;
                          v77 = dlsym(v40, "gss_set_sec_context_option");
                          if (v77 == gss_set_sec_context_option)
                          {
                            v78 = 0;
                          }

                          else
                          {
                            v78 = v77;
                          }

                          v42[41] = v78;
                          v42[42] = dlsym(v40, "gssspi_set_cred_option");
                          v79 = dlsym(v40, "gss_pseudo_random");
                          if (v79 == gss_pseudo_random)
                          {
                            v80 = 0;
                          }

                          else
                          {
                            v80 = v79;
                          }

                          v42[43] = v80;
                          v81 = dlsym(v40, "gss_wrap_iov");
                          if (v81 == __ApplePrivate_gss_wrap_iov)
                          {
                            v82 = 0;
                          }

                          else
                          {
                            v82 = v81;
                          }

                          v42[44] = v82;
                          v83 = dlsym(v40, "gss_unwrap_iov");
                          if (v83 == __ApplePrivate_gss_unwrap_iov)
                          {
                            v84 = 0;
                          }

                          else
                          {
                            v84 = v83;
                          }

                          v42[45] = v84;
                          v85 = dlsym(v40, "gss_wrap_iov_length");
                          if (v85 == __ApplePrivate_gss_wrap_iov_length)
                          {
                            v86 = 0;
                          }

                          else
                          {
                            v86 = v85;
                          }

                          v42[46] = v86;
                          v87 = dlsym(v40, "gss_store_cred");
                          if (v87 == gss_store_cred)
                          {
                            v88 = 0;
                          }

                          else
                          {
                            v88 = v87;
                          }

                          v42[47] = v88;
                          v89 = dlsym(v40, "gss_export_cred");
                          if (v89 == gss_export_cred)
                          {
                            v90 = 0;
                          }

                          else
                          {
                            v90 = v89;
                          }

                          v42[48] = v90;
                          v91 = dlsym(v40, "gss_import_cred");
                          if (v91 == gss_import_cred)
                          {
                            v92 = 0;
                          }

                          else
                          {
                            v92 = v91;
                          }

                          v42[49] = v92;
                          v93 = dlsym(v40, "gss_display_name_ext");
                          if (v93 == gss_display_name_ext)
                          {
                            v94 = 0;
                          }

                          else
                          {
                            v94 = v93;
                          }

                          v42[61] = v94;
                          v95 = dlsym(v40, "gss_inquire_name");
                          if (v95 == gss_inquire_name)
                          {
                            v96 = 0;
                          }

                          else
                          {
                            v96 = v95;
                          }

                          v42[62] = v96;
                          v97 = dlsym(v40, "gss_get_name_attribute");
                          if (v97 == gss_get_name_attribute)
                          {
                            v98 = 0;
                          }

                          else
                          {
                            v98 = v97;
                          }

                          v42[63] = v98;
                          v99 = dlsym(v40, "gss_set_name_attribute");
                          if (v99 == gss_set_name_attribute)
                          {
                            v100 = 0;
                          }

                          else
                          {
                            v100 = v99;
                          }

                          v42[64] = v100;
                          v101 = dlsym(v40, "gss_delete_name_attribute");
                          if (v101 == gss_delete_name_attribute)
                          {
                            v102 = 0;
                          }

                          else
                          {
                            v102 = v101;
                          }

                          v42[65] = v102;
                          v103 = dlsym(v40, "gss_export_name_composite");
                          if (v103 == gss_export_name_composite)
                          {
                            v104 = 0;
                          }

                          else
                          {
                            v104 = v103;
                          }

                          v42[66] = v104;
                          v105 = dlsym(v40, "gss_pname_to_uid");
                          if (v105 == gss_pname_to_uid)
                          {
                            v106 = 0;
                          }

                          else
                          {
                            v106 = v105;
                          }

                          v42[59] = v106;
                          v42[60] = dlsym(v40, "gssspi_authorize_localname");
                          v107 = dlsym(v40, "gss_mo_init");
                          if (v107)
                          {
                            if ((v107)(&v125, &b, v42 + 57, v42 + 58) >= 0x10000)
                            {
                              goto LABEL_195;
                            }
                          }

                          else
                          {
                            v111 = dlsym(v40, "gss_inquire_saslname_for_mech");
                            if (v111 == gss_inquire_saslname_for_mech)
                            {
                              v112 = 0;
                            }

                            else
                            {
                              v112 = v111;
                            }

                            *v42[67] = v112;
                            v113 = dlsym(v40, "gss_inquire_mech_for_saslname");
                            if (v113 == gss_inquire_mech_for_saslname)
                            {
                              v114 = 0;
                            }

                            else
                            {
                              v114 = v113;
                            }

                            *(v42[67] + 8) = v114;
                            v115 = dlsym(v40, "gss_inquire_attrs_for_mech");
                            if (v115 == gss_inquire_attrs_for_mech)
                            {
                              v116 = 0;
                            }

                            else
                            {
                              v116 = v115;
                            }

                            *(v42[67] + 16) = v116;
                            v117 = dlsym(v40, "gssspi_acquire_cred_with_password");
                            if (v117 == gss_acquire_cred_with_password)
                            {
                              v118 = 0;
                            }

                            else
                            {
                              v118 = v117;
                            }

                            *(v42[67] + 24) = v118;
                          }

                          v119 = v42[35];
                          if (v119)
                          {
                            v119(&v125, v42 + 7, v42 + 3);
                          }

                          if (!v42[3])
                          {
                            gss_create_empty_oid_set(&v125, v42 + 3);
                          }

                          *v42 = _gss_mechs;
                          _gss_mechs = v42;
                        }
                      }
                    }
                  }
                }
              }

LABEL_12:
              v9 = v120;
            }

            while (fgets(v126, 256, v120));
          }

          fclose(v9);
        }
      }
    }

    return pthread_mutex_unlock(&_gss_mech_mutex);
  }
}

uint64_t add_builtin(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = malloc_type_calloc(1uLL, 0x228uLL, 0x10F00406CEBB635uLL);
    if (result)
    {
      v2 = result;
      minor_status = 0;
      *(result + 32) = 0;
      memcpy((result + 40), v1, 0x200uLL);
      *(v2 + 8) = v1[1];
      result = gss_add_oid_set_member(&minor_status, (v2 + 56), &_gss_mech_oids);
      v3 = *(v2 + 280);
      if (v3)
      {
        result = v3(&minor_status, v2 + 56, v2 + 24);
      }

      if (!*(v2 + 24))
      {
        gss_create_empty_oid_set(&minor_status, (v2 + 24));
        gss_add_oid_set_member(&minor_status, &__gss_c_nt_user_name_oid_desc, (v2 + 24));
        result = gss_add_oid_set_member(&minor_status, &__gss_c_nt_hostbased_service_oid_desc, (v2 + 24));
      }

      *v2 = _gss_mechs;
      _gss_mechs = v2;
    }
  }

  return result;
}

uint64_t *__gss_get_mechanism(const gss_OID_desc *a1)
{
  _gss_load_mech();
  v2 = &_gss_mechs;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (gss_oid_equal((v2 + 7), a1))
    {
      return v2 + 5;
    }
  }

  return 0;
}

uint64_t *_gss_mg_support_mechanism(const gss_OID_desc *a1)
{
  _gss_load_mech();
  v2 = &_gss_mechs;
  while (1)
  {
    v2 = *v2;
    if (!v2)
    {
      break;
    }

    if (gss_oid_equal((v2 + 7), a1))
    {
      return v2 + 1;
    }
  }

  return 0;
}

uint64_t *_gss_mg_get_underlaying_mech_name(uint64_t a1, gss_const_OID a)
{
  v3 = (a1 + 48);
  while (1)
  {
    v3 = *v3;
    if (!v3)
    {
      break;
    }

    if (gss_oid_equal(a, v3[2]))
    {
      return v3[3];
    }
  }

  return 0;
}

uint64_t _gss_find_mn(unsigned int *a1, uint64_t a2, gss_const_OID a, gss_OID_desc **a4)
{
  v4 = a2;
  *a4 = 0;
  if (a2)
  {
    v8 = (a2 + 48);
    v9 = (a2 + 48);
    while (1)
    {
      v9 = *&v9->length;
      if (!v9)
      {
        break;
      }

      if (gss_oid_equal(a, *&v9[1].length))
      {
        goto LABEL_5;
      }
    }

    if (*(v4 + 40))
    {
      mechanism = __gss_get_mechanism(a);
      if (mechanism)
      {
        v11 = mechanism;
        v12 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
        if (v12)
        {
          v9 = v12;
          if (*(v4 + 24))
          {
            v13 = v4 + 16;
          }

          else
          {
            v13 = 0;
          }

          v14 = (v11[20])(a1, v4 + 32, v13, &v12[1].elements);
          if (!v14)
          {
            *&v9[1].length = v11 + 2;
            *&v9->length = *v8;
            v9->elements = v11;
            *v8 = v9;
LABEL_5:
            v4 = 0;
            *a4 = v9;
            return v4;
          }

          v4 = v14;
          _gss_mg_error(v11, *a1);
          free(v9);
        }

        else
        {
          return 851968;
        }
      }

      else
      {
        return 0x10000;
      }
    }

    else
    {
      return 0x20000;
    }
  }

  return v4;
}

void *_gss_create_name(uint64_t a1, uint64_t a2)
{
  if (getTypeID_inited != -1)
  {
    _gss_create_name_cold_1();
  }

  if (!getTypeID_haid)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance();
  v5 = Instance;
  if (Instance)
  {
    *(Instance + 48) = 0;
    if (a1)
    {
      v6 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
      if (v6)
      {
        v6[2] = a2 + 16;
        v6[3] = a1;
        *v6 = v5[6];
        v6[1] = a2;
        v5[6] = v6;
        return v5;
      }

      CFRelease(v5);
      return 0;
    }
  }

  return v5;
}

uint64_t _gss_mg_release_name(gss_buffer_desc_struct *a1)
{
  minor_status = 0;
  _gss_free_oid(&minor_status, &a1[1]);
  while (1)
  {
    length = a1[3].length;
    if (!length)
    {
      break;
    }

    v3 = length[1];
    a1[3].length = *length;
    (*(v3 + 176))(&minor_status, length + 3);
    free(length);
  }

  return gss_release_buffer(&minor_status, a1 + 2);
}

void _gss_mg_check_name(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (getTypeID_inited != -1)
    {
      _gss_create_name_cold_1();
    }

    if (v1 != getTypeID_haid)
    {
      _gss_mg_check_name_cold_2();
      _gss_mech_import_name(v2, v3, v4, v5, v6, v7);
    }
  }
}

uint64_t _gss_mech_import_name(_DWORD *a1, const void **a2, uint64_t a3, unint64_t *a4, gss_const_OID a, void *a6)
{
  *a1 = 0;
  if (!a6)
  {
    return 0x2000000;
  }

  v19 = 0;
  v20 = 0;
  *a6 = 0;
  if (gss_oid_equal(a, &__gss_c_nt_export_name_oid_desc))
  {
    v12 = *a4;
    v13 = *a2;
    if (*a4 < (v13 + 10))
    {
      return 0x20000;
    }

    v14 = a4[1];
    if (*v14 ^ 0x104 | v14[2])
    {
      return 0x20000;
    }

    if (v13 + 2 != v14[3])
    {
      return 0x20000;
    }

    if (__PAIR64__(v13, 6) != __PAIR64__(v14[5], v14[4]))
    {
      return 0x20000;
    }

    if (memcmp(v14 + 6, a2[1], *a2))
    {
      return 0x20000;
    }

    v15 = bswap32(*&v14[v13 + 6]);
    if (v15 > v12 - v13 - 10)
    {
      return 0x20000;
    }

    v19 = v15;
    v20 = &v14[v13 + 10];
    a4 = &v19;
  }

  if (!*(a3 + 8))
  {
    return 196608;
  }

  for (i = a3 + 8; !gss_oid_equal(a, *(i - 8)) && a | *(i - 8); i += 16)
  {
    if (!*(i + 16))
    {
      return 196608;
    }
  }

  return (*i)(a1, a2, a4, a, a6);
}

uint64_t _gss_mech_inquire_names_for_mech(OM_uint32 *a1, uint64_t a2, gss_OID_set *oid_set)
{
  result = gss_create_empty_oid_set(a1, oid_set);
  if (!result)
  {
    if (*(a2 + 8))
    {
      while (!*a2 || !gss_add_oid_set_member(a1, *a2, oid_set))
      {
        v7 = *(a2 + 24);
        a2 += 16;
        if (!v7)
        {
          return 0;
        }
      }

      minor_status = 0;
      gss_release_oid_set(&minor_status, oid_set);
    }

    return 0;
  }

  return result;
}

uint64_t __getTypeID_block_invoke()
{
  result = _CFRuntimeRegisterClass();
  getTypeID_haid = result;
  return result;
}

CFStringRef _gss_mg_copy_format_string(gss_name_t input_name)
{
  output_name_buffer.length = 0;
  output_name_buffer.value = 0;
  minor_status = 0;
  v1 = 0;
  if (!gss_display_name(&minor_status, input_name, &output_name_buffer, 0))
  {
    v1 = CFStringCreateWithFormat(0, 0, @"%.*s", output_name_buffer.length, output_name_buffer.value);
    gss_release_buffer(&minor_status, &output_name_buffer);
  }

  return v1;
}

__CFString *_gss_mg_copy_debug_name(gss_name_t_desc_struct *a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"GSSName: %p", a1);
    v4 = _gss_mg_copy_format_string(a1);
    if (v4)
    {
      v5 = v4;
      CFStringAppend(v3, v4);
      CFRelease(v5);
    }
  }

  return v3;
}

int gss_oid_equal(gss_const_OID a, gss_const_OID b)
{
  if (a && a == b)
  {
    return 1;
  }

  v2 = 0;
  if (a && b)
  {
    length = a->length;
    return length == b->length && memcmp(a->elements, b->elements, length) == 0;
  }

  return v2;
}

OM_uint32 gss_oid_to_str(OM_uint32 *minor_status, gss_OID oid, gss_buffer_t oid_str)
{
  if (oid_str)
  {
    oid_str->length = 0;
    oid_str->value = 0;
  }

  if (!oid)
  {
    return 851968;
  }

  v5 = der_get_oid();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = der_print_heim_oid();
    der_free_oid();
    if (!v6)
    {
      oid_str->value = 0;
      v8 = strlen(0);
      result = 0;
      oid_str->length = v8;
      goto LABEL_9;
    }
  }

  result = 851968;
LABEL_9:
  *minor_status = v6;
  return result;
}

uint64_t __ApplePrivate_gss_oid_to_name(const gss_OID_desc *a1)
{
  if (!_gss_ont_mech)
  {
    return 0;
  }

  v2 = &_gss_ont_mech;
  if (gss_oid_equal(a1, _gss_ont_mech))
  {
LABEL_3:
    result = v2[2];
    if (!result)
    {
      return v2[1];
    }
  }

  else
  {
    while (1)
    {
      v4 = v2[4];
      if (!v4)
      {
        return 0;
      }

      v2 += 4;
      if (gss_oid_equal(a1, v4))
      {
        goto LABEL_3;
      }
    }
  }

  return result;
}

uint64_t __ApplePrivate_gss_name_to_oid(const char *a1)
{
  v1 = _gss_ont_mech;
  if (_gss_ont_mech)
  {
    v3 = off_27DF41958[0];
    if (strcasecmp(a1, off_27DF41958[0]))
    {
      v4 = off_27DF41978;
      v5 = strlen(a1);
      v6 = 0;
      v7 = -1;
      while (1)
      {
        if (!strncasecmp(a1, v3, v5))
        {
          v8 = v7 == -1;
          v7 = v6;
          if (!v8)
          {
            break;
          }
        }

        v1 = *(v4 - 2);
        if (!v1)
        {
          if (v7 != -1)
          {
            return *(&_gss_ont_mech + 4 * v7);
          }

          return 0;
        }

        v9 = *v4;
        v4 += 4;
        v3 = v9;
        ++v6;
        if (!strcasecmp(a1, v9))
        {
          return v1;
        }
      }

      return 0;
    }
  }

  return v1;
}

OM_uint32 gss_pseudo_random(OM_uint32 *minor_status, gss_ctx_id_t context, int prf_key, gss_buffer_t prf_in, ssize_t desired_output_len, gss_buffer_t prf_out)
{
  if (prf_out)
  {
    prf_out->length = 0;
    prf_out->value = 0;
  }

  *minor_status = 0;
  if (!context)
  {
    return 0x80000;
  }

  v7 = *context;
  v8 = *(*context + 304);
  if (!v8)
  {
    return 0x100000;
  }

  v9 = v8(minor_status, *(context + 1), *&prf_key, prf_in, desired_output_len);
  if (v9)
  {
    _gss_mg_error(v7, *minor_status);
  }

  return v9;
}

OM_uint32 gss_release_buffer(OM_uint32 *minor_status, gss_buffer_t buffer)
{
  *minor_status = 0;
  value = buffer->value;
  if (value)
  {
    free(value);
  }

  buffer->length = 0;
  buffer->value = 0;
  return 0;
}

OM_uint32 gss_release_cred(OM_uint32 *minor_status, gss_cred_id_t *cred_handle)
{
  if (*cred_handle)
  {
    CFRelease(*cred_handle);
    *minor_status = 0;
    *cred_handle = 0;
  }

  return 0;
}

OM_uint32 gss_release_name(OM_uint32 *minor_status, gss_name_t *input_name)
{
  *minor_status = 0;
  if (input_name)
  {
    v2 = *input_name;
    if (*input_name)
    {
      *input_name = 0;
      CFRelease(v2);
    }
  }

  return 0;
}

OM_uint32 gss_release_oid_set(OM_uint32 *minor_status, gss_OID_set *set)
{
  *minor_status = 0;
  if (set)
  {
    v3 = *set;
    if (*set)
    {
      if (v3->elements)
      {
        free(v3->elements);
        v3 = *set;
      }

      free(v3);
      *set = 0;
    }
  }

  return 0;
}

OM_uint32 gss_release_oid(OM_uint32 *minor_status, gss_OID *oid)
{
  v2 = *oid;
  *oid = 0;
  if (minor_status)
  {
    *minor_status = 0;
  }

  if (v2)
  {
    v3 = _gss_ont_mech;
    if (_gss_ont_mech)
    {
      v4 = &off_27DF41968;
      while (v3 != v2)
      {
        v5 = *v4;
        v4 += 4;
        v3 = v5;
        if (!v5)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      v6 = _gss_ont_ma;
      if (_gss_ont_ma)
      {
        v7 = &off_27DF41588;
        while (v6 != v2)
        {
          v8 = *v7;
          v7 += 4;
          v6 = v8;
          if (!v8)
          {
            goto LABEL_12;
          }
        }
      }

      else
      {
LABEL_12:
        v9 = &_gss_mechs;
        while (1)
        {
          v9 = *v9;
          if (!v9)
          {
            break;
          }

          if (v9 + 7 == v2)
          {
            return 0;
          }
        }

        elements = v2->elements;
        if (elements)
        {
          free(elements);
        }

        free(v2);
      }
    }
  }

  return 0;
}

OM_uint32 gss_set_cred_option(OM_uint32 *minor_status, gss_cred_id_t *cred_handle, gss_OID object, gss_buffer_t value)
{
  v8 = *cred_handle;
  *minor_status = 0;
  _gss_load_mech();
  if (v8)
  {
    v9 = *(v8 + 2);
    if (!v9)
    {
      return 0;
    }

    v10 = 1;
LABEL_4:
    v11 = 0;
    do
    {
      v12 = v9[1];
      if (!v12)
      {
        return 0x10000;
      }

      v13 = v12[18].value;
      if (v13)
      {
        v14 = v13(minor_status, v9 + 3, object, value);
        if (!v14)
        {
          v10 = 0;
          v9 = *v9;
          if (v9)
          {
            goto LABEL_4;
          }

          goto LABEL_32;
        }

        v11 = v14;
        _gss_mg_error(v12, *minor_status);
      }

      v9 = *v9;
    }

    while (v9);
    if ((v10 & 1) == 0)
    {
      goto LABEL_32;
    }

    return v11;
  }

  v15 = _gss_mg_alloc_cred();
  if (!v15)
  {
    return 851968;
  }

  v16 = v15;
  v17 = _gss_mechs;
  if (!_gss_mechs)
  {
    v11 = 0;
    *cred_handle = v15;
LABEL_31:
    minor_statusa = 0;
    gss_release_cred(&minor_statusa, cred_handle);
    return v11;
  }

  v18 = 1;
LABEL_16:
  v11 = 0;
  while (1)
  {
    if (!v17[42])
    {
      goto LABEL_21;
    }

    v19 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
    if (!v19)
    {
      break;
    }

    v20 = v19;
    v19[3] = 0;
    v19[1] = v17 + 5;
    v19[2] = v17 + 1;
    v21 = (v17[42])(minor_status);
    if (!v21)
    {
      v18 = 0;
      *v20 = *(v16 + 2);
      *(v16 + 2) = v20;
      v17 = *v17;
      if (v17)
      {
        goto LABEL_16;
      }

      *cred_handle = v16;
LABEL_32:
      v11 = 0;
      *minor_status = 0;
      return v11;
    }

    v11 = v21;
    free(v20);
LABEL_21:
    v17 = *v17;
    if (!v17)
    {
      *cred_handle = v16;
      if (v18)
      {
        goto LABEL_31;
      }

      goto LABEL_32;
    }
  }

  *cred_handle = v16;
  gss_release_cred(minor_status, cred_handle);
  *minor_status = 12;
  return 851968;
}

OM_uint32 gss_set_sec_context_option(OM_uint32 *minor_status, gss_ctx_id_t *context_handle, gss_OID object, gss_buffer_t value)
{
  *minor_status = 0;
  if (!context_handle)
  {
    return 0x80000;
  }

  v4 = *context_handle;
  if (!*context_handle)
  {
    return 0x80000;
  }

  v5 = *v4;
  if (!*v4)
  {
    return 0x10000;
  }

  length = v5[18].length;
  if (!length)
  {
    return 0x10000;
  }

  v8 = length();
  if (v8)
  {
    _gss_mg_error(v5, *minor_status);
  }

  return v8;
}

OM_uint32 gss_test_oid_set_member(OM_uint32 *minor_status, gss_const_OID member, gss_OID_set set, int *present)
{
  *present = 0;
  if (set->count)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      if (gss_oid_equal(member, &set->elements[v8]))
      {
        *present = 1;
      }

      ++v9;
      ++v8;
    }

    while (v9 < set->count);
  }

  *minor_status = 0;
  return 0;
}

OM_uint32 gss_unwrap(OM_uint32 *minor_status, gss_ctx_id_t context_handle, gss_buffer_t input_message_buffer, gss_buffer_t output_message_buffer, int *conf_state, gss_qop_t *qop_state)
{
  if (conf_state)
  {
    *conf_state = 0;
  }

  if (qop_state)
  {
    *qop_state = 0;
  }

  if (context_handle)
  {
    return (*(*context_handle + 120))(minor_status, *(context_handle + 1), input_message_buffer, output_message_buffer);
  }

  *minor_status = 0;
  return 0x80000;
}

uint64_t _gss_copy_oid(_DWORD *a1, const void **a2, uint64_t a3)
{
  v6 = *a2;
  *a1 = 0;
  v7 = malloc_type_malloc(v6, 0x12557C16uLL);
  *(a3 + 8) = v7;
  if (v7)
  {
    *a3 = v6;
    memcpy(v7, a2[1], v6);
    return 0;
  }

  else
  {
    *a3 = 0;
    *a1 = 12;
    return 851968;
  }
}

uint64_t _gss_free_oid(_DWORD *a1, uint64_t a2)
{
  *a1 = 0;
  v2 = *(a2 + 8);
  if (v2)
  {
    free(v2);
    *(a2 + 8) = 0;
    *a2 = 0;
  }

  return 0;
}

uint64_t _gss_copy_buffer(_DWORD *a1, uint64_t a2, size_t *a3)
{
  v6 = *a2;
  *a1 = 0;
  v7 = malloc_type_malloc(v6, 0x48FB8883uLL);
  a3[1] = v7;
  if (v7)
  {
    *a3 = v6;
    memcpy(v7, *(a2 + 8), v6);
    return 0;
  }

  else
  {
    *a1 = 12;
    *a3 = 0;
    return 851968;
  }
}

OM_uint32 gss_verify_mic(OM_uint32 *minor_status, gss_ctx_id_t context_handle, gss_buffer_t message_buffer, gss_buffer_t token_buffer, gss_qop_t *qop_state)
{
  if (qop_state)
  {
    *qop_state = 0;
  }

  if (context_handle)
  {
    return (*(*context_handle + 104))(minor_status, *(context_handle + 1), message_buffer, token_buffer);
  }

  *minor_status = 0;
  return 0x80000;
}

OM_uint32 gss_wrap_size_limit(OM_uint32 *minor_status, gss_ctx_id_t context_handle, int conf_req_flag, gss_qop_t qop_req, OM_uint32 req_output_size, OM_uint32 *max_input_size)
{
  *max_input_size = 0;
  if (context_handle)
  {
    return (*(*context_handle + 200))(minor_status, *(context_handle + 1), *&conf_req_flag, *&qop_req, *&req_output_size);
  }

  *minor_status = 0;
  return 0x80000;
}

OM_uint32 gss_wrap(OM_uint32 *minor_status, gss_ctx_id_t context_handle, int conf_req_flag, gss_qop_t qop_req, gss_buffer_t input_message_buffer, int *conf_state, gss_buffer_t output_message_buffer)
{
  if (conf_state)
  {
    *conf_state = 0;
  }

  if (output_message_buffer)
  {
    output_message_buffer->length = 0;
    output_message_buffer->value = 0;
  }

  if (context_handle)
  {
    return (*(*context_handle + 112))(minor_status, *(context_handle + 1), *&conf_req_flag, *&qop_req, input_message_buffer);
  }

  *minor_status = 0;
  return 0x80000;
}

uint64_t gss_store_cred(OM_uint32 *minor_status, uint64_t a2, uint64_t a3, gss_const_OID b, uint64_t a5, uint64_t a6, gss_OID_set *oid_set, _DWORD *a8)
{
  if (!minor_status)
  {
    return 851968;
  }

  if (oid_set)
  {
    *oid_set = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (!a2)
  {
    return 0x80000;
  }

  if (!oid_set || (empty_oid_set = gss_create_empty_oid_set(minor_status, oid_set), !empty_oid_set))
  {
    v17 = *(a2 + 16);
    if (v17)
    {
      minor_statusa = 0;
      do
      {
        v18 = v17[1];
        if (!v18)
        {
          goto LABEL_19;
        }

        v19 = *(v18 + 336);
        if (!v19)
        {
          goto LABEL_19;
        }

        if (b)
        {
          if (gss_oid_equal((v18 + 16), b))
          {
            goto LABEL_19;
          }

          v19 = *(v18 + 336);
        }

        v20 = v19(minor_status, v17[3], a3, b, a5, a6, 0, a8);
        if (v20)
        {
          empty_oid_set = v20;
          gss_release_oid_set(&minor_statusa, oid_set);
          return empty_oid_set;
        }

        if (oid_set)
        {
          gss_add_oid_set_member(&minor_statusa, (v18 + 16), oid_set);
        }

LABEL_19:
        v17 = *v17;
      }

      while (v17);
    }

    return 0;
  }

  return empty_oid_set;
}

OM_uint32 gss_iter_creds_f(OM_uint32 *min_stat, OM_uint32 flags, gss_const_OID mech, void *userctx, void (__cdecl *useriter)(void *, gss_OID, gss_cred_id_t))
{
  if (!useriter)
  {
    return 0x1000000;
  }

  v8 = *&flags;
  _gss_load_mech();
  v10 = _gss_mech_oids;
  v11 = malloc_type_malloc(0x58uLL, 0x1080040852048A2uLL);
  if (v11)
  {
    v12 = v11;
    pthread_mutex_init(v11, 0);
    *(v12 + 64) = 1;
    *(v12 + 72) = userctx;
    *(v12 + 80) = useriter;
    if (*v10)
    {
      v13 = 0;
      v14 = 0;
      do
      {
        if (!mech || gss_oid_equal(mech, (v10[1] + v13)))
        {
          mechanism = __gss_get_mechanism((v10[1] + v13));
          if (mechanism)
          {
            v16 = mechanism;
            if (mechanism[46])
            {
              pthread_mutex_lock(v12);
              ++*(v12 + 64);
              pthread_mutex_unlock(v12);
              (v16[46])(v8, v12, iterate);
            }
          }
        }

        ++v14;
        v13 += 16;
      }

      while (v14 < *v10);
    }

    iter_deref(v12);
    return 0;
  }

  else
  {
    if (min_stat)
    {
      *min_stat = 12;
    }

    return 851968;
  }
}

void iterate(uint64_t a1, const gss_OID_desc *a2, uint64_t a3)
{
  if (a3)
  {
    v6 = _gss_mg_alloc_cred();
    if (v6)
    {
      v7 = v6;
      v8 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
      if (v8)
      {
        v9 = v8;
        mechanism = __gss_get_mechanism(a2);
        v9[2] = a2;
        v9[3] = a3;
        *v9 = v7[2];
        v9[1] = mechanism;
        v7[2] = v9;
        v11 = *(a1 + 72);
        v12 = *(a1 + 80);

        v12(v11, a2, v7);
      }

      else
      {

        free(v7);
      }
    }
  }

  else
  {

    iter_deref(a1);
  }
}

void iter_deref(uint64_t a1)
{
  pthread_mutex_lock(a1);
  v2 = *(a1 + 64) - 1;
  *(a1 + 64) = v2;
  if (v2)
  {

    pthread_mutex_unlock(a1);
  }

  else
  {
    (*(a1 + 80))(*(a1 + 72), 0, 0);
    pthread_mutex_unlock(a1);
    pthread_mutex_destroy(a1);

    free(a1);
  }
}

OM_uint32 gss_iter_creds(OM_uint32 *min_stat, OM_uint32 flags, gss_const_OID mech, void *useriter)
{
  v7 = _Block_copy(useriter);

  return gss_iter_creds_f(min_stat, flags, mech, v7, useriter_block);
}

void useriter_block(void (**a1)(void), uint64_t a2, uint64_t a3)
{
  (a1[2])(a1, a2);
  if (!a3)
  {

    _Block_release(a1);
  }
}

OM_uint32 gss_export_cred(OM_uint32 *minor_status, gss_cred_id_t cred_handle, gss_buffer_t token)
{
  if (token)
  {
    token->length = 0;
    token->value = 0;
  }

  if (cred_handle)
  {
    buffer.length = 0;
    buffer.value = 0;
    v8 = (cred_handle + 16);
    v9 = (cred_handle + 16);
    while (1)
    {
      v9 = *v9;
      if (!v9)
      {
        break;
      }

      v10 = v9[1];
      if (!*(v10 + 344))
      {
        *minor_status = 0;
        v11 = "Credential doesn't support exporting";
        v12 = 458752;
        v13 = v10 + 16;
LABEL_8:
        gss_mg_set_error_string(v13, 458752, 0, v11, v3, v4, v5, v6, 0);
        return v12;
      }
    }

    if (krb5_storage_emem())
    {
      v14 = *v8;
      if (!*v8)
      {
LABEL_17:
        v17 = krb5_storage_to_data();
        krb5_storage_free();
        if (!v17)
        {
          *minor_status = 0;
          v11 = "Credential was not exportable";
          v12 = 458752;
          v13 = 0;
          goto LABEL_8;
        }

        *minor_status = v17;
        return 851968;
      }

      while (1)
      {
        v15 = (*(v14[1] + 344))(minor_status, v14[3], &buffer);
        if (v15)
        {
          v12 = v15;
          krb5_storage_free();
          return v12;
        }

        if (buffer.length)
        {
          v16 = krb5_storage_write();
          if (v16 < 0 || v16 != buffer.length)
          {
            break;
          }
        }

        gss_release_buffer(minor_status, &buffer);
        v14 = *v14;
        if (!v14)
        {
          goto LABEL_17;
        }
      }

      gss_release_buffer(minor_status, &buffer);
      krb5_storage_free();
      v18 = 22;
    }

    else
    {
      v18 = 12;
    }

    *minor_status = v18;
    return 851968;
  }

  *minor_status = 0;
  return 458752;
}

OM_uint32 gss_import_cred(OM_uint32 *minor_status, gss_buffer_t token, gss_cred_id_t *cred_handle)
{
  *cred_handle = 0;
  if (!token->length || !krb5_storage_from_readonly_mem())
  {
    goto LABEL_13;
  }

  v5 = _gss_mg_alloc_cred();
  if (!v5)
  {
    krb5_storage_free();
LABEL_13:
    *minor_status = 12;
    return 851968;
  }

  v6 = v5;
  minor_statusa = 0;
  v17 = 0;
  v18 = 0;
  *cred_handle = v5;
  while (1)
  {
    v15 = 0;
    v16 = 0;
    v13.elements = 0;
    v14 = 0;
    *&v13.length = 0;
    v7 = krb5_ret_data();
    if (v7)
    {
      break;
    }

    v13.elements = v18;
    v13.length = v17;
    mechanism = __gss_get_mechanism(&v13);
    krb5_data_free();
    if (!mechanism || !mechanism[44])
    {
      v7 = 0;
      v9 = 0x10000;
      goto LABEL_20;
    }

    v7 = krb5_ret_data();
    if (v7)
    {
      goto LABEL_17;
    }

    v15 = v17;
    v16 = v18;
    v9 = (mechanism[44])(minor_status, &v15, &v14);
    krb5_data_free();
    if (v9)
    {
      goto LABEL_21;
    }

    v10 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
    if (!v10)
    {
      v9 = 851968;
      v7 = 22;
      goto LABEL_20;
    }

    v11 = v14;
    v10[2] = mechanism + 2;
    v10[3] = v11;
    *v10 = *(v6 + 2);
    v10[1] = mechanism;
    *(v6 + 2) = v10;
  }

  if (v7 != -1980176635)
  {
LABEL_17:
    v9 = 851968;
LABEL_20:
    *minor_status = v7;
LABEL_21:
    krb5_storage_free();
    goto LABEL_22;
  }

  krb5_storage_free();
  if (*(v6 + 2))
  {
    return 0;
  }

  v9 = 458752;
LABEL_22:
  gss_release_cred(&minor_statusa, cred_handle);
  return v9;
}

uint64_t __ApplePrivate_gss_cred_label_get(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = 0;
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  v7 = *(a2 + 16);
  if (!v7)
  {
    return 0x100000;
  }

  while (1)
  {
    v8 = *(v7[1] + 400);
    if (v8)
    {
      result = v8(a1, v7[3], a3, a4);
      if (!result)
      {
        break;
      }
    }

    v7 = *v7;
    if (!v7)
    {
      return 0x100000;
    }
  }

  return result;
}

uint64_t __ApplePrivate_gss_cred_label_set(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = 0;
  for (i = *(a2 + 16); i; i = *i)
  {
    v8 = *(i[1] + 408);
    if (v8)
    {
      v8(a1, i[3], a3, a4);
    }
  }

  return 0;
}

OM_uint32 gss_destroy_cred(OM_uint32 *min_stat, gss_cred_id_t *cred_handle)
{
  if (!cred_handle)
  {
    return 0x1000000;
  }

  v2 = *cred_handle;
  if (*cred_handle)
  {
    v7 = 0;
    *cred_handle = 0;
    while (1)
    {
      v3 = *(v2 + 2);
      if (!v3)
      {
        break;
      }

      v4 = v3[1];
      *(v2 + 2) = *v3;
      v5 = *(v4 + 376);
      if (!v5)
      {
        v5 = *(v4 + 48);
      }

      v5(&v7, v3 + 3);
      free(v3);
    }

    free(v2);
  }

  return 0;
}

uint64_t get_option_def(uint64_t a1, const gss_OID_desc *a2, uint64_t a3, size_t *a4)
{
  v6 = a1;
  valuePtr = a1;
  v7 = __ApplePrivate_gss_oid_to_name(a2);
  v8 = CFStringCreateWithFormat(0, 0, @"com.apple.GSS.%s", v7);
  if (v8)
  {
    v9 = v8;
    v10 = CFStringCreateWithCString(0, *(a3 + 16), 0x8000100u);
    if (v10)
    {
      v11 = v10;
      v12 = _gss_mg_copy_key(v9, v10);
      CFRelease(v9);
      CFRelease(v11);
      if (v12)
      {
        v13 = CFGetTypeID(v12);
        if (v13 == CFBooleanGetTypeID())
        {
          valuePtr = CFBooleanGetValue(v12);
        }

        else
        {
          v14 = CFGetTypeID(v12);
          if (v14 == CFNumberGetTypeID())
          {
            CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
          }

          else
          {
            v15 = CFGetTypeID(v12);
            if (v15 == CFDictionaryGetTypeID())
            {
              Value = CFDictionaryGetValue(v12, @"enable");
              v17 = CFDictionaryGetValue(v12, @"data");
              if (Value)
              {
                v18 = CFGetTypeID(Value);
                if (v18 == CFBooleanGetTypeID())
                {
                  valuePtr = CFBooleanGetValue(Value);
                }

                else
                {
                  v19 = CFGetTypeID(Value);
                  if (v19 == CFNumberGetTypeID())
                  {
                    CFNumberGetValue(v12, kCFNumberIntType, &valuePtr);
                  }
                }
              }

              if (v17)
              {
                v20 = CFGetTypeID(v17);
                if (v20 == CFDataGetTypeID())
                {
                  Length = CFDataGetLength(v17);
                  v22 = malloc_type_malloc(Length, 0x626E8864uLL);
                  a4[1] = v22;
                  if (v22)
                  {
                    v23 = v22;
                    BytePtr = CFDataGetBytePtr(v17);
                    memcpy(v23, BytePtr, *a4);
                    *a4 = CFDataGetLength(v17);
                  }
                }
              }
            }
          }
        }

        CFRelease(v12);
        return valuePtr;
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  return v6;
}

uint64_t _gss_mo_get_ctx_as_string(uint64_t a1, uint64_t a2, size_t *a3)
{
  if (!a3)
  {
    return 0;
  }

  v4 = *(a2 + 24);
  v5 = strdup(v4);
  a3[1] = v5;
  if (!v5)
  {
    return 851968;
  }

  v6 = strlen(v4);
  result = 0;
  *a3 = v6;
  return result;
}

uint64_t __ApplePrivate_gss_mo_set(const gss_OID_desc *a1, const gss_OID_desc *a2)
{
  mechanism = __gss_get_mechanism(a1);
  if (!mechanism)
  {
    return 0x10000;
  }

  v5 = mechanism;
  if (!mechanism[53])
  {
    return 0;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    if (gss_oid_equal(a2, *(v5[52] + v6)))
    {
      v8 = *(v5[52] + v6 + 40);
      if (v8)
      {
        break;
      }
    }

    ++v7;
    v6 += 48;
    if (v7 >= v5[53])
    {
      return 0;
    }
  }

  return v8(a1);
}

uint64_t __ApplePrivate_gss_mo_get(const gss_OID_desc *a1, const gss_OID_desc *a2, void *a3)
{
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  result = __gss_get_mechanism(a1);
  if (result)
  {
    mechanism = __gss_get_mechanism(a1);
    if (mechanism)
    {
      v7 = mechanism;
      if (mechanism[53])
      {
        v8 = 0;
        v9 = 0;
        while (1)
        {
          if (gss_oid_equal(a2, *(v7[52] + v8)))
          {
            v10 = *(v7[52] + v8 + 32);
            if (v10)
            {
              break;
            }
          }

          ++v9;
          v8 += 48;
          if (v9 >= v7[53])
          {
            return 0;
          }
        }

        return v10(a1);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0x10000;
    }
  }

  return result;
}

uint64_t *__ApplePrivate_gss_mo_list(uint64_t *result, gss_OID_set *a2)
{
  if (a2)
  {
    *a2 = 0;
    result = __gss_get_mechanism(result);
    if (result)
    {
      v3 = result;
      minor_status = 0;
      result = gss_create_empty_oid_set(&minor_status, a2);
      if (!result)
      {
        return add_all_mo(v3, a2, 0);
      }
    }
  }

  return result;
}

uint64_t add_all_mo(uint64_t result, gss_OID_set *oid_set, int a3)
{
  v3 = *(result + 424);
  if (v3)
  {
    v6 = result;
    v7 = 0;
    v8 = 0;
    minor_status = 0;
    do
    {
      v9 = *(v6 + 416);
      if ((a3 & ~*(v9 + v7 + 8)) == 0)
      {
        result = gss_add_oid_set_member(&minor_status, *(v9 + v7), oid_set);
        v3 = *(v6 + 424);
      }

      ++v8;
      v7 += 48;
    }

    while (v8 < v3);
  }

  return result;
}

uint64_t __ApplePrivate_gss_mo_name(const gss_OID_desc *a1, const gss_OID_desc *a2, gss_buffer_desc_struct *a3)
{
  if (!a3)
  {
    return 0x20000;
  }

  mechanism = __gss_get_mechanism(a1);
  if (!mechanism)
  {
    return 0x10000;
  }

  v6 = mechanism;
  if (!mechanism[53])
  {
    return 0x20000;
  }

  v7 = 0;
  v8 = 0;
  while (!gss_oid_equal(a2, *(v6[52] + v7)))
  {
    ++v8;
    v7 += 48;
    if (v8 >= v6[53])
    {
      return 0x20000;
    }
  }

  v10 = v6[52] + v7;
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = strdup(*(v10 + 16));
    a3->value = v12;
    if (v12)
    {
      v13 = strlen(v11);
      result = 0;
      a3->length = v13;
      return result;
    }

    return 0x20000;
  }

  minor_status = 0;
  return gss_display_mech_attr(&minor_status, a2, 0, a3, 0);
}

OM_uint32 gss_display_mech_attr(OM_uint32 *minor_status, gss_const_OID mech_attr, gss_buffer_t name, gss_buffer_t short_desc, gss_buffer_t long_desc)
{
  if (name)
  {
    name->length = 0;
    name->value = 0;
  }

  if (short_desc)
  {
    short_desc->length = 0;
    short_desc->value = 0;
  }

  if (long_desc)
  {
    long_desc->length = 0;
    long_desc->value = 0;
  }

  if (minor_status)
  {
    *minor_status = 0;
  }

  p_elements = &__gss_c_ma_ctx_trans_oid_desc.elements;
  do
  {
    v11 = p_elements[1];
    if (!v11)
    {
      return 1245184;
    }

    p_elements += 4;
  }

  while (!gss_oid_equal(mech_attr, v11));
  if (!name || (v14 = *(p_elements - 2), v13 = strlen(v14), (result = _gss_copy_buffer(minor_status, &v13, &name->length)) == 0))
  {
    if (!short_desc || (v14 = *(p_elements - 1), v13 = strlen(v14), (result = _gss_copy_buffer(minor_status, &v13, &short_desc->length)) == 0))
    {
      if (!long_desc)
      {
        return 0;
      }

      v14 = *p_elements;
      v13 = strlen(v14);
      result = _gss_copy_buffer(minor_status, &v13, &long_desc->length);
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

OM_uint32 gss_inquire_saslname_for_mech(OM_uint32 *minor_status, gss_OID desired_mech, gss_buffer_t sasl_mech_name, gss_buffer_t mech_name, gss_buffer_t mech_description)
{
  v17 = *MEMORY[0x277D85DE8];
  if (sasl_mech_name)
  {
    sasl_mech_name->length = 0;
    sasl_mech_name->value = 0;
  }

  if (mech_name)
  {
    mech_name->length = 0;
    mech_name->value = 0;
  }

  if (mech_description)
  {
    mech_description->length = 0;
    mech_description->value = 0;
  }

  if (minor_status)
  {
    *minor_status = 0;
  }

  if (!desired_mech)
  {
    return 0x10000;
  }

  if (!sasl_mech_name || (result = __ApplePrivate_gss_mo_get(desired_mech, &__gss_c_ma_sasl_mech_name_oid_desc, sasl_mech_name)) == 0)
  {
    if (mech_name)
    {
      result = __ApplePrivate_gss_mo_get(desired_mech, &__gss_c_ma_mech_name_oid_desc, mech_name);
      v14 = HIWORD(result);
      if (!HIWORD(result))
      {
        result = 0;
      }

      if (!mech_description || v14)
      {
        return result;
      }
    }

    else if (!mech_description)
    {
      return 0;
    }

    return __ApplePrivate_gss_mo_get(desired_mech, &__gss_c_ma_mech_description_oid_desc, mech_description);
  }

  if (result >= 0x10000)
  {
    mechanism = __gss_get_mechanism(desired_mech);
    if (!mechanism || (v12 = mechanism[62]) == 0 || (v13 = *v12) == 0 || (result = v13(minor_status, desired_mech, sasl_mech_name, mech_name, mech_description), result >= 0x10000))
    {
      v15[0] = 15;
      v15[1] = v16;
      if (make_sasl_name(&desired_mech->length, v16) < 0x10000)
      {
        return _gss_copy_buffer(minor_status, v15, &sasl_mech_name->length);
      }

      return 0x10000;
    }
  }

  return result;
}

uint64_t make_sasl_name(unsigned int *a1, uint64_t a2)
{
  if (*a1 > 0x7F)
  {
    return 0x10000;
  }

  CCDigestCreate();
  CCDigestUpdate();
  CCDigestUpdate();
  CCDigestFinal();
  CCDigestDestroy();
  result = 0;
  *a2 = 758272839;
  *(a2 + 4) = basis_32[v4 >> 3];
  *(a2 + 5) = basis_32[(v5 >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (v4 & 7))];
  *(a2 + 6) = basis_32[(v5 >> 1) & 0x1F];
  *(a2 + 7) = basis_32[(v6 >> 4) & 0xFFFFFFFFFFFFFFEFLL | (16 * (v5 & 1))];
  *(a2 + 8) = basis_32[(v7 >> 7) & 0xFFFFFFFFFFFFFFE1 | (2 * (v6 & 0xF))];
  *(a2 + 9) = basis_32[(v7 >> 2) & 0x1F];
  *(a2 + 10) = basis_32[(v8 >> 5) & 0xFFFFFFFFFFFFFFE7 | (8 * (v7 & 3))];
  *(a2 + 11) = basis_32[v8 & 0x1F];
  *(a2 + 12) = basis_32[v9 >> 3];
  *(a2 + 13) = basis_32[(v10 >> 6) & 0xFFFFFFFFFFFFFFE3 | (4 * (v9 & 7))];
  *(a2 + 14) = basis_32[(v10 >> 1) & 0x1F];
  return result;
}

OM_uint32 gss_inquire_mech_for_saslname(OM_uint32 *minor_status, gss_buffer_t sasl_mech_name, gss_OID *mech_type)
{
  v18[2] = *MEMORY[0x277D85DE8];
  _gss_load_mech();
  *mech_type = 0;
  v6 = _gss_mechs;
  if (!_gss_mechs)
  {
    return 0x10000;
  }

  buffer.length = 0;
  buffer.value = 0;
  minor_statusa = 0;
  while (1)
  {
    v7 = __ApplePrivate_gss_mo_get((v6 + 8), &__gss_c_ma_sasl_mech_name_oid_desc, &buffer);
    if (!v7)
    {
      break;
    }

    v8 = v7;
    gss_release_buffer(&minor_statusa, &buffer);
    if (v8 >= 0x10000)
    {
      v9 = *(v6 + 536);
      if (!v9)
      {
        goto LABEL_27;
      }

      v10 = *(v9 + 8);
      if (!v10)
      {
        goto LABEL_27;
      }

      result = v10(minor_status, sasl_mech_name, mech_type);
      if (!result)
      {
        return result;
      }

      if (result >= 0x10000)
      {
LABEL_27:
        if (sasl_mech_name->length == 16 && !make_sasl_name((v6 + 8), v18))
        {
          value = sasl_mech_name->value;
          v14 = *value;
          v13 = value[1];
          if (v18[0] == v14 && v18[1] == v13)
          {
            goto LABEL_24;
          }
        }
      }
    }

LABEL_20:
    v6 = *v6;
    if (!v6)
    {
      return 0x10000;
    }
  }

  if (buffer.length != sasl_mech_name->length || memcmp(buffer.value, sasl_mech_name->value, buffer.length))
  {
    gss_release_buffer(&minor_statusa, &buffer);
    goto LABEL_20;
  }

  gss_release_buffer(&minor_statusa, &buffer);
LABEL_24:
  result = 0;
  *mech_type = (v6 + 8);
  return result;
}

OM_uint32 gss_indicate_mechs_by_attrs(OM_uint32 *minor_status, gss_const_OID_set desired_mech_attrs, gss_const_OID_set except_mech_attrs, gss_const_OID_set critical_mech_attrs, gss_OID_set *mechs)
{
  v16 = 0;
  set = 0;
  empty_oid_set = gss_create_empty_oid_set(minor_status, mechs);
  if (!HIWORD(empty_oid_set))
  {
    _gss_load_mech();
    for (i = _gss_mechs; i; i = *i)
    {
      v12 = *(i + 536);
      minor_statusa = 0;
      if (v12)
      {
        v13 = *(v12 + 16);
        if (v13)
        {
          empty_oid_set = v13(minor_status, i + 56, &set, &v16);
          if (HIWORD(empty_oid_set))
          {
            continue;
          }
        }
      }

      if (test_mech_attrs(i + 40, &set->count, desired_mech_attrs, 0) && test_mech_attrs(i + 40, &set->count, except_mech_attrs, 1) && test_mech_attrs(i + 40, &v16->count, critical_mech_attrs, 0))
      {
        empty_oid_set = gss_add_oid_set_member(minor_status, (i + 56), mechs);
      }

      gss_release_oid_set(&minor_statusa, &set);
      gss_release_oid_set(&minor_statusa, &v16);
      if (HIWORD(empty_oid_set))
      {
        break;
      }
    }
  }

  return empty_oid_set;
}

uint64_t test_mech_attrs(uint64_t a1, unint64_t *a2, void *a3, int a4)
{
  if (!a3)
  {
    return 1;
  }

  if (!*a3)
  {
    return 1;
  }

  v8 = 0;
  v9 = 0;
  while (1)
  {
    if (*(a1 + 424))
    {
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v8 = gss_oid_equal(*(*(a1 + 416) + v10), (a3[1] + 16 * v9));
        if (v8)
        {
          break;
        }

        ++v11;
        v10 += 48;
        if (v11 >= *(a1 + 424))
        {
          v8 = 0;
          break;
        }
      }
    }

    if (a2 && *a2)
    {
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v8 = gss_oid_equal((a2[1] + v12), (a3[1] + 16 * v9));
        if (v8)
        {
          break;
        }

        ++v13;
        v12 += 16;
        if (v13 >= *a2)
        {
          v8 = 0;
          break;
        }
      }
    }

    if ((v8 == 0) != a4)
    {
      return 0;
    }

    if (++v9 >= *a3)
    {
      return 1;
    }
  }
}

OM_uint32 gss_inquire_attrs_for_mech(OM_uint32 *minor_status, gss_const_OID mech, gss_OID_set *mech_attr, gss_OID_set *known_mech_attrs)
{
  if (known_mech_attrs)
  {
    *known_mech_attrs = 0;
  }

  if (mech && mech_attr)
  {
    mechanism = __gss_get_mechanism(mech);
    if (!mechanism)
    {
      *minor_status = 0;
      return 0x10000;
    }

    v9 = mechanism;
    v10 = mechanism[62];
    if (v10)
    {
      v11 = *(v10 + 16);
      if (v11)
      {
        empty_oid_set = v11(minor_status, mech, mech_attr, known_mech_attrs);
        goto LABEL_10;
      }
    }

    empty_oid_set = gss_create_empty_oid_set(minor_status, mech_attr);
    if (empty_oid_set)
    {
LABEL_10:
      if (HIWORD(empty_oid_set))
      {
        v13 = empty_oid_set;
      }

      else
      {
        v13 = 0;
      }

      if (!known_mech_attrs || HIWORD(empty_oid_set))
      {
        return v13;
      }

      goto LABEL_19;
    }

    add_all_mo(v9, mech_attr, 1);
  }

  if (!known_mech_attrs)
  {
    return 0;
  }

LABEL_19:
  if (*known_mech_attrs || (v14 = gss_create_empty_oid_set(minor_status, known_mech_attrs), v14 < 0x10000))
  {
    _gss_load_mech();
    v15 = _gss_mechs;
    if (_gss_mechs)
    {
      do
      {
        add_all_mo((v15 + 5), known_mech_attrs, 1);
        v15 = *v15;
      }

      while (v15);
    }

    return 0;
  }

  v13 = v14;
  if (mech_attr)
  {
    minor_statusa = 0;
    gss_release_oid_set(&minor_statusa, mech_attr);
  }

  return v13;
}

uint64_t __ApplePrivate_gss_cred_hold(_DWORD *a1, uint64_t a2)
{
  *a1 = 0;
  if (!a2)
  {
    return 458752;
  }

  for (i = *(a2 + 16); i; i = *i)
  {
    v4 = *(i[1] + 384);
    if (v4)
    {
      v4(a1, i[3]);
    }
  }

  return 0;
}

uint64_t __ApplePrivate_gss_cred_unhold(_DWORD *a1, uint64_t a2)
{
  *a1 = 0;
  if (!a2)
  {
    return 458752;
  }

  for (i = *(a2 + 16); i; i = *i)
  {
    v4 = *(i[1] + 392);
    if (v4)
    {
      v4(a1, i[3]);
    }
  }

  return 0;
}

uint64_t gss_mg_gen_cb(int *a1, unsigned int *a2, uint64_t a3, void *a4)
{
  krb5_data_zero();
  if (!krb5_storage_emem())
  {
    *a1 = 12;
    return 851968;
  }

  krb5_storage_set_byteorder();
  v7 = krb5_store_int32();
  if (v7)
  {
    goto LABEL_18;
  }

  v7 = krb5_store_int32();
  if (v7)
  {
    goto LABEL_18;
  }

  v8 = krb5_storage_write();
  if (v8 < 0 || v8 != *(a2 + 1))
  {
    goto LABEL_17;
  }

  v7 = krb5_store_int32();
  if (v7)
  {
    goto LABEL_18;
  }

  v7 = krb5_store_int32();
  if (v7)
  {
    goto LABEL_18;
  }

  v9 = krb5_storage_write();
  if (v9 < 0 || v9 != *(a2 + 4))
  {
    goto LABEL_17;
  }

  v7 = krb5_store_int32();
  if (v7)
  {
LABEL_18:
    *a1 = v7;
    krb5_storage_free();
    return 851968;
  }

  v10 = krb5_storage_write();
  if (v10 < 0 || v10 != *(a2 + 6))
  {
LABEL_17:
    v7 = 12;
    goto LABEL_18;
  }

  v7 = krb5_storage_to_data();
  if (v7)
  {
    goto LABEL_18;
  }

  CCDigest();
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  else
  {
    krb5_data_free();
  }

  result = 0;
  *a1 = 0;
  return result;
}

uint64_t gss_mg_validate_cb(int *a1, unsigned int *a2, void *a3, gss_buffer_desc_struct *a4)
{
  v10 = *MEMORY[0x277D85DE8];
  if (!a2 || (*a3 == gss_mg_validate_cb_zeros ? (v5 = a3[1] == *algn_27DF41CF8) : (v5 = 0), v5))
  {
    result = 0;
    a4->length = 0;
    a4->value = 0;
  }

  else
  {
    minor_status = 0;
    result = gss_mg_gen_cb(a1, a2, v9, a4);
    if (!result)
    {
      result = ct_memcmp();
      if (result)
      {
        gss_release_buffer(&minor_status, a4);
        *a1 = 0;
        return 0x40000;
      }
    }
  }

  return result;
}

uint64_t _gss_acquire_mech_cred(_DWORD *a1, uint64_t a2, uint64_t a3, const gss_OID_desc *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  *a9 = 0;
  v16 = malloc_type_calloc(1uLL, 0x20uLL, 0x20040DC1BFBCFuLL);
  if (v16)
  {
    v17 = v16;
    *(v16 + 1) = a2;
    *(v16 + 2) = a2 + 16;
    v27[0] = 1;
    v27[1] = a2 + 16;
    v18 = *(a2 + 360);
    if (v18)
    {
      if (a3)
      {
        v19 = *(a3 + 24);
      }

      else
      {
        v19 = 0;
      }

      v24 = v18(a1, v19, a4, a5, a6);
    }

    else if (gss_oid_equal(a4, &__gss_c_cred_password_oid_desc) && (v21 = *(a2 + 496)) != 0 && (v22 = *(v21 + 24)) != 0)
    {
      if (a3)
      {
        v23 = *(a3 + 24);
      }

      else
      {
        v23 = 0;
      }

      v24 = v22(a1, v23, a5, a6, v27, a8, v17 + 24, 0, 0);
    }

    else
    {
      if (a4)
      {
        free(v17);
        v17 = 0;
        v20 = 0x100000;
LABEL_17:
        *a9 = v17;
        return v20;
      }

      if (a3)
      {
        v26 = *(a3 + 24);
      }

      else
      {
        v26 = 0;
      }

      v24 = (*(a2 + 40))(a1, v26, a6, v27, a8, v17 + 24, 0, 0);
    }

    v20 = v24;
    if (v24)
    {
      _gss_mg_error(a2, *a1);
    }

    goto LABEL_17;
  }

  *a1 = 12;
  return 851968;
}

uint64_t __ApplePrivate_gss_acquire_cred_ext(OM_uint32 *a1, uint64_t a2, const gss_OID_desc *a3, uint64_t a4, unsigned int a5, const gss_OID_desc *a6, unsigned int a7, void *a8)
{
  *a1 = 0;
  if (!a8)
  {
    return 0x1000000;
  }

  v31 = 0;
  v32 = 0;
  _gss_load_mech();
  if (a6)
  {
    present[0] = 0;
    gss_test_oid_set_member(a1, a6, _gss_mech_oids, present);
    if (!present[0])
    {
      return 0x10000;
    }

    v31 = 1;
    v32 = a6;
    v14 = &v31;
  }

  else
  {
    v14 = _gss_mech_oids;
  }

  v16 = _gss_mg_alloc_cred();
  if (v16)
  {
    v17 = v16;
    v25 = a8;
    *a1 = 0;
    if (*v14)
    {
      v18 = 0;
      v19 = 0;
      v15 = 458752;
      do
      {
        v29 = 0;
        *present = 0;
        v28 = 0;
        mechanism = __gss_get_mechanism((v14[1] + v18));
        if (mechanism)
        {
          v22 = mechanism;
          if (!a2 || !_gss_find_mn(&v28, a2, (v14[1] + v18), present))
          {
            v15 = _gss_acquire_mech_cred(a1, v22, *present, a3, a4, a5, v21, a7, &v29);
            if (!WORD1(v15))
            {
              v23 = v29;
              *v29 = v17[2];
              v17[2] = v23;
            }
          }
        }

        ++v19;
        v18 += 16;
      }

      while (v19 < *v14);
    }

    else
    {
      v15 = 458752;
    }

    if (v17[2])
    {
      v15 = 0;
      *v25 = v17;
      *a1 = 0;
    }

    else
    {
      free(v17);
    }
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return v15;
}

OM_uint32 gss_acquire_cred_with_password(OM_uint32 *minor_status, gss_name_t desired_name, gss_buffer_t password, OM_uint32 time_req, gss_OID_set desired_mechs, gss_cred_usage_t cred_usage, gss_cred_id_t *output_cred_handle, gss_OID_set *actual_mechs, OM_uint32 *time_rec)
{
  v10 = output_cred_handle;
  minor_statusa = 0;
  if (desired_mechs)
  {
    v17 = _gss_mg_alloc_cred();
    if (!v17)
    {
      *minor_status = 12;
      return 851968;
    }

    v18 = v17;
    *(v17 + 16) = 0;
    if (!desired_mechs->count)
    {
      goto LABEL_16;
    }

    v25 = actual_mechs;
    v26 = v10;
    v19 = 0;
    v20 = 0;
    do
    {
      cred_handle = 0;
      if (!(__ApplePrivate_gss_acquire_cred_ext(minor_status, desired_name, &__gss_c_cred_password_oid_desc, password, time_req, &desired_mechs->elements[v19], cred_usage, &cred_handle) >> 16))
      {
        v21 = *(cred_handle + 2);
        if (v21)
        {
          *(cred_handle + 2) = *v21;
          *v21 = v18[2];
          v18[2] = v21;
        }

        gss_release_cred(&minor_statusa, &cred_handle);
      }

      ++v20;
      ++v19;
    }

    while (v20 < desired_mechs->count);
    actual_mechs = v25;
    v10 = v26;
    if (!v18[2])
    {
LABEL_16:
      free(v18);
      *minor_status = 0;
      return 458752;
    }

    *v26 = v18;
  }

  else
  {
    v22 = __ApplePrivate_gss_acquire_cred_ext(minor_status, desired_name, &__gss_c_cred_password_oid_desc, password, time_req, 0, cred_usage, output_cred_handle);
    if (v22 >= 0x10000)
    {
      return v22;
    }
  }

  if (actual_mechs | time_rec && (v23 = gss_inquire_cred(minor_status, *v10, 0, time_rec, 0, actual_mechs), v23 >= 0x10000))
  {
    v22 = v23;
    gss_release_cred(&minor_statusa, v10);
  }

  else
  {
    v22 = 0;
    *minor_status = 0;
  }

  return v22;
}

uint64_t gss_authorize_localname(OM_uint32 *a1, gss_name_t_desc_struct *a2, uint64_t a3)
{
  *a1 = 0;
  v3 = 0x1000000;
  if (!a2 || !a3)
  {
    return v3;
  }

  v7 = *(a2 + 6);
  if (!v7)
  {
    v10 = 0;
    goto LABEL_13;
  }

  while (1)
  {
    v8 = *(v7[1] + 440);
    if (!v8)
    {
      LODWORD(v3) = 0x100000;
      goto LABEL_8;
    }

    v9 = v8(a1, v7[3], a3 + 32, a3 + 16);
    v3 = v9;
    if (v9 != 983040)
    {
      break;
    }

LABEL_8:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  if (!v9)
  {
    return v3;
  }

LABEL_12:
  v10 = v3 == 0x100000;
LABEL_13:
  v19 = -1;
  if (!gss_oid_equal((a3 + 16), &__gss_c_nt_user_name_oid_desc))
  {
    v3 = 196608;
    goto LABEL_27;
  }

  while (1)
  {
    minor_status = 0;
    __n.length = 0;
    __n.value = 0;
    buffer.length = 0;
    buffer.value = 0;
    v15 = 0;
    name_attribute = gss_get_name_attribute(a1, a2, &__gss_c_attr_local_login_user, &v15 + 1, &v15, &__n, &buffer, &v19);
    if (name_attribute >= 0x10000)
    {
      break;
    }

    if (HIDWORD(v15) && __n.length == *(a3 + 32) && !memcmp(__n.value, *(a3 + 40), __n.length))
    {
      v12 = 0;
      v3 = 0;
    }

    else
    {
      v3 = 983040;
      v12 = 1;
    }

    gss_release_buffer(&minor_status, &__n);
    gss_release_buffer(&minor_status, &buffer);
    if (!v12 || !v19)
    {
      goto LABEL_25;
    }
  }

  v3 = name_attribute;
LABEL_25:
  if (v3 && v3 != 983040)
  {
LABEL_27:
    if (v10)
    {
      LODWORD(__n.length) = 0;
      v13 = gss_compare_name(a1, a2, a3, &__n);
      if (v13 | LODWORD(__n.length))
      {
        return v13;
      }

      else
      {
        return 983040;
      }
    }
  }

  return v3;
}

int gss_userok(gss_name_t name, const char *user)
{
  minor_status = 0;
  v6 = 0;
  input_name_buffer.value = user;
  input_name_buffer.length = strlen(user);
  v3 = gss_import_name(&minor_status, &input_name_buffer, &__gss_c_nt_user_name_oid_desc, &v6);
  result = 0;
  if (!HIWORD(v3))
  {
    v5 = gss_authorize_localname(&minor_status, name, v6);
    gss_release_name(&minor_status, &v6);
    return v5 == 0;
  }

  return result;
}

uint64_t gss_delete_name_attribute(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  if (!a2)
  {
    return 0x20000;
  }

  v3 = *(a2 + 48);
  if (!v3)
  {
    return 0x100000;
  }

  v6 = 0x100000;
  do
  {
    v7 = v3[1];
    length = v7[30].length;
    if (length)
    {
      v6 = length(a1, v3[3], a3);
      if (v6 < 0x10000)
      {
        return v6;
      }

      _gss_mg_error(v7, *a1);
    }

    v3 = *v3;
  }

  while (v3);
  return v6;
}

uint64_t gss_display_name_ext(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = 0;
  if (a4)
  {
    *a4 = 0;
    a4[1] = 0;
  }

  if (!a2)
  {
    return 0x20000;
  }

  v7 = *(a2 + 48);
  if (!v7)
  {
    return 0x100000;
  }

  v8 = 0x100000;
  do
  {
    v9 = v7[1];
    length = v9[28].length;
    if (length)
    {
      v8 = length(a1, v7[3], a3, a4);
      if (v8 < 0x10000)
      {
        return v8;
      }

      _gss_mg_error(v9, *a1);
    }

    v7 = *v7;
  }

  while (v7);
  return v8;
}

uint64_t gss_export_name_composite(_DWORD *a1, uint64_t a2, void *a3)
{
  *a1 = 0;
  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  if (!a2)
  {
    return 0x20000;
  }

  v5 = *(a2 + 48);
  if (!v5)
  {
    return 0x100000;
  }

  v6 = 0x100000;
  do
  {
    v7 = v5[1];
    value = v7[30].value;
    if (value)
    {
      v6 = value(a1, v5[3], a3);
      if (v6 < 0x10000)
      {
        return v6;
      }

      _gss_mg_error(v7, *a1);
    }

    v5 = *v5;
  }

  while (v5);
  return v6;
}

uint64_t gss_get_name_attribute(_DWORD *a1, void *a2, uint64_t a3, _DWORD *a4, _DWORD *a5, void *a6, void *a7, uint64_t a8)
{
  *a1 = 0;
  if (a4)
  {
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
    a6[1] = 0;
  }

  if (a7)
  {
    *a7 = 0;
    a7[1] = 0;
  }

  if (!a2)
  {
    return 0x20000;
  }

  _gss_mg_check_name(a2);
  v16 = a2[6];
  if (!v16)
  {
    return 0x100000;
  }

  v17 = 0x100000;
  do
  {
    v18 = v16[1];
    length = v18[29].length;
    if (length)
    {
      v17 = length(a1, v16[3], a3, a4, a5, a6, a7, a8);
      if (v17 < 0x10000)
      {
        return v17;
      }

      _gss_mg_error(v18, *a1);
    }

    v16 = *v16;
  }

  while (v16);
  return v17;
}

OM_uint32 gss_inquire_name(OM_uint32 *minor_status, gss_name_t input_name, int *name_is_MN, gss_OID *MN_mech, gss_buffer_set_t *attrs)
{
  *minor_status = 0;
  if (name_is_MN)
  {
    *name_is_MN = 0;
  }

  if (MN_mech)
  {
    *MN_mech = 0;
  }

  if (attrs)
  {
    *attrs = 0;
  }

  if (!input_name)
  {
    return 0x20000;
  }

  v9 = *(input_name + 6);
  if (!v9)
  {
    return 0x100000;
  }

  v10 = 0x100000;
  while (1)
  {
    v11 = v9[1];
    v12 = *(v11 + 456);
    if (v12)
    {
      break;
    }

LABEL_13:
    v9 = *v9;
    if (!v9)
    {
      return v10;
    }
  }

  v13 = v12(minor_status, v9[3], 0, MN_mech, attrs);
  if (v13)
  {
    v10 = v13;
    _gss_mg_error(v11, *minor_status);
    goto LABEL_13;
  }

  if (name_is_MN)
  {
    *name_is_MN = 1;
  }

  if (!MN_mech || *MN_mech)
  {
    return 0;
  }

  v10 = 0;
  *MN_mech = (v11 + 16);
  return v10;
}

uint64_t gss_pname_to_uid(unsigned int *a1, uint64_t a2, const gss_OID_desc *a3, uid_t *a4)
{
  v10 = 0;
  *a1 = 0;
  if (a3)
  {
    mn = _gss_find_mn(a1, a2, a3, &v10);
    if (WORD1(mn))
    {
      return mn;
    }

    if (!mech_pname_to_uid(a1, v10))
    {
      return 0;
    }

    mn = attr_pname_to_uid(a1, v10, a4);
    i = v10;
    if (!mn)
    {
      return mn;
    }

    goto LABEL_14;
  }

  for (i = *(a2 + 48); ; i = *&i->length)
  {
    v10 = i;
    if (!i)
    {
      return 0x100000;
    }

    if (!mech_pname_to_uid(a1, i))
    {
      return 0;
    }

    v8 = attr_pname_to_uid(a1, i, a4);
    if (v8 != 0x100000)
    {
      break;
    }
  }

  mn = v8;
  if (v8)
  {
LABEL_14:
    if (i)
    {
      _gss_mg_error(i->elements, *a1);
    }
  }

  return mn;
}

uint64_t mech_pname_to_uid(_DWORD *a1, uint64_t a2)
{
  *a1 = 0;
  v2 = *(*(a2 + 8) + 432);
  if (!v2)
  {
    return 0x100000;
  }

  v5 = v2();
  if (v5 >= 0x10000)
  {
    _gss_mg_error(*(a2 + 8), *a1);
  }

  return v5;
}

uint64_t attr_pname_to_uid(_DWORD *a1, uint64_t a2, uid_t *a3)
{
  v15 = -1;
  *a1 = 0;
  if (!*(*(a2 + 8) + 464))
  {
    return 0x100000;
  }

  minor_status = 0;
  while (1)
  {
    buffer.length = 0;
    buffer.value = 0;
    v13.length = 0;
    v13.value = 0;
    v12 = 0;
    v6 = (*(*(a2 + 8) + 464))(a1, *(a2 + 24), &__gss_c_attr_local_login_user, &v12 + 4, &v12, &buffer, &v13, &v15);
    if (v6 >= 0x10000)
    {
      v10 = v6;
      _gss_mg_error(*(a2 + 8), *a1);
      return v10;
    }

    v7 = malloc_type_malloc(buffer.length + 1, 0x4F3B347EuLL);
    if (!v7)
    {
      *a1 = 12;
      return 851968;
    }

    v8 = v7;
    memcpy(v7, buffer.value, buffer.length);
    v8[buffer.length] = 0;
    v9 = getpwnam(v8);
    free(v8);
    gss_release_buffer(&minor_status, &buffer);
    gss_release_buffer(&minor_status, &v13);
    if (v9)
    {
      break;
    }

    if (!v15)
    {
      return 0x100000;
    }
  }

  v10 = 0;
  *a3 = v9->pw_uid;
  *a1 = 0;
  return v10;
}

uint64_t gss_set_name_attribute(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *a1 = 0;
  if (!a2)
  {
    return 0x20000;
  }

  v5 = *(a2 + 48);
  if (!v5)
  {
    return 0x100000;
  }

  v10 = 0x100000;
  do
  {
    v11 = v5[1];
    value = v11[29].value;
    if (value)
    {
      v10 = value(a1, v5[3], a3, a4, a5);
      if (v10 < 0x10000)
      {
        return v10;
      }

      _gss_mg_error(v11, *a1);
    }

    v5 = *v5;
  }

  while (v5);
  return v10;
}

void _gss_mg_release_cred(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v4 = 0;
    do
    {
      v3 = v1[1];
      *(a1 + 16) = *v1;
      (*(v3 + 48))(&v4, v1 + 3);
      free(v1);
      v1 = *(a1 + 16);
    }

    while (v1);
  }
}

uint64_t _gss_mg_alloc_cred()
{
  if (getTypeID_inited_0 != -1)
  {
    _gss_mg_alloc_cred_cold_1();
  }

  if (!getTypeID_haid_0)
  {
    return 0;
  }

  result = _CFRuntimeCreateInstance();
  if (result)
  {
    *(result + 16) = 0;
  }

  return result;
}

void _gss_mg_check_credential(const void *result)
{
  if (result)
  {
    v1 = CFGetTypeID(result);
    if (getTypeID_inited_0 != -1)
    {
      _gss_mg_alloc_cred_cold_1();
    }

    if (v1 != getTypeID_haid_0)
    {
      _gss_mg_check_credential_cold_2();
    }
  }
}

gss_buffer_desc_struct *_gss_cred_copy_name(uint64_t a1, uint64_t a2, const gss_OID_desc *a3)
{
  name = _gss_create_name(0, 0);
  if (name)
  {
    for (i = *(a2 + 16); i; i = *i)
    {
      v12 = 0;
      if ((!a3 || gss_oid_equal(a3, i[2])) && !(i[1][23])(a1, i[3], &v12, 0, 0, 0))
      {
        v8 = malloc_type_malloc(0x20uLL, 0x20040DC1BFBCFuLL);
        v9 = i[1];
        if (v8)
        {
          v10 = v12;
          v8[2] = i[2];
          v8[3] = v10;
          *v8 = name[3].length;
          v8[1] = v9;
          name[3].length = v8;
        }

        else
        {
          (v9[22])(a1, &v12);
        }
      }
    }

    if (!name[3].length)
    {
      _gss_mg_release_name(name);
      return 0;
    }
  }

  return name;
}

uint64_t __getTypeID_block_invoke_0()
{
  result = _CFRuntimeRegisterClass();
  getTypeID_haid_0 = result;
  return result;
}

__CFString *_gss_mg_copy_debug_cred(uint64_t a1)
{
  Mutable = CFStringCreateMutable(0, 0);
  v3 = Mutable;
  if (Mutable)
  {
    CFStringAppendFormat(Mutable, 0, @"GSSCred: %p", a1);
    for (i = *(a1 + 16); i; i = *i)
    {
      v5 = __ApplePrivate_gss_oid_to_name(i[2]);
      buffer.length = 0;
      buffer.value = 0;
      minor_status = 0;
      v9 = 0;
      if ((i[1][23])(&minor_status, i[3], &v9, 0, 0, 0))
      {
        value = 0;
        length_low = 0;
        buffer.length = 0;
        buffer.value = 0;
      }

      else
      {
        (i[1][19])(&minor_status, v9, &buffer, 0);
        length_low = LODWORD(buffer.length);
        value = buffer.value;
      }

      CFStringAppendFormat(v3, 0, @" <MC: %s %.*s>", v5, length_low, value);
      (i[1][22])(&minor_status, &v9);
      gss_release_buffer(&minor_status, &buffer);
    }
  }

  return v3;
}

uint64_t _gss_spnego_accept_sec_context(_DWORD *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8, _DWORD *a9, _DWORD *a10, void *a11)
{
  *a1 = 0;
  *a8 = 0;
  a8[1] = 0;
  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (a11)
  {
    *a11 = 0;
  }

  v11 = acceptor_continue;
  if (!*a2)
  {
    v11 = acceptor_start;
  }

  return (v11)(a1, a2, a3);
}

uint64_t acceptor_start(OM_uint32 *minor_status, uint64_t *a2, gss_cred_id_t_desc_struct *a3, const gss_buffer_desc *a4, gss_channel_bindings_struct *a5, void *a6, void *a7, gss_buffer_desc_struct *a8, _DWORD *a9, _DWORD *a10, gss_cred_id_t *a11)
{
  minor_statusa = 0;
  output_token.value = 0;
  v49 = 0;
  buffer.value = 0;
  output_token.length = 0;
  v46 = 0;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  buffer.length = 0;
  if (a4->length)
  {
    v19 = _gss_spnego_alloc_sec_context(minor_status, a2);
    if (v19)
    {
      return v19;
    }

    v45 = a8;
    v20 = *a2;
    pthread_mutex_lock((*a2 + 72));
    v19 = gss_decapsulate_token(a4, &__gss_spnego_mechanism_oid_desc, &output_token);
    if (v19)
    {
      goto LABEL_21;
    }

    v21 = decode_NegotiationToken(output_token.value, output_token.length, &v50, &v49);
    gss_release_buffer(minor_status, &output_token);
    if (v21)
    {
      *minor_status = v21;
LABEL_20:
      v19 = 589824;
LABEL_21:
      if (buffer.value)
      {
        gss_release_buffer(&minor_statusa, &buffer);
      }

      free_NegotiationToken(&v50);
      if (!v19)
      {
        _gss_spnego_fixup_ntlm(v20);
        if (a6)
        {
          if (*(v20 + 56))
          {
            v34 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004092E30F56uLL);
            if (v34)
            {
              v34[4] = *(v20 + 56);
              *(v20 + 56) = 0;
              *a6 = v34;
            }
          }
        }
      }

      if (a7)
      {
        *a7 = *(v20 + 32);
      }

      if (a9)
      {
        *a9 = *(v20 + 48);
      }

      if (a10)
      {
        *a10 = *(v20 + 52);
      }

      if (v19 > 1)
      {
        _gss_spnego_internal_delete_sec_context(&minor_statusa, a2, 0);
      }

      else
      {
        pthread_mutex_unlock((v20 + 72));
      }

      return v19;
    }

    if (v50 != 1 || !DWORD2(v50))
    {
      *minor_status = 0;
      goto LABEL_20;
    }

    v56.length = DWORD2(v50);
    v56.value = v51;
    v30 = length_MechTypeList(&v56);
    *v20 = v30;
    v31 = malloc_type_malloc(v30, 0x1BC87EE0uLL);
    *(v20 + 8) = v31;
    if (!v31)
    {
      v33 = 12;
      goto LABEL_45;
    }

    v32 = encode_MechTypeList(v31 + *v20 - 1, *v20, &v56, &v49);
    if (v32)
    {
      v33 = v32;
      free(*(v20 + 8));
      *(v20 + 8) = 0;
LABEL_45:
      *minor_status = v33;
      v19 = 851968;
      goto LABEL_21;
    }

    if (!select_mech(minor_status, v51, 0, (v20 + 24), (v20 + 16)) && v52)
    {
      v56.value = 0;
      v56.length = 0;
      v40 = *(v52 + 8);
      v56.length = *v52;
      v56.value = v40;
      if (*(v20 + 56))
      {
        gss_release_name(&minor_statusa, (v20 + 56));
      }

      v19 = gss_accept_sec_context(minor_status, (v20 + 40), a3, &v56, a5, (v20 + 56), (v20 + 32), &buffer, (v20 + 48), (v20 + 52), a11);
      if (v19 <= 1)
      {
        if (!gss_oid_equal(*(v20 + 32), *(v20 + 24)))
        {
          _gss_mg_log(1, "client didn't send the mech they said they would");
        }

        if (v19)
        {
          v19 = 1;
        }

        else
        {
          v19 = acceptor_complete(minor_status, v20, &v46, &v56, &buffer, *(&v52 + 1), v45);
          if (v19)
          {
            goto LABEL_21;
          }

          *(v20 + 64) |= 1u;
        }
      }

      else
      {
        gss_mg_collect_error(*(v20 + 24), v19, *minor_status);
        *(v20 + 16) = 0;
        if (v52 && DWORD2(v50) >= 2)
        {
          v41 = 1;
          v42 = 16;
          while (1)
          {
            v43 = select_mech(&minor_statusa, v51 + v42, 1, (v20 + 16), 0);
            if (!v43)
            {
              break;
            }

            v19 = v43;
            ++v41;
            v42 += 16;
            if (v41 >= DWORD2(v50))
            {
              goto LABEL_62;
            }
          }

          if (*(v20 + 16))
          {
            v44 = 0;
LABEL_72:
            v19 = send_accept(minor_status, v20, &buffer, 1, v44, v45);
            goto LABEL_21;
          }

          goto LABEL_74;
        }
      }

LABEL_62:
      if (*(v20 + 16))
      {
        if (v46)
        {
          v44 = v20;
        }

        else
        {
          v44 = 0;
        }

        goto LABEL_72;
      }

      if (v19)
      {
        send_reject(minor_status, v45);
        goto LABEL_21;
      }

LABEL_74:
      acceptor_start_cold_1();
    }

    *minor_status = 0;
    pthread_mutex_unlock((v20 + 72));
    return gss_mg_set_error_string(0, 0x80000, *minor_status, "SPNEGO acceptor didn't find a prefered mechanism", v36, v37, v38, v39);
  }

  v55 = 0;
  v56.length = 1;
  v56.value = 0;
  v57 = 0;
  v59 = 0;
  v60 = 0;
  v58 = 0;
  v22 = _gss_spnego_indicate_mechtypelist(minor_status, 0, acceptor_approved, 0, 1, 0, &v56.value, 0);
  if (v22)
  {
    return v22;
  }

  v60 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
  if (!v60 || (v23 = malloc_type_calloc(1uLL, 8uLL, 0x10040436913F5uLL), (*v60 = v23) == 0))
  {
    *minor_status = 12;
    free_NegotiationTokenWin(&v56);
    return 851968;
  }

  v24 = *v60;
  *v24 = strdup("not_defined_in_RFC4178@please_ignore");
  v60[1] = 0;
  v25 = length_NegotiationTokenWin(&v56);
  input_token.length = v25;
  v26 = malloc_type_malloc(v25, 0xB2020DDCuLL);
  input_token.value = v26;
  if (!v26)
  {
    v29 = 12;
    goto LABEL_38;
  }

  v27 = v26;
  v28 = encode_NegotiationTokenWin(v26 + v25 - 1, v25, &v56, &v55);
  if (v28)
  {
    v29 = v28;
    free(v27);
LABEL_38:
    free_NegotiationTokenWin(&v56);
    *minor_status = v29;
    return 851968;
  }

  free_NegotiationTokenWin(&v56);
  if (v25 != v55)
  {
    abort();
  }

  v19 = gss_encapsulate_token(&input_token, &__gss_spnego_mechanism_oid_desc, a8);
  free(input_token.value);
  if (!v19)
  {
    *minor_status = 0;
    return 1;
  }

  return v19;
}

uint64_t acceptor_continue(OM_uint32 *a1, uint64_t *a2, gss_cred_id_t_desc_struct *a3, uint64_t *a4, gss_channel_bindings_struct *a5, void *a6, void *a7, uint64_t a8, _DWORD *a9, _DWORD *a10, gss_cred_id_t *a11)
{
  minor_status[0] = 0;
  v36 = 0u;
  v37 = 0u;
  v35 = 0u;
  v34 = 0;
  v18 = *a2;
  v19 = decode_NegotiationToken(a4[1], *a4, &v35, &v34);
  if (!v19)
  {
    if (v35 != 2)
    {
      *a1 = 0;
      return 589824;
    }

    if (*(&v35 + 1))
    {
      v20 = **(&v35 + 1);
    }

    else
    {
      v20 = 1;
    }

    v38 = 0;
    pthread_mutex_lock((v18 + 72));
    output_token.length = 0;
    output_token.value = 0;
    v31 = 0;
    if (*(&v36 + 1))
    {
      v23 = *(*(&v36 + 1) + 8);
      input_token.length = **(&v36 + 1);
      input_token.value = v23;
      if (*(v18 + 56))
      {
        gss_release_name(minor_status, (v18 + 56));
      }

      v24 = gss_accept_sec_context(a1, (v18 + 40), a3, &input_token, a5, (v18 + 56), (v18 + 32), &output_token, (v18 + 48), (v18 + 52), a11);
      v21 = v24;
      if (v24 >= 2)
      {
        p_output_token = 0;
      }

      else
      {
        p_output_token = &output_token;
      }

      if (v24 > 1)
      {
        free_NegotiationToken(&v35);
        gss_mg_collect_error(*(v18 + 32), v21, *a1);
        send_reject(&v38, a8);
LABEL_44:
        pthread_mutex_unlock((v18 + 72));
        return v21;
      }

      if (v24)
      {
        v27 = 1;
        goto LABEL_23;
      }

      *(v18 + 64) |= 1u;
      p_input_token = &input_token;
    }

    else
    {
      p_input_token = 0;
      p_output_token = 0;
      input_token.length = 0;
      input_token.value = 0;
    }

    v27 = acceptor_complete(a1, v18, &v31, p_input_token, p_output_token, v37, a8);
LABEL_23:
    if (p_output_token)
    {
      v28 = v31;
      if (p_output_token->length)
      {
LABEL_29:
        if (v28)
        {
          v29 = v18;
        }

        else
        {
          v29 = 0;
        }

        v21 = send_accept(a1, v18, p_output_token, 0, v29, a8);
        if (v21)
        {
LABEL_34:
          if (p_output_token)
          {
            gss_release_buffer(minor_status, p_output_token);
          }

          free_NegotiationToken(&v35);
          if (!v21)
          {
            _gss_spnego_fixup_ntlm(v18);
            if (a6)
            {
              if (*(v18 + 56))
              {
                v30 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004092E30F56uLL);
                if (v30)
                {
                  v30[4] = *(v18 + 56);
                  *(v18 + 56) = 0;
                  *a6 = v30;
                }
              }
            }
          }

          if (a7)
          {
            *a7 = *(v18 + 32);
          }

          if (a9)
          {
            *a9 = *(v18 + 48);
          }

          if (a10)
          {
            *a10 = *(v18 + 52);
          }

          if (v21 > 1)
          {
            _gss_spnego_internal_delete_sec_context(minor_status, a2, 0);
            return v21;
          }

          goto LABEL_44;
        }

LABEL_33:
        v21 = v27;
        goto LABEL_34;
      }
    }

    else
    {
      v28 = v31;
    }

    if (!(*(v18 + 64) & (v20 == 1) | (v20 != 0) & (*(v18 + 49) >> 4)) && !v28)
    {
      goto LABEL_33;
    }

    goto LABEL_29;
  }

  *a1 = v19;
  return 589824;
}

uint64_t select_mech(OM_uint32 *a1, uint64_t a2, int a3, const gss_OID_desc **a4, const gss_OID_desc **a5)
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = 0;
  *&a.length = 0;
  minor_status = 0;
  if (der_put_oid())
  {
    return 589824;
  }

  a.length = v22;
  a.elements = &v23[-v22 + 64];
  if (gss_oid_equal(&a, &__gss_spnego_mechanism_oid_desc))
  {
    return 0x10000;
  }

  *a1 = 0;
  v11 = gss_oid_equal(&a, &_gss_spnego_mskrb_mechanism_oid_desc) ? &_gss_spnego_krb5_mechanism_oid_desc : &a;
  v12 = _gss_mg_support_mechanism(v11);
  *a4 = v12;
  if (!v12)
  {
    return 0x10000;
  }

  if (a5)
  {
    v13 = &_gss_spnego_mskrb_mechanism_oid_desc;
    if (!gss_oid_equal(&a, &_gss_spnego_mskrb_mechanism_oid_desc))
    {
      v13 = *a4;
    }

    *a5 = v13;
  }

  if (!a3)
  {
    return 0;
  }

  output_name = 0;
  v14 = MEMORY[0x23EE69BA0]();
  v15 = 0;
  if (!v14)
  {
    v15 = getenv("GSSAPI_SPNEGO_NAME");
  }

  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v16 = "host@";
  }

  v18.length = strlen(v16);
  v18.value = v16;
  v17 = gss_import_name(a1, &v18, &__gss_c_nt_hostbased_service_oid_desc, &output_name);
  if (v17)
  {
    return v17;
  }

  v9 = acceptor_approved(0, output_name, 0, *a4);
  gss_release_name(&minor_status, &output_name);
  return v9;
}

uint64_t acceptor_complete(OM_uint32 *a1, uint64_t a2, int *a3, uint64_t a4, void *a5, size_t *a6, uint64_t a7)
{
  v14 = _gss_spnego_require_mechlist_mic(a2);
  v15 = *(a2 + 64);
  v16 = v15 | 4;
  v17 = v15 & 0xFFFFFFFB | (4 * v14);
  if (a6)
  {
    v17 = v16;
  }

  *(a2 + 64) = v17;
  if ((~v17 & 5) != 0)
  {
    v18 = 0;
    *a3 = 0;
    return v18;
  }

  if (a4)
  {
    if (!a5 || *a5)
    {
      v18 = 0;
      *a3 = 1;
      return v18;
    }

    v20 = 1;
  }

  else
  {
    v20 = 0;
  }

  *a3 = v20;
  if (!a6 && (*(a2 + 64) & 0x80) != 0)
  {
    return 0;
  }

  v18 = _gss_spnego_verify_mechtypes_mic(a1, a2, a6);
  if (v18 && *a3)
  {
    send_reject(a1, a7);
  }

  return v18;
}

_DWORD *send_reject(_DWORD *a1, uint64_t a2)
{
  v10 = 0u;
  v11 = 0u;
  v9[0] = 2;
  result = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v9[1] = result;
  if (result)
  {
    v8 = 0;
    *result = 2;
    v10 = 0uLL;
    *&v11 = 0;
    v5 = length_NegotiationToken(v9);
    *a2 = v5;
    v6 = malloc_type_malloc(v5, 0xE4EA169CuLL);
    *(a2 + 8) = v6;
    if (v6)
    {
      v7 = encode_NegotiationToken(v6 + *a2 - 1, *a2, v9, &v8);
      *a1 = v7;
      if (v7)
      {
        free(*(a2 + 8));
        *(a2 + 8) = 0;
      }
    }

    else
    {
      *a1 = 12;
    }

    return free_NegotiationToken(v9);
  }

  else
  {
    *a1 = 12;
  }

  return result;
}

uint64_t send_accept(OM_uint32 *a1, uint64_t a2, void *a3, int a4, gss_buffer_desc_struct *a5, uint64_t a6)
{
  v26 = 2;
  v28 = 0u;
  v29 = 0u;
  v12 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  v27 = v12;
  if (v12)
  {
    message_token.length = 0;
    message_token.value = 0;
    v24 = 0;
    v13 = *(a2 + 64);
    if (v13)
    {
      v14 = a3 && a5 && *a3;
    }

    else
    {
      v14 = 1;
      if (a4 && (v13 & 4) != 0)
      {
        *v12 = 3;
LABEL_13:
        if (*(a2 + 16))
        {
          *&v28 = malloc_type_calloc(1uLL, 0x10uLL, 0x1010040466105CCuLL);
          if (!v28 || der_get_oid())
          {
            goto LABEL_36;
          }

          if (!a3)
          {
            goto LABEL_22;
          }

LABEL_19:
          if (*a3)
          {
            v16 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
            *(&v28 + 1) = v16;
            if (!v16)
            {
              goto LABEL_36;
            }

            v17 = a3[1];
            *v16 = *a3;
            *(*(&v28 + 1) + 8) = v17;
            *a3 = 0;
            a3[1] = 0;
LABEL_23:
            if (gss_oid_equal(*(a2 + 32), &__gss_ntlm_mechanism_oid_desc))
            {
              if (!a5 || (*(a2 + 64) & 0x80) != 0)
              {
                goto LABEL_32;
              }
            }

            else if (!a5)
            {
              goto LABEL_32;
            }

            mic = gss_get_mic(a1, *(a2 + 40), 0, a5, &message_token);
            if (mic != 0x100000)
            {
              v15 = mic;
              if (mic)
              {
LABEL_37:
                free_NegotiationToken(&v26);
                return v15;
              }

              v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
              *&v29 = v19;
              if (v19)
              {
                value = message_token.value;
                *v19 = message_token.length;
                *(v29 + 8) = value;
                goto LABEL_33;
              }

              gss_release_buffer(a1, &message_token);
LABEL_36:
              *a1 = 12;
              v15 = 851968;
              goto LABEL_37;
            }

LABEL_32:
            *&v29 = 0;
LABEL_33:
            v21 = length_NegotiationToken(&v26);
            *a6 = v21;
            v22 = malloc_type_malloc(v21, 0x688AC917uLL);
            *(a6 + 8) = v22;
            if (v22)
            {
              if (!encode_NegotiationToken(v22 + *a6 - 1, *a6, &v26, &v24))
              {
                v15 = *v27 != 0;
                goto LABEL_37;
              }

              free(*(a6 + 8));
              *(a6 + 8) = 0;
            }

            goto LABEL_36;
          }

LABEL_22:
          *(&v28 + 1) = 0;
          goto LABEL_23;
        }

LABEL_18:
        *&v28 = 0;
        if (!a3)
        {
          goto LABEL_22;
        }

        goto LABEL_19;
      }
    }

    *v12 = v14;
    if (!a4)
    {
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  *a1 = 12;
  return 851968;
}

uint64_t acceptor_approved(int a1, uint64_t a2, gss_cred_id_t cred_handle, const gss_OID_desc *a4)
{
  minor_status = 0;
  mechanisms = 0;
  if (cred_handle)
  {
    LODWORD(output_cred_handle) = 0;
    v5 = gss_inquire_cred(&minor_status, cred_handle, 0, 0, 0, &mechanisms);
    if (v5)
    {
      return v5;
    }

    v7 = gss_test_oid_set_member(&minor_status, a4, mechanisms, &output_cred_handle);
    gss_release_oid_set(&minor_status, &mechanisms);
    v6 = 851968;
    if (!v7 && output_cred_handle)
    {
      return 0;
    }
  }

  else
  {
    v6 = a2;
    output_cred_handle = 0;
    if (a2)
    {
      gss_create_empty_oid_set(&minor_status, &mechanisms);
      gss_add_oid_set_member(&minor_status, a4, &mechanisms);
      v6 = gss_acquire_cred(&minor_status, v6, 0xFFFFFFFF, mechanisms, 2, &output_cred_handle, 0, 0);
      gss_release_oid_set(&minor_status, &mechanisms);
      if (!v6)
      {
        gss_release_cred(&minor_status, &output_cred_handle);
        return 0;
      }
    }
  }

  return v6;
}

uint64_t _gss_spnego_alloc_sec_context(_DWORD *a1, void *a2)
{
  v4 = malloc_type_calloc(1uLL, 0x98uLL, 0x10A0040585C2CE9uLL);
  if (v4)
  {
    v5 = v4;
    *(v4 + 7) = 0;
    *v4 = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *(v4 + 32) &= 0xFFB0u;
    pthread_mutex_init((v4 + 72), 0);
    result = 0;
    *a2 = v5;
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return result;
}

uint64_t _gss_spnego_internal_delete_sec_context(OM_uint32 *a1, uint64_t *a2, void *a3)
{
  *a1 = 0;
  if (!a2)
  {
    return 0x80000;
  }

  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  v4 = *a2;
  *a2 = 0;
  if (!v4)
  {
    return 0x80000;
  }

  v5 = *(v4 + 8);
  if (v5)
  {
    free(v5);
  }

  minor_status = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  gss_release_name(&minor_status, (v4 + 136));
  gss_release_name(&minor_status, (v4 + 56));
  if (*(v4 + 40))
  {
    v6 = gss_delete_sec_context(a1, (v4 + 40), 0);
    *(v4 + 40) = 0;
  }

  else
  {
    v6 = 0;
  }

  pthread_mutex_unlock((v4 + 72));
  pthread_mutex_destroy((v4 + 72));
  free(v4);
  return v6;
}

uint64_t _gss_spnego_fixup_ntlm(uint64_t a1)
{
  result = gss_oid_equal(*(a1 + 32), &__gss_ntlm_mechanism_oid_desc);
  if (result)
  {
    data_set = 0;
    minor_status = 0;
    gss_inquire_sec_context_by_oid(&minor_status, *(a1 + 40), &__gss_c_ntlm_reset_keys_oid_desc, &data_set);
    return gss_release_buffer_set(&minor_status, &data_set);
  }

  return result;
}

BOOL _gss_spnego_require_mechlist_mic(uint64_t a1)
{
  data_set = 0;
  v1 = *(a1 + 64);
  if ((v1 & 8) != 0)
  {
    return 1;
  }

  if ((v1 & 0x10) != 0)
  {
    return 0;
  }

  minor_status = 0;
  if (!gss_inquire_sec_context_by_oid(&minor_status, *(a1 + 40), &__gss_c_peer_has_updated_spnego_oid_desc, &data_set))
  {
    gss_release_buffer_set(&minor_status, &data_set);
  }

  v3 = (*(a1 + 64) & 2) == 0 || gss_oid_equal(*(a1 + 32), &__gss_ntlm_mechanism_oid_desc) == 0;
  if (gss_oid_equal(*(a1 + 32), *(a1 + 16)) || gss_oid_equal(*(a1 + 32), &_gss_spnego_krb5_mechanism_oid_desc) && gss_oid_equal(*(a1 + 16), &_gss_spnego_mskrb_mechanism_oid_desc))
  {
    *(a1 + 64) |= 0x80u;
  }

  return v3;
}

uint64_t _gss_spnego_indicate_mechtypelist(OM_uint32 *minor_status, uint64_t a2, unsigned int (*a3)(uint64_t, uint64_t, gss_cred_id_t, gss_OID_desc *), uint64_t a4, int a5, gss_cred_id_t cred_handle, uint64_t a7, uint64_t **a8)
{
  *present = 0;
  mechanisms = 0;
  *a7 = 0;
  *(a7 + 8) = 0;
  if (cred_handle)
  {
    v16 = gss_inquire_cred(minor_status, cred_handle, 0, 0, 0, &mechanisms);
  }

  else
  {
    v16 = gss_indicate_mechs(minor_status, &mechanisms);
  }

  v17 = v16;
  if (v16)
  {
    return v17;
  }

  if (!mechanisms->count)
  {
    *minor_status = 2;
    gss_release_oid_set(minor_status, &mechanisms);
    return 851968;
  }

  v19 = 0;
  if (!gss_test_oid_set_member(&present[1], &__gss_krb5_mechanism_oid_desc, mechanisms, present) && present[0])
  {
    if (a3(a4, a2, cred_handle, &__gss_krb5_mechanism_oid_desc))
    {
      v19 = 0;
    }

    else
    {
      v20 = add_mech_type(&__gss_krb5_mechanism_oid_desc, a5, a7);
      v21 = &_gss_spnego_mskrb_mechanism_oid_desc;
      if (!a5)
      {
        v21 = &__gss_krb5_mechanism_oid_desc;
      }

      if (v20 >= 0x10000)
      {
        v19 = 0;
      }

      else
      {
        v19 = v21;
      }

      add_mech_type(&__gss_appl_lkdc_supported_oid_desc, 0, a7);
    }
  }

  v22 = mechanisms;
  if (!mechanisms->count)
  {
    v17 = 0;
    goto LABEL_31;
  }

  v31 = a8;
  v32 = v19;
  v30 = a5;
  v23 = 0;
  v24 = 0;
  while (1)
  {
    v25 = gss_oid_equal(&v22->elements[v23], &__gss_spnego_mechanism_oid_desc);
    v22 = mechanisms;
    if (!v25)
    {
      v26 = gss_oid_equal(&mechanisms->elements[v23], &__gss_krb5_mechanism_oid_desc);
      v22 = mechanisms;
      if (!v26)
      {
        v27 = gss_oid_equal(&mechanisms->elements[v23], &__gss_netlogon_mechanism_oid_desc);
        v22 = mechanisms;
        if (!v27)
        {
          v28 = a3(a4, a2, cred_handle, &mechanisms->elements[v23]);
          v22 = mechanisms;
          if (!v28)
          {
            break;
          }
        }
      }
    }

LABEL_27:
    ++v24;
    ++v23;
    if (v24 >= v22->count)
    {
      v17 = 0;
      goto LABEL_29;
    }
  }

  v29 = add_mech_type(&mechanisms->elements[v23], v30, a7);
  if (!v29)
  {
    v22 = mechanisms;
    if (!v32)
    {
      v32 = &mechanisms->elements[v23];
    }

    goto LABEL_27;
  }

  *minor_status = v29;
  v17 = 851968;
LABEL_29:
  a8 = v31;
  v19 = v32;
LABEL_31:
  if (*a7)
  {
    if (a8)
    {
      *a8 = _gss_mg_support_mechanism(v19);
    }

    gss_release_oid_set(minor_status, &mechanisms);
  }

  else
  {
    gss_release_oid_set(minor_status, &mechanisms);
    *minor_status = 0;
    return 0x10000;
  }

  return v17;
}

uint64_t add_mech_type(gss_const_OID a, int a2, unsigned int *a3)
{
  v7[0] = 0;
  v7[1] = 0;
  if (!a2 || !gss_oid_equal(a, &_gss_spnego_krb5_mechanism_oid_desc))
  {
    goto LABEL_5;
  }

  oid = der_get_oid();
  if (oid)
  {
    return oid;
  }

  v5 = add_MechTypeList(a3, v7);
  free_MechType(v7);
  if (!v5)
  {
LABEL_5:
    oid = der_get_oid();
    if (!oid)
    {
      v5 = add_MechTypeList(a3, v7);
      free_MechType(v7);
      return v5;
    }

    return oid;
  }

  return v5;
}

uint64_t _gss_spnego_verify_mechtypes_mic(OM_uint32 *minor_status, gss_buffer_t message_buffer, size_t *a3)
{
  if ((message_buffer[4].length & 0x40) != 0)
  {
    *minor_status = 0;
    return 2;
  }

  else
  {
    v5 = a3[1];
    v12.length = *a3;
    v12.value = v5;
    v6 = gss_verify_mic(minor_status, message_buffer[2].value, message_buffer, &v12, 0);
    if (!v6)
    {
LABEL_5:
      result = 0;
      LOWORD(message_buffer[4].length) |= 0x40u;
      *minor_status = 0;
      return result;
    }

    if (v6 == 0x100000)
    {
      _gss_mg_log(10, "mech doesn't support MIC, allowing anyway");
      goto LABEL_5;
    }

    return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 589824, *minor_status, "SPNEGO peer sent invalid mechListMIC", v7, v8, v9, v10);
  }
}

uint64_t _gss_spnego_process_context_token(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct *a3)
{
  if (!a2)
  {
    return 0x80000;
  }

  v9 = a2;
  pthread_mutex_lock((a2 + 72));
  v6 = gss_process_context_token(a1, *(a2 + 40), a3);
  if (v6)
  {
    v7 = v6;
    pthread_mutex_unlock((a2 + 72));
  }

  else
  {
    *(a2 + 40) = 0;
    return _gss_spnego_internal_delete_sec_context(a1, &v9, 0);
  }

  return v7;
}

uint64_t _gss_spnego_delete_sec_context(OM_uint32 *a1, uint64_t *a2, void *a3)
{
  if (!a2 || !*a2)
  {
    return 0x80000;
  }

  pthread_mutex_lock((*a2 + 72));

  return _gss_spnego_internal_delete_sec_context(a1, a2, a3);
}

uint64_t _gss_spnego_context_time(OM_uint32 *a1, uint64_t a2, OM_uint32 *a3)
{
  *a1 = 0;
  if (a2 && (v3 = *(a2 + 40)) != 0)
  {
    return gss_context_time(a1, v3, a3);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_get_mic(OM_uint32 *a1, uint64_t a2, gss_qop_t a3, gss_buffer_desc_struct *a4, gss_buffer_desc_struct *a5)
{
  *a1 = 0;
  if (a2 && (v5 = *(a2 + 40)) != 0)
  {
    return gss_get_mic(a1, v5, a3, a4, a5);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_verify_mic(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct *a3, gss_buffer_desc_struct *a4, gss_qop_t *a5)
{
  *a1 = 0;
  if (a2 && (v5 = *(a2 + 40)) != 0)
  {
    return gss_verify_mic(a1, v5, a3, a4, a5);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_wrap(OM_uint32 *a1, uint64_t a2, int a3, gss_qop_t a4, gss_buffer_desc_struct *a5, int *a6, gss_buffer_desc_struct *a7)
{
  *a1 = 0;
  if (a2 && (v7 = *(a2 + 40)) != 0)
  {
    return gss_wrap(a1, v7, a3, a4, a5, a6, a7);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_unwrap(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct *a3, gss_buffer_desc_struct *a4, int *a5, gss_qop_t *a6)
{
  *a1 = 0;
  if (a2 && (v6 = *(a2 + 40)) != 0)
  {
    return gss_unwrap(a1, v6, a3, a4, a5, a6);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_compare_name(int a1, gss_const_OID a, gss_const_OID b, _DWORD *a4)
{
  *a4 = 0;
  if (gss_oid_equal(a, b))
  {
    v7 = *&a[1].length;
    if (v7 == *&b[1].length && !memcmp(a[1].elements, b[1].elements, v7))
    {
      *a4 = 1;
    }
  }

  return 0;
}

uint64_t _gss_spnego_display_name(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct *a3, gss_OID *a4)
{
  *a1 = 0;
  if (a2 && (v4 = *(a2 + 32)) != 0)
  {
    return gss_display_name(a1, v4, a3, a4);
  }

  else
  {
    return 851968;
  }
}

uint64_t _gss_spnego_import_name(_DWORD *a1, uint64_t a2, const void **a3, size_t **a4)
{
  *a1 = 0;
  v8 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004092E30F56uLL);
  if (v8)
  {
    v9 = v8;
    if (_gss_copy_oid(a1, a3, v8))
    {
      free(v9);
    }

    else
    {
      result = _gss_copy_buffer(a1, a2, v9 + 2);
      if (!result)
      {
        v9[4] = 0;
        *a4 = v9;
        return result;
      }

      v11 = v9;
      _gss_spnego_release_name(a1, &v11);
    }
  }

  else
  {
    *a1 = 12;
  }

  return 851968;
}

uint64_t _gss_spnego_release_name(_DWORD *a1, uint64_t *a2)
{
  *a1 = 0;
  v2 = *a2;
  if (*a2)
  {
    minor_status = 0;
    _gss_free_oid(&minor_status, v2);
    gss_release_buffer(&minor_status, (v2 + 16));
    if (*(v2 + 32))
    {
      gss_release_name(&minor_status, (v2 + 32));
    }

    free(v2);
    *a2 = 0;
  }

  return 0;
}

uint64_t _gss_spnego_export_name(OM_uint32 *a1, uint64_t a2, gss_buffer_desc_struct *a3)
{
  *a1 = 0;
  if (a2 && (v3 = *(a2 + 32)) != 0)
  {
    return gss_export_name(a1, v3, a3);
  }

  else
  {
    return 0x20000;
  }
}

uint64_t _gss_spnego_inquire_context(OM_uint32 *a1, uint64_t a2, gss_name_t *a3, void *a4, OM_uint32 *a5, gss_OID *a6, OM_uint32 *a7, int *a8, int *xopen)
{
  *a1 = 0;
  if (!a2)
  {
    return 0x80000;
  }

  v9 = *(a2 + 40);
  if (!v9)
  {
    return 0x80000;
  }

  minor_status = 0;
  targ_name = 0;
  src_name = 0;
  result = gss_inquire_context(a1, v9, &src_name, &targ_name, a5, a6, a7, a8, xopen);
  if (!result)
  {
    if (a3)
    {
      v14 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004092E30F56uLL);
      if (!v14)
      {
LABEL_14:
        gss_release_name(&minor_status, &targ_name);
        gss_release_name(&minor_status, &src_name);
        *a1 = 12;
        return 851968;
      }

      *(v14 + 4) = src_name;
      *a3 = v14;
      if (a4)
      {
LABEL_9:
        v15 = malloc_type_calloc(1uLL, 0x28uLL, 0x10A004092E30F56uLL);
        if (v15)
        {
          v16 = v15;
          result = 0;
          v16[4] = targ_name;
          *a4 = v16;
          return result;
        }

        gss_release_name(a1, a3);
        goto LABEL_14;
      }
    }

    else
    {
      gss_release_name(&minor_status, &src_name);
      if (a4)
      {
        goto LABEL_9;
      }
    }

    gss_release_name(&minor_status, &targ_name);
    return 0;
  }

  return result;
}

uint64_t _gss_spnego_wrap_size_limit(OM_uint32 *a1, uint64_t a2, int a3, gss_qop_t a4, OM_uint32 a5, OM_uint32 *a6)
{
  *a1 = 0;
  if (a2 && (v6 = *(a2 + 40)) != 0)
  {
    return gss_wrap_size_limit(a1, v6, a3, a4, a5, a6);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_export_sec_context(OM_uint32 *a1, uint64_t *a2, gss_buffer_desc_struct *a3)
{
  *a1 = 0;
  if (!a2)
  {
    return 0x80000;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0x80000;
  }

  pthread_mutex_lock((v3 + 72));
  if (*(v3 + 40))
  {
    v6 = gss_export_sec_context(a1, (v3 + 40), a3);
  }

  else
  {
    v6 = 0x80000;
  }

  pthread_mutex_unlock((v3 + 72));
  return v6;
}

uint64_t _gss_spnego_import_sec_context(OM_uint32 *a1, gss_buffer_desc_struct *a2, uint64_t *a3)
{
  v10 = 0;
  v9 = 0;
  v6 = _gss_spnego_alloc_sec_context(a1, &v9);
  if (!v6)
  {
    v7 = v9;
    pthread_mutex_lock((v9 + 72));
    v6 = gss_import_sec_context(a1, a2, (v7 + 40));
    if (v6)
    {
      _gss_spnego_internal_delete_sec_context(&v10, a3, 0);
    }

    else
    {
      *(v7 + 64) |= 1u;
      pthread_mutex_unlock((v7 + 72));
      *a3 = v7;
    }
  }

  return v6;
}

uint64_t _gss_spnego_inquire_mechs_for_name(OM_uint32 *a1, int a2, gss_OID_set *oid_set)
{
  empty_oid_set = gss_create_empty_oid_set(a1, oid_set);
  if (!empty_oid_set)
  {
    empty_oid_set = gss_add_oid_set_member(a1, &__gss_spnego_mechanism_oid_desc, oid_set);
    if (empty_oid_set)
    {
      minor_status = 0;
      gss_release_oid_set(&minor_status, oid_set);
    }
  }

  return empty_oid_set;
}

uint64_t _gss_spnego_wrap_iov(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, int a7)
{
  *a1 = 0;
  if (a2 && (v7 = *(a2 + 40)) != 0)
  {
    return __ApplePrivate_gss_wrap_iov(a1, v7, a3, a4, a5, a6, a7);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_unwrap_iov(_DWORD *a1, uint64_t a2, _DWORD *a3, _DWORD *a4, uint64_t a5, int a6)
{
  *a1 = 0;
  if (a2 && (v6 = *(a2 + 40)) != 0)
  {
    return __ApplePrivate_gss_unwrap_iov(a1, v6, a3, a4, a5, a6);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_wrap_iov_length(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, uint64_t a6, int a7)
{
  *a1 = 0;
  if (a2 && (v7 = *(a2 + 40)) != 0)
  {
    return __ApplePrivate_gss_wrap_iov_length(a1, v7, a3, a4, a5, a6, a7);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_inquire_sec_context_by_oid(OM_uint32 *a1, uint64_t a2, gss_OID_desc_struct *a3, gss_buffer_set_t *a4)
{
  *a1 = 0;
  if (a2 && (v4 = *(a2 + 40)) != 0)
  {
    return gss_inquire_sec_context_by_oid(a1, v4, a3, a4);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_set_sec_context_option(OM_uint32 *a1, uint64_t *a2, gss_OID_desc_struct *a3, gss_buffer_desc_struct *a4)
{
  *a1 = 0;
  if (a2 && (v4 = *a2) != 0 && (v6 = *(v4 + 40), v5 = (v4 + 40), v6))
  {
    return gss_set_sec_context_option(a1, v5, a3, a4);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_pseudo_random(OM_uint32 *a1, uint64_t a2, int a3, gss_buffer_desc_struct *a4, ssize_t a5, gss_buffer_desc_struct *a6)
{
  *a1 = 0;
  if (a2 && (v6 = *(a2 + 40)) != 0)
  {
    return gss_pseudo_random(a1, v6, a3, a4, a5, a6);
  }

  else
  {
    return 0x80000;
  }
}

uint64_t _gss_spnego_init_sec_context(_DWORD *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, unsigned int a6, unsigned int a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13)
{
  v18 = *a3;
  if (!*a3)
  {
    v19 = _gss_spnego_alloc_sec_context(a1, a3);
    if (WORD1(v19))
    {
      return v19;
    }

    v18 = *a3;
    *(*a3 + 144) = spnego_initial;
  }

  pthread_mutex_lock((v18 + 72));
  v20 = *(v18 + 144);
  while (1)
  {
    v21 = (v20)(a1, a2, v18, a4, a5, a6, a7, a8, a9, a11, a12, a13);
    v19 = v21;
    if (v21)
    {
      break;
    }

    v20 = *(v18 + 144);
    if (v20 == step_completed_0 || *a11)
    {
      goto LABEL_10;
    }
  }

  if (v21 >= 0x10000)
  {
    v26 = 0;
    _gss_spnego_internal_delete_sec_context(&v26, a3, 0);
    return v19;
  }

LABEL_10:
  pthread_mutex_unlock((v18 + 72));
  if (a10)
  {
    *a10 = *(v18 + 32);
  }

  return v19;
}

uint64_t spnego_initial(OM_uint32 *a1, gss_cred_id_t_desc_struct *a2, uint64_t a3, gss_const_OID input_name_type, int a5, int a6, int a7, uint64_t a8, uint64_t a9, gss_buffer_t output_token, _DWORD *a11, _DWORD *a12)
{
  v45 = 0;
  *a1 = 0;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  if (!input_name_type)
  {
    return 0x20000;
  }

  minor_status = 0;
  input_token.length = 0;
  input_token.value = 0;
  *(a3 + 64) |= 2u;
  v18 = gss_import_name(&minor_status, &input_name_type[1], input_name_type, (a3 + 136));
  if (v18 >= 0x10000 || (LODWORD(v48) = 1, v38 = 0u, v39 = 0u, v40 = 0u, v41 = 0, v42 = 0u, v43 = 0, *(&v38 + 1) = *(a3 + 136), LODWORD(v38) = a6, LODWORD(v39) = a7, *(&v39 + 1) = a8, v18 = _gss_spnego_indicate_mechtypelist(&minor_status, *(&v38 + 1), initiator_approved, &v38, 0, a2, &v48 + 8, (a3 + 16)), v18 >= 0x10000))
  {
    v24 = v18;
    *a1 = minor_status;
  }

  else
  {
    *(&v49 + 1) = 0;
    v19 = *(&v42 + 1);
    if (*(&v42 + 1))
    {
      buffer = v41;
      *(a3 + 48) = v42;
      *(a3 + 32) = *(&v40 + 1);
      *(a3 + 40) = v19;
      *(a3 + 64) = ((v43 & 1) << 8) | *(a3 + 64) & 0xFEFF;
      length = buffer.length;
      if (buffer.length)
      {
        v21 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
        *&v50 = v21;
        if (!v21 || (*v21 = length, v22 = malloc_type_malloc(length, 0xC1F38774uLL), *(v50 + 8) = v22, (v23 = *(v50 + 8)) == 0) && buffer.length)
        {
          free_NegotiationToken(&v48);
          gss_release_buffer(&minor_status, &buffer);
          *a1 = 12;
          return 851968;
        }

        memcpy(v23, buffer.value, buffer.length);
        gss_release_buffer(&minor_status, &buffer);
      }

      else
      {
        *&v50 = 0;
      }

      *(&v50 + 1) = 0;
      v37[1] = v49;
      v37[0] = DWORD2(v48);
      v29 = length_MechTypeList(v37);
      *a3 = v29;
      v30 = malloc_type_malloc(v29, 0xFFCAC5DDuLL);
      *(a3 + 8) = v30;
      if (!v30)
      {
        v32 = 12;
        goto LABEL_19;
      }

      v31 = encode_MechTypeList(v30 + *a3 - 1, *a3, v37, &v45);
      if (v31)
      {
        v32 = v31;
        free(*(a3 + 8));
        *(a3 + 8) = 0;
LABEL_19:
        *a1 = v32;
LABEL_20:
        free_NegotiationToken(&v48);
        return 851968;
      }

      v34 = length_NegotiationToken(&v48);
      input_token.length = v34;
      v35 = malloc_type_malloc(v34, 0x3FD10915uLL);
      input_token.value = v35;
      if (!v35)
      {
        goto LABEL_20;
      }

      v36 = v35;
      if (encode_NegotiationToken(v35 + v34 - 1, v34, &v48, &v45))
      {
        free(v36);
        goto LABEL_20;
      }

      free_NegotiationToken(&v48);
      if (v34 != v45)
      {
        abort();
      }

      v24 = gss_encapsulate_token(&input_token, &__gss_spnego_mechanism_oid_desc, output_token);
      free(input_token.value);
      if (!v24)
      {
        if (a11)
        {
          *a11 = *(a3 + 48);
        }

        if (a12)
        {
          *a12 = *(a3 + 52);
        }

        *(a3 + 144) = spnego_reply;
        return 1;
      }
    }

    else
    {
      free_NegotiationToken(&v48);
      *a1 = 0;
      return gss_mg_set_error_string(0, 0x80000, 0, "SPNEGO could not find a prefered mechanism", v25, v26, v27, v28);
    }
  }

  return v24;
}

uint64_t initiator_approved(uint64_t a1, int a2, gss_cred_id_t initiator_cred_handle, gss_OID input_mech_type)
{
  minor_status = 0;
  context_handle = 0;
  buffer.length = 0;
  buffer.value = 0;
  actual_mech_type = 0;
  ret_flags = 0;
  inited = gss_init_sec_context(&minor_status, initiator_cred_handle, &context_handle, *(a1 + 8), input_mech_type, *a1, *(a1 + 16), *(a1 + 24), 0, &actual_mech_type, &buffer, &ret_flags, 0);
  if (inited >= 0x10000)
  {
    v7 = 0x10000;
    gss_mg_collect_error(input_mech_type, 0x10000, minor_status);
  }

  else
  {
    if (*(a1 + 32))
    {
      gss_release_buffer(&minor_status, &buffer);
      gss_delete_sec_context(&minor_status, &context_handle, 0);
    }

    else
    {
      v8 = actual_mech_type;
      *(a1 + 32) = input_mech_type;
      *(a1 + 40) = v8;
      *(a1 + 48) = buffer;
      *(a1 + 64) = ret_flags;
      *(a1 + 72) = context_handle;
      if (!inited)
      {
        v7 = 0;
        *(a1 + 80) = 1;
        return v7;
      }
    }

    return 0;
  }

  return v7;
}

uint64_t spnego_reply(OM_uint32 *a1, gss_cred_id_t_desc_struct *a2, uint64_t a3, uint64_t a4, uint64_t a5, OM_uint32 a6, OM_uint32 a7, gss_channel_bindings_struct *a8, uint64_t *a9, void *a10, _DWORD *a11, _DWORD *a12)
{
  minor_status = 0;
  v44 = 0u;
  v45 = 0u;
  v43 = 0u;
  *a1 = 0;
  *a10 = 0;
  a10[1] = 0;
  buffer.length = 0;
  buffer.value = 0;
  v22 = decode_NegotiationToken(a9[1], *a9, &v43, 0);
  if (v22)
  {
    return v22;
  }

  if (v43 != 2)
  {
    free_NegotiationToken(&v43);
    *a1 = 0;
    return 0x10000;
  }

  if (!*(&v43 + 1) || **(&v43 + 1) == 2)
  {
LABEL_18:
    free_NegotiationToken(&v43);
    return 0x10000;
  }

  v23 = *(a3 + 24);
  if (!v23 && v44)
  {
    *&b.length = 0;
    b.elements = 0;
    *(a3 + 64) |= 0x200u;
    b.length = der_length_oid();
    b.elements = malloc_type_malloc(b.length, 0xC563005DuLL);
    if (b.elements)
    {
      if (!der_put_oid() && !b.length)
      {
        if (gss_oid_equal(&__gss_spnego_mechanism_oid_desc, &b))
        {
          free(b.elements);
          free_NegotiationToken(&v43);
          *a1 = 22;
          v24 = "SPNEGO acceptor picked SPNEGO??";
          return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 0x10000, 22, v24, v18, v19, v20, v21);
        }

        v38 = gss_oid_equal(*(a3 + 16), &b);
        v39 = *(a3 + 16);
        if (!v38)
        {
          if (!gss_oid_equal(v39, &__gss_krb5_mechanism_oid_desc) || !gss_oid_equal(&b, &_gss_spnego_mskrb_mechanism_oid_desc))
          {
            gss_delete_sec_context(&minor_status, (a3 + 40), 0);
            *(a3 + 40) = 0;
            v40 = _gss_mg_support_mechanism(&b);
            *(a3 + 24) = v40;
            if (!v40)
            {
              free(b.elements);
              free_NegotiationToken(&v43);
              *a1 = 22;
              v24 = "SPNEGO acceptor send supportedMech we don't support";
              return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 0x10000, 22, v24, v18, v19, v20, v21);
            }

            goto LABEL_71;
          }

          v39 = *(a3 + 16);
        }

        *(a3 + 24) = v39;
LABEL_71:
        free(b.elements);
        goto LABEL_14;
      }

      free(b.elements);
    }

    goto LABEL_18;
  }

  if (!v23)
  {
    free_NegotiationToken(&v43);
    *a1 = 22;
    v24 = "SPNEGO acceptor didn't send supportedMech";
    return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 0x10000, 22, v24, v18, v19, v20, v21);
  }

LABEL_14:
  if (!*(&v44 + 1))
  {
    if (*(a3 + 40))
    {
      goto LABEL_32;
    }

    *&b.length = 0;
    b.elements = 0;
LABEL_25:
    inited = gss_init_sec_context(&minor_status, a2, (a3 + 40), *(a3 + 136), *(a3 + 24), a6, a7, a8, &b, (a3 + 32), &buffer, (a3 + 48), (a3 + 52));
    v22 = inited;
    if (WORD1(inited))
    {
      free_NegotiationToken(&v43);
      gss_mg_collect_error(*(a3 + 24), v22, minor_status);
      *a1 = minor_status;
      return v22;
    }

    if (!inited)
    {
      *(a3 + 64) |= 1u;
    }

    v27 = *(&v43 + 1);
LABEL_29:
    v28 = *v27;
    goto LABEL_34;
  }

  if (**(&v44 + 1) || !*(a3 + 40))
  {
    *&b.length = **(&v44 + 1);
    b.elements = 0;
    b.elements = *(*(&v44 + 1) + 8);
    goto LABEL_25;
  }

LABEL_32:
  v27 = *(&v43 + 1);
  v28 = **(&v43 + 1);
  if (!**(&v43 + 1))
  {
    v33 = *(a3 + 64);
    if ((v33 & 0x100) != 0)
    {
      v33 |= 1u;
      *(a3 + 64) = v33;
    }

    if ((v33 & 1) == 0)
    {
      *a1 = 22;
      v24 = "SPNEGO acceptor send acceptor compete, but we are not complete yet";
      return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 0x10000, 22, v24, v18, v19, v20, v21);
    }

    v22 = 0;
    goto LABEL_29;
  }

  v22 = 0;
LABEL_34:
  v29 = *(a3 + 64);
  if (v28 == 3)
  {
    v29 |= 8u;
    *(a3 + 64) = v29;
  }

  if ((v29 & 0x41) != 1 || (v30 = _gss_spnego_require_mechlist_mic(a3), v31 = *(a3 + 64), LOBYTE(v29) = (4 * v30) | v31 & 0xFB, *(a3 + 64) = (4 * v30) | v31 & 0xFFFB, v45) && (LOBYTE(v29) = v31 | 4, *(a3 + 64) = v31 | 4, (v31 & 0x80) != 0) && *(&v44 + 1) && (v32 = der_heim_octet_string_cmp(), v29 = *(a3 + 64), !v32))
  {
    v29 &= ~4u;
    *(a3 + 64) = v29;
  }

  if ((v29 & 4) != 0 && v45)
  {
    v22 = _gss_spnego_verify_mechtypes_mic(a1, a3, v45);
    if (v22)
    {
      free_NegotiationToken(&v43);
      return v22;
    }

    v29 = *(a3 + 64);
  }

  v34 = **(&v43 + 1);
  if (v29)
  {
    if ((v29 & 0x80) != 0 && !v34)
    {
      v22 = 0;
      *(a3 + 144) = step_completed_0;
LABEL_59:
      if (*(a3 + 144) == step_completed_0 && !buffer.length)
      {
        goto LABEL_64;
      }

      goto LABEL_61;
    }

    v35 = (v29 & 0x44) == 4;
    v22 = v35;
    v36 = step_completed_0;
    if (v35)
    {
      v36 = wait_server_mic;
    }

    *(a3 + 144) = v36;
  }

  if (!v34)
  {
    goto LABEL_59;
  }

LABEL_61:
  reply = make_reply(a1, a3, &buffer, a10);
  if (reply)
  {
    v22 = reply;
  }

  else
  {
    v22 = v22;
  }

LABEL_64:
  free_NegotiationToken(&v43);
  gss_release_buffer(&minor_status, &buffer);
  if (a11)
  {
    *a11 = *(a3 + 48);
  }

  if (a12)
  {
    *a12 = *(a3 + 52);
  }

  return v22;
}

uint64_t wait_server_mic(OM_uint32 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, _DWORD *a11, _DWORD *a12)
{
  v26 = 0u;
  memset(v25, 0, sizeof(v25));
  v14 = decode_NegotiationToken(a9[1], *a9, v25, 0);
  if (v14)
  {
    v19 = v14;
    v20 = "Failed to decode NegotiationToken";
    return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 0x10000, v19, v20, v15, v16, v17, v18);
  }

  v21 = LODWORD(v25[0]) != 2 || *(&v25[0] + 1) == 0;
  if (v21 || **(&v25[0] + 1))
  {
    free_NegotiationToken(v25);
    *a1 = 22;
    v20 = "NegToken not accept_completed";
LABEL_9:
    v19 = 22;
    return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, 0x10000, v19, v20, v15, v16, v17, v18);
  }

  if (v26)
  {
    v22 = _gss_spnego_verify_mechtypes_mic(a1, a3, v26);
    free_NegotiationToken(v25);
    if (v22)
    {
      return v22;
    }
  }

  else
  {
    v24 = *(a3 + 64);
    free_NegotiationToken(v25);
    if ((v24 & 0x80) == 0)
    {
      *a1 = 22;
      v20 = "Waiting for MIC, but its missing in server request";
      goto LABEL_9;
    }
  }

  *(a3 + 64) |= 0x40u;
  *(a3 + 144) = step_completed_0;
  if (a11)
  {
    *a11 = *(a3 + 48);
  }

  if (a12)
  {
    *a12 = *(a3 + 52);
  }

  v22 = 0;
  *a1 = 0;
  return v22;
}

uint64_t make_reply(OM_uint32 *minor_status, gss_buffer_t message_buffer, void *a3, uint64_t a4)
{
  message_token.length = 0;
  message_token.value = 0;
  v27 = 0;
  v31 = 0u;
  v29 = 2uLL;
  v30 = 0uLL;
  *a4 = 0;
  *(a4 + 8) = 0;
  length = message_buffer[4].length;
  v9 = (length & 1) == 0 || (length & 0x44) == 4;
  if (*a3)
  {
    v11 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
    *(&v30 + 1) = v11;
    if (!v11)
    {
      goto LABEL_30;
    }

    v12 = a3[1];
    *v11 = *a3;
    *(*(&v30 + 1) + 8) = v12;
    *a3 = 0;
    a3[1] = 0;
    length = message_buffer[4].length;
  }

  if ((length & 0x21) == 1)
  {
    LOWORD(message_buffer[4].length) = length | 0x20;
    mic = gss_get_mic(minor_status, message_buffer[2].value, 0, message_buffer, &message_token);
    if (mic == 0x100000)
    {
      *&v31 = 0;
      LOWORD(message_buffer[4].length) &= ~4u;
    }

    else
    {
      v14 = mic;
      if (mic)
      {
        free_NegotiationToken(&v29);
        *minor_status = 12;
        return gss_mg_set_error_string(&__gss_spnego_mechanism_oid_desc, v14, 12, "SPNEGO failed to sign MIC", v22, v23, v24, v25);
      }

      v15 = malloc_type_calloc(1uLL, 0x10uLL, 0x108004057E67DB5uLL);
      *&v31 = v15;
      if (!v15)
      {
        gss_release_buffer(minor_status, &message_token);
        goto LABEL_30;
      }

      value = message_token.value;
      *v15 = message_token.length;
      *(v31 + 8) = value;
    }
  }

  else
  {
    *&v31 = 0;
  }

  if (gss_oid_equal(message_buffer[2].length, &__gss_ntlm_mechanism_oid_desc))
  {
    goto LABEL_20;
  }

  v17 = malloc_type_calloc(1uLL, 4uLL, 0x100004052888210uLL);
  *(&v29 + 1) = v17;
  if (!v17)
  {
LABEL_30:
    free_NegotiationToken(&v29);
    *minor_status = 12;
    return 851968;
  }

  *v17 = v9;
LABEL_20:
  v18 = length_NegotiationToken(&v29);
  *a4 = v18;
  v19 = malloc_type_malloc(v18, 0xAFC77B59uLL);
  *(a4 + 8) = v19;
  if (!v19)
  {
    v21 = 12;
    goto LABEL_24;
  }

  v20 = encode_NegotiationToken(v19 + *a4 - 1, *a4, &v29, &v27);
  if (v20)
  {
    v21 = v20;
    free(*(a4 + 8));
    *(a4 + 8) = 0;
LABEL_24:
    free_NegotiationToken(&v29);
    *minor_status = v21;
    return 851968;
  }

  free_NegotiationToken(&v29);
  if (v9)
  {
    return 1;
  }

  _gss_spnego_fixup_ntlm(message_buffer);
  return 0;
}

uint64_t _gss_ntlm_allocate_ctx(int *a1, uint64_t a2, void *a3)
{
  *a3 = 0;
  if (__ApplePrivate_gss_mo_get(&__gss_ntlm_mechanism_oid_desc, &__gss_c_ntlm_v2_oid_desc, 0))
  {
    v4 = malloc_type_calloc(1uLL, 0x2A0uLL, 0x10F204024BAB64EuLL);
    if (v4)
    {
      free(v4);
      result = 851968;
      v6 = 22;
    }

    else
    {
      result = 851968;
      v6 = 12;
    }
  }

  else
  {
    v6 = 0;
    result = 0x100000;
  }

  *a1 = v6;
  return result;
}

uint64_t _gss_ntlm_accept_sec_context(int *a1, uint64_t *a2, uint64_t a3, uint64_t *a4, uint64_t a5, void ***a6, gss_OID_desc **a7, void *a8, _DWORD *a9, _DWORD *a10, void *a11)
{
  v53 = *MEMORY[0x277D85DE8];
  v44 = 0;
  v45 = 0;
  *a8 = 0;
  a8[1] = 0;
  *a1 = 0;
  v11 = 851968;
  if (!a2 || !a4)
  {
    return v11;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (a11)
  {
    *a11 = 0;
  }

  v43 = 0;
  v18 = *a2;
  if (!*a2)
  {
    return _gss_ntlm_allocate_ctx(a1, a2, &v42);
  }

  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  v37 = 0;
  v34 = 0;
  v35 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v46 = 0u;
  v42 = v18;
  _gss_mg_log(1, "ntlm-asc-type3");
  v19 = a4[1];
  v44 = *a4;
  v45 = v19;
  v20 = heim_ntlm_decode_type3();
  if (v20 || (v20 = krb5_data_copy()) != 0)
  {
    v21 = v20;
LABEL_17:
    _gss_ntlm_delete_sec_context(a1, a2, 0);
    *a1 = v21;
    return 851968;
  }

  *a1 = 0;
  v23 = *(v18 + 8);
  if (!v23)
  {
    v11 = 851968;
LABEL_31:
    heim_ntlm_free_type3();
    v28 = &v43;
    goto LABEL_32;
  }

  v24 = 0;
  v25 = 0;
  v11 = 851968;
  do
  {
    v26 = *(*v18 + v24 + 8);
    if (v26)
    {
      v11 = (*(*(*v18 + v24) + 32))(a1, v18, v26, &v46, a3, &v35 + 4, &v35, &v40, &v34, &v38, &v36);
      _gss_mg_log(10, "ntlm-asc-type3: tried %s -> %d/%d", **(*v18 + v24), v11, *a1);
      v23 = *(v18 + 8);
      if (!v11)
      {
        break;
      }
    }

    ++v25;
    v24 += 16;
  }

  while (v25 < v23);
  if (v25 >= v23)
  {
    goto LABEL_31;
  }

  if ((v35 & 2) != 0 && !*(&v51 + 1))
  {
    _gss_mg_log(1, "ntlm-asc-type3 mic missing from reply");
    v27 = 80;
LABEL_37:
    *a1 = v27;
    return 851968;
  }

  _gss_ntlm_debug_key(10, "session key", v41, v40);
  if (v40)
  {
    if (*(&v51 + 1))
    {
      v29 = (*(v18 + 104) + *(&v51 + 1));
      memset(&ctx, 0, sizeof(ctx));
      *v29 = 0;
      v29[1] = 0;
      CCHmacInit(&ctx, 1u, v41, v40);
      CCHmacUpdate(&ctx, *(v18 + 72), *(v18 + 64));
      CCHmacUpdate(&ctx, *(v18 + 88), *(v18 + 80));
      CCHmacUpdate(&ctx, *(v18 + 104), *(v18 + 96));
      CCHmacFinal(&ctx, v29);
      if (ct_memcmp())
      {
        _gss_ntlm_debug_hex(10, "mic", &v52, 16);
        _gss_ntlm_debug_hex(10, "ntlm-asc-type3 mic invalid", v29, 16);
        free(v41);
        v27 = -1561745650;
        goto LABEL_37;
      }
    }
  }

  if ((v35 & 0x80000000000) != 0)
  {
    *(v18 + 28) |= 0x40u;
  }

  v30 = v37;
  *(v18 + 256) = v36;
  *(v18 + 264) = v30;
  if (!v34)
  {
    name = _gss_ntlm_create_name(a1, *(&v46 + 1), v47, 0);
    *(v18 + 216) = name;
    if (name)
    {
      goto LABEL_43;
    }

    free(v41);
    heim_ntlm_free_type3();
    v28 = a1;
LABEL_32:
    _gss_ntlm_delete_sec_context(v28, a2, 0);
    return v11;
  }

  _gss_ntlm_release_name(&v43, (v18 + 216));
  name = v34;
  *(v18 + 216) = v34;
LABEL_43:
  v32 = v39;
  if (v39)
  {
    if (v38 == 16)
    {
      *(name + 20) = *v39;
      *(name + 4) |= 4u;
    }

    free(v32);
    name = *(v18 + 216);
  }

  _gss_mg_log(1, "ntlm-asc-type3: %s\\%s", name[1], *name);
  if (a6)
  {
    _gss_ntlm_duplicate_name(&v43, *(v18 + 216), a6);
  }

  heim_ntlm_free_type3();
  v21 = krb5_data_copy();
  free(v41);
  if (v21)
  {
    if (a6)
    {
      _gss_ntlm_release_name(&v43, a6);
    }

    goto LABEL_17;
  }

  _gss_ntlm_set_keys(v18);
  _gss_ntlm_reset_seq(v18);
  if (a7)
  {
    *a7 = &__gss_ntlm_mechanism_oid_desc;
  }

  if (a10)
  {
    *a10 = -1;
  }

  *(v18 + 40) |= 1u;
  v11 = 0;
  if (a9)
  {
    *a9 = *(v18 + 28);
  }

  return v11;
}

uint64_t _gss_ntlm_have_cred(krb5_error_code *a1, const char **a2, void *a3)
{
  v35 = *MEMORY[0x277D85DE8];
  v29 = 0;
  v30 = 0;
  memset(uu, 0, sizeof(uu));
  inited = krb5_init_context(&v30);
  if (inited)
  {
    *a1 = inited;
    return 851968;
  }

  v9 = *MEMORY[0x277CBECE8];
  v10 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *a2, 0x8000100u);
  if (!v10)
  {
    heim_release();
    return 851968;
  }

  v11 = v10;
  v12 = CFStringCreateWithCString(v9, a2[1], 0x8000100u);
  if (!v12)
  {
    MutableCopy = 0;
    v19 = 0;
    goto LABEL_22;
  }

  v13 = *MEMORY[0x277D13148];
  keys[0] = *MEMORY[0x277D13160];
  keys[1] = v13;
  keys[2] = *MEMORY[0x277D13138];
  v14 = *MEMORY[0x277D13170];
  values[0] = *MEMORY[0x277D13158];
  values[1] = v14;
  values[2] = *MEMORY[0x277CBEEE8];
  v15 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v15)
  {
    _gss_ntlm_have_cred_cold_1();
  }

  v16 = v15;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v15);
  CFRelease(v16);
  if (CFStringGetLength(v11) >= 1)
  {
    CFDictionaryAddValue(MutableCopy, *MEMORY[0x277D13130], v11);
  }

  if (CFStringGetLength(v12) >= 1)
  {
    CFDictionaryAddValue(MutableCopy, *MEMORY[0x277D13100], v12);
  }

  v18 = HeimCredCopyQuery();
  v19 = v18;
  if (!v18)
  {
    goto LABEL_22;
  }

  if (!CFArrayGetCount(v18))
  {
    goto LABEL_22;
  }

  if (!CFArrayGetValueAtIndex(v19, 0))
  {
    goto LABEL_22;
  }

  UUID = HeimCredGetUUID();
  if (!UUID)
  {
    goto LABEL_22;
  }

  *uu = CFUUIDGetUUIDBytes(UUID);
  memset(out, 0, 37);
  uuid_unparse(uu, out);
  _gss_mg_log(1, "_gss_ntlm_have_cred  UUID(%s)", out);
  if (CFStringGetLength(v11) && CFStringGetLength(v12))
  {
    v21 = _gss_ntlm_duplicate_name(a1, a2, &v29);
    if (v21)
    {
      v7 = v21;
      goto LABEL_23;
    }

    v23 = v29;
    goto LABEL_38;
  }

  v22 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100405C7453BFuLL);
  v29 = v22;
  if (!v22)
  {
LABEL_22:
    v7 = 851968;
    goto LABEL_23;
  }

  v23 = v22;
  v24 = HeimCredCopyAttribute();
  if (v24)
  {
    v25 = v24;
    *v23 = rk_cfstring2cstring();
    CFRelease(v25);
  }

  v26 = HeimCredCopyAttribute();
  if (v26)
  {
    v27 = v26;
    *(v23 + 1) = rk_cfstring2cstring();
    CFRelease(v27);
  }

  if (!*v23 || !*(v23 + 1))
  {
    v28 = v23;
    _gss_ntlm_release_name(a1, &v28);
    heim_release();
    *a1 = 12;
    CFRelease(v11);
    v7 = 851968;
    goto LABEL_24;
  }

LABEL_38:
  v7 = 0;
  *(v23 + 4) |= 1u;
  *(v23 + 36) = *uu;
  *a3 = v23;
LABEL_23:
  heim_release();
  CFRelease(v11);
  if (v12)
  {
LABEL_24:
    CFRelease(v12);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  return v7;
}

uint64_t _gss_ntlm_acquire_cred(int *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, void *a6, void *a7, _DWORD *a8)
{
  *a1 = 0;
  *a6 = 0;
  if (a7)
  {
    *a7 = 0;
  }

  if (a8)
  {
    *a8 = -1;
  }

  if (!a2)
  {
    return 458752;
  }

  v15 = 0;
  v14 = 0;
  if ((a5 & 0xFFFFFFFD) == 0)
  {
    result = _gss_ntlm_allocate_ctx(a1, *(a2 + 8), &v14);
    if (result)
    {
      return result;
    }

    v13 = v14;
    _gss_ntlm_delete_sec_context(&v15, &v13, 0);
  }

  if (a5 > 1)
  {
    return 0;
  }

  v13 = 0;
  if ((*(a2 + 16) & 2) != 0)
  {
    result = _gss_ntlm_duplicate_name(a1, a2, &v13);
    if (result)
    {
      return result;
    }
  }

  else
  {
    result = _gss_ntlm_have_cred(a1, a2, &v13);
    if (result)
    {
      return result;
    }
  }

  result = 0;
  *a6 = v13;
  return result;
}

uint64_t _gss_ntlm_acquire_cred_ext(int a1, const char **a2, gss_const_OID a, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v37 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    return 851968;
  }

  v11 = gss_oid_equal(a, &__gss_c_cred_password_oid_desc);
  v12 = 851968;
  if (a2)
  {
    if (v11)
    {
      v32 = 0;
      memset(uu, 0, sizeof(uu));
      if (!krb5_init_context(&v32))
      {
        v13 = malloc_type_malloc(*a4 + 1, 0xE99CAD9FuLL);
        if (!v13 || (v14 = v13, memcpy(v13, *(a4 + 8), *a4), v14[*a4] = 0, heim_ntlm_nt_key(), v15 = strlen(v14), bzero(v14, v15), free(v14), v16 = *MEMORY[0x277CBECE8], (v17 = CFStringCreateWithCString(*MEMORY[0x277CBECE8], *a2, 0x8000100u)) == 0))
        {
          heim_release();
          return v12;
        }

        v18 = v17;
        v19 = CFStringCreateWithCString(v16, a2[1], 0x8000100u);
        if (v19)
        {
          v20 = CFDataCreate(v16, 0, 0);
          v21 = v20;
          if (v20)
          {
            v22 = *MEMORY[0x277D13148];
            keys[0] = *MEMORY[0x277D13160];
            keys[1] = v22;
            v23 = *MEMORY[0x277D13100];
            keys[2] = *MEMORY[0x277D13130];
            keys[3] = v23;
            keys[4] = *MEMORY[0x277D130D8];
            v24 = *MEMORY[0x277D13170];
            values[0] = *MEMORY[0x277D13158];
            values[1] = v24;
            values[2] = v18;
            values[3] = v19;
            values[4] = v20;
            v25 = CFDictionaryCreate(0, keys, values, 5, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
            if (!v25)
            {
              _gss_ntlm_acquire_cred_ext_cold_1();
            }

            v26 = v25;
            v27 = HeimCredCreate();
            if (v27)
            {
              UUID = HeimCredGetUUID();
              if (UUID)
              {
                *uu = CFUUIDGetUUIDBytes(UUID);
                memset(out, 0, 37);
                uuid_unparse(uu, out);
                _gss_mg_log(1, "_gss_ntlm_acquire_cred_ext name(%s) domain(%s) UUID(%s)", *a2, a2[1], out);
                heim_ntlm_free_buf();
                v29 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100405C7453BFuLL);
                if (v29)
                {
                  v30 = v29;
                  *v29 = strdup(*a2);
                  v12 = 0;
                  v30[1] = strdup(a2[1]);
                  *(v30 + 4) = 1;
                  *(v30 + 36) = *uu;
                  *a8 = v30;
                }

                else
                {
                  v12 = 851968;
                }
              }
            }

            goto LABEL_20;
          }

          v27 = 0;
        }

        else
        {
          v27 = 0;
          v21 = 0;
        }

        v26 = 0;
LABEL_20:
        heim_release();
        CFRelease(v18);
        if (v19)
        {
          CFRelease(v19);
        }

        if (v21)
        {
          CFRelease(v21);
        }

        if (v26)
        {
          CFRelease(v26);
        }

        if (v27)
        {
          CFRelease(v27);
        }
      }
    }
  }

  return v12;
}

uint64_t _gss_ntlm_add_cred(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, _DWORD *a10, _DWORD *a11)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (a11)
  {
    *a11 = 0;
  }

  return 0;
}

uint64_t _gss_ntlm_context_time(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  if (a3)
  {
    *a3 = -1;
  }

  return 0;
}

uint64_t _gss_ntlm_reset_seq(uint64_t result)
{
  if ((*(result + 38) & 8) != 0)
  {
    *(result + 272) = 0;
    *(result + 472) = 0;
  }

  return result;
}

uint64_t _gss_ntlm_set_keys(uint64_t result)
{
  v1 = *(result + 48);
  if (v1)
  {
    v2 = result;
    v3 = *(result + 36);
    v4 = *(result + 40);
    *(result + 40) = v4 | 4;
    if ((v3 & 0x20) != 0)
    {
      *(result + 28) |= 0x10u;
    }

    if ((v3 & 0x8010) != 0)
    {
      *(result + 28) |= 0x20u;
    }

    if ((v3 & 0x80000) != 0)
    {
      v5 = (v4 >> 1) & 1;
      _gss_ntlm_set_key(result + 272, (v4 & 2) == 0, v3 & 0x40000000, *(result + 56), v1);
      v7 = *(v2 + 48);
      v6 = *(v2 + 56);
      v8 = *(v2 + 36) & 0x40000000;

      return _gss_ntlm_set_key(v2 + 472, v5, v8, v6, v7);
    }

    else
    {
      hc_EVP_CIPHER_CTX_cleanup();
      hc_EVP_CIPHER_CTX_cleanup();
      hc_EVP_rc4();
      hc_EVP_CipherInit_ex();
      hc_EVP_rc4();

      return hc_EVP_CipherInit_ex();
    }
  }

  return result;
}

uint64_t _gss_ntlm_set_key(uint64_t a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  CCDigestCreate();
  CCDigestUpdate();
  CCDigestUpdate();
  CCDigestFinal();
  CCDigestReset();
  CCDigestUpdate();
  CCDigestUpdate();
  CCDigestFinal();
  CCDigestDestroy();
  hc_EVP_CIPHER_CTX_cleanup();
  hc_EVP_rc4();
  result = hc_EVP_CipherInit_ex();
  if (a3)
  {
    *(a1 + 176) = a1 + 8;
  }

  return result;
}

uint64_t _gss_ntlm_destroy_crypto(uint64_t result)
{
  if ((*(result + 40) & 4) != 0)
  {
    hc_EVP_CIPHER_CTX_cleanup();

    return hc_EVP_CIPHER_CTX_cleanup();
  }

  return result;
}

uint64_t _gss_ntlm_get_mic(_DWORD *a1, uint64_t a2, uint64_t a3, __int128 *a4, gss_buffer_desc_struct *a5)
{
  v15 = *MEMORY[0x277D85DE8];
  v11 = 1;
  v12 = *a4;
  v13 = 7;
  v14.length = 16;
  v14.value = malloc_type_malloc(0x10uLL, 0x9E899B6BuLL);
  if (v14.value)
  {
    minor_status = 0;
    mic_iov = get_mic_iov(a1, a2, &v13, &v11, 1);
    if (mic_iov)
    {
      gss_release_buffer(&minor_status, &v14);
    }

    else
    {
      *a5 = v14;
    }
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return mic_iov;
}

uint64_t get_mic_iov(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v25 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (*(a3 + 8) != 16)
  {
    get_mic_iov_cold_1();
  }

  v7 = *(a3 + 16);
  if (!v7)
  {
    get_mic_iov_cold_2();
  }

  LODWORD(v8) = a5;
  v10 = *(a2 + 36);
  if ((~v10 & 0x80010) == 0)
  {
    if ((*(a2 + 40) & 4) != 0)
    {
      v11 = *(a2 + 448);
      v12 = *(a2 + 272);
      *(a2 + 272) = v12 + 1;
      v2_sign_message((a2 + 456), v11, v12, a3, a4, a5);
      return 0;
    }

    return 0x100000;
  }

  if ((v10 & 0x10) == 0)
  {
    if ((v10 & 0x8000) != 0)
    {
      _gss_mg_encode_le_uint32(1, *(a3 + 16));
      _gss_mg_encode_le_uint32(0, v7 + 1);
      _gss_mg_encode_le_uint32(0, v7 + 2);
      _gss_mg_encode_le_uint32(0, v7 + 3);
      return 0;
    }

    return 0x100000;
  }

  if ((*(a2 + 40) & 4) == 0)
  {
    return 0x100000;
  }

  v14 = *(a2 + 272);
  *(a2 + 272) = v14 + 1;
  v15 = *(a3 + 16);
  _krb5_crc_init_table();
  if (v8 < 1)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    v17 = a4 + 16;
    v8 = v8;
    do
    {
      v18 = *(v17 - 16);
      v19 = v18 > 0xB;
      v20 = (1 << v18) & 0xA02;
      if (!v19 && v20 != 0)
      {
        v16 = _krb5_crc_update();
      }

      v17 += 24;
      --v8;
    }

    while (v8);
  }

  _gss_mg_encode_le_uint32(0, &v22);
  _gss_mg_encode_le_uint32(v16, &v23);
  _gss_mg_encode_le_uint32(v14, &v24);
  _gss_mg_encode_le_uint32(1, v15);
  hc_EVP_Cipher();
  return (CCRandomCopyBytes() != 0) << 20;
}

uint64_t _gss_ntlm_verify_mic(_DWORD *a1, uint64_t a2, __int128 *a3, __int128 *a4, _DWORD *a5)
{
  v10 = *MEMORY[0x277D85DE8];
  v6 = 1;
  v7 = *a3;
  v8 = 7;
  v9 = *a4;
  return verify_mic_iov(a1, a2, &v8, a5, &v6, 1);
}

uint64_t verify_mic_iov(_DWORD *a1, uint64_t a2, uint64_t a3, _DWORD *a4, uint64_t a5, int a6)
{
  LODWORD(v6) = a6;
  v25 = *MEMORY[0x277D85DE8];
  if (a4)
  {
    *a4 = 0;
  }

  *a1 = 0;
  if (*(a3 + 8) != 16)
  {
    return 393216;
  }

  v9 = *(a2 + 36);
  if ((~v9 & 0x80010) != 0)
  {
    if ((v9 & 0x10) != 0)
    {
      v21 = 0;
      if ((*(a2 + 40) & 4) == 0)
      {
        return 0x100000;
      }

      _gss_mg_decode_le_uint32(*(a3 + 16), &v21);
      if (v21 == 1)
      {
        hc_EVP_Cipher();
        _krb5_crc_init_table();
        if (v6 < 1)
        {
          v14 = 0;
        }

        else
        {
          v14 = 0;
          v15 = a5 + 16;
          v6 = v6;
          do
          {
            v16 = *(v15 - 16);
            v17 = v16 > 0xB;
            v18 = (1 << v16) & 0xA02;
            if (!v17 && v18 != 0)
            {
              v14 = _krb5_crc_update();
            }

            v15 += 24;
            --v6;
          }

          while (v6);
        }

        _gss_mg_decode_le_uint32(&v23, &v21);
        if (v21 == v14)
        {
          _gss_mg_decode_le_uint32(&v24, &v21);
          v20 = *(a2 + 448);
          if (v20 == v21)
          {
            v13 = 0;
            *(a2 + 448) = v20 + 1;
            return v13;
          }
        }
      }
    }

    else
    {
      if ((v9 & 0x8000) == 0)
      {
        return 0x100000;
      }

      v22 = 0;
      v12 = *(a3 + 16);
      _gss_mg_decode_le_uint32(v12, &v22);
      if (v22 == 1)
      {
        _gss_mg_decode_le_uint32(v12 + 1, &v22);
        if (!v22)
        {
          _gss_mg_decode_le_uint32(v12 + 2, &v22);
          v13 = 393216;
          if (!v22)
          {
            _gss_mg_decode_le_uint32(v12 + 3, &v22);
            if (v22)
            {
              return 393216;
            }

            else
            {
              return 0;
            }
          }

          return v13;
        }
      }
    }

    return 393216;
  }

  if ((*(a2 + 40) & 4) == 0)
  {
    return 0x100000;
  }

  v10 = *(a2 + 648);

  return v2_verify_message((a2 + 656), v10, 0, a3, a5, a6);
}

uint64_t _gss_ntlm_wrap_size_limit(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, unsigned int *a6)
{
  *a1 = 0;
  if ((*(a2 + 36) & 0x20) == 0)
  {
    return 0x100000;
  }

  result = 0;
  v7 = a5 - 16;
  if (a5 < 0x10)
  {
    v7 = 0;
  }

  *a6 = v7;
  return result;
}

uint64_t _gss_ntlm_wrap_iov(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, char a9)
{
  *a1 = 0;
  if (a5)
  {
    *a5 = 0;
  }

  if (!a6)
  {
    return 851968;
  }

  buffer = _gss_mg_find_buffer(a6, a7, 7);
  if (buffer || (buffer = _gss_mg_find_buffer(a6, a7, 2)) != 0)
  {
    v19 = buffer;
    if (buffer[1])
    {
      result = _gss_mg_allocate_buffer(a1, buffer, 0x10uLL);
      if (result)
      {
        return result;
      }
    }

    else
    {
      if (*(buffer + 1) <= 0xFuLL)
      {
        *a1 = -1765328194;
        return 851968;
      }

      *(buffer + 1) = 16;
    }

    v21 = a2[9];
    if ((~v21 & 0x80020) != 0)
    {
      if ((v21 & 0x20) != 0)
      {
        if (a7 >= 1)
        {
          v23 = a7;
          v24 = a6 + 8;
          do
          {
            if ((*(v24 - 8) | 8) == 9)
            {
              hc_EVP_Cipher();
            }

            v24 += 12;
            --v23;
          }

          while (v23);
        }

        return get_mic_iov(a1, a2, v19, a6, a7);
      }

      else
      {
        return 0x100000;
      }
    }

    else
    {
      v22 = a2[68];
      a2[68] = v22 + 1;

      return v2_seal_message(a2 + 114, v22, (a2 + 70), v19, a6, a7, a5);
    }
  }

  else
  {
    *a1 = -1561745656;

    return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, 851968, -1561745656, "iov header buffer missing", v15, v16, v17, v18);
  }
}

uint64_t v2_seal_message(void *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, _DWORD *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  if (a6 < 1)
  {
    return 851968;
  }

  v25 = a1;
  v26 = a2;
  v27 = &v24;
  v28 = a4;
  v11 = a6;
  MEMORY[0x28223BE20]();
  v13 = &v24 - v12;
  v14 = (&v24 - v12 + 8);
  v16 = (v15 + 8);
  v17 = v11;
  do
  {
    *v14 = 0;
    v14[1] = 0;
    v18 = *(v16 - 2);
    *(v14 - 2) = v18;
    if ((v18 | 8) == 9)
    {
      v19 = *v16;
      *v14 = *v16;
      v14[1] = malloc_type_calloc(1uLL, v19, 0xD0B7CF44uLL);
      hc_EVP_Cipher();
      if (a7)
      {
        *a7 = 1;
      }
    }

    v14 += 3;
    v16 += 3;
    --v17;
  }

  while (v17);
  if (*(v28 + 8) != 16)
  {
    v2_seal_message_cold_1();
  }

  v2_sign_message(v25, a3, v26, v28, a5, a6);
  v20 = (a5 + 16);
  v21 = (v13 + 16);
  do
  {
    if ((*(v20 - 8) | 8) == 9)
    {
      v22 = *v21;
      if (*v21)
      {
        memcpy(*v20, *v21, *(v21 - 1));
        free(v22);
      }
    }

    v20 += 3;
    v21 += 3;
    --v11;
  }

  while (v11);
  return 0;
}

uint64_t _gss_ntlm_wrap(_DWORD *a1, _DWORD *a2, uint64_t a3, uint64_t a4, size_t *a5, _DWORD *a6, gss_buffer_desc_struct *a7)
{
  v29 = *MEMORY[0x277D85DE8];
  v12 = *a5 + 16;
  a7->length = v12;
  v13 = malloc_type_malloc(v12, 0x608AD74AuLL);
  a7->value = v13;
  if (v13)
  {
    v23 = 1;
    v14 = a5[1];
    v24 = *a5;
    v25 = v13;
    memcpy(v13, v14, v24);
    v26 = 7;
    v15 = a7->value + *a5;
    v27 = 16;
    v28 = v15;
    v19 = _gss_ntlm_wrap_iov(a1, a2, v16, v17, a6, &v23, 2u, v18, v21);
    if (v19 >= 0x10000)
    {
      minor_status = 0;
      gss_release_buffer(&minor_status, a7);
    }
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return v19;
}

uint64_t _gss_ntlm_unwrap_iov(_DWORD *a1, _DWORD *a2, _DWORD *a3, _DWORD *a4, unsigned __int16 *a5, unsigned int a6, uint64_t a7, uint64_t a8, char a9)
{
  *a1 = 0;
  if (a3)
  {
    *a3 = 0;
  }

  if (a4)
  {
    *a4 = 0;
  }

  buffer = _gss_mg_find_buffer(a5, a6, 7);
  if (buffer || (buffer = _gss_mg_find_buffer(a5, a6, 2)) != 0)
  {
    v19 = buffer;
    if (*(buffer + 1) >= 0x10uLL)
    {
      v21 = a2[9];
      if ((~v21 & 0x80020) != 0)
      {
        if ((v21 & 0x20) != 0)
        {
          if (a6 >= 1)
          {
            v25 = a6;
            v26 = a5 + 8;
            do
            {
              if ((*(v26 - 8) | 8) == 9)
              {
                hc_EVP_Cipher();
              }

              v26 += 12;
              --v25;
            }

            while (v25);
          }

          return verify_mic_iov(a1, a2, v19, 0, a5, a6);
        }

        else
        {
          return 0x100000;
        }
      }

      else
      {
        v22 = a2[118];
        a2[118] = v22 + 1;
        if (a6 >= 1)
        {
          v23 = a6;
          v24 = a5 + 8;
          do
          {
            if ((*(v24 - 8) | 8) == 9)
            {
              hc_EVP_Cipher();
              if (a3)
              {
                *a3 = 1;
              }
            }

            v24 += 12;
            --v23;
          }

          while (v23);
        }

        return v2_verify_message(a2 + 164, (a2 + 120), v22, v19, a5, a6);
      }
    }

    else
    {
      return 393216;
    }
  }

  else
  {
    *a1 = -1561745656;

    return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, 851968, -1561745656, "iov tailer buffer missing", v15, v16, v17, v18);
  }
}

uint64_t _gss_ntlm_unwrap(_DWORD *a1, _DWORD *a2, uint64_t a3, gss_buffer_desc_struct *a4, _DWORD *a5, _DWORD *a6)
{
  v26 = *MEMORY[0x277D85DE8];
  v7 = *a3 - 16;
  if (*a3 < 0x10uLL)
  {
    return 589824;
  }

  a4->length = v7;
  v14 = malloc_type_malloc(v7, 0x2CCE4F60uLL);
  a4->value = v14;
  if (v14)
  {
    memcpy(v14, *(a3 + 8), a4->length);
    v21 = 1;
    v22 = *a4;
    v23 = 7;
    v15 = *(a3 + 8) + *a3 - 16;
    v24 = 16;
    v25 = v15;
    v8 = _gss_ntlm_unwrap_iov(a1, a2, a5, a6, &v21, 2u, v16, v17, v19);
    if (v8 >= 0x10000)
    {
      minor_status = 0;
      gss_release_buffer(&minor_status, a4);
    }
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return v8;
}

uint64_t _gss_ntlm_wrap_iov_length(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, _DWORD *a5, unsigned __int16 *a6, unsigned int a7, uint64_t a8, char a9)
{
  buffer = _gss_mg_find_buffer(a6, a7, 7);
  if (buffer)
  {
    v15 = 2;
LABEL_5:
    *(buffer + 1) = 16;
    v20 = _gss_mg_find_buffer(a6, a7, 9);
    if (v20)
    {
      *(v20 + 1) = 0;
    }

    v21 = _gss_mg_find_buffer(a6, a7, v15);
    if (v21)
    {
      *(v21 + 1) = 0;
    }

    if (a5)
    {
      *a5 = a3;
    }

    *a1 = 0;
    return 0;
  }

  buffer = _gss_mg_find_buffer(a6, a7, 2);
  if (buffer)
  {
    v15 = 7;
    goto LABEL_5;
  }

  *a1 = -1561745656;

  return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, 851968, -1561745656, "iov header buffer missing", v16, v17, v18, v19);
}

void _gss_ntlm_debug_hex(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4)
{
  if (_gss_mg_log_level(a1) && (rk_hex_encode() & 0x8000000000000000) == 0)
  {
    _gss_mg_log(a1, "%s %s", a2, 0);
    free(0);
  }
}

void _gss_ntlm_debug_key(uint64_t a1, const char *a2, uint64_t a3, unint64_t a4)
{
  if (_gss_mg_log_level(a1) && (rk_hex_encode() & 0x8000000000000000) == 0)
  {
    _gss_mg_log(a1, "%s %s", a2, 0);
    v6 = strlen(0);
    bzero(0, v6);
    free(0);
  }
}

uint64_t v2_sign_message(void *key, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  data[2] = *MEMORY[0x277D85DE8];
  v6 = *(a4 + 16);
  *v6 = 0;
  *(v6 + 8) = 0;
  data[0] = 0;
  data[1] = 0;
  if (*(a4 + 8) != 16)
  {
    v2_sign_message_cold_1();
  }

  LODWORD(v7) = a6;
  memset(&v17, 0, sizeof(v17));
  CCHmacInit(&v17, 1u, key, 0x10uLL);
  _gss_mg_encode_le_uint32(a3, data);
  CCHmacUpdate(&v17, data, 4uLL);
  if (v7 >= 1)
  {
    v7 = v7;
    v11 = (a5 + 16);
    do
    {
      v12 = *(v11 - 8);
      v13 = v12 > 0xB;
      v14 = (1 << v12) & 0xA03;
      if (!v13 && v14 != 0)
      {
        CCHmacUpdate(&v17, *v11, *(v11 - 1));
      }

      v11 += 3;
      --v7;
    }

    while (v7);
  }

  CCHmacFinal(&v17, data);
  memset(&v17, 0, sizeof(v17));
  _gss_mg_encode_le_uint32(1, v6);
  if (a2)
  {
    hc_EVP_Cipher();
  }

  else
  {
    *(v6 + 4) = data[0];
  }

  return _gss_mg_encode_le_uint32(a3, (v6 + 12));
}

uint64_t v2_verify_message(void *a1, uint64_t a2, unsigned int a3, uint64_t a4, uint64_t a5, int a6)
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = a3;
  v6 = 393216;
  if (*(a4 + 8) == 16)
  {
    v12[0] = 0;
    _gss_mg_decode_le_uint32((*(a4 + 16) + 12), &v13);
    LODWORD(v12[0]) = 7;
    v12[1] = 16;
    v12[2] = &v14;
    v2_sign_message(a1, a2, v13, v12, a5, a6);
    if (ct_memcmp())
    {
      return 393216;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

uint64_t _gss_ntlm_delete_sec_context(OM_uint32 *a1, uint64_t *a2, void *a3)
{
  if (a2)
  {
    v5 = *a2;
    v12 = *(*a2 + 16);
    *a2 = 0;
    v6 = *(v5 + 208);
    if (v6)
    {
      free(v6);
    }

    if (*(v5 + 120))
    {
      heim_ntlm_free_targetinfo();
    }

    v7 = *(v5 + 8);
    if (v7)
    {
      v8 = 0;
      for (i = 0; i < v7; ++i)
      {
        if (*(*v5 + v8 + 8))
        {
          (*(*(*v5 + v8) + 16))(a1);
          v7 = *(v5 + 8);
        }

        v8 += 16;
      }
    }

    if (*v5)
    {
      free(*v5);
    }

    if (*(v5 + 216))
    {
      _gss_ntlm_release_name(0, (v5 + 216));
    }

    if (*(v5 + 224))
    {
      _gss_ntlm_release_name(0, (v5 + 224));
    }

    v10 = *(v5 + 232);
    if (v10)
    {
      free(v10);
    }

    _gss_ntlm_destroy_crypto(v5);
    krb5_data_free();
    krb5_data_free();
    krb5_data_free();
    krb5_data_free();
    gss_release_buffer(a1, (v5 + 256));
    _gss_ntlm_release_cred(0, &v12);
    bzero(v5, 0x2A0uLL);
    free(v5);
  }

  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  *a1 = 0;
  return 0;
}

uint64_t _gss_ntlm_display_name(int *a1, const char **a2, void *a3, gss_OID_desc **a4)
{
  *a1 = 0;
  if (a4)
  {
    *a4 = &__gss_ntlm_mechanism_oid_desc;
  }

  if (!a3)
  {
    return 0;
  }

  v10 = 0;
  *a3 = 0;
  a3[1] = 0;
  if (a2)
  {
    v6 = asprintf(&v10, "%s@%s", *a2, a2[1]);
    result = 851968;
    v8 = 12;
    if ((v6 & 0x80000000) == 0)
    {
      v9 = v10;
      if (v10)
      {
        result = 0;
        *a3 = v6;
        a3[1] = v9;
        return result;
      }
    }
  }

  else
  {
    v8 = 0;
    result = 0x20000;
  }

  *a1 = v8;
  return result;
}

uint64_t _gss_ntlm_duplicate_name(_DWORD *a1, uint64_t a2, void *a3)
{
  v6 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100405C7453BFuLL);
  if (!v6 || ((v7 = strdup(*a2), *v6 = v7, v8 = strdup(*(a2 + 8)), *(v6 + 1) = v8, *(v6 + 4) = *(a2 + 16), *(v6 + 20) = *(a2 + 20), *(v6 + 36) = *(a2 + 36), v7) ? (v9 = v8 == 0) : (v9 = 1), v9))
  {
    v11 = v6;
    _gss_ntlm_release_name(a1, &v11);
    *a1 = 12;
    return 851968;
  }

  else
  {
    *a3 = v6;
    result = 0;
    if (a1)
    {
      *a1 = 0;
    }
  }

  return result;
}

uint64_t _gss_ntlm_export_name(int *a1, const char **a2, size_t *a3)
{
  __s = 0;
  asprintf(&__s, "%s\\%s", a2[1], *a2);
  if (__s)
  {
    v5 = strlen(__s);
    v6 = gss_mg_export_name(a1, &__gss_ntlm_mechanism_oid_desc, __s, v5, a3);
    free(__s);
  }

  else
  {
    *a1 = 12;
    return 851968;
  }

  return v6;
}

uint64_t _gss_ntlm_export_sec_context(_DWORD *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a3)
  {
    *a3 = 0;
    a3[1] = 0;
  }

  return 0;
}

uint64_t get_signing_supported(const gss_OID_desc *a1, uint64_t a2, size_t *a3)
{
  v10 = 0;
  v9 = 0;
  if (__gss_ntlm_is_digest_service)
  {
    return _gss_mo_get_option_0(a1, a2, a3);
  }

  if (_gss_ntlm_allocate_ctx(&v10, 0, &v9))
  {
    return _gss_mo_get_option_0(a1, a2, a3);
  }

  v8 = v9;
  v6 = *(v9 + 24);
  _gss_ntlm_delete_sec_context(&v10, &v8, 0);
  if (v6)
  {
    return _gss_mo_get_option_0(a1, a2, a3);
  }

  else
  {
    return _gss_mo_get_option_1(a1, a2, a3);
  }
}

char **_gss_ntlm_create_name(_DWORD *a1, const char *a2, const char *a3, int a4)
{
  v8 = malloc_type_calloc(1uLL, 0x38uLL, 0x10100405C7453BFuLL);
  if (!v8)
  {
    goto LABEL_5;
  }

  v9 = v8;
  v10 = strdup(a2);
  *v9 = v10;
  v11 = strdup(a3);
  v12 = v11;
  v9[1] = v11;
  *(v9 + 4) = a4;
  if (!v10 || !v11)
  {
    free(v10);
    free(v12);
    free(v9);
LABEL_5:
    v9 = 0;
    *a1 = 12;
  }

  return v9;
}

uint64_t anon_name(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char ***a5)
{
  name = _gss_ntlm_create_name(a1, "", "", 2);
  *a5 = name;
  if (name)
  {
    return 0;
  }

  else
  {
    return 851968;
  }
}

uint64_t hostbased_name(_DWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, char ***a5)
{
  v8 = malloc_type_malloc(*a3 + 1, 0x1DFB403BuLL);
  if (v8)
  {
    v9 = v8;
    memcpy(v8, *(a3 + 8), *a3);
    v9[*a3] = 0;
    v10 = strchr(v9, 64);
    if (v10)
    {
      *v10 = 0;
      v11 = v10 + 1;
    }

    else
    {
      v11 = "";
    }

    *a5 = _gss_ntlm_create_name(a1, v9, v11, 0);
    free(v9);
    if (*a5)
    {
      return 0;
    }

    else
    {
      return 851968;
    }
  }

  else
  {
    *a1 = 12;
    return 851968;
  }
}

uint64_t parse_name(_DWORD *a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, char ***a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = *a4;
  if (memchr(*(a4 + 8), 64, *a4))
  {

    return hostbased_name(a1, v14, a4, v15, a6);
  }

  v17 = malloc_type_malloc(v13 + 1, 0xF6DDC0F4uLL);
  if (!v17)
  {
    *a1 = 12;
    return 851968;
  }

  v18 = v17;
  memcpy(v17, *(a4 + 8), *a4);
  v18[*a4] = 0;
  v19 = strchr(v18, 92);
  if (v19)
  {
    *v19 = 0;
    v20 = v19 + 1;
    rk_strupr();
    v21 = v18;
    goto LABEL_8;
  }

  if (!a3)
  {
    v21 = "";
    v20 = v18;
LABEL_8:
    *a6 = _gss_ntlm_create_name(a1, v20, v21, 0);
    free(v18);
    if (*a6)
    {
      return 0;
    }

    else
    {
      return 851968;
    }
  }

  free(v18);
  *a1 = -1561745657;

  return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, 0x20000, -1561745657, "domain requested but missing name", v22, v23, v24, v25);
}

uint64_t _gss_ntlm_import_sec_context(_DWORD *a1, uint64_t a2, void *a3)
{
  if (a1)
  {
    *a1 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  return 851968;
}

uint64_t _gss_ntlm_init_sec_context(int *a1, uint64_t a2, uint64_t *a3, const char **a4, uint64_t a5, char a6, uint64_t a7, unsigned int *a8, uint64_t a9, gss_OID_desc **a10, CFIndex *a11, _DWORD *a12, _DWORD *a13)
{
  v116 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  if (a12)
  {
    *a12 = 0;
  }

  if (a13)
  {
    *a13 = 0;
  }

  if (a10)
  {
    *a10 = 0;
  }

  if (!a4)
  {
    return 0x20000;
  }

  if (__ApplePrivate_gss_mo_get(&__gss_ntlm_mechanism_oid_desc, &__gss_c_ntlm_v2_oid_desc, 0))
  {
    v99 = a3;
    v23 = *a3;
    if (a10)
    {
      *a10 = &__gss_ntlm_mechanism_oid_desc;
    }

    v24 = a11;
    if (a12)
    {
      *a12 = 0;
    }

    if (v23)
    {
      if ((*(v23 + 37) & 8) == 0)
      {
        length = 0;
        bytes = 0;
        v25 = *(a9 + 8);
        *&v112 = *a9;
        *(&v112 + 1) = v25;
        if (a8)
        {
          v26 = gss_mg_gen_cb(a1, a8, v106, 0);
          if (v26)
          {
            goto LABEL_17;
          }

          length = 16;
          bytes = v106;
        }

        else
        {
          krb5_data_zero();
        }

        _gss_mg_log(1, "NTLM: _gss_ntlm_init_sec_context (GSSCred)");
        if ((*(*(v23 + 16) + 16) & 1) == 0)
        {
          _gss_mg_log(1, "NTLM: NTLM_UUID not available");
          _gss_ntlm_delete_sec_context(a1, v99, 0);
          v44 = "no credentials available";
          v45 = 458752;
LABEL_43:
          v46 = 0;
          return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, v45, v46, v44, v19, v20, v21, v22, v91);
        }

        memset(out, 0, 37);
        uuid_unparse((*(v23 + 16) + 36), out);
        _gss_mg_log(1, "_gss_ntlm_init_sec_context  UUID(%s)", out);
        v47 = *MEMORY[0x277CBECE8];
        v48 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(*(v23 + 16) + 36));
        v49 = HeimCredCopyFromUUID();
        if (!v49)
        {
          goto LABEL_117;
        }

        v50 = v49;
        v51 = CFStringCreateWithCString(v47, **(v23 + 16), 0x8000100u);
        if (!v51)
        {
          v69 = -1765328191;
          goto LABEL_126;
        }

        v52 = v51;
        v53 = CFStringCreateWithCString(v47, *(*(v23 + 16) + 8), 0x8000100u);
        if (!v53)
        {
          v69 = -1765328191;
LABEL_125:
          CFRelease(v52);
          goto LABEL_126;
        }

        v54 = v53;
        v93 = v50;
        cf = v53;
        if (!*a9 || (v55 = CFDataCreate(v47, *(a9 + 8), *a9)) == 0)
        {
          v97 = 0;
          v98 = 0;
          v68 = 0;
          v95 = 0;
          v96 = 0;
          v62 = 0;
          v70 = 0;
          v69 = -1765328191;
          goto LABEL_92;
        }

        v92 = v55;
        v56 = length;
        if (!length)
        {
          _gss_mg_log(1, "_gss_ntlm_init_sec_context  UUID(%s) - no channel bindings", out);
          v56 = 0;
        }

        v57 = CFDataCreate(v47, bytes, v56);
        if (v57)
        {
          v98 = v57;
          v58 = *(v23 + 64);
          if (v58 && (v59 = CFDataCreate(v47, *(v23 + 72), v58)) != 0)
          {
            v97 = v59;
            v60 = CFStringCreateWithCString(v47, *(v23 + 232), 0x8000100u);
            if (v60)
            {
              v96 = v60;
              v61 = CFNumberCreate(v47, kCFNumberSInt32Type, (v23 + 36));
              v62 = v61;
              if (v61)
              {
                v63 = *MEMORY[0x277D13148];
                keys[0] = *MEMORY[0x277D13160];
                keys[1] = v63;
                v64 = *MEMORY[0x277D13100];
                keys[2] = *MEMORY[0x277D13130];
                keys[3] = v64;
                v65 = *MEMORY[0x277D130E8];
                keys[4] = *MEMORY[0x277D13120];
                keys[5] = v65;
                v66 = *MEMORY[0x277D130F8];
                keys[6] = *MEMORY[0x277D13118];
                keys[7] = v66;
                keys[8] = *MEMORY[0x277D130F0];
                v67 = *MEMORY[0x277D13170];
                values[0] = *MEMORY[0x277D13158];
                values[1] = v67;
                values[2] = v52;
                values[3] = v54;
                v68 = v92;
                values[4] = v92;
                values[5] = v98;
                values[6] = v97;
                values[7] = v96;
                values[8] = v61;
                v95 = CFDictionaryCreate(v47, keys, values, 9, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
                v69 = 0;
                v70 = 1;
                goto LABEL_92;
              }

              goto LABEL_91;
            }
          }

          else
          {
            v97 = 0;
          }
        }

        else
        {
          v97 = 0;
          v98 = 0;
        }

        v96 = 0;
        v62 = 0;
LABEL_91:
        v95 = 0;
        v70 = 0;
        v69 = -1765328191;
        v68 = v92;
LABEL_92:
        CFRelease(v52);
        CFRelease(cf);
        if (v68)
        {
          CFRelease(v68);
        }

        v52 = v95;
        if (v98)
        {
          CFRelease(v98);
        }

        if (v97)
        {
          CFRelease(v97);
        }

        if (v96)
        {
          CFRelease(v96);
        }

        if (v62)
        {
          CFRelease(v62);
        }

        if (v70)
        {
          v76 = HeimCredDoAuth();
          CFRelease(v95);
          if (!v76)
          {
            _gss_ntlm_delete_sec_context(a1, v99, 0);
            _gss_mg_log(1, "NTLM: HeimCredCreate failed error(%ld)", 0);
            CFRelease(v93);
            if (v48)
            {
              CFRelease(v48);
            }

            *a1 = -1765328191;
            v44 = "HeimCredCreate failed";
            v45 = 851968;
            goto LABEL_43;
          }

          _gss_mg_log(1, "ntlm-isc-type3: GSSCred returned");
          Value = CFDictionaryGetValue(v76, *MEMORY[0x277D13128]);
          v78 = Value;
          if (!Value)
          {
            goto LABEL_130;
          }

          v79 = CFDataGetLength(Value);
          *&v112 = v79;
          if (!v79)
          {
            goto LABEL_131;
          }

          *(&v112 + 1) = malloc_type_calloc(1uLL, v79, 0xD591DA81uLL);
          if (*(&v112 + 1))
          {
            v117.length = CFDataGetLength(v78);
            v117.location = 0;
            CFDataGetBytes(v78, v117, *(&v112 + 1));
            v80 = CFDictionaryGetValue(v76, *MEMORY[0x277D13108]);
            if (!v80 || !CFNumberGetValue(v80, kCFNumberSInt32Type, (v23 + 32)))
            {
              goto LABEL_131;
            }

            v81 = CFDictionaryGetValue(v76, *MEMORY[0x277D13110]);
            v78 = v81;
            if (!v81)
            {
              goto LABEL_130;
            }

            v82 = CFDataGetLength(v81);
            *(v23 + 48) = v82;
            if (!v82)
            {
LABEL_131:
              v84 = 0;
              v78 = 0;
              goto LABEL_132;
            }

            v83 = malloc_type_calloc(1uLL, v82, 0x34E70CC6uLL);
            *(v23 + 56) = v83;
            if (v83)
            {
              v118.length = CFDataGetLength(v78);
              v118.location = 0;
              CFDataGetBytes(v78, v118, *(v23 + 56));
              if (CFDictionaryGetValue(v76, *MEMORY[0x277D13130]))
              {
                v78 = heim_string_copy_utf8();
                if (CFDictionaryGetValue(v76, *MEMORY[0x277D13100]))
                {
                  v84 = heim_string_copy_utf8();
                  v85 = CFDictionaryGetValue(v76, *MEMORY[0x277D130F0]);
                  if (CFNumberGetValue(v85, kCFNumberSInt32Type, (v23 + 36)))
                  {
                    _gss_mg_log(1, "ntlm-isc-type3: %s\\%s", v84, v78);
                    *(v23 + 216) = _gss_ntlm_create_name(a1, v78, v84, 0);
                    free(v78);
                    free(v84);
                    if (*(v23 + 216))
                    {
                      CFRelease(v93);
LABEL_117:
                      CFRelease(v48);
                      v86 = *(&v112 + 1);
                      *a11 = v112;
                      a11[1] = v86;
LABEL_118:
                      *(v23 + 40) |= 1u;
                      _gss_ntlm_reset_seq(v23);
                      _gss_ntlm_set_keys(v23);
                      if (a12)
                      {
                        *a12 = *(v23 + 28);
                      }

                      if (a13)
                      {
                        v27 = 0;
                        *a13 = -1;
                        return v27;
                      }

                      return 0;
                    }

                    CFRelease(v95);
                    _gss_ntlm_delete_sec_context(a1, v99, 0);
                    krb5_data_free();
                    return 851968;
                  }

LABEL_132:
                  _gss_ntlm_delete_sec_context(a1, v99, 0);
                  krb5_data_free();
                  free(v78);
                  free(v84);
                  *a1 = -1765328191;
                  v44 = "failed parse GSSCred reply";
                  v45 = 851968;
                  v46 = -1765328191;
                  return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, v45, v46, v44, v19, v20, v21, v22, v91);
                }

LABEL_130:
                v84 = 0;
                goto LABEL_132;
              }

              goto LABEL_131;
            }
          }

LABEL_122:
          *a1 = 12;
          v44 = "out of memory";
          v45 = 851968;
          v46 = 12;
          return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, v45, v46, v44, v19, v20, v21, v22, v91);
        }

        if (v95)
        {
          goto LABEL_125;
        }

LABEL_126:
        if (v48)
        {
          CFRelease(v48);
        }

        _gss_ntlm_delete_sec_context(a1, v99, 0);
        *a1 = v69;
        v44 = "failed to create ntlm response";
        v45 = 851968;
        v46 = v69;
        return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, v45, v46, v44, v19, v20, v21, v22, v91);
      }

      v113 = 0u;
      v114 = 0u;
      v115 = 0;
      memset(out, 0, sizeof(out));
      v108 = 0u;
      v109 = 0u;
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      if (!a9)
      {
        return 851968;
      }

      lengtha = *a9;
      bytesa = *(a9 + 8);
      v42 = heim_ntlm_decode_type2();
      if (!v42)
      {
        LODWORD(out[0]) = *(v23 + 36);
        out[1] = "";
        out[2] = "";
        *(&v109 + 1) = "";
        out[3] = 1;
        out[4] = &unk_23894DCC8;
        v43 = heim_ntlm_encode_type3();
        heim_ntlm_free_type2();
        if (!v43)
        {
          *a11 = lengtha;
          a11[1] = bytesa;
          *(v23 + 28) |= 0x40u;
          name = _gss_ntlm_create_name(a1, "", "", 0);
          *(v23 + 216) = name;
          if (name)
          {
            _gss_mg_log(1, "ntlm-isc-type3: anonymous");
            goto LABEL_118;
          }

          _gss_ntlm_delete_sec_context(a1, v99, 0);
          return 851968;
        }

LABEL_64:
        _gss_ntlm_delete_sec_context(a1, v99, 0);
        *a1 = v43;
        return 851968;
      }

LABEL_38:
      v43 = v42;
      goto LABEL_64;
    }

    v112 = 0u;
    v113 = 0u;
    if (!a4[1])
    {
      goto LABEL_59;
    }

    v28 = _gss_mg_copy_key(@"com.apple.GSS.NTLM", @"AllowedHosts");
    if (!v28)
    {
LABEL_33:
      v39 = malloc_type_calloc(1uLL, 0x2A0uLL, 0x10F204024BAB64EuLL);
      if (!v39)
      {
        goto LABEL_122;
      }

      v40 = v39;
      *v99 = v39;
      v39[10] |= 2u;
      if (a2)
      {
        have_cred = _gss_ntlm_duplicate_name(a1, a2, v39 + 2);
      }

      else
      {
        *&v108 = 0;
        memset(&out[2], 0, 32);
        out[0] = "";
        out[1] = "";
        have_cred = _gss_ntlm_have_cred(a1, out, v39 + 2);
      }

      v27 = have_cred;
      if (have_cred)
      {
        goto LABEL_70;
      }

      v26 = _gss_ntlm_duplicate_name(a1, a4, v40 + 28);
      if (v26)
      {
LABEL_17:
        v27 = v26;
LABEL_70:
        LODWORD(out[0]) = 0;
        _gss_ntlm_delete_sec_context(out, v99, 0);
        return v27;
      }

      if (asprintf(v40 + 29, "%s/%s", *a4, a4[1]) < 0 || !*(v40 + 29))
      {
        LODWORD(out[0]) = 0;
        _gss_ntlm_delete_sec_context(out, v99, 0);
        return 0;
      }

      if ((a6 & 0x40) != 0)
      {
        v75 = 33556997;
      }

      else
      {
        if ((*(*(v40 + 2) + 16) & 2) != 0)
        {
          LODWORD(out[0]) = 0;
          _gss_ntlm_delete_sec_context(out, v99, 0);
          v27 = 458752;
          gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, 458752, 0, "Cant authenticate with anon name", v87, v88, v89, v90);
          *a1 = 0;
          return v27;
        }

        if ((a6 & 0x10) != 0)
        {
          v74 = 33587765;
        }

        else
        {
          v74 = 33554949;
        }

        if ((a6 & 0x20) != 0)
        {
          v74 |= 0x8010u;
        }

        v75 = v74 | 0x60880000;
      }

      v112 = v75;
      *&v113 = 0;
      *(&v113 + 1) = 0xF0601B01DLL;
      v42 = heim_ntlm_encode_type1();
      if (!v42)
      {
        *v24 = 0;
        v24[1] = 0;
        v42 = krb5_data_copy();
        if (!v42)
        {
          v40[9] = v75;
          v27 = 1;
          _gss_mg_log(1, "ntlm-isc-type1: %s\\%s", *(*(v40 + 2) + 8), **(v40 + 2));
          return v27;
        }
      }

      goto LABEL_38;
    }

    v29 = v28;
    v30 = CFGetTypeID(v28);
    if (v30 == CFArrayGetTypeID())
    {
      Count = CFArrayGetCount(v29);
      if (Count >= 1)
      {
        v32 = Count;
        v33 = 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v29, v33 - 1);
          if (ValueAtIndex && (v35 = CFGetTypeID(ValueAtIndex), v35 == CFStringGetTypeID()) && (v36 = rk_cfstring2cstring()) != 0)
          {
            v37 = v36;
            v38 = fnmatch(v36, a4[1], 16) != 0;
            free(v37);
          }

          else
          {
            v38 = 1;
          }

          if (v33 >= v32)
          {
            break;
          }

          ++v33;
        }

        while (v38);
        CFRelease(v29);
        v24 = a11;
        if (!v38)
        {
          goto LABEL_33;
        }

LABEL_59:
        *a1 = 80;
        v71 = a4[1];
        if (!v71)
        {
          v71 = "???";
        }

        v91 = v71;
        v44 = "Not allowed to use NTLM to host %s";
        v45 = 851968;
        v46 = 80;
        return gss_mg_set_error_string(&__gss_ntlm_mechanism_oid_desc, v45, v46, v44, v19, v20, v21, v22, v91);
      }
    }

    else
    {
      _gss_mg_log(1, "NTLM: invalid type of AllowedHosts");
    }

    CFRelease(v29);
    goto LABEL_59;
  }

  *a1 = 0;
  return 0x100000;
}

uint64_t _gss_ntlm_inquire_context(_DWORD *a1, uint64_t a2, void *a3, void *a4, _DWORD *a5, gss_OID_desc **a6, _DWORD *a7, int *a8, int *a9)
{
  *a1 = 0;
  if (!a2)
  {
    return 50331648;
  }

  if (a3)
  {
    v16 = *(a2 + 216);
    if (!v16)
    {
      return 0x80000;
    }

    result = _gss_ntlm_duplicate_name(a1, v16, a3);
    if (result)
    {
      return result;
    }
  }

  if (a4)
  {
    v18 = *(a2 + 224);
    if (v18)
    {
      result = _gss_ntlm_duplicate_name(a1, v18, a4);
      if (result)
      {
        return result;
      }
    }

    else
    {
      *a4 = 0;
    }
  }

  if (a5)
  {
    *a5 = -1;
  }

  if (a6)
  {
    *a6 = &__gss_ntlm_mechanism_oid_desc;
  }

  if (a7)
  {
    *a7 = *(a2 + 28);
  }

  if (a8)
  {
    *a8 = (*(a2 + 40) >> 1) & 1;
  }

  result = 0;
  if (a9)
  {
    *a9 = *(a2 + 40) & 1;
  }

  return result;
}

uint64_t _gss_ntlm_inquire_cred_by_mech(_DWORD *a1, uint64_t a2, uint64_t a3, void *a4, _DWORD *a5, _DWORD *a6, _DWORD *a7)
{
  if (a4)
  {
    if (a2)
    {
      result = _gss_ntlm_duplicate_name(a1, a2, a4);
      if (result)
      {
        return result;
      }
    }

    else
    {
      *a4 = 0;
    }
  }

  if (a5)
  {
    *a5 = -1;
  }

  if (a6)
  {
    *a6 = 0;
  }

  if (a7)
  {
    *a7 = 1;
  }

  result = 0;
  if (a1)
  {
    *a1 = 0;
  }

  return result;
}

uint64_t _gss_ntlm_inquire_cred(OM_uint32 *minor_status, uint64_t a2, void *a3, _DWORD *a4, _DWORD *a5, gss_OID_set *oid_set)
{
  *minor_status = 0;
  if (!a2)
  {
    return 458752;
  }

  if (a3)
  {
    empty_oid_set = _gss_ntlm_duplicate_name(minor_status, a2, a3);
    if (empty_oid_set)
    {
      goto LABEL_10;
    }
  }

  if (a4)
  {
    *a4 = -1;
  }

  if (a5)
  {
    *a5 = 0;
  }

  if (!oid_set)
  {
    return 0;
  }

  *oid_set = 0;
  empty_oid_set = gss_create_empty_oid_set(minor_status, oid_set);
  if (empty_oid_set)
  {
LABEL_10:
    v11 = empty_oid_set;
  }

  else
  {
    v11 = gss_add_oid_set_member(minor_status, &__gss_ntlm_mechanism_oid_desc, oid_set);
    if (!v11)
    {
      return v11;
    }
  }

  minor_statusa = 0;
  gss_release_oid_set(&minor_statusa, oid_set);
  return v11;
}

uint64_t _gss_ntlm_destroy_cred(_DWORD *a1, void ***a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = *a2;
  if (!*a2)
  {
    return 0;
  }

  if (v3[2])
  {
    v5 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(v3 + 36));
    if (!v5)
    {
      *a1 = -1765328191;
      return 851968;
    }

    v6 = v5;
    *a1 = 0;
    HeimCredDeleteByUUID();
    CFRelease(v6);
  }

  return _gss_ntlm_release_cred(a1, a2);
}

uint64_t _gss_ntlm_cred_hold(_DWORD *a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    return 851968;
  }

  v4 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (v4)
  {
    v5 = v4;
    *a1 = 0;
    v6 = HeimCredCopyFromUUID();
    if (v6)
    {
      v7 = v6;
      HeimCredRetainTransient();
      CFRelease(v7);
    }

    CFRelease(v5);
    return 0;
  }

  else
  {
    *a1 = -1765328191;
    return 851968;
  }
}

uint64_t _gss_ntlm_cred_unhold(_DWORD *a1, uint64_t a2)
{
  if ((*(a2 + 16) & 1) == 0)
  {
    return 851968;
  }

  v4 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (v4)
  {
    v5 = v4;
    *a1 = 0;
    v6 = HeimCredCopyFromUUID();
    if (v6)
    {
      v7 = v6;
      HeimCredReleaseTransient();
      CFRelease(v7);
    }

    CFRelease(v5);
    return 0;
  }

  else
  {
    *a1 = -1765328191;
    return 851968;
  }
}

uint64_t _gss_ntlm_cred_label_get(_DWORD *a1, uint64_t a2, const char *a3, CFIndex *a4)
{
  keys[4] = *MEMORY[0x277D85DE8];
  v7 = *MEMORY[0x277CBECE8];
  v8 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (v8)
  {
    v9 = v8;
    *a1 = 0;
    v10 = CFStringCreateWithCString(v7, a3, 0x8000100u);
    if (v10)
    {
      v11 = *MEMORY[0x277D13148];
      keys[0] = *MEMORY[0x277D13160];
      keys[1] = v11;
      v12 = *MEMORY[0x277D13140];
      keys[2] = *MEMORY[0x277D13138];
      keys[3] = v12;
      v13 = *MEMORY[0x277D13170];
      values[0] = *MEMORY[0x277D13158];
      values[1] = v13;
      values[2] = v9;
      values[3] = v10;
      v14 = CFDictionaryCreate(0, keys, values, 4, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      if (!v14)
      {
        _gss_ntlm_cred_label_get_cold_1();
      }

      v15 = v14;
      v16 = HeimCredCopyQuery();
      CFRelease(v15);
      if (CFArrayGetCount(v16) <= 0)
      {
        v24 = 0;
        if (!v16)
        {
          return v24;
        }

        goto LABEL_19;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v16, 0);
      if (!ValueAtIndex)
      {
        v24 = 851968;
        if (!v16)
        {
          return v24;
        }

        goto LABEL_19;
      }

      v18 = ValueAtIndex;
      CFRetain(ValueAtIndex);
      if (v16)
      {
        CFRelease(v16);
      }

      v16 = HeimCredCopyAttribute();
      CFRelease(v18);
      if (v16)
      {
        Length = CFDataGetLength(v16);
        v20 = malloc_type_malloc(Length, 0xB2578C23uLL);
        a4[1] = v20;
        if (v20)
        {
          v21 = v20;
          BytePtr = CFDataGetBytePtr(v16);
          v23 = CFDataGetLength(v16);
          memcpy(v21, BytePtr, v23);
          v24 = 0;
          *a4 = CFDataGetLength(v16);
        }

        else
        {
          v24 = 851968;
        }

LABEL_19:
        CFRelease(v16);
        return v24;
      }
    }

    else
    {
      CFRelease(v9);
    }
  }

  else
  {
    *a1 = -1765328191;
  }

  return 851968;
}

uint64_t _gss_ntlm_cred_label_set(_DWORD *a1, uint64_t a2, const char *a3, uint64_t a4)
{
  keys[3] = *MEMORY[0x277D85DE8];
  if ((*(a2 + 16) & 1) == 0)
  {
    return 851968;
  }

  v8 = *MEMORY[0x277CBECE8];
  v9 = CFUUIDCreateFromUUIDBytes(*MEMORY[0x277CBECE8], *(a2 + 36));
  if (!v9)
  {
    *a1 = -1765328191;
    return 851968;
  }

  v10 = v9;
  *a1 = 0;
  v11 = CFStringCreateWithCString(v8, a3, 0x8000100u);
  if (!v11)
  {
    CFRelease(v10);
    return 851968;
  }

  v12 = v11;
  v13 = *MEMORY[0x277D13138];
  v14 = *MEMORY[0x277D13148];
  keys[0] = *MEMORY[0x277D13138];
  keys[1] = v14;
  v15 = *MEMORY[0x277D13140];
  keys[2] = *MEMORY[0x277D13140];
  v16 = *MEMORY[0x277D13170];
  values[0] = v10;
  values[1] = v16;
  values[2] = v11;
  v17 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v17)
  {
    _gss_ntlm_cred_label_set_cold_2();
  }

  v18 = v17;
  HeimCredDeleteQuery();
  CFRelease(v18);
  if (!a4)
  {
    v28 = 0;
LABEL_18:
    CFRelease(v10);
    v30 = v12;
LABEL_27:
    CFRelease(v30);
    return v28;
  }

  v19 = CFStringCreateWithCString(v8, *a2, 0x8000100u);
  if (!v19)
  {
    v28 = 851968;
    goto LABEL_18;
  }

  v20 = v19;
  v21 = CFStringCreateWithCString(v8, *(a2 + 8), 0x8000100u);
  if (!v21)
  {
    v23 = 0;
    goto LABEL_20;
  }

  v22 = CFDataCreateWithBytesNoCopy(0, *(a4 + 8), *a4, *MEMORY[0x277CBED00]);
  v23 = v22;
  if (!v22)
  {
LABEL_20:
    v26 = 0;
    goto LABEL_21;
  }

  v32[0] = *MEMORY[0x277D13160];
  v32[1] = v14;
  v24 = *MEMORY[0x277D13130];
  v32[2] = v13;
  v32[3] = v24;
  v32[4] = *MEMORY[0x277D13100];
  v32[5] = v15;
  v32[6] = *MEMORY[0x277D130E0];
  v31[0] = *MEMORY[0x277D13158];
  v31[1] = v16;
  v31[2] = v10;
  v31[3] = v20;
  v31[4] = v21;
  v31[5] = v12;
  v31[6] = v22;
  v25 = CFDictionaryCreate(0, v32, v31, 7, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (!v25)
  {
    _gss_ntlm_acquire_cred_ext_cold_1();
  }

  v26 = v25;
  v27 = HeimCredCreate();
  if (!v27)
  {
LABEL_21:
    CFRelease(v10);
    CFRelease(v20);
    v28 = 851968;
    if (!v21)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  CFRelease(v27);
  CFRelease(v10);
  CFRelease(v20);
  v28 = 0;
LABEL_22:
  CFRelease(v21);
LABEL_23:
  CFRelease(v12);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v26)
  {
    v30 = v26;
    goto LABEL_27;
  }

  return v28;
}