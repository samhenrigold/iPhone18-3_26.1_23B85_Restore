@interface SOKerberosHelper
- (BOOL)_testForUPNForUser:(id)user;
- (BOOL)authenticate:(gss_cred_id_t_desc_struct *)authenticate toServer:(id)server returningToken:(id *)token andError:(id *)error;
- (BOOL)changePasswordForUPN:(id)n realm:(id)realm withOldPassword:(id)password withNewPassword:(id)newPassword withError:(id *)error;
- (BOOL)getPACForCred:(gss_cred_id_t_desc_struct *)cred pac:(id *)pac;
- (BOOL)validatePassword:(id)password forUser:(id)user;
- (gss_cred_id_t_desc_struct)acquireCredentialForUPN:(id)n;
- (gss_cred_id_t_desc_struct)acquireCredentialForUUID:(id)d;
- (gss_cred_id_t_desc_struct)createCredential:(id)credential withOptions:(id)options andError:(id *)error;
- (id)listCredentials;
- (unsigned)createGSSName:(id)name gname:(gss_name_t_desc_struct *)gname error:(id *)error;
- (void)destroyAllCredentials;
- (void)destroyCredential:(id)credential;
- (void)destroyCredentialForUPN:(id)n;
@end

@implementation SOKerberosHelper

- (gss_cred_id_t_desc_struct)acquireCredentialForUUID:(id)d
{
  dCopy = d;
  v4 = SO_LOG_SOKerberosHelper(dCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper acquireCredentialForUUID:];
  }

  if (!dCopy)
  {
    v8 = 0;
    goto LABEL_19;
  }

  uUIDString = [dCopy UUIDString];
  if (([(__CFString *)uUIDString isEqualToString:&stru_285206D08]& 1) != 0 || (v6 = CFUUIDCreateFromString(0, uUIDString)) == 0)
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

    v15 = SO_LOG_SOKerberosHelper(v14);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper acquireCredentialForUUID:];
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

- (gss_cred_id_t_desc_struct)acquireCredentialForUPN:(id)n
{
  nCopy = n;
  v5 = SO_LOG_SOKerberosHelper(nCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper acquireCredentialForUPN:];
  }

  *minor_status = 0;
  output_cred_handle = 0;
  v13 = 0;
  desired_name = 0;
  v6 = [(SOKerberosHelper *)self createGSSName:nCopy gname:&desired_name error:&v13];

  v7 = v13;
  v8 = v7;
  if (v6)
  {
    if (v7)
    {
      v9 = SO_LOG_SOKerberosHelper(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper acquireCredentialForUPN:];
      }
    }
  }

  else
  {
    oid_set = 0;
    gss_create_empty_oid_set(&minor_status[1], &oid_set);
    gss_add_oid_set_member(&minor_status[1], MEMORY[0x277CCAF18], &oid_set);
    if (!gss_acquire_cred(&minor_status[1], desired_name, 0xFFFFFFFF, oid_set, 1, &output_cred_handle, 0, minor_status) && !gss_inquire_cred(&minor_status[1], output_cred_handle, 0, minor_status, 0, 0) && minor_status[0])
    {
      gss_release_name(&minor_status[1], &desired_name);
      gss_release_oid_set(&minor_status[1], &oid_set);
      v10 = output_cred_handle;
      goto LABEL_11;
    }

    gss_release_oid_set(&minor_status[1], &oid_set);
    gss_release_name(&minor_status[1], &desired_name);
  }

  v10 = 0;
LABEL_11:

  return v10;
}

