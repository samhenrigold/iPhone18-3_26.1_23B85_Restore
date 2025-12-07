uint64_t makepath(const char *a1)
{
  v2 = umask(0);
  v3 = (strlen(a1) + 1);
  v4 = malloc_type_malloc(v3, 0xE0BD5170uLL);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  memset(&v10, 0, sizeof(v10));
  strlcpy(v4, a1, v3);
  for (i = *v5 == 47; ; ++i)
  {
    if (v5[i])
    {
      if (v5[i] != 47)
      {
        continue;
      }

      v5[i] = 0;
      v7 = 1;
    }

    else
    {
      v7 = 0;
    }

    if (mkdir(v5, 0x1EDu) && (*__error() != 17 && *__error() != 21 || stat(v5, &v10) < 0))
    {
      break;
    }

    v5[i] = 47;
    if (!v7)
    {
      v8 = 0;
      goto LABEL_16;
    }
  }

  v8 = 0xFFFFFFFFLL;
LABEL_16:
  free(v5);
  umask(v2);
  return v8;
}

FILE *racoon_pid()
{
  v3 = 0;
  result = fopen("/var/run/racoon.pid", "r");
  if (result)
  {
    v1 = result;
    fscanf(result, "%d", &v3);
    fclose(v1);
    *v6 = 0xE00000001;
    v7 = 1;
    v8 = v3;
    bzero(v4, 0x288uLL);
    v2 = 648;
    if (sysctl(v6, 4u, v4, &v2, 0, 0))
    {
      return 0;
    }

    else if (v5[0] ^ 0x6F636172 | *(v5 + 3) ^ 0x6E6F6F)
    {
      return 0;
    }

    else
    {
      return v3;
    }
  }

  return result;
}

void IPSecConfigureVerboseLogging(__CFDictionary *a1, int a2)
{
  valuePtr = a2;
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(a1, @"VerboseLogging", v3);
  CFRelease(v3);
}

uint64_t sub_C40(const __CFDictionary *a1, char **a2, int a3)
{
  __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (!isDictionary(a1))
  {
    *a2 = "IPSec dictionary not present";
    return 0xFFFFFFFFLL;
  }

  memset(&v74, 0, sizeof(v74));
  v73 = 0;
  GetIntFromDict(a1, @"VerboseLogging", &v73, 0);
  if (!GetStrAddrFromDict(a1, @"LocalAddress", cStr, 256))
  {
    v12 = "incorrect local address found";
LABEL_19:
    *a2 = v12;
    goto LABEL_20;
  }

  if (!racoon_validate_cfg_str(cStr))
  {
    v12 = "invalid local address";
    goto LABEL_19;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v77, 256))
  {
    v12 = "incorrect remote address found";
    goto LABEL_19;
  }

  if (!racoon_validate_cfg_str(v77))
  {
    v12 = "invalid remote address";
    goto LABEL_19;
  }

  v7 = inet_addr(v77);
  v8 = v7;
  if (a3)
  {
    if (v7)
    {
      v9 = v77;
    }

    else
    {
      v9 = "anonymous";
    }

    v10 = __str;
    snprintf(__str, 0x100uLL, "/var/run/racoon/%s.conf", v9);
    remove(__str, v11);
    if (stat("/var/run/racoon", &v74))
    {
      if (*__error() == 2 && makepath("/var/run/racoon"))
      {
        __error();
        snprintf(v79, 0x100uLL, "cannot create racoon configuration file path (error %d)");
LABEL_55:
        *a2 = v79;
        goto LABEL_20;
      }

      v10 = __str;
    }
  }

  else
  {
    v10 = "/dev/null";
  }

  v14 = umask(0x3Fu);
  v15 = fopen(v10, "w");
  umask(v14);
  if (!v15)
  {
    __error();
    snprintf(v79, 0x100uLL, "cannot create racoon configuration file (error %d)");
    goto LABEL_55;
  }

  if (v73)
  {
    fprintf(v15, "%s%s", TAB_LEVEL, "log debug2;\n");
    fprintf(v15, "%s%s", TAB_LEVEL, "path logfile /var/log/racoon.log;\n\n");
  }

  v17 = CFDictionaryGetValue(a1, @"UseAnonymousPolicy") == 0 && v8 != 0;
  v16 = !v17;
  v64 = v17;
  v18 = v77;
  if (v16)
  {
    v18 = "anonymous";
  }

  snprintf(v79, 0x100uLL, "remote %s {\n", v18);
  fprintf(v15, "%s%s", TAB_LEVEL, v79);
  fprintf(v15, "%s%s", off_40008[0], "doi ipsec_doi;\n");
  v70 = v15;
  fprintf(v15, "%s%s", off_40008[0], "situation identity_only;\n");
  Value = CFDictionaryGetValue(a1, @"AuthenticationMethod");
  if (Value)
  {
    v20 = Value;
  }

  else
  {
    v20 = @"SharedSecret";
  }

  __strlcpy_chk();
  v21 = CFDictionaryGetValue(a1, @"ExchangeMode");
  cf1 = v20;
  if (!isArray(v21))
  {
    goto LABEL_48;
  }

  v66 = a2;
  Count = CFArrayGetCount(v21);
  v23 = Count - 1;
  if (Count >= 1)
  {
    v24 = 0;
    if (v23 >= 2)
    {
      v23 = 2;
    }

    v25 = v23 + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v21, v24);
      if (isString(ValueAtIndex))
      {
        if (v24)
        {
          __strlcat_chk();
        }

        if (!CFEqual(ValueAtIndex, @"Main") && !CFEqual(ValueAtIndex, @"Aggressive") && !CFEqual(ValueAtIndex, @"Base"))
        {
          v36 = "incorrect phase 1 exchange mode";
          goto LABEL_87;
        }

        __strlcat_chk();
      }
    }

    while (v25 != ++v24);
  }

  a2 = v66;
  if (!Count)
  {
LABEL_48:
    StrFromDict = GetStrFromDict(a1, @"LocalIdentifier", v83, 256, "");
    IPSecIsAggressiveMode(v20, StrFromDict, 1);
    __strlcat_chk();
  }

  __strlcat_chk();
  v28 = v15;
  fprintf(v15, "%s%s", off_40008[0], __ptr);
  if (!CFEqual(v20, @"SharedSecret") && !CFEqual(v20, @"Certificate") && !CFEqual(v20, @"Hybrid"))
  {
    v33 = "incorrect authentication method found";
    goto LABEL_232;
  }

  if (GetStrFromDict(a1, @"LocalIdentifierType", v82, 256, ""))
  {
    __strlcpy_chk();
    if (!racoon_validate_cfg_str(v82))
    {
      v33 = "invalid LocalIdentifierType";
      goto LABEL_232;
    }
  }

  if (GetStrFromDict(a1, @"LocalIdentifier", v83, 256, ""))
  {
    if (!racoon_validate_cfg_str(v83))
    {
      v33 = "invalid LocalIdentifier";
      goto LABEL_232;
    }

    v29 = v82;
    if (!v82[0])
    {
      v29 = "fqdn";
    }

    snprintf(__ptr, 0x400uLL, "my_identifier %s %s;\n", v29, v83);
    goto LABEL_62;
  }

  if (!CFEqual(v20, @"SharedSecret") && !CFEqual(v20, @"Hybrid") && CFEqual(v20, @"Certificate"))
  {
    strcpy(__ptr, "my_identifier asn1dn;\n");
LABEL_62:
    fprintf(v15, "%s%s", off_40008[0], __ptr);
  }

  v30 = CFDictionaryGetValue(a1, @"IdentifierVerification");
  if (!isString(v30))
  {
    v30 = @"GenerateFromRemoteAddress";
  }

  if (!CFEqual(v30, @"None"))
  {
    if (CFEqual(v30, @"GenerateFromRemoteAddress"))
    {
      if (!GetStrAddrFromDict(a1, @"RemoteAddress", v83, 256))
      {
        v33 = "no remote address found";
        goto LABEL_150;
      }

      snprintf(__ptr, 0x400uLL, "peers_identifier address %s;\n", v83);
      v28 = v15;
      fprintf(v15, "%s%s", off_40008[0], __ptr);
      v34 = CFEqual(v20, @"Certificate");
      v35 = "off";
      if (!v34)
      {
        v35 = "on";
      }

      v31 = 2 * (v34 != 0);
      goto LABEL_93;
    }

    if (CFEqual(v30, @"UseRemoteIdentifier"))
    {
      v28 = v15;
      if (!GetStrFromDict(a1, @"RemoteIdentifier", v83, 256, ""))
      {
        v33 = "no remote identifier found";
        goto LABEL_232;
      }

      if (!racoon_validate_cfg_str(v83))
      {
        v33 = "invalid RemoteIdentifier";
        goto LABEL_232;
      }

      snprintf(__ptr, 0x400uLL, "peers_identifier fqdn %s;\n", v83);
      fprintf(v15, "%s%s", off_40008[0], __ptr);
      if (!CFEqual(v20, @"Certificate") && !CFEqual(v20, @"Hybrid"))
      {
        v31 = 0;
        v35 = "on";
        goto LABEL_93;
      }

      v31 = 2;
    }

    else
    {
      if (!CFEqual(v30, @"UseOpenDirectory"))
      {
        v33 = "incorrect verification method";
        goto LABEL_150;
      }

      v28 = v15;
      if (!CFEqual(v20, @"Certificate"))
      {
        v33 = "open directory can only be used with certificate authentication";
        goto LABEL_232;
      }

      v31 = 1;
    }

    v35 = "off";
LABEL_93:
    v32 = __ptr;
    snprintf(__ptr, 0x400uLL, "verify_identifier %s;\n", v35);
    goto LABEL_94;
  }

  v31 = 0;
  v32 = "verify_identifier off;\n";
  v28 = v70;
LABEL_94:
  fprintf(v28, "%s%s", off_40008[0], v32);
  if (CFEqual(cf1, @"SharedSecret") || CFEqual(cf1, @"Hybrid"))
  {
    if (!GetStrFromDict(a1, @"SharedSecret", v83, 256, ""))
    {
      v33 = "no shared secret found";
      goto LABEL_232;
    }

    if (!racoon_validate_cfg_str(v83))
    {
      v33 = "invalid SharedSecret";
      goto LABEL_232;
    }

    __strlcpy_chk();
    v37 = CFDictionaryGetValue(a1, @"SharedSecretEncryption");
    if (!isString(v37))
    {
LABEL_108:
      snprintf(__ptr, 0x400uLL, "shared_secret %s %s;\n", v82, v83);
      v28 = v70;
      fprintf(v70, "%s%s", off_40008[0], __ptr);
      if (CFEqual(cf1, @"Hybrid"))
      {
        strcpy(__ptr, "certificate_verification sec_framework use_peers_identifier;\n");
LABEL_117:
        fprintf(v28, "%s%s", off_40008[0], __ptr);
        goto LABEL_118;
      }

      goto LABEL_118;
    }

    if (CFEqual(v37, @"Key") || CFEqual(v37, @"Keychain"))
    {
      __strlcpy_chk();
      goto LABEL_108;
    }

    v33 = "incorrect shared secret encryption found";
LABEL_150:
    v28 = v70;
    goto LABEL_232;
  }

  if (CFEqual(cf1, @"Certificate"))
  {
    v38 = CFDictionaryGetValue(a1, @"LocalCertificate");
    if (isData(v38))
    {
      fprintf(v70, "%s%s", off_40008[0], "certificate_type x509 in_keychain ");
      v39 = v38;
      v28 = v70;
      v40 = sub_7098(v39, __ptr);
      fwrite(__ptr, 1uLL, v40, v70);
      fputs(";\n", v70);
    }

    else
    {
      v28 = v70;
      fprintf(v70, "%s%s", off_40008[0], "certificate_type x509 in_keychain;\n");
    }

    fprintf(v28, "%s%s", off_40008[0], "verify_cert on;\n");
    v41 = " use_peers_identifier";
    if (v31 != 2)
    {
      v41 = "";
    }

    if (v31 == 1)
    {
      v41 = " use_open_dir";
    }

    snprintf(__ptr, 0x400uLL, "certificate_verification sec_framework%s;\n", v41);
    goto LABEL_117;
  }

LABEL_118:
  if (CFDictionaryContainsKey(a1, @"ForceLocalAddress") && CFDictionaryGetValue(a1, @"ForceLocalAddress") == kCFBooleanTrue)
  {
    GetStrAddrFromDict(a1, @"LocalAddress", v83, 256);
    if (racoon_validate_cfg_str(v83))
    {
      snprintf(__ptr, 0x400uLL, "local_address %s;\n", v83);
      fprintf(v28, "%s%s", off_40008[0], __ptr);
      goto LABEL_122;
    }

    v33 = "invalid force local address";
LABEL_232:
    *a2 = v33;
    goto LABEL_233;
  }

LABEL_122:
  *v83 = 0;
  GetIntFromDict(a1, @"NonceSize", v83, 16);
  snprintf(__ptr, 0x400uLL, "nonce_size %d;\n", *v83);
  fprintf(v28, "%s%s", off_40008[0], __ptr);
  *v83 = 0;
  if (GetIntFromDict(a1, @"NattMultipleUsersEnabled", v83, 0))
  {
    if (*v83)
    {
      v42 = "on";
    }

    else
    {
      v42 = "off";
    }

    snprintf(__ptr, 0x400uLL, "nat_traversal_multi_user %s;\n", v42);
    fprintf(v28, "%s%s", off_40008[0], __ptr);
  }

  *v83 = 0;
  if (GetIntFromDict(a1, @"NattKeepAliveEnabled", v83, 1))
  {
    if (*v83)
    {
      v43 = "on";
    }

    else
    {
      v43 = "off";
    }

    snprintf(__ptr, 0x400uLL, "nat_traversal_keepalive %s;\n", v43);
    fprintf(v28, "%s%s", off_40008[0], __ptr);
  }

  *v83 = 0;
  *v82 = 0;
  v76 = 0;
  v75 = 0;
  if (GetIntFromDict(a1, @"DeadPeerDetectionEnabled", v83, 0))
  {
    GetIntFromDict(a1, @"DeadPeerDetectionDelay", v82, 30);
    GetIntFromDict(a1, @"DeadPeerDetectionRetry", &v76 + 1, 5);
    GetIntFromDict(a1, @"DeadPeerDetectionMaxFail", &v76, 5);
    GetIntFromDict(a1, @"BlackHoleDetectionEnabled", &v75, 1);
    snprintf(__ptr, 0x400uLL, "dpd_delay %d;\n", *v82);
    fprintf(v28, "%s%s", off_40008[0], __ptr);
    snprintf(__ptr, 0x400uLL, "dpd_retry %d;\n", HIDWORD(v76));
    fprintf(v28, "%s%s", off_40008[0], __ptr);
    snprintf(__ptr, 0x400uLL, "dpd_maxfail %d;\n", v76);
    fprintf(v28, "%s%s", off_40008[0], __ptr);
    if (v75)
    {
      v44 = "dpd_blackhole_detect";
    }

    else
    {
      v44 = "dpd_inbound_detect";
    }

    snprintf(__ptr, 0x400uLL, "dpd_algorithm %s;\n", v44);
    fprintf(v28, "%s%s", off_40008[0], __ptr);
  }

  *v83 = 0;
  *v82 = 0;
  if (GetIntFromDict(a1, @"DisconnectOnIdle", v83, 0) && *v83)
  {
    GetIntFromDict(a1, @"DisconnectOnIdleTimer", v82, 120);
    snprintf(__ptr, 0x400uLL, "disconnect_on_idle idle_timeout %d idle_direction idle_outbound;\n", *v82);
    fprintf(v28, "%s%s", off_40008[0], __ptr);
  }

  fprintf(v28, "%s%s", off_40008[0], "initial_contact on;\n");
  fprintf(v28, "%s%s", off_40008[0], "support_proxy on;\n");
  __strlcpy_chk();
  v45 = CFDictionaryGetValue(a1, @"ProposalsBehavior");
  if (isString(v45))
  {
    if (!CFEqual(v45, @"Claim") && !CFEqual(v45, @"Obey") && !CFEqual(v45, @"Strict") && !CFEqual(v45, @"Exact"))
    {
      *a2 = "incorrect proposal behavior";
      goto LABEL_88;
    }

    __strlcpy_chk();
  }

  snprintf(__ptr, 0x400uLL, "proposal_check %s;\n", v83);
  v28 = v70;
  fprintf(v70, "%s%s", off_40008[0], __ptr);
  if (!GetStrFromDict(a1, @"XAuthName", v83, 256, ""))
  {
    goto LABEL_157;
  }

  if (!racoon_validate_cfg_str(v83))
  {
    v33 = "invalid XauthName";
    goto LABEL_232;
  }

  snprintf(__ptr, 0x400uLL, "xauth_login %s;\n", v83);
  fprintf(v70, "%s%s", off_40008[0], __ptr);
LABEL_157:
  *v83 = 0;
  if (GetIntFromDict(a1, @"ModeConfigEnabled", v83, 0))
  {
    if (*v83)
    {
      v46 = "on";
    }

    else
    {
      v46 = "off";
    }

    snprintf(__ptr, 0x400uLL, "mode_cfg %s;\n", v46);
    fprintf(v70, "%s%s", off_40008[0], __ptr);
  }

  v47 = CFDictionaryGetValue(a1, @"Proposals");
  v66 = a2;
  theArray = v47;
  v65 = a3;
  if (isArray(v47))
  {
    v48 = CFArrayGetCount(v47);
  }

  else
  {
    v48 = 0;
  }

  v49 = 0;
  v50 = 0;
  if (v48 <= 1)
  {
    v51 = 1;
  }

  else
  {
    v51 = v48;
  }

  cf1a = v51;
  do
  {
    if (v48)
    {
      v50 = CFArrayGetValueAtIndex(theArray, v49);
      if (!isDictionary(v50))
      {
        *v66 = "incorrect phase 1 proposal";
        goto LABEL_233;
      }
    }

    fprintf(v28, "%s%s", off_40008[0], "\n");
    fprintf(v28, "%s%s", off_40008[0], "proposal {\n");
    HIDWORD(v76) = 0;
    v52 = CFDictionaryGetValue(a1, @"AuthenticationMethod");
    GetIntFromDict(a1, @"XAuthEnabled", &v76 + 1, 0);
    __strlcpy_chk();
    if (isString(v52))
    {
      if (!CFEqual(v52, @"SharedSecret") && !CFEqual(v52, @"Certificate") && !CFEqual(v52, @"Hybrid"))
      {
        v36 = "incorrect authentication method";
        goto LABEL_87;
      }

      __strlcpy_chk();
    }

    snprintf(v83, 0x400uLL, "authentication_method %s;\n", v82);
    fprintf(v70, "%s%s", off_40010[0], v83);
    __strlcpy_chk();
    if (!v50)
    {
      snprintf(v83, 0x400uLL, "hash_algorithm %s;\n", v82);
      fprintf(v70, "%s%s", off_40010[0], v83);
LABEL_190:
      __strlcpy_chk();
      goto LABEL_191;
    }

    v53 = CFDictionaryGetValue(v50, @"HashAlgorithm");
    if (isString(v53))
    {
      if (!CFEqual(v53, @"MD5") && !CFEqual(v53, @"SHA1") && !CFEqual(v53, @"SHA256") && !CFEqual(v53, @"SHA512"))
      {
        v36 = "incorrect authentication algorithm";
        goto LABEL_87;
      }

      __strlcpy_chk();
    }

    snprintf(v83, 0x400uLL, "hash_algorithm %s;\n", v82);
    fprintf(v70, "%s%s", off_40010[0], v83);
    __strlcpy_chk();
    v54 = CFDictionaryGetValue(v50, @"EncryptionAlgorithm");
    if (isString(v54))
    {
      if (!CFEqual(v54, @"DES") && !CFEqual(v54, @"3DES") && !CFEqual(v54, @"AES") && !CFEqual(v54, @"AES256"))
      {
        v36 = "incorrect encryption algorithm";
LABEL_87:
        *v66 = v36;
LABEL_88:
        v28 = v70;
        goto LABEL_233;
      }

      goto LABEL_190;
    }

LABEL_191:
    snprintf(v83, 0x400uLL, "encryption_algorithm %s;\n", v82);
    v28 = v70;
    fprintf(v70, "%s%s", off_40010[0], v83);
    *v82 = 3600;
    if (v50)
    {
      GetIntFromDict(v50, @"Lifetime", v82, 3600);
      snprintf(v83, 0x400uLL, "lifetime time %d sec;\n", *v82);
      fprintf(v70, "%s%s", off_40010[0], v83);
      *v82 = 14;
      GetIntFromDict(v50, @"DHGroup", v82, 14);
      v55 = *v82;
    }

    else
    {
      snprintf(v83, 0x400uLL, "lifetime time %d sec;\n", 3600);
      fprintf(v70, "%s%s", off_40010[0], v83);
      v55 = 14;
      *v82 = 14;
    }

    snprintf(v83, 0x400uLL, "dh_group %d;\n", v55);
    fprintf(v70, "%s%s", off_40010[0], v83);
    fprintf(v70, "%s%s", off_40008[0], "}\n");
    ++v49;
  }

  while (cf1a != v49);
  fprintf(v70, "%s%s", TAB_LEVEL, "}\n\n");
  v56 = CFDictionaryGetValue(a1, @"Policies");
  if (!isArray(v56) || (v57 = CFArrayGetCount(v56)) == 0 || (!v64 ? (v58 = 1) : (v58 = v57), v58 < 1))
  {
LABEL_227:
    fclose(v28);
    if (v65)
    {
      sub_2978();
    }

    return 0;
  }

  v59 = 0;
  v60 = "incorrect policy found";
  while (2)
  {
    v76 = 0;
    v75 = 0;
    v71 = 0;
    v72 = 0;
    v61 = CFArrayGetValueAtIndex(v56, v59);
    if (isDictionary(v61))
    {
      v62 = CFDictionaryGetValue(v61, @"Level");
      if (!isString(v62) || CFEqual(v62, @"None") || CFEqual(v62, @"Discard"))
      {
        goto LABEL_223;
      }

      if (!CFEqual(v62, @"Require"))
      {
        v60 = "incorrect policy level found";
LABEL_246:
        v28 = v70;
        break;
      }

      if (v64)
      {
        v63 = CFDictionaryGetValue(v61, @"Mode");
        if (!isString(v63) || CFEqual(v63, @"Tunnel"))
        {
          if (!GetStrNetFromDict(v61, @"LocalAddress", __ptr, 256))
          {
            v60 = "incorrect policy local network";
            goto LABEL_246;
          }

          v28 = v70;
          if (!racoon_validate_cfg_str(__ptr))
          {
            v60 = "invalid local network";
            break;
          }

          if (!GetStrNetFromDict(v61, @"RemoteAddress", v82, 256))
          {
            v60 = "incorrect policy remote network";
            break;
          }

          if (!racoon_validate_cfg_str(v82))
          {
            v60 = "invalid remote network";
            break;
          }

          GetIntFromDict(v61, @"LocalPrefix", &v75, 24);
          if (!v75)
          {
            v60 = "incorrect policy local prefix";
            break;
          }

          GetIntFromDict(v61, @"RemotePrefix", &v72, 24);
          if (!v72)
          {
            v60 = "incorrect policy remote prefix";
            break;
          }

          snprintf(v79, 0x100uLL, "sainfo address %s/%d 0 address %s/%d 0 {\n", __ptr, v75, v82, v72);
          snprintf(v83, 0x100uLL, "sainfo address %s/%d 0 address %s/%d 0 {\n", v82, v72, __ptr, v75);
LABEL_219:
          fprintf(v28, "%s%s", TAB_LEVEL, v79);
          if (sub_6AE4(v28, v61, v66))
          {
            goto LABEL_233;
          }

          fprintf(v28, "%s%s", TAB_LEVEL, "}\n\n");
          if (v64)
          {
            v28 = v70;
            fprintf(v70, "%s%s", TAB_LEVEL, v83);
            if (sub_6AE4(v70, v61, v66))
            {
              goto LABEL_233;
            }

            fprintf(v70, "%s%s", TAB_LEVEL, "}\n\n");
          }

LABEL_223:
          ++v59;
          v28 = v70;
          if (v58 == v59)
          {
            goto LABEL_227;
          }

          continue;
        }

        if (!CFEqual(v63, @"Transport"))
        {
          v60 = "incorrect policy type found";
          goto LABEL_246;
        }

        GetIntFromDict(v61, @"LocalPort", &v76 + 1, 0);
        GetIntFromDict(v61, @"RemotePort", &v76, 0);
        GetIntFromDict(v61, @"Protocol", &v71, 0);
        GetIntFromDict(v61, @"LocalPrefix", &v75, 32);
        GetIntFromDict(v61, @"RemotePrefix", &v72, 32);
        snprintf(v79, 0x100uLL, "sainfo address %s/%d [%d] %d address %s/%d [%d] %d {\n", cStr, v75, HIDWORD(v76), v71, v77, v72, v76, v71);
        snprintf(v83, 0x100uLL, "sainfo address %s/%d [%d] %d address %s/%d [%d] %d {\n", v77, v72, v76, v71, cStr, v75, HIDWORD(v76), v71);
      }

      else
      {
        strcpy(v79, "sainfo anonymous {\n");
      }

      v28 = v70;
      goto LABEL_219;
    }

    break;
  }

  *v66 = v60;
LABEL_233:
  fclose(v28);
LABEL_20:
  if (__str[0].__pn_.__r_.__value_.__s.__data_[0])
  {
    remove(__str, v6);
  }

  return 0xFFFFFFFFLL;
}

uint64_t IPSecRemoveConfiguration(const void *a1, const char **a2)
{
  __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (!isDictionary(a1))
  {
    v6 = "IPSec dictionary not present";
LABEL_7:
    *a2 = v6;
    return 0xFFFFFFFFLL;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v7, 32))
  {
    v6 = "incorrect remote address found";
    goto LABEL_7;
  }

  result = inet_addr(v7);
  if (result)
  {
    snprintf(__str, 0x100uLL, "/var/run/racoon/%s.conf", v7);
    remove(__str, v5);
    sub_2978();
    return 0;
  }

  return result;
}

FILE *sub_2978()
{
  result = racoon_pid();
  if (result)
  {

    return kill(result, 30);
  }

  return result;
}

uint64_t IPSecRemoveConfigurationFile(const void *a1, const char **a2)
{
  __str[0].__pn_.__r_.__value_.__s.__data_[0] = 0;
  if (!isDictionary(a1))
  {
    v6 = "IPSec dictionary not present";
LABEL_7:
    *a2 = v6;
    return 0xFFFFFFFFLL;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v7, 32))
  {
    v6 = "incorrect remote address found";
    goto LABEL_7;
  }

  result = inet_addr(v7);
  if (result)
  {
    snprintf(__str, 0x100uLL, "/var/run/racoon/%s.conf", v7);
    remove(__str, v5);
    return 0;
  }

  return result;
}

CFIndex IPSecCountPolicies(const __CFDictionary *a1)
{
  Value = CFDictionaryGetValue(a1, @"Policies");
  result = isArray(Value);
  if (result)
  {
    return CFArrayGetCount(Value);
  }

  return result;
}

BOOL get_address_from_string(const char *a1, void *a2, size_t a3)
{
  v3 = 0;
  if (a1)
  {
    if (a2)
    {
      v13 = 0;
      v6 = getaddrinfo(a1, 0, &stru_2DB10, &v13);
      v3 = v6 == 0;
      if (!v6)
      {
        v7 = v13;
        if (v13)
        {
          v8 = v13;
          while (1)
          {
            ai_addr = v8->ai_addr;
            sa_family = ai_addr->sa_family;
            if (sa_family == 30 || sa_family == 2)
            {
              break;
            }

            v8 = v8->ai_next;
            if (!v8)
            {
              goto LABEL_14;
            }
          }

          if (ai_addr->sa_len <= a3)
          {
            bzero(a2, a3);
            memcpy(a2, v8->ai_addr, v8->ai_addr->sa_len);
          }
        }

LABEL_14:
        freeaddrinfo(v7);
      }
    }
  }

  return v3;
}

uint64_t IPSecInstallPolicies(const __CFDictionary *a1, CFIndex a2, const char **a3)
{
  v54 = 4;
  v55 = 0;
  v53 = 0;
  v52 = 255;
  memset(v57, 0, sizeof(v57));
  memset(v56, 0, sizeof(v56));
  v6 = pfkey_open();
  if (v6 < 0)
  {
    v9 = "cannot open a pfkey socket";
    goto LABEL_77;
  }

  if (!GetStrAddrFromDict(a1, @"LocalAddress", v60, 256))
  {
    v9 = "incorrect local address";
    goto LABEL_77;
  }

  if (!GetStrAddrFromDict(a1, @"RemoteAddress", v59, 256))
  {
    v9 = "incorrect remote address";
    goto LABEL_77;
  }

  Value = CFDictionaryGetValue(a1, @"Policies");
  if (!isArray(Value))
  {
    v9 = "no policies found";
    goto LABEL_77;
  }

  Count = CFArrayGetCount(Value);
  v9 = "no policies found";
  if (!Count || Count < a2)
  {
LABEL_77:
    *a3 = v9;
LABEL_78:
    SCLog();
    goto LABEL_79;
  }

  v10 = a2 + 1;
  if (a2 == -1)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  if (a2 == -1)
  {
    v10 = Count;
  }

  v46 = v10;
  idx = v11;
  if (v11 >= v10)
  {
LABEL_82:
    SCLog();
    v39 = 0;
    goto LABEL_80;
  }

  v44 = a3;
  v45 = Value;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    v49 = v12;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, idx);
    if (!isDictionary(ValueAtIndex))
    {
      v41 = "incorrect policy found";
LABEL_85:
      *v44 = v41;
      goto LABEL_78;
    }

    v16 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
    if (isString(v16) && !CFEqual(v16, @"Tunnel"))
    {
      if (!CFEqual(v16, @"Transport"))
      {
        v41 = "incorrect policy type found";
        goto LABEL_85;
      }

      v17 = 1;
    }

    else
    {
      v17 = 0;
    }

    v18 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
    if (!isString(v18))
    {
      goto LABEL_26;
    }

    if (CFEqual(v18, @"In"))
    {
      v47 = 0;
      v19 = 1;
    }

    else
    {
      if (!CFEqual(v18, @"Out"))
      {
        if (!CFEqual(v18, @"InOut"))
        {
          v41 = "incorrect policy direction found";
          goto LABEL_85;
        }

LABEL_26:
        v47 = 0;
        v19 = 0;
        goto LABEL_27;
      }

      v19 = 0;
      v47 = 1;
    }

