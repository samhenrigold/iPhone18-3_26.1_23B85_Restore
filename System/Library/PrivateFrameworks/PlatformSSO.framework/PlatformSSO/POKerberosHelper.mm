@interface POKerberosHelper
- (BOOL)checkForValidKerberosTGT:(id)t;
- (BOOL)destroyCredentialForUUID:(id)d;
- (gss_cred_id_t_desc_struct)acquireCredentialForUUID:(id)d;
- (id)importKerberosEntry:(id)entry error:(id *)error;
- (void)exchangeKerberosTGTForEntry:(id)entry;
@end

@implementation POKerberosHelper

- (id)importKerberosEntry:(id)entry error:(id *)error
{
  v134 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v6 = PO_LOG_POKerberosHelper(entryCopy);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    realm = [entryCopy realm];
    *buf = 136315650;
    *&buf[4] = "[POKerberosHelper importKerberosEntry:error:]";
    *&buf[12] = 2114;
    *&buf[14] = realm;
    *&buf[22] = 2112;
    *&buf[24] = self;
    _os_log_impl(&dword_25E831000, v6, OS_LOG_TYPE_DEFAULT, "%s realm = %{public}@ on %@", buf, 0x20u);
  }

  v8 = objc_alloc_init(MEMORY[0x277D3D200]);
  ticketKeyPath = [entryCopy ticketKeyPath];
  [v8 setTicketKeyPath:ticketKeyPath];

  realm2 = [entryCopy realm];
  [v8 setRealm:realm2];

  context = 0;
  opt = 0;
  client = 0;
  cache[1] = 0;
  cache[0] = 0;
  v113 = 0;
  v112 = 0;
  v132 = 0u;
  v133 = 0u;
  v130 = 0u;
  v131 = 0u;
  v128 = 0u;
  v129 = 0u;
  v127 = 0u;
  memset(buf, 0, sizeof(buf));
  memset(&v111, 0, sizeof(v111));
  krb5_keyblock_zero();
  v110 = 0;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  v105 = 0;
  v104 = 0;
  krb5_data_zero();
  v11 = MEMORY[0x277CCACA8];
  clientName = [entryCopy clientName];
  realm3 = [entryCopy realm];
  v14 = [v11 stringWithFormat:@"%@@%@", clientName, realm3];

  inited = krb5_init_context(&context);
  if (inited)
  {
    v102[0] = MEMORY[0x277D85DD0];
    v102[1] = 3221225472;
    v102[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke;
    v102[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v103 = inited;
    v16 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke(v102);
    goto LABEL_5;
  }

  v101 = 0;
  v100 = 0;
  krb5_data_zero();
  messageBuffer = [entryCopy messageBuffer];
  [messageBuffer bytes];
  messageBuffer2 = [entryCopy messageBuffer];
  [messageBuffer2 length];
  krb5_data_copy();

  v20 = [v14 componentsSeparatedByString:@"@"];
  v21 = [v20 count] - 1;

  if (v21 < 2)
  {
    v24 = krb5_parse_name(context, [v14 UTF8String], &client);
    if (v24)
    {
      v96[0] = MEMORY[0x277D85DD0];
      v96[1] = 3221225472;
      v96[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_86;
      v96[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v97 = v24;
      v25 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_86(v96);
      goto LABEL_5;
    }
  }

  else
  {
    v22 = krb5_parse_name_flags(0, [v14 UTF8String], 4, &client);
    if (v22)
    {
      v98[0] = MEMORY[0x277D85DD0];
      v98[1] = 3221225472;
      v98[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_82;
      v98[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v99 = v22;
      v23 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_82(v98);
      goto LABEL_5;
    }
  }

  [entryCopy encryptionKeyType];
  v26 = krb5_enctype_valid();
  if (v26)
  {
    v94[0] = MEMORY[0x277D85DD0];
    v94[1] = 3221225472;
    v94[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_90;
    v94[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v95 = v26;
    v27 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_90(v94);
  }

  else
  {
    [entryCopy encryptionKeyType];
    sessionKey = [entryCopy sessionKey];
    [sessionKey bytes];
    sessionKey2 = [entryCopy sessionKey];
    [sessionKey2 length];
    v30 = krb5_keyblock_init();

    if (v30)
    {
      v92[0] = MEMORY[0x277D85DD0];
      v92[1] = 3221225472;
      v92[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_94;
      v92[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v93 = v30;
      v31 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_94(v92);
    }

    else
    {
      init_creds_opt_alloc = krb5_get_init_creds_opt_alloc(context, &opt);
      if (init_creds_opt_alloc)
      {
        v90[0] = MEMORY[0x277D85DD0];
        v90[1] = 3221225472;
        v90[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_98;
        v90[3] = &__block_descriptor_36_e14___NSError_8__0l;
        v91 = init_creds_opt_alloc;
        v33 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_98(v90);
      }

      else
      {
        krb5_get_init_creds_opt_set_forwardable(opt, 1);
        krb5_get_init_creds_opt_set_proxiable(opt, 1);
        krb5_get_init_creds_opt_set_renew_life(opt, 2592000);
        krb5_get_init_creds_opt_set_canonicalize(context, opt);
        krb5_get_init_creds_opt_set_win2k();
        v34 = krb5_init_creds_init();
        if (v34)
        {
          v88[0] = MEMORY[0x277D85DD0];
          v88[1] = 3221225472;
          v88[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_102;
          v88[3] = &__block_descriptor_36_e14___NSError_8__0l;
          v89 = v34;
          v35 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_102(v88);
        }

        else
        {
          v36 = krb5_init_creds_set_nonce();
          if (v36)
          {
            v86[0] = MEMORY[0x277D85DD0];
            v86[1] = 3221225472;
            v86[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_106;
            v86[3] = &__block_descriptor_36_e14___NSError_8__0l;
            v87 = v36;
            v37 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_106(v86);
          }

          else
          {
            v38 = krb5_init_creds_set_keyblock();
            if (v38)
            {
              v84[0] = MEMORY[0x277D85DD0];
              v84[1] = 3221225472;
              v84[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_110;
              v84[3] = &__block_descriptor_36_e14___NSError_8__0l;
              v85 = v38;
              v39 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_110(v84);
            }

            else
            {
              v40 = krb5_init_creds_step();
              if (v40)
              {
                v82[0] = MEMORY[0x277D85DD0];
                v82[1] = 3221225472;
                v82[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_114;
                v82[3] = &__block_descriptor_36_e14___NSError_8__0l;
                v83 = v40;
                v41 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_114(v82);
              }

              else
              {
                krb5_data_free();
                krb5_data_free();
                if (krb5_cc_cache_match(context, client, cache) && (v42 = krb5_cc_new_unique(context, "API", 0, cache)) != 0)
                {
                  v80[0] = MEMORY[0x277D85DD0];
                  v80[1] = 3221225472;
                  v80[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_119;
                  v80[3] = &__block_descriptor_36_e14___NSError_8__0l;
                  v81 = v42;
                  v43 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_119(v80);
                }

                else
                {
                  v44 = krb5_init_creds_store();
                  if (v44)
                  {
                    v78[0] = MEMORY[0x277D85DD0];
                    v78[1] = 3221225472;
                    v78[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_123;
                    v78[3] = &__block_descriptor_36_e14___NSError_8__0l;
                    v79 = v44;
                    v45 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_123(v78);
                  }

                  else
                  {
                    v46 = krb5_init_creds_store_config();
                    if (v46)
                    {
                      v76[0] = MEMORY[0x277D85DD0];
                      v76[1] = 3221225472;
                      v76[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_127;
                      v76[3] = &__block_descriptor_36_e14___NSError_8__0l;
                      v77 = v46;
                      v47 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_127(v76);
                    }

                    else
                    {
                      v125 = 0;
                      v124 = 0;
                      uuid = krb5_cc_get_uuid();
                      if (uuid)
                      {
                        v74[0] = MEMORY[0x277D85DD0];
                        v74[1] = 3221225472;
                        v74[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_131;
                        v74[3] = &__block_descriptor_36_e14___NSError_8__0l;
                        v75 = uuid;
                        v49 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_131(v74);
                      }

                      else
                      {
                        v50 = krb5_uuid_to_string();
                        v51 = [MEMORY[0x277CCACA8] stringWithCString:v50 encoding:4];
                        [v8 setCacheName:v51];

                        free(v50);
                        creds = krb5_init_creds_get_creds();
                        if (creds)
                        {
                          v72[0] = MEMORY[0x277D85DD0];
                          v72[1] = 3221225472;
                          v72[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_135;
                          v72[3] = &__block_descriptor_36_e14___NSError_8__0l;
                          v73 = creds;
                          v53 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_135(v72);
                        }

                        else
                        {
                          v54 = decode_Ticket();
                          if (v54)
                          {
                            v70[0] = MEMORY[0x277D85DD0];
                            v70[1] = 3221225472;
                            v70[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_139;
                            v70[3] = &__block_descriptor_36_e14___NSError_8__0l;
                            v71 = v54;
                            v55 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_139(v70);
                          }

                          else
                          {
                            krb5_free_cred_contents(context, buf);
                            if (v109)
                            {
                              v56 = *v109 >= 0x10000;
                            }

                            else
                            {
                              v56 = 0;
                            }

                            free_Ticket();
                            krb5_free_principal(context, client);
                            principal = krb5_cc_get_principal(context, cache[0], &client);
                            if (principal)
                            {
                              v68[0] = MEMORY[0x277D85DD0];
                              v68[1] = 3221225472;
                              v68[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_143;
                              v68[3] = &__block_descriptor_36_e14___NSError_8__0l;
                              v69 = principal;
                              v58 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_143(v68);
                            }

                            else
                            {
                              v67 = 0;
                              v59 = krb5_unparse_name(context, client, &v67);
                              if (v59)
                              {
                                v65[0] = MEMORY[0x277D85DD0];
                                v65[1] = 3221225472;
                                v65[2] = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_147;
                                v65[3] = &__block_descriptor_36_e14___NSError_8__0l;
                                v66 = v59;
                                v60 = __46__POKerberosHelper_importKerberosEntry_error___block_invoke_147(v65);
                              }

                              else
                              {
                                v61 = [MEMORY[0x277CCACA8] stringWithCString:v67 encoding:4];
                                [v8 setUpn:v61];

                                free(v67);
                                v67 = 0;
                                v63 = PO_LOG_POKerberosHelper(v62);
                                if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
                                {
                                  realm4 = [entryCopy realm];
                                  *v118 = 136315650;
                                  v119 = "[POKerberosHelper importKerberosEntry:error:]";
                                  v120 = 2114;
                                  v121 = realm4;
                                  v122 = 2112;
                                  selfCopy = self;
                                  _os_log_impl(&dword_25E831000, v63, OS_LOG_TYPE_DEFAULT, "%s Successful for realm = %{public}@ on %@", v118, 0x20u);
                                }

                                if (v56 || [MEMORY[0x277D3D228] forceKerberosTGTExchange])
                                {
                                  [v8 setExchangeRequired:1];
                                }

                                [v8 setImportSuccessful:1];
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

LABEL_5:
  if (opt)
  {
    krb5_get_init_creds_opt_free(context, opt);
  }

  if (cache[0])
  {
    krb5_cc_close(context, cache[0]);
  }

  krb5_free_keyblock_contents(context, &v111);
  krb5_free_cred_contents(context, buf);
  MEMORY[0x25F8C1CD0](context);
  krb5_data_free();
  krb5_free_principal(context, client);

  return v8;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_context failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_82(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_parse_name failed when importing enterprise kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_86(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_parse_name failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_90(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_enctype_valid failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_94(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_keyblock_init failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_98(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_get_init_creds_opt_alloc failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_102(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_init failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_106(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_set_nonce failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_110(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_set_keyblock failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_114(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_step failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_119(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_new_unique failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_123(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_store failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_127(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_store_config failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_131(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_get_uuid failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_135(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_creds_get_creds failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_139(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"decode_Ticket failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_143(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_get_principal failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __46__POKerberosHelper_importKerberosEntry_error___block_invoke_147(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_unparse_name failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

- (void)exchangeKerberosTGTForEntry:(id)entry
{
  v78 = *MEMORY[0x277D85DE8];
  entryCopy = entry;
  v5 = PO_LOG_POKerberosHelper(entryCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    realm = [entryCopy realm];
    *buf = 136315650;
    *&buf[4] = "[POKerberosHelper exchangeKerberosTGTForEntry:]";
    *&buf[12] = 2114;
    *&buf[14] = realm;
    *&buf[22] = 2112;
    *&buf[24] = self;
    _os_log_impl(&dword_25E831000, v5, OS_LOG_TYPE_DEFAULT, "%s realm = %{public}@ on %@", buf, 0x20u);
  }

  cache = 0;
  context = 0;
  v76 = 0;
  v77 = 0;
  v59 = 0;
  creds = 0;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v69 = 0u;
  memset(buf, 0, sizeof(buf));
  v57 = 0u;
  memset(v56, 0, sizeof(v56));
  inited = krb5_init_context(&context);
  if (inited)
  {
    v8 = inited;
    v54[0] = MEMORY[0x277D85DD0];
    v54[1] = 3221225472;
    v54[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke;
    v54[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v55 = inited;
    v9 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke(v54);
    goto LABEL_11;
  }

  cacheName = [entryCopy cacheName];
  [cacheName UTF8String];
  v8 = krb5_string_to_uuid();

  if (v8)
  {
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_152;
    v52[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v53 = v8;
    v11 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_152(v52);
    goto LABEL_11;
  }

  v12 = krb5_cc_resolve_by_uuid();
  if (v12)
  {
    v8 = v12;
    v50[0] = MEMORY[0x277D85DD0];
    v50[1] = 3221225472;
    v50[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_156;
    v50[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v51 = v12;
    v13 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_156(v50);
    goto LABEL_11;
  }

  principal = krb5_cc_get_principal(context, cache, buf);
  if (principal)
  {
    v8 = principal;
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_160;
    v48[3] = &__block_descriptor_36_e14___NSError_8__0l;
    v49 = principal;
    v15 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_160(v48);
    goto LABEL_11;
  }

  realm = krb5_principal_get_realm();
  if (realm)
  {
    v33 = realm;
    v18 = krb5_make_principal();
    if (v18)
    {
      v8 = v18;
      v46[0] = MEMORY[0x277D85DD0];
      v46[1] = 3221225472;
      v46[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_162;
      v46[3] = &__block_descriptor_36_e14___NSError_8__0l;
      v47 = v18;
      v19 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_162(v46);
    }

    else
    {
      credentials = krb5_get_credentials(context, 1, cache, buf, &v59);
      if (credentials)
      {
        v8 = credentials;
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_166;
        v44[3] = &__block_descriptor_36_e14___NSError_8__0l;
        v45 = credentials;
        v21 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_166(v44);
      }

      else
      {
        *&v56[64] = time(0) + 604800;
        v22 = krb5_copy_principal(context, *&v59->magic, v56);
        if (v22)
        {
          v8 = v22;
          v42[0] = MEMORY[0x277D85DD0];
          v42[1] = 3221225472;
          v42[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_170;
          v42[3] = &__block_descriptor_36_e14___NSError_8__0l;
          v43 = v22;
          v23 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_170(v42);
        }

        else
        {
          v24 = krb5_copy_principal(context, v59->client, &v56[8]);
          if (v24)
          {
            v8 = v24;
            v40[0] = MEMORY[0x277D85DD0];
            v40[1] = 3221225472;
            v40[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_174;
            v40[3] = &__block_descriptor_36_e14___NSError_8__0l;
            v41 = v24;
            v25 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_174(v40);
          }

          else
          {
            kdc_cred = krb5_get_kdc_cred();
            if (kdc_cred)
            {
              v8 = kdc_cred;
              v38[0] = MEMORY[0x277D85DD0];
              v38[1] = 3221225472;
              v38[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_175;
              v38[3] = &__block_descriptor_36_e14___NSError_8__0l;
              v39 = kdc_cred;
              v27 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_175(v38);
            }

            else
            {
              v28 = krb5_cc_initialize(context, cache, *&creds->magic);
              if (v28)
              {
                v8 = v28;
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_179;
                v36[3] = &__block_descriptor_36_e14___NSError_8__0l;
                v37 = v28;
                v29 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_179(v36);
              }

              else
              {
                v30 = krb5_cc_store_cred(context, cache, creds);
                if (!v30)
                {
                  [entryCopy setExchangeRequired:{0, "krbtgt", v33, 0}];
                  v16 = PO_LOG_POKerberosHelper([entryCopy setFailedToConnect:0]);
                  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
                  {
                    realm2 = [entryCopy realm];
                    *v62 = 136315650;
                    v63 = "[POKerberosHelper exchangeKerberosTGTForEntry:]";
                    v64 = 2114;
                    v65 = realm2;
                    v66 = 2112;
                    selfCopy = self;
                    _os_log_impl(&dword_25E831000, v16, OS_LOG_TYPE_DEFAULT, "%s Success for realm = %{public}@ on %@", v62, 0x20u);
                  }

LABEL_17:

                  goto LABEL_18;
                }

                v8 = v30;
                v34[0] = MEMORY[0x277D85DD0];
                v34[1] = 3221225472;
                v34[2] = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_183;
                v34[3] = &__block_descriptor_36_e14___NSError_8__0l;
                v35 = v30;
                v31 = __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_183(v34);
              }
            }
          }
        }
      }
    }

LABEL_11:
    if (v8 == -1765328347)
    {
      v16 = PO_LOG_POKerberosHelper([entryCopy setExchangeRequired:0]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [POKerberosHelper exchangeKerberosTGTForEntry:entryCopy];
      }
    }

    else
    {
      if (v8 != -1765328228)
      {
        goto LABEL_18;
      }

      v16 = PO_LOG_POKerberosHelper([entryCopy setFailedToConnect:1]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [POKerberosHelper exchangeKerberosTGTForEntry:entryCopy];
      }
    }

    goto LABEL_17;
  }

LABEL_18:
  if (cache)
  {
    krb5_cc_close(context, cache);
  }

  if (creds)
  {
    krb5_free_creds(context, creds);
  }

  if (v59)
  {
    krb5_free_creds(context, v59);
  }

  krb5_free_cred_contents(context, buf);
  krb5_free_cred_contents(context, v56);
  MEMORY[0x25F8C1CD0](context);
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_init_context failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_152(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_string_to_uuid failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_156(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_resolve_by_uuid failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_160(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_get_principal failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_162(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_make_principal failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_166(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_get_credentials failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_170(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_copy_principal failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_174(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_copy_principal failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_175(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_get_kdc_cred failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_179(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_initialize failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

id __48__POKerberosHelper_exchangeKerberosTGTForEntry___block_invoke_183(uint64_t a1)
{
  v1 = [MEMORY[0x277D3D1F0] errorWithCode:-1001 description:@"krb5_cc_store_cred failed when importing kerberos entry."];
  v2 = PO_LOG_POKerberosHelper(v1);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1();
  }

  return v1;
}

- (BOOL)checkForValidKerberosTGT:(id)t
{
  tCopy = t;
  v5 = PO_LOG_POKerberosHelper(tCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [POKerberosHelper checkForValidKerberosTGT:];
  }

  v6 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:tCopy];
  if (v6)
  {
    cred_handle = [(POKerberosHelper *)self acquireCredentialForUUID:v6];
    v7 = cred_handle != 0;
    if (cred_handle)
    {
      minor_status = 0;
      gss_release_cred(&minor_status, &cred_handle);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (gss_cred_id_t_desc_struct)acquireCredentialForUUID:(id)d
{
  dCopy = d;
  v4 = PO_LOG_POKerberosHelper(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POKerberosHelper acquireCredentialForUUID:];
  }

  if (!dCopy)
  {
    v8 = 0;
    goto LABEL_19;
  }

  uUIDString = [dCopy UUIDString];
  if (([(__CFString *)uUIDString isEqualToString:&stru_287080C08]& 1) != 0 || (v6 = CFUUIDCreateFromString(0, uUIDString)) == 0)
  {
    *lifetime = 0;
    goto LABEL_14;
  }

  v7 = v6;
  v8 = GSSCreateCredentialFromUUID(v6);
  CFRelease(v7);
  *lifetime = 0;
  if (!v8)
  {
LABEL_14:
    v11 = MEMORY[0x277CCACA8];
    uUIDString2 = [dCopy UUIDString];
    v13 = [v11 stringWithFormat:@"failed to find credential: %@", uUIDString2];

    v15 = PO_LOG_POKerberosHelper(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [POKerberosHelper acquireCredentialForUUID:];
    }

    v8 = 0;
    goto LABEL_17;
  }

  v9 = gss_inquire_cred(&lifetime[1], v8, 0, lifetime, 0, 0);
  if (lifetime[0])
  {
    v10 = v9 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    v8 = 0;
  }

LABEL_17:

LABEL_19:
  return v8;
}

- (BOOL)destroyCredentialForUUID:(id)d
{
  dCopy = d;
  v4 = PO_LOG_POKerberosHelper(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [POKerberosHelper destroyCredentialForUUID:];
  }

  if (dCopy)
  {
    if (([(__CFString *)dCopy isEqualToString:&stru_287080C08]& 1) == 0 && (v5 = CFUUIDCreateFromString(0, dCopy)) != 0 && (v6 = v5, cred_handle = GSSCreateCredentialFromUUID(v5), CFRelease(v6), cred_handle))
    {
      min_stat = 0;
      v7 = gss_destroy_cred(&min_stat, &cred_handle) == 0;
    }

    else
    {
      v7 = 1;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __46__POKerberosHelper_importKerberosEntry_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_2_1();
  v1 = [MEMORY[0x277CCABB0] numberWithInt:*(v0 + 32)];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x16u);
}

- (void)exchangeKerberosTGTForEntry:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)exchangeKerberosTGTForEntry:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 realm];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_1_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x12u);
}

- (void)checkForValidKerberosTGT:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)acquireCredentialForUUID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)destroyCredentialForUUID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_5(&dword_25E831000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

@end