- (BOOL)_testForUPNForUser:(id)user
{
  v3 = MEMORY[0x277CCAC68];
  v15 = 0;
  userCopy = user;
  v5 = [v3 regularExpressionWithPattern:@"@" options:1 error:&v15];
  v6 = [v5 numberOfMatchesInString:userCopy options:0 range:{0, objc_msgSend(userCopy, "length")}];

  v8 = SO_LOG_SOKerberosHelper(v7);
  v9 = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
  if (v6 < 2)
  {
    if (v9)
    {
      v13 = 0;
      v10 = "kerbGetTGTForUser: User entered a standard username in the username field.";
      v11 = &v13;
      goto LABEL_6;
    }
  }

  else if (v9)
  {
    v14 = 0;
    v10 = "kerbGetTGTForUser: User entered a UPN in the username field.";
    v11 = &v14;
LABEL_6:
    _os_log_impl(&dword_24006C000, v8, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
  }

  return v6 > 1;
}

- (BOOL)changePasswordForUPN:(id)n realm:(id)realm withOldPassword:(id)password withNewPassword:(id)newPassword withError:(id *)error
{
  v26[2] = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  newPasswordCopy = newPassword;
  realmCopy = realm;
  nCopy = n;
  v16 = SO_LOG_SOKerberosHelper(nCopy);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper changePasswordForUPN:realm:withOldPassword:withNewPassword:withError:];
  }

  error = 0;
  [realmCopy UTF8String];

  __ApplePrivate_gsskrb5_set_default_realm();
  v25[0] = @"kGSSChangePasswordOldPassword";
  v25[1] = @"kGSSChangePasswordNewPassword";
  v26[0] = passwordCopy;
  v26[1] = newPasswordCopy;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  name = 0;
  v18 = [(SOKerberosHelper *)self createGSSName:nCopy gname:&name error:error];

  if (v18)
  {
    if (*error)
    {
      v20 = SO_LOG_SOKerberosHelper(v19);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper changePasswordForUPN:realm:withOldPassword:withNewPassword:withError:];
      }
    }
  }

  else
  {
    if (!gss_aapl_change_password(name, MEMORY[0x277CCAF18], v17, &error))
    {
      v21 = 1;
      goto LABEL_9;
    }

    if (error)
    {
      v21 = 0;
      *error = error;
      goto LABEL_9;
    }

    CFRelease(error);
  }

  v21 = 0;
LABEL_9:

  return v21;
}

- (BOOL)validatePassword:(id)password forUser:(id)user
{
  v35 = *MEMORY[0x277D85DE8];
  passwordCopy = password;
  userCopy = user;
  v8 = SO_LOG_SOKerberosHelper(userCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper validatePassword:forUser:];
  }

  context = 0;
  v29 = 0;
  memset(creds, 0, sizeof(creds));
  inited = krb5_init_context(&context);
  if (inited)
  {
    v10 = inited;
    error_message = krb5_get_error_message(context, inited);
    v12 = SO_LOG_SOKerberosHelper(error_message);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v32 = v10;
      v33 = 2080;
      v34 = error_message;
      v13 = "kerbValidatePassword: krb5_init_context failed with error: %d - %s";
LABEL_17:
      _os_log_impl(&dword_24006C000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 0x12u);
      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v14 = [(SOKerberosHelper *)self _testForUPNForUser:userCopy];
  v15 = context;
  uTF8String = [userCopy UTF8String];
  if (v14)
  {
    v17 = krb5_parse_name_flags(v15, uTF8String, 4, &v29);
  }

  else
  {
    v17 = krb5_parse_name(v15, uTF8String, &v29);
  }

  v18 = v17;
  if (v17)
  {
    v19 = krb5_get_error_message(context, v17);
    v12 = SO_LOG_SOKerberosHelper(v19);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v32 = v18;
      v33 = 2080;
      v34 = v19;
      v13 = "kerbValidatePassword: krb5_parse_name failed with error: %d - %s";
      goto LABEL_17;
    }

LABEL_18:

    v20 = 0;
    goto LABEL_19;
  }

  opt = 0;
  krb5_get_init_creds_opt_alloc(context, &opt);
  krb5_principal_get_realm();
  krb5_get_init_creds_opt_set_default_flags();
  if (v14)
  {
    krb5_get_init_creds_opt_set_win2k();
  }

  v20 = 1;
  krb5_get_init_creds_opt_set_pac_request();
  krb5_get_init_creds_opt_set_forwardable(opt, 1);
  v21 = context;
  v22 = v29;
  uTF8String2 = [passwordCopy UTF8String];
  init_creds_password = krb5_get_init_creds_password(v21, creds, v22, uTF8String2, 0, 0, 0, 0, opt);
  krb5_get_init_creds_opt_free(context, opt);
  if (init_creds_password)
  {
    v25 = krb5_get_error_message(context, init_creds_password);
    v12 = SO_LOG_SOKerberosHelper(v25);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      v32 = init_creds_password;
      v33 = 2080;
      v34 = v25;
      v13 = "kerbValidatePassword: krb5_get_init_creds_password failed with error: %d - %s";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_19:
  krb5_free_cred_contents(context, creds);
  if (v29)
  {
    krb5_free_principal(context, v29);
  }

  if (context)
  {
    MEMORY[0x245CB7430]();
  }

  return v20;
}