LABEL_27:
    v20 = CFDictionaryGetValue(ValueAtIndex, @"Level");
    if (!isString(v20) || CFEqual(v20, @"None"))
    {
      v21 = v17;
      strcpy(__str, "out none");
      v22 = 0x656E6F6E206E69;
LABEL_30:
      *__s = v22;
      goto LABEL_31;
    }

    if (CFEqual(v20, @"Unique"))
    {
      v21 = v17;
      if (v17)
      {
        strcpy(__str, "out ipsec esp/transport//unique");
        strcpy(__s, "in ipsec esp/transport//unique");
      }

      else
      {
        snprintf(__str, 0x200uLL, "out ipsec esp/tunnel/%s-%s/unique", v60, v59);
        snprintf(__s, 0x200uLL, "in ipsec esp/tunnel/%s-%s/unique");
      }
    }

    else
    {
      if (!CFEqual(v20, @"Require"))
      {
        if (!CFEqual(v20, @"Discard"))
        {
          v41 = "incorrect policy level";
          goto LABEL_85;
        }

        v21 = v17;
        strcpy(__str, "out discard");
        strcpy(&__s[7], "ard");
        v22 = *"in discard";
        goto LABEL_30;
      }

      v21 = v17;
      if (v17)
      {
        strcpy(__str, "out ipsec esp/transport//require");
        strcpy(__s, "in ipsec esp/transport//require");
      }

      else
      {
        snprintf(__str, 0x200uLL, "out ipsec esp/tunnel/%s-%s/require", v60, v59);
        snprintf(__s, 0x200uLL, "in ipsec esp/tunnel/%s-%s/require");
      }
    }

LABEL_31:
    v23 = strlen(__s);
    v24 = ipsec_set_policy(__s, v23);
    if (!v24)
    {
      v41 = "cannot set policy in";
      goto LABEL_85;
    }

    v25 = v24;
    v26 = strlen(__str);
    v27 = ipsec_set_policy(__str, v26);
    v28 = v27;
    if (!v27)
    {
      v42 = "cannot set policy out";
LABEL_96:
      *v44 = v42;
      goto LABEL_97;
    }

    v48 = v14;
    v29 = *v25;
    v30 = *v27;
    if ((v21 & 1) == 0)
    {
      break;
    }

    v51 = 0;
    if (!get_address_from_string(v60, v57, 0x80uLL))
    {
      v43 = "incorrect local address";
      goto LABEL_94;
    }

    GetIntFromDict(ValueAtIndex, @"LocalPort", &v51, 0);
    HIWORD(v57[0]) = bswap32(v51) >> 16;
    if (BYTE1(v57[0]) == 2)
    {
      v31 = 32 * (v57[1] != 0);
    }

    else
    {
      v31 = 128;
    }

    HIDWORD(v53) = v31;
    if (!get_address_from_string(v59, v56, 0x80uLL))
    {
      v43 = "incorrect remote address";
      goto LABEL_94;
    }

    GetIntFromDict(ValueAtIndex, @"RemotePort", &v51, 0);
    WORD1(v56[0]) = bswap32(v51) >> 16;
    if (BYTE1(v56[0]) == 2)
    {
      v32 = 32 * (DWORD1(v56[0]) != 0);
    }

    else
    {
      v32 = 128;
    }

    LODWORD(v53) = v32;
    v33 = &v52;
    v34 = ValueAtIndex;
    v35 = @"Protocol";
    v36 = 0;
LABEL_48:
    GetIntFromDict(v34, v35, v33, v36);
    v12 = v49;
    if (v19)
    {
      v14 = v48;
      goto LABEL_52;
    }

    v37 = 8 * v30;
    v14 = (v48 + 1);
    if ((pfkey_send_spdadd(v6, v57, HIDWORD(v53), v56, v53, v52, v28, v37, v49) & 0x80000000) != 0)
    {
      v42 = "cannot add policy out";
      goto LABEL_96;
    }

    v12 = v49 + 1;
LABEL_52:
    if (v47)
    {
      goto LABEL_55;
    }

    v14 = (v14 + 1);
    if ((pfkey_send_spdadd(v6, v56, v53, v57, HIDWORD(v53), v52, v25, 8 * v29, v12) & 0x80000000) != 0)
    {
      v42 = "cannot add policy in";
      goto LABEL_96;
    }

    ++v12;
LABEL_55:
    if ((getsockopt(v6, 0xFFFF, 4128, &v55, &v54) & 0x80000000) == 0 && v55 >= 1)
    {
      do
      {
        v38 = pfkey_recv(v6);
        if (v38)
        {
          ++v13;
          free(v38);
        }
      }

      while ((getsockopt(v6, 0xFFFF, 4128, &v55, &v54) & 0x80000000) == 0 && v55 > 0);
    }

    free(v25);
    free(v28);
    Value = v45;
    if (++idx == v46)
    {
      goto LABEL_82;
    }
  }

  if (!GetStrNetFromDict(ValueAtIndex, @"LocalAddress", v58, 256))
  {
    v43 = "incorrect local network (0)";
    goto LABEL_94;
  }

  if (!get_address_from_string(v58, v57, 0x80uLL))
  {
    v43 = "incorrect local network (1)";
    goto LABEL_94;
  }

  GetIntFromDict(ValueAtIndex, @"LocalPrefix", &v53 + 1, 24);
  if (!GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v58, 256))
  {
    v43 = "incorrect remote network (0)";
    goto LABEL_94;
  }

  if (get_address_from_string(v58, v56, 0x80uLL))
  {
    v33 = &v53;
    v34 = ValueAtIndex;
    v35 = @"RemotePrefix";
    v36 = 24;
    goto LABEL_48;
  }

  v43 = "incorrect remote network (1)";
LABEL_94:
  *v44 = v43;
LABEL_97:
  SCLog();
  free(v25);
  if (v28)
  {
    free(v28);
  }

LABEL_79:
  v39 = 0xFFFFFFFFLL;
  if (v6 != -1)
  {
LABEL_80:
    pfkey_close(v6);
  }

  return v39;
}

uint64_t sub_3418(uint64_t a1, int a2, const __CFDictionary *a3, CFIndex a4, const char **a5, int a6)
{
  v36 = a6;
  Mutable = CFStringCreateMutable(kCFAllocatorDefault, 0);
  if (!Mutable)
  {
    *a5 = "cannot allocate CFString";
    return 0xFFFFFFFFLL;
  }

  v12 = Mutable;
  v35 = 0;
  v48[0] = 0;
  v48[1] = 0;
  v47[0] = 0;
  v47[1] = 0;
  __buf = 0u;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  memset(v46, 0, sizeof(v46));
  v13 = socket(17, 3, 17);
  if (v13 < 0)
  {
    v32 = "cannot open a routing socket";
    goto LABEL_54;
  }

  if (!GetStrAddrFromDict(a3, @"LocalAddress", v51, 256))
  {
    v16 = "incorrect local address";
LABEL_59:
    *a5 = v16;
    CFRelease(v12);
    goto LABEL_60;
  }

  if (!GetStrAddrFromDict(a3, @"RemoteAddress", v50, 256))
  {
    v16 = "incorrect remote address";
    goto LABEL_59;
  }

  Value = CFDictionaryGetValue(a3, @"Policies");
  if (!isArray(Value))
  {
    v16 = "no policies found";
    goto LABEL_59;
  }

  Count = CFArrayGetCount(Value);
  v16 = "no policies found";
  if (!Count || Count < a4)
  {
    goto LABEL_59;
  }

  v17 = __CFADD__(a4, 1);
  v18 = a4 + 1;
  if (a4 == -1)
  {
    a4 = 0;
  }

  if (v17)
  {
    v18 = Count;
  }

  v34 = v18;
  if (a4 < v18)
  {
    v33 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(Value, a4);
      if (!isDictionary(ValueAtIndex))
      {
        v32 = "incorrect policy found";
        goto LABEL_54;
      }

      v20 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
      if (isString(v20) && !CFEqual(v20, @"Tunnel"))
      {
        if (!CFEqual(v20, @"Transport"))
        {
          v32 = "incorrect policy type found";
          goto LABEL_54;
        }
      }

      else
      {
        v21 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
        if (isString(v21))
        {
          if (CFEqual(v21, @"In"))
          {
            goto LABEL_47;
          }

          if (!CFEqual(v21, @"Out") && !CFEqual(v21, @"InOut"))
          {
            v32 = "incorrect policy direction found";
            goto LABEL_54;
          }
        }

        v22 = CFDictionaryGetValue(ValueAtIndex, @"Level");
        if (isString(v22) && !CFEqual(v22, @"None"))
        {
          if (!CFEqual(v22, @"Require") && !CFEqual(v22, @"Discard") && !CFEqual(v22, @"Unique"))
          {
            v32 = "incorrect policy level";
LABEL_54:
            *a5 = v32;
            CFRelease(v12);
            if (v13 == -1)
            {
              return 0xFFFFFFFFLL;
            }

LABEL_60:
            close(v13);
            return 0xFFFFFFFFLL;
          }

          if (!GetStrNetFromDict(ValueAtIndex, @"LocalAddress", v49, 256) || (LODWORD(v48[0]) = 528, !inet_aton(v49, v48 + 1)))
          {
            v32 = "incorrect local network";
            goto LABEL_54;
          }

          if (!GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v49, 256))
          {
            v32 = "incorrect remote network0";
            goto LABEL_54;
          }

          LODWORD(v47[0]) = 528;
          if (!inet_aton(v49, v47 + 1))
          {
            v32 = "incorrect remote network1";
            goto LABEL_54;
          }

          if (a2 != 2)
          {
            goto LABEL_39;
          }

          v23 = *(a1 + 1048);
          if (!v23)
          {
            goto LABEL_35;
          }

          while (*(v23 + 2) != HIDWORD(v48[0]) || *(v23 + 4) != HIDWORD(v47[0]))
          {
            v23 = *v23;
            if (!v23)
            {
              goto LABEL_35;
            }
          }

          if (*(v23 + 8))
          {
LABEL_39:
            *&__buf = 327680;
            v40 = 0u;
            v45 = 0u;
            memset(v46, 0, sizeof(v46));
            v43 = 0u;
            v44 = 0u;
            v41 = 0u;
            v42 = 0u;
            BYTE3(__buf) = a2;
            *(&__buf + 1) = 0x700000803;
            DWORD1(v40) = ++v33;
            WORD6(v44) = 528;
            LODWORD(v45) = HIDWORD(v47[0]);
            WORD6(v45) = 528;
            v46[0] = v36;
            LOWORD(v46[3]) = 528;
            GetIntFromDict(ValueAtIndex, @"RemotePrefix", &v35, 24);
            v24 = v35;
            if (v35)
            {
              v25 = 0;
              do
              {
                v25 = (v25 >> 1) | 0x80000000;
                --v24;
              }

              while (v24);
              v35 = 0;
            }

            else
            {
              v25 = 0;
            }

            v46[4] = bswap32(v25);
            LOWORD(__buf) = 140;
            if (write(v13, &__buf, 0x8CuLL) < 0)
            {
              v26 = __error();
              strerror(*v26);
              addr2ascii(2, v47 + 4, 4, v38);
              addr2ascii(2, &v36, 4, v37);
              syslog(3, "cannot write on routing socket: %s (address %s, gateway %s)\n");
            }

            else
            {
              update_service_route(a1, SHIDWORD(v48[0]), -1, SHIDWORD(v47[0]), bswap32(v46[4]), v36, 0, a2 == 1);
              sub_723C(HIDWORD(v47[0]), v46[4]);
              CFStringAppendFormat(v12, 0, @"%s, ", byte_40410);
            }
          }

          else
          {
LABEL_35:
            addr2ascii(2, v47 + 4, 4, v38);
            addr2ascii(2, &v36, 4, v37);
            syslog(6, "ignoring uninstalled route: (address %s, gateway %s)\n");
          }
        }
      }

LABEL_47:
      ++a4;
    }

    while (a4 != v34);
  }

  Length = CFStringGetLength(v12);
  if (Length >= 1)
  {
    v28 = Length;
    v29 = malloc_type_calloc(1uLL, Length + 1, 0xB5627A4uLL);
    if (v29)
    {
      v30 = v29;
      CFStringGetCString(v12, v29, v28 + 1, 0x600u);
      addr2ascii(2, &v36, 4, v37);
      syslog(5, "installed routes: addresses %sgateway %s\n", v30, v37);
      free(v30);
    }
  }

  CFRelease(v12);
  close(v13);
  return 0;
}

uint64_t IPSecRemovePolicies(const __CFDictionary *a1, CFIndex a2, const char **a3)
{
  v42 = 0;
  v41 = 255;
  memset(v46, 0, sizeof(v46));
  memset(v45, 0, sizeof(v45));
  v6 = pfkey_open();
  if ((v6 & 0x80000000) == 0)
  {
    if (GetStrAddrFromDict(a1, @"LocalAddress", v44, 256))
    {
      if (GetStrAddrFromDict(a1, @"RemoteAddress", v43, 256))
      {
        Value = CFDictionaryGetValue(a1, @"Policies");
        if (isArray(Value))
        {
          Count = CFArrayGetCount(Value);
          v9 = "no policies found";
          if (Count && Count >= a2)
          {
            v10 = __CFADD__(a2, 1);
            v11 = a2 + 1;
            if (a2 == -1)
            {
              a2 = 0;
            }

            if (v10)
            {
              v11 = Count;
            }

            v37 = v11;
            if (a2 < v11)
            {
              v12 = 0;
              v36 = Value;
              while (1)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(Value, a2);
                if (!isDictionary(ValueAtIndex))
                {
                  v32 = "incorrect policy found";
                  goto LABEL_52;
                }

                v14 = CFDictionaryGetValue(ValueAtIndex, @"Mode");
                if (isString(v14) && !CFEqual(v14, @"Tunnel"))
                {
                  if (!CFEqual(v14, @"Transport"))
                  {
                    v32 = "incorrect policy type found";
                    goto LABEL_52;
                  }

                  v15 = 1;
                }

                else
                {
                  v15 = 0;
                }

                v16 = CFDictionaryGetValue(ValueAtIndex, @"Direction");
                if (isString(v16))
                {
                  if (CFEqual(v16, @"In"))
                  {
                    v17 = 0;
                    v18 = 1;
                    goto LABEL_26;
                  }

                  if (CFEqual(v16, @"Out"))
                  {
                    v18 = 0;
                    v17 = 1;
                    goto LABEL_26;
                  }

                  if (!CFEqual(v16, @"InOut"))
                  {
                    v32 = "incorrect policy direction found";
                    goto LABEL_52;
                  }
                }

                v17 = 0;
                v18 = 0;
LABEL_26:
                strcpy(v48, "out");
                strcpy(__s, "in");
                v19 = strlen(__s);
                v20 = ipsec_set_policy(__s, v19);
                if (!v20)
                {
                  v32 = "cannot set policy in";
                  goto LABEL_52;
                }

                v21 = v20;
                v22 = strlen(v48);
                v23 = ipsec_set_policy(v48, v22);
                if (!v23)
                {
                  *a3 = "cannot set policy out";
                  v34 = v21;
LABEL_74:
                  free(v34);
                  goto LABEL_53;
                }

                v24 = v23;
                v38 = *v21;
                v39 = *v23;
                if (v15)
                {
                  v40 = 0;
                  if (!get_address_from_string(v44, v46, 0x80uLL))
                  {
                    v35 = "incorrect local address";
                    goto LABEL_73;
                  }

                  GetIntFromDict(ValueAtIndex, @"LocalPort", &v40, 0);
                  WORD1(v46[0]) = bswap32(v40) >> 16;
                  if (BYTE1(v46[0]) == 2)
                  {
                    v25 = 32 * (DWORD1(v46[0]) != 0);
                  }

                  else
                  {
                    v25 = 128;
                  }

                  HIDWORD(v42) = v25;
                  if (!get_address_from_string(v43, v45, 0x80uLL))
                  {
                    v35 = "incorrect remote address";
                    goto LABEL_73;
                  }

                  GetIntFromDict(ValueAtIndex, @"RemotePort", &v40, 0);
                  WORD1(v45[0]) = bswap32(v40) >> 16;
                  if (BYTE1(v45[0]) == 2)
                  {
                    v26 = 32 * (DWORD1(v45[0]) != 0);
                  }

                  else
                  {
                    v26 = 128;
                  }

                  LODWORD(v42) = v26;
                  v27 = &v41;
                  v28 = ValueAtIndex;
                  v29 = @"Protocol";
                  v30 = 0;
                }

                else
                {
                  if (!GetStrNetFromDict(ValueAtIndex, @"LocalAddress", v47, 32))
                  {
                    v35 = "incorrect local network (0)";
LABEL_73:
                    *a3 = v35;
                    free(v21);
                    v34 = v24;
                    goto LABEL_74;
                  }

                  if (!get_address_from_string(v47, v46, 0x80uLL))
                  {
                    v35 = "incorrect local network (1)";
                    goto LABEL_73;
                  }

                  GetIntFromDict(ValueAtIndex, @"LocalPrefix", &v42 + 1, 24);
                  if (!GetStrNetFromDict(ValueAtIndex, @"RemoteAddress", v47, 32))
                  {
                    v35 = "incorrect remote network (0)";
                    goto LABEL_73;
                  }

                  if (!get_address_from_string(v47, v45, 0x80uLL))
                  {
                    v35 = "incorrect remote network (1)";
                    goto LABEL_73;
                  }

                  v27 = &v42;
                  v28 = ValueAtIndex;
                  v29 = @"RemotePrefix";
                  v30 = 24;
                }

                GetIntFromDict(v28, v29, v27, v30);
                if ((v18 & 1) == 0)
                {
                  if ((pfkey_send_spddelete(v6, v46, HIDWORD(v42), v45, v42, v41, v24, 8 * v39, v12) & 0x80000000) != 0)
                  {
                    v35 = "cannot delete policy out";
                    goto LABEL_73;
                  }

                  ++v12;
                }

                if ((v17 & 1) == 0)
                {
                  if ((pfkey_send_spddelete(v6, v45, v42, v46, HIDWORD(v42), v41, v21, 8 * v38, v12) & 0x80000000) != 0)
                  {
                    v35 = "cannot delete policy in";
                    goto LABEL_73;
                  }

                  ++v12;
                }

                free(v21);
                free(v24);
                v31 = 0;
                ++a2;
                Value = v36;
                if (v37 == a2)
                {
                  goto LABEL_59;
                }
              }
            }

            v31 = 0;
            goto LABEL_59;
          }
        }

        else
        {
          v9 = "no policies found";
        }
      }

      else
      {
        v9 = "incorrect remote address";
      }
    }

    else
    {
      v9 = "incorrect local address";
    }

    *a3 = v9;
    v31 = 0xFFFFFFFFLL;
LABEL_59:
    pfkey_close(v6);
    return v31;
  }

  v32 = "cannot open a pfkey socket";
LABEL_52:
  *a3 = v32;
LABEL_53:
  v31 = 0xFFFFFFFFLL;
  if (v6 != -1)
  {
    goto LABEL_59;
  }

  return v31;
}

ssize_t IPSecRemoveSecurityAssociations(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = pfkey_open();
  if (v4 < 0)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = v4;
  v6 = pfkey_send_delete_all(v4, 3, 0, a1, a2);
  if ((v6 & 0x80000000) == 0)
  {
    v6 = pfkey_send_delete_all(v5, 3, 0, a2, a1);
  }

  v7 = v6;
  pfkey_close(v5);
  return v7;
}

BOOL IPSecIsAggressiveMode(const void *a1, int a2, int a3)
{
  result = 0;
  if (a2 && a3)
  {
    return !isString(a1) || CFEqual(a1, @"Certificate") == 0;
  }

  return result;
}

uint64_t sockaddr_to_string(unsigned __int8 *a1, void *a2, unint64_t a3)
{
  bzero(a2, a3);
  v6 = a1[1];
  switch(v6)
  {
    case 30:
      result = inet_ntop(30, a1 + 8, a2, a3);
      if (*(a1 + 6))
      {
        result = strlen(a2);
        if (a3 >= ((result << 32) + 0x1100000000) >> 32)
        {
          v12 = result << 32;
          *(a2 + result) = 37;
          v13 = *(a1 + 6);

          return if_indextoname(v13, a2 + ((v12 + 0x100000000) >> 32));
        }
      }

      break;
    case 18:
      v10 = *a1;
      v9 = a1 + 8;
      v8 = v10;
      if (v10 >= a3)
      {
        v11 = a3 - 1;
      }

      else
      {
        v11 = v8;
      }

      return memmove(a2, v9, v11);
    case 2:

      return inet_ntop(2, a1 + 4, a2, a3);
    default:
      return snprintf(a2, a3, "unexpected address family %d", a1[1]);
  }

  return result;
}

uint64_t get_src_address(_BYTE *a1, unsigned __int8 *a2, const char *a3, char *a4)
{
  v8 = getpid();
  result = socket(17, 3, 17);
  if (result != -1)
  {
    v10 = result;
    bzero(v41, 0x258uLL);
    __buf = 285540444;
    v42 = 0x1100000807;
    v43 = v8;
    v44 = 1;
    if (a3)
    {
      LODWORD(a3) = if_nametoindex(a3);
      LODWORD(v42) = 16779271;
      v41[0] = a3;
    }

    v11 = v45;
    __memmove_chk();
    v12 = __buf + v45[0];
    *&v45[v45[0]] = 4628;
    LOWORD(__buf) = v12 + 20;
    while (write(v10, &__buf, __buf) == -1)
    {
      if (*__error() != 4)
      {
        goto LABEL_7;
      }
    }

    while (read(v10, &__buf, 0x25CuLL) == -1)
    {
      if (*__error() != 4)
      {
        goto LABEL_7;
      }
    }

    v13 = 0;
    *__src = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = HIDWORD(v42);
    do
    {
      if (((1 << v13) & v14) != 0)
      {
        *(&v36 + v13) = v11;
        v15 = *v11;
        if ((v15 & 3) != 0)
        {
          v16 = (v15 | 3) + 1;
        }

        else
        {
          v16 = *v11;
        }

        if (*v11)
        {
          v17 = v16;
        }

        else
        {
          v17 = 4;
        }

        v11 += v17;
        v14 ^= 1 << v13;
      }

      else
      {
        *(&v36 + v13) = 0;
      }

      ++v13;
    }

    while (v13 != 8);
    if (!a1 || (v18 = __src[1]) == 0 || (v19 = __src[0], a4) && !__src[0])
    {
LABEL_7:
      close(v10);
      return 0xFFFFFFFFLL;
    }

    if (*(__src[1] + 1) == 30 && *(__src[1] + 8) == 254 && (*(__src[1] + 9) & 0xC0) == 0x80)
    {
      v20 = *(__src[1] + 5);
      if (*(__src[1] + 5))
      {
        *(__src[1] + 5) = 0;
        if (!v18[6])
        {
          v18[6] = __rev16(v20);
        }
      }
    }

    memmove(a1, v18, *v18);
    if (a4)
    {
      strncpy(a4, v19 + 8, 0x10uLL);
    }

    close(v10);
    if (a1[1] != 30)
    {
      return 0;
    }

    LODWORD(v35) = 128;
    HIDWORD(v35) = a3;
    v21 = malloc_type_calloc(1uLL, 0x80uLL, 0x2FFDBC06uLL);
    if (v21)
    {
      v22 = v21;
      v23 = socket(a2[1], 2, 0);
      if (v23 < 0)
      {
        v29 = __error();
        v30 = strerror(*v29);
        syslog(3, "socket (%s)\n", v30);
      }

      else
      {
        v24 = v23;
        if (fcntl(v23, 4, 4, v35, v36, v37) == -1)
        {
          syslog(3, "failed to put localaddr socket in non-blocking mode\n");
        }

        if (a3)
        {
          v25 = a2[1] == 2 ? 0 : 41;
          v26 = a2[1] == 2 ? 25 : 125;
          if (setsockopt(v24, v25, v26, &v35 + 4, 4u))
          {
            v27 = __error();
            v28 = strerror(*v27);
            syslog(3, "failed to set IP family on localaddr socket: %s\n", v28);
          }
        }

        v52 = 0u;
        v53 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = 0;
        v47 = 0u;
        __memcpy_chk();
        if (v46.sa_family == 30 || v46.sa_family == 2)
        {
          *v46.sa_data = -14161;
        }

        if (connect(v24, &v46, v46.sa_len) < 0)
        {
          v31 = __error();
          v32 = strerror(*v31);
          syslog(3, "connect (%s)\n", v32);
          close(v24);
        }

        else
        {
          if (getsockname(v24, v22, &v35) < 0)
          {
            v33 = __error();
            v34 = strerror(*v33);
            syslog(3, "getsockname (%s)\n", v34);
            close(v24);
            return 0;
          }

          close(v24);
          memcpy(a1, v22, v22->sa_len);
        }
      }

      free(v22);
    }

    else
    {
      syslog(3, "failed to get address buffer.\n");
    }

    return 0;
  }

  return result;
}

uint64_t get_if_mtu(uint64_t a1)
{
  v5 = 0u;
  v6 = 0u;
  v1 = 1500;
  LODWORD(v6) = 1500;
  v2 = socket(2, 2, 0);
  if ((v2 & 0x80000000) == 0)
  {
    v3 = v2;
    __strlcpy_chk();
    ioctl(v3, 0xC0206933uLL, &v5);
    close(v3);
    return v6;
  }

  return v1;
}

uint64_t get_if_media(uint64_t a1)
{
  memset(v4, 0, 44);
  v1 = socket(2, 2, 0);
  if (v1 < 0)
  {
    return 0;
  }

  v2 = v1;
  __strlcpy_chk();
  ioctl(v2, 0xC02C6938uLL, v4);
  close(v2);
  return LODWORD(v4[1]);
}

uint64_t get_if_baudrate(const char *a1)
{
  size = 0;
  v1 = if_nametoindex(a1);
  if (!v1)
  {
    return 0;
  }

  *v6 = xmmword_2DB00;
  v7 = 3;
  v8 = v1;
  if (sysctl(v6, 6u, 0, &size, 0, 0) < 0)
  {
    return 0;
  }

  v2 = malloc_type_malloc(size, 0x1135C470uLL);
  if (sysctl(v6, 6u, v2, &size, 0, 0) < 0)
  {
    v3 = 0;
    if (!v2)
    {
      return v3;
    }
  }

  else if (v2[3] == 14)
  {
    v3 = *(v2 + 8);
  }

  else
  {
    v3 = 0;
  }

  free(v2);
  return v3;
}

uint64_t IPSecSetSecurityAssociationsPreference(void *a1, unsigned int a2)
{
  v4 = a2;
  v3 = 4;
  if (a2 <= 1)
  {
    return sysctlbyname("net.key.prefered_oldsa", a1, &v3, &v4, 4uLL);
  }

  else
  {
    return 0;
  }
}

