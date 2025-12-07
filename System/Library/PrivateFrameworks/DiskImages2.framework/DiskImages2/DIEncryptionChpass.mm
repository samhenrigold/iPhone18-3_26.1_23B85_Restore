@interface DIEncryptionChpass
- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error;
- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error;
- (BOOL)replacePassWithXpcHandler:(id)handler params:(id)params error:(id *)error;
- (BOOL)replacePassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error;
- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error;
- (DIEncryptionChpass)initWithCoder:(id)coder;
- (DIEncryptionChpass)initWithParams:(id)params;
- (id).cxx_construct;
- (void)encodeWithCoder:(id)coder;
- (void)setPassEntryToChange:(void *)change;
@end

@implementation DIEncryptionChpass

- (DIEncryptionChpass)initWithParams:(id)params
{
  v4.receiver = self;
  v4.super_class = DIEncryptionChpass;
  return [(DIEncryptionFrontend *)&v4 initWithParams:params];
}

- (DIEncryptionChpass)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"diParams"];
  v6 = [(DIEncryptionChpass *)self initWithParams:v5];
  if (v6)
  {
    -[DIEncryptionFrontend setAllowStoringInKeychain:](v6, "setAllowStoringInKeychain:", [coderCopy decodeBoolForKey:@"allowStoringInKeychain"]);
    crypto::passphrase_header_serializer::decode(&v9, coderCopy);
    std::shared_ptr<crypto::passphrase_header>::operator=[abi:ne200100]<crypto::passphrase_header,std::default_delete<crypto::passphrase_header>,0>(&v6->_passEntryToChange.__ptr_, &v9);
    v7 = v9;
    v9 = 0;
    if (v7)
    {
      MEMORY[0x24C1ED730](v7, 0x1000C409E51EDBFLL);
    }
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  diParams = [(DIEncryptionFrontend *)self diParams];
  [coderCopy encodeObject:diParams forKey:@"diParams"];

  ptr = self->_passEntryToChange.__ptr_;
  if (ptr)
  {
    crypto::passphrase_header_serializer::encode(coderCopy, ptr, v5);
  }
}

- (BOOL)replacePassWithXpcHandler:(id)handler params:(id)params error:(id *)error
{
  handlerCopy = handler;
  LOBYTE(error) = [(DIEncryptionFrontend *)self addPassphraseEntryWithXpcHandler:handlerCopy flags:[(DIEncryptionFrontend *)self flags] usage:2 error:error];

  return error;
}

- (BOOL)unlockWithPassphrase:(const char *)passphrase error:(id *)error
{
  v31 = *MEMORY[0x277D85DE8];
  diParams = [(DIEncryptionFrontend *)self diParams];
  diskImageParamsXPC = [diParams diskImageParamsXPC];

  backendXPC = [diskImageParamsXPC backendXPC];
  v9 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  v10 = v9;
  if (v9)
  {
    v11 = *v9;
    v27 = v9;
    v28 = v11;
    v29[0] = 0;
    v30 = 0;
    v12 = 0x278F80000;
    if (v11 == v9[1])
    {
LABEL_20:
      sleep(2u);
      error = [*(v12 + 848) failWithPOSIXCode:80 description:@"Incorrect passphrase" error:error];
    }

    else
    {
      while (1)
      {
        v13 = crypto::auth_table::const_iterator::operator*(&v27);
        if (!*(v13 + 158))
        {
          v14 = crypto::auth_entry_ns::passphrase::unlock(&v20, v13, passphrase);
          if (v22 == 1)
          {
            [backendXPC cryptoHeader];
            std::allocate_shared[abi:ne200100]<crypto::format,std::allocator<crypto::format>,crypto::keys,std::shared_ptr<crypto::header> &,0>();
          }

          v15 = std::generic_category();
          *buf = 35;
          v26 = v15;
          if (*(*v21 + 32))(v21, v20, buf) || ((v26->equivalent_0)(v26, &v20, *buf))
          {
            v16 = 1;
          }

          else
          {
            error = [DIError failWithUnexpected:v20 error:v21, error];
            v16 = 0;
          }

          if (v22 == 1)
          {
            *buf = &v20;
            std::vector<crypto::keys::key_pair>::__destroy_vector::operator()[abi:ne200100](buf);
          }

          if ((v16 & 1) == 0)
          {
            break;
          }
        }

        crypto::auth_table::const_iterator::operator++(&v27, &v23);
        if (v24[640] == 1)
        {
          std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v24);
        }

        if (v27 == v10 && v28 == v10[1])
        {
          if (v30)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29);
          }

          v12 = 0x278F80000uLL;
          goto LABEL_20;
        }
      }

      if (v30)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v29);
      }
    }
  }

  else
  {
    error = 0;
  }

  return error & 1;
}