- (unsigned)createGSSName:(id)name gname:(gss_name_t_desc_struct *)gname error:(id *)error
{
  nameCopy = name;
  v8 = SO_LOG_SOKerberosHelper(nameCopy);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper createGSSName:gname:error:];
  }

  minor_status = 0;
  error = 0;
  v9 = [nameCopy componentsSeparatedByString:@"@"];
  v10 = [v9 count] - 1;

  if (v10 < 2)
  {
    v14 = GSSCreateName(nameCopy, MEMORY[0x277CCAF00], &error);
    *gname = v14;
    if (v14)
    {
      v12 = 0;
    }

    else
    {
      v16 = SO_LOG_SOKerberosHelper(0);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper createGSSName:gname:error:];
      }

      if (error)
      {
        *error = error;
      }

      else
      {
        CFRelease(error);
      }

      v12 = 851968;
    }
  }

  else
  {
    v19 = 0;
    v11 = krb5_parse_name_flags(0, [nameCopy UTF8String], 4, &v19);
    if (v11)
    {
      v12 = v11;
      v13 = SO_LOG_SOKerberosHelper(v11);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper createGSSName:gname:error:];
      }

LABEL_12:

      goto LABEL_19;
    }

    input_name_buffer.length = 8;
    input_name_buffer.value = &v19;
    v15 = gss_import_name(&minor_status, &input_name_buffer, MEMORY[0x277CCAF28], gname);
    v12 = v15;
    if (v15)
    {
      v13 = SO_LOG_SOKerberosHelper(v15);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper createGSSName:gname:error:];
      }

      goto LABEL_12;
    }
  }

LABEL_19:

  return v12;
}

- (gss_cred_id_t_desc_struct)createCredential:(id)credential withOptions:(id)options andError:(id *)error
{
  optionsCopy = options;
  credentialCopy = credential;
  v10 = SO_LOG_SOKerberosHelper(credentialCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper createCredential:withOptions:andError:];
  }

  error = 0;
  output_cred_handle = 0;
  minor_status = 0;
  desired_name = 0;
  v11 = [(SOKerberosHelper *)self createGSSName:credentialCopy gname:&desired_name error:error];

  if (v11)
  {
    if (*error)
    {
      v13 = SO_LOG_SOKerberosHelper(v12);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper changePasswordForUPN:realm:withOldPassword:withNewPassword:withError:];
      }
    }
  }

  else
  {
    v16 = gss_aapl_initial_cred(desired_name, MEMORY[0x277CCAF18], optionsCopy, &output_cred_handle, &error);
    v17 = gss_release_name(&minor_status, &desired_name);
    if (!v16)
    {
      v14 = output_cred_handle;
      goto LABEL_9;
    }

    v18 = SO_LOG_SOKerberosHelper(v17);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper createCredential:withOptions:andError:];
    }

    if (error)
    {
      v14 = 0;
      *error = error;
      goto LABEL_9;
    }

    CFRelease(error);
  }

  v14 = 0;
LABEL_9:

  return v14;
}

- (void)destroyAllCredentials
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

uint64_t __41__SOKerberosHelper_destroyAllCredentials__block_invoke(uint64_t a1, uint64_t a2, gss_cred_id_t_desc_struct *a3)
{
  cred_handle = a3;
  min_stat = 0;
  return gss_destroy_cred(&min_stat, &cred_handle);
}

- (void)destroyCredential:(id)credential
{
  credentialCopy = credential;
  v4 = SO_LOG_SOKerberosHelper(credentialCopy);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper destroyCredential:];
  }

  if (credentialCopy)
  {
    min_stat = 0;
    cred_handle = 0;
    uUIDString = [credentialCopy UUIDString];
    if (([(__CFString *)uUIDString isEqualToString:&stru_285206D08]& 1) != 0)
    {
      v6 = MEMORY[0x277CCACA8];
      uUIDString2 = [credentialCopy UUIDString];
      v8 = [v6 stringWithFormat:@"failed to find credential to destroy: %@", uUIDString2];

      v10 = SO_LOG_SOKerberosHelper(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
LABEL_12:
        [SOKerberosHelper acquireCredentialForUUID:];
      }
    }

    else
    {
      v11 = CFUUIDCreateFromString(0, uUIDString);
      if (v11)
      {
        v12 = v11;
        cred_handle = GSSCreateCredentialFromUUID(v11);
        CFRelease(v12);
        if (cred_handle)
        {
          gss_destroy_cred(&min_stat, &cred_handle);
          if (cred_handle)
          {
            gss_release_cred(&min_stat, &cred_handle);
          }
        }

        goto LABEL_14;
      }

      v13 = MEMORY[0x277CCACA8];
      uUIDString3 = [credentialCopy UUIDString];
      v8 = [v13 stringWithFormat:@"failed to find credential to destroy: %@", uUIDString3];

      v10 = SO_LOG_SOKerberosHelper(v15);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_12;
      }
    }