__CFDictionary *IPSecCreateL2TPDefaultConfiguration(const sockaddr *a1, const sockaddr *a2, const char *a3, const void *a4, int a5, int a6, int a7, const __CFString *a8, int a9)
{
  v68 = 1;
  v69 = 0;
  valuePtr = 0;
  v67 = 17;
  sa_family = a2->sa_family;
  if (a1->sa_family != sa_family)
  {
    syslog(3, "address families don't match (%u != %u)\n", a1->sa_family, sa_family);
    return 0;
  }

  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v19 = 0;
  if (a3)
  {
    v19 = CFStringCreateWithCString(0, a3, 0x600u);
  }

  v60 = v19;
  if (a2->sa_family == 30)
  {
    getnameinfo(a1, a1->sa_len, cStr, 0x39u, 0, 0, 10);
    value = CFStringCreateWithCString(0, cStr, 0x600u);
    getnameinfo(a2, a2->sa_len, cStr, 0x39u, 0, 0, 10);
    v62 = CFStringCreateWithCString(0, cStr, 0x600u);
    valuePtr = bswap32(*a1->sa_data) >> 16;
    v58 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = bswap32(*a2->sa_data) >> 16;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = 128;
    v56 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v55 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v22 = addr2ascii(2, &a1->sa_data[2], 4, 0);
    value = CFStringCreateWithCString(0, v22, 0x600u);
    v23 = addr2ascii(2, &a2->sa_data[2], 4, 0);
    v62 = CFStringCreateWithCString(0, v23, 0x600u);
    valuePtr = bswap32(*a1->sa_data) >> 16;
    v58 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    valuePtr = bswap32(*a2->sa_data) >> 16;
    v20 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v55 = 0;
    v56 = 0;
  }

  v54 = CFNumberCreate(0, kCFNumberIntType, &v69);
  v61 = CFNumberCreate(0, kCFNumberIntType, &v67);
  if (a6)
  {
    v53 = 0;
    v24 = @"Obey";
  }

  else
  {
    if (a7)
    {
      v25 = &v68;
    }

    else
    {
      v25 = &v69;
    }

    v53 = CFNumberCreate(0, kCFNumberIntType, v25);
    v24 = @"Claim";
  }

  CFDictionarySetValue(Mutable, @"AuthenticationMethod", a4);
  CFDictionarySetValue(Mutable, @"LocalAddress", value);
  CFDictionarySetValue(Mutable, @"RemoteAddress", v62);
  CFDictionarySetValue(Mutable, @"ProposalsBehavior", v24);
  if (a6 && CFEqual(a4, @"Certificate"))
  {
    if (a8)
    {
      v26 = a8;
    }

    else
    {
      v26 = @"GenerateFromRemoteAddress";
    }

    if (!a8 && a3)
    {
      CFDictionarySetValue(Mutable, @"RemoteIdentifier", v60);
      v26 = @"UseRemoteIdentifier";
    }

    CFDictionarySetValue(Mutable, @"IdentifierVerification", v26);
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"IdentifierVerification", @"None");
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
    if (!a6)
    {
      CFDictionarySetValue(Mutable, @"NattMultipleUsersEnabled", v53);
    }
  }

  v57 = v20;
  v59 = a6;
  theArray = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  valuePtr = 3600;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (a9)
  {
    v28 = 0;
  }

  else
  {
    valuePtr = 14;
    v37 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v39 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v39, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v39, @"HashAlgorithm", @"SHA256");
    CFDictionarySetValue(v39, @"DHGroup", v37);
    CFDictionarySetValue(v39, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 0, v39);
    CFRelease(v39);
    v40 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v40, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v40, @"HashAlgorithm", @"SHA1");
    CFDictionarySetValue(v40, @"DHGroup", v37);
    CFDictionarySetValue(v40, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 1, v40);
    CFRelease(v40);
    v41 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v41, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v41, @"HashAlgorithm", @"MD5");
    CFDictionarySetValue(v41, @"DHGroup", v37);
    CFDictionarySetValue(v41, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 2, v41);
    CFRelease(v41);
    v42 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v42, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v42, @"HashAlgorithm", @"SHA512");
    CFDictionarySetValue(v42, @"DHGroup", v37);
    CFDictionarySetValue(v42, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 3, v42);
    CFRelease(v42);
    if (IsAggressiveMode)
    {
      goto LABEL_29;
    }

    CFRelease(v37);
    valuePtr = 5;
    v49 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v50 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v50, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v50, @"HashAlgorithm", @"SHA256");
    CFDictionarySetValue(v50, @"DHGroup", v49);
    CFDictionarySetValue(v50, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 4, v50);
    CFRelease(v50);
    v51 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v51, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v51, @"HashAlgorithm", @"SHA1");
    CFDictionarySetValue(v51, @"DHGroup", v49);
    CFDictionarySetValue(v51, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 5, v51);
    CFRelease(v51);
    v52 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v52, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v52, @"HashAlgorithm", @"MD5");
    CFDictionarySetValue(v52, @"DHGroup", v49);
    CFDictionarySetValue(v52, @"Lifetime", cf);
    CFArraySetValueAtIndex(theArray, 6, v52);
    CFRelease(v52);
    CFRelease(v49);
    v28 = 7;
  }

  valuePtr = 2;
  v29 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v30 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v30, @"EncryptionAlgorithm", @"AES256");
  CFDictionarySetValue(v30, @"HashAlgorithm", @"SHA256");
  CFDictionarySetValue(v30, @"DHGroup", v29);
  CFDictionarySetValue(v30, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28, v30);
  CFRelease(v30);
  v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v31, @"EncryptionAlgorithm", @"AES256");
  CFDictionarySetValue(v31, @"HashAlgorithm", @"SHA1");
  CFDictionarySetValue(v31, @"DHGroup", v29);
  CFDictionarySetValue(v31, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 1, v31);
  CFRelease(v31);
  v32 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v32, @"EncryptionAlgorithm", @"AES256");
  CFDictionarySetValue(v32, @"HashAlgorithm", @"MD5");
  CFDictionarySetValue(v32, @"DHGroup", v29);
  CFDictionarySetValue(v32, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 2, v32);
  CFRelease(v32);
  v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v33, @"EncryptionAlgorithm", @"AES");
  CFDictionarySetValue(v33, @"HashAlgorithm", @"SHA1");
  CFDictionarySetValue(v33, @"DHGroup", v29);
  CFDictionarySetValue(v33, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 3, v33);
  CFRelease(v33);
  v34 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v34, @"EncryptionAlgorithm", @"AES");
  CFDictionarySetValue(v34, @"HashAlgorithm", @"MD5");
  CFDictionarySetValue(v34, @"DHGroup", v29);
  CFDictionarySetValue(v34, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v28 + 4, v34);
  CFRelease(v34);
  v35 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v35, @"EncryptionAlgorithm", @"3DES");
  CFDictionarySetValue(v35, @"HashAlgorithm", @"SHA1");
  CFDictionarySetValue(v35, @"DHGroup", v29);
  CFDictionarySetValue(v35, @"Lifetime", cf);
  v36 = v28 + 6;
  CFArraySetValueAtIndex(theArray, v28 + 5, v35);
  CFRelease(v35);
  v37 = v29;
  v38 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v38, @"EncryptionAlgorithm", @"3DES");
  CFDictionarySetValue(v38, @"HashAlgorithm", @"MD5");
  CFDictionarySetValue(v38, @"DHGroup", v29);
  CFDictionarySetValue(v38, @"Lifetime", cf);
  CFArraySetValueAtIndex(theArray, v36, v38);
  CFRelease(v38);
LABEL_29:
  CFRelease(v37);
  CFRelease(cf);
  v21 = Mutable;
  CFDictionarySetValue(Mutable, @"Proposals", theArray);
  CFRelease(theArray);
  v43 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  CFDictionarySetValue(v43, @"LocalPort", v58);
  CFDictionarySetValue(v43, @"RemotePort", v57);
  if (v56)
  {
    CFDictionarySetValue(v43, @"LocalPrefix", v56);
  }

  if (v55)
  {
    CFDictionarySetValue(v43, @"RemotePrefix", v55);
  }

  CFDictionarySetValue(v43, @"Protocol", v61);
  CFDictionarySetValue(v43, @"Mode", @"Transport");
  CFDictionarySetValue(v43, @"Level", @"Require");
  v44 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArraySetValueAtIndex(v44, 0, @"AES256");
  CFArraySetValueAtIndex(v44, 1, @"AES");
  CFArraySetValueAtIndex(v44, 2, @"3DES");
  CFDictionarySetValue(v43, @"EncryptionAlgorithm", v44);
  CFRelease(v44);
  v45 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArraySetValueAtIndex(v45, 0, @"SHA256");
  CFArraySetValueAtIndex(v45, 1, @"SHA1");
  CFArraySetValueAtIndex(v45, 2, @"MD5");
  CFDictionarySetValue(v43, @"HashAlgorithm", v45);
  CFRelease(v45);
  if (v59)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v43);
    CFDictionarySetValue(MutableCopy, @"RemotePort", v54);
    CFDictionarySetValue(MutableCopy, @"Direction", @"In");
  }

  else
  {
    MutableCopy = 0;
  }

  v47 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  CFArraySetValueAtIndex(v47, 0, v43);
  if (v59)
  {
    CFArraySetValueAtIndex(v47, 1, MutableCopy);
    CFRelease(v43);
  }

  else
  {
    MutableCopy = v43;
  }

  CFRelease(MutableCopy);
  CFDictionarySetValue(Mutable, @"Policies", v47);
  CFRelease(v47);
  CFRelease(value);
  CFRelease(v62);
  CFRelease(v58);
  CFRelease(v57);
  if (v56)
  {
    CFRelease(v56);
  }

  if (v55)
  {
    CFRelease(v55);
  }

  CFRelease(v54);
  CFRelease(v61);
  if (!v59)
  {
    CFRelease(v53);
  }

  if (v60)
  {
    CFRelease(v60);
  }

  return v21;
}

__CFDictionary *IPSecCreateCiscoDefaultConfiguration(const sockaddr *a1, uint64_t a2, const void *a3, const void *a4, int a5, int a6, int a7, const __CFString *a8, int a9)
{
  v64 = 0;
  v62 = -1;
  v63 = 1;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (a1->sa_family == 30)
  {
    getnameinfo(a1, a1->sa_len, v65, 0x39u, 0, 0, 10);
    syslog(3, "IPv6 IPSec Address: %s\n", v65);
    v18 = v65;
    v19 = 134217984;
  }

  else
  {
    v18 = addr2ascii(2, &a1->sa_data[2], 4, 0);
    v19 = 1536;
  }

  value = CFStringCreateWithCString(0, v18, v19);
  v20 = addr2ascii(2, (a2 + 4), 4, 0);
  v54 = CFStringCreateWithCString(0, v20, 0x600u);
  valuePtr = bswap32(*a1->sa_data) >> 16;
  v51 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  valuePtr = bswap32(*(a2 + 2)) >> 16;
  v50 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v49 = CFNumberCreate(0, kCFNumberIntType, &v64);
  v48 = CFNumberCreate(0, kCFNumberIntType, &v62);
  if (a6)
  {
    v46 = 0;
    v21 = @"Obey";
  }

  else
  {
    if (a7)
    {
      v22 = &v63;
    }

    else
    {
      v22 = &v64;
    }

    v46 = CFNumberCreate(0, kCFNumberIntType, v22);
    v21 = @"Claim";
  }

  v47 = CFNumberCreate(0, kCFNumberIntType, &v64);
  v23 = CFNumberCreate(0, kCFNumberIntType, &v63);
  CFDictionarySetValue(Mutable, @"ModeConfigEnabled", v23);
  CFDictionarySetValue(Mutable, @"XAuthEnabled", v23);
  CFDictionarySetValue(Mutable, @"LocalAddress", value);
  CFDictionarySetValue(Mutable, @"RemoteAddress", v54);
  CFDictionarySetValue(Mutable, @"ProposalsBehavior", v21);
  if (a6 && CFEqual(a4, @"Certificate"))
  {
    if (!a8)
    {
      if (a3)
      {
        CFDictionarySetValue(Mutable, @"RemoteIdentifier", a3);
        a8 = @"UseRemoteIdentifier";
      }

      else
      {
        a8 = @"GenerateFromRemoteAddress";
      }
    }

    CFDictionarySetValue(Mutable, @"IdentifierVerification", a8);
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
  }

  else
  {
    CFDictionarySetValue(Mutable, @"IdentifierVerification", @"None");
    IsAggressiveMode = IPSecIsAggressiveMode(a4, a5, a6);
    if (!a6)
    {
      CFDictionarySetValue(Mutable, @"NattMultipleUsersEnabled", v46);
    }
  }

  CFDictionarySetValue(Mutable, @"DeadPeerDetectionEnabled", v23);
  CFDictionarySetValue(Mutable, @"BlackHoleDetectionEnabled", v23);
  valuePtr = 20;
  v25 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  if (v25)
  {
    v26 = v25;
    CFDictionarySetValue(Mutable, @"DeadPeerDetectionDelay", v25);
    CFRelease(v26);
  }

  v27 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  valuePtr = 3600;
  cf = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  *v65 = xmmword_2DB40;
  v28 = 14;
  v53 = a6;
  theDict = Mutable;
  if (IsAggressiveMode)
  {
    if (a9)
    {
      v28 = 2;
    }

    else
    {
      v28 = 14;
    }

    *v65 = v28;
    *&v65[4] = 0;
  }

  v60 = 0;
  valuePtr = v28;
  v29 = 4;
  theArray = v27;
  do
  {
    v58 = v29;
    v30 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    if (valuePtr >= 5)
    {
      v31 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v31, @"EncryptionAlgorithm", @"AES256");
      CFDictionarySetValue(v31, @"HashAlgorithm", @"SHA256");
      CFDictionarySetValue(v31, @"DHGroup", v30);
      CFDictionarySetValue(v31, @"Lifetime", cf);
      CFArraySetValueAtIndex(v27, v60, v31);
      CFRelease(v31);
      ++v60;
    }

    v32 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v32, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v32, @"HashAlgorithm", @"SHA1");
    CFDictionarySetValue(v32, @"DHGroup", v30);
    CFDictionarySetValue(v32, @"Lifetime", cf);
    v27 = theArray;
    CFArraySetValueAtIndex(theArray, v60, v32);
    CFRelease(v32);
    v33 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(v33, @"EncryptionAlgorithm", @"AES256");
    CFDictionarySetValue(v33, @"HashAlgorithm", @"MD5");
    CFDictionarySetValue(v33, @"DHGroup", v30);
    CFDictionarySetValue(v33, @"Lifetime", cf);
    v34 = v60 + 2;
    CFArraySetValueAtIndex(theArray, v60 + 1, v33);
    CFRelease(v33);
    v35 = valuePtr;
    if (valuePtr < 14)
    {
      v60 += 2;
    }

    else
    {
      v36 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v36, @"EncryptionAlgorithm", @"AES256");
      CFDictionarySetValue(v36, @"HashAlgorithm", @"SHA512");
      CFDictionarySetValue(v36, @"DHGroup", v30);
      CFDictionarySetValue(v36, @"Lifetime", cf);
      v60 += 3;
      CFArraySetValueAtIndex(theArray, v34, v36);
      CFRelease(v36);
      v35 = valuePtr;
    }

    if (v35 > 2)
    {
      v44 = v58;
      v38 = v30;
    }

    else
    {
      v37 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v37, @"EncryptionAlgorithm", @"AES");
      CFDictionarySetValue(v37, @"HashAlgorithm", @"SHA1");
      v38 = v30;
      CFDictionarySetValue(v37, @"DHGroup", v30);
      CFDictionarySetValue(v37, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60, v37);
      CFRelease(v37);
      v39 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v39, @"EncryptionAlgorithm", @"AES");
      CFDictionarySetValue(v39, @"HashAlgorithm", @"MD5");
      CFDictionarySetValue(v39, @"DHGroup", v30);
      CFDictionarySetValue(v39, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60 + 1, v39);
      CFRelease(v39);
      v40 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v40, @"EncryptionAlgorithm", @"3DES");
      CFDictionarySetValue(v40, @"HashAlgorithm", @"SHA1");
      CFDictionarySetValue(v40, @"DHGroup", v30);
      CFDictionarySetValue(v40, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60 + 2, v40);
      CFRelease(v40);
      v41 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v41, @"EncryptionAlgorithm", @"3DES");
      CFDictionarySetValue(v41, @"HashAlgorithm", @"MD5");
      CFDictionarySetValue(v41, @"DHGroup", v30);
      CFDictionarySetValue(v41, @"Lifetime", cf);
      CFArraySetValueAtIndex(theArray, v60 + 3, v41);
      CFRelease(v41);
      v42 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v42, @"EncryptionAlgorithm", @"DES");
      CFDictionarySetValue(v42, @"HashAlgorithm", @"SHA1");
      CFDictionarySetValue(v42, @"DHGroup", v30);
      CFDictionarySetValue(v42, @"Lifetime", cf);
      v57 = v60 + 5;
      CFArraySetValueAtIndex(theArray, v60 + 4, v42);
      CFRelease(v42);
      v43 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      CFDictionarySetValue(v43, @"EncryptionAlgorithm", @"DES");
      CFDictionarySetValue(v43, @"HashAlgorithm", @"MD5");
      CFDictionarySetValue(v43, @"DHGroup", v30);
      CFDictionarySetValue(v43, @"Lifetime", cf);
      v60 += 6;
      CFArraySetValueAtIndex(theArray, v57, v43);
      CFRelease(v43);
      v44 = v58;
    }

    CFRelease(v38);
    valuePtr = *&v65[v44];
    v29 = v44 + 4;
  }

  while (valuePtr);
  CFRelease(cf);
  CFDictionarySetValue(theDict, @"Proposals", theArray);
  CFRelease(theArray);
  CFRelease(value);
  CFRelease(v54);
  CFRelease(v51);
  CFRelease(v50);
  CFRelease(v49);
  CFRelease(v48);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v47)
  {
    CFRelease(v47);
  }

  if (!v53)
  {
    CFRelease(v46);
  }

  return theDict;
}

uint64_t IPSecSelfRepair()
{
  v0 = racoon_pid();
  if (v0)
  {
    kill(v0, 15);
  }

  return 0;
}

uint64_t IPSecFlushAll()
{
  v0 = pfkey_open();
  if ((v0 & 0x80000000) == 0)
  {
    v1 = v0;
    pfkey_send_spdflush(v0);
    pfkey_send_flush(v1, 0);
    pfkey_close(v1);
  }

  return 0;
}

void IPSecLogVPNInterfaceAddressEvent(uint64_t a1, uint64_t a2, int a3, char *a4, void *a5)
{
  if (!a2)
  {
    addr2ascii(2, a5, 4, v31);
    syslog(5, "%s: %d secs TIMEOUT waiting for interface to be reconfigured. previous setting (name: %s, address: %s).");
    return;
  }

  v27 = bswap32(*(a2 + 64));
  v8 = *(a2 + 20);
  v9 = addr2ascii(2, a5, 4, v31);
  v10 = *(a2 + 28);
  v11 = sub_6708(*(a2 + 24));
  v12 = addr2ascii(2, (a2 + 48), 4, v30);
  v13 = v12;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v21 = addr2ascii(2, &v27, 4, v29);
      v22 = addr2ascii(2, (a2 + 72), 4, v28);
      v19 = v11;
      v20 = v13;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: Address deleted. previous interface setting (name: %s, address: %s), deleted interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v8 == 7)
    {
      v25 = *(a2 + 54);
      v26 = *(a2 + 53);
      v23 = *(a2 + 56);
      v24 = *(a2 + 55);
      v21 = *(a2 + 58);
      v22 = *(a2 + 57);
      v19 = v11;
      v20 = v12;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: ARP collided. previous interface setting (name: %s, address: %s), conflicting interface setting (name: %s%d, family: %s, address: %s, mac: %x:%x:%x:%x:%x:%x).";
      goto LABEL_13;
    }
  }

  else
  {
    if (v8 == 1)
    {
      v21 = addr2ascii(2, &v27, 4, v29);
      v22 = addr2ascii(2, (a2 + 72), 4, v28);
      v19 = v11;
      v20 = v13;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: Address added. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
      goto LABEL_13;
    }

    if (v8 == 2)
    {
      v21 = addr2ascii(2, &v27, 4, v29);
      v22 = addr2ascii(2, (a2 + 72), 4, v28);
      v19 = v11;
      v20 = v13;
      v17 = (a2 + 32);
      v18 = v10;
      v16 = v9;
      v14 = "%s: Address changed. previous interface setting (name: %s, address: %s), current interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
LABEL_13:
      v15 = a4;
      goto LABEL_14;
    }
  }

  v22 = addr2ascii(2, &v27, 4, v29);
  v23 = addr2ascii(2, (a2 + 72), 4, v28);
  v20 = v11;
  v21 = v13;
  v18 = (a2 + 32);
  v19 = v10;
  v16 = a4;
  v17 = v9;
  v14 = "%s: Unknown Address event (%d). previous interface setting (name: %s, address: %s), other interface setting (name: %s%d, family: %s, address: %s, subnet: %s, destination: %s).";
  v15 = v8;
LABEL_14:
  syslog(5, v14, a1, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
}

char *sub_6708(int a1)
{
  if ((a1 - 1) < 0xE)
  {
    return off_39200[a1 - 1];
  }

  v1 = byte_40510;
  snprintf(byte_40510, 0x10uLL, "%d", a1);
  return v1;
}

void update_service_route(uint64_t a1, int a2, int a3, int a4, int a5, int a6, __int16 a7, int a8)
{
  v16 = *(a1 + 1048);
  if (v16)
  {
    while (v16[2] != a2 || v16[3] != a3 || v16[4] != a4 || v16[5] != a5)
    {
      v16 = *v16;
      if (!v16)
      {
        goto LABEL_7;
      }
    }

    goto LABEL_9;
  }

LABEL_7:
  v16 = malloc_type_calloc(1uLL, 0x28uLL, 0x10200400D048FD2uLL);
  if (v16)
  {
    v16[2] = a2;
    v16[3] = a3;
    v16[4] = a4;
    v16[5] = a5;
    *v16 = *(a1 + 1048);
    *(a1 + 1048) = v16;
LABEL_9:
    v16[6] = a6;
    *(v16 + 14) = a7;
    v16[8] = a8;
    return;
  }

  syslog(3, "%s: no memory\n", "update_service_route");
}

void *free_service_routes(uint64_t a1)
{
  result = *(a1 + 1048);
  if (result)
  {
    do
    {
      v3 = *result;
      free(result);
      result = v3;
    }

    while (v3);
  }

  *(a1 + 1048) = 0;
  return result;
}

uint64_t find_injection(const __CFString *a1, const __CFString *a2, uint64_t a3)
{
  if (!CFStringFind(a1, @"", 0).length)
  {
    v6 = CFStringFind(a1, @";", 0);
    if (!v6.length || (v10.location = v6.location + v6.length, v10.length = a3 - (v6.location + v6.length), !CFStringFindWithOptions(a1, a2, v10, 0, 0)))
    {
      v7 = CFStringFind(a1, a2, 0);
      if (!v7.length)
      {
        return 0;
      }

      v11.location = v7.location + v7.length;
      v11.length = a3 - (v7.location + v7.length);
      if (!CFStringFindWithOptions(a1, @";", v11, 0, 0))
      {
        return 0;
      }
    }
  }

  v8 = 1;
  SCLog();
  return v8;
}

uint64_t racoon_validate_cfg_str(char *cStr)
{
  v1 = CFStringCreateWithCString(0, cStr, 0x8000100u);
  v2 = v1;
  if (!v1 || (Length = CFStringGetLength(v1), find_injection(v2, @"include ", Length)) || find_injection(v2, @"privsep ", Length) || find_injection(v2, @"path ", Length) || find_injection(v2, @"timer ", Length) || find_injection(v2, @"listen ", Length) || find_injection(v2, @"remote ", Length) || find_injection(v2, @"sainfo ", Length) || find_injection(v2, @"banner ", Length) || find_injection(v2, @"my_identifier ", Length) || find_injection(v2, @"peers_identifier ", Length))
  {
    CFRelease(v2);
    return 0;
  }

  else
  {
    CFRelease(v2);
    return 1;
  }
}

uint64_t sub_6AE4(FILE *a1, const __CFDictionary *a2, const char **a3)
{
  __strlcpy_chk();
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"EncryptionAlgorithm");
    if (isArray(Value))
    {
      Count = CFArrayGetCount(Value);
      if (Count >= 1)
      {
        v7 = Count;
        v8 = 0;
        for (i = 0; i != v7; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
          if (isString(ValueAtIndex))
          {
            if (v8)
            {
              __strlcat_chk();
            }

            if (!CFEqual(ValueAtIndex, @"DES") && !CFEqual(ValueAtIndex, @"3DES") && !CFEqual(ValueAtIndex, @"AES") && !CFEqual(ValueAtIndex, @"AES256"))
            {
              v26 = "incorrect encryption algorithm";
LABEL_56:
              *a3 = v26;
              return 0xFFFFFFFFLL;
            }

            __strlcat_chk();
            v8 = 1;
          }
        }

        if (v8)
        {
          goto LABEL_16;
        }
      }
    }
  }

  __strlcat_chk();
LABEL_16:
  __strlcat_chk();
  fprintf(a1, "%s%s", off_40008[0], __str);
  __strlcpy_chk();
  if (a2)
  {
    v11 = CFDictionaryGetValue(a2, @"HashAlgorithm");
    if (isArray(v11))
    {
      v12 = CFArrayGetCount(v11);
      if (v12 >= 1)
      {
        v13 = v12;
        v14 = 0;
        for (j = 0; j != v13; ++j)
        {
          v16 = CFArrayGetValueAtIndex(v11, j);
          if (isString(v16))
          {
            if (v14)
            {
              __strlcat_chk();
            }

            if (!CFEqual(v16, @"SHA512") && !CFEqual(v16, @"SHA256") && !CFEqual(v16, @"SHA1") && !CFEqual(v16, @"MD5"))
            {
              v26 = "incorrect authentication algorithm";
              goto LABEL_56;
            }

            __strlcat_chk();
            v14 = 1;
          }
        }

        if (v14)
        {
          goto LABEL_31;
        }
      }
    }
  }

  __strlcat_chk();
LABEL_31:
  __strlcat_chk();
  fprintf(a1, "%s%s", off_40008[0], __str);
  __strlcpy_chk();
  if (a2)
  {
    v17 = CFDictionaryGetValue(a2, @"CompressionAlgorithm");
    if (isArray(v17))
    {
      v18 = CFArrayGetCount(v17);
      v19 = v18 - 1;
      if (v18 >= 1)
      {
        v20 = v18;
        v21 = 0;
        v22 = 1;
        do
        {
          while (1)
          {
            v23 = CFArrayGetValueAtIndex(v17, v21);
            if (!isString(v23))
            {
              break;
            }

            if ((v22 & 1) == 0)
            {
              __strlcat_chk();
            }

            if (!CFEqual(v23, @"Deflate"))
            {
              v26 = "incorrect compression algorithm";
              goto LABEL_56;
            }

            __strlcat_chk();
            v22 = 0;
            if (v19 == v21++)
            {
              goto LABEL_46;
            }
          }

          ++v21;
        }

        while (v20 != v21);
        if ((v22 & 1) == 0)
        {
          goto LABEL_46;
        }
      }
    }
  }

  __strlcat_chk();
LABEL_46:
  __strlcat_chk();
  fprintf(a1, "%s%s", off_40008[0], __str);
  v28 = 3600;
  if (a2)
  {
    GetIntFromDict(a2, @"Lifetime", &v28, 3600);
    snprintf(__str, 0x400uLL, "lifetime time %d sec;\n", v28);
    fprintf(a1, "%s%s", off_40008[0], __str);
    v28 = 0;
    if (GetIntFromDict(a2, @"PFSGroup", &v28, 0))
    {
      if (v28)
      {
        snprintf(__str, 0x400uLL, "pfs_group %d;\n", v28);
        fprintf(a1, "%s%s", off_40008[0], __str);
      }
    }
  }

  else
  {
    snprintf(__str, 0x400uLL, "lifetime time %d sec;\n", 3600);
    fprintf(a1, "%s%s", off_40008[0], __str);
  }

  return 0;
}

uint64_t sub_7098(const __CFData *a1, uint64_t a2)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length / 3 + Length + Length % 3 > 1023)
  {
    return 0;
  }

  v7 = Length;
  if (Length < 1)
  {
    result = 0;
  }

  else
  {
    result = 0;
    v8 = 0;
    v9 = v7;
    do
    {
      if (v8 % 3 == 2)
      {
        v11 = (a2 + result);
        *v11 = aAbcdefghijklmn[((*BytePtr | (*(BytePtr - 1) << 8)) >> 6) & 0x3F];
        result += 2;
        v11[1] = aAbcdefghijklmn[*BytePtr & 0x3F];
      }

      else
      {
        if (v8 % 3 == 1)
        {
          v10 = ((*BytePtr | (*(BytePtr - 1) << 8)) >> 4) & 0x3F;
        }

        else
        {
          v10 = *BytePtr >> 2;
        }

        *(a2 + result++) = aAbcdefghijklmn[v10];
      }

      ++v8;
      ++BytePtr;
      --v9;
    }

    while (v9);
    v12 = v7 % 3;
    if (v12 == 2)
    {
      *(a2 + result) = aAbcdefghijklmn[4 * (*(BytePtr - 1) & 0xF)];
      v14 = (a2 + result + 1);
      result += 2;
      goto LABEL_17;
    }

    if (v12 == 1)
    {
      v13 = (a2 + result);
      *v13 = aAbcdefghijklmn[16 * (*(BytePtr - 1) & 3)];
      v13[1] = 61;
      result += 3;
      v14 = v13 + 2;
LABEL_17:
      *v14 = 61;
    }
  }

  *(a2 + result) = 0;
  return result;
}

size_t sub_723C(unsigned int a1, unsigned int a2)
{
  v3 = bswap32(a1);
  if ((v3 & 0xFFFFFF) != 0)
  {
    if (v3)
    {
      if (v3)
      {
        snprintf(byte_40410, 0x100uLL, "%u.%u.%u.%u");
      }

      else
      {
        snprintf(byte_40410, 0x100uLL, "%u.%u.%u");
      }
    }

    else
    {
      snprintf(byte_40410, 0x100uLL, "%u.%u");
    }
  }

  else
  {
    snprintf(byte_40410, 0x100uLL, "%u");
  }

  result = strlen(byte_40410);
  if (a2)
  {
    v5 = bswap32(a2);
    v6 = -32;
    while (((v5 >> v6) & 1) == 0)
    {
      if (__CFADD__(v6++, 1))
      {
        return snprintf(&byte_40410[result], 8uLL, "/%d");
      }
    }

    v8 = v6 + 32;
    while (v8 != 31)
    {
      v9 = v5 >> v8++;
      if ((v9 & 2) == 0)
      {
        return snprintf(&byte_40410[result], 8uLL, "&0x%x");
      }
    }

    return snprintf(&byte_40410[result], 8uLL, "/%d");
  }

  else
  {
    byte_40410[result] = 0;
  }

  return result;
}

uint64_t scnc_cache_routing_table(uint64_t a1, const __CFDictionary *a2, uint64_t a3, int a4)
{
  v5 = a3;
  if (qword_40528 != -1)
  {
    sub_2C4D8();
  }

  v8 = qword_40520;
  if (!qword_40520)
  {
    return 0;
  }

  Value = SCPreferencesGetValue(qword_40520, *(a1 + 24));
  TypeID = CFDictionaryGetTypeID();
  if (Value && CFGetTypeID(Value) == TypeID)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v12 = MutableCopy;
  if (!MutableCopy)
  {
    return 0;
  }

  if (v5)
  {
    v13 = kSCEntNetIPv4;
  }

  else
  {
    v13 = 0;
  }

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 0x40000000;
  v19[2] = sub_786C;
  v19[3] = &unk_392B0;
  v20 = a4;
  v21 = v5;
  if (v5)
  {
    v14 = kSCEntNetIPv6;
  }

  else
  {
    v14 = 0;
  }

  sub_75AC(MutableCopy, a2, a4, @"IPv4", v13, v19);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 0x40000000;
  v16[2] = sub_7BDC;
  v16[3] = &unk_39310;
  v17 = a4;
  v18 = v5;
  sub_75AC(v12, a2, a4, @"IPv6", v14, v16);
  if (my_CFEqual(Value, v12))
  {
    CFRelease(v12);
    return 0;
  }

  SCPreferencesSetValue(v8, *(a1 + 24), v12);
  SCPreferencesCommitChanges(v8);
  SCPreferencesApplyChanges(v8);
  my_CFRelease((a1 + 504));
  *(a1 + 504) = v12;
  return 1;
}