- (BOOL)replacePassphrase:(const char *)passphrase error:(id *)error
{
  selfCopy = self;
  v57 = *MEMORY[0x277D85DE8];
  v7 = [(DIEncryptionFrontend *)self generateAuthTableWithError:error];
  if (!v7)
  {
    LOBYTE(selfCopy) = 0;
    return selfCopy & 1;
  }

  v8 = v7;
  objc_msgSend_getSerializerWithAuthTable_(selfCopy);
  if (v29)
  {
    v33.i32[0] = 8;
    crypto::auth_entry_ns::passphrase::create(&v54, passphrase, v8, v33.i32, v28);
    if (v56)
    {
      v9 = *v8;
      v50 = v8;
      v51 = v9;
      v52[0] = 0;
      v53 = 0;
      if (v9 == v8[1])
      {
LABEL_11:
        v22 = 1;
      }

      else
      {
        while (1)
        {
          v10 = crypto::auth_table::const_iterator::operator*(&v50);
          v11 = v10;
          if (!*(v10 + 632))
          {
            v12 = *(v10 + 60);
            v13 = *(v10 + 112);
            ptr = selfCopy->_passEntryToChange.__ptr_;
            v15 = *(ptr + 1);
            v33 = *ptr;
            v27 = *(v10 + 12);
            v26 = *(v10 + 96);
            v16 = *(ptr + 2);
            v34[0] = v15;
            v34[1] = v16;
            v17 = *(ptr + 12);
            v18 = *(ptr + 52);
            v37 = *(ptr + 68);
            v36 = v18;
            v38 = *(ptr + 84);
            v19 = *(ptr + 25);
            v35 = v17;
            v39 = v19;
            memcpy(v40, ptr + 104, 0x200uLL);
            v42[0] = v27;
            v20 = *(v11 + 44);
            v42[1] = *(v11 + 28);
            v43 = v20;
            v44 = v12;
            v21 = v11[5];
            v45 = v11[4];
            v46 = v21;
            v47 = v26;
            v48 = v13;
            memcpy(v49, v11 + 116, sizeof(v49));
            v30[0] = &v33;
            v30[1] = v42;
            if (boost::hana::detail::compare_finite_sequences<boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,boost::hana::tuple<Wrapper<crypto::passphrase_header::key_derivation_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::key_derivation_prng_algorithm_t,std::integral_constant<BOOL,false>,be_type>,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,crypto::passphrase_header::_salt,crypto::passphrase_header::_blob_encryption_iv,Wrapper<unsigned int,std::integral_constant<BOOL,true>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::wrap_key_crypto_padding_algo,std::integral_constant<BOOL,false>,be_type>,Wrapper<crypto::passphrase_header::crypto_mode,std::integral_constant<BOOL,false>,be_type>,crypto::passphrase_header::_blob>,10ul>::apply<1ul>(v30, vmovn_s32(vceqq_s32(v33, v27)).u8[0] & 1))
            {
              break;
            }
          }

          crypto::auth_table::const_iterator::operator++(&v50, &v31);
          if (v32[640] == 1)
          {
            std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v32);
          }

          if (v50 == v8 && v51 == v8[1])
          {
            goto LABEL_11;
          }
        }

        (*(v28[0] + 1))(v42, v28, &v55 + 4);
        if (v43)
        {
          crypto::auth_table::replace(v8, v42, &v50, &v33);
          v22 = v41;
          if (v41 & 1) != 0 || (LOBYTE(selfCopy) = [DIError failWithUnexpected:v33.i64[0] verboseInfo:v33.i64[1] error:@"Failed to replace passphrase entry in auth table", error], (v41))
          {
            if (v40[552] == 1)
            {
              std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v34);
            }
          }
        }

        else
        {
          LOBYTE(selfCopy) = [DIError failWithUnexpected:*&v42[0] verboseInfo:*(&v42[0] + 1) error:@"Failed to serialize passphrase to crypto header", error];
          v22 = 0;
        }

        if (v43 == 1)
        {
          crypto::descriptor_handle_t::~descriptor_handle_t(v42);
        }
      }

      if (v53 == 1)
      {
        std::__variant_detail::__dtor<std::__variant_detail::__traits<crypto::auth_entry_ns::passphrase,crypto::auth_entry_ns::public_key,crypto::auth_entry_ns::symmetric_key,crypto::auth_entry_ns::unknown,crypto::auth_entry_ns::error>,(std::__variant_detail::_Trait)1>::__destroy[abi:ne200100](v52);
      }

      if (v22)
      {
        (*(v28[0] + 4))(&v33, v28, v8);
        v23 = v34[0];
        if ((v34[0] & 1) == 0)
        {
          LOBYTE(selfCopy) = [DIError failWithUnexpected:v33.i64[0] verboseInfo:v33.i64[1] error:@"Failed to update crypto header", error];
        }

        LOBYTE(selfCopy) = v23 | selfCopy;
      }

      goto LABEL_22;
    }

    error = [DIError failWithUnexpected:v54 verboseInfo:v55 error:@"Failed to create passphrase auth entry", error];
  }

  else
  {
    error = [DIError failWithUnexpected:v28[0] verboseInfo:v28[1] error:@"Failed to create crypto serializer", error];
  }

  LOBYTE(selfCopy) = error;