LABEL_14:
  }
}

- (void)destroyCredentialForUPN:(id)n
{
  nCopy = n;
  v5 = SO_LOG_SOKerberosHelper(nCopy);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper destroyCredentialForUPN:];
  }

  if (nCopy)
  {
    min_stat = 0;
    v8 = [(SOKerberosHelper *)self acquireCredentialForUPN:nCopy];
    if (v8)
    {
      gss_destroy_cred(&min_stat, &v8);
      if (v8)
      {
        gss_release_cred(&min_stat, &v8);
      }
    }
  }

  else
  {
    v7 = SO_LOG_SOKerberosHelper(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper destroyCredentialForUPN:];
    }
  }
}

- (BOOL)authenticate:(gss_cred_id_t_desc_struct *)authenticate toServer:(id)server returningToken:(id *)token andError:(id *)error
{
  v39 = *MEMORY[0x277D85DE8];
  serverCopy = server;
  v10 = SO_LOG_SOKerberosHelper(serverCopy);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper authenticate:toServer:returningToken:andError:];
  }

  context_handle = 0;
  buffer.length = 0;
  buffer.value = 0;
  minor_status = 0;
  error = 0;
  v11 = GSSCreateName(serverCopy, MEMORY[0x277CCAEF8], &error);
  input_name = v11;
  if (v11)
  {
    v12 = v11;
    lowercaseString = [serverCopy lowercaseString];
    if ([lowercaseString hasPrefix:@"http"])
    {
      v14 = MEMORY[0x277CCAF40];
    }

    else
    {
      v14 = MEMORY[0x277CCAF18];
    }

    inited = gss_init_sec_context(&minor_status, authenticate, &context_handle, v12, v14, 0x803Eu, 0xFFFFFFFF, 0, 0, 0, &buffer, 0, 0);
    v16 = inited < 2;
    if (inited >= 2)
    {
      v21 = inited;
      v22 = GSSCreateError(v14, inited, minor_status);
      v23 = SO_LOG_SOKerberosHelper(v22);
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        *buf = 138413058;
        v32 = serverCopy;
        v33 = 1024;
        v34 = v21;
        v35 = 1024;
        v36 = minor_status;
        v37 = 2114;
        v38 = v22;
        _os_log_error_impl(&dword_24006C000, v23, OS_LOG_TYPE_ERROR, "gss_init_sec_context failed server: %@, maj_stat: %d, min_stat: %d, %{public}@", buf, 0x22u);
      }

      if (error)
      {
        v24 = v22;
        *error = v22;
      }

      else
      {
        CFRelease(v22);
      }
    }

    else
    {
      v17 = SO_LOG_SOKerberosHelper(inited);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 67109120;
        LODWORD(v32) = buffer.length;
        _os_log_impl(&dword_24006C000, v17, OS_LOG_TYPE_INFO, "have a buffer of length: %d, success", buf, 8u);
      }

      v18 = objc_alloc(MEMORY[0x277CBEA90]);
      v19 = [v18 initWithBytes:buffer.value length:buffer.length];
      *token = v19;
    }

    gss_release_name(&minor_status, &input_name);
    gss_release_buffer(&minor_status, &buffer);
  }

  else
  {
    v20 = SO_LOG_SOKerberosHelper(0);
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper authenticate:toServer:returningToken:andError:];
    }

    if (error)
    {
      v16 = 0;
      *error = error;
    }

    else
    {
      CFRelease(error);
      v16 = 0;
    }
  }

  return v16;
}

- (id)listCredentials
{
  min_stat = 0;
  v2 = [MEMORY[0x277CBEBF8] mutableCopy];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __35__SOKerberosHelper_listCredentials__block_invoke;
  v5[3] = &unk_278C93328;
  v3 = v2;
  v6 = v3;
  gss_iter_creds(&min_stat, 0, MEMORY[0x277CCAF18], v5);

  return v3;
}