void sub_75AC(CFDictionaryRef theDict, const __CFDictionary *a2, int a3, void *key, const void *a5, uint64_t a6)
{
  if (a6)
  {
    Value = CFDictionaryGetValue(theDict, key);
    TypeID = CFDictionaryGetTypeID();
    if (a2 && CFGetTypeID(a2) == TypeID)
    {
      if (a5)
      {
        v14 = a5;
      }

      else
      {
        v14 = key;
      }

      v15 = CFDictionaryGetValue(a2, v14);
      v16 = CFDictionaryGetTypeID();
      if (v15)
      {
        v17 = CFGetTypeID(v15) == v16;
        if (a3)
        {
          goto LABEL_31;
        }

LABEL_12:
        if (!v17)
        {
          if (!Value)
          {
            return;
          }

LABEL_35:

          CFDictionaryRemoveValue(theDict, key);
          return;
        }

LABEL_31:
        v23 = CFDictionaryGetTypeID();
        if (Value && CFGetTypeID(Value) == v23)
        {
          MutableCopy = CFDictionaryCreateMutableCopy(kCFAllocatorDefault, 0, Value);
        }

        else
        {
          MutableCopy = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        }

        v25 = MutableCopy;
        if (MutableCopy)
        {
          (*(a6 + 16))(a6, MutableCopy, v15);
          if (CFDictionaryGetCount(v25) < 1)
          {
            if (Value)
            {
              CFDictionaryRemoveValue(theDict, key);
            }
          }

          else if (!my_CFEqual(Value, v25))
          {
            CFDictionarySetValue(theDict, key, v25);
          }

          CFRelease(v25);
        }

        return;
      }
    }

    else
    {
      CFDictionaryGetTypeID();
      v15 = 0;
    }

    v17 = 0;
    if (a3)
    {
      goto LABEL_31;
    }

    goto LABEL_12;
  }

  v18 = CFDictionaryGetTypeID();
  if (!a2 || CFGetTypeID(a2) != v18 || (a5 ? (v19 = a5) : (v19 = key), (v20 = CFDictionaryGetValue(a2, v19)) == 0 || (v21 = v20, v22 = CFGetTypeID(v20), v22 != CFArrayGetTypeID()) && v22 != CFBooleanGetTypeID() && v22 != CFDataGetTypeID() && v22 != CFDateGetTypeID() && v22 != CFDictionaryGetTypeID() && v22 != CFNumberGetTypeID() && v22 != CFStringGetTypeID()))
  {
    if (!CFDictionaryContainsKey(theDict, key))
    {
      return;
    }

    goto LABEL_35;
  }

  CFDictionarySetValue(theDict, key, v21);
}

void sub_786C(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  if (v7)
  {
    v8 = kSCPropNetIPv4IncludedRoutes;
  }

  else
  {
    v8 = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_79A0;
  v13[3] = &unk_39270;
  v14 = v6;
  v15 = v7;
  sub_75AC(theDict, a3, v6, @"IncludedRoutes", v8, v13);
  v9 = *(a1 + 33);
  if (v9)
  {
    v10 = kSCPropNetIPv4ExcludedRoutes;
  }

  else
  {
    v10 = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_7B38;
  v11[3] = &unk_39290;
  v12 = v9;
  sub_75AC(theDict, a3, 0, @"ExcludedRoutes", v10, v11);
}

void sub_79A0(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (*(a1 + 32))
  {
    *bytes = 0;
    v4 = CFDataCreate(kCFAllocatorDefault, bytes, 4);
    v13 = v4;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = Mutable;
    v12 = Mutable;
    if (v4)
    {
      v7 = Mutable == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      CFDictionaryAddValue(Mutable, @"Addresses", v4);
      CFDictionaryAddValue(v6, @"Masks", v4);
    }

    sub_75AC(theDict, v6, 0, @"Addresses", 0, 0);
    sub_75AC(theDict, v6, 0, @"Masks", 0, 0);
    my_CFRelease(&v12);
    my_CFRelease(&v13);
  }

  else
  {
    if (*(a1 + 33))
    {
      v10 = kSCPropNetIPv4RouteDestinationAddress;
    }

    else
    {
      v10 = 0;
    }

    sub_75AC(theDict, a3, 0, @"Addresses", v10, 0);
    if (*(a1 + 33))
    {
      v11 = kSCPropNetIPv4RouteSubnetMask;
    }

    else
    {
      v11 = 0;
    }

    sub_75AC(theDict, a3, 0, @"Masks", v11, 0);
  }
}

void sub_7B38(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (*(a1 + 32))
  {
    v6 = kSCPropNetIPv4RouteDestinationAddress;
  }

  else
  {
    v6 = 0;
  }

  sub_75AC(theDict, a3, 0, @"Addresses", v6, 0);
  v7 = kSCPropNetIPv4RouteSubnetMask;
  if (*(a1 + 32))
  {
    v8 = @"Masks";
  }

  else
  {
    v8 = 0;
  }

  sub_75AC(theDict, a3, 0, v7, v8, 0);
}

void sub_7BDC(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  v6 = *(a1 + 32);
  v7 = *(a1 + 33);
  if (v7)
  {
    v8 = kSCPropNetIPv6IncludedRoutes;
  }

  else
  {
    v8 = 0;
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 0x40000000;
  v13[2] = sub_7D10;
  v13[3] = &unk_392D0;
  v14 = v6;
  v15 = v7;
  sub_75AC(theDict, a3, v6, @"IncludedRoutes", v8, v13);
  v9 = *(a1 + 33);
  if (v9)
  {
    v10 = kSCPropNetIPv6ExcludedRoutes;
  }

  else
  {
    v10 = 0;
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 0x40000000;
  v11[2] = sub_7EA8;
  v11[3] = &unk_392F0;
  v12 = v9;
  sub_75AC(theDict, a3, 0, @"ExcludedRoutes", v10, v11);
}

void sub_7D10(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (*(a1 + 32))
  {
    *bytes = 0;
    v15 = 0;
    v4 = CFDataCreate(kCFAllocatorDefault, bytes, 16);
    v13 = v4;
    Mutable = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v6 = Mutable;
    v12 = Mutable;
    if (v4)
    {
      v7 = Mutable == 0;
    }

    else
    {
      v7 = 1;
    }

    if (!v7)
    {
      CFDictionaryAddValue(Mutable, @"Addresses", v4);
      CFDictionaryAddValue(v6, @"Masks", v4);
    }

    sub_75AC(theDict, v6, 0, @"Addresses", 0, 0);
    sub_75AC(theDict, v6, 0, @"Masks", 0, 0);
    my_CFRelease(&v12);
    my_CFRelease(&v13);
  }

  else
  {
    if (*(a1 + 33))
    {
      v10 = kSCPropNetIPv6RouteDestinationAddress;
    }

    else
    {
      v10 = 0;
    }

    sub_75AC(theDict, a3, 0, @"Addresses", v10, 0);
    if (*(a1 + 33))
    {
      v11 = kSCPropNetIPv6RoutePrefixLength;
    }

    else
    {
      v11 = 0;
    }

    sub_75AC(theDict, a3, 0, @"Masks", v11, 0);
  }
}

void sub_7EA8(uint64_t a1, CFDictionaryRef theDict, const __CFDictionary *a3)
{
  if (*(a1 + 32))
  {
    v6 = kSCPropNetIPv6RouteDestinationAddress;
  }

  else
  {
    v6 = 0;
  }

  sub_75AC(theDict, a3, 0, @"Addresses", v6, 0);
  if (*(a1 + 32))
  {
    v7 = kSCPropNetIPv6RoutePrefixLength;
  }

  else
  {
    v7 = 0;
  }

  sub_75AC(theDict, a3, 0, @"Masks", v7, 0);
}

CFTypeRef scnc_cache_init_service(uint64_t a1)
{
  if (qword_40528 != -1)
  {
    sub_2C4D8();
  }

  if (qword_40520)
  {
    Value = SCPreferencesGetValue(qword_40520, *(a1 + 24));
  }

  else
  {
    Value = 0;
  }

  my_CFRelease((a1 + 504));
  result = my_CFRetain(Value);
  *(a1 + 504) = result;
  return result;
}

void scnc_cache_flush_removed_services(const __CFArray *a1)
{
  if (qword_40528 != -1)
  {
    sub_2C4D8();
  }

  v2 = qword_40520;
  v3 = SCPreferencesCopyKeyList(qword_40520);
  v11 = v3;
  Count = CFArrayGetCount(v3);
  v5 = CFArrayGetCount(a1);
  if (Count <= 0)
  {
    my_CFRelease(&v11);
  }

  else
  {
    v6 = v5;
    v7 = 0;
    v8 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v3, v7);
      v10 = CFArrayGetValueAtIndex(v3, v7);
      v12.location = 0;
      v12.length = v6;
      if (!CFArrayContainsValue(a1, v12, v10))
      {
        SCPreferencesRemoveValue(v2, ValueAtIndex);
        v8 = 1;
      }

      ++v7;
    }

    while (Count != v7);
    my_CFRelease(&v11);
    if (v8)
    {
      SCPreferencesCommitChanges(v2);
      SCPreferencesApplyChanges(v2);
    }
  }
}

void sub_80C4(id a1)
{
  v1 = SCPreferencesCreate(kCFAllocatorDefault, @"PPPController", @"com.apple.scnc-cache.plist");
  qword_40520 = v1;
  if (!v1)
  {
    v2 = SCError();
    SCErrorString(v2);
    SCLog();
    v1 = qword_40520;
  }

  SCPreferencesSynchronize(v1);
}

uint64_t ipsec_check_keylen(int a1, uint64_t a2, unsigned int a3)
{
  v5 = 2;
  if (a1 != 14)
  {
    if (a1 != 15)
    {
      goto LABEL_6;
    }

    v5 = 3;
  }

  v6 = sub_8234(v5, a2);
  if (v6)
  {
    v7 = v6;
    v8 = v6[1];
    v5 = 14;
    if (v8 <= a3)
    {
      v10 = v7[2];
      if (v10 >= a3)
      {
        v5 = 0;
      }

      else
      {
        v5 = 14;
      }

      if (v10 >= a3)
      {
        v9 = 0;
      }

      else
      {
        v9 = 0xFFFFFFFFLL;
      }

      goto LABEL_14;
    }

LABEL_6:
    v9 = 0xFFFFFFFFLL;
LABEL_14:
    __ipsec_errcode = v5;
    return v9;
  }

  return 0xFFFFFFFFLL;
}

uint64_t ipsec_check_keylen2(uint64_t a1, uint64_t a2, unsigned int a3)
{
  v4 = sub_8234(a1, a2);
  if (!v4)
  {
    return 0xFFFFFFFFLL;
  }

  v5 = 14;
  if (v4[1] <= a3)
  {
    v7 = v4[2];
    if (v7 >= a3)
    {
      v5 = 0;
    }

    else
    {
      v5 = 14;
    }

    if (v7 >= a3)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = 0xFFFFFFFFLL;
  }

  __ipsec_errcode = v5;
  return result;
}

unsigned __int16 *sub_8234(int a1, int a2)
{
  v2 = 0;
  while (dword_2DB58[v2] != a1)
  {
    if (++v2 == 3)
    {
      v3 = 2;
      goto LABEL_12;
    }
  }

  result = qword_40530[v2];
  if (result)
  {
    for (i = *result; i >= 16; i -= 8)
    {
      v6 = *(result + 8);
      result += 4;
      if (v6 == a2)
      {
        return result;
      }
    }

    v3 = 1;
  }

  else
  {
    v3 = 22;
  }

LABEL_12:
  result = 0;
  __ipsec_errcode = v3;
  return result;
}

uint64_t ipsec_get_keylen(int a1, int a2, void *a3)
{
  if (a3)
  {
    v5 = 2;
    if (a1 != 14)
    {
      if (a1 != 15)
      {
        v8 = 0xFFFFFFFFLL;
        goto LABEL_9;
      }

      v5 = 3;
    }

    v6 = sub_8234(v5, a2);
    if (!v6)
    {
      return 0xFFFFFFFFLL;
    }

    v7 = v6;
    v5 = 0;
    v8 = 0;
    *a3 = *v7;
  }

  else
  {
    v8 = 0xFFFFFFFFLL;
    v5 = 2;
  }

LABEL_9:
  __ipsec_errcode = v5;
  return v8;
}

uint64_t pfkey_set_softrate(uint64_t result, int a2)
{
  __ipsec_errcode = 0;
  if ((a2 - 101) >= 0xFFFFFF9C)
  {
    v2 = a2;
  }

  else
  {
    v2 = 100;
  }

  if (result > 1)
  {
    if (result != 2)
    {
      if (result == 3)
      {
        result = 0;
        dword_4002C = v2;
        return result;
      }

      goto LABEL_11;
    }

    result = 0;
    dword_40028 = v2;
  }

  else
  {
    if (result)
    {
      if (result == 1)
      {
        result = 0;
        dword_40024 = v2;
        return result;
      }

LABEL_11:
      __ipsec_errcode = 2;
      return 1;
    }

    dword_40020 = v2;
  }

  return result;
}

uint64_t pfkey_get_softrate(int a1)
{
  result = 0xFFFFFFFFLL;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return dword_40028;
    }

    else if (a1 == 3)
    {
      return dword_4002C;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      return dword_40024;
    }
  }

  else
  {
    return dword_40020;
  }

  return result;
}

ssize_t pfkey_send_getspi(uint64_t a1, char a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, unsigned int a6, unsigned int a7, int a8, int a9)
{
  if (a4 && a5)
  {
    v11 = a4[1];
    if (v11 == a5[1])
    {
      if (a6 > a7 || a6 - 1 <= 0xFE)
      {
        SCLog();
        v19 = 18;
      }

      else
      {
        v17 = a1;
        if (v11 == 2)
        {
          v18 = 32;
LABEL_13:
          v34 = v18;
          v20 = a6 < 0x100 || a7 == -1;
          v21 = v20;
          v33 = v21;
          if (v20)
          {
            v22 = 50;
          }

          else
          {
            v22 = 66;
          }

          v23 = ((*a4 - 1) | 7) + ((*a5 - 1) | 7) + v22;
          v24 = malloc_type_calloc(1uLL, v23, 0x1000040451B5BE8uLL);
          if (!v24)
          {
            v29 = __error();
            strerror(*v29);
            __ipsec_set_strerror();
LABEL_41:
            SCLog();
            return 0xFFFFFFFFLL;
          }

          v25 = v24;
          v26 = getpid();
          if (v23 > 15)
          {
            *v25 = 0;
            v25[1] = 0;
            *v25 = 258;
            *(v25 + 2) = 0;
            *(v25 + 3) = a2;
            *(v25 + 1) = (v23 >> 3);
            *(v25 + 2) = a9;
            *(v25 + 3) = v26;
            if (v23 > 0x1F)
            {
              v30 = v25 + v23;
              v25[2] = 0;
              v25[3] = 0;
              *(v25 + 4) = 1245186;
              *(v25 + 20) = a3;
              *(v25 + 7) = a8;
              v31 = sub_87FC(v25 + 16, v25 + v23, 5, a4, v34, 255);
              if (v31)
              {
                v32 = sub_87FC(v31, v25 + v23, 6, a5, v34, 255);
                if (v32)
                {
                  if ((v33 & 1) == 0)
                  {
                    if ((v32 + 16) > v30)
                    {
                      goto LABEL_40;
                    }

                    *v32 = 1048578;
                    *(v32 + 1) = a6;
                    *(v32 + 2) = a7;
                    *(v32 + 3) = 0;
                    v32 += 16;
                  }

                  if (v32 == v30)
                  {
                    v27 = pfkey_send(v17, v25, v23);
                    free(v25);
                    if ((v27 & 0x80000000) == 0)
                    {
                      __ipsec_errcode = 0;
                      return v27;
                    }

                    goto LABEL_41;
                  }
                }
              }
            }
          }

LABEL_40:
          free(v25);
          goto LABEL_41;
        }

        if (v11 == 30)
        {
          v18 = 0x80;
          goto LABEL_13;
        }

        SCLog();
        v19 = 15;
      }
    }

    else
    {
      SCLog();
      v19 = 24;
    }
  }

  else
  {
    SCLog();
    v19 = 2;
  }

  __ipsec_errcode = v19;
  return 0xFFFFFFFFLL;
}

char *sub_87FC(_WORD *a1, unint64_t a2, __int16 a3, unsigned __int8 *a4, char a5, char a6)
{
  v6 = (*a4 - 1) | 7;
  v7 = (v6 + 9);
  v8 = a1 + v7;
  if (a1 + v7 > a2)
  {
    return 0;
  }

  bzero(a1, (v6 + 9));
  *a1 = v7 >> 3;
  a1[1] = a3;
  *(a1 + 4) = a6;
  *(a1 + 5) = a5;
  a1[3] = 0;
  memcpy(a1 + 4, a4, *a4);
  return v8;
}

ssize_t pfkey_send(int a1, const void *a2, int a3)
{
  result = send(a1, a2, a3, 0);
  if ((result & 0x80000000) != 0)
  {
    v4 = __error();
    strerror(*v4);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  else
  {
    __ipsec_errcode = 0;
  }

  return result;
}

ssize_t sub_8940(int a1, char a2, int a3, char a4, unsigned __int8 *a5, unsigned __int8 *a6, int a7, int a8, char a9, char *a10, int a11, unsigned int a12, int a13, unsigned int a14, int a15, int a16, unsigned int a17, unsigned int a18, unsigned int a19, int a20)
{
  if (!a5 || !a6)
  {
    SCLog();
    v30 = 2;
    goto LABEL_36;
  }

  v22 = a5[1];
  if (v22 != a6[1])
  {
    SCLog();
    v30 = 24;
    goto LABEL_36;
  }

  v26 = a3;
  if (v22 == 2)
  {
    v29 = 32;
  }

  else
  {
    if (v22 != 30)
    {
      SCLog();
      v30 = 15;
      goto LABEL_36;
    }

    v29 = 0x80;
  }

  switch(a3)
  {
    case 2:
      if (!a11)
      {
        if (!a13)
        {
LABEL_35:
          SCLog();
          v30 = 20;
          goto LABEL_36;
        }

LABEL_24:
        v46 = v29;
        v31 = ((a12 - 1) | 7) + 139;
        v32 = ((a14 - 1) | 7) + 9;
        if (!a13)
        {
          v32 = 0;
        }

        if (!a11)
        {
          v31 = 130;
        }

        v33 = v31 + v32 + ((*a5 - 1) | 7) + ((*a6 - 1) | 7);
        v34 = malloc_type_calloc(1uLL, v33, 0x1000040451B5BE8uLL);
        if (!v34)
        {
          v36 = __error();
          strerror(*v36);
          __ipsec_set_strerror();
LABEL_53:
          SCLog();
          return 0xFFFFFFFFLL;
        }

        v47 = v34;
        v35 = getpid();
        if (v33 > 15)
        {
          *v47 = 0;
          v47[1] = 0;
          *v47 = 2;
          *(v47 + 1) = a2;
          *(v47 + 2) = 0;
          *(v47 + 3) = v26;
          *(v47 + 1) = (v33 >> 3);
          *(v47 + 2) = a20;
          *(v47 + 3) = v35;
          if (v33 > 0x1F)
          {
            v47[2] = 0;
            v47[3] = 0;
            *(v47 + 4) = 65538;
            *(v47 + 5) = a7;
            *(v47 + 24) = a9;
            *(v47 + 25) = 0;
            *(v47 + 26) = a13;
            *(v47 + 27) = a11;
            *(v47 + 7) = a15;
            if (v33 > 0x2F)
            {
              v39 = v33;
              v40 = v47 + v33;
              v47[4] = 0;
              v47[5] = 0;
              *(v47 + 8) = 1245186;
              *(v47 + 36) = a4;
              *(v47 + 11) = a8;
              v41 = sub_87FC(v47 + 24, v47 + v33, 5, a5, v46, 255);
              if (v41)
              {
                v42 = sub_87FC(v41, v40, 6, a6, v46, 255);
                if (v42)
                {
                  if (a11)
                  {
                    v43 = a12;
                    v42 = sub_A524(v42, v40, 9, a10, a12);
                    if (!v42)
                    {
                      goto LABEL_52;
                    }
                  }

                  else
                  {
                    v43 = a12;
                  }

                  if ((!a13 || (v42 = sub_A524(v42, v40, 8, &a10[v43], a14)) != 0) && (v42 + 32) <= v40)
                  {
                    *v42 = 0u;
                    *(v42 + 1) = 0u;
                    *v42 = 196612;
                    *(v42 + 1) = a16;
                    *(v42 + 1) = a17;
                    *(v42 + 2) = a18;
                    *(v42 + 3) = a19;
                    if ((v42 + 64) <= v40)
                    {
                      *(v42 + 2) = 0uLL;
                      *(v42 + 3) = 0uLL;
                      v44 = dword_40020 * a16 / 0x64u;
                      *(v42 + 8) = 262148;
                      *(v42 + 9) = v44;
                      v45 = dword_40028 * a18;
                      *(v42 + 5) = dword_40024 * a17 / 0x64uLL;
                      *(v42 + 6) = v45 / 0x64uLL;
                      *(v42 + 7) = dword_4002C * a19 / 0x64uLL;
                      if (v42 + 64 == v40)
                      {
                        v37 = pfkey_send(a1, v47, v39);
                        free(v47);
                        if ((v37 & 0x80000000) == 0)
                        {
                          __ipsec_errcode = 0;
                          return v37;
                        }

                        goto LABEL_53;
                      }
                    }
                  }
                }
              }
            }
          }
        }

LABEL_52:
        free(v47);
        goto LABEL_53;
      }

      goto LABEL_22;
    case 9:
      if (a11)
      {
        if (a13)
        {
          goto LABEL_35;
        }

        goto LABEL_24;
      }

LABEL_22:
      SCLog();
      v30 = 13;
      goto LABEL_36;
    case 3:
      if (!a11)
      {
        goto LABEL_35;
      }

      goto LABEL_24;
  }

  SCLog();
  v30 = 10;
LABEL_36:
  __ipsec_errcode = v30;
  return 0xFFFFFFFFLL;
}

ssize_t sub_8FE8(int a1, char a2, char a3, unsigned __int8 *a4, unsigned __int8 *a5, int a6)
{
  if (!a4 || !a5)
  {
    SCLog();
    v14 = 2;
LABEL_14:
    __ipsec_errcode = v14;
    return 0xFFFFFFFFLL;
  }

  v8 = a4[1];
  if (v8 != a5[1])
  {
    SCLog();
    v14 = 24;
    goto LABEL_14;
  }

  if (v8 == 2)
  {
    v13 = 32;
    goto LABEL_10;
  }

  if (v8 != 30)
  {
    SCLog();
    v14 = 15;
    goto LABEL_14;
  }

  v13 = 0x80;
LABEL_10:
  v15 = ((*a5 - 1) | 7) + ((*a4 - 1) | 7);
  v16 = v15 + 50;
  v17 = malloc_type_calloc(1uLL, v15 + 50, 0x1000040451B5BE8uLL);
  if (v17)
  {
    v18 = v17;
    v19 = getpid();
    if (v15 > -35 && (*v18 = 0, v18[1] = 0, *v18 = 2, *(v18 + 1) = a2, *(v18 + 2) = 0, *(v18 + 3) = a3, *(v18 + 1) = (v16 >> 3), *(v18 + 2) = 0, *(v18 + 3) = v19, v15 > -19) && (v18[2] = 0, v18[3] = 0, *(v18 + 4) = 65538, *(v18 + 5) = a6, v18[3] = 0, (v23 = sub_87FC(v18 + 16, v18 + v16, 5, a4, v13, 255)) != 0) && ((v24 = sub_87FC(v23, v18 + v16, 6, a5, v13, 255)) != 0 ? (v25 = v24 == v18 + v16) : (v25 = 0), v25))
    {
      v20 = pfkey_send(a1, v18, v16);
      free(v18);
      if ((v20 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v20;
      }
    }

    else
    {
      free(v18);
    }
  }

  else
  {
    v22 = __error();
    strerror(*v22);
    __ipsec_set_strerror();
  }

  SCLog();
  return 0xFFFFFFFFLL;
}

ssize_t pfkey_send_delete_all(int a1, char a2, uint64_t a3, unsigned __int8 *a4, unsigned __int8 *a5)
{
  if (!a4 || !a5)
  {
    SCLog();
    v11 = 2;
LABEL_14:
    __ipsec_errcode = v11;
    return 0xFFFFFFFFLL;
  }

  v7 = a4[1];
  if (v7 != a5[1])
  {
    SCLog();
    v11 = 24;
    goto LABEL_14;
  }

  if (v7 == 2)
  {
    v10 = 32;
    goto LABEL_10;
  }

  if (v7 != 30)
  {
    SCLog();
    v11 = 15;
    goto LABEL_14;
  }

  v10 = 0x80;
LABEL_10:
  v12 = ((*a5 - 1) | 7) + ((*a4 - 1) | 7);
  v13 = v12 + 34;
  v14 = malloc_type_calloc(1uLL, v12 + 34, 0x1000040451B5BE8uLL);
  if (v14)
  {
    v15 = v14;
    v16 = getpid();
    if (v12 > -19 && (*v15 = 0, v15[1] = 0, *v15 = 1026, *(v15 + 2) = 0, *(v15 + 3) = a2, *(v15 + 1) = (v13 >> 3), *(v15 + 2) = 0, *(v15 + 3) = v16, (v20 = sub_87FC(v15 + 8, v15 + v13, 5, a4, v10, 255)) != 0) && ((v21 = sub_87FC(v20, v15 + v13, 6, a5, v10, 255)) != 0 ? (v22 = v21 == v15 + v13) : (v22 = 0), v22))
    {
      v17 = pfkey_send(a1, v15, v13);
      free(v15);
      if ((v17 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v17;
      }
    }

    else
    {
      free(v15);
    }
  }

  else
  {
    v19 = __error();
    strerror(*v19);
    __ipsec_set_strerror();
  }

  SCLog();
  return 0xFFFFFFFFLL;
}

ssize_t pfkey_send_register(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = 0;
  if (a2)
  {
    while (dword_2DB58[v4] != a2)
    {
      if (++v4 == 3)
      {
        __ipsec_errcode = 2;
        return 0xFFFFFFFFLL;
      }
    }

    v7 = qword_40530[v4];
    if (v7)
    {
      free(v7);
      qword_40530[v4] = 0;
    }
  }

  else
  {
    do
    {
      v6 = *(qword_40530 + v4);
      if (v6)
      {
        free(v6);
        *(qword_40530 + v4) = 0;
      }

      v4 += 8;
    }

    while (v4 != 24);
  }

  return sub_9678(v3, 7, v2);
}

ssize_t sub_9678(int a1, int a2, unsigned int a3)
{
  v3 = a3;
  v4 = a2;
  if (a2 == 11)
  {
    if (a3 >= 2)
    {
LABEL_11:
      SCLog();
      __ipsec_errcode = 10;
      return 0xFFFFFFFFLL;
    }
  }

  else if (a3 > 9 || ((1 << a3) & 0x20D) == 0)
  {
    goto LABEL_11;
  }

  v6 = malloc_type_calloc(1uLL, 0x10uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    v10 = __error();
    strerror(*v10);
    __ipsec_set_strerror();
    goto LABEL_10;
  }

  v7 = v6;
  v8 = getpid();
  *v7 = 2;
  v7[1] = v4;
  v7[2] = 0;
  v7[3] = v3;
  *(v7 + 4) = 2;
  *(v7 + 3) = v8;
  v9 = pfkey_send(a1, v7, 16);
  free(v7);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_10:
    SCLog();
    return 0xFFFFFFFFLL;
  }

  __ipsec_errcode = 0;
  return v9;
}

uint64_t pfkey_recv_register(int a1)
{
  v2 = getpid();
  v3 = pfkey_recv(a1);
  if (!v3)
  {
    return 0xFFFFFFFFLL;
  }

  v4 = v3;
  while (*(v4 + 1) != 7 || *(v4 + 3) != v2)
  {
    v4 = pfkey_recv(a1);
    if (!v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  v5 = 8 * v4[2];
  v4[2] = v5;
  v6 = pfkey_set_supported(v4, v5 & 0xFFF8);
  free(v4);
  if (v6)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  __ipsec_errcode = 0;
  return result;
}

unsigned __int16 *pfkey_recv(int a1)
{
  v11[0] = 0;
  v11[1] = 0;
  while (1)
  {
    v2 = recv(a1, v11, 0x10uLL, 2);
    if ((v2 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v3 = __error();
      strerror(*v3);
      __ipsec_set_strerror();
      return 0;
    }
  }

  if (v2 <= 0xF)
  {
    recv(a1, v11, 0x10uLL, 0);
    v4 = 0;
    __ipsec_errcode = 27;
    return v4;
  }

  v5 = WORD2(v11[0]);
  v6 = 8 * WORD2(v11[0]);
  v4 = malloc_type_calloc(1uLL, v6, 0x1000040451B5BE8uLL);
  if (!v4)
  {
    v9 = __error();
    strerror(*v9);
    __ipsec_set_strerror();
    return v4;
  }

  while (1)
  {
    v7 = recv(a1, v4, v6, 0);
    if ((v7 & 0x8000000000000000) == 0)
    {
      break;
    }

    if (*__error() != 4)
    {
      v8 = __error();
      strerror(*v8);
      __ipsec_set_strerror();
      goto LABEL_16;
    }
  }

  if (v7 == v6 && v4[2] == v5)
  {
    __ipsec_errcode = 0;
    return v4;
  }

  __ipsec_errcode = 26;
LABEL_16:
  free(v4);
  return 0;
}

uint64_t pfkey_set_supported(uint64_t a1, unsigned int a2)
{
  if (*(a1 + 4) == a2)
  {
    v2 = a1 + a2;
    v3 = (a1 + 16);
    if (a2 >= 0x18)
    {
      do
      {
        v5 = *v3;
        if (!*v3 || v2 < v3 + v5)
        {
          break;
        }

        v7 = v3[1];
        if ((v7 & 0xFFFE) != 0xE)
        {
          goto LABEL_4;
        }

        v8 = 8 * v5;
        *v3 = v8;
        v9 = v7 != 14;
        v10 = qword_40530[v7 != 14];
        if (v10)
        {
          free(v10);
          v8 = *v3;
        }

        v11 = malloc_type_malloc(v8, 0x91CE4848uLL);
        qword_40530[v9] = v11;
        if (!v11)
        {
          v12 = __error();
          strerror(*v12);
          __ipsec_set_strerror();
          return 0xFFFFFFFFLL;
        }

        memcpy(v11, v3, *v3);
        v3 = (v3 + *v3);
      }

      while (v3 < v2 && v2 >= (v3 + 4));
    }

    if (v3 == v2)
    {
      result = 0;
      __ipsec_errcode = 0;
    }

    else
    {
LABEL_4:
      __ipsec_errcode = 10;
      return 0xFFFFFFFFLL;
    }
  }

  else
  {
    __ipsec_errcode = 2;
    return 0xFFFFFFFFLL;
  }

  return result;
}

ssize_t sub_9BA8(int a1, char a2, unsigned __int8 *a3, unsigned int a4, unsigned __int8 *a5, unsigned int a6, char a7, unsigned int a8, uint64_t a9, void *__src, int a11, int a12)
{
  if (!a3 || !a5)
  {
    SCLog();
    v22 = 2;
LABEL_17:
    __ipsec_errcode = v22;
    return 0xFFFFFFFFLL;
  }

  v14 = a3[1];
  if (v14 != a5[1])
  {
    SCLog();
    v22 = 24;
    goto LABEL_17;
  }

  v17 = a6;
  v18 = a4;
  if (v14 == 2)
  {
    v21 = 32;
  }

  else
  {
    if (v14 != 30)
    {
      SCLog();
      v22 = 15;
      goto LABEL_17;
    }

    v21 = 128;
  }

  if (v21 < a4 || v21 < a6)
  {
    SCLog();
    v22 = 16;
    goto LABEL_17;
  }

  v23 = a11 + ((2 * *a3 - 2) | 0xE) + 66;
  v24 = malloc_type_calloc(1uLL, v23, 0x1000040451B5BE8uLL);
  if (v24)
  {
    v25 = v24;
    v26 = getpid();
    if (v23 > 15 && (*v25 = 0, v25[1] = 0, *v25 = 2, *(v25 + 1) = a2, v30 = v25 + v23, *(v25 + 1) = 0, *(v25 + 1) = (v23 >> 3), *(v25 + 2) = a12, *(v25 + 3) = v26, (v31 = sub_87FC(v25 + 8, v25 + v23, 5, a3, v18, a7)) != 0) && (v32 = sub_87FC(v31, v25 + v23, 6, a5, v17, a7)) != 0 && (v33 = v32, v34 = v32 + 32, v34 <= v30) && (*v33 = 0u, *(v33 + 1) = 0u, *v33 = 196612, *(v33 + 1) = 0, *(v33 + 2) = a8, *(v33 + 3) = a9, &v34[a11] == v30))
    {
      memcpy(v34, __src, a11);
      v27 = pfkey_send(a1, v25, v23);
      free(v25);
      if ((v27 & 0x80000000) == 0)
      {
        __ipsec_errcode = 0;
        return v27;
      }
    }

    else
    {
      free(v25);
    }
  }

  else
  {
    v29 = __error();
    strerror(*v29);
    __ipsec_set_strerror();
  }

  SCLog();
  return 0xFFFFFFFFLL;
}

ssize_t pfkey_send_spddelete(int a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char a6, void *a7, int a8, int a9)
{
  if (a8 == 16)
  {
    return sub_9BA8(a1, 15, a2, a3, a4, a5, a6, 0, 0, a7, 16, a9);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

ssize_t sub_A08C(int a1, char a2, int a3)
{
  v6 = malloc_type_calloc(1uLL, 0x20uLL, 0x1000040451B5BE8uLL);
  if (!v6)
  {
    v10 = __error();
    strerror(*v10);
    __ipsec_set_strerror();
    goto LABEL_5;
  }

  v7 = v6;
  v8 = getpid();
  *v7 = 2;
  v7[1] = a2;
  *(v7 + 1) = 0;
  *(v7 + 4) = 4;
  *(v7 + 3) = v8;
  *(v7 + 2) = 1179776;
  *(v7 + 6) = a3;
  *(v7 + 7) = 0;
  v9 = pfkey_send(a1, v7, 32);
  free(v7);
  if ((v9 & 0x80000000) != 0)
  {
LABEL_5:
    SCLog();
    return 0xFFFFFFFFLL;
  }

  __ipsec_errcode = 0;
  return v9;
}

ssize_t pfkey_send_spdsetidx(int a1, unsigned __int8 *a2, unsigned int a3, unsigned __int8 *a4, unsigned int a5, char a6, void *a7, int a8, int a9)
{
  if (a8 == 16)
  {
    return sub_9BA8(a1, 20, a2, a3, a4, a5, a6, 0, 0, a7, 16, a9);
  }

  __ipsec_errcode = 2;
  return 0xFFFFFFFFLL;
}

uint64_t pfkey_open()
{
  v4 = 0x20000;
  v0 = socket(29, 3, 2);
  if ((v0 & 0x80000000) != 0)
  {
    v2 = __error();
    strerror(*v2);
    __ipsec_set_strerror();
    return 0xFFFFFFFFLL;
  }

  else
  {
    v1 = v0;
    setsockopt(v0, 0xFFFF, 4097, &v4, 4u);
    setsockopt(v1, 0xFFFF, 4098, &v4, 4u);
    __ipsec_errcode = 0;
  }

  return v1;
}

uint64_t pfkey_close(int a1)
{
  result = close(a1);
  __ipsec_errcode = 0;
  return result;
}

uint64_t pfkey_align(uint64_t a1, uint64_t a2)
{
  result = 0xFFFFFFFFLL;
  v4 = 2;
  if (a1 && a2)
  {
    *(a2 + 232) = 0;
    *(a2 + 216) = 0u;
    *(a2 + 200) = 0u;
    *(a2 + 184) = 0u;
    *(a2 + 168) = 0u;
    *(a2 + 152) = 0u;
    *(a2 + 136) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 56) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    v5 = *(a1 + 4);
    v6 = a1 + 8 * v5;
    *a2 = a1;
    v7 = (a1 + 16);
    if (v5 >= 3)
    {
      while (1)
      {
        v8 = &v7[4 * *v7];
        if (!*v7 || v6 < v8)
        {
          break;
        }

        v11 = v7[1];
        if (*(a2 + 8 * v11) || (v11 - 1) >= 0x10 && (v11 - 18) > 1)
        {
          result = 0xFFFFFFFFLL;
          v4 = 12;
          goto LABEL_11;
        }

        *(a2 + 8 * v11) = v7;
        v12 = v8 < v6 && v6 >= (v8 + 2);
        v7 = v8;
        if (!v12)
        {
          goto LABEL_5;
        }
      }
    }

    v8 = v7;
LABEL_5:
    v9 = v8 == v6;
    if (v8 == v6)
    {
      v4 = 0;
    }

    else
    {
      v4 = 3;
    }

    if (v9)
    {
      result = 0;
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

LABEL_11:
  __ipsec_errcode = v4;
  return result;
}

uint64_t pfkey_check(uint64_t a1)
{
  if (!a1 || (v1 = *a1) == 0)
  {
    result = 0xFFFFFFFFLL;
    v4 = 2;
    goto LABEL_8;
  }

  if (*v1 != 2)
  {
    result = 0xFFFFFFFFLL;
    v4 = 4;
    goto LABEL_8;
  }

  v2 = v1[1];
  if (v2 > 0x1A)
  {
    result = 0xFFFFFFFFLL;
    v4 = 11;
    goto LABEL_8;
  }

  v5 = v1[3];
  if (v5 > 9)
  {
    goto LABEL_18;
  }

  v4 = 1;
  if (((1 << v5) & 0x1E0) != 0)
  {
    result = 0xFFFFFFFFLL;
    goto LABEL_8;
  }

  if (((1 << v5) & 0x20C) == 0)
  {
    if (v5 == 1)
    {
      if (v2 == 11)
      {
        goto LABEL_23;
      }

      goto LABEL_22;
    }

LABEL_18:
    if (!v5)
    {
      v6 = v2 - 1;
      if ((v2 - 1) >= 8u)
      {
        goto LABEL_23;
      }

      v7 = 191;
      goto LABEL_21;
    }

LABEL_22:
    result = 0xFFFFFFFFLL;
    v4 = 10;
    goto LABEL_8;
  }

  v6 = v2 - 14;
  if (v2 - 14 >= 6)
  {
    goto LABEL_23;
  }

  v7 = 55;
LABEL_21:
  if ((v7 >> v6))
  {
    goto LABEL_22;
  }

LABEL_23:
  v8 = *(a1 + 40);
  if (v8)
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      if (*(v8 + 4) != *(v9 + 4))
      {
        result = 0xFFFFFFFFLL;
        v4 = 23;
        goto LABEL_8;
      }

      v10 = *(v8 + 9);
      if (v10 != *(v9 + 9))
      {
        result = 0xFFFFFFFFLL;
        v4 = 24;
        goto LABEL_8;
      }

      if (v10 != 30 && v10 != 2)
      {
        result = 0xFFFFFFFFLL;
        v4 = 15;
        goto LABEL_8;
      }
    }
  }

  v4 = 0;
  result = 0;
LABEL_8:
  __ipsec_errcode = v4;
  return result;
}

char *sub_A524(_WORD *a1, unint64_t a2, __int16 a3, const void *a4, unsigned int a5)
{
  v5 = (a5 - 1) | 7;
  v6 = v5 + 9;
  v7 = a1 + v6;
  if (a1 + v6 > a2)
  {
    return 0;
  }

  bzero(a1, v5 + 9);
  *a1 = v6 >> 3;
  a1[1] = a3;
  a1[2] = 8 * a5;
  a1[3] = 0;
  memcpy(a1 + 4, a4, a5);
  return v7;
}

uint64_t get_addr_option(uint64_t a1, const __CFString *key, const void *a3, CFDictionaryRef theDict, uint64_t a5, unsigned int *a6, unsigned int a7)
{
  if (*(a1 + 628) && getAddressFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), key, a3, a6))
  {
    return 1;
  }

  if (theDict && (Value = CFDictionaryGetValue(theDict, key)) != 0 && (v15 = Value, v16 = CFGetTypeID(Value), v16 == CFDictionaryGetTypeID()) && (v17 = CFDictionaryGetValue(v15, a3)) != 0 && (v18 = v17, v19 = CFGetTypeID(v17), v19 == CFArrayGetTypeID()) && CFArrayGetCount(v18))
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v18, 0);
    a7 = CFStringAddrToLong(ValueAtIndex);
    result = 2;
  }

  else
  {
    if (getAddressFromEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), key, a3, a6))
    {
      return 3;
    }

    result = 0;
  }

  *a6 = a7;
  return result;
}