LABEL_22:
  if (v29 == 1)
  {
    (*(v28[0] + 7))(v28);
  }

  return selfCopy & 1;
}

- (BOOL)updateDiskImageParamsWithFrontend:(id)frontend error:(id *)error
{
  frontendCopy = frontend;
  v13.receiver = self;
  v13.super_class = DIEncryptionChpass;
  v7 = [(DIEncryptionFrontend *)&v13 updateDiskImageParamsWithFrontend:frontendCopy error:error];
  if (v7)
  {
    passEntryToChange = [frontendCopy passEntryToChange];
    v10 = *passEntryToChange;
    v9 = *(passEntryToChange + 8);
    if (v9)
    {
      atomic_fetch_add_explicit((v9 + 8), 1uLL, memory_order_relaxed);
    }

    cntrl = self->_passEntryToChange.__cntrl_;
    self->_passEntryToChange.__ptr_ = v10;
    self->_passEntryToChange.__cntrl_ = v9;
    if (cntrl)
    {
      std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
    }
  }

  return v7;
}

- (BOOL)GUIAskForPassphraseWithPassphraseUsage:(int64_t)usage error:(id *)error
{
  v38[4] = *MEMORY[0x277D85DE8];
  error = 0;
  v7 = MEMORY[0x277CBEB18];
  if (usage)
  {
    gUIPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIPassphraseLabelCreate];
    v9 = [v7 arrayWithObject:gUIPassphraseLabelCreate];

    gUIVerifyPassphraseLabelCreate = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
    v11 = 65539;
    v12 = gUIVerifyPassphraseLabelCreate != 0;

    if (gUIVerifyPassphraseLabelCreate)
    {
      gUIVerifyPassphraseLabelCreate2 = [(DIEncryptionFrontend *)self GUIVerifyPassphraseLabelCreate];
      [v9 addObject:gUIVerifyPassphraseLabelCreate2];

      v11 = 196611;
    }

    v14 = MEMORY[0x277CBEB38];
    v37[0] = *MEMORY[0x277CBF188];
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptCreate];
  }

  else
  {
    gUIPassphraseLabelUnlock = [(DIEncryptionFrontend *)self GUIPassphraseLabelUnlock];
    v9 = [v7 arrayWithObject:gUIPassphraseLabelUnlock];

    v14 = MEMORY[0x277CBEB38];
    v37[0] = *MEMORY[0x277CBF188];
    gUIPassphrasePromptCreate = [(DIEncryptionFrontend *)self GUIPassphrasePromptUnlock];
    v12 = 0;
    v11 = 65539;
  }

  v17 = *MEMORY[0x277CBF1E8];
  v38[0] = gUIPassphrasePromptCreate;
  v38[1] = @"OK";
  v18 = *MEMORY[0x277CBF1C0];
  v37[1] = v17;
  v37[2] = v18;
  v37[3] = *MEMORY[0x277CBF230];
  v38[2] = @"Cancel";
  v38[3] = v9;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:4];
  v20 = [v14 dictionaryWithDictionary:v19];

  v21 = CFUserNotificationCreate(0, 0.0, v11, &error, v20);
  v22 = v21;
  if (!v21)
  {
    error = [MEMORY[0x277CCACA8] stringWithFormat:@"CFUserNotificationCreate failed, error code %d", error];
    v23 = [DIError failWithEnumValue:154 verboseInfo:error error:error];

    goto LABEL_32;
  }

  responseFlags = 0;
  if (!CFUserNotificationReceiveResponse(v21, 0.0, &responseFlags))
  {
    v34 = BYTE1(responseFlags) & 1;
    if ((responseFlags & 3) != 0)
    {
      v25 = 0;
      v26 = [DIError failWithPOSIXCode:89 description:@"The operation was cancelled by the user" error:error];
LABEL_12:
      v23 = v26;
LABEL_31:

      goto LABEL_32;
    }

    v27 = *MEMORY[0x277CBF238];
    v25 = CFUserNotificationGetResponseValue(v22, *MEMORY[0x277CBF238], 0);
    if (v12)
    {
      v28 = CFUserNotificationGetResponseValue(v22, v27, 1);
      if (![v25 isEqualToString:v28])
      {
        v23 = [DIError failWithPOSIXCode:80 description:@"Passwords don’t match" error:error];

        goto LABEL_31;
      }
    }

    if (usage == 2)
    {
      v32 = v25;
      if (!-[DIEncryptionChpass replacePassphrase:error:](self, "replacePassphrase:error:", [v25 UTF8String], error))
      {
        goto LABEL_29;
      }

      goto LABEL_25;
    }

    if (usage == 1)
    {
      v31 = v25;
      v30 = -[DIEncryptionFrontend setPassphrase:error:](self, "setPassphrase:error:", [v25 UTF8String], error);
    }

    else
    {
      if (usage)
      {
LABEL_25:
        if ([(DIEncryptionFrontend *)self askPermissionWithRememberPassword:&v34 error:error])
        {
          if (![(DIEncryptionChpass *)self allowStoringInKeychain]|| v34 != 1)
          {
            v23 = 1;
            goto LABEL_31;
          }

          v26 = [(DIEncryptionFrontend *)self storeInKeychainWithPassphrase:v25 forceSystemKeychain:0 error:error];
          goto LABEL_12;
        }

LABEL_29:
        v23 = 0;
        goto LABEL_31;
      }

      v29 = v25;
      v30 = -[DIEncryptionChpass unlockWithPassphrase:error:](self, "unlockWithPassphrase:error:", [v25 UTF8String], error);
    }

    if (!v30)
    {
      goto LABEL_29;
    }

    goto LABEL_25;
  }

  v23 = [DIError failWithEnumValue:154 verboseInfo:@"CFUserNotificationReceiveResponse failed" error:error];