void __35__SOKerberosHelper_listCredentials__block_invoke(uint64_t a1, uint64_t a2, gss_cred_id_t_desc_struct *a3)
{
  if (a3)
  {
    v11 = objc_alloc_init(SOKerberosCredential);
    v5 = GSSCredentialCopyUUID(a3);
    if (v5)
    {
      v6 = v5;
      v7 = CFUUIDCreateString(0, v5);
      [(SOKerberosCredential *)v11 setUuid:v7];

      [(SOKerberosCredential *)v11 setLifetime:GSSCredentialGetLifetime(a3)];
      v8 = GSSCredentialCopyName(a3);
      if (v8)
      {
        v9 = v8;
        DisplayString = GSSNameCreateDisplayString(v8);
        CFRelease(v9);
        if (DisplayString)
        {
          [(SOKerberosCredential *)v11 setName:DisplayString];
          CFRelease(DisplayString);
        }
      }

      [*(a1 + 32) addObject:v11];
      CFRelease(v6);
    }

    CFRelease(a3);
  }
}

- (BOOL)getPACForCred:(gss_cred_id_t_desc_struct *)cred pac:(id *)pac
{
  v60 = *MEMORY[0x277D85DE8];
  v6 = SO_LOG_SOKerberosHelper(self);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [SOKerberosHelper getPACForCred:pac:];
  }

  if (pac)
  {
    *pac = 0;
  }

  v58 = 0;
  *&v59.byte0 = 0;
  principal = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  *&v59.byte8 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v45 = 0;
  v44 = 0;
  v43 = 0;
  v57 = 0u;
  memset(creds, 0, sizeof(creds));
  if (!cred)
  {
    v9 = SO_LOG_SOKerberosHelper(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper getPACForCred:pac:];
    }

    goto LABEL_11;
  }

  inited = krb5_init_context(&v53);
  if (inited)
  {
    v9 = SO_LOG_SOKerberosHelper(inited);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper getPACForCred:pac:];
    }

LABEL_11:

    return 0;
  }

  v12 = GSSCredentialCopyUUID(cred);
  if (!v12)
  {
    v16 = SO_LOG_SOKerberosHelper(0);
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SOKerberosHelper getPACForCred:pac:];
    }

    v17 = 0;
    v10 = 1;
    goto LABEL_28;
  }

  v13 = v12;
  v59 = CFUUIDGetUUIDBytes(v12);
  CFRelease(v13);
  v14 = krb5_cc_resolve_by_uuid();
  if (!v14)
  {
    v18 = krb5_cc_get_principal(v53, v58, &principal);
    if (v18)
    {
      v15 = SO_LOG_SOKerberosHelper(v18);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    realm = krb5_principal_get_realm();
    v19 = krb5_make_principal();
    if (v19)
    {
      v15 = SO_LOG_SOKerberosHelper(v19);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    v42 = 0u;
    memset(&mcreds[16], 0, 112);
    krb5_cc_clear_mcred();
    *&mcreds[8] = v52;
    *mcreds = principal;
    cred = krb5_cc_retrieve_cred(v53, v58, 0, mcreds, creds);
    if (cred)
    {
      v21 = SO_LOG_SOKerberosHelper(cred);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      krb5_cc_clear_mcred();
      goto LABEL_27;
    }

    krb5_cc_clear_mcred();
    krb5_free_principal(v53, v52);
    v52 = 0;
    creds_opt_alloc = krb5_get_creds_opt_alloc();
    if (creds_opt_alloc)
    {
      v15 = SO_LOG_SOKerberosHelper(creds_opt_alloc);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    krb5_get_creds_opt_set_impersonate();
    krb5_get_creds_opt_add_options();
    krb5_get_creds_opt_add_options();
    krb5_get_creds_opt_add_options();
    v40 = 0;
    memset(&v39[26], 0, 64);
    v23 = decode_Ticket();
    if (v23)
    {
      v15 = SO_LOG_SOKerberosHelper(v23);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    creds_opt_set_ticket = krb5_get_creds_opt_set_ticket();
    v25 = free_Ticket();
    if (creds_opt_set_ticket)
    {
      v15 = SO_LOG_SOKerberosHelper(v25);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    v26 = krb5_get_creds();
    if (v26)
    {
      v15 = SO_LOG_SOKerberosHelper(v26);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    v27 = decode_Ticket();
    if (v27)
    {
      v15 = SO_LOG_SOKerberosHelper(v27);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }

      goto LABEL_26;
    }

    v38 = malloc_type_calloc(1uLL, 0x98uLL, 0x10B0040764A81A9uLL);
    v28 = krb5_decrypt_ticket();
    v29 = free_Ticket();
    if (v28)
    {
      v30 = SO_LOG_SOKerberosHelper(v29);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        [SOKerberosHelper getPACForCred:pac:];
      }
    }

    else
    {
      authorization_data_type = krb5_ticket_get_authorization_data_type();
      if (authorization_data_type)
      {
        v30 = SO_LOG_SOKerberosHelper(authorization_data_type);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          [SOKerberosHelper getPACForCred:pac:];
        }
      }

      else
      {
        v32 = krb5_pac_parse();
        v33 = krb5_data_free();
        if (v32)
        {
          v30 = SO_LOG_SOKerberosHelper(v33);
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            [SOKerberosHelper getPACForCred:pac:];
          }
        }

        else
        {
          v34 = krb5_pac_verify();
          if (v34)
          {
            v30 = SO_LOG_SOKerberosHelper(v34);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [SOKerberosHelper getPACForCred:pac:];
            }
          }

          else
          {
            krb5_data_zero();
            buffer = krb5_pac_get_buffer();
            if (!buffer)
            {
              memset(v39, 0, 416);
              get_kerbvalidationinfo(v44, v43, v39);
              if (!v36)
              {
                if (pac)
                {
                  *pac = [[SOKerberosPacData alloc] initWithValidationInfo:v39, "krbtgt", realm, 0];
                }

                free_kerbvalidationinfo(v39);
              }

              krb5_data_free();
              krb5_pac_free();
              v45 = 0;
              v10 = 1;
              goto LABEL_79;
            }

            v30 = SO_LOG_SOKerberosHelper(buffer);
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [SOKerberosHelper getPACForCred:pac:];
            }
          }
        }
      }
    }

    v10 = 0;
LABEL_79:
    v17 = v38;
    goto LABEL_28;
  }

  v15 = SO_LOG_SOKerberosHelper(v14);
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [SOKerberosHelper getPACForCred:pac:];
  }