uint64_t get_int_option(uint64_t a1, const __CFString *key, const void *a3, CFDictionaryRef theDict, CFDictionaryRef a5, _DWORD *a6, int a7)
{
  if (*(a1 + 628) && getNumberFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), key, a3, a6))
  {
    return 1;
  }

  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, key);
    if (Value)
    {
      v16 = Value;
      v17 = CFGetTypeID(Value);
      if (v17 == CFDictionaryGetTypeID())
      {
        if (getNumber(v16, a3, a6))
        {
          return 2;
        }
      }
    }
  }

  if (a5)
  {
    v18 = CFDictionaryGetValue(a5, key);
    if (!v18)
    {
      goto LABEL_13;
    }

    v19 = v18;
    v20 = CFGetTypeID(v18);
    if (v20 != CFDictionaryGetTypeID() || !getNumber(v19, a3, a6))
    {
      goto LABEL_13;
    }
  }

  else if (!getNumberFromEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), key, a3, a6))
  {
LABEL_13:
    result = 0;
    *a6 = a7;
    return result;
  }

  return 3;
}

uint64_t get_str_option(uint64_t a1, const __CFString *key, const void *a3, CFDictionaryRef theDict, CFDictionaryRef a5, char *a6, unsigned int a7, _DWORD *a8, char *__source)
{
  if (!*(a1 + 628) || !getStringFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), key, a3, a6, a7))
  {
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, key);
      if (Value)
      {
        v19 = Value;
        v20 = CFGetTypeID(Value);
        if (v20 == CFDictionaryGetTypeID())
        {
          if (getString(v19, a3, a6, a7))
          {
            v17 = 2;
            goto LABEL_16;
          }
        }
      }
    }

    if (a5)
    {
      v21 = CFDictionaryGetValue(a5, key);
      if (!v21)
      {
        goto LABEL_13;
      }

      v22 = v21;
      v23 = CFGetTypeID(v21);
      if (v23 != CFDictionaryGetTypeID() || !getString(v22, a3, a6, a7))
      {
        goto LABEL_13;
      }
    }

    else if (!getStringFromEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), key, a3, a6, a7))
    {
LABEL_13:
      strlcpy(a6, __source, a7);
      v17 = 0;
      goto LABEL_16;
    }

    v17 = 3;
    goto LABEL_16;
  }

  v17 = 1;
LABEL_16:
  *a8 = strlen(a6);
  return v17;
}

uint64_t get_cf_option(void *key, const void *a2, uint64_t a3, CFDictionaryRef theDict, CFDictionaryRef a5, uint64_t a6)
{
  if (!theDict || (v11 = CFDictionaryGetValue(theDict, key)) == 0 || (v12 = v11, v13 = CFGetTypeID(v11), v13 != CFDictionaryGetTypeID()) || (v14 = CFDictionaryGetValue(v12, a2)) == 0 || (v15 = v14, CFGetTypeID(v14) != a3))
  {
    if (!a5)
    {
      return a6;
    }

    Value = CFDictionaryGetValue(a5, key);
    if (!Value)
    {
      return a6;
    }

    v17 = Value;
    v18 = CFGetTypeID(Value);
    if (v18 != CFDictionaryGetTypeID())
    {
      return a6;
    }

    v19 = CFDictionaryGetValue(v17, a2);
    if (!v19)
    {
      return a6;
    }

    v15 = v19;
    if (CFGetTypeID(v19) != a3)
    {
      return a6;
    }
  }

  return v15;
}

uint64_t ppp_getoptval(uint64_t a1, CFDictionaryRef theDict, CFDictionaryRef a3, int a4, char *a5, unsigned int a6, unsigned int *a7)
{
  v11 = a1;
  v43 = 0;
  v42 = 0;
  *a7 = 4;
  *a5 = 0;
  switch(a4)
  {
    case 1:
      if (a3)
      {
        if (!*(a1 + 66))
        {
          Value = CFDictionaryGetValue(a3, kSCEntNetInterface);
          if (Value)
          {
            v14 = CFGetTypeID(Value);
            if (v14 == CFDictionaryGetTypeID())
            {
              v15 = _SCNetworkInterfaceCreateWithEntity();
              if (v15)
              {
                v16 = v15;
                v17 = _SCNetworkInterfaceCopySlashDevPath();
                CFRelease(v16);
                if (v17)
                {
                  CFStringGetCString(v17, a5, 256, 0x8000100u);
                  CFRelease(v17);
                  goto LABEL_60;
                }
              }
            }
          }
        }
      }

      v40 = "";
      if (*(v11 + 66) == 2)
      {
        v40 = "en0";
      }

      if (*(v11 + 66))
      {
        v41 = v40;
      }

      else
      {
        v41 = "modem";
      }

      get_str_option(v11, kSCEntNetInterface, kSCPropNetInterfaceDeviceName, theDict, a3, a5, a6, a7, v41);
      goto LABEL_86;
    case 2:
      if (*(a1 + 66))
      {
        goto LABEL_86;
      }

      v18 = kSCEntNetModem;
      v19 = &kSCPropNetModemSpeed;
      goto LABEL_83;
    case 3:
      v23 = kSCEntNetModem;
      v35 = kSCPropNetModemConnectionScript;
      if (*(a1 + 66))
      {
        __source = "";
      }

      else
      {
        __source = "Apple Internal 56K Modem (v.34)";
      }

      goto LABEL_56;
    case 4:
      v27 = kSCEntNetPPP;
      get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPDisconnectOnIdle, theDict, a3, &v43 + 1, 0);
      if (!HIDWORD(v43))
      {
        goto LABEL_86;
      }

      v28 = &kSCPropNetPPPDisconnectOnIdleTimer;
      goto LABEL_70;
    case 5:
      v23 = kSCEntNetPPP;
      v24 = &kSCPropNetPPPCommRemoteAddress;
      goto LABEL_52;
    case 6:
      goto LABEL_14;
    case 7:
      v23 = kSCEntNetPPP;
      v24 = &kSCPropNetPPPAuthName;
      goto LABEL_52;
    case 8:
      get_str_option(a1, kSCEntNetPPP, kSCPropNetPPPAuthPassword, theDict, a3, a5, a6, a7, "");
      result = 1;
      if (*a7)
      {
        *a5 = 42;
        *a7 = 1;
      }

      return result;
    case 9:
      get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, theDict, a3, &v43 + 1, *(a1 + 66) != 2);
      if (*(v11 + 66) == 2)
      {
        v31 = 0;
      }

      else
      {
        get_int_option(v11, kSCEntNetPPP, kSCPropNetPPPLCPCompressionACField, theDict, a3, &v43, 1);
        v31 = 2 * v43;
      }

      v22 = v31 + HIDWORD(v43);
      goto LABEL_81;
    case 10:
      if (*(a1 + 66) == 2)
      {
        v29 = 1492;
      }

      else
      {
        v29 = 1500;
      }

      v18 = kSCEntNetPPP;
      v30 = &kSCPropNetPPPLCPMRU;
      goto LABEL_46;
    case 11:
      v32 = *(a1 + 66);
      if (v32 == 5)
      {
        v33 = 1280;
      }

      else
      {
        v33 = 1500;
      }

      if (v32 == 2)
      {
        v29 = 1492;
      }

      else
      {
        v29 = v33;
      }

      v18 = kSCEntNetPPP;
      v30 = &kSCPropNetPPPLCPMTU;
LABEL_46:
      v34 = *v30;
      goto LABEL_64;
    case 12:
      if (*(a1 + 66) == 2)
      {
        goto LABEL_66;
      }

      v18 = kSCEntNetPPP;
      v19 = &kSCPropNetPPPLCPReceiveACCM;
      goto LABEL_83;
    case 13:
      if (*(a1 + 66) == 2)
      {
        goto LABEL_66;
      }

      v18 = kSCEntNetPPP;
      v19 = &kSCPropNetPPPLCPTransmitACCM;
      goto LABEL_83;
    case 14:
      v18 = kSCEntNetPPP;
      v34 = kSCPropNetPPPIPCPCompressionVJ;
      v29 = *(a1 + 66) != 2;
LABEL_64:
      v37 = theDict;
      v38 = a3;
      v39 = a5;
      goto LABEL_85;
    case 15:
      v25 = kSCEntNetIPv4;
      v26 = &kSCPropNetIPv4Addresses;
      goto LABEL_50;
    case 16:
      v25 = kSCEntNetIPv4;
      v26 = &kSCPropNetIPv4DestAddresses;
LABEL_50:
      get_addr_option(a1, v25, *v26, theDict, a5, a5, 0);
      goto LABEL_86;
    case 17:
      get_str_option(a1, kSCEntNetPPP, kSCPropNetPPPLogfile, 0, a3, a5, a6, a7, "");
      result = 1;
      if (!*a5 || *a5 == 47)
      {
        return result;
      }

      strncpy(a5 + 13, a5, *a7);
      qmemcpy(a5, "/var/log/ppp/", 13);
      *a7 += 13;
      goto LABEL_86;
    case 18:
    case 26:
    case 27:
      goto LABEL_66;
    case 19:
      v27 = kSCEntNetPPP;
      get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPIdleReminder, theDict, a3, &v43 + 1, 0);
      if (!HIDWORD(v43))
      {
        goto LABEL_86;
      }

      v28 = &kSCPropNetPPPIdleReminderTimer;
      goto LABEL_70;
    case 20:
      v18 = kSCEntNetPPP;
      v34 = @"AlertEnable";
      v37 = theDict;
      v38 = a3;
      v39 = a5;
      v29 = -1;
      goto LABEL_85;
    case 21:
      get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPLCPEchoEnabled, theDict, a3, &v43 + 1, 0);
      if (!HIDWORD(v43))
      {
        goto LABEL_86;
      }

      get_int_option(v11, kSCEntNetPPP, kSCPropNetPPPLCPEchoInterval, theDict, a3, &v43, 10);
      get_int_option(v11, kSCEntNetPPP, kSCPropNetPPPLCPEchoFailure, theDict, a3, &v42, 4);
      v22 = v42 + (v43 << 16);
      goto LABEL_81;
    case 22:
      v18 = kSCEntNetPPP;
      v19 = &kSCPropNetPPPCommConnectDelay;
      goto LABEL_83;
    case 23:
      v27 = kSCEntNetPPP;
      get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPUseSessionTimer, theDict, a3, &v43 + 1, 0);
      if (!HIDWORD(v43))
      {
        goto LABEL_86;
      }

      v28 = &kSCPropNetPPPSessionTimer;
LABEL_70:
      v34 = *v28;
      a1 = v11;
      v18 = v27;
      goto LABEL_84;
    case 24:
      get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPCommDisplayTerminalWindow, theDict, a3, &v43 + 1, 0);
      if (HIDWORD(v43))
      {
        goto LABEL_28;
      }

      get_int_option(v11, kSCEntNetPPP, kSCPropNetPPPCommUseTerminalScript, theDict, a3, &v43 + 1, 0);
      result = 1;
      if (!HIDWORD(v43))
      {
        return result;
      }

      goto LABEL_15;
    case 25:
      v23 = kSCEntNetPPP;
      v24 = &kSCPropNetPPPCommTerminalScript;
LABEL_52:
      v35 = *v24;
      __source = "";
LABEL_56:
      get_str_option(a1, v23, v35, theDict, a3, a5, a6, a7, __source);
      goto LABEL_86;
    case 28:
      if (*(a1 + 66))
      {
        goto LABEL_86;
      }

      v18 = kSCEntNetModem;
      v19 = &kSCPropNetModemConnectSpeed;
      goto LABEL_83;
    case 29:
      *a5 = 0;
      CFStringGetCString(*(a1 + 24), a5, 256, 0x8000100u);
LABEL_60:
      v21 = a5;
      goto LABEL_61;
    case 30:
      v21 = strncpy(a5, (a1 + 104), 0x10uLL);
LABEL_61:
      *a7 = strlen(v21);
      goto LABEL_86;
    case 31:
      *a7 = 4;
      *a5 = 0;
      __s1[0] = 0;
      HIDWORD(v43) = 256;
      get_str_option(a1, kSCEntNetModem, kSCPropNetModemDialMode, theDict, a3, __s1, 0x100u, &v43 + 1, "");
      buffer[0] = 0;
      CFStringGetCString(kSCValNetModemDialModeIgnoreDialTone, buffer, 256, 0x8000100u);
      if (strcmp(__s1, buffer))
      {
        buffer[0] = 0;
        CFStringGetCString(kSCValNetModemDialModeManual, buffer, 256, 0x8000100u);
        if (!strcmp(__s1, buffer))
        {
LABEL_28:
          v22 = 2;
LABEL_81:
          *a5 = v22;
        }

        goto LABEL_86;
      }

LABEL_14:
      result = 1;
LABEL_15:
      *a5 = 1;
      break;
    case 32:
      goto LABEL_10;
    default:
      if (a4 == 0x80000000)
      {
LABEL_10:
        v18 = kSCEntNetPPP;
        v19 = &kSCPropNetPPPDialOnDemand;
LABEL_83:
        v34 = *v19;
LABEL_84:
        v37 = theDict;
        v38 = a3;
        v39 = a5;
        v29 = 0;
LABEL_85:
        get_int_option(a1, v18, v34, v37, v38, v39, v29);
LABEL_86:
        result = 1;
      }

      else
      {
LABEL_66:
        result = 0;
        *a7 = 0;
      }

      break;
  }

  return result;
}

uint64_t ppp_subtype(unint64_t a1)
{
  if (my_CFEqual(a1, kSCValNetInterfaceSubTypePPPSerial))
  {
    return 0;
  }

  else if (my_CFEqual(a1, kSCValNetInterfaceSubTypePPPoE))
  {
    return 2;
  }

  else if (my_CFEqual(a1, kSCValNetInterfaceSubTypeL2TP))
  {
    return 5;
  }

  else
  {
    return -16;
  }
}

uint64_t ppp_new_service(uint64_t a1)
{
  *(a1 + 624) = 0xFFFFFFFFLL;
  *(a1 + 592) = -1;
  *(a1 + 600) = -1;
  *(a1 + 608) = -1;
  if (*(a1 + 40))
  {
    __strlcpy_chk();
    buffer[0] = 0;
    CFStringGetCString(*(a1 + 40), buffer, 32, 0x8000100u);
    __strlcat_chk();
    __strlcat_chk();
    v2 = strlen(__s);
    v3 = CFURLCreateFromFileSystemRepresentation(0, __s, v2, 1u);
    if (v3)
    {
      v4 = v3;
      my_CFRelease((a1 + 616));
      *(a1 + 616) = CFBundleCreate(0, v4);
      CFRelease(v4);
    }
  }

  return 0;
}

uint64_t ppp_dispose_service(uint64_t a1)
{
  if (*(a1 + 628))
  {
    return 1;
  }

  sub_B608(a1);
  my_CFRelease((a1 + 472));
  my_CFRelease((a1 + 480));
  my_CFRelease((a1 + 136));
  return 0;
}

void sub_B608(uint64_t a1)
{
  v2 = *(a1 + 624);
  if (v2 != -1)
  {
    close(v2);
    *(a1 + 624) = -1;
  }

  v3 = *(a1 + 80);
  if (v3)
  {
    CFRelease(v3);
    *(a1 + 80) = 0;
  }
}

uint64_t ppp_setup_service(uint64_t a1)
{
  v25 = 0;
  *(a1 + 72) &= 0xF780FEFF;
  my_CFRelease((a1 + 136));
  v2 = *(a1 + 584);
  if (v2)
  {
    v3 = ne_sm_bridge_copy_configuration(v2);
    v4 = v3;
    v25 = v3;
    if (v3 && (Value = CFDictionaryGetValue(v3, kSCEntNetPPP)) != 0)
    {
      v6 = CFRetain(Value);
      *(a1 + 136) = v6;
    }

    else
    {
      v6 = *(a1 + 136);
    }
  }

  else
  {
    v6 = copyEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), kSCEntNetPPP);
    v4 = 0;
    *(a1 + 136) = v6;
  }

  v26 = 0;
  if (!v6)
  {
    goto LABEL_25;
  }

  v26 = 0;
  getNumber(v6, kSCPropNetPPPDialOnDemand, &v26);
  if (v26)
  {
    *(a1 + 72) |= 0x10000u;
  }

  v26 = 0;
  getNumber(*(a1 + 136), kSCPropNetPPPDisconnectOnLogout, &v26);
  if (v26)
  {
    *(a1 + 72) |= 0x20000u;
  }

  v26 = *(a1 + 66) != 5;
  getNumber(*(a1 + 136), kSCPropNetPPPDisconnectOnSleep, &v26);
  if (v26)
  {
    *(a1 + 72) |= 0x40000u;
  }

  v26 = 0;
  getNumber(*(a1 + 136), kSCPropNetPPPOnDemandEnabled, &v26);
  if (v26)
  {
    v7 = 18874368;
  }

  else
  {
    if (!CFDictionaryGetValue(*(a1 + 136), kSCPropNetVPNOnDemandRules) || !controller_options_is_useVODDisconnectRulesWhenVODDisabled())
    {
      goto LABEL_17;
    }

    v7 = 0x1000000;
  }

  *(a1 + 72) |= v7;
LABEL_17:
  v26 = *(a1 + 66) != 5;
  getNumber(*(a1 + 136), @"PreventIdleSleep", &v26);
  v8 = *(a1 + 72);
  if (v26)
  {
    v8 |= 0x80000u;
    *(a1 + 72) = v8;
  }

  v26 = v8 & 0x20000;
  getNumber(*(a1 + 136), @"DisconnectOnFastUserSwitch", &v26);
  if (v26)
  {
    *(a1 + 72) |= 0x100000u;
  }

  v26 = 1;
  *(a1 + 196) = 0;
  getNumber(*(a1 + 136), kSCPropNetPPPDisconnectOnWake, &v26);
  if (v26)
  {
    *(a1 + 72) |= 0x8000000u;
    getNumber(*(a1 + 136), kSCPropNetPPPDisconnectOnWakeTimer, (a1 + 196));
  }

  v26 = 0;
  getNumber(*(a1 + 136), @"ConnectionPersist", &v26);
  if (v26)
  {
    *(a1 + 72) |= 0x400000u;
  }