LABEL_32:

  return v23;
}

- (BOOL)consoleAskForPassphraseWithUseStdin:(BOOL)stdin usage:(int64_t)usage error:(id *)error
{
  stdinCopy = stdin;
  v45 = *MEMORY[0x277D85DE8];
  v9 = *__error();
  v10 = DIForwardLogs();
  if (v10)
  {
    v39 = 0;
    v12 = getDIOSLog(v10, v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    *buf = 68157954;
    v41 = 70;
    v42 = 2080;
    v43 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
    LODWORD(v38) = 18;
    v14 = _os_log_send_and_compose_impl(v13, &v39, 0, 0, &dword_248DE0000, v12, 0, "%.*s: Asking for passphrase using readpassphrase", buf, v38);

    if (v14)
    {
      fprintf(*MEMORY[0x277D85DF8], "%s\n", v14);
      free(v14);
    }
  }

  else
  {
    v15 = getDIOSLog(v10, v11);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 68157954;
      v41 = 70;
      v42 = 2080;
      v43 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      _os_log_impl(&dword_248DE0000, v15, OS_LOG_TYPE_DEFAULT, "%.*s: Asking for passphrase using readpassphrase", buf, 0x12u);
    }
  }

  *__error() = v9;
  if (usage)
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptCreate];
    v17 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v19 = 32;
    }

    else
    {
      v19 = 2;
    }
  }

  else
  {
    cLIPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIPassphrasePromptUnlock];
    v20 = cLIPassphrasePromptCreate;
    uTF8String = [cLIPassphrasePromptCreate UTF8String];
    if (stdinCopy)
    {
      v19 = 32;
    }

    else
    {
      v19 = 2;
    }
  }

  v21 = readpassphrase(uTF8String, __s1, 0x102uLL, v19);

  if (v21)
  {
    if (usage)
    {
      if (!stdinCopy)
      {
        cLIVerifyPassphrasePromptCreate = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
        v23 = cLIVerifyPassphrasePromptCreate == 0;

        if (!v23)
        {
          cLIVerifyPassphrasePromptCreate2 = [(DIEncryptionFrontend *)self CLIVerifyPassphrasePromptCreate];
          v25 = cLIVerifyPassphrasePromptCreate2;
          v26 = readpassphrase([cLIVerifyPassphrasePromptCreate2 UTF8String], buf, 0x102uLL, 2);

          if (!v26)
          {
            return [DIError failWithPOSIXCode:5 verboseInfo:@"Failed to read passphrase" error:error];
          }

          if (strncmp(__s1, buf, 0x101uLL))
          {
            return [DIError failWithPOSIXCode:80 verboseInfo:@"Passphrases doesn't match" error:error];
          }
        }
      }
    }

    switch(usage)
    {
      case 2:
        return [(DIEncryptionChpass *)self replacePassphrase:__s1 error:error];
      case 1:
        return [(DIEncryptionFrontend *)self setPassphrase:__s1 error:error];
      case 0:
        return [(DIEncryptionChpass *)self unlockWithPassphrase:__s1 error:error];
    }

    return 0;
  }

  else
  {
    if (stdinCopy)
    {
      return [DIError failWithPOSIXCode:25 verboseInfo:@"Failed to read passphrase from stdin" error:error];
    }

    v28 = *__error();
    v29 = DIForwardLogs();
    if (v29)
    {
      v39 = 0;
      v31 = getDIOSLog(v29, v30);
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v32 = 3;
      }

      else
      {
        v32 = 2;
      }

      *buf = 68157954;
      v41 = 70;
      v42 = 2080;
      v43 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
      LODWORD(v38) = 18;
      v33 = _os_log_send_and_compose_impl(v32, &v39, 0, 0, &dword_248DE0000, v31, 0, "%.*s: Failed to read passphrase from TTY", buf, v38);

      if (v33)
      {
        fprintf(*MEMORY[0x277D85DF8], "%s\n", v33);
        free(v33);
      }
    }

    else
    {
      v35 = getDIOSLog(v29, v30);
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 68157954;
        v41 = 70;
        v42 = 2080;
        v43 = "[DIEncryptionChpass consoleAskForPassphraseWithUseStdin:usage:error:]";
        _os_log_impl(&dword_248DE0000, v35, OS_LOG_TYPE_DEFAULT, "%.*s: Failed to read passphrase from TTY", buf, 0x12u);
      }
    }

    *__error() = v28;
    v36 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277CCA5B8] code:25 userInfo:0];
    v34 = [DIError failWithInError:v36 outError:error];
  }

  return v34;
}

- (void)setPassEntryToChange:(void *)change
{
  p_passEntryToChange = &self->_passEntryToChange;
  v5 = *change;
  v4 = *(change + 1);
  if (v4)
  {
    atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
  }

  cntrl = self->_passEntryToChange.__cntrl_;
  p_passEntryToChange->__ptr_ = v5;
  p_passEntryToChange->__cntrl_ = v4;
  if (cntrl)
  {
    std::__shared_weak_count::__release_shared[abi:ne200100](cntrl);
  }
}

- (id).cxx_construct
{
  *(self + 10) = 0;
  *(self + 11) = 0;
  return self;
}

@end