LABEL_26:

LABEL_27:
  v17 = 0;
  v10 = 0;
LABEL_28:
  krb5_free_cred_contents(v53, creds);
  if (v55)
  {
    krb5_free_creds(v53, v55);
    v55 = 0;
  }

  if (v58)
  {
    krb5_cc_close(v53, v58);
    v58 = 0;
  }

  if (principal)
  {
    krb5_free_principal(v53, principal);
    principal = 0;
  }

  if (v52)
  {
    krb5_free_principal(v53, v52);
    v52 = 0;
  }

  if (v51)
  {
    krb5_get_creds_opt_free();
    v51 = 0;
  }

  if (v17)
  {
    krb5_free_ticket(v53, v17);
  }

  if (v45)
  {
    krb5_pac_free();
    v45 = 0;
  }

  if (v53)
  {
    MEMORY[0x245CB7430]();
  }

  return v10;
}

- (void)acquireCredentialForUUID:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)acquireCredentialForUUID:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)acquireCredentialForUPN:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)acquireCredentialForUPN:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)changePasswordForUPN:realm:withOldPassword:withNewPassword:withError:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)changePasswordForUPN:realm:withOldPassword:withNewPassword:withError:.cold.2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)validatePassword:forUser:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)createGSSName:gname:error:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)createGSSName:gname:error:.cold.2()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)createGSSName:gname:error:.cold.3()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createGSSName:gname:error:.cold.4()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)createCredential:withOptions:andError:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)createCredential:withOptions:andError:.cold.3()
{
  OUTLINED_FUNCTION_7(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)destroyCredential:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)destroyCredentialForUPN:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)destroyCredentialForUPN:.cold.2()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)authenticate:toServer:returningToken:andError:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)authenticate:toServer:returningToken:andError:.cold.2()
{
  v5 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  v3 = 2114;
  v4 = v0;
  _os_log_error_impl(&dword_24006C000, v1, OS_LOG_TYPE_ERROR, "failed to import %@: %{public}@", v2, 0x16u);
}

- (void)getPACForCred:pac:.cold.1()
{
  v6 = 136315394;
  OUTLINED_FUNCTION_0_6();
  OUTLINED_FUNCTION_2_2(&dword_24006C000, v0, v1, "%s  on %@", v2, v3, v4, v5, v6);
}

- (void)getPACForCred:pac:.cold.2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.3()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.7()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.8()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.11()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.12()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.13()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.14()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.15()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.16()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
}

- (void)getPACForCred:pac:.cold.17()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)getPACForCred:pac:.cold.18()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end