LABEL_25:
  if (*(a1 + 66) == 2)
  {
    v9 = copyEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), kSCEntNetInterface);
    if (v9)
    {
      v10 = v9;
      *&v28.sa_len = 0;
      *&v28.sa_data[6] = 0;
      v29 = 0;
      v11 = CFDictionaryGetValue(v9, kSCPropNetInterfaceDeviceName);
      v12 = CFDictionaryGetValue(v10, kSCPropNetInterfaceHardware);
      TypeID = CFStringGetTypeID();
      if (!v12)
      {
        goto LABEL_33;
      }

      if (CFGetTypeID(v12) != TypeID)
      {
        goto LABEL_33;
      }

      v14 = CFStringGetTypeID();
      if (!v11 || CFGetTypeID(v11) != v14 || CFStringCompare(v12, kSCEntNetAirPort, 0) && CFStringCompare(v12, kSCEntNetEthernet, 0))
      {
        goto LABEL_33;
      }

      v23 = *(a1 + 80);
      if (!v23)
      {
        goto LABEL_67;
      }

      if (CFStringCompare(v11, v23, 0))
      {
        sub_B608(a1);
      }

      if (!*(a1 + 80))
      {
LABEL_67:
        v24 = socket(27, 3, 0);
        *(a1 + 624) = v24;
        if ((v24 & 0x80000000) == 0)
        {
          *(a1 + 80) = v11;
          CFRetain(v11);
          CFStringGetCString(v11, v28.sa_data, 16, 0);
          *&v28.sa_len = 6930;
          if (bind(*(a1 + 624), &v28, 0x12u) < 0)
          {
LABEL_33:
            sub_B608(a1);
          }
        }
      }

      CFRelease(v10);
    }
  }

  v15 = *(a1 + 628);
  if (v15 == 11 || v15 == 3)
  {
    *(a1 + 72) = *(a1 + 72) & 0xFFFFFFE7 | 8;
    scnc_stop(a1, 0, 15, 0);
  }

  else if (v15)
  {
    *(a1 + 72) = *(a1 + 72) & 0xFFFFFFE7 | 0x10;
    if (v4 || (v4 = copyService(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24)), (v25 = v4) != 0))
    {
      v18 = *(a1 + 128);
      v19 = CFDictionaryGetValue(v4, kSCEntNetPPP);
      if (v19)
      {
        v20 = CFGetTypeID(v19);
        if (v20 == CFDictionaryGetTypeID())
        {
          v27 = 0;
          v21 = *(a1 + 596);
          sub_DD44(v21, "[OPTIONS]");
          get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPIdleReminder, v18, v4, &v27 + 1, 0);
          if (HIDWORD(v27))
          {
            get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPIdleReminderTimer, v18, v4, &v27 + 1, 0);
            v22 = HIDWORD(v27);
          }

          else
          {
            v22 = 0;
          }

          sub_10294(v21, "reminder", v22);
          ppp_getoptval(a1, v18, v4, 4, &v27 + 4, 4u, &v27);
          sub_10294(v21, "idle", SHIDWORD(v27));
          if (v18 && GetStrFromDict(v18, @"OutgoingInterface", &v28, 24, ""))
          {
            sub_10314(v21, "ifscope", &v28);
          }

          sub_DD44(v21, "[EOP]");
        }
      }
    }
  }

  else
  {
    v16 = *(a1 + 72);
    if ((v16 & 0x10000) != 0 && ((v16 & 0x20000) == 0 || gLoggedInUser))
    {
      ppp_start(a1, 0, 0, 0, *(a1 + 96), *(a1 + 100), 1, 0);
    }
  }

  my_CFRelease(&v25);
  return 0;
}

uint64_t ppp_start(unint64_t a1, CFTypeRef cf1, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a6;
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v151 = 1;
  v152 = 0;
  *(a1 + 72) &= 0xFFFFFDE7;
  v14 = *(a1 + 628);
  if (v14)
  {
    if (v14 == 11 || v14 == 3)
    {
      my_CFRelease((a1 + 640));
      *(a1 + 640) = cf1;
      *(a1 + 648) = v11;
      *(a1 + 652) = v10;
      *(a1 + 656) = v9;
      *(a1 + 660) = v8;
      my_CFRetain(cf1);
      scnc_stop(a1, 0, 15, 0);
      result = 0;
      *(a1 + 72) |= 4u;
    }

    else if (my_CFEqual(cf1, *(a1 + 128)))
    {
      phase_changed(a1, *(a1 + 628), v18, v19, v20, v21, v22, v23);
      return 0;
    }

    else
    {
      return 5;
    }

    return result;
  }

  v24 = a8;
  v25 = a7;
  scnc_log(7, @"PPP Controller: VPN System Prefs %@", a3, a4, a5, a6, a7, a8, *(a1 + 136));
  scnc_log(7, @"PPP Controller: VPN User Options %@", v26, v27, v28, v29, v30, v31, cf1);
  v32 = *(a1 + 168);
  if (v32)
  {
    CFUserNotificationCancel(v32);
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 176), kCFRunLoopDefaultMode);
    my_CFRelease((a1 + 168));
    my_CFRelease((a1 + 176));
  }

  *(a1 + 632) = 1;
  v34 = *(a1 + 584);
  if (v34)
  {
    v35 = ne_sm_bridge_copy_configuration(v34);
  }

  else
  {
    v35 = copyService(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24));
  }

  v36 = v35;
  v159 = 0u;
  v160 = 0u;
  v157 = 0u;
  v158 = 0u;
  v156 = 0u;
  if (v35)
  {
    v159 = 0uLL;
    v160 = 0uLL;
    v157 = 0uLL;
    v158 = 0uLL;
    v156 = 0uLL;
    sub_EC48(&v156, &v152, "pppd");
    sub_EC48(&v156, &v152, "serviceid");
    sub_EC48(&v156, &v152, *(a1 + 56));
    sub_EC48(&v156, &v152, "controlled");
    if (socketpair(1, 1, 0, (a1 + 592)) == -1 || socketpair(1, 1, 0, (a1 + 600)) == -1 || setsockopt(*(a1 + 596), 0xFFFF, 4130, &v151, 4u) == -1)
    {
      goto LABEL_309;
    }

    *(a1 + 72) = *(a1 + 72) & 0xFFFFFBFF | ((v24 != 0) << 10);
    *(a1 + 88) = v11;
    *(a1 + 92) = v10;
    scnc_bootstrap_retain(a1, v9);
    scnc_ausession_retain(a1, v8);
    if (*(a1 + 584))
    {
      Value = CFDictionaryGetValue(v36, @"EnvironmentVariables");
      if (!Value)
      {
        goto LABEL_26;
      }

      v38 = CFRetain(Value);
    }

    else
    {
      v38 = collectEnvironmentVariables(gDynamicStore, *(a1 + 24));
    }

    v39 = v38;
    if (v38)
    {
      extractEnvironmentVariables(v38, a1);
      CFRelease(v39);
    }

LABEL_26:
    v40 = makeref(a1);
    v41 = geteuid();
    v42 = getegid();
    v43 = makeref(a1);
    v44 = SCNCPluginExecCommand2(0, sub_ECBC, v40, v41, v42, "/usr/sbin/pppd", &v156, sub_EE8C, v43);
    *(a1 + 608) = v44;
    if (v44 != -1)
    {
      v154 = 0;
      v153 = 0;
      v45 = kSCEntNetPPP;
      v46 = CFDictionaryGetValue(v36, kSCEntNetPPP);
      if (v46)
      {
        v47 = v46;
        v48 = CFGetTypeID(v46);
        if (v48 == CFDictionaryGetTypeID())
        {
          v155 = 0;
          v49 = *(a1 + 596);
          sub_DD44(v49, "[OPTIONS]");
          if (gPluginsDir)
          {
            CFStringGetCString(gPluginsDir, buffer, 1024, 0x8000100u);
            __strlcat_chk();
            sub_10314(v49, "plugin", buffer);
            if (*(a1 + 66) == 5)
            {
              sub_10294(v49, "dialogtype", 1);
            }
          }

          get_int_option(a1, kSCEntNetPPP, kSCPropNetPPPVerboseLogging, cf1, v36, &v155, 0);
          if (v155)
          {
            sub_DD44(v49, "debug");
          }

          *(a1 + 72) &= 0xFFFFFF3F;
          ppp_getoptval(a1, cf1, v36, 20, &v155, 4u, &v155 + 1);
          v50 = v155;
          if ((v155 & 2) != 0)
          {
            *(a1 + 72) |= 0x40u;
          }

          if ((v50 & 8) != 0)
          {
            *(a1 + 72) |= 0x80u;
          }

          if (ppp_getoptval(a1, cf1, v36, 17, cStr, 0x100u, &v155 + 1) && cStr[0])
          {
            if (cStr[0] == 47)
            {
              v51 = "";
            }

            else
            {
              v51 = "/var/log/ppp/";
            }

            snprintf(buffer, 0x400uLL, "%s%s", v51, cStr);
            sub_10314(v49, "logfile", buffer);
          }

          v52 = *(a1 + 40);
          if (v52)
          {
            CFStringGetCString(v52, __str, 252, 0x8000100u);
            __strlcat_chk();
            sub_10314(v49, "plugin", __str);
          }

          if (ppp_getoptval(a1, cf1, v36, 1, cStr, 0x100u, &v155 + 1) && cStr[0])
          {
            sub_10314(v49, "device", cStr);
          }

          if (ppp_getoptval(a1, cf1, v36, 2, &v155, 4u, &v155 + 1) && v155)
          {
            snprintf(buffer, 0x400uLL, "%d", v155);
            sub_DD44(v49, buffer);
          }

          if (cf1 && GetStrFromDict(cf1, @"OutgoingInterface", v161, 24, ""))
          {
            sub_10314(v49, "ifscope", v161);
          }

          theDict = v47;
          v150 = v49;
          if (*(a1 + 66) != 5)
          {
            if (!*(a1 + 66))
            {
              get_str_option(a1, kSCEntNetInterface, kSCPropNetInterfaceHardware, cf1, 0, cStr, 0x100u, &v155, "");
              if (*cStr == 1701080909 && v163 == 109)
              {
                v54 = copyEntity(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24), kSCEntNetModem);
                if (v54)
                {
                  v55 = v54;
                  if (cf1)
                  {
                    v56 = CFDictionaryGetValue(cf1, kSCEntNetModem);
                    if (v56 && (v57 = v56, v58 = CFGetTypeID(v56), v58 == CFDictionaryGetTypeID()) && CFDictionaryGetCount(v57) && (MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v55)) != 0)
                    {
                      v60 = MutableCopy;
                      v61 = CFDictionaryGetValue(v57, kSCPropNetModemConnectionScript);
                      if (v61)
                      {
                        CFDictionarySetValue(v60, kSCPropNetModemConnectionScript, v61);
                      }

                      v62 = CFDictionaryGetValue(v57, kSCPropNetModemSpeaker);
                      if (v62)
                      {
                        CFDictionarySetValue(v60, kSCPropNetModemSpeaker, v62);
                      }

                      v63 = CFDictionaryGetValue(v57, kSCPropNetModemErrorCorrection);
                      if (v63)
                      {
                        CFDictionarySetValue(v60, kSCPropNetModemErrorCorrection, v63);
                      }

                      v64 = CFDictionaryGetValue(v57, kSCPropNetModemDataCompression);
                      if (v64)
                      {
                        CFDictionarySetValue(v60, kSCPropNetModemDataCompression, v64);
                      }

                      v65 = CFDictionaryGetValue(v57, kSCPropNetModemPulseDial);
                      if (v65)
                      {
                        CFDictionarySetValue(v60, kSCPropNetModemPulseDial, v65);
                      }

                      v66 = CFDictionaryGetValue(v57, kSCPropNetModemDialMode);
                      if (v66)
                      {
                        CFDictionarySetValue(v60, kSCPropNetModemDialMode, v66);
                      }

                      CFRelease(v55);
                    }

                    else
                    {
                      v60 = v55;
                    }

                    v49 = v150;
                  }

                  else
                  {
                    v60 = v54;
                  }

                  v145 = Serialize(v60, &v154, &v153);
                  if (v145)
                  {
                    v146 = v145;
                    sub_103DC(v49, v154, v153);
                    CFRelease(v146);
                  }

                  CFRelease(v60);
                  v45 = kSCEntNetPPP;
                }
              }
            }

LABEL_98:
            if (ppp_getoptval(a1, cf1, v36, 24, &v155, 4u, &v155 + 1))
            {
              v76 = v155;
              if (v155)
              {
                if (*(a1 + 66))
                {
                  sub_10314(v49, "plugin", "PPPSerial.ppp");
                  v76 = v155;
                }

                if (v76 == 1)
                {
                  if (ppp_getoptval(a1, cf1, v36, 25, cStr, 0x100u, &v155 + 1) && cStr[0])
                  {
                    sub_10314(v49, "terminalscript", cStr);
                  }
                }

                else if (v76 == 2)
                {
                  sub_DD44(v49, "terminalwindow");
                }
              }
            }

            if (ppp_getoptval(a1, cf1, v36, 5, cStr, 0x100u, &v155 + 1) && cStr[0])
            {
              sub_10314(v49, "remoteaddress", cStr);
            }

            get_int_option(a1, v45, kSCPropNetPPPCommRedialEnabled, cf1, v36, &v155, 0);
            if (v155)
            {
              get_str_option(a1, v45, kSCPropNetPPPCommAlternateRemoteAddress, cf1, v36, cStr, 0x100u, &v155, "");
              if (cStr[0])
              {
                sub_10314(v49, "altremoteaddress", cStr);
              }

              get_int_option(a1, v45, kSCPropNetPPPCommRedialCount, cf1, v36, &v155, 0);
              if (v155)
              {
                sub_10294(v49, "redialcount", v155);
              }

              get_int_option(a1, v45, kSCPropNetPPPCommRedialInterval, cf1, v36, &v155, 0);
              if (v155)
              {
                sub_10294(v49, "redialtimer", v155);
              }
            }

            if (gSleeping)
            {
              v77 = 0;
            }

            else
            {
              v77 = (*&gTimeScaleSeconds * (mach_absolute_time() - gWakeUpTime));
              if (v77 > 19)
              {
                goto LABEL_125;
              }
            }

            v78 = 20 - v77;
            if (v78 <= 3)
            {
              v79 = 3;
            }

            else
            {
              v79 = v78;
            }

            sub_10294(v49, "extraconnecttime", v79);
LABEL_125:
            if (ppp_getoptval(a1, cf1, v36, 4, &v155, 4u, &v155 + 1) && v155)
            {
              sub_10294(v49, "idle", v155);
              sub_DD44(v49, "noidlerecv");
            }

            if (ppp_getoptval(a1, cf1, v36, 23, &v155, 4u, &v155 + 1) && v155)
            {
              sub_10294(v49, "maxconnect", v155);
            }

            if (v25)
            {
              sub_DD44(v49, "demand");
              get_int_option(a1, v45, @"HoldOffTime", 0, v36, &v155, 30);
              sub_10294(v49, "holdoff", v155);
              if ((v25 & 2) != 0 && v155)
              {
                sub_DD44(v49, "holdfirst");
              }

              get_int_option(a1, v45, @"MaxFailure", 0, v36, &v155, 3);
              sub_10294(v49, "maxfail", v155);
            }

            if (ppp_getoptval(a1, cf1, v36, 21, &v155, 4u, &v155 + 1))
            {
              v80 = v155;
              if (v155)
              {
                if (v155 >= 0x10000)
                {
                  sub_10294(v49, "lcp-echo-interval", WORD1(v155));
                  v80 = v155;
                }

                if (v80)
                {
                  sub_10294(v49, "lcp-echo-failure", v80);
                }
              }
            }

            if (ppp_getoptval(a1, cf1, v36, 9, &v155, 4u, &v155 + 1))
            {
              v81 = v155;
              if ((v155 & 1) == 0)
              {
                sub_DD44(v49, "nopcomp");
                v81 = v155;
              }

              if ((v81 & 2) == 0)
              {
                sub_DD44(v49, "noaccomp");
              }
            }

            if (ppp_getoptval(a1, cf1, v36, 10, &v155, 4u, &v155 + 1) && v155)
            {
              sub_10294(v49, "mru", v155);
            }

            if (ppp_getoptval(a1, cf1, v36, 11, &v155, 4u, &v155 + 1) && v155)
            {
              sub_10294(v49, "mtu", v155);
            }

            if (ppp_getoptval(a1, cf1, v36, 12, &v155, 4u, &v155 + 1))
            {
              if (v155)
              {
                sub_10294(v49, "asyncmap", v155);
LABEL_159:
                if (ppp_getoptval(a1, cf1, v36, 13, &v155, 4u, &v155 + 1) && v155)
                {
                  sub_DD44(v49, "escape");
                  v83 = 0;
                  buffer[0] = 0;
                  do
                  {
                    if ((v155 >> v83))
                    {
                      snprintf(__str, 0x100uLL, "%d,", v83);
                      __strlcat_chk();
                    }

                    ++v83;
                  }

                  while (v83 != 32);
                  buffer[strlen(buffer) - 1] = 0;
                  sub_DD44(v49, buffer);
                }

                if (CFDictionaryContainsKey(v36, kSCEntNetIPv4))
                {
                  if (getStringFromEntity(gDynamicStore, kSCDynamicStoreDomainState, 0, kSCEntNetIPv4, kSCPropNetIPv4Router, cStr, 0x100u))
                  {
                    v84 = cStr[0] == 0;
                  }

                  else
                  {
                    v84 = 1;
                  }

                  if (!v84)
                  {
                    sub_10314(v49, "ipparam", cStr);
                  }

                  get_int_option(a1, kSCEntNetIPv4, kSCPropNetOverridePrimary, 0, v36, &v155, 0);
                  if (v155)
                  {
                    sub_DD44(v49, "defaultroute");
                    v85 = 1;
                  }

                  else
                  {
                    v85 = 0;
                  }

                  if (!ppp_getoptval(a1, cf1, v36, 14, &v155, 4u, &v155 + 1) || !v155)
                  {
                    sub_DD44(v49, "novj");
                  }

                  if (*(a1 + 66) == 5)
                  {
                    sub_10294(v49, "ip-src-address-filter", 2);
                  }

                  if (ppp_getoptval(a1, cf1, v36, 15, &v155, 4u, &v155 + 1) && v155)
                  {
                    snprintf(__str, 0x100uLL, "%d.%d.%d.%d", BYTE3(v155), BYTE2(v155), BYTE1(v155), v155);
                  }

                  else
                  {
                    __strlcpy_chk();
                  }

                  __strlcpy_chk();
                  __strlcat_chk();
                  if (ppp_getoptval(a1, cf1, v36, 16, &v155, 4u, &v155 + 1) && v155)
                  {
                    snprintf(__str, 0x100uLL, "%d.%d.%d.%d", BYTE3(v155), BYTE2(v155), BYTE1(v155), v155);
                  }

                  else
                  {
                    __strlcpy_chk();
                  }

                  __strlcat_chk();
                  sub_DD44(v49, buffer);
                  sub_DD44(v49, "noipdefault");
                  sub_DD44(v49, "ipcp-accept-local");
                  sub_DD44(v49, "ipcp-accept-remote");
                  get_int_option(a1, v45, @"IPCPUsePeerDNS", cf1, v36, &v155, 1);
                  if (v155)
                  {
                    sub_DD44(v49, "usepeerdns");
                  }

                  if (*(a1 + 66) != 5)
                  {
LABEL_194:
                    if (CFDictionaryContainsKey(v36, kSCEntNetIPv6))
                    {
                      sub_DD44(v49, "+ipv6");
                      sub_DD44(v49, "ipv6cp-use-persistent");
                    }

                    if (v85)
                    {
                      sub_DD44(v49, "noacsp");
                      v87 = "no-use-dhcp";
                    }

                    else
                    {
                      get_int_option(a1, v45, kSCPropNetPPPACSPEnabled, cf1, v36, &v155, 0);
                      if (!v155)
                      {
                        sub_DD44(v49, "noacsp");
                      }

                      get_int_option(a1, v45, @"UseDHCP", cf1, v36, &v155, *(a1 + 66) == 5);
                      if (v155 != 1)
                      {
LABEL_203:
                        sub_DD44(v49, "noauth");
                        v88 = ppp_getoptval(a1, cf1, v36, 6, &v155, 4u, &v155 + 1);
                        v89 = 0;
                        v90 = 1;
                        if (v88 && v155)
                        {
                          if (ppp_getoptval(a1, cf1, v36, 7, cStr, 0x100u, &v155 + 1) && cStr[0])
                          {
                            sub_10314(v49, "user", cStr);
                            str_option = get_str_option(a1, v45, kSCPropNetPPPAuthPassword, cf1, v36, cStr, 0x100u, &v155, "");
                            v92 = cStr[0];
                            TypeID = CFStringGetTypeID();
                            if (v92)
                            {
                              if (str_option == 3)
                              {
                                v94 = 0;
                              }

                              else
                              {
                                v94 = cf1;
                              }

                              if (str_option == 3)
                              {
                                v95 = v36;
                              }

                              else
                              {
                                v95 = 0;
                              }

                              cf_option = get_cf_option(v45, kSCPropNetPPPAuthPasswordEncryption, TypeID, v94, v95, 0);
                              if (!cf_option)
                              {
                                goto LABEL_217;
                              }

                              v97 = cf_option;
                              if (CFStringCompare(cf_option, kSCValNetPPPAuthPasswordEncryptionKeychain, 0) == kCFCompareEqualTo)
                              {
                                if (str_option == 3)
                                {
                                  v100 = "keychainpassword";
                                }

                                else
                                {
                                  v100 = "userkeychainpassword";
                                }

LABEL_231:
                                sub_10314(v49, v100, cStr);
LABEL_232:
                                v90 = 1;
                                v89 = 1;
                                goto LABEL_233;
                              }

                              if (CFStringCompare(v97, kSCValNetPPPAuthPasswordEncryptionToken, 0))
                              {
LABEL_217:
                                v98 = CFStringCreateWithCString(0, cStr, 0x8000100u);
                                if (v98)
                                {
                                  v99 = v98;
                                  CFStringGetCString(v98, cStr, 256, 0x500u);
                                  CFRelease(v99);
                                }

                                v100 = "password";
                                goto LABEL_231;
                              }
                            }

                            else
                            {
                              v103 = get_cf_option(v45, kSCPropNetPPPAuthPasswordEncryption, TypeID, cf1, v36, 0);
                              if (!v103 || CFStringCompare(v103, kSCValNetPPPAuthPasswordEncryptionToken, 0))
                              {
                                goto LABEL_232;
                              }
                            }

                            goto LABEL_225;
                          }

                          v101 = CFStringGetTypeID();
                          v102 = get_cf_option(v45, kSCPropNetPPPAuthPasswordEncryption, v101, cf1, v36, 0);
                          if (v102 && CFStringCompare(v102, kSCValNetPPPAuthPasswordEncryptionToken, 0) == kCFCompareEqualTo)
                          {
LABEL_225:
                            v89 = 1;
                            sub_10294(v49, "tokencard", 1);
                            v90 = 0;
                            goto LABEL_233;
                          }

                          v89 = *(a1 + 66) == 5;
                          v90 = 1;
                        }

LABEL_233:
                        v147 = v90;
                        v148 = v89;
                        if ((cf1 && (v104 = CFDictionaryGetValue(cf1, v45)) != 0 && (v105 = v104, v106 = CFGetTypeID(v104), v106 == CFDictionaryGetTypeID()) && (v107 = CFDictionaryGetValue(v105, kSCPropNetPPPAuthProtocol)) != 0 && (v108 = v107, v109 = CFGetTypeID(v107), v109 == CFArrayGetTypeID()) || (v108 = CFDictionaryGetValue(theDict, kSCPropNetPPPAuthProtocol)) != 0) && (v110 = CFGetTypeID(v108), v110 == CFArrayGetTypeID()) && (LODWORD(v155) = CFArrayGetCount(v108), v155))
                        {
                          v111 = 0;
                          v112 = 0;
                          do
                          {
                            ValueAtIndex = CFArrayGetValueAtIndex(v108, v111);
                            if (ValueAtIndex)
                            {
                              v114 = ValueAtIndex;
                              v115 = CFGetTypeID(ValueAtIndex);
                              if (v115 == CFStringGetTypeID())
                              {
                                if (CFStringCompare(v114, kSCValNetPPPAuthProtocolPAP, 0))
                                {
                                  if (CFStringCompare(v114, kSCValNetPPPAuthProtocolCHAP, 0))
                                  {
                                    if (CFStringCompare(v114, @"MSCHAP1", 0))
                                    {
                                      if (CFStringCompare(v114, @"MSCHAP2", 0))
                                      {
                                        if (CFStringCompare(v114, @"EAP", 0) == kCFCompareEqualTo)
                                        {
                                          v112 |= 0x10u;
                                        }
                                      }

                                      else
                                      {
                                        v112 |= 8u;
                                      }
                                    }

                                    else
                                    {
                                      v112 |= 4u;
                                    }
                                  }

                                  else
                                  {
                                    v112 |= 2u;
                                  }
                                }

                                else
                                {
                                  v112 |= 1u;
                                }
                              }
                            }

                            ++v111;
                          }

                          while (v111 < v155);
                        }

                        else
                        {
                          v112 = 15;
                        }

                        if (v147)
                        {
                          v116 = kSCEntNetPPP;
                          get_int_option(a1, kSCEntNetPPP, @"TokenCard", cf1, v36, &v155, 0);
                          if (v155)
                          {
                            sub_10294(v150, "tokencard", v155);
                            v148 = 1;
                          }
                        }

                        else
                        {
                          v116 = kSCEntNetPPP;
                        }

                        if ((v112 & 0x10) != 0)
                        {
                          v112 &= ~0x10u;
                          if (cf1 && (v117 = CFDictionaryGetValue(cf1, v116)) != 0 && (v118 = v117, v119 = CFGetTypeID(v117), v119 == CFDictionaryGetTypeID()) && (v120 = CFDictionaryGetValue(v118, @"AuthEAPPlugins")) != 0 && (v121 = v120, v122 = CFGetTypeID(v120), v122 == CFArrayGetTypeID()))
                          {
                            v123 = 1;
                          }

                          else
                          {
                            v124 = CFDictionaryGetValue(theDict, @"AuthEAPPlugins");
                            if (!v124)
                            {
                              goto LABEL_281;
                            }

                            v121 = v124;
                            v123 = 0;
                          }

                          v125 = CFGetTypeID(v121);
                          if (v125 == CFArrayGetTypeID())
                          {
                            LODWORD(v155) = CFArrayGetCount(v121);
                            if (v155)
                            {
                              v126 = 0;
                              do
                              {
                                v127 = CFArrayGetValueAtIndex(v121, v126);
                                if (v127)
                                {
                                  v128 = v127;
                                  v129 = CFGetTypeID(v127);
                                  if (v129 == CFStringGetTypeID())
                                  {
                                    CFStringGetCString(v128, buffer, 1020, 0x8000100u);
                                    if (!v123 || !strchr(buffer, 92))
                                    {
                                      __strlcat_chk();
                                      sub_10314(v150, "eapplugin", buffer);
                                      v112 |= 0x10u;
                                    }
                                  }

                                  v116 = kSCEntNetPPP;
                                }

                                ++v126;
                              }

                              while (v126 < v155);
                            }
                          }
                        }

LABEL_281:
                        sub_DD44(v150, "noccp");
                        if (v112)
                        {
                          if ((v112 & 2) != 0)
                          {
                            goto LABEL_283;
                          }
                        }

                        else
                        {
                          sub_DD44(v150, "refuse-pap");
                          if ((v112 & 2) != 0)
                          {
LABEL_283:
                            if ((v112 & 4) != 0)
                            {
                              goto LABEL_284;
                            }

                            goto LABEL_318;
                          }
                        }

                        sub_DD44(v150, "refuse-chap-md5");
                        if ((v112 & 4) != 0)
                        {
LABEL_284:
                          if ((v112 & 8) != 0)
                          {
                            goto LABEL_285;
                          }

                          goto LABEL_319;
                        }

LABEL_318:
                        sub_DD44(v150, "refuse-mschap");
                        if ((v112 & 8) != 0)
                        {
LABEL_285:
                          if ((v112 & 0x10) != 0)
                          {
                            goto LABEL_287;
                          }

                          goto LABEL_286;
                        }

LABEL_319:
                        sub_DD44(v150, "refuse-mschap-v2");
                        if ((v112 & 0x10) != 0)
                        {
LABEL_287:
                          if (v112 == 16 || !v148 || (*(a1 + 72) & 0x80) == 0)
                          {
                            sub_DD44(v150, "noaskpassword");
                          }

                          get_str_option(a1, v116, kSCPropNetPPPAuthPrompt, cf1, v36, cStr, 0x100u, &v155, "");
                          if (cStr[0])
                          {
                            __str[0] = 0;
                            CFStringGetCString(kSCValNetPPPAuthPromptAfter, __str, 256, 0x8000100u);
                            if (!strcmp(cStr, __str))
                            {
                              sub_DD44(v150, "askpasswordafter");
                            }
                          }

                          sub_DD44(v150, "nodetach");
                          get_int_option(a1, v116, kSCPropNetPPPIdleReminder, cf1, v36, &v155, 0);
                          if (v155)
                          {
                            get_int_option(a1, v116, kSCPropNetPPPIdleReminderTimer, cf1, v36, &v155, 0);
                            if (v155)
                            {
                              sub_10294(v150, "reminder", v155);
                            }
                          }

                          v130 = CFDictionaryGetValue(theDict, kSCPropNetPPPPlugins);
                          if (v130)
                          {
                            v131 = v130;
                            v132 = CFGetTypeID(v130);
                            if (v132 == CFArrayGetTypeID())
                            {
                              LODWORD(v155) = CFArrayGetCount(v131);
                              if (v155)
                              {
                                v133 = 0;
                                do
                                {
                                  v134 = CFArrayGetValueAtIndex(v131, v133);
                                  if (v134)
                                  {
                                    v135 = v134;
                                    v136 = CFGetTypeID(v134);
                                    if (v136 == CFStringGetTypeID())
                                    {
                                      CFStringGetCString(v135, buffer, 1020, 0x8000100u);
                                      __strlcat_chk();
                                      sub_10314(v150, "plugin", buffer);
                                    }
                                  }

                                  ++v133;
                                }

                                while (v133 < v155);
                              }
                            }
                          }

                          if (GetStrFromDict(theDict, kSCPropUserDefinedName, cStr, 256, "") || GetStrFromDict(v36, kSCPropUserDefinedName, cStr, 256, ""))
                          {
                            sub_10314(v150, "call", cStr);
                          }

                          sub_DD44(v150, "[EOP]");
                          ppp_socket_create_client(*(a1 + 600), 1, 0, 0);
                          *(a1 + 632) = 0;
                          ppp_updatephase(a1, 1, 0, v137, v138, v139, v140, v141);
                          *(a1 + 396) = 0;
                          service_started();
                          *(a1 + 72) = *(a1 + 72) & 0xFFFFFFDF | (32 * (v25 != 0));
                          *(a1 + 128) = cf1;
                          my_CFRetain(cf1);
                          goto LABEL_309;
                        }

LABEL_286:
                        sub_DD44(v150, "refuse-eap");
                        goto LABEL_287;
                      }

                      v87 = "use-dhcp";
                    }

                    sub_DD44(v49, v87);
                    goto LABEL_203;
                  }

                  v86 = "addifroute";
                }

                else
                {
                  v85 = 0;
                  v86 = "noip";
                }

                sub_DD44(v49, v86);
                goto LABEL_194;
              }

              v82 = "receive-all";
            }

            else
            {
              v82 = "default-asyncmap";
            }

            sub_DD44(v49, v82);
            goto LABEL_159;
          }

          v67 = CFStringGetTypeID();
          v68 = get_cf_option(kSCEntNetL2TP, kSCPropNetL2TPTransport, v67, cf1, v36, 0);
          if (v68 && CFStringCompare(v68, kSCValNetL2TPTransportIP, 0) == kCFCompareEqualTo)
          {
            sub_DD44(v49, "l2tpnoipsec");
          }

          get_str_option(a1, kSCEntNetL2TP, kSCPropNetL2TPIPSecSharedSecret, cf1, v36, cStr, 0x100u, &v155, "");
          if (cStr[0])
          {
            sub_10314(v49, "l2tpipsecsharedsecret", cStr);
            v69 = CFStringGetTypeID();
            v70 = get_cf_option(kSCEntNetL2TP, kSCPropNetL2TPIPSecSharedSecretEncryption, v69, cf1, v36, 0);
            if (!v70)
            {
              goto LABEL_97;
            }

            v71 = v70;
            if (CFStringCompare(v70, @"Key", 0))
            {
              v72 = &kSCValNetL2TPIPSecSharedSecretEncryptionKeychain;
              goto LABEL_93;
            }
          }

          else
          {
            get_str_option(a1, kSCEntNetIPSec, kSCPropNetIPSecSharedSecret, cf1, v36, cStr, 0x100u, &v155, "");
            if (!cStr[0])
            {
              goto LABEL_97;
            }

            sub_10314(v49, "l2tpipsecsharedsecret", cStr);
            v73 = CFStringGetTypeID();
            v74 = get_cf_option(kSCEntNetL2TP, kSCPropNetIPSecSharedSecretEncryption, v73, cf1, v36, 0);
            if (!v74)
            {
              goto LABEL_97;
            }

            v71 = v74;
            if (CFStringCompare(v74, @"Key", 0))
            {
              v72 = &kSCValNetIPSecSharedSecretEncryptionKeychain;
LABEL_93:
              if (CFStringCompare(v71, *v72, 0) == kCFCompareEqualTo)
              {
                v75 = "keychain";
LABEL_96:
                sub_10314(v49, "l2tpipsecsharedsecrettype", v75);
              }

LABEL_97:
              get_int_option(a1, kSCEntNetL2TP, @"UDPPort", cf1, v36, &v155, 0);
              sub_10294(v49, "l2tpudpport", v155);
              goto LABEL_98;
            }
          }

          v75 = "key";
          goto LABEL_96;
        }
      }

      kill(*(a1 + 608), 15);
    }

LABEL_309:
    CFRelease(v36);
  }

  v142 = v152;
  if (v152)
  {
    v143 = &v156;
    do
    {
      v144 = *v143++;
      free(v144);
      --v142;
    }

    while (v142);
  }

  if (*(a1 + 608) == -1)
  {
    my_close(*(a1 + 600));
    *(a1 + 600) = -1;
    my_close(*(a1 + 604));
    *(a1 + 604) = -1;
    my_close(*(a1 + 592));
    *(a1 + 592) = -1;
    my_close(*(a1 + 596));
    *(a1 + 596) = -1;
    sub_F170(a1);
  }

  return *(a1 + 632);
}

uint64_t ppp_will_sleep(uint64_t a1, int a2)
{
  v2 = *(a1 + 628);
  if (!v2)
  {
    goto LABEL_4;
  }

  if ((*(a1 + 74) & 4) == 0)
  {
    v2 = 0;
LABEL_4:
    v3 = 0;
    return v3 | v2;
  }

  v3 = 2 * (((v2 - 3) & 0xFFFFFFF7) != 0);
  if (!a2)
  {
    scnc_stop(a1, 0, 15, 2);
  }

  v2 = 1;
  return v3 | v2;
}

_DWORD *ppp_wake_up(_DWORD *result)
{
  if (result[157])
  {
    return scnc_disconnectifoverslept("ppp_wake_up", result);
  }

  v1 = result[18];
  if ((v1 & 0x10000) != 0 && ((v1 & 0x20000) == 0 || gLoggedInUser))
  {
    return ppp_start(result, 0, 0, 0, result[24], result[25], 1, 0);
  }

  return result;
}

uint64_t ppp_log_out(uint64_t result)
{
  if (*(result + 628))
  {
    if ((*(result + 74) & 2) != 0)
    {
      return scnc_stop(result, 0, 15, 3);
    }
  }

  return result;
}

unint64_t ppp_log_in(unint64_t result)
{
  if (!*(result + 628) && (*(result + 74) & 1) != 0)
  {
    return ppp_start(result, 0, 0, 0, *(result + 96), *(result + 100), 1, 0);
  }

  return result;
}

_DWORD *ppp_log_switch(_DWORD *result)
{
  v1 = result[18];
  if (result[157])
  {
    if ((v1 & 0x100000) != 0)
    {
      if ((v1 & 0x10000) != 0)
      {
        v2 = v1 & 0xFFFFFFE7 | 8;
      }

      else
      {
        v2 = v1 & 0xFFFEFFE7;
      }

      result[18] = v2;
      return scnc_stop(result, 0, 15, 4);
    }
  }

  else if ((v1 & 0x10000) != 0)
  {
    return ppp_start(result, 0, 0, 0, result[24], result[25], 1, 0);
  }

  return result;
}

uint64_t ppp_ondemand_add_service_data(uint64_t a1, __CFDictionary *a2)
{
  v3 = *(a1 + 136);
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, kSCPropNetPPPOnDemandMatchDomainsAlways);
    if (isArray(Value))
    {
      CFDictionarySetValue(a2, @"OnDemandMatchDomainsAlways", Value);
    }

    v6 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetPPPOnDemandMatchDomainsOnRetry);
    if (isArray(v6))
    {
      CFDictionarySetValue(a2, @"OnDemandMatchDomainsOnRetry", v6);
    }

    v7 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetPPPOnDemandMatchDomainsNever);
    if (isArray(v7))
    {
      CFDictionarySetValue(a2, @"OnDemandMatchDomainsNever", v7);
    }

    v8 = CFDictionaryGetValue(*(a1 + 136), kSCPropNetPPPCommRemoteAddress);
    if (isString(v8))
    {
      CFDictionarySetValue(a2, @"RemoteAddress", v8);
    }
  }

  return 0;
}

ssize_t sub_DD44(int a1, char *__s)
{
  v4 = strlen(__s);
  write(a1, __s, v4);

  return write(a1, " ", 1uLL);
}

void MT_pppGetTracerOptions(uint64_t a1, char *a2)
{
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v90 = 0u;
  v91 = 0u;
  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  cStr = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v68 = 0u;
  v69 = 0u;
  v66 = 0u;
  v67 = 0u;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  v59 = 0u;
  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  v53 = 0u;
  v54 = 0u;
  v52 = 0u;
  v48 = 0;
  bzero(a2, 0x338uLL);
  v4 = copyService(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24));
  if (!v4)
  {
    return;
  }

  v5 = v4;
  Value = CFDictionaryGetValue(v4, kSCEntNetModem);
  if (Value)
  {
    v7 = Value;
    if (getString(Value, kSCPropNetModemDeviceVendor, &cStr, 0x100u))
    {
      v82 = 0u;
      v83 = 0u;
      v80 = 0u;
      v81 = 0u;
      v78 = 0u;
      v79 = 0u;
      v76 = 0u;
      v77 = 0u;
      v74 = 0u;
      v75 = 0u;
      v72 = 0u;
      v73 = 0u;
      v70 = 0u;
      v71 = 0u;
      v68 = 0u;
      v69 = 0u;
      __strlcpy_chk();
      cStr = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
    }

    if (getString(v7, kSCPropNetModemDeviceModel, &cStr, 0x100u))
    {
      v66 = 0u;
      v67 = 0u;
      v64 = 0u;
      v65 = 0u;
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v59 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v52 = 0u;
      __strlcpy_chk();
      cStr = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
    }

    if (v68 && v52)
    {
      *(a2 + 14) = 0u;
      *(a2 + 15) = 0u;
      *(a2 + 12) = 0u;
      *(a2 + 13) = 0u;
      *(a2 + 10) = 0u;
      *(a2 + 11) = 0u;
      *(a2 + 8) = 0u;
      *(a2 + 9) = 0u;
      *(a2 + 6) = 0u;
      *(a2 + 7) = 0u;
      *(a2 + 4) = 0u;
      *(a2 + 5) = 0u;
      *(a2 + 2) = 0u;
      *(a2 + 3) = 0u;
      *a2 = 0u;
      *(a2 + 1) = 0u;
      __strlcat_chk();
      __strlcat_chk();
      __strlcat_chk();
    }
  }

  v8 = CFDictionaryGetValue(v5, kSCEntNetPPP);
  if (v8)
  {
    v9 = v8;
    getNumber(v8, kSCPropNetPPPDialOnDemand, &v48);
    snprintf(a2 + 516, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPIdleReminder, &v48);
    snprintf(a2 + 520, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPDisconnectOnLogout, &v48);
    snprintf(a2 + 524, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPDisconnectOnFastUserSwitch, &v48);
    snprintf(a2 + 528, 4uLL, "%u", v48);
    v48 = 0;
    if (getString(v9, kSCPropNetPPPAuthPrompt, &cStr, 0x100u))
    {
      *(a2 + 756) = 0u;
      *(a2 + 772) = 0u;
      *(a2 + 724) = 0u;
      *(a2 + 740) = 0u;
      *(a2 + 692) = 0u;
      *(a2 + 708) = 0u;
      *(a2 + 660) = 0u;
      *(a2 + 676) = 0u;
      *(a2 + 628) = 0u;
      *(a2 + 644) = 0u;
      *(a2 + 596) = 0u;
      *(a2 + 612) = 0u;
      *(a2 + 564) = 0u;
      *(a2 + 580) = 0u;
      *(a2 + 532) = 0u;
      *(a2 + 548) = 0u;
      __strlcpy_chk();
      cStr = 0u;
      v85 = 0u;
      v86 = 0u;
      v87 = 0u;
      v88 = 0u;
      v89 = 0u;
      v90 = 0u;
      v91 = 0u;
      v92 = 0u;
      v93 = 0u;
      v94 = 0u;
      v95 = 0u;
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
    }

    getNumber(v9, kSCPropNetPPPCommRedialEnabled, &v48);
    snprintf(a2 + 788, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPLCPEchoEnabled, &v48);
    snprintf(a2 + 792, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPVerboseLogging, &v48);
    snprintf(a2 + 796, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPIPCPCompressionVJ, &v48);
    snprintf(a2 + 800, 4uLL, "%u", v48);
    v48 = 0;
    getNumber(v9, kSCPropNetPPPCommDisplayTerminalWindow, &v48);
    snprintf(a2 + 804, 4uLL, "%u", v48);
    v48 = 0;
  }

  v10 = CFDictionaryGetValue(v5, kSCEntNetDNS);
  if (v10)
  {
    v11 = CFDictionaryGetValue(v10, kSCPropNetDNSServerAddresses);
    if (v11)
    {
      if (CFArrayGetCount(v11) >= 1)
      {
        v48 = 1;
      }
    }
  }

  snprintf(a2 + 512, 4uLL, "%u", v48);
  v48 = 0;
  v12 = CFDictionaryGetValue(v5, kSCEntNetIPv4);
  if (v12 && getString(v12, kSCPropNetIPv4ConfigMethod, &cStr, 0x100u))
  {
    v13 = CFStringCreateWithCString(0, &cStr, 0x8000100u);
    if (v13)
    {
      v14 = v13;
      if (CFEqual(v13, kSCValNetIPv4ConfigMethodManual))
      {
        v48 = 1;
      }

      CFRelease(v14);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    cStr = 0u;
    v85 = 0u;
  }

  snprintf(a2 + 808, 4uLL, "%u", v48);
  v48 = 0;
  v15 = CFDictionaryGetValue(v5, kSCEntNetIPv6);
  if (v15 && getString(v15, kSCPropNetIPv6ConfigMethod, &cStr, 0x100u))
  {
    v16 = CFStringCreateWithCString(0, &cStr, 0x8000100u);
    if (v16)
    {
      v17 = v16;
      if (CFEqual(v16, kSCValNetIPv6ConfigMethodManual))
      {
        v48 = 1;
      }

      CFRelease(v17);
    }

    v98 = 0u;
    v99 = 0u;
    v96 = 0u;
    v97 = 0u;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v86 = 0u;
    v87 = 0u;
    cStr = 0u;
    v85 = 0u;
  }

  snprintf(a2 + 812, 4uLL, "%u", v48);
  v48 = 0;
  snprintf(a2 + 816, 4uLL, "%u", 0);
  v48 = 0;
  v18 = SCPreferencesCreate(0, @"Plugin:PPPController", @"preferences.plist");
  v19 = v18;
  if (v18 && (v20 = SCPreferencesGetValue(v18, kSCPrefNetworkServices)) != 0 && (v21 = CFDictionaryGetValue(v20, *(a1 + 24))) != 0)
  {
    v22 = CFDictionaryGetValue(v21, kSCEntNetProxies);
    snprintf(a2 + 820, 4uLL, "%u", v48);
    if (v22)
    {
      CFDictionaryApplyFunction(v22, sub_EBC4, a2);
    }
  }

  else
  {
    snprintf(a2 + 820, 4uLL, "%u", v48);
  }

  if (!a2 || *(a1 + 66) == 2 || !v19)
  {
    goto LABEL_55;
  }

  v23 = SCNetworkServiceCopy(v19, *(a1 + 24));
  if (!v23 || (v24 = v23, (Interface = SCNetworkServiceGetInterface(v23)) == 0))
  {
LABEL_56:
    CFRelease(v19);
    goto LABEL_57;
  }

  do
  {
    v26 = Interface;
    Interface = SCNetworkInterfaceGetInterface(Interface);
  }

  while (Interface);
  BSDName = SCNetworkInterfaceGetBSDName(v26);
  if (!BSDName)
  {
    goto LABEL_55;
  }

  v28 = BSDName;
  v29 = IOServiceMatching("IOSerialBSDClient");
  CFDictionarySetValue(v29, @"IOSerialBSDClientType", @"IOSerialStream");
  existing = 0;
  memset(&v101[16], 0, 256);
  if (IOServiceGetMatchingServices(kIOMasterPortDefault, v29, &existing))
  {
    goto LABEL_55;
  }

  v30 = IOIteratorNext(existing);
  if (!v30)
  {
    goto LABEL_54;
  }

  v31 = v30;
  while (1)
  {
    properties = 0;
    if (IORegistryEntryCreateCFProperties(v31, &properties, kCFAllocatorDefault, 0) || !properties)
    {
      goto LABEL_53;
    }

    v32 = CFDictionaryGetValue(properties, @"IOTTYDevice");
    if (v32)
    {
      if (CFEqual(v32, v28))
      {
        break;
      }
    }

    CFRelease(properties);
LABEL_53:
    IOObjectRelease(v31);
    v31 = IOIteratorNext(existing);
    if (!v31)
    {
      goto LABEL_54;
    }
  }

  memset(v101, 0, 256);
  memset(v100, 0, sizeof(v100));
  v33 = CFDictionaryGetValue(properties, @"IOTTYBaseName");
  if (CFEqual(v33, @"usbmodem"))
  {
    __strlcat_chk();
    v34 = CFStringCreateWithFormat(0, 0, @"idVendor");
    v35 = IORegistryEntrySearchCFProperty(v31, "IOService", v34, 0, 3u);
    if (v35 && (v36 = v35, TypeID = CFNumberGetTypeID(), CFGetTypeID(v36) == TypeID))
    {
      valuePtr = 0;
      CFNumberGetValue(v36, kCFNumberIntType, &valuePtr);
      __sprintf_chk(v101, 0, 0x100uLL, "%0.4x", valuePtr);
      __strlcat_chk();
      __strlcat_chk();
      CFRelease(v36);
    }

    else
    {
      __strlcat_chk();
      __strlcat_chk();
    }

    CFRelease(v34);
    v38 = CFStringCreateWithFormat(0, 0, @"idProduct");
    v39 = IORegistryEntrySearchCFProperty(v31, "IOService", v38, 0, 3u);
    if (v39)
    {
      v40 = v39;
      v41 = CFNumberGetTypeID();
      if (CFGetTypeID(v40) == v41)
      {
        valuePtr = 0;
        CFNumberGetValue(v40, kCFNumberIntType, &valuePtr);
        __sprintf_chk(v100, 0, 0x100uLL, "%0.4x");
        goto LABEL_75;
      }
    }

LABEL_76:
    __strlcat_chk();
    __strlcat_chk();
    goto LABEL_77;
  }

  if (CFEqual(v33, @"pci-serial"))
  {
    __strlcat_chk();
    v42 = CFStringCreateWithFormat(0, 0, @"vendor-id");
    v43 = IORegistryEntrySearchCFProperty(v31, "IOService", v42, 0, 3u);
    if (v43 && (v44 = v43, v45 = CFDataGetTypeID(), CFGetTypeID(v44) == v45))
    {
      valuePtr = 0;
      v102.length = CFDataGetLength(v44);
      v102.location = 0;
      CFDataGetBytes(v44, v102, &valuePtr);
      __sprintf_chk(v101, 0, 0x100uLL, "%0.2x%0.2x", BYTE1(valuePtr), valuePtr);
      __strlcat_chk();
      __strlcat_chk();
      CFRelease(v44);
    }

    else
    {
      __strlcat_chk();
      __strlcat_chk();
    }

    CFRelease(v42);
    v38 = CFStringCreateWithFormat(0, 0, @"device-id");
    v46 = IORegistryEntrySearchCFProperty(v31, "IOService", v38, 0, 3u);
    if (!v46)
    {
      goto LABEL_76;
    }

    v40 = v46;
    v47 = CFDataGetTypeID();
    if (CFGetTypeID(v40) != v47)
    {
      goto LABEL_76;
    }

    valuePtr = 0;
    v103.length = CFDataGetLength(v40);
    v103.location = 0;
    CFDataGetBytes(v40, v103, &valuePtr);
    __sprintf_chk(v100, 0, 0x100uLL, "%0.2x%0.2x");
LABEL_75:
    __strlcat_chk();
    __strlcat_chk();
    CFRelease(v40);
LABEL_77:
    CFRelease(v38);
  }

  else if (CFEqual(v33, @"Bluetooth-Modem"))
  {
    __strlcat_chk();
  }

  if (properties)
  {
    CFRelease(properties);
  }

LABEL_54:
  *(a2 + 16) = 0u;
  *(a2 + 17) = 0u;
  *(a2 + 18) = 0u;
  *(a2 + 19) = 0u;
  *(a2 + 20) = 0u;
  *(a2 + 21) = 0u;
  *(a2 + 22) = 0u;
  *(a2 + 23) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 25) = 0u;
  *(a2 + 26) = 0u;
  *(a2 + 27) = 0u;
  *(a2 + 28) = 0u;
  *(a2 + 29) = 0u;
  *(a2 + 30) = 0u;
  *(a2 + 31) = 0u;
  __strlcpy_chk();
  CFRelease(v24);
LABEL_55:
  if (v19)
  {
    goto LABEL_56;
  }

LABEL_57:
  CFRelease(v5);
}

CFTypeID sub_EBC4(const __CFString *a1, const void *a2, uint64_t a3)
{
  result = CFStringHasSuffix(a1, @"Enable");
  if (result)
  {
    valuePtr = 0;
    v6 = CFGetTypeID(a2);
    result = CFNumberGetTypeID();
    if (v6 == result)
    {
      result = CFNumberGetValue(a2, kCFNumberIntType, &valuePtr);
      if (result)
      {
        if (valuePtr)
        {
          *(a3 + 820) = 49;
        }
      }
    }
  }

  return result;
}

char *sub_EC48(uint64_t a1, _DWORD *a2, char *__s)
{
  result = strlen(__s);
  if (result)
  {
    v7 = result;
    result = malloc_type_malloc((result + 1), 0x7575E8F6uLL);
    *(a1 + 8 * *a2) = result;
    if (result)
    {
      result = strlcpy(result, __s, (v7 + 1));
      ++*a2;
    }
  }

  return result;
}

void sub_ECBC(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v5 = findbyref(0, a4);
  if (!v5)
  {
    return;
  }

  v11 = v5;
  if ((a2 & 0x7F) != 0)
  {
    goto LABEL_3;
  }

  v13 = HIBYTE(a2);
  v14 = HIBYTE(a2) > 0x19u;
  v12 = v14;
  if (v14)
  {
    v13 = 127;
  }

  else if (*(v5 + 628) != 1)
  {
LABEL_3:
    v12 = 1;
    goto LABEL_9;
  }

  *(v5 + 632) = v13;
  *(v5 + 636) = 0;
  sub_F170(v5);
LABEL_9:
  ppp_updatephase(v11, 0, 0, v6, v7, v8, v9, v10);
  *(v11 + 396) = 0;
  service_ended(v11);
  *(v11 + 600) = -1;
  my_close(*(v11 + 596));
  *(v11 + 596) = -1;
  my_CFRelease((v11 + 128));
  *(v11 + 128) = 0;
  cleanup_dynamicstore(v11);
  v15 = *(v11 + 584);
  if (v15)
  {
    ne_sm_bridge_acknowledge_sleep(v15);
  }

  else
  {
    allow_sleep();
  }

  v16 = allow_dispose(v11);
  if (!v16 && !allow_stop(v16, v17, v18, v19, v20, v21, v22, v23))
  {
    v24 = *(v11 + 72);
    if ((v24 & 4) != 0)
    {
      ppp_start(v11, *(v11 + 640), *(v11 + 648), *(v11 + 652), *(v11 + 656), *(v11 + 660), 0, 0);
      my_CFRelease((v11 + 640));
      *(v11 + 656) = 0;
      *(v11 + 640) = 0u;
      *(v11 + 72) &= ~4u;
    }

    else if (v12 && (*(v11 + 72) & 0x38) != 0x20 && (v24 & 0x10000) != 0 && ((v24 & 0x20000) == 0 || gLoggedInUser))
    {
      v25 = *(v11 + 96);
      v26 = *(v11 + 100);
      if ((v24 & 8) != 0)
      {
        v27 = 1;
      }

      else
      {
        v27 = 3;
      }

      ppp_start(v11, 0, 0, 0, v25, v26, v27, 0);
    }

    else
    {
      scnc_bootstrap_dealloc(v11);

      scnc_ausession_dealloc(v11);
    }
  }
}

void sub_EE8C(int a1, uint64_t a2)
{
  v3 = findbyref(0, a2);
  v4 = v3;
  if (a1)
  {
    v11 = 1;
    my_close(*(v3 + 592));
    v4[148] = -1;
    my_close(v4[151]);
    v4[151] = -1;
    ioctl(v4[149], 0x8004667EuLL, &v11);
  }

  else
  {
    my_close(*(v3 + 596));
    v4[149] = -1;
    my_close(v4[150]);
    v4[150] = -1;
    v5 = v4[148];
    if (v5)
    {
      dup2(v5, 0);
    }

    v6 = v4[151];
    if (v6 != 1)
    {
      dup2(v6, 1);
    }

    close(2);
    open("/dev/null", 2, 0);
    v7 = getdtablesize();
    if (v7 >= 4)
    {
      v8 = v7 + 1;
      do
      {
        close(v8 - 2);
        --v8;
      }

      while (v8 > 4);
    }

    v9 = geteuid();
    v10 = v4[22];
    if (v9 != v10)
    {
      setruid(v10);
    }

    applyEnvironmentVariables(v4);
  }
}

unint64_t ppp_updatephase(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  if (*(result + 600) == -1)
  {
    *(result + 628) = 0;

    return phase_changed(result, 0, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    if (*(result + 628) == a2)
    {
      return result;
    }

    v9 = a3;
    *(result + 628) = a2;
    result = phase_changed(result, a2, a3, a4, a5, a6, a7, a8);
    v10 = *(v8 + 628);
    if (v10 > 7)
    {
      if (v10 != 8)
      {
        if (v10 != 11)
        {
          return result;
        }

        goto LABEL_13;
      }

      *(v8 + 104) = 0;
      result = snprintf((v8 + 104), 0x10uLL, "ppp%d", v9);
      *(v8 + 396) = 1;
      if (!*(v8 + 188))
      {
        result = mach_absolute_time();
        *(v8 + 188) = (*&gTimeScaleSeconds * result);
      }
    }

    else
    {
      if (v10 == 1)
      {
        result = mach_absolute_time();
        *(v8 + 184) = (*&gTimeScaleSeconds * result);
        *(v8 + 192) = 0;
        return result;
      }

      if (v10 == 3)
      {
        *(v8 + 104) = 0;
        result = getStringFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(v8 + 24), kSCEntNetPPP, kSCPropInterfaceName, (v8 + 104), 0x10u);
LABEL_13:
        if ((*(v8 + 72) & 0x10) != 0)
        {

          return scnc_stop(v8, 0, 15, 0);
        }
      }
    }
  }

  return result;
}

void sub_F170(CFStringRef result)
{
  v17 = 0;
  result[5].length = 0;
  length = result[19].length;
  if (length != 5)
  {
    info = result[2].info;
    if ((info & 0x440) == 0x40)
    {
      v4 = info & 0x20;
      if (length != 21 || v4 == 0)
      {
        error = 0;
        length_high = HIDWORD(result[19].length);
        if (length_high)
        {
          if (length_high == 6 && WORD1(result[2].isa) == 5)
          {
            return;
          }

          v7 = CFStringCreateWithFormat(0, 0, @"%@ Error %d", result[1].info, length_high);
          v18 = v7;
          if (v7)
          {
            goto LABEL_14;
          }
        }

        if (LODWORD(result[19].length) == 5)
        {
          return;
        }

        v7 = CFStringCreateWithFormat(0, 0, @"PPP Error %d", LODWORD(result[19].length));
        v18 = v7;
        if (v7)
        {
LABEL_14:
          v8 = v7;
          if (CFStringGetLength(v7))
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            v17 = Mutable;
            if (Mutable)
            {
              v10 = Mutable;
              if (gIconURLRef)
              {
                CFDictionaryAddValue(Mutable, kCFUserNotificationIconURLKey, gIconURLRef);
              }

              if (gBundleURLRef)
              {
                CFDictionaryAddValue(v10, kCFUserNotificationLocalizationURLKey, gBundleURLRef);
              }

              CFDictionaryAddValue(v10, kCFUserNotificationAlertMessageKey, v8);
              if (WORD1(result[2].isa) == 5)
              {
                v11 = @"VPN Connection";
              }

              else
              {
                v11 = @"Network Connection";
              }

              CFDictionaryAddValue(v10, kCFUserNotificationAlertHeaderKey, v11);
              v12 = result[5].info;
              if (v12)
              {
                error = CFUserNotificationUpdate(v12, 0.0, 1uLL, v10);
              }

              else
              {
                v13 = CFUserNotificationCreate(0, 0.0, 1uLL, &error, v10);
                result[5].info = v13;
                if (v13)
                {
                  RunLoopSource = CFUserNotificationCreateRunLoopSource(0, v13, user_notification_callback, 0);
                  result[5].data = RunLoopSource;
                  if (RunLoopSource)
                  {
                    Current = CFRunLoopGetCurrent();
                    CFRunLoopAddSource(Current, result[5].data, kCFRunLoopDefaultMode);
                  }

                  else
                  {
                    my_CFRelease(&result[5].info);
                  }
                }
              }
            }
          }
        }

        my_CFRelease(&v17);
        my_CFRelease(&v18);
      }
    }
  }
}

uint64_t ppp_stop(_DWORD *a1, int a2)
{
  v3 = a1[18];
  if ((v3 & 0x18) != 0)
  {
    a2 = 15;
  }

  v5 = a1[157];
  if (v5 <= 2)
  {
    switch(v5)
    {
      case 0:
        return 0;
      case 1:
        a1[18] = v3 & 0xFFFFFFFB;
        break;
      case 2:
        break;
      default:
LABEL_16:
        v6 = 9;
        goto LABEL_17;
    }

    v6 = 10;
LABEL_17:
    ppp_updatephase(a1, v6, 0);
    goto LABEL_18;
  }

  if ((v5 - 9) >= 2)
  {
    if (v5 == 11 || v5 == 3)
    {
      if (a2 == 1)
      {
        return 0;
      }

      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_18:
  v7 = a1[149];
  if (v7 != -1)
  {
    if (a2 == 1)
    {
      v8 = "[DISCONNECT]";
      goto LABEL_24;
    }

    if (a2 == 15)
    {
      v8 = "[TERMINATE]";
LABEL_24:
      sub_DD44(v7, v8);
      return 0;
    }
  }

  kill(a1[152], a2);
  return 0;
}

uint64_t ppp_suspend(uint64_t a1)
{
  if (*(a1 + 628))
  {
    kill(*(a1 + 608), 18);
  }

  return 0;
}

uint64_t ppp_resume(uint64_t a1)
{
  if (*(a1 + 628))
  {
    kill(*(a1 + 608), 19);
  }

  return 0;
}

void ppp_updatestatus(CFStringRef result, int a2, int a3)
{
  LODWORD(result[19].length) = a2;
  HIDWORD(result[19].length) = a3;
  sub_F170(result);
}

uint64_t ppp_getstatus(uint64_t a1)
{
  v1 = *(a1 + 628) - 1;
  if (v1 > 0xD)
  {
    return 0;
  }

  else
  {
    return dword_2DBE8[v1];
  }
}

uint64_t ppp_getstatus1(uint64_t a1, vm_address_t *a2, _WORD *a3)
{
  v6 = my_Allocate(36);
  *a2 = v6;
  if (!v6)
  {
    return 12;
  }

  v7 = v6;
  *(v6 + 32) = 0;
  *v6 = 0u;
  *(v6 + 16) = 0u;
  v8 = *(a1 + 628);
  if ((v8 | 8) == 0xB)
  {
    *v6 = 0;
LABEL_4:
    *(v6 + 4) = ppp_translate_error(*(a1 + 66), *(a1 + 632), *(a1 + 636));
LABEL_5:
    result = 0;
    *a3 = 36;
    return result;
  }

  *v6 = v8;
  if (v8 != 8)
  {
    if (v8 == 13)
    {
      *(v6 + 4) = 0;
      *__dst = 0;
      getNumberFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPRetryConnectTime, __dst);
      if (*__dst)
      {
        v18 = *&gTimeScaleSeconds * mach_absolute_time();
        v19 = *__dst - v18;
        if (*__dst < v18)
        {
          v19 = 0;
        }

        v7[1] = v19;
      }

      goto LABEL_5;
    }

    if (v8 != 12)
    {
      goto LABEL_4;
    }
  }

  v10 = socket(2, 2, 0);
  if ((v10 & 0x80000000) == 0)
  {
    v11 = v10;
    memset(v26, 0, sizeof(v26));
    v25 = 0u;
    v24 = 0u;
    v23 = 0u;
    strncpy(__dst, (a1 + 104), 0x10uLL);
    v12 = ioctl(v11, 0xC05C697BuLL, __dst);
    close(v11);
    if ((v12 & 0x80000000) == 0)
    {
      v21 = 0;
      getNumberFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPConnectTime, &v21);
      v20 = 0;
      getNumberFromEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPDisconnectTime, &v20);
      v13 = (*&gTimeScaleSeconds * mach_absolute_time());
      if (v21)
      {
        v7[1] = v13 - v21;
      }

      v14 = v20 >= v13;
      v15 = v20 - v13;
      if (!v14)
      {
        v15 = 0;
      }

      if (!v20)
      {
        v15 = -1;
      }

      v7[2] = v15;
      v16 = DWORD1(v23);
      v7[6] = DWORD2(v24);
      v7[3] = v16;
      v7[4] = HIDWORD(v23);
      v7[7] = v25;
      v17 = v24;
      v7[5] = v24;
      v7[8] = v17;
      goto LABEL_5;
    }
  }

  my_Deallocate(*a2, 36);
  return *__error();
}

uint64_t ppp_translate_error(int a1, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x14)
  {
    result = 256;
    if (a1)
    {
      return result;
    }
  }

  else
  {
    result = dword_2DB70[a2];
    if (a1)
    {
      return result;
    }
  }

  if (a3)
  {
    if (a3 > 9)
    {
      return 257;
    }

    else
    {
      return dword_2DBC4[a3 - 1];
    }
  }

  return result;
}

uint64_t ppp_copyextendedstatus(uint64_t a1, void *a2)
{
  value = 0;
  *a2 = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v36 = Mutable;
  if (!Mutable)
  {
    goto LABEL_44;
  }

  v5 = Mutable;
  v6 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  value = v6;
  if (!v6)
  {
    goto LABEL_44;
  }

  v7 = v6;
  AddNumber(v6, kSCPropNetPPPStatus, *(a1 + 628));
  if (!*(a1 + 628))
  {
    goto LABEL_7;
  }

  AddStringFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPCommRemoteAddress, v7);
  v8 = *(a1 + 628);
  if (v8 <= 11)
  {
    if (v8 == 3)
    {
      goto LABEL_17;
    }

    if (v8 != 8)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  if (v8 != 13)
  {
    if (v8 == 12)
    {
LABEL_10:
      v9 = *(a1 + 584);
      if (v9)
      {
        connect_time = ne_sm_bridge_get_connect_time(v9);
        AddNumber64(v7, kSCPropNetPPPConnectTime, connect_time);
      }

      else
      {
        AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPConnectTime, v7);
      }

      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPDisconnectTime, v7);
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPLCPCompressionPField, v7);
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPLCPCompressionACField, v7);
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPLCPMRU, v7);
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPLCPMTU, v7);
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPLCPReceiveACCM, v7);
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetPPP, kSCPropNetPPPLCPTransmitACCM, v7);
      v13 = gDynamicStore;
      v14 = *(a1 + 24);
      v15 = &kSCPropNetPPPIPCPCompressionVJ;
      goto LABEL_16;
    }

LABEL_7:
    AddNumber(v7, kSCPropNetPPPLastCause, *(a1 + 632));
    AddNumber(v7, kSCPropNetPPPDeviceLastCause, *(a1 + 636));
    goto LABEL_17;
  }

  v11 = *(a1 + 584);
  if (v11)
  {
    v12 = ne_sm_bridge_get_connect_time(v11);
    AddNumber64(v7, kSCPropNetPPPConnectTime, v12);
    goto LABEL_17;
  }

  v13 = gDynamicStore;
  v14 = *(a1 + 24);
  v15 = &kSCPropNetPPPRetryConnectTime;
LABEL_16:
  AddNumberFromState(v13, v14, kSCEntNetPPP, *v15, v7);
LABEL_17:
  CFDictionaryAddValue(v5, kSCEntNetPPP, v7);
  my_CFRelease(&value);
  if (!*(a1 + 66))
  {
    v16 = *(a1 + 628);
    if ((v16 | 4) != 0xC)
    {
      goto LABEL_19;
    }

    v32 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    value = v32;
    if (v32)
    {
      AddNumberFromState(gDynamicStore, *(a1 + 24), kSCEntNetModem, kSCPropNetModemConnectSpeed, v32);
      CFDictionaryAddValue(v5, kSCEntNetModem, value);
      my_CFRelease(&value);
      goto LABEL_18;
    }

LABEL_44:
    v31 = 12;
    goto LABEL_45;
  }

LABEL_18:
  v16 = *(a1 + 628);
LABEL_19:
  if ((v16 | 4) == 0xC)
  {
    v17 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetIPv4);
    value = v17;
    if (v17)
    {
      CFDictionaryAddValue(v5, kSCEntNetIPv4, v17);
      my_CFRelease(&value);
    }

    v18 = copyEntity(gDynamicStore, kSCDynamicStoreDomainState, *(a1 + 24), kSCEntNetDNS);
    v34 = v18;
    if (v18)
    {
      v19 = v18;
      v20 = CFDictionaryGetValue(v18, kSCPropNetDNSServerAddresses);
      TypeID = CFArrayGetTypeID();
      if (v20 && CFGetTypeID(v20) == TypeID)
      {
        CFDictionarySetValue(v5, @"DNSServers", v20);
      }

      v22 = CFDictionaryGetValue(v19, kSCPropNetDNSDomainName);
      v23 = CFStringGetTypeID();
      if (v22 && CFGetTypeID(v22) == v23)
      {
        CFDictionarySetValue(v5, @"DNSDomain", v22);
      }

      v24 = CFDictionaryGetValue(v19, kSCPropNetDNSSearchDomains);
      v25 = CFArrayGetTypeID();
      if (v24 && CFGetTypeID(v24) == v25)
      {
        CFDictionarySetValue(v5, @"DNSSearchDomains", v24);
      }

      v26 = CFDictionaryGetValue(v19, kSCPropNetDNSSupplementalMatchDomains);
      v27 = CFArrayGetTypeID();
      if (v26 && CFGetTypeID(v26) == v27)
      {
        CFDictionarySetValue(v5, @"DNSSupplementalMatchDomains", v26);
      }

      my_CFRelease(&v34);
    }

    v16 = *(a1 + 628);
  }

  v28 = v16 - 1;
  if (v28 > 0xD)
  {
    v29 = 0;
  }

  else
  {
    v29 = dword_2DBE8[v28];
  }

  AddNumber(v5, @"Status", v29);
  v30 = CFRetain(v5);
  v31 = 0;
  *a2 = v30;
LABEL_45:
  my_CFRelease(&value);
  my_CFRelease(&v36);
  return v31;
}

uint64_t ppp_copystatistics(uint64_t a1, void *a2)
{
  v12 = 0;
  *a2 = 0;
  if ((*(a1 + 628) | 4) != 0xC)
  {
    return 22;
  }

  v17 = 0u;
  memset(v18, 0, sizeof(v18));
  v15 = 0u;
  v16 = 0u;
  *__dst = 0u;
  Mutable = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v13 = Mutable;
  if (Mutable && (v5 = Mutable, v6 = CFDictionaryCreateMutable(0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks), (v12 = v6) != 0))
  {
    v7 = v6;
    v8 = socket(2, 2, 0);
    if (v8 < 0 || (v17 = 0u, memset(v18, 0, sizeof(v18)), v15 = 0u, v16 = 0u, strncpy(__dst, (a1 + 104), 0x10uLL), ioctl(v8, 0xC05C697BuLL, __dst) < 0))
    {
      v10 = *__error();
    }

    else
    {
      AddNumber(v7, @"BytesIn", SDWORD1(v15));
      AddNumber(v7, @"BytesOut", SDWORD2(v16));
      AddNumber(v7, @"PacketsIn", SHIDWORD(v15));
      AddNumber(v7, @"PacketsOut", v17);
      AddNumber(v7, @"ErrorsIn", v16);
      AddNumber(v7, @"ErrorsOut", v16);
      CFDictionaryAddValue(v5, kSCEntNetPPP, v7);
      v9 = CFRetain(v5);
      v10 = 0;
      *a2 = v9;
    }
  }

  else
  {
    v10 = 12;
    v8 = -1;
  }

  my_CFRelease(&v12);
  my_CFRelease(&v13);
  if (v8 != -1)
  {
    close(v8);
  }

  return v10;
}

uint64_t ppp_getconnectsystemdata(uint64_t a1, void *a2, _WORD *a3)
{
  memset(__len, 0, sizeof(__len));
  v5 = copyService(gDynamicStore, kSCDynamicStoreDomainSetup, *(a1 + 24));
  if (v5)
  {
    v6 = v5;
    v7 = Serialize(v5, &__len[1], __len);
    if (v7)
    {
      v8 = v7;
      v9 = my_Allocate(__len[0]);
      *a2 = v9;
      if (v9)
      {
        memmove(v9, *&__len[1], __len[0]);
        v10 = 0;
        *a3 = __len[0];
      }

      else
      {
        v10 = 12;
      }

      CFRelease(v6);
      CFRelease(v8);
    }

    else
    {
      CFRelease(v6);
      return 12;
    }
  }

  else
  {
    v10 = 0;
    *a3 = 0;
  }

  return v10;
}

uint64_t ppp_getconnectdata(uint64_t a1, CFTypeRef *a2, int a3)
{
  *a2 = 0;
  v3 = *(a1 + 128);
  if (v3)
  {
    if (a3)
    {
      *a2 = CFRetain(*(a1 + 128));
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v3);
      if (MutableCopy)
      {
        v6 = MutableCopy;
        Value = CFDictionaryGetValue(MutableCopy, kSCEntNetPPP);
        if (Value)
        {
          v8 = Value;
          v9 = CFGetTypeID(Value);
          if (v9 == CFDictionaryGetTypeID())
          {
            v10 = CFDictionaryCreateMutableCopy(0, 0, v8);
            if (v10)
            {
              v11 = v10;
              CFDictionaryRemoveValue(v10, kSCPropNetPPPAuthPassword);
              CFDictionarySetValue(v6, kSCEntNetPPP, v11);
              CFRelease(v11);
            }
          }
        }

        v12 = CFDictionaryGetValue(v6, kSCEntNetL2TP);
        if (v12)
        {
          v13 = v12;
          v14 = CFGetTypeID(v12);
          if (v14 == CFDictionaryGetTypeID())
          {
            v15 = CFDictionaryCreateMutableCopy(0, 0, v13);
            if (v15)
            {
              v16 = v15;
              CFDictionaryRemoveValue(v15, kSCPropNetL2TPIPSecSharedSecret);
              CFDictionarySetValue(v6, kSCEntNetL2TP, v16);
              CFRelease(v16);
            }
          }
        }

        v17 = CFDictionaryGetValue(v6, kSCEntNetIPSec);
        if (v17)
        {
          v18 = v17;
          v19 = CFGetTypeID(v17);
          if (v19 == CFDictionaryGetTypeID())
          {
            v20 = CFDictionaryCreateMutableCopy(0, 0, v18);
            if (v20)
            {
              v21 = v20;
              CFDictionaryRemoveValue(v20, kSCPropNetIPSecSharedSecret);
              CFDictionarySetValue(v6, kSCEntNetIPSec, v21);
              CFRelease(v21);
            }
          }
        }

        *a2 = CFRetain(v6);
        CFRelease(v6);
      }
    }
  }

  return 0;
}

ssize_t sub_10294(int a1, char *a2, int a3)
{
  sub_DD44(a1, a2);
  snprintf(__str, 0x20uLL, "%d", a3);
  return sub_DD44(a1, __str);
}

ssize_t sub_10314(int a1, char *__s, _BYTE *a3)
{
  v6 = strlen(__s);
  write(a1, __s, v6);
  write(a1, " ", 2uLL);
  while (1)
  {
    v7 = *a3;
    if (v7 != 34 && v7 != 92)
    {
      break;
    }

    write(a1, "\"", 1uLL);
LABEL_7:
    write(a1, a3++, 1uLL);
  }

  if (*a3)
  {
    goto LABEL_7;
  }

  return write(a1, " ", 2uLL);
}

ssize_t sub_103DC(int a1, const void *a2, int a3)
{
  sub_10294(a1, "modemdict", a3);
  write(a1, a2, a3);

  return write(a1, " ", 1uLL);
}

uint64_t terminate_all()
{
  CFRunLoopSourceInvalidate(gTerminalrls);
  CFRelease(gTerminalrls);
  v8 = service_head;
  if (service_head)
  {
    do
    {
      v0 = scnc_stop(v8, 0, 15, 11);
      v8 = *v8;
    }

    while (v8);
  }

  return allow_stop(v0, v1, v2, v3, v4, v5, v6, v7);
}

uint64_t scnc_stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a2)
  {
    v7 = 0;
    goto LABEL_16;
  }

  v7 = *(a2 + 72);
  if (a4 == 6 || a4 == 10)
  {
LABEL_16:
    for (i = *(a1 + 568); i; i = *(a1 + 568))
    {
      v16 = *i;
      v17 = i[1];
      v18 = (*i + 8);
      if (!*i)
      {
        v18 = (a1 + 576);
      }

      *v18 = v17;
      *v17 = v16;
      free(i);
    }

    goto LABEL_20;
  }

  v8 = (a1 + 568);
  v9 = (a1 + 568);
  while (1)
  {
    v9 = *v9;
    if (!v9)
    {
      break;
    }

    if (v9[2] == a2)
    {
      v10 = (a1 + 568);
      while (1)
      {
        v10 = *v10;
        if (!v10)
        {
          goto LABEL_13;
        }

        if (v10[2] == a2)
        {
          v11 = *v10;
          v12 = v10[1];
          v13 = (a1 + 576);
          if (*v10)
          {
            v13 = (*v10 + 8);
          }

          *v13 = v12;
          *v12 = v11;
          free(v10);
          goto LABEL_13;
        }
      }
    }
  }

LABEL_13:
  if (*v8)
  {
    return 0;
  }

LABEL_20:
  if (!scnc_get_reason_str(v4))
  {
    goto LABEL_29;
  }

  if (!v7)
  {
    v7 = getpid();
  }

  sub_146C0(v7, __str);
  v25 = *(a1 + 64);
  if (*(a1 + 64))
  {
    if (v25 == 2)
    {
      goto LABEL_29;
    }

    if (v25 == 1)
    {
      ipsec_error_to_string(*(a1 + 596));
    }
  }

  else
  {
    ppp_error_to_string(*(a1 + 632));
    ppp_dev_error_to_string(*(a1 + 66), *(a1 + 636));
  }

  SCLog();
LABEL_29:
  if (*(a1 + 64) == 1)
  {
    return ipsec_stop(a1, a3, v19, v20, v21, v22, v23, v24);
  }

  if (*(a1 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  return ppp_stop(a1, a3);
}

uint64_t allow_stop(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!gStopRls)
  {
    return 0;
  }

  v8 = &service_head;
  while (1)
  {
    v8 = *v8;
    if (!v8)
    {
      break;
    }

    if (*(v8 + 32) == 1)
    {
      v9 = ipsec_getstatus(v8, a2, a3, a4, a5, a6, a7, a8);
    }

    else
    {
      if (*(v8 + 32))
      {
        return 0;
      }

      v9 = ppp_getstatus(v8);
    }

    if (v9)
    {
      return 0;
    }
  }

  CFRunLoopSourceSignal(gStopRls);
  if (gPluginRunloop)
  {
    CFRunLoopWakeUp(gPluginRunloop);
  }

  return 1;
}

uint64_t pppcntl_run_thread()
{
  if (ppp_mach_start_server() || ppp_mach_start_server_priv() || ppp_socket_start_server() || client_init_all())
  {
    pthread_exit(&dword_0 + 1);
  }

  info = 0;
  thePortRef[0] = 0;
  v54 = 0;
  v55 = 0;
  v52 = 0;
  v53 = 0;
  v50 = 0;
  v51 = 0;
  source = 0;
  thePortRef[1] = kSCEntNetPPP;
  v58[0] = kSCEntNetModem;
  v58[1] = kSCEntNetInterface;
  v58[2] = kSCEntNetIPv4;
  v58[3] = kSCEntNetIPv6;
  v58[4] = kSCEntNetDNS;
  v0 = kSCEntNetVPN;
  v58[5] = kSCEntNetIPSec;
  v58[6] = kSCEntNetVPN;
  v58[7] = @"com.apple.payload";
  v58[8] = 0;
  notifier = 0;
  scnc_init_resources(gBundleRef);
  Current = CFRunLoopGetCurrent();
  reachability_init(Current, kCFRunLoopDefaultMode, &stru_393E0);
  sub_12594(0);
  gSleeping = 0;
  gStopRls = 0;
  gIOPort = IORegisterForSystemPower(0, thePortRef, sub_13914, &notifier);
  if (!gIOPort || (v2 = CFRunLoopGetCurrent(), RunLoopSource = IONotificationPortGetRunLoopSource(thePortRef[0]), CFRunLoopAddSource(v2, RunLoopSource, kCFRunLoopDefaultMode), mach_timebase_info(&info)))
  {
    SCLog();
    goto LABEL_8;
  }

  LODWORD(v4) = info.numer;
  LODWORD(v5) = info.denom;
  *&gTimeScaleSeconds = v4 / v5 / 1000000000.0;
  v7 = SCDynamicStoreCreate(0, @"SCNCController", sub_13B40, 0);
  gDynamicStore = v7;
  if (!v7)
  {
    goto LABEL_8;
  }

  v8 = SCDynamicStoreCreateRunLoopSource(0, v7, 0);
  source = v8;
  if (!v8)
  {
    goto LABEL_8;
  }

  v9 = v8;
  v10 = CFRunLoopGetCurrent();
  CFRunLoopAddSource(v10, v9, kCFRunLoopDefaultMode);
  my_CFRelease(&source);
  NetworkGlobalEntity = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetOnDemand);
  gOndemand_key = NetworkGlobalEntity;
  if (NetworkGlobalEntity)
  {
    SCDynamicStoreRemoveValue(gDynamicStore, NetworkGlobalEntity);
  }

  ipsec_init_things();
  Mutable = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v52 = Mutable;
  v13 = CFArrayCreateMutable(0, 0, &kCFTypeArrayCallBacks);
  v51 = v13;
  theArray = Mutable;
  if (!Mutable)
  {
    goto LABEL_8;
  }

  v14 = v13;
  if (!v13)
  {
    goto LABEL_8;
  }

  if (kSCEntNetPPP)
  {
    v15 = v58;
    v16 = kSCEntNetPPP;
    do
    {
      NetworkServiceEntity = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, v16);
      v55 = NetworkServiceEntity;
      if (!NetworkServiceEntity)
      {
        goto LABEL_8;
      }

      v18 = NetworkServiceEntity;
      CFArrayAppendValue(v14, NetworkServiceEntity);
      CFRelease(v18);
      v19 = *v15++;
      v16 = v19;
    }

    while (v19);
  }

  v20 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainSetup, kSCEntNetIPv4);
  v55 = v20;
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v20;
  CFArrayAppendValue(theArray, v20);
  CFRelease(v21);
  v22 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetIPv4);
  v55 = v22;
  if (!v22)
  {
    goto LABEL_8;
  }

  v23 = v22;
  CFArrayAppendValue(theArray, v22);
  CFRelease(v23);
  v24 = SCDynamicStoreKeyCreateNetworkGlobalEntity(0, kSCDynamicStoreDomainState, kSCEntNetDNS);
  v55 = v24;
  if (!v24)
  {
    goto LABEL_8;
  }

  v25 = v24;
  CFArrayAppendValue(theArray, v24);
  CFRelease(v25);
  NetworkInterfaceEntity = SCDynamicStoreKeyCreateNetworkInterfaceEntity(0, kSCDynamicStoreDomainState, kSCCompAnyRegex, kSCEntNetAirPort);
  CFArrayAppendValue(v14, NetworkInterfaceEntity);
  CFRelease(NetworkInterfaceEntity);
  SCDynamicStoreSetNotificationKeys(gDynamicStore, theArray, v14);
  out_token = 0;
  notify_port = 0;
  notify_key = nwi_state_get_notify_key();
  if (!notify_register_mach_port(notify_key, &notify_port, 0, &out_token))
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    nwi_state_get_notify_key();
    v28 = _SC_CFMachPortCreateWithPort();
    v42 = v28;
    if (v28)
    {
      source = CFMachPortCreateRunLoopSource(kCFAllocatorDefault, v28, 0);
      if (source)
      {
        v29 = CFRunLoopGetCurrent();
        CFRunLoopAddSource(v29, source, kCFRunLoopCommonModes);
        my_CFRelease(&source);
      }

      else
      {
        notify_cancel(out_token);
      }

      my_CFRelease(&v42);
    }

    else
    {
      notify_cancel(out_token);
    }
  }

  service_head = 0;
  qword_436E8 = &service_head;
  controller_options_modify_ondemand();
  v53 = CFStringCreateWithFormat(0, 0, @"(%@|%@|%@)", kSCEntNetPPP, kSCEntNetIPSec, v0);
  v30 = SCDynamicStoreKeyCreateNetworkServiceEntity(0, kSCDynamicStoreDomainSetup, kSCCompAnyRegex, v53);
  v55 = v30;
  v31 = SCDynamicStoreKeyCreate(0, @"%@/%@/%@/", kSCDynamicStoreDomainSetup, kSCCompNetwork, kSCCompService);
  v54 = v31;
  if (!v30 || (v32 = v31) == 0)
  {
LABEL_8:
    my_CFRelease(&gDynamicStore);
    goto LABEL_9;
  }

  v33 = SCDynamicStoreCopyKeyList(gDynamicStore, v30);
  v50 = v33;
  if (v33)
  {
    v34 = v33;
    Count = CFArrayGetCount(v33);
    if (Count >= 1)
    {
      v36 = 0;
      v37 = Count & 0x7FFFFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v34, v36);
        v39 = parse_component(ValueAtIndex, v32);
        if (v39)
        {
          v40 = v39;
          sub_14058(v39);
          CFRelease(v40);
        }

        ++v36;
      }

      while (v37 != v36);
    }

    sub_14378();
    sub_12384();
    if (gSCNCVerbose)
    {
      sub_14454();
    }
  }

LABEL_9:
  my_CFRelease(&v53);
  my_CFRelease(&v50);
  my_CFRelease(&v55);
  my_CFRelease(&v54);
  my_CFRelease(&v52);
  my_CFRelease(&v51);
  CFRunLoopRun();
  return 0;
}

void load(const void *a1, int a2)
{
  memset(&v5, 0, sizeof(v5));
  v4 = 0;
  *&v3.cancel = unk_393B0;
  memset(&v3, 0, 64);
  gBundleRef = a1;
  gSCNCVerbose = _sc_verbose | a2;
  gSCNCDebug = a2;
  gPluginRunloop = CFRunLoopGetCurrent();
  gTerminalrls = CFRunLoopSourceCreate(0, 0, &v3);
  if (gTerminalrls)
  {
    pthread_attr_init(&v5);
    pthread_attr_setdetachstate(&v5, 2);
    if (pthread_create(&v4, &v5, pppcntl_run_thread, 0))
    {
      CFRelease(gTerminalrls);
      gTerminalrls = 0;
    }

    else
    {
      pthread_attr_destroy(&v5);
      CFRetain(a1);
    }
  }

  else
  {
    SCLog();
  }
}

void stop(uint64_t a1)
{
  if (gOndemand_key)
  {
    SCDynamicStoreRemoveValue(gDynamicStore, gOndemand_key);
  }

  if (!gStopRls)
  {
    gStopRls = a1;
    if (gTerminalrls)
    {
      CFRunLoopSourceSignal(gTerminalrls);
    }

    v2 = gControllerRunloop;
    if (gControllerRunloop)
    {

      CFRunLoopWakeUp(v2);
    }
  }
}

uint64_t allow_dispose(uint64_t a1)
{
  if (*(a1 + 584))
  {
    ne_sm_bridge_allow_dispose(*(a1 + 584));
  }

  else
  {
    if ((*(a1 + 72) & 2) == 0)
    {
      return 0;
    }

    sub_11068(a1);
  }

  return 1;
}

void sub_11068(char *a1)
{
  scnc_stop(a1, 0, 15, 12);
  if (*(a1 + 32))
  {
    if (*(a1 + 32) != 1)
    {
      *(a1 + 18) &= ~2u;
LABEL_27:
      my_CFRelease(a1 + 18);
      v3 = *(a1 + 18);
      if ((v3 & 0x200000) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    if (ipsec_dispose_service(a1))
    {
LABEL_4:
      *(a1 + 18) |= 2u;
      return;
    }
  }

  else if (ppp_dispose_service(a1))
  {
    goto LABEL_4;
  }

  v2 = *(a1 + 32);
  v3 = *(a1 + 18) & 0xFFFFFFFD;
  *(a1 + 18) = v3;
  if (v2 != 1)
  {
    goto LABEL_27;
  }

  if ((v3 & 0x200000) != 0)
  {
LABEL_8:
    *(a1 + 18) = v3 & 0xFFDFFFFF;
    sub_14544(a1);
  }

LABEL_9:
  v4 = *a1;
  v5 = *(a1 + 1);
  v6 = &service_head;
  if (*a1)
  {
    v6 = *a1;
  }

  v6[1] = v5;
  *v5 = v4;
  reachability_clear(a1);
  client_notify(*(a1 + 3), *(a1 + 7), *(a1 + 34) | (*(a1 + 33) << 16), 0, 0, 8, -1);
  v7 = *(a1 + 7);
  if (v7)
  {
    free(v7);
  }

  v8 = *(a1 + 21);
  if (v8)
  {
    CFUserNotificationCancel(v8);
    Current = CFRunLoopGetCurrent();
    CFRunLoopRemoveSource(Current, *(a1 + 22), kCFRunLoopDefaultMode);
    my_CFRelease(a1 + 21);
    my_CFRelease(a1 + 22);
  }

  v10 = *(a1 + 24);
  if (v10)
  {
    mach_port_deallocate(mach_task_self_, v10);
    *(a1 + 24) = 0;
  }

  v11 = *(a1 + 25);
  if (v11)
  {
    mach_port_deallocate(mach_task_self_, v11);
    *(a1 + 25) = 0;
  }

  my_CFRelease(a1 + 3);
  my_CFRelease(a1 + 5);
  my_CFRelease(a1 + 6);
  my_CFRelease(a1 + 4);
  my_CFRelease(a1 + 52);
  my_CFRelease(a1 + 53);
  my_CFRelease(a1 + 56);
  my_CFRelease(a1 + 54);
  my_CFRelease(a1 + 57);
  my_CFRelease(a1 + 62);
  my_CFRelease(a1 + 63);
  v12 = *(a1 + 64);
  if (v12)
  {
    free(v12);
  }

  v13 = *(a1 + 65);
  if (v13)
  {
    free(v13);
  }

  free(a1);
}

void scnc_init_resources(__CFBundle *a1)
{
  gBundleURLRef = CFBundleCopyBundleURL(a1);
  v2 = CFURLCopyAbsoluteURL(gBundleURLRef);
  if (v2)
  {
    v3 = v2;
    gBundleDir = CFURLCopyPath(v2);
    CFRelease(v3);
  }

  v4 = CFBundleCopyBuiltInPlugInsURL(a1);
  if (v4)
  {
    v5 = v4;
    v6 = CFURLCopyAbsoluteURL(v4);
    if (v6)
    {
      v7 = v6;
      gPluginsDir = CFURLCopyPath(v6);
      CFRelease(v7);
    }

    CFRelease(v5);
  }

  v8 = CFBundleCopyResourcesDirectoryURL(a1);
  if (v8)
  {
    v9 = v8;
    v10 = CFURLCopyAbsoluteURL(v8);
    if (v10)
    {
      v11 = v10;
      gResourcesDir = CFURLCopyPath(v10);
      CFRelease(v11);
    }

    CFRelease(v9);
  }

  v12 = CFBundleCopyResourceURL(a1, @"NetworkConnect.icns", 0, 0);
  gIconURLRef = v12;
  if (v12)
  {
    v13 = CFURLCopyAbsoluteURL(v12);
    if (v13)
    {
      v14 = v13;
      gIconDir = CFURLCopyPath(v13);
      CFRelease(v14);
    }
  }

  v15 = _CFCopySystemVersionDictionary();
  if (v15)
  {
    v16 = v15;
    Value = CFDictionaryGetValue(v15, _kCFSystemVersionProductNameKey);
    v18 = CFDictionaryGetValue(v16, _kCFSystemVersionProductVersionKey);
    if (Value)
    {
      v19 = v18;
      if (v18)
      {
        Mutable = CFStringCreateMutable(0, 0);
        if (Mutable)
        {
          v21 = Mutable;
          CFStringAppend(Mutable, @"Cisco Systems VPN Client ");
          CFStringAppend(v21, v19);
          CFStringAppend(v21, @":");
          CFStringAppend(v21, Value);
          Length = CFStringGetLength(v21);
          v23 = malloc_type_malloc(Length + 1, 0x487CCEDuLL);
          gIPSecAppVersion = v23;
          if (v23)
          {
            CFStringGetCString(v21, v23, Length + 1, 0x8000100u);
          }

          CFRelease(v21);
        }
      }
    }

    CFRelease(v16);
  }
}