uint64_t AMFDRCopyDeviceKeys(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  if (!a2)
  {
    result = 1;
    AMFDRCopyDeviceKeys_error = 1;
    return result;
  }

  if (!a3)
  {
    v6 = 0x27D00E000;
    result = 1;
LABEL_10:
    *(v6 + 3296) = result;
    return result;
  }

  if (*MEMORY[0x277CDC060] != a1)
  {
    v6 = 0x27D00E000uLL;
    result = 9;
    goto LABEL_10;
  }

  if (AMFDRCopyDeviceKeys_onceToken != -1)
  {
    AMFDRCopyDeviceKeys_cold_1();
  }

  *a2 = AMSupportSafeRetain();
  *a3 = AMSupportSafeRetain();
  return AMFDRCopyDeviceKeys_error;
}

void __AMFDRCopyDeviceKeys_block_invoke()
{
  v23 = *MEMORY[0x277D85DE8];
  connect[0] = 0;
  v0 = IOServiceMatching("IOAESAccelerator");
  if (!v0)
  {
    goto LABEL_58;
  }

  v1 = v0;
  CFRetain(v0);
  MatchingService = IOServiceGetMatchingService(*MEMORY[0x277CD2898], v1);
  if (!MatchingService)
  {
    CFRelease(v1);
    goto LABEL_58;
  }

  v3 = MatchingService;
  IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, connect);
  CFRelease(v1);
  IOObjectRelease(v3);
  v4 = connect[0];
  if (!connect[0])
  {
LABEL_58:
    AMFDRCopyDeviceKeys_error = 6;
    return;
  }

  v5 = CryptoBufferAllocate();
  if (v5)
  {
    v6 = v5;
    *v5 = kAMDDeviceKeySeed;
    v5[1] = unk_2225414B0;
    v5[2] = xmmword_2225414C0;
    v5[3] = unk_2225414D0;
    v7 = CryptoBufferAllocate();
    if (v7)
    {
      v8 = v7;
      *&connect[20] = 0;
      *&connect[7] = 0;
      *&connect[5] = 0;
      memset(&connect[11], 0, 32);
      outputStructCnt[0] = 88;
      *connect = v6;
      *&connect[2] = v7;
      connect[4] = 64;
      *&connect[9] = 0x8000000000;
      connect[19] = 2105;
      v9 = IOConnectCallStructMethod(v4, 1u, connect, 0x58uLL, connect, outputStructCnt);
      v10 = "kIOReturnVMError";
      switch(v9)
      {
        case -536870212:
          v10 = "kIOReturnError";
          goto LABEL_41;
        case -536870211:
          v10 = "kIOReturnNoMemory";
          goto LABEL_41;
        case -536870210:
          v10 = "kIOReturnNoResources";
          goto LABEL_41;
        case -536870209:
          v10 = "kIOReturnIPCError";
          goto LABEL_41;
        case -536870208:
          v10 = "kIOReturnNoDevice";
          goto LABEL_41;
        case -536870207:
          v10 = "kIOReturnNotPrivileged";
          goto LABEL_41;
        case -536870206:
          v10 = "kIOReturnBadArgument";
          goto LABEL_41;
        case -536870205:
          v10 = "kIOReturnLockedRead";
          goto LABEL_41;
        case -536870204:
          v10 = "kIOReturnLockedWrite";
          goto LABEL_41;
        case -536870203:
          v10 = "kIOReturnExclusiveAccess";
          goto LABEL_41;
        case -536870202:
          v10 = "kIOReturnBadMessageID";
          goto LABEL_41;
        case -536870201:
          v10 = "kIOReturnUnsupported";
          goto LABEL_41;
        case -536870200:
          goto LABEL_41;
        case -536870199:
          v10 = "kIOReturnInternalError";
          goto LABEL_41;
        case -536870198:
          v10 = "kIOReturnIOError";
          goto LABEL_41;
        case -536870197:
          goto LABEL_18;
        case -536870196:
          v10 = "kIOReturnCannotLock";
          goto LABEL_41;
        case -536870195:
          v10 = "kIOReturnNotOpen";
          goto LABEL_41;
        case -536870194:
          v10 = "kIOReturnNotReadable";
          goto LABEL_41;
        case -536870193:
          v10 = "kIOReturnNotWritable";
          goto LABEL_41;
        case -536870192:
          v10 = "kIOReturnNotAligned";
          goto LABEL_41;
        case -536870191:
          v10 = "kIOReturnBadMedia";
          goto LABEL_41;
        case -536870190:
          v10 = "kIOReturnStillOpen";
          goto LABEL_41;
        case -536870189:
          v10 = "kIOReturnRLDError";
          goto LABEL_41;
        case -536870188:
          v10 = "kIOReturnDMAError";
          goto LABEL_41;
        default:
          if (!v9)
          {
            AMSupportLogInternal(7, "CryptoAcceleratorEncrypt", "perform aes => %d (%s)", 0, "kIOReturnSuccess");
            memset(connect, 170, 2132);
            if (!ccrng() || (strcpy(outputStructCnt, "pseudo_ccrng_allocate"), key_deterministic = ccrsa_generate_key_deterministic(), AMSupportLogInternal(7, "CryptoGenerateRSAKeys", "ccrsa_generate_key_deterministic() -> %d", key_deterministic), key_deterministic))
            {
              v20 = 0;
              v18 = 6;
LABEL_52:
              if ((v20 & 1) == 0)
              {
                if (AMFDRCopyDeviceKeys_pubKey)
                {
                  CFRelease(AMFDRCopyDeviceKeys_pubKey);
                  AMFDRCopyDeviceKeys_pubKey = 0;
                }

                if (AMFDRCopyDeviceKeys_privKey)
                {
                  CFRelease(AMFDRCopyDeviceKeys_privKey);
                  AMFDRCopyDeviceKeys_privKey = 0;
                }
              }

              goto LABEL_42;
            }

            v12 = ccrsa_export_priv_size();
            v13 = malloc_type_malloc(v12, 0x32DBDD2FuLL);
            v14 = ccrsa_ctx_public();
            v15 = MEMORY[0x223DB8D50](v14);
            v16 = malloc_type_malloc(v15, 0x198A2AD3uLL);
            v17 = v16;
            if (v13 && v16)
            {
              if (ccrsa_export_priv())
              {
                goto LABEL_60;
              }

              ccrsa_ctx_public();
              if (ccrsa_export_pub())
              {
                goto LABEL_60;
              }

              if (AMSupportDigestSha1())
              {
                AMSupportLogInternal(3, "CryptoGenerateRSAKeys", "Failed to compute digest of RSA Public Key");
              }

              else
              {
                AMSupportLogDumpMemory();
              }

              if (AMSupportRsaCreatePemFromData())
              {
LABEL_60:
                v20 = 0;
                v18 = 6;
              }

              else
              {
                v19 = *MEMORY[0x277CBECE8];
                AMFDRCopyDeviceKeys_privKey = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
                if (AMFDRCopyDeviceKeys_privKey && (AMSupportLogInternal(6, "CryptoGenerateRSAKeys", "SecKeyCreateRSAPrivateKey -> %p", &AMFDRCopyDeviceKeys_privKey), (AMFDRCopyDeviceKeys_pubKey = CFDataCreate(v19, v17, v15)) != 0))
                {
                  AMSupportLogInternal(6, "CryptoGenerateRSAKeys", "SecKeyCreateRSAPublicKey -> %p", &AMFDRCopyDeviceKeys_pubKey);
                  v18 = 0;
                  v20 = 1;
                }

                else
                {
                  v20 = 0;
                  v18 = 2;
                }
              }
            }

            else
            {
              v20 = 0;
              v18 = 2;
              if (!v13)
              {
LABEL_50:
                if (v17)
                {
                  free(v17);
                }

                goto LABEL_52;
              }
            }

            free(v13);
            goto LABEL_50;
          }

LABEL_18:
          v10 = "unknown";
LABEL_41:
          AMSupportLogInternal(7, "CryptoAcceleratorEncrypt", "perform aes => %d (%s)", v9, v10);
          v18 = 6;
LABEL_42:
          AMFDRCopyDeviceKeys_error = v18;
          IOServiceClose(v4);
          free(v8);
          break;
      }
    }

    else
    {
      AMFDRCopyDeviceKeys_error = 2;
      IOServiceClose(v4);
    }

    free(v6);
  }

  else
  {
    AMFDRCopyDeviceKeys_error = 2;
    IOServiceClose(v4);
  }
}

void *CryptoBufferAllocate()
{
  memptr = 0;
  if (!malloc_type_posix_memalign(&memptr, 0x10uLL, 0x40uLL, 0xCC1B18E3uLL))
  {
    v0 = memptr;
    *memptr = 0u;
    v0[1] = 0u;
    v0[2] = 0u;
    v0[3] = 0u;
  }

  return memptr;
}

void *_AMFDRDeviceRefKeyCreateInternal(const __CFAllocator *a1, CFDataRef theData)
{
  v27 = 0;
  v25 = 0;
  length = 0;
  v23 = 0;
  v24 = 0;
  v21 = 0;
  v22 = 0;
  v20 = 1;
  if (theData)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    v4 = aks_ref_key_create_with_blob();
    if (v4)
    {
      AMSupportLogInternal(3, "_AMFDRDeviceRefKeyCreateInternal", "aks_ref_key_create_with_blob failed : %d", v4);
      v5 = 0;
      v12 = 0;
      v6 = 0;
      goto LABEL_50;
    }

    v5 = 0;
    v6 = 0;
    goto LABEL_13;
  }

  v7 = MGCopyAnswer();
  v6 = v7;
  if (!v7)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_8(0);
LABEL_44:
    v5 = 0;
    goto LABEL_49;
  }

  v8 = CFGetTypeID(v7);
  TypeID = CFBooleanGetTypeID();
  if (v8 != TypeID)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_1(TypeID);
    goto LABEL_44;
  }

  if (CFBooleanGetValue(v6))
  {
    v10 = 5;
  }

  else
  {
    v10 = 4;
  }

  v11 = aks_params_create(0, 0);
  v5 = v11;
  v21 = v11;
  if (!v11)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_7(0);
    goto LABEL_49;
  }

  if (aks_params_set_number(v11, 9, &v20))
  {
    AMSupportLogInternal(3, "_AMFDRDeviceRefKeyCreateInternal", "aks_params_set_number failed : %d");
    goto LABEL_49;
  }

  if (aks_params_get_der(v5, &v23, &v22))
  {
    AMSupportLogInternal(3, "_AMFDRDeviceRefKeyCreateInternal", "aks_params_get_der failed : %d");
    goto LABEL_49;
  }

  if (aks_ref_key_create(0xFFFFFFFFLL, 13, v10, v23, v22, &v25))
  {
    AMSupportLogInternal(3, "_AMFDRDeviceRefKeyCreateInternal", "aks_ref_key_create failed : %d");
    goto LABEL_49;
  }

LABEL_13:
  if (!v25)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_6();
LABEL_49:
    v12 = 0;
    goto LABEL_50;
  }

  if (aks_sik_attest(v25, v23, v22, &v27, &length))
  {
    AMSupportLogInternal(3, "_AMFDRDeviceRefKeyCreateInternal", "aks_sik_attest failed : %d");
    goto LABEL_49;
  }

  if (!v27)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_5();
    goto LABEL_49;
  }

  if (!length)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_4();
    goto LABEL_49;
  }

  v12 = CFDataCreate(a1, v27, length);
  if (!v12)
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_3();
LABEL_50:
    v14 = 0;
    goto LABEL_51;
  }

  public_key = aks_ref_key_get_public_key(v25, &v24);
  if (!public_key || !v24)
  {
    goto LABEL_50;
  }

  v14 = CFDataCreate(*MEMORY[0x277CBECE8], public_key, v24);
  if (v14)
  {
    pthread_once(&_AMFDRDeviceRefKeyClassInitializeOnce, _AMFDRDeviceRefKeyClassInitialize);
    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v16 = Instance;
      Instance[2] = 0;
      Instance[3] = 0;
      Instance[4] = 0;
      v17 = CFRetain(v12);
      v18 = v25;
      v16[2] = v17;
      v16[3] = v18;
      v25 = 0;
      v16[4] = v14;
      v14 = 0;
      if (!v5)
      {
        goto LABEL_24;
      }

      goto LABEL_23;
    }
  }

  else
  {
    _AMFDRDeviceRefKeyCreateInternal_cold_2();
  }

LABEL_51:
  if (v25)
  {
    aks_ref_key_free(&v25);
  }

  v16 = 0;
  if (v5)
  {
LABEL_23:
    aks_params_free(&v21);
  }

LABEL_24:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (v27)
  {
    free(v27);
    v27 = 0;
  }

  if (v23)
  {
    free(v23);
  }

  return v16;
}

void *AMFDRDeviceRefKeyCreateWithData(const __CFAllocator *a1, const __CFData *a2)
{
  if (a2)
  {

    return _AMFDRDeviceRefKeyCreateInternal(a1, a2);
  }

  else
  {
    AMSupportLogInternal(3, "AMFDRDeviceRefKeyCreateWithData", "refKeyBlob is NULL", v2, v3);
    return 0;
  }
}

uint64_t AMFDRDeviceRefKeySign(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, size_t *a5)
{
  v23 = *MEMORY[0x277D85DE8];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *v20 = v5;
  v21 = v5;
  v18 = 0;
  v19 = 0;
  if (!a1)
  {
    AMFDRDeviceRefKeySign_cold_10(0);
LABEL_21:
    v14 = 1;
    goto LABEL_13;
  }

  if (!a2)
  {
    AMFDRDeviceRefKeySign_cold_9(a1);
    goto LABEL_21;
  }

  if (!a3)
  {
    AMFDRDeviceRefKeySign_cold_8(a1);
    goto LABEL_21;
  }

  if (!a4)
  {
    AMFDRDeviceRefKeySign_cold_7(a1);
    goto LABEL_21;
  }

  if (!a5)
  {
    AMFDRDeviceRefKeySign_cold_6(a1);
    goto LABEL_21;
  }

  ccsha256_di();
  ccdigest();
  v10 = aks_ref_key_sign(*(a1 + 24), 0, 0, v20, 32, &v19, &v18, v9, v16, 0, v18, v19, v20[0], v20[1], v21, *(&v21 + 1), v22, v23, v24, v25, v26, v27);
  if (v10)
  {
    AMSupportLogInternal(3, "AMFDRDeviceRefKeySign", "aks_ref_key_sign failed: %d", v10);
  }

  else if (v19)
  {
    if (v18)
    {
      v11 = ccder_decode_tl();
      if (v11)
      {
        v12 = v11;
        if (size)
        {
          v13 = malloc_type_malloc(size, 0xC355CAAuLL);
          *a4 = v13;
          if (v13)
          {
            memcpy(v13, v12, size);
            v14 = 0;
            *a5 = size;
            goto LABEL_13;
          }

          AMFDRDeviceRefKeySign_cold_1();
        }

        else
        {
          AMFDRDeviceRefKeySign_cold_2();
        }
      }

      else
      {
        AMFDRDeviceRefKeySign_cold_3();
      }
    }

    else
    {
      AMFDRDeviceRefKeySign_cold_4();
    }
  }

  else
  {
    AMFDRDeviceRefKeySign_cold_5();
  }

  v14 = 6;
LABEL_13:
  if (v19)
  {
    free(v19);
  }

  return v14;
}

CFTypeRef AMFDRDeviceRefKeyCopyAttestation(uint64_t a1)
{
  if (!a1)
  {
    AMFDRDeviceRefKeyCopyAttestation_cold_2(0);
    return 0;
  }

  v1 = *(a1 + 16);
  if (!v1)
  {
    AMFDRDeviceRefKeyCopyAttestation_cold_1(0);
    return 0;
  }

  return CFRetain(v1);
}

uint64_t AMFDRDeviceRefKeyGetPublicKey(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  AMFDRDeviceRefKeyGetPublicKey_cold_1(a1);
  return 0;
}

CFDataRef AMFDRDeviceRefKeyCopyKeyBlob(uint64_t a1)
{
  length = 0;
  if (!a1)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_4(0);
    return 0;
  }

  v1 = *(a1 + 24);
  if (!v1)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_3(0);
    return 0;
  }

  blob = aks_ref_key_get_blob(v1, &length);
  if (!blob)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_2();
    return 0;
  }

  result = CFDataCreate(*MEMORY[0x277CBECE8], blob, length);
  if (!result)
  {
    AMFDRDeviceRefKeyCopyKeyBlob_cold_1();
    return 0;
  }

  return result;
}

uint64_t _AMFDRDeviceRefKeyClassInitialize()
{
  result = _CFRuntimeRegisterClass();
  _AMFDRDeviceRefKeyTypeID = result;
  return result;
}

void _AMFDRDeviceRefKeyClassFinalize(void *a1)
{
  if (!a1)
  {
    _AMFDRDeviceRefKeyClassFinalize_cold_1();
  }

  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  if (a1[3])
  {
    aks_ref_key_free(a1 + 3);
    a1[3] = 0;
  }

  v4 = a1[4];
  if (v4)
  {
    CFRelease(v4);
  }

  *v3 = 0;
  v3[1] = 0;
  v3[2] = 0;
}

__CFString *_AMFDRDeviceRefKeyCopyFormattingDescription(uint64_t a1)
{
  v2 = 0;
  if (!a1)
  {
    _AMFDRDeviceRefKeyCopyFormattingDescription_cold_2();
  }

  _AMFDRDeviceRefKeyCopyFormattingDescription_cold_1(a1, &v2, &v3);
  return v3;
}

CFDataRef AMFDRCryptoCreateCsr(const __CFData *a1, const __CFString *a2)
{
  PemFromData = a1;
  v21 = 0;
  cf = 0;
  theData = 0;
  if (!a1)
  {
    AMFDRCryptoCreateCsr_cold_8(0);
    goto LABEL_26;
  }

  if (AMFDRCryptoGetCryptoVersion(a1, 2u, &v21))
  {
    AMFDRCryptoCreateCsr_cold_1();
    goto LABEL_25;
  }

  if ((v21 & 0x10000) != 0)
  {
    v14 = *(PemFromData + 17);
    if (*v14 >= 0x29uLL && (v15 = v14[5]) != 0)
    {
      v13 = v15(PemFromData, *(PemFromData + 18));
      cf = v13;
      if (v13)
      {
        goto LABEL_19;
      }
    }

    else
    {
      cf = 0;
    }

    AMFDRCryptoCreateCsr_cold_2();
LABEL_25:
    PemFromData = 0;
    goto LABEL_26;
  }

  PrivateKey = AMFDRCryptoGetPrivateKey(PemFromData);
  theData = PrivateKey;
  if (PrivateKey)
  {
    v5 = PrivateKey;
    v6 = CFGetTypeID(PrivateKey);
    if (v6 == CFDataGetTypeID())
    {
      goto LABEL_10;
    }
  }

  v7 = *(PemFromData + 17);
  if (*v7 < 0x51uLL || (v8 = v7[10]) == 0)
  {
    v9 = 9;
    goto LABEL_24;
  }

  v9 = v8(PemFromData, &cf, &theData, *(PemFromData + 18));
  if (v9)
  {
LABEL_24:
    AMSupportLogInternal(3, "AMFDRCryptoCreateCsr", "AMFDRCopyDeviceKeys() returned error %d", v9);
    goto LABEL_25;
  }

  v5 = theData;
  if (!theData)
  {
LABEL_34:
    AMFDRCryptoCreateCsr_cold_7();
    goto LABEL_25;
  }

LABEL_10:
  v10 = CFGetTypeID(v5);
  if (v10 != CFDataGetTypeID())
  {
    goto LABEL_34;
  }

  v11 = cf;
  if (!cf)
  {
    CFDataGetBytePtr(theData);
    CFDataGetLength(theData);
    if (AMSupportRsaCreatePublicKeyFromPrivateKeyPEMBuffer())
    {
      AMFDRCryptoCreateCsr_cold_3();
      goto LABEL_25;
    }

    v11 = CFDataCreate(*MEMORY[0x277CBECE8], 0, 0);
    cf = v11;
    if (!v11)
    {
      goto LABEL_35;
    }
  }

  v12 = CFGetTypeID(v11);
  if (v12 != CFDataGetTypeID())
  {
LABEL_35:
    AMFDRCryptoCreateCsr_cold_6();
    goto LABEL_25;
  }

  v13 = cf;
LABEL_19:
  SignedCsr = AMFDRCryptoCreateSignedCsr(PemFromData, v21, a2, v13, AMFDRCryptoCreateCsrSignature, PemFromData);
  if (!SignedCsr)
  {
    AMFDRCryptoCreateCsr_cold_5();
    goto LABEL_25;
  }

  v17 = SignedCsr;
  PemFromData = AMFDRCryptoCreatePemFromData(SignedCsr, 1);
  if (!PemFromData)
  {
    AMFDRCryptoCreateCsr_cold_4();
  }

  CFRelease(v17);
LABEL_26:
  if (cf)
  {
    CFRelease(cf);
    cf = 0;
  }

  return PemFromData;
}

uint64_t AMFDRCryptoCreateDataSignature(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5, CFTypeRef cf)
{
  v24 = 0;
  v25 = 0;
  if (!cf || (v11 = a1, v12 = CFGetTypeID(cf), a1 = AMFDRGetTypeID(), v12 != a1))
  {
    AMFDRCryptoCreateDataSignature_cold_8(a1);
    goto LABEL_35;
  }

  if (!a2 || !a3)
  {
    AMFDRCryptoCreateDataSignature_cold_7(a1);
    goto LABEL_35;
  }

  if (!a4 || !a5)
  {
    AMFDRCryptoCreateDataSignature_cold_6(a1);
    goto LABEL_35;
  }

  v13 = 103;
  if (v11 != 66050 && v11 != 66562)
  {
    PrivateKey = AMFDRCryptoGetPrivateKey(cf);
    if (!PrivateKey || (v15 = PrivateKey, v16 = CFGetTypeID(PrivateKey), PrivateKey = CFDataGetTypeID(), v16 != PrivateKey))
    {
      AMFDRCryptoCreateDataSignature_cold_5(PrivateKey);
      goto LABEL_35;
    }

    CFDataGetBytePtr(v15);
    CFDataGetLength(v15);
    PrivateKeyFromPEMBuffer = AMSupportRsaCreatePrivateKeyFromPEMBuffer();
    if (PrivateKeyFromPEMBuffer)
    {
      v18 = PrivateKeyFromPEMBuffer;
      AMSupportLogInternal(3, "AMFDRCryptoCreateDataSignature", "AMSupportRsaCreatePrivateKeyFromPEMBuffer failed: %d", PrivateKeyFromPEMBuffer);
      goto LABEL_28;
    }

    v13 = 0;
  }

  v18 = 105;
  if (v11 > 66049)
  {
    if (v11 != 66050 && v11 != 66562)
    {
      goto LABEL_28;
    }

    v19 = *(cf + 17);
    if (*v19 >= 0x39uLL && (v20 = v19[7]) != 0)
    {
      v21 = v20(cf, a2, a3, &v25, &v24, *(cf + 18));
      if (!v21)
      {
        v18 = v13;
        if (v25)
        {
          v22 = v24;
          if (v24)
          {
            *a4 = v25;
            v25 = 0;
            v18 = 100;
            *a5 = v22;
            return v18;
          }

          AMFDRCryptoCreateDataSignature_cold_1();
        }

        else
        {
          AMFDRCryptoCreateDataSignature_cold_2();
        }

        goto LABEL_28;
      }
    }

    else
    {
      v21 = 9;
    }

    AMSupportLogInternal(3, "AMFDRCryptoCreateDataSignature", "RefKeySign failed: %d", v21);
    v18 = v13;
    goto LABEL_28;
  }

  if (v11 == 257 || v11 == 513 || v11 == 1025)
  {
    AMFDRCryptoCreateDataSignature_cold_4();
LABEL_35:
    v18 = 103;
  }

LABEL_28:
  if (v25)
  {
    free(v25);
    v25 = 0;
  }

  return v18;
}

uint64_t AMFDRCryptoCreateLocalSignedDataSignature(uint64_t a1, uint64_t a2, uint64_t a3, void **a4, void *a5)
{
  if (!a2 || !a3)
  {
    AMFDRCryptoCreateLocalSignedDataSignature_cold_6(a1);
    return 103;
  }

  if (!a4 || !a5)
  {
    AMFDRCryptoCreateLocalSignedDataSignature_cold_5(a1);
    return 103;
  }

  if ((a1 & 3) != 1 && (a1 & 3) != 2)
  {
    return 105;
  }

  DataFromPem = AMSupportRsaCreateDataFromPem();
  if (!DataFromPem)
  {
    AMFDRCryptoCreateLocalSignedDataSignature_cold_4();
    return 103;
  }

  v6 = DataFromPem;
  AMSupportLogInternal(3, "AMFDRCryptoCreateLocalSignedDataSignature", "failed to convert PEM to DER: %d", DataFromPem);
  return v6;
}

uint64_t AMFDRCreateEcDsaSignature(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a1 == 66562)
  {
    SignatureSha384 = AMSupportEcDsaCreateSignatureSha384();
  }

  else
  {
    if (a1 != 66050)
    {
      return 6;
    }

    SignatureSha384 = AMSupportEcDsaCreateSignatureSha256();
  }

  if (SignatureSha384)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

uint64_t AMFDRCryptoCreateLocalSignedCertificateData(uint64_t a1, void *a2, _DWORD *a3)
{
  if (a2)
  {
    if (a3)
    {
      if ((a1 & 3) == 1)
      {
        v5 = "-----BEGIN CERTIFICATE-----\nMIIEKTCCAxGgAwIBAgIJAIpZXkx8FEc8MA0GCSqGSIb3DQEBBQUAMIGbMQswCQYD\nVQQGEwJVUzETMBEGA1UECAwKQ2FsaWZvcm5pYTESMBAGA1UEBwwJQ3VwZXJ0aW5v\nMRMwEQYDVQQKDApBcHBsZSBJbmMuMQ8wDQYDVQQLDAZDb3JlT1MxFTATBgNVBAMM\nDEZEUi1MT0NBTC1WMTEmMCQGCSqGSIb3DQEJARYXZmRyLWRldkBncm91cC5hcHBs\nZS5jb20wHhcNMjIwNTA5MTUyOTQxWhcNMzIwNTA2MTUyOTQxWjCBmzELMAkGA1UE\nBhMCVVMxEzARBgNVBAgMCkNhbGlmb3JuaWExEjAQBgNVBAcMCUN1cGVydGlubzET\nMBEGA1UECgwKQXBwbGUgSW5jLjEPMA0GA1UECwwGQ29yZU9TMRUwEwYDVQQDDAxG\nRFItTE9DQUwtVjExJjAkBgkqhkiG9w0BCQEWF2Zkci1kZXZAZ3JvdXAuYXBwbGUu\nY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqDSCzDVLKL1ti0A5\n6ddmfyNhDRWpSTQM1eWgkOXeOrmXGuUF0l183cNLHmCDLCQF/gN2ZDOlH/mGv4DU\nKsVWZ4MV0fmoBUddlXlMH3lYT+4ZvWlH0bp5OX5UmVKxfvKMBl5jKkmANEZYmHu7\nVFiy3/7S4ca064Lfq1lNefMc0OM9oxulXlAICBwiwxiJKoPOa3/fgdx61lzMnWRa\nU72XCh8jZdDBJDd5wFgPVGYJMFCbAlgKrEvLPT0Ih9TiWZO97YlnvTeO2PrJtztb\nc3coQKfq9fOkLL9CyUrMUY4q7IJGBI1z4pB+UBS/ZgJ3/cBNvdhW5is2JVx113hl\nIskfCQIDAQABo24wbDAdBgNVHQ4EFgQU0QoF+nE1hlJxSQU0TutWjH2N2dUwCQYD\nVR0TBAIwADALBgNVHQ8EBAMCBeAwGgYJKoZIhvdjZAYQBA0MC3Blcm1pc3Npb25z\nMBcGCSqGSIb3Y2QGEQQKDAhjbGllbnRpZDANBgkqhkiG9w0BAQUFAAOCAQEAFjVa\nsSNfZOzLK10c16i06IRkqLx7xRo7ycnbSazwgNLxsGYNqzueBKI634nX4/MkFzgn\nsIz3rayMogDSgcZmrMe63JmvKJwOWYNFQDs2fTCFNyHBU3lQRL67dddJ8vKKUgPF\n4zLSbg80sYVkMAxpAjdIxDoXAGZX9ss8l4Z7QtbNHEUZoihXz5dWhjTUHfsNZsG4\nMxCIO9wniOpG5C/bUquZXq+Q75j4P4fC/KEfC70G/LVXzCTii+vEE6WTz8XhG2Ek\noZt6eUiXbC8LjA4Iss8POlr9oTj1y9zsZwdUN7E6/crQhtc68El3XcGWTvveMWIw\n/Ry4bOUy5w0BVWlJEA==\n-----END CERTIFICATE-----";
        v6 = 1505;
      }

      else
      {
        if ((a1 & 3) != 2)
        {
          return 9;
        }

        v5 = "-----BEGIN CERTIFICATE-----\nMIIDzDCCAbSgAwIBAgIGAflWiCu0MA0GCSqGSIb3DQEBCwUAMEcxEzARBgNVBAgM\nCkNhbGlmb3JuaWExEzARBgNVBAoMCkFwcGxlIEluYy4xGzAZBgNVBAMMEkZEUi1D\nQTEtUk9PVC1MT0NBTDAeFw0yMjA0MjEwODQ0MTFaFw0zMjA0MTgwODQ0MTFaMEgx\nCzAJBgNVBAYTAlVTMRMwEQYDVQQKDApBcHBsZSBJbmMuMRAwDgYDVQQLDAdEZXZp\nY2VzMRIwEAYDVQQDDAlGRFItTE9DQUwwWTATBgcqhkjOPQIBBggqhkjOPQMBBwNC\nAATstM3jcCQWuq9Bg83QA8IlrIKWDtWxssWc1c4hdDg/wsmD6Xb+xb45NCRgFnBW\nSS1+dvn52D3WUU5HVS412NMxo4GHMIGEMFoGCiqGSIb3Y2QGAQ8ETDFK/4T6iZRQ\nQzBBFgRPQkpQMTn/hKKdplQMMAoWBERHU1SgAgUA/4absdJkDDAKFgRjbGlkoAIF\nAP+Gy7nmdAwwChYEaW5zdKACBQAwEAYJKoZIhvdjZAYQBAMMASowFAYJKoZIhvdj\nZAYRBAcMBUxvY2FsMA0GCSqGSIb3DQEBCwUAA4ICAQBvsxDEZweOcEo10OpMUpx2\nNZTy4BvSNqKOlv1nHTLqESHYTfik/L3mqTeOoWe20UkMY/e3vKwJWbgavzw7WOxb\n65bQ+ixU5VQUZzy1XlaQkIW49Tqid1WViSNNlqEXJLTj8lsplpuy5iT/WndNWczq\nopM3SkdS5YgjAqP4r8qoOAK7pSoMvLd6LTijbp9pTKDTseoXoJsVgPA/LNbW0FvR\nQxJyVVYkFnN1jtZB2ge5tqpuEuXwyCa/1bC9H8WE49uHyABIzfRaLEs7JbYvIaDH\nrgcoErGtyADmR/OvhMXryBz+USUG8bZtD/VoCsoIhoJFSVOBNDZXD59arISbjl8q\n8lbmCloZmocbUPMRinXDbpwMcAfQhv2sV/J6T5+TFAeRdSORhnwnle+56sedvugJ\ne8QOz85eTifA/KIuSTh+uKkrod3chBgHrh0PvJafOhcmYqhRbqV4guMXi53UrTLi\nVP68jydKSP2+gLinzYw/J0G/fE88SoWNBcihGjgNrfn8MIAZpVVEQ34PLozWKiXq\nhZ1VOA54XfeKlNp9Fxuuif0ZNPZ4q7ztbeR3aALN8lVkh/AfmpHNi6oN6LBu0zJw\nZ9AX2sUNOH0DOOMdojFblTdyuINrt2Tr4ccpHS1htnNR0ro82kZpkJH/zES/oYTA\nh0Sm4iIj1I5P1NFGq/jR8A==\n-----END CERTIFICATE-----";
        v6 = 1379;
      }

      v7 = malloc_type_calloc(1uLL, v6, 0x100004077774924uLL);
      *a2 = v7;
      if (v7)
      {
        memcpy(v7, v5, v6);
        result = 0;
        *a3 = v6;
        return result;
      }

      AMFDRCryptoCreateLocalSignedCertificateData_cold_1(0);
    }

    else
    {
      AMFDRCryptoCreateLocalSignedCertificateData_cold_2(a1);
    }
  }

  else
  {
    AMFDRCryptoCreateLocalSignedCertificateData_cold_3(a1);
  }

  return 199;
}

uint64_t AMFDRCryptoCopyAttestation(void *a1)
{
  if (!a1 || (v1 = a1, v2 = CFGetTypeID(a1), a1 = AMFDRGetTypeID(), v2 != a1))
  {
    AMFDRCryptoCopyAttestation_cold_1(a1);
    return 0;
  }

  v3 = v1[17];
  if (*v3 < 0x31uLL)
  {
    return 0;
  }

  v4 = v3[6];
  if (!v4)
  {
    return 0;
  }

  v5 = v1[18];

  return v4(v1, v5);
}

uint64_t AMFDRCryptoCopyRefKeyPub(void *a1)
{
  if (!a1 || (v1 = a1, v2 = CFGetTypeID(a1), a1 = AMFDRGetTypeID(), v2 != a1))
  {
    AMFDRCryptoCopyRefKeyPub_cold_1(a1);
    return 0;
  }

  v3 = v1[17];
  if (*v3 < 0x29uLL)
  {
    return 0;
  }

  v4 = v3[5];
  if (!v4)
  {
    return 0;
  }

  v5 = v1[18];

  return v4(v1, v5);
}

BOOL AMFDRDigestMd5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    ccmd5_di();
    ccdigest();
  }

  else
  {
    AMFDRDigestMd5_cold_1(0);
  }

  return a1 != 0;
}

uint64_t OUTLINED_FUNCTION_2(uint64_t a1)
{

  return ccdigest();
}

_BYTE *_FDREncodeLength(_BYTE *result, unsigned int a2)
{
  v5[1] = *MEMORY[0x277D85DE8];
  if (result)
  {
    if (a2 > 0x7F)
    {
      v3 = 0;
      v5[0] = 0;
      do
      {
        *(v5 + v3++) = a2;
        v4 = a2 > 0xFF;
        a2 >>= 8;
      }

      while (v4);
      LODWORD(v2) = result;
      if ((v3 - 1) <= 6)
      {
        *result = v3 | 0x80;
        v2 = result + 1;
        do
        {
          *v2++ = *(&v5[-1] + v3-- + 7);
        }

        while (v3);
      }
    }

    else
    {
      *result = a2;
      LODWORD(v2) = result + 1;
    }

    return (v2 - result);
  }

  return result;
}

uint64_t FDREncoderAddSequenceProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a1 || !a2 || !a3 && a4 || !DEREncoderCreate())
  {
    FDREncoderAddSequenceProperty_cold_2();
    return 3;
  }

  if (DEREncoderAddDataNoCopy())
  {
    AMSupportLogInternal(3, "FDREncoderAddSequenceProperty", "failed to add %s string");
LABEL_17:
    v6 = 3;
    AMSupportLogInternal(3, "FDREncoderAddSequenceProperty", "%s failed to create DER file", "FDREncoderAddSequenceProperty");
    goto LABEL_11;
  }

  if (a3 && DEREncoderAddDataNoCopy())
  {
    AMSupportLogInternal(3, "FDREncoderAddSequenceProperty", "failed to add %s data");
    goto LABEL_17;
  }

  v5 = DEREncoderAddSequenceFromEncoder();
  if (v5)
  {
    FDREncoderAddSequenceProperty_cold_1(v5);
    goto LABEL_17;
  }

  v6 = 0;
LABEL_11:
  DEREncoderDestroy();
  return v6;
}

uint64_t FDREncodeCreateSignedManifest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, void **a7, _DWORD *a8)
{
  if (AMSupportRsaCreateDataFromPem())
  {
    FDREncodeCreateSignedManifest_cold_1();
    return 3;
  }

  else
  {
    Manifest = Img4EncodeCreateManifest();
    if (Manifest == 100)
    {
      FDREncodeCreateSignedManifest_cold_2();
      return 10;
    }

    else
    {
      AMSupportLogInternal(3, "FDREncodeCreateSignedManifest", "Img4EncodeCreateManifest failed %d", Manifest);
      return 16;
    }
  }
}

uint64_t _FDREncodeAddManifestProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 101;
  if (!a1)
  {
    goto LABEL_33;
  }

  if (!a2)
  {
    goto LABEL_33;
  }

  if (!a3)
  {
    goto LABEL_33;
  }

  v3 = Img4EncodeItemBegin();
  if (v3 != 100)
  {
    goto LABEL_33;
  }

  v5 = malloc_type_malloc(0x20uLL, 0x59BF3763uLL);
  if (!v5)
  {
    _FDREncodeAddManifestProperties_cold_2();
    v3 = 2;
LABEL_33:
    Img4EncodeItemDestroy();
    return v3;
  }

  v6 = v5;
  for (i = 0; i != 32; i += 4)
  {
    *&v6[i] = arc4random();
  }

  v8 = Img4EncodeItemPropertyData();
  if (v8 != 100)
  {
    goto LABEL_28;
  }

  if (*a3)
  {
    if (*(a3 + 8))
    {
      v8 = Img4EncodeItemPropertyData();
      if (v8 != 100)
      {
        goto LABEL_28;
      }
    }
  }

  if (*(a3 + 16))
  {
    if (*(a3 + 24))
    {
      v8 = Img4EncodeItemPropertyData();
      if (v8 != 100)
      {
        goto LABEL_28;
      }
    }
  }

  v8 = Img4EncodeItemPropertyBool();
  if (v8 != 100)
  {
    goto LABEL_28;
  }

  v9 = *(a3 + 48);
  if (!v9 || !*v9)
  {
LABEL_26:
    v8 = Img4EncodeItemEnd();
    if (v8 == 100)
    {
      v8 = Img4EncodeItemCopyBuffer();
    }

LABEL_28:
    v3 = v8;
    goto LABEL_29;
  }

  v10 = 0;
  while (1)
  {
    v11 = *(*(v9 + 4) + 4 * v10);
    if (!v11)
    {
      v12 = Img4EncodeItemPropertyData();
      goto LABEL_24;
    }

    if (v11 != 1)
    {
      AMSupportLogInternal(3, "_FDREncodeAddManifestProperties", "unsupported encode type");
      goto LABEL_31;
    }

    if (*(*(v9 + 3) + 4 * v10) != 8)
    {
      break;
    }

    v12 = Img4EncodeItemPropertyInt64();
LABEL_24:
    v3 = v12;
    if (v12 != 100)
    {
      goto LABEL_29;
    }

    ++v10;
    v9 = *(a3 + 48);
    if (v10 >= *v9)
    {
      goto LABEL_26;
    }
  }

  _FDREncodeAddManifestProperties_cold_1();
LABEL_31:
  v3 = 101;
LABEL_29:
  Img4EncodeItemDestroy();
  free(v6);
  return v3;
}

uint64_t _FDREncodeAddObjectProperties(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 101;
  if (a1 && a2)
  {
    if (a3)
    {
      if (*(a3 + 32))
      {
        v5 = 0;
        v6 = 48;
        while (1)
        {
          v7 = *(a3 + 40);
          v8 = Img4EncodeItemBegin();
          if (v8 != 100)
          {
            break;
          }

          v8 = Img4EncodeItemPropertyData();
          if (v8 != 100)
          {
            break;
          }

          v8 = Img4EncodeItemPropertyData();
          if (v8 != 100)
          {
            break;
          }

          v8 = Img4EncodeItemPropertyData();
          if (v8 != 100)
          {
            break;
          }

          if (*(v7 + v6))
          {
            v8 = Img4EncodeItemPropertyData();
            if (v8 != 100)
            {
              break;
            }
          }

          if (*(v7 + v6 + 16))
          {
            v8 = Img4EncodeItemPropertyData();
            if (v8 != 100)
            {
              break;
            }
          }

          if (*(v7 + v6 + 32))
          {
            v8 = Img4EncodeItemPropertyData();
            if (v8 != 100)
            {
              break;
            }
          }

          v8 = Img4EncodeItemEnd();
          if (v8 != 100)
          {
            break;
          }

          ++v5;
          v6 += 96;
          if (v5 >= *(a3 + 32))
          {
            goto LABEL_20;
          }
        }

        v3 = v8;
        AMSupportLogInternal(3, "_FDREncodeAddObjectProperties", "FDREncodeManifestObject failed");
      }

      else
      {
LABEL_20:
        v3 = Img4EncodeItemCopyBuffer();
      }
    }

    else
    {
      _FDREncodeAddObjectProperties_cold_1(a1);
    }
  }

  Img4EncodeItemDestroy();
  return v3;
}

uint64_t FDREncodeCreateSignedData(uint64_t a1, uint64_t a2, char *a3, int a4, uint64_t a5, int a6, uint64_t a7, int a8, uint64_t a9, int a10, uint64_t a11, unsigned int a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v72 = 0;
  v71 = 0;
  v70 = 0;
  v69 = 0;
  v68 = 0;
  v67 = 0;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v24 = *(a1 + 24);
  v63 = 0;
  v62 = 0;
  v61 = 0;
  *__dst = 0;
  v59 = 0;
  memset(v58, 170, sizeof(v58));
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[17] = v25;
  v57[18] = v25;
  v57[15] = v25;
  v57[16] = v25;
  v57[13] = v25;
  v57[14] = v25;
  v57[11] = v25;
  v57[12] = v25;
  v57[9] = v25;
  v57[10] = v25;
  v57[7] = v25;
  v57[8] = v25;
  v57[5] = v25;
  v57[6] = v25;
  v57[3] = v25;
  v57[4] = v25;
  v57[1] = v25;
  v57[2] = v25;
  v57[0] = v25;
  v56 = v57;
  v26 = malloc_type_calloc(1uLL, 0x30uLL, 0x100004077774924uLL);
  if (!v26)
  {
    AMSupportLogInternal(3, "FDREncodeCreateSignedData", "Failed to allocation digest buffer");
    v27 = 2;
    goto LABEL_11;
  }

  if (a4 != 4)
  {
    AMSupportLogInternal(3, "FDREncodeCreateSignedData", "dataClassLength is %d, unexpected...", a4);
    v27 = 199;
    goto LABEL_11;
  }

  strncpy(__dst, a3, 4uLL);
  if (Img4EncodeCreatePayload() != 100)
  {
    AMSupportLogInternal(3, "FDREncodeCreateSignedData", "Img4EncodeCreatePayload failed %d");
    goto LABEL_10;
  }

  if (!v72 || !v71)
  {
    AMSupportLogInternal(3, "FDREncodeCreateSignedData", "Img4EncodeCreatePayload returned an empty payload");
LABEL_7:
    v27 = 10;
    goto LABEL_11;
  }

  v27 = _FDREncodeDigestCompute(v72, v71, v26, **(a1 + 16), *(a1 + 16));
  if (!v27)
  {
    v29 = AMFDREncodeProducerIDBegin(&v59);
    if (v29)
    {
      v27 = v29;
      AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDREncodeProducerIDBegin failed %d", v29);
      goto LABEL_11;
    }

    v30 = *(a1 + 40);
    if (!v30)
    {
      FDREncodeCreateSignedData_cold_3();
      goto LABEL_40;
    }

    v31 = v30(&v63, &v62, a2);
    if (!v31)
    {
      if (!v63 || !v62)
      {
        FDREncodeCreateSignedData_cold_2();
        goto LABEL_40;
      }

      DataFromPem = AMSupportRsaCreateDataFromPem();
      if (DataFromPem)
      {
        v27 = DataFromPem;
        AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMSupportX509CreateDerCertFromPEM failed %d");
        goto LABEL_11;
      }

      if (AMFDRDecodeIterateCertChainBegin(v58, v66, v65))
      {
        AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDRDecodeIterateCertChainBegin failed %d");
LABEL_40:
        v27 = 0;
        goto LABEL_11;
      }

      AMFDRDecodeIterateCertChainNext(v58, &v56, &v64);
      if (v33)
      {
        AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDRDecodeIterateCertChainNext failed %d");
        goto LABEL_40;
      }

      while (v56)
      {
        v34 = AMFDREncodeProducerIDAddDigestFromData(&v59, v24, *(v56 + 18), *(v56 + 38));
        if (v34 || (v34 = AMFDREncodeProducerIDAddDigestFromData(&v59, v24, *(v56 + 32), *(v56 + 66)), v34))
        {
          v27 = v34;
          AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDREncodeProducerIDAddDigestFromData failed %d");
          goto LABEL_11;
        }

        v35 = AMFDREncodeProducerIDAddDigestFromData(&v59, v24, *(v56 + 34), *(v56 + 70));
        v27 = v35;
        if (v35)
        {
          AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDREncodeProducerIDAddDigestFromData failed %d", v35);
        }

        AMFDRDecodeIterateCertChainNext(v58, &v56, &v64);
        if (v36)
        {
          AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDRDecodeIterateCertChainNext failed %d");
          goto LABEL_11;
        }
      }

      v37 = AMFDREncodeProducerIDEnd(&v59);
      if (v37)
      {
        v27 = v37;
        AMSupportLogInternal(3, "FDREncodeCreateSignedData", "AMFDREncodeProducerIDEnd failed %d");
        goto LABEL_11;
      }

      *&v38 = 0xAAAAAAAAAAAAAAAALL;
      *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v48 = -1431655766;
      v50 = v38;
      v51 = v38;
      v46[0] = a3;
      v46[1] = 0xAAAAAAAA00000004;
      v46[2] = a5;
      v47 = a6;
      v49 = v26;
      v39 = *(a1 + 16);
      v52 = 0xAAAAAAAAAAAAAAAALL;
      LODWORD(v50) = *v39;
      *(&v50 + 1) = v68;
      LODWORD(v51) = v67;
      *(&v51 + 1) = a7;
      LODWORD(v52) = a8;
      v53 = a9;
      v54 = a10;
      v55 = AMFDRTagsStringToTag(a3);
      v40[0] = 0;
      v40[1] = 0xAAAAAAAA00000000;
      v40[2] = v68;
      v42 = -1431655766;
      v41 = v67;
      LOBYTE(v42) = a13;
      v43 = 1;
      v44 = v46;
      v45 = a14;
      if (FDREncodeCreateSignedManifest(*(a1 + 8), *(a1 + 32), a2, v63, v62, v40, &v70, &v69))
      {
        AMSupportLogInternal(3, "FDREncodeCreateSignedData", "FDREncodeCreateSignedManifest failed %d");
      }

      else
      {
        if (!v70 || !v69)
        {
          AMSupportLogInternal(3, "FDREncodeCreateSignedData", "FDREncodeCreateSignedManifest returned an empty manifest");
          goto LABEL_7;
        }

        if (Img4EncodeStitchManifest() == 100)
        {
          if (!a15 || !a16)
          {
            AMSupportLogInternal(3, "FDREncodeCreateSignedData", "Img4EncodeStitchManifest returned empty data");
            goto LABEL_7;
          }

          goto LABEL_40;
        }

        AMSupportLogInternal(3, "FDREncodeCreateSignedData", "Img4EncodeStitchManifest failed %d");
      }

LABEL_10:
      v27 = 16;
      goto LABEL_11;
    }

    v27 = v31;
    FDREncodeCreateSignedData_cold_1();
  }

LABEL_11:
  if (v72)
  {
    free(v72);
    v72 = 0;
  }

  if (v70)
  {
    free(v70);
  }

  if (v68)
  {
    free(v68);
    v68 = 0;
  }

  if (v66)
  {
    free(v66);
    v66 = 0;
  }

  if (v26)
  {
    free(v26);
  }

  if (v63)
  {
    free(v63);
    v63 = 0;
  }

  if (v59)
  {
    AMFDREncodeProducerIDEnd(&v59);
  }

  return v27;
}

void AMFDREncodeMultiRequestDestroy(uint64_t a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (*v2)
      {
        DEREncoderDestroy();
        **a1 = 0;
        v2 = *a1;
      }

      if (v2[1])
      {
        DEREncoderDestroy();
        *(*a1 + 8) = 0;
        v2 = *a1;
      }

      if (!v2[2] || (DEREncoderDestroy(), *(*a1 + 16) = 0, (v2 = *a1) != 0))
      {
        free(v2);
      }

      *a1 = 0;
    }
  }
}

uint64_t AMFDREncodeMultiResponseBegin(uint64_t a1, char a2)
{
  v3 = malloc_type_calloc(1uLL, 0x18uLL, 0x20040960023A9uLL);
  *a1 = v3;
  if (!v3)
  {
    AMFDREncodeMultiResponseBegin_cold_5(0);
    return 2;
  }

  v4 = DEREncoderCreate();
  **a1 = v4;
  if (!**a1)
  {
    AMFDREncodeMultiResponseBegin_cold_4(v4);
    return 2;
  }

  v5 = DEREncoderCreate();
  *(*a1 + 8) = v5;
  if (!*(*a1 + 8))
  {
    AMFDREncodeMultiResponseBegin_cold_3(v5);
    return 2;
  }

  v6 = DEREncoderCreate();
  *(*a1 + 16) = v6;
  if (!*(*a1 + 16))
  {
    AMFDREncodeMultiResponseBegin_cold_2(v6);
    return 2;
  }

  v7 = DEREncoderAddData();
  result = 0;
  if (v7)
  {
    AMFDREncodeMultiResponseBegin_cold_1();
    return 3;
  }

  return result;
}

uint64_t AMFDREncodeMetadataBegin(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2)
  {
    v5 = "metadataContext is NULL";
LABEL_6:
    AMFDREncodeMetadataBegin_cold_1(v5);
    return 2;
  }

  v3 = DEREncoderCreate();
  result = 0;
  **a1 = v3;
  if (!**a1)
  {
    v5 = "failed to allocate sequenceEncoder";
    goto LABEL_6;
  }

  return result;
}

void AMFDREncodeMetadataDestroy(void **a1)
{
  if (a1)
  {
    v2 = *a1;
    if (v2)
    {
      if (!*v2 || (DEREncoderDestroy(), **a1 = 0, (v2 = *a1) != 0))
      {
        free(v2);
      }

      *a1 = 0;
    }
  }
}

uint64_t AMFDREncodeMetaPropertyBegin(void *a1)
{
  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2)
  {
    v5 = "metaContext is NULL";
LABEL_6:
    AMFDREncodeMetaPropertyBegin_cold_1(v5);
    return 2;
  }

  v3 = DEREncoderCreate();
  result = 0;
  **a1 = v3;
  if (!**a1)
  {
    v5 = "failed to allocate sequenceEncoder";
    goto LABEL_6;
  }

  return result;
}

uint64_t _FDREncodeCreateDataFromOid(char *a1, void *a2, _DWORD *a3)
{
  __lasts = a1;
  v6 = malloc_type_malloc(0x100uLL, 0x234C02C2uLL);
  if (!v6)
  {
    _FDREncodeCreateDataFromOid_cold_3(0);
    return 2;
  }

  v7 = v6;
  v8 = strlen(a1);
  v9 = malloc_type_malloc(v8 + 1, 0xB814BFBuLL);
  if (!v9)
  {
    _FDREncodeCreateDataFromOid_cold_2(0);
    v23 = 2;
    goto LABEL_24;
  }

  v10 = strlen(a1);
  memcpy(v9, a1, v10 + 1);
  v11 = strtok_r(v9, ".", &__lasts);
  if (!v11)
  {
    v14 = 0;
LABEL_20:
    v23 = 0;
    *a2 = v7;
    *a3 = v14;
LABEL_21:
    free(v9);
    return v23;
  }

  v12 = v11;
  v13 = 0;
  v14 = 0;
  while (1)
  {
    *__error() = 0;
    v15 = strtoul(v12, 0, 10);
    if (*__error())
    {
      v26 = v12;
      v25 = "invalid oid sub-identifier %s";
LABEL_28:
      v23 = 3;
      AMSupportLogInternal(3, "_FDREncodeCreateDataFromOid", v25, v26, __lasts);
      goto LABEL_24;
    }

    if (HIDWORD(v15))
    {
      v26 = v15;
      v25 = "oid sub-identifier %ul too long";
      goto LABEL_28;
    }

    if (!v13)
    {
      v7[v14] = v15;
      goto LABEL_17;
    }

    if (v13 != 1)
    {
      break;
    }

    v7[v14] = v15 + 40 * v7[v14];
    ++v14;
LABEL_17:
    ++v13;
    v12 = strtok_r(0, ".", &__lasts);
    if (!v12)
    {
      goto LABEL_20;
    }
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v14;
  while (1)
  {
    v20 = v16;
    for (i = v19; v20; --v20)
    {
      v7[i] = v7[i - 1];
      --i;
    }

    v7[v14] = v15 & 0x7F | v17;
    if ((++v18 + v14) >= 0x100)
    {
      break;
    }

    ++v16;
    ++v19;
    v17 = 0x80;
    v22 = v15 >= 0x80;
    v15 >>= 7;
    if (!v22)
    {
      v14 += v18;
      goto LABEL_17;
    }
  }

  _FDREncodeCreateDataFromOid_cold_1();
  v23 = 3;
LABEL_24:
  free(v7);
  if (v9)
  {
    goto LABEL_21;
  }

  return v23;
}

uint64_t AMFDREncodeCertificateRequestCreateUnsginedData(void **a1, const void *a2, uint64_t a3, char *a4, char *a5, void **a6, _DWORD *a7)
{
  v7 = 0;
  v31 = 2;
  v30 = 0;
  v29 = 0;
  v27 = 1;
  if (a1)
  {
    if (a2)
    {
      v9 = a3;
      if (a3)
      {
        if (a4 && a6)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = 0;
          if (!a7)
          {
            goto LABEL_58;
          }

          v14 = DEREncoderCreate();
          if (!v14)
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_18(0);
            v7 = 0;
            v11 = 0;
            v12 = 0;
            v13 = 0;
            goto LABEL_73;
          }

          v13 = DEREncoderCreate();
          if (!v13)
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_17(0);
            v7 = 0;
            v11 = 0;
            v12 = 0;
            goto LABEL_73;
          }

          v12 = DEREncoderCreate();
          if (!v12)
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_16(0);
            v7 = 0;
            v11 = 0;
            goto LABEL_73;
          }

          v11 = DEREncoderCreate();
          if (!v11)
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_15(0);
            v7 = 0;
            goto LABEL_73;
          }

          v7 = DEREncoderCreate();
          if (!v7)
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_14(0);
            goto LABEL_73;
          }

          if (DEREncoderAddDataNoCopy())
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_1();
            goto LABEL_56;
          }

          if (DEREncoderAddSequenceFromEncoder())
          {
            AMFDREncodeCertificateRequestCreateUnsginedData_cold_2();
            goto LABEL_56;
          }

          v17 = _FDREncodeCreateDataFromOid(a4, &v30, &v29);
          v18 = v30;
          if (!v17)
          {
            if (DEREncoderAddData())
            {
              AMSupportLogInternal(3, "AMFDREncodeCertificateRequestCreateUnsginedData", "failed to add pubkeyOid");
            }

            else
            {
              if (v18)
              {
                free(v18);
                v30 = 0;
              }

              if (!a5)
              {
                if (DEREncoderAddDataNoCopy())
                {
                  AMFDREncodeCertificateRequestCreateUnsginedData_cold_3();
                  goto LABEL_56;
                }

LABEL_23:
                if (DEREncoderAddSequenceFromEncoder())
                {
                  AMFDREncodeCertificateRequestCreateUnsginedData_cold_4();
                }

                else if (AMFDREncodeAddBitString(v12, a2, v9))
                {
                  AMFDREncodeCertificateRequestCreateUnsginedData_cold_5();
                }

                else
                {
                  if (!DEREncoderAddSequenceFromEncoder())
                  {
                    DEREncoderDestroy();
                    v13 = DEREncoderCreate();
                    if (v13)
                    {
                      v20 = _FDREncodeCreateDataFromOid("1.2.840.113549.1.9.14", &v30, &v29);
                      v18 = v30;
                      if (!v20)
                      {
                        if (!DEREncoderAddData())
                        {
                          if (v18)
                          {
                            free(v18);
                            v30 = 0;
                          }

                          v21 = (*a1)[1];
                          v33 = 0;
                          v32 = 0;
                          if (!v21)
                          {
                            goto LABEL_55;
                          }

                          EncodedBuffer = DEREncoderCreateEncodedBuffer();
                          if (!EncodedBuffer)
                          {
                            EncodedBuffer = DEREncoderAddData();
                          }

                          if (v32)
                          {
                            free(v32);
                          }

                          if (EncodedBuffer)
                          {
LABEL_55:
                            AMFDREncodeCertificateRequestCreateUnsginedData_cold_12();
                          }

                          else if (DEREncoderAddSetFromEncoder())
                          {
                            AMFDREncodeCertificateRequestCreateUnsginedData_cold_7();
                          }

                          else if (DEREncoderAddSequenceFromEncoder())
                          {
                            AMFDREncodeCertificateRequestCreateUnsginedData_cold_8();
                          }

                          else if (DEREncoderAddDataFromEncoder())
                          {
                            AMFDREncodeCertificateRequestCreateUnsginedData_cold_9();
                          }

                          else if (DEREncoderAddSequenceFromEncoder())
                          {
                            AMFDREncodeCertificateRequestCreateUnsginedData_cold_10();
                          }

                          else
                          {
                            if (!DEREncoderCreateEncodedBuffer())
                            {
                              v23 = 0;
                              *a6 = 0;
                              *a7 = 0;
LABEL_43:
                              DEREncoderDestroy();
                              goto LABEL_44;
                            }

                            AMFDREncodeCertificateRequestCreateUnsginedData_cold_11();
                          }

                          goto LABEL_56;
                        }

                        AMSupportLogInternal(3, "AMFDREncodeCertificateRequestCreateUnsginedData", "failed to add data to pubkeyOid");
                      }

                      goto LABEL_76;
                    }

                    AMFDREncodeCertificateRequestCreateUnsginedData_cold_13();
LABEL_73:
                    v25 = 2;
                    goto LABEL_57;
                  }

                  AMFDREncodeCertificateRequestCreateUnsginedData_cold_6();
                }

LABEL_56:
                v25 = 3;
LABEL_57:
                v27 = v25;
                goto LABEL_58;
              }

              v19 = _FDREncodeCreateDataFromOid(a5, &v30, &v29);
              v18 = v30;
              if (!v19)
              {
                if (!DEREncoderAddData())
                {
                  if (v18)
                  {
                    free(v18);
                    v30 = 0;
                  }

                  goto LABEL_23;
                }

                AMSupportLogInternal(3, "AMFDREncodeCertificateRequestCreateUnsginedData", "failed to add pubkeyOidParams");
              }
            }
          }

LABEL_76:
          if (v18)
          {
            free(v18);
            v30 = 0;
          }

          goto LABEL_56;
        }
      }
    }
  }

  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
LABEL_58:
  v23 = v27;
  if (v14)
  {
    goto LABEL_43;
  }

LABEL_44:
  if (v13)
  {
    DEREncoderDestroy();
  }

  if (v12)
  {
    DEREncoderDestroy();
  }

  if (v11)
  {
    DEREncoderDestroy();
  }

  if (v7)
  {
    DEREncoderDestroy();
  }

  return v23;
}

uint64_t AMFDREncodeCertificateRequestEnd(uint64_t a1, const void *a2, uint64_t a3, char *a4, char *a5, int a6, void **a7, _DWORD *a8)
{
  v9 = 0;
  v28 = 0;
  v27 = 0;
  HIDWORD(v26) = 0;
  v10 = 1;
  if (!a1 || !a2 || (v12 = a3) == 0 || !a4 || !a7)
  {
    v16 = 0;
    goto LABEL_43;
  }

  v16 = 0;
  if (!a8)
  {
    goto LABEL_43;
  }

  LODWORD(v26) = a6;
  v16 = DEREncoderCreate();
  if (!v16)
  {
    AMFDREncodeCertificateRequestEnd_cold_7(0);
    v9 = 0;
LABEL_33:
    v10 = 2;
    goto LABEL_43;
  }

  v9 = DEREncoderCreate();
  if (!v9)
  {
    AMFDREncodeCertificateRequestEnd_cold_6(0);
    goto LABEL_33;
  }

  v18 = _FDREncodeCreateDataFromOid(a4, &v28, &v27);
  v19 = v28;
  if (v18)
  {
    goto LABEL_40;
  }

  if (DEREncoderAddData())
  {
    AMSupportLogInternal(3, "AMFDREncodeCertificateRequestEnd", "failed to add signatureOid", v26);
LABEL_40:
    if (v19)
    {
      free(v19);
      v28 = 0;
    }

    goto LABEL_42;
  }

  if (v19)
  {
    free(v19);
    v28 = 0;
  }

  if (a5)
  {
    v20 = _FDREncodeCreateDataFromOid(a5, &v28, &v27);
    v19 = v28;
    if (!v20)
    {
      if (!DEREncoderAddData())
      {
        if (v19)
        {
          free(v19);
          v28 = 0;
        }

LABEL_18:
        v21 = DEREncoderAddSequenceFromEncoder();
        if (v21)
        {
          AMFDREncodeCertificateRequestEnd_cold_2(v21);
        }

        else
        {
          v22 = AMFDREncodeAddBitString(*(*a1 + 16), a2, v12);
          if (v22)
          {
            AMFDREncodeCertificateRequestEnd_cold_3(v22);
          }

          else
          {
            v23 = DEREncoderAddSequenceFromEncoder();
            if (v23)
            {
              AMFDREncodeCertificateRequestEnd_cold_4(v23);
            }

            else
            {
              if (!DEREncoderCreateEncodedBuffer())
              {
                v10 = 0;
                *a7 = 0;
                *a8 = 0;
LABEL_23:
                DEREncoderDestroy();
                goto LABEL_24;
              }

              AMFDREncodeCertificateRequestEnd_cold_5();
            }
          }
        }

        goto LABEL_42;
      }

      AMSupportLogInternal(3, "AMFDREncodeCertificateRequestEnd", "failed to add signatureOidParams", v26);
    }

    goto LABEL_40;
  }

  if (v26)
  {
    goto LABEL_18;
  }

  v25 = DEREncoderAddDataNoCopy();
  if (!v25)
  {
    goto LABEL_18;
  }

  AMFDREncodeCertificateRequestEnd_cold_1(v25);
LABEL_42:
  v10 = 3;
LABEL_43:
  if (v16)
  {
    goto LABEL_23;
  }

LABEL_24:
  if (v9)
  {
    DEREncoderDestroy();
  }

  AMFDREncodeMultiRequestDestroy(a1);
  return v10;
}

uint64_t AMFDREncodeCreatePayloadAndDigest(uint64_t a1, const char *a2, int a3, uint64_t a4, uint64_t a5, void **a6, unsigned int *a7, void *a8, _DWORD *a9)
{
  v22 = 0;
  v21 = 0;
  v20 = 0;
  *__dst = 0;
  v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x100004077774924uLL);
  if (v15)
  {
    if (a3 == 4)
    {
      strncpy(__dst, a2, 4uLL);
      Payload = Img4EncodeCreatePayload();
      if (Payload == 100)
      {
        if (!v22 || !v21)
        {
          AMSupportLogInternal(3, "AMFDREncodeCreatePayloadAndDigest", "Img4EncodeCreatePayload returned an empty payload");
LABEL_7:
          v17 = 10;
          goto LABEL_10;
        }

        if (_FDREncodeDigestCompute(v22, v21, v15, **(a1 + 16), *(a1 + 16)))
        {
          AMSupportLogInternal(3, "AMFDREncodeCreatePayloadAndDigest", "failed to compute digest %d");
          goto LABEL_7;
        }

        if (a6 && a7)
        {
          *a6 = v22;
          *a7 = v21;
          v22 = 0;
        }

        v17 = 0;
        if (a8 && a9)
        {
          v17 = 0;
          *a8 = v15;
          *a9 = **(a1 + 16);
          v15 = 0;
        }
      }

      else
      {
        AMSupportLogInternal(3, "AMFDREncodeCreatePayloadAndDigest", "Img4EncodeCreatePayload failed %d", Payload);
        v17 = 16;
      }
    }

    else
    {
      AMSupportLogInternal(3, "AMFDREncodeCreatePayloadAndDigest", "dataClassLength is %d, unexpected...", a3);
      v17 = 199;
    }
  }

  else
  {
    AMSupportLogInternal(3, "AMFDREncodeCreatePayloadAndDigest", "Failed to allocation digest buffer");
    v17 = 2;
  }

LABEL_10:
  if (v22)
  {
    free(v22);
  }

  if (v15)
  {
    free(v15);
  }

  return v17;
}

uint64_t AMFDREncodeRepairConfigurationBegin(void *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *a1 = v2;
    if (v2)
    {
      v3 = 0;
      **a1 = DEREncoderCreate();
      if (!**a1)
      {
        v3 = 2;
        AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationBegin", "failed to allocate sequenceEncoder");
      }
    }

    else
    {
      v3 = 2;
      AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationBegin", "*repairConfigurationContext is NULL");
    }
  }

  else
  {
    v3 = 1;
    AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationBegin", "repairConfigurationContext is NULL");
  }

  return v3;
}

uint64_t AMFDREncodeRepairConfigurationAddSequence(uint64_t **a1, uint64_t **a2)
{
  IsRepairConfigurationContextValid = _AMFDREncodeIsRepairConfigurationContextValid(a1);
  if ((IsRepairConfigurationContextValid & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSequence_cold_1(IsRepairConfigurationContextValid);
    return 1;
  }

  v5 = **a1;
  v6 = _AMFDREncodeIsRepairConfigurationContextValid(a2);
  if ((v6 & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSequence_cold_2(v6);
    return 1;
  }

  if (a1 == a2)
  {
    v8 = DEREncoderCreate();
    if (!v8)
    {
      AMFDREncodeRepairConfigurationAddSequence_cold_4(0);
      return 2;
    }

    v9 = v8;
    if (DEREncoderAddSequenceFromEncoder())
    {
      result = DEREncoderDestroy();
LABEL_17:
      AMFDREncodeRepairConfigurationAddSequence_cold_3(result);
      return 3;
    }

    **a2 = v9;
    if (v5)
    {
      DEREncoderDestroy();
    }

    return 0;
  }

  else
  {
    result = DEREncoderAddSequenceFromEncoder();
    if (result)
    {
      goto LABEL_17;
    }
  }

  return result;
}

uint64_t _AMFDREncodeIsRepairConfigurationContextValid(void **a1)
{
  if (a1)
  {
    if (*a1)
    {
      if (**a1)
      {
        return 1;
      }

      v2 = "repairConfigurationContext sequenceEncoder is NULL";
    }

    else
    {
      v2 = "*repairConfigurationContext is NULL";
    }
  }

  else
  {
    v2 = "repairConfigurationContext is NULL";
  }

  _AMFDREncodeIsRepairConfigurationContextValid_cold_1(v2);
  return 0;
}

uint64_t AMFDREncodeRepairConfigurationAddSequenceWithKey(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  IsRepairConfigurationContextValid = _AMFDREncodeIsRepairConfigurationContextValid(a1);
  if ((IsRepairConfigurationContextValid & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_1(IsRepairConfigurationContextValid);
    return 1;
  }

  v5 = **a1;
  v6 = DEREncoderCreate();
  if (!v6)
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_4(0);
    return 2;
  }

  v7 = v6;
  if (DEREncoderAddDataNoCopy())
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_2(v7);
    return 3;
  }

  if (DEREncoderAddSequenceFromEncoder())
  {
    AMFDREncodeRepairConfigurationAddSequenceWithKey_cold_3(v7);
    return 3;
  }

  **a1 = v7;
  if (v5)
  {
    DEREncoderDestroy();
  }

  return 0;
}

uint64_t AMFDREncodeRepairConfigurationAddSetWithKey(uint64_t **a1, uint64_t a2, uint64_t a3)
{
  IsRepairConfigurationContextValid = _AMFDREncodeIsRepairConfigurationContextValid(a1);
  if ((IsRepairConfigurationContextValid & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_1(IsRepairConfigurationContextValid);
    return 1;
  }

  v5 = **a1;
  v6 = DEREncoderCreate();
  if (!v6)
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_4(0);
    return 2;
  }

  v7 = v6;
  if (DEREncoderAddDataNoCopy())
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_2(v7);
    return 3;
  }

  if (DEREncoderAddSetFromEncoder())
  {
    AMFDREncodeRepairConfigurationAddSetWithKey_cold_3(v7);
    return 3;
  }

  **a1 = v7;
  if (v5)
  {
    DEREncoderDestroy();
  }

  return 0;
}

uint64_t AMFDREncodeRepairConfigurationAddData(uint64_t **a1, unsigned int a2, unsigned int *a3, uint64_t a4)
{
  v4 = a4;
  IsRepairConfigurationContextValid = _AMFDREncodeIsRepairConfigurationContextValid(a1);
  if ((IsRepairConfigurationContextValid & 1) == 0)
  {
    AMFDREncodeRepairConfigurationAddData_cold_1(IsRepairConfigurationContextValid);
    return 1;
  }

  if (!v4)
  {
    AMFDREncodeRepairConfigurationAddData_cold_3(IsRepairConfigurationContextValid);
    return 1;
  }

  if (!a3)
  {
    AMFDREncodeRepairConfigurationAddData_cold_2(IsRepairConfigurationContextValid);
    return 1;
  }

  if (a2 <= 1)
  {
    if (a2 <= 1)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (a2 != 2)
  {
    if (a2 == 3)
    {
      v8 = DEREncoderAddUInt32();
      goto LABEL_13;
    }

LABEL_10:
    AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationAddData", "unknown repairConfigurationDataType %d", a2);
    return 1;
  }

LABEL_12:
  v8 = DEREncoderAddData();
LABEL_13:
  if (!v8)
  {
    return 0;
  }

  v11 = a2;
  v9 = 3;
  AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationAddData", "failed to add value to collection sequenceEncoder for type %d", v11);
  return v9;
}

uint64_t AMFDREncodeRepairConfigurationEnd(void **a1, void *a2, _DWORD *a3)
{
  if (_AMFDREncodeIsRepairConfigurationContextValid(a1))
  {
    if (a2)
    {
      if (a3)
      {
        if (DEREncoderCreateEncodedBuffer())
        {
          v5 = 3;
          AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationEnd", "failed to create encoded buffer");
        }

        else if (*a2)
        {
          if (*a3)
          {
            return 0;
          }

          else
          {
            v5 = 199;
            AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationEnd", "*outdataLength is 0");
          }
        }

        else
        {
          v5 = 199;
          AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationEnd", "*outData is NULL");
        }
      }

      else
      {
        v5 = 1;
        AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationEnd", "outdataLength is NULL");
      }
    }

    else
    {
      v5 = 1;
      AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationEnd", "outData is NULL");
    }
  }

  else
  {
    v5 = 1;
    AMSupportLogInternal(3, "AMFDREncodeRepairConfigurationEnd", "repairConfigurationContextSrc is invalid");
  }

  return v5;
}

uint64_t AMFDREncodeMultiCombinedDataPayloadBegin(void *a1)
{
  if (!a1)
  {
    v3 = 199;
LABEL_7:
    AMSupportLogInternal(3, "AMFDREncodeMultiCombinedDataPayloadBegin", "multiCombinedDataPayloadContext is NULL");
    return v3;
  }

  v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
  *a1 = v2;
  if (!v2)
  {
    v3 = 2;
    goto LABEL_7;
  }

  v3 = 0;
  **a1 = DEREncoderCreate();
  if (!**a1)
  {
    v3 = 2;
    AMSupportLogInternal(3, "AMFDREncodeMultiCombinedDataPayloadBegin", "failed to allocate recordsEncoder");
  }

  return v3;
}

uint64_t AMFDREncodeSubCCDigestsBegin(void *a1)
{
  if (a1)
  {
    v2 = malloc_type_calloc(1uLL, 8uLL, 0x2004093837F09uLL);
    *a1 = v2;
    if (v2)
    {
      v3 = 0;
      **a1 = DEREncoderCreate();
      if (!**a1)
      {
        v3 = 2;
        AMSupportLogInternal(3, "AMFDREncodeSubCCDigestsBegin", "failed to allocate recordsEncoder");
      }
    }

    else
    {
      v3 = 2;
      AMSupportLogInternal(3, "AMFDREncodeSubCCDigestsBegin", "subCCDigestsContext is NULL");
    }
  }

  else
  {
    v3 = 199;
    AMSupportLogInternal(3, "AMFDREncodeSubCCDigestsBegin", "multiCombinedDataPayloadContext is NULL");
  }

  return v3;
}

uint64_t OUTLINED_FUNCTION_8()
{

  return DEREncoderCreateEncodedBuffer();
}

uint64_t OUTLINED_FUNCTION_9(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return DEREncoderAddDataNoCopy();
}

uint64_t OUTLINED_FUNCTION_10()
{

  return DEREncoderCreate();
}

uint64_t OUTLINED_FUNCTION_12()
{

  return DEREncoderAddSequenceFromEncoder();
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return DEREncoderAddDataNoCopy();
}

uint64_t OUTLINED_FUNCTION_21(uint64_t a1, uint64_t a2, const char *a3)
{

  return AMSupportLogInternal(3, a2, a3);
}

uint64_t OUTLINED_FUNCTION_22(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return DEREncoderAddDataNoCopy();
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return DEREncoderAddSetFromEncoder();
}

uint64_t AMFDRErrorPushInternal(uint64_t a1, CFIndex a2, const __CFNumber *a3, const void *a4, const void *a5, const void *a6, const void *a7, const void *a8, void *value, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, CFStringRef format, ...)
{
  va_start(va, format);
  v21 = a3;
  valuePtr = a3;
  v24 = *MEMORY[0x277CBECE8];
  v25 = CFStringCreateWithFormatAndArguments(*MEMORY[0x277CBECE8], 0, format, va);
  v26 = v25;
  if (v25)
  {
    AMSupportLogInternal(3, "AMFDRCreateError", "%s: %@: code=%ld", a15, v25, a2);
  }

  if (!a1)
  {
    v28 = 0;
    v21 = 0;
    if (!v26)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  code = a2;
  Mutable = CFDictionaryCreateMutable(v24, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v28 = Mutable;
  if (!Mutable)
  {
    v21 = 0;
    a1 = 0;
    if (!v26)
    {
      goto LABEL_39;
    }

LABEL_38:
    CFRelease(v26);
    goto LABEL_39;
  }

  if (v26)
  {
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CBEE30], v26);
  }

  if (v21)
  {
    v21 = CFNumberCreate(v24, kCFNumberSInt64Type, &valuePtr);
    if (v21)
    {
      AMSupportLogInternal(3, "AMFDRCreateError", "trustError=0x%016llX", valuePtr);
      CFDictionaryAddValue(v28, @"AMFDRTrustError", v21);
    }
  }

  if (a4)
  {
    CFDictionarySetValue(v28, @"MissingDataInstances", a4);
  }

  if (a5)
  {
    CFDictionarySetValue(v28, @"MissingMultiManifests", a5);
  }

  if (a6)
  {
    CFDictionarySetValue(v28, @"DigestMismatchedDataInstances", a6);
  }

  if (a7)
  {
    CFDictionarySetValue(v28, @"UnverifiedCombinedManifests", a7);
  }

  if (a8)
  {
    CFDictionarySetValue(v28, @"UnverifiedDataInstances", a8);
  }

  if (value)
  {
    CFDictionarySetValue(v28, @"MultiRequestErrors", value);
  }

  if (a10)
  {
    CFDictionarySetValue(v28, @"MissingMinimalManifests", a10);
  }

  if (a11)
  {
    CFDictionarySetValue(v28, @"UnverifiedMinimalManifests", a11);
  }

  if (a12)
  {
    CFDictionarySetValue(v28, @"MissingMinimalSealingInstances", a12);
  }

  if (a13)
  {
    CFDictionarySetValue(v28, @"MissingSubCCDataInstances", a13);
  }

  if (a14)
  {
    CFDictionarySetValue(v28, @"MismatchedProperties", a14);
  }

  if (*a1)
  {
    CFDictionaryAddValue(v28, *MEMORY[0x277CBEE78], *a1);
    if (*a1)
    {
      CFRelease(*a1);
      *a1 = 0;
    }
  }

  *a1 = CFErrorCreate(v24, @"AMFDRError", code, v28);
  a1 = 1;
  if (v26)
  {
    goto LABEL_38;
  }

LABEL_39:
  if (v28)
  {
    CFRelease(v28);
  }

  if (v21)
  {
    CFRelease(v21);
  }

  return a1;
}

void _AMFDRClassInitialize()
{
  _AMFDRTypeID = _CFRuntimeRegisterClass();

  AMFDRCryptoInit();
}

void *AMFDRCreateWithImplementation(const __CFAllocator *a1, CFDictionaryRef theDict, void *a3, uint64_t a4)
{
  if (!theDict)
  {
    AMFDRCreateWithImplementation_cold_2(a1);
    return 0;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(a1, 0, theDict);
  if (!MutableCopy)
  {
    AMFDRCreateWithImplementation_cold_1(0);
    return 0;
  }

  v9 = MutableCopy;
  pthread_once(&_AMFDRClassInitializeOnce, _AMFDRClassInitialize);
  Instance = _CFRuntimeCreateInstance();
  v11 = Instance;
  if (Instance)
  {
    *(Instance + 144) = 0;
    *(Instance + 112) = 0u;
    *(Instance + 128) = 0u;
    *(Instance + 80) = 0u;
    *(Instance + 96) = 0u;
    *(Instance + 48) = 0u;
    *(Instance + 64) = 0u;
    *(Instance + 16) = 0u;
    *(Instance + 32) = 0u;
    *(Instance + 48) = AMFDRLocalStore;
    AMFDRPlatformSetImplementation(Instance, a3, a4);
    if (!CFDictionaryGetValue(theDict, @"DSURL"))
    {
      CFDictionarySetValue(v9, @"DSURL", @"https://skl.apple.com");
    }

    if (!CFDictionaryGetValue(theDict, @"CAURL"))
    {
      CFDictionarySetValue(v9, @"CAURL", @"https://gg.apple.com");
    }

    if (!CFDictionaryGetValue(theDict, @"SealingURL"))
    {
      CFDictionarySetValue(v9, @"SealingURL", @"https://ig.apple.com");
    }

    if (AMFDRSetOptions(v11, v9))
    {
      AMFDRCryptoGetPrivateKey(v11);
      AMFDRCryptoGetCert(v11);
      if (v11[9] || (v12 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v11[9] = v12) != 0))
      {
        if (v11[13] || (v13 = CFDictionaryCreateMutable(a1, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v11[13] = v13) != 0))
        {
          if (v11[14] || (v14 = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), (v11[14] = v14) != 0))
          {
            if (!v11[16])
            {
              Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
              v11[16] = Mutable;
              if (!Mutable)
              {
                AMSupportLogInternal(3, "AMFDRCreateWithImplementation", "amfdr->subCCDigestDict is NULL");
              }
            }
          }

          else
          {
            AMSupportLogInternal(3, "AMFDRCreateWithImplementation", "amfdr->digestDict is NULL");
          }
        }

        else
        {
          AMSupportLogInternal(3, "AMFDRCreateWithImplementation", "amfdr->asidDict is NULL");
        }
      }

      else
      {
        AMSupportLogInternal(3, "AMFDRCreateWithImplementation", "amfdr->infoDict is NULL");
      }
    }

    else
    {
      CFRelease(v11);
      v11 = 0;
      AMSupportLogInternal(3, "AMFDRCreateWithImplementation", "_AMFDRSetOptions failed");
    }
  }

  else
  {
    AMSupportLogInternal(3, "AMFDRCreateWithImplementation", "amfdr is NULL");
  }

  CFRelease(v9);
  return v11;
}

uint64_t AMFDRSetOptions(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    AMFDRSetOptions_cold_3(0);
    return 0;
  }

  if (!cf)
  {
    AMFDRSetOptions_cold_2(a1);
    return 0;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    CFRelease(v4);
  }

  *(a1 + 16) = cf;
  CFRetain(cf);
  Value = CFDictionaryGetValue(*(a1 + 16), @"DataStore");
  if (!Value)
  {
    return 1;
  }

  v6 = Value;
  TypeID = CFStringGetTypeID();
  if (TypeID != CFGetTypeID(v6))
  {
    return 1;
  }

  if (CFStringCompare(v6, @"Remote", 1uLL) == kCFCompareEqualTo)
  {
    v10 = &AMFDRHTTPStore;
LABEL_17:
    *(a1 + 48) = v10;
    return 1;
  }

  if (CFStringCompare(v6, @"Local", 1uLL) == kCFCompareEqualTo)
  {
    v10 = AMFDRLocalStore;
    goto LABEL_17;
  }

  v8 = 1;
  if (CFStringCompare(v6, @"Memory", 1uLL) == kCFCompareEqualTo)
  {
    *(a1 + 48) = &AMFDRMemoryStore;
    if (CFDictionaryGetValue(cf, @"MemoryStoreURL"))
    {
      AMFDRLoadMemoryStoreFromFile(a1);
    }

    if (!*(a1 + 80))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
      *(a1 + 80) = Mutable;
      if (!Mutable)
      {
        AMFDRSetOptions_cold_1(0);
        return 0;
      }
    }

    return 1;
  }

  return v8;
}

void *AMFDRCreateTypeWithOptions(CFAllocatorRef allocator, const void *a2, const __CFDictionary *a3)
{
  if (a2)
  {
    if (a3)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(allocator, 0, a3);
    }

    else
    {
      MutableCopy = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    }

    v6 = MutableCopy;
    if (MutableCopy)
    {
      CFDictionarySetValue(MutableCopy, @"DataStore", a2);
      v7 = AMFDRCreateWithImplementation(allocator, v6, 0, 0);
    }

    else
    {
      AMFDRCreateTypeWithOptions_cold_1(0);
      v7 = 0;
    }
  }

  else
  {
    AMFDRCreateTypeWithOptions_cold_2(allocator);
    v7 = 0;
  }

  AMSupportSafeRelease();
  return v7;
}

uint64_t AMFDRSetOption(uint64_t cf, const void *a2, const __CFString *a3)
{
  if (cf)
  {
    if (*(cf + 16))
    {
      if (a2)
      {
        v6 = CFGetAllocator(cf);
        MutableCopy = CFDictionaryCreateMutableCopy(v6, 0, *(cf + 16));
        v8 = MutableCopy;
        if (MutableCopy)
        {
          if (a3)
          {
            if (CFEqual(a2, @"Permissions"))
            {
              Value = CFDictionaryGetValue(*(cf + 16), @"Permissions");
              if (Value)
              {
                if (CFStringCompare(a3, Value, 0))
                {
                  v10 = *(cf + 32);
                  if (v10)
                  {
                    CFRelease(v10);
                    *(cf + 32) = 0;
                  }
                }
              }
            }

            CFDictionarySetValue(v8, a2, a3);
          }

          else
          {
            CFDictionaryRemoveValue(MutableCopy, a2);
          }

          v11 = AMFDRSetOptions(cf, v8);
          if (v11)
          {
            v12 = CFEqual(a2, @"PrivateKey");
            if (v12)
            {
              v13 = &kAMFDRPlatformImplementationStation;
              if (*(cf + 136) == &kAMFDRPlatformImplementationStation)
              {
                if (off_2835AD490[0])
                {
                  v14 = *(cf + 144);
                  if (v14)
                  {
                    (off_2835AD490[0])(v14);
                    *(cf + 144) = 0;
                    v13 = *(cf + 136);
                  }
                }

                v15 = v13[2];
                if (v15)
                {
                  v16 = v15(0);
                }

                else
                {
                  v16 = 0;
                }

                *(cf + 144) = v16;
                AMFDRCryptoGetPrivateKey(cf);
              }

              else
              {
                AMFDRSetOption_cold_2(v12);
              }
            }

            else if (CFEqual(a2, @"Certificate"))
            {
              v17 = *(cf + 32);
              if (v17)
              {
                CFRelease(v17);
                *(cf + 32) = 0;
              }

              AMFDRCryptoGetCert(cf);
            }
          }

          else
          {
            AMFDRSetOption_cold_1(v11);
          }
        }

        else
        {
          AMFDRSetOption_cold_3(0);
        }
      }

      else
      {
        AMFDRSetOption_cold_4(cf);
      }
    }

    else
    {
      AMFDRSetOption_cold_5(cf);
    }
  }

  else
  {
    AMFDRSetOption_cold_6(0);
  }

  return AMSupportSafeRelease();
}

uint64_t AMFDRLoadMemoryStoreFromFile(uint64_t a1)
{
  v1 = a1;
  theDict = 0;
  if (!a1)
  {
    AMFDRLoadMemoryStoreFromFile_cold_3(0);
    goto LABEL_15;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    AMFDRLoadMemoryStoreFromFile_cold_2(0);
LABEL_19:
    v1 = 0;
    goto LABEL_15;
  }

  Value = CFDictionaryGetValue(v2, @"MemoryStoreURL");
  if (!Value)
  {
    AMFDRLoadMemoryStoreFromFile_cold_1(0);
    goto LABEL_19;
  }

  v4 = Value;
  v5 = *MEMORY[0x277CBECE8];
  URLFromString = AMSupportCreateURLFromString();
  v7 = URLFromString;
  if (!URLFromString)
  {
    AMSupportLogInternal(3, "AMFDRLoadMemoryStoreFromFile", "Unable convert %@ path to URL.", v4);
    goto LABEL_23;
  }

  v11 = 0;
  if (MEMORY[0x223DB7EB0](URLFromString, &v11))
  {
    v8 = 0;
  }

  else
  {
    v8 = v11 == 1;
  }

  if (v8)
  {
    if (MEMORY[0x223DB7E10](v5, &theDict, v7))
    {
      v9 = 1;
    }

    else
    {
      v9 = theDict == 0;
    }

    if (!v9)
    {
      v1 = AMFDRSetMemoryStore(v1, theDict);
      goto LABEL_15;
    }

    AMSupportLogInternal(3, "AMFDRLoadMemoryStoreFromFile", "Unable to load memoryStore data from %@", v4);
LABEL_23:
    v1 = 0;
    goto LABEL_15;
  }

  AMSupportLogInternal(6, "AMFDRLoadMemoryStoreFromFile", "%@ doesn't exist, assuming fresh device.", v4);
  v1 = 1;
LABEL_15:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v1;
}

void AMFDRSetAssemblyIdentifierToVerify(uint64_t a1, void *key, const __CFString *a3)
{
  if (a1)
  {
    v4 = *(a1 + 104);
    if (v4)
    {
      if (key)
      {
        CFDictionaryRemoveValue(v4, key);
        if (a3)
        {
          v7 = CFGetTypeID(a3);
          if (v7 == CFStringGetTypeID() && CFStringGetLength(a3) >= 1)
          {
            v8 = *(a1 + 104);

            CFDictionarySetValue(v8, key, a3);
          }
        }
      }

      else
      {
        AMFDRSetAssemblyIdentifierToVerify_cold_1(v4);
      }
    }

    else
    {
      AMFDRSetAssemblyIdentifierToVerify_cold_2(0);
    }
  }

  else
  {
    AMFDRSetAssemblyIdentifierToVerify_cold_3(0);
  }
}

const void *AMFDRGetAssemblyIDToVerify(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    AMFDRGetAssemblyIDToVerify_cold_3(0);
    return 0;
  }

  v2 = *(a1 + 104);
  if (!v2)
  {
    AMFDRGetAssemblyIDToVerify_cold_2(0);
    return 0;
  }

  if (!a2)
  {
    AMFDRGetAssemblyIDToVerify_cold_1(v2);
    return 0;
  }

  return CFDictionaryGetValue(v2, a2);
}

void AMFDRSetSubCCDigestsToVerify(uint64_t a1, void *key, const void *a3)
{
  if (a1)
  {
    v4 = *(a1 + 128);
    if (v4)
    {
      if (key)
      {
        CFDictionaryRemoveValue(v4, key);
        if (a3)
        {
          v7 = CFGetTypeID(a3);
          if (v7 == CFArrayGetTypeID() && CFArrayGetCount(a3) >= 1)
          {
            v8 = *(a1 + 128);

            CFDictionarySetValue(v8, key, a3);
          }
        }
      }

      else
      {
        AMFDRSetSubCCDigestsToVerify_cold_1(v4);
      }
    }

    else
    {
      AMFDRSetSubCCDigestsToVerify_cold_2(0);
    }
  }

  else
  {
    AMFDRSetSubCCDigestsToVerify_cold_3(0);
  }
}

const void *AMFDRGetSubCCDigestsToVerify(uint64_t a1, const void *a2)
{
  if (!a1)
  {
    AMFDRGetSubCCDigestsToVerify_cold_3(0);
    return 0;
  }

  v2 = *(a1 + 128);
  if (!v2)
  {
    AMFDRGetSubCCDigestsToVerify_cold_2(0);
    return 0;
  }

  if (!a2)
  {
    AMFDRGetSubCCDigestsToVerify_cold_1(v2);
    return 0;
  }

  return CFDictionaryGetValue(v2, a2);
}

uint64_t AMFDRGetOptions(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 16);
  }

  AMFDRGetOptions_cold_1(a1);
  return 0;
}

uint64_t AMFDRGetInfo(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 72);
  }

  AMFDRGetInfo_cold_1(a1);
  return 0;
}

uint64_t AMFDRGetCert(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 32);
  }

  AMFDRGetCert_cold_1();
  return 0;
}

void AMFDRIncrementStat(CFMutableDictionaryRef *a1, void *key)
{
  valuePtr = 0;
  if (!a1)
  {
    AMFDRIncrementStat_cold_5(0);
    return;
  }

  v3 = a1[9];
  if (!v3)
  {
    AMFDRIncrementStat_cold_4(0);
    return;
  }

  if (!key)
  {
    AMFDRIncrementStat_cold_3(v3);
    return;
  }

  Value = CFDictionaryGetValue(v3, key);
  if (Value)
  {
    if (!CFNumberGetValue(Value, kCFNumberLongType, &valuePtr))
    {
      AMFDRIncrementStat_cold_1();
      return;
    }

    v6 = valuePtr + 1;
  }

  else
  {
    v6 = 1;
  }

  valuePtr = v6;
  v7 = CFGetAllocator(a1);
  v8 = CFNumberCreate(v7, kCFNumberLongType, &valuePtr);
  if (v8)
  {
    v9 = v8;
    CFDictionarySetValue(a1[9], key, v8);
    CFRelease(v9);
  }

  else
  {
    AMFDRIncrementStat_cold_2();
  }
}

void AMFDRSetStat(CFMutableDictionaryRef *cf, const void *a2, uint64_t a3)
{
  valuePtr = a3;
  if (cf)
  {
    if (cf[9])
    {
      if (a2)
      {
        v5 = CFGetAllocator(cf);
        v6 = CFNumberCreate(v5, kCFNumberLongType, &valuePtr);
        if (v6)
        {
          v7 = v6;
          CFDictionarySetValue(cf[9], a2, v6);
          CFRelease(v7);
        }

        else
        {
          AMFDRSetStat_cold_1();
        }
      }

      else
      {
        AMFDRSetStat_cold_2(cf);
      }
    }

    else
    {
      AMFDRSetStat_cold_3(cf);
    }
  }

  else
  {
    AMFDRSetStat_cold_4(0);
  }
}

void AMFDRCopyStatString(CFMutableDictionaryRef *cf, const void *a2, const __CFString *a3)
{
  if (cf)
  {
    if (cf[9])
    {
      if (a2)
      {
        if (a3)
        {
          v6 = CFGetAllocator(cf);
          Copy = CFStringCreateCopy(v6, a3);
          if (Copy)
          {
            v8 = Copy;
            CFDictionarySetValue(cf[9], a2, Copy);

            CFRelease(v8);
          }

          else
          {
            AMFDRCopyStatString_cold_1(0);
          }
        }

        else
        {
          AMFDRCopyStatString_cold_2(cf);
        }
      }

      else
      {
        AMFDRCopyStatString_cold_3(cf);
      }
    }

    else
    {
      AMFDRCopyStatString_cold_4(cf);
    }
  }

  else
  {
    AMFDRCopyStatString_cold_5(0);
  }
}

uint64_t AMFDRGetMemoryStore(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    return *(a1 + 80);
  }

  AMFDRGetMemoryStore_cold_1(a1);
  return 0;
}

uint64_t AMFDRFlushMemoryStoreToFile(uint64_t a1)
{
  if (!a1)
  {
    AMFDRFlushMemoryStoreToFile_cold_5(0);
LABEL_16:
    v4 = 0;
    goto LABEL_8;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    AMFDRFlushMemoryStoreToFile_cold_4(0);
    goto LABEL_16;
  }

  Value = CFDictionaryGetValue(v2, @"MemoryStoreURL");
  v4 = Value;
  if (!Value)
  {
    AMFDRFlushMemoryStoreToFile_cold_3(0);
    goto LABEL_8;
  }

  if (!*(a1 + 80))
  {
    AMFDRFlushMemoryStoreToFile_cold_2(Value);
    goto LABEL_16;
  }

  if (!AMSupportCreateURLFromString())
  {
    AMFDRFlushMemoryStoreToFile_cold_1(0);
    goto LABEL_16;
  }

  v5 = AMSupportWriteDictionarytoFileURL();
  if (v5)
  {
    AMSupportLogInternal(3, "AMFDRFlushMemoryStoreToFile", "Unable to commit FDR memoryStore data to disk.  Error %d", v5);
    goto LABEL_16;
  }

  AMSupportLogInternal(6, "AMFDRFlushMemoryStoreToFile", "Flushed memoryStore to %@", v4);
  v4 = 1;
LABEL_8:
  AMSupportSafeRelease();
  return v4;
}

uint64_t AMFDRSetMemoryStore(uint64_t a1, CFDictionaryRef theDict)
{
  if (a1)
  {
    if (theDict)
    {
      v4 = *(a1 + 80);
      if (v4)
      {
        Count = CFDictionaryGetCount(v4);
        AMSupportLogInternal(4, "AMFDRSetMemoryStore", "Setting memoryStore on top of existing store with %d items.", Count);
        v6 = *(a1 + 80);
        if (v6)
        {
          CFRelease(v6);
        }

        *(a1 + 80) = 0;
      }

      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x277CBECE8], 0, theDict);
      *(a1 + 80) = MutableCopy;
      if (MutableCopy)
      {
        return 1;
      }

      v9 = "Failed to allocate amfdr->memoryStore copy.";
    }

    else
    {
      v9 = "memoryStore is NULL";
    }
  }

  else
  {
    v9 = "amfdr is NULL";
  }

  AMFDRSetMemoryStore_cold_1(v9);
  return 0;
}

uint64_t AMFDRClearMemoryStore(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 80);
    if (v2)
    {
      Count = CFDictionaryGetCount(v2);
      AMSupportLogInternal(4, "AMFDRClearMemoryStore", "Erasing memorystore with %d items.", Count);
      v4 = *(a1 + 80);
      if (v4)
      {
        CFRelease(v4);
      }

      *(a1 + 80) = 0;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    *(a1 + 80) = Mutable;
    if (Mutable)
    {
      return 1;
    }

    v7 = "Failed to allocate amfdr->memoryStore.";
  }

  else
  {
    v7 = "amfdr is NULL";
  }

  AMFDRClearMemoryStore_cold_1(v7);
  return 0;
}

uint64_t AMFDRSetCopyMGOverrideCallback(uint64_t a1, uint64_t a2)
{
  v4 = AMFDREntitlementIsEntitled(@"com.apple.libFDR.AllowIdentifierOverride");
  if (v4)
  {
    if (a1)
    {
      *(a1 + 88) = a2;
      return 1;
    }

    AMFDRSetCopyMGOverrideCallback_cold_2(v4);
  }

  else
  {
    AMFDRSetCopyMGOverrideCallback_cold_1(v4);
  }

  return 0;
}

uint64_t AMFDRCopyClientId(uint64_t a1)
{
  if (a1 && (v1 = *(a1 + 136), *v1 >= 0x59uLL) && (v2 = v1[11]) != 0)
  {
    return v2(a1, *(a1 + 144));
  }

  else
  {
    return 0;
  }
}

const void *AMFDRCopyCertifyClientId(void *a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = a1[2];
  if (v2)
  {
    Value = CFDictionaryGetValue(v2, @"CertifyClientId");
    if (Value)
    {
      v4 = Value;
      CFRetain(Value);
      return v4;
    }
  }

  v5 = a1[17];
  if (*v5 < 0x59uLL)
  {
    return 0;
  }

  v6 = v5[11];
  if (!v6)
  {
    return 0;
  }

  v7 = a1[18];

  return v6(a1, v7);
}

CFStringRef AMFDRCopyCertifyClientIdSik(void *a1)
{
  if (!a1)
  {
    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "amfdr is NULL");
    goto LABEL_21;
  }

  v2 = a1[2];
  if (!v2 || (Value = CFDictionaryGetValue(v2, @"CertifySikPub")) == 0)
  {
    SikPub = AMFDRCryptoGetSikPub(a1);
    if (SikPub)
    {
      v12 = SikPub;
      goto LABEL_10;
    }

    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "sikPub is NULL");
LABEL_21:
    v17 = 0;
    goto LABEL_13;
  }

  v4 = Value;
  v5 = CFGetTypeID(Value);
  if (v5 != CFDataGetTypeID())
  {
    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "sikData is in malformed format");
    goto LABEL_21;
  }

  v6 = CFGetAllocator(a1);
  BytePtr = CFDataGetBytePtr(v4);
  Length = CFDataGetLength(v4);
  SikPubDigestIfNecessary = AMFDRDataCreateSikPubDigestIfNecessary(v6, BytePtr, Length);
  if (!SikPubDigestIfNecessary)
  {
    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "sikDigest is NULL");
    goto LABEL_21;
  }

  v10 = CFGetAllocator(a1);
  v11 = AMFDRCreateInstanceString(v10, SikPubDigestIfNecessary);
  if (!v11)
  {
    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "sikDigestString is NULL");
    goto LABEL_21;
  }

  v12 = v11;
LABEL_10:
  v14 = AMFDRCopyCertifyClientId(a1);
  if (!v14)
  {
    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "clientId is NULL");
    goto LABEL_21;
  }

  v15 = CFGetAllocator(a1);
  v16 = CFStringCreateWithFormat(v15, 0, @"sik-%@-%@", v14, v12);
  if (!v16)
  {
    AMSupportLogInternal(3, "AMFDRCopyCertifyClientIdSik", "inst is NULL");
    goto LABEL_21;
  }

  v17 = v16;
LABEL_13:
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  AMSupportSafeRelease();
  return v17;
}

uint64_t AMFDRGetTrustError(__CFError *a1)
{
  valuePtr = 0;
  if (a1)
  {
    v1 = CFErrorCopyUserInfo(a1);
    if (v1)
    {
      v2 = v1;
      v3 = *MEMORY[0x277CBEE78];
      do
      {
        Value = CFDictionaryGetValue(v2, @"AMFDRTrustError");
        v5 = CFDictionaryGetValue(v2, v3);
        if (!v5)
        {
          break;
        }

        v6 = v5;
        CFRelease(v2);
        v2 = CFErrorCopyUserInfo(v6);
      }

      while (v2);
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberSInt64Type, &valuePtr);
      }

      if (v2)
      {
        CFRelease(v2);
      }
    }
  }

  return valuePtr;
}

uint64_t AMFDRCopyUnderlyingDictionary(__CFError *a1, const void *a2)
{
  if (a1)
  {
    v3 = CFErrorCopyUserInfo(a1);
    if (v3)
    {
      v4 = v3;
      v5 = *MEMORY[0x277CBEE78];
      do
      {
        CFDictionaryGetValue(v4, a2);
        Value = CFDictionaryGetValue(v4, v5);
        CFRelease(v4);
        if (!Value)
        {
          break;
        }

        v4 = CFErrorCopyUserInfo(Value);
      }

      while (v4);
    }
  }

  return AMSupportSafeRetain();
}

const __CFArray *AMFDRNonEmptyArrayValueExists(CFDictionaryRef theDict, const void *a2)
{
  result = 0;
  if (theDict)
  {
    if (a2)
    {
      result = CFDictionaryGetValue(theDict, a2);
      if (result)
      {
        v4 = result;
        v5 = CFGetTypeID(result);
        if (v5 == CFArrayGetTypeID())
        {
          return (CFArrayGetCount(v4) > 0);
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

BOOL AMFDRSetSsoCreateServiceTicketCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    *(a1 + 56) = a2;
    *(a1 + 64) = a3;
  }

  else
  {
    AMFDRSetSsoCreateServiceTicketCallback_cold_1(0);
  }

  return a1 != 0;
}

uint64_t AMFDROptionsGetBooleanValue(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    Value = CFDictionaryGetValue(v4, a2);
    if (Value)
    {
      v6 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFBooleanGetTypeID())
      {
        return CFBooleanGetValue(v6) != 0;
      }
    }
  }

  return a3;
}

uint64_t _CFDictionaryAddDictionary(__CFDictionary *a1, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    _CFDictionaryAddDictionary_cold_2(a1);
    return 0;
  }

  if (!a1)
  {
    _CFDictionaryAddDictionary_cold_1(0);
    return 0;
  }

  Count = CFDictionaryGetCount(theDict);
  v5 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v6 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  CFDictionaryGetKeysAndValues(theDict, v5, v6);
  if (Count >= 1)
  {
    v7 = v5;
    v8 = v6;
    do
    {
      v10 = *v7++;
      v9 = v10;
      v11 = *v8++;
      CFDictionarySetValue(a1, v9, v11);
      --Count;
    }

    while (Count);
    goto LABEL_8;
  }

  if (v5)
  {
LABEL_8:
    free(v5);
  }

  if (v6)
  {
    free(v6);
  }

  return 1;
}

uint64_t AMFDRRegisterModuleChallengeCallback(void *a1, CFStringRef theString2, const __CFString *a3)
{
  if (theString2)
  {
    if (a3)
    {
      v6 = a1[12];
      if (v6)
      {
        while (CFStringCompare(*v6, theString2, 0))
        {
          v6 = *(v6 + 16);
          if (!v6)
          {
            goto LABEL_6;
          }
        }

        *(v6 + 8) = a3;
        AMSupportLogInternal(6, "AMFDRRegisterModuleChallengeCallback", "dataClass:%@ already exists, callback is updated", theString2);
        return 1;
      }

LABEL_6:
      v7 = malloc_type_malloc(0x18uLL, 0xE00403260BBE2uLL);
      if (v7)
      {
        v8 = v7;
        v9 = CFGetAllocator(a1);
        Copy = CFStringCreateCopy(v9, theString2);
        *v8 = Copy;
        if (Copy)
        {
          v11 = a1[12];
          v8[1] = a3;
          v8[2] = v11;
          a1[12] = v8;
          return 1;
        }

        AMFDRRegisterModuleChallengeCallback_cold_1(v8);
      }

      else
      {
        AMFDRRegisterModuleChallengeCallback_cold_2(0);
      }
    }

    else
    {
      AMFDRRegisterModuleChallengeCallback_cold_3(a1);
    }
  }

  else
  {
    AMFDRRegisterModuleChallengeCallback_cold_4(a1);
  }

  return 0;
}

__CFString *AMFDRCreateRecoveryPermissions(__CFString *a1, const __CFString *a2, const __CFString *a3, CFArrayRef theArray, const __CFArray *a5, uint64_t a6)
{
  if (!a1)
  {
    AMFDRCreateRecoveryPermissions_cold_14(a6);
    return 0;
  }

  if (!a2)
  {
    AMFDRCreateRecoveryPermissions_cold_13(a6);
    return 0;
  }

  if (!a3)
  {
    AMFDRCreateRecoveryPermissions_cold_12(a6);
    return 0;
  }

  if (!theArray)
  {
    AMFDRCreateRecoveryPermissions_cold_11(a6);
    return 0;
  }

  if (!a5)
  {
    AMFDRCreateRecoveryPermissions_cold_10(a6);
    return 0;
  }

  Count = CFArrayGetCount(theArray);
  v12 = CFArrayGetCount(a5);
  v13 = CFArrayGetCount(theArray);
  if (Count != v12)
  {
    AMFDRCreateRecoveryPermissions_cold_1(a5, a6, v13);
    return 0;
  }

  if (v13 >= 1)
  {
    v14 = 0;
    PermissionsString = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v14);
      if (!ValueAtIndex)
      {
        AMFDRCreateRecoveryPermissions_cold_9(a6);
        goto LABEL_27;
      }

      v17 = ValueAtIndex;
      v18 = CFGetTypeID(ValueAtIndex);
      if (v18 != CFStringGetTypeID())
      {
        AMFDRCreateRecoveryPermissions_cold_2(a6, v17, v19, v20, v21, v22, v23, v24);
        goto LABEL_27;
      }

      v25 = CFArrayGetValueAtIndex(a5, v14);
      if (!v25)
      {
        AMFDRCreateRecoveryPermissions_cold_8(a6);
        goto LABEL_27;
      }

      v26 = v25;
      v27 = CFGetTypeID(v25);
      if (v27 != CFStringGetTypeID())
      {
        AMFDRCreateRecoveryPermissions_cold_3(a6, v26, v28, v29, v30, v31, v32, v33);
        goto LABEL_27;
      }

      if (PermissionsString)
      {
        if ((AMFDRDataAppendPermissionsString(a1, 0, v17, v26, PermissionsString) & 1) == 0)
        {
          AMFDRCreateRecoveryPermissions_cold_4();
          goto LABEL_28;
        }
      }

      else
      {
        PermissionsString = AMFDRDataCreatePermissionsString(a1, 0, v17, v26);
        if (!PermissionsString)
        {
          AMFDRCreateRecoveryPermissions_cold_7();
          return PermissionsString;
        }
      }

      if (++v14 >= CFArrayGetCount(theArray))
      {
        goto LABEL_20;
      }
    }
  }

  PermissionsString = 0;
LABEL_20:
  if ((AMFDRDataAppendPermissionsString(a1, 0, a2, a3, PermissionsString) & 1) == 0)
  {
    AMFDRCreateRecoveryPermissions_cold_4();
LABEL_27:
    if (!PermissionsString)
    {
      return PermissionsString;
    }

LABEL_28:
    CFRelease(PermissionsString);
    return 0;
  }

  if ((AMFDRDataAppendPermissionsString(a1, 5, a2, a3, PermissionsString) & 1) == 0)
  {
    AMFDRCreateRecoveryPermissions_cold_6();
    goto LABEL_27;
  }

  return PermissionsString;
}

unint64_t AMFDRSetDigest(CFTypeRef cf, uint64_t a2, uint64_t a3, const void *a4)
{
  v4 = cf;
  if (!cf)
  {
    AMFDRSetDigest_cold_5(0);
    return v4;
  }

  if (!a2)
  {
    AMFDRSetDigest_cold_4(cf);
    return 0;
  }

  if (!a3)
  {
    AMFDRSetDigest_cold_3(cf);
    return 0;
  }

  v8 = CFGetAllocator(cf);
  FullKey = AMFDRDataLocalCreateFullKey(v8, a2, a3);
  if (!FullKey)
  {
    AMFDRSetDigest_cold_2(0);
    return 0;
  }

  v10 = FullKey;
  v11 = *(v4 + 112);
  v4 = v11 != 0;
  if (v11)
  {
    if (a4)
    {
      CFDictionarySetValue(v11, v10, a4);
    }

    else
    {
      CFDictionaryRemoveValue(v11, v10);
    }
  }

  else
  {
    AMFDRSetDigest_cold_1(0);
  }

  CFRelease(v10);
  return v4;
}

BOOL AMFDRCreateDataSignature(CFTypeRef cf, uint64_t a2, uint64_t a3, uint64_t a4, void **a5, void *a6)
{
  DataSignature = AMFDRCryptoCreateDataSignature(a2, a3, a4, a5, a6, cf);
  v7 = DataSignature;
  if (DataSignature != 100)
  {
    AMFDRCreateDataSignature_cold_1(DataSignature);
  }

  return v7 == 100;
}

void *AMFDRGetSikOverride(void *cf, uint64_t a2, uint64_t a3)
{
  Value = cf;
  if (!cf)
  {
    return Value;
  }

  if ((*(cf[17] + 8) & 2) != 0)
  {
    return 0;
  }

  if (!a2 || !a3)
  {
    AMFDRGetSikOverride_cold_2(cf);
    return 0;
  }

  v6 = CFGetAllocator(cf);
  FullKey = AMFDRDataLocalCreateFullKey(v6, a2, a3);
  if (!FullKey)
  {
    AMFDRGetSikOverride_cold_1(0);
    return 0;
  }

  v8 = FullKey;
  v9 = Value[15];
  if (v9)
  {
    Value = CFDictionaryGetValue(v9, v8);
  }

  else
  {
    Value = 0;
  }

  CFRelease(v8);
  return Value;
}

void AMFDRSetRestorePeriodOptions(CFTypeRef a1)
{
  v1 = _restorePeriodOptions;
  if (_restorePeriodOptions != a1)
  {
    if (a1)
    {
      a1 = CFRetain(a1);
    }

    _restorePeriodOptions = a1;
    if (v1)
    {

      CFRelease(v1);
    }
  }
}

uint64_t AMFDRSetRestorePeriodSsoCallback(uint64_t result, uint64_t a2)
{
  _restorePeriodSsoCallback = result;
  _restorePeriodSsoContext = a2;
  return result;
}

uint64_t AMFDREnableRestorePeriodSsoCallback(uint64_t a1)
{
  if (a1)
  {
    v1 = _restorePeriodSsoCallback == 0;
  }

  else
  {
    v1 = 1;
  }

  v2 = !v1;
  if (!v1)
  {
    v3 = _restorePeriodSsoContext;
    *(a1 + 56) = _restorePeriodSsoCallback;
    *(a1 + 64) = v3;
  }

  return v2;
}

uint64_t AMFDRAddMinimalManifestPropertyItemsToVerify(uint64_t a1, CFTypeRef cf)
{
  v2 = a1;
  if (!a1)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_8(0);
    v11 = 0;
    goto LABEL_39;
  }

  if (!*(a1 + 16))
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_7(a1);
    goto LABEL_49;
  }

  if (!cf || (v4 = CFGetTypeID(cf), a1 = CFDictionaryGetTypeID(), v4 != a1) || (a1 = CFDictionaryGetCount(cf), a1 <= 0))
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_6(a1);
LABEL_49:
    v11 = 0;
LABEL_43:
    v2 = 0;
    goto LABEL_39;
  }

  Value = CFDictionaryGetValue(*(v2 + 16), @"MinimalManifestPropertyCheck");
  if (Value && (v6 = Value, v7 = CFGetTypeID(Value), v7 == CFDictionaryGetTypeID()))
  {
    v8 = CFGetAllocator(v2);
    MutableCopy = CFDictionaryCreateMutableCopy(v8, 0, v6);
  }

  else
  {
    v10 = CFGetAllocator(v2);
    MutableCopy = CFDictionaryCreateMutable(v10, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  }

  v11 = MutableCopy;
  if (!MutableCopy)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_5(0);
    goto LABEL_43;
  }

  Count = CFDictionaryGetCount(cf);
  v13 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v14 = malloc_type_malloc(8 * Count, 0x80040B8603338uLL);
  v15 = v14;
  if (!v13 || !v14)
  {
    AMFDRAddMinimalManifestPropertyItemsToVerify_cold_4(v14);
    goto LABEL_43;
  }

  CFDictionaryGetKeysAndValues(cf, v13, v14);
  if (Count >= 1)
  {
    v16 = 0;
    v35 = Count;
    v36 = v11;
    do
    {
      TypeID = v13[v16];
      if (!TypeID || (v18 = CFGetTypeID(TypeID), TypeID = CFStringGetTypeID(), v18 != TypeID) || (TypeID = v15[v16]) == 0 || (v19 = CFGetTypeID(TypeID), TypeID = CFArrayGetTypeID(), v19 != TypeID))
      {
        AMFDRAddMinimalManifestPropertyItemsToVerify_cold_3(TypeID);
        goto LABEL_43;
      }

      v20 = v15[v16];
      if (CFDictionaryContainsKey(v11, v13[v16]))
      {
        v21 = CFDictionaryGetValue(v11, v13[v16]);
        if (!v21 || (v22 = v21, v23 = CFGetTypeID(v21), v21 = CFArrayGetTypeID(), v23 != v21))
        {
          AMFDRAddMinimalManifestPropertyItemsToVerify_cold_2(v21);
          goto LABEL_43;
        }

        v24 = CFGetAllocator(v2);
        v25 = CFArrayCreateMutableCopy(v24, 0, v22);
        if (!v25)
        {
          AMFDRAddMinimalManifestPropertyItemsToVerify_cold_1(0);
          goto LABEL_43;
        }

        v26 = v25;
        if (CFArrayGetCount(v20) >= 1)
        {
          v27 = v15;
          v28 = v2;
          v29 = 0;
          do
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v20, v29);
            if (ValueAtIndex)
            {
              v31 = ValueAtIndex;
              v32 = CFGetTypeID(ValueAtIndex);
              if (v32 == CFStringGetTypeID())
              {
                v37.length = CFArrayGetCount(v22);
                v37.location = 0;
                if (!CFArrayContainsValue(v22, v37, v31))
                {
                  CFArrayAppendValue(v26, v31);
                }
              }
            }

            ++v29;
          }

          while (v29 < CFArrayGetCount(v20));
          v2 = v28;
          v15 = v27;
          Count = v35;
          v11 = v36;
        }
      }

      else
      {
        v26 = 0;
      }

      if (v26)
      {
        v33 = v26;
      }

      else
      {
        v33 = v20;
      }

      CFDictionarySetValue(v11, v13[v16], v33);
      if (v26)
      {
        CFRelease(v26);
      }

      ++v16;
    }

    while (v16 != Count);
  }

  AMFDRSetOption(v2, @"MinimalManifestPropertyCheck", v11);
  v2 = 1;
LABEL_39:
  AMSupportSafeFree();
  AMSupportSafeFree();
  if (v11)
  {
    CFRelease(v11);
  }

  return v2;
}

uint64_t AMFDRMigrateCredentials(uint64_t a1, void *a2, uint64_t a3)
{
  if (!a1)
  {
    AMFDRMigrateCredentials_cold_4(a3);
    return 0;
  }

  if (!a2)
  {
    AMFDRMigrateCredentials_cold_3(a3);
    return 0;
  }

  v5 = a2[2];
  if (!v5)
  {
    AMFDRMigrateCredentials_cold_2(a3);
    return 0;
  }

  if (*(a1 + 136) != a2[17])
  {
    AMFDRMigrateCredentials_cold_1(a3);
    return 0;
  }

  Value = CFDictionaryGetValue(v5, @"Permissions");
  if (Value)
  {
    AMFDRSetOption(a1, @"Permissions", Value);
  }

  v7 = a2[4];
  if (v7)
  {
    AMFDRSetOption(a1, @"Certificate", v7);
  }

  v8 = *(*(a1 + 136) + 24);
  if (v8 && *(a1 + 144))
  {
    v8();
    *(a1 + 144) = 0;
  }

  v9 = a2[18];
  v10 = *(a2[17] + 16);
  if (v10)
  {
    v9 = v10(v9);
  }

  *(a1 + 144) = v9;
  return 1;
}

CFTypeRef AMFDRCreateCopyWithOptionsOverride(uint64_t a1, const __CFDictionary *a2)
{
  v26[1] = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    AMFDRCreateCopyWithOptionsOverride_cold_3(0);
    return 0;
  }

  v4 = CFGetAllocator(a1);
  v5 = AMFDRCreateWithImplementation(v4, *(a1 + 16), 0, 0);
  v6 = v5[3];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = *(a1 + 24);
  v5[3] = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  v8 = v5[4];
  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *(a1 + 32);
  v5[4] = v9;
  if (v9)
  {
    CFRetain(v9);
  }

  *(v5 + 20) = *(a1 + 40);
  *(v5 + 7) = *(a1 + 56);
  v10 = v5[9];
  if (v10)
  {
    CFRelease(v10);
  }

  v11 = *(a1 + 72);
  v5[9] = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = v5[10];
  if (v12)
  {
    CFRelease(v12);
  }

  v13 = *(a1 + 80);
  v5[10] = v13;
  if (v13)
  {
    CFRetain(v13);
  }

  v5[11] = *(a1 + 88);
  v14 = *(a1 + 96);
  if (!v14)
  {
LABEL_21:
    v15 = v5[13];
    if (v15)
    {
      CFRelease(v15);
    }

    v16 = *(a1 + 104);
    v5[13] = v16;
    if (v16)
    {
      CFRetain(v16);
    }

    v17 = v5[14];
    if (v17)
    {
      CFRelease(v17);
    }

    v18 = *(a1 + 112);
    v5[14] = v18;
    if (v18)
    {
      CFRetain(v18);
    }

    v19 = v5[15];
    if (v19)
    {
      CFRelease(v19);
    }

    v20 = *(a1 + 120);
    v5[15] = v20;
    if (v20)
    {
      CFRetain(v20);
    }

    v21 = v5[16];
    if (v21)
    {
      CFRelease(v21);
    }

    v22 = *(a1 + 128);
    v5[16] = v22;
    if (v22)
    {
      CFRetain(v22);
    }

    v23 = AMFDRPlatformSetImplementation(v5, *(a1 + 136), *(a1 + 144));
    if (v23)
    {
      if (a2)
      {
        v26[0] = v5;
        CFDictionaryApplyFunction(a2, _AMFDRSetCFDictionaryOptionCallback, v26);
      }

      v24 = CFRetain(v5);
    }

    else
    {
      AMFDRCreateCopyWithOptionsOverride_cold_2(v23);
      v24 = 0;
    }

LABEL_41:
    CFRelease(v5);
    return v24;
  }

  while (AMFDRRegisterModuleChallengeCallback(v5, *v14, *(v14 + 8)))
  {
    v14 = *(v14 + 16);
    if (!v14)
    {
      goto LABEL_21;
    }
  }

  v24 = 0;
  if (!AMFDRCreateCopyWithOptionsOverride_cold_1(v14, v5))
  {
    goto LABEL_41;
  }

  return v24;
}

double _AMFDRFinalize(void *a1)
{
  if (!a1)
  {
    _AMFDRFinalize_cold_1();
  }

  v3 = a1 + 2;
  v2 = a1[2];
  if (v2)
  {
    CFRelease(v2);
    *v3 = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    CFRelease(v4);
    a1[3] = 0;
  }

  v5 = a1[4];
  if (v5)
  {
    CFRelease(v5);
    a1[4] = 0;
  }

  v6 = a1[9];
  if (v6)
  {
    CFRelease(v6);
    a1[9] = 0;
  }

  v7 = a1[10];
  if (v7)
  {
    CFRelease(v7);
    a1[10] = 0;
  }

  v8 = a1[13];
  if (v8)
  {
    CFRelease(v8);
    a1[13] = 0;
  }

  v9 = a1[14];
  if (v9)
  {
    CFRelease(v9);
    a1[14] = 0;
  }

  v10 = a1[15];
  if (v10)
  {
    CFRelease(v10);
    a1[15] = 0;
  }

  v11 = a1[16];
  if (v11)
  {
    CFRelease(v11);
    a1[16] = 0;
  }

  v12 = *(a1[17] + 24);
  if (v12 && a1[18])
  {
    v12();
    a1[18] = 0;
  }

  while (1)
  {
    v13 = a1[12];
    if (!v13)
    {
      break;
    }

    a1[12] = *(v13 + 16);
    if (*v13)
    {
      CFRelease(*v13);
    }

    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    free(v13);
  }

  v3[16] = 0;
  result = 0.0;
  *(v3 + 6) = 0u;
  *(v3 + 7) = 0u;
  *(v3 + 4) = 0u;
  *(v3 + 5) = 0u;
  *(v3 + 2) = 0u;
  *(v3 + 3) = 0u;
  *v3 = 0u;
  *(v3 + 1) = 0u;
  return result;
}

CFStringRef _AMFDRCopyFormattingDescription(uint64_t a1)
{
  if (!a1)
  {
    _AMFDRCopyFormattingDescription_cold_1();
  }

  return CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"optionsDict=%@", *(a1 + 16));
}

uint64_t OUTLINED_FUNCTION_1_1@<X0>(uint64_t a1@<X0>, const __CFString *a2@<X8>, void *value, uint64_t a4, void *a5, uint64_t a6, __int128 a7, uint64_t a8, uint64_t a9, char a10)
{

  return AMFDRErrorPushInternal(a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, v10, a2);
}

uint64_t OUTLINED_FUNCTION_2_1(uint64_t a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *value, uint64_t a10, void *a11, uint64_t a12, __int128 a13, uint64_t a14, const __CFString *a15, char a16)
{

  return AMFDRErrorPushInternal(a1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, a14, a15);
}

uint64_t OUTLINED_FUNCTION_3_0(uint64_t a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, const __CFString *a16, char a17)
{

  return AMFDRErrorPushInternal(a1, a2, 0, 0, 0, 0, 0, 0, a9, a10, a11, a12, a13, a14, a15, a16);
}

__SecTask *AMFDREntitlementIsEntitled(const __CFString *a1)
{
  error = 0;
  v2 = SecTaskCreateFromSelf(0);
  v3 = v2;
  if (!v2)
  {
    return v3;
  }

  v4 = SecTaskCopyValueForEntitlement(v2, a1, &error);
  v5 = v4;
  v6 = error;
  if (error)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4 == 0;
  }

  if (v7)
  {
LABEL_9:
    AMSupportLogInternal(3, "AMFDREntitlementIsEntitled", "BOOLean entitlement query error, result: %@, error: %@", v5, v6);
    CFRelease(v3);
    v9 = 0;
    v3 = 0;
    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v8 = CFGetTypeID(v4);
  if (v8 != CFBooleanGetTypeID())
  {
    v6 = error;
    goto LABEL_9;
  }

  v9 = CFBooleanGetValue(v5) != 0;
  CFRelease(v3);
LABEL_10:
  CFRelease(v5);
  v3 = v9;
LABEL_11:
  if (error)
  {
    CFRelease(error);
  }

  return v3;
}

CFTypeRef AMFDRPlatformCopyDefaultClientIdByInterface(const void *a1)
{
  v15[4] = *MEMORY[0x277D85DE8];
  v15[0] = "en0";
  v15[1] = "en1";
  v15[2] = "en2";
  v15[3] = "en3";
  if (!a1)
  {
    AMFDRPlatformCopyDefaultClientIdByInterface_cold_2(0);
    return 0;
  }

  for (i = 0; i != 4; ++i)
  {
    v3 = v15[i];
    v4 = strlen(v3);
    v5 = _CopyClientIdForAdapter(a1, v3, v4);
    if (v5)
    {
      v13 = v5;
      AMSupportLogInternal(6, "AMFDRPlatformCopyDefaultClientIdByInterface", "found clientid %@ for adapter %s", v5, v3);
      return v13;
    }
  }

  v6 = if_nameindex();
  if (!v6)
  {
    AMFDRPlatformCopyDefaultClientIdByInterface_cold_1(0);
    return 0;
  }

  v7 = v6;
  if_name = v6->if_name;
  if (if_name)
  {
    p_if_name = &v6[1].if_name;
    do
    {
      if (*if_name == 108 && if_name[1] == 111 && if_name[2] == 48)
      {
        AMSupportLogInternal(7, "AMFDRPlatformCopyDefaultClientIdByInterface", "if_nameindex: skipping %s", if_name);
      }

      else
      {
        v11 = strlen(if_name);
        v12 = _CopyClientIdForAdapter(a1, if_name, v11);
        if (v12)
        {
          v13 = v12;
          AMSupportLogInternal(6, "AMFDRPlatformCopyDefaultClientIdByInterface", "if_nameindex: found clientid %@ for adapter %s", v12, *(p_if_name - 2));
          goto LABEL_17;
        }
      }

      v10 = *p_if_name;
      p_if_name += 2;
      if_name = v10;
    }

    while (v10);
  }

  AMSupportLogInternal(3, "AMFDRPlatformCopyDefaultClientIdByInterface", "Failed to find adapter for clientid.");
  v13 = 0;
LABEL_17:
  MEMORY[0x223DB8F10](v7);
  return v13;
}

uint64_t AMFDRPlatformCopyDefaultClientIdByECID()
{
  v0 = AMFDRSealingMapCallMGCopyAnswer(@"UniqueChipID", 0);
  if (!v0)
  {
    AMFDRPlatformCopyDefaultClientIdByECID_cold_3();
    return 0;
  }

  v1 = v0;
  v2 = *MEMORY[0x277CBECE8];
  v3 = AMFDRCreateInstanceString(*MEMORY[0x277CBECE8], v0);
  if (!v3)
  {
    AMFDRPlatformCopyDefaultClientIdByECID_cold_2(v1);
    return 0;
  }

  v4 = v3;
  v5 = AMFDRSealingMapCallMGCopyAnswer(@"ChipID", 0);
  if (v5)
  {
    v6 = AMFDRCreateInstanceString(v2, v5);
    v7 = v6;
    if (v6)
    {
      v8 = CFStringCreateWithFormat(v2, 0, @"%@-%@", v6, v4);
      if (v8)
      {
        v9 = AMSupportSafeRetain();
      }

      else
      {
        AMSupportLogInternal(3, "AMFDRPlatformCopyDefaultClientIdByECID", "Could not combine '%@' and '%@'", v5, v1);
        v9 = 0;
      }

      goto LABEL_7;
    }

    AMSupportLogInternal(3, "AMFDRPlatformCopyDefaultClientIdByECID", "Could not get chipid string for identifier '%@'", v5);
    v9 = 0;
  }

  else
  {
    AMFDRPlatformCopyDefaultClientIdByECID_cold_1();
    v9 = 0;
    v7 = 0;
  }

  v8 = 0;
LABEL_7:
  CFRelease(v4);
  CFRelease(v1);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  return v9;
}

CFURLRef AMFDRPlatformCopyDefaultDataStoragePath()
{
  if (MEMORY[0x282221230])
  {
    v0 = malloc_type_calloc(1uLL, 0x400uLL, 0x6647E971uLL);
    if (!v0)
    {
      AMSupportLogInternal(3, "AMFDRPlatformCopyDefaultDataStoragePath", "failed to allocate path");
      goto LABEL_14;
    }

    if (lookupPathForPersistentData())
    {
      AMSupportLogInternal(3, "AMFDRPlatformCopyDefaultDataStoragePath", "failed to lookup local fdr store path");
      goto LABEL_14;
    }

    v1 = strlen(v0);
    v2 = CFURLCreateFromFileSystemRepresentation(*MEMORY[0x277CBECE8], v0, v1, 0);
    if (!v2)
    {
LABEL_11:
      AMSupportLogInternal(3, "AMFDRPlatformCopyDefaultDataStoragePath", "Unable to create defaultPath");
LABEL_14:
      v2 = 0;
    }
  }

  else
  {
    v3 = MGCopyAnswer();
    v4 = *MEMORY[0x277CBECE8];
    v5 = @"/System/Library/Caches/com.apple.factorydata";
    if (v3 && CFBooleanGetValue(v3) == 1)
    {
      v5 = @"/mnt1/System/Library/Caches/com.apple.factorydata";
    }

    v2 = CFURLCreateWithFileSystemPath(v4, v5, kCFURLPOSIXPathStyle, 1u);
    if (!v2)
    {
      goto LABEL_11;
    }
  }

  AMSupportSafeFree();
  AMSupportSafeRelease();
  return v2;
}

void *AMFDRDataUtilitiesCreateStringWithBytesNoCopy(const __CFAllocator *a1, const __CFData *a2, const UInt8 *a3, unsigned int a4, CFStringEncoding a5, Boolean a6)
{
  v12 = objc_autoreleasePoolPush();
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (isStringInitWithBytesNoCopyAvailable_onceToken != -1)
  {
    AMFDRDataUtilitiesCreateStringWithBytesNoCopy_cold_1();
  }

  if (isStringInitWithBytesNoCopyAvailable_available)
  {
    if (a3 && a4)
    {
      if (!a2)
      {
        AMSupportLogInternal(3, "AMFDRDataUtilitiesCreateStringWithBytesNoCopy", "data is NULL");
        goto LABEL_20;
      }

      if (CFDataGetBytePtr(a2) > a3 || (BytePtr = CFDataGetBytePtr(a2), &a3[a4] > &BytePtr[CFDataGetLength(a2)]))
      {
        AMSupportLogInternal(3, "AMFDRDataUtilitiesCreateStringWithBytesNoCopy", "bytes not in binary range of data");
        goto LABEL_20;
      }

      if (a5 == -1)
      {
        AMSupportLogInternal(3, "AMFDRDataUtilitiesCreateStringWithBytesNoCopy", "invalid encoding: %@", 0xFFFFFFFFLL);
        goto LABEL_20;
      }

      v14 = CFRetain(a2);
      v23[3] = v14;
      v15 = objc_alloc(MEMORY[0x277CCACA8]);
      v16 = CFStringConvertEncodingToNSStringEncoding(a5);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __AMFDRDataUtilitiesCreateStringWithBytesNoCopy_block_invoke;
      v21[3] = &unk_2784AEBB8;
      v21[4] = &v22;
      v17 = [v15 initWithBytesNoCopy:a3 length:a4 encoding:v16 deallocator:v21];
    }

    else
    {
      v17 = [MEMORY[0x277CCACA8] string];
    }

    if (v17)
    {
      v18 = CFRetain(v17);
      goto LABEL_15;
    }

LABEL_20:
    v19 = 0;
    goto LABEL_16;
  }

  AMSupportLogInternal(6, "AMFDRDataUtilitiesCreateStringWithBytesNoCopy", "NSString is not respond to initWithBytesNoCopy on this device, falling back to CFStringCreateWithBytes");
  v18 = CFStringCreateWithBytes(a1, a3, a4, a5, a6);
LABEL_15:
  v19 = v18;
LABEL_16:
  _Block_object_dispose(&v22, 8);
  objc_autoreleasePoolPop(v12);
  return v19;
}

void sub_2224C1B4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFTypeRef AMFDRDataUtilitiesCreateDataWithBytesNoCopy(const __CFData *a1, unint64_t a2, unsigned int a3)
{
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  if (a2 && a3)
  {
    if (!a1)
    {
      AMSupportLogInternal(3, "AMFDRDataUtilitiesCreateDataWithBytesNoCopy", "data is NULL");
      goto LABEL_12;
    }

    if (CFDataGetBytePtr(a1) > a2 || (BytePtr = CFDataGetBytePtr(a1), a2 + a3 > &BytePtr[CFDataGetLength(a1)]))
    {
      AMSupportLogInternal(3, "AMFDRDataUtilitiesCreateDataWithBytesNoCopy", "bytes not in binary range of data");
      goto LABEL_12;
    }

    v8 = CFRetain(a1);
    v15[3] = v8;
    v9 = objc_alloc(MEMORY[0x277CBEA90]);
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __AMFDRDataUtilitiesCreateDataWithBytesNoCopy_block_invoke;
    v13[3] = &unk_2784AEBB8;
    v13[4] = &v14;
    v10 = [v9 initWithBytesNoCopy:a2 length:a3 deallocator:v13];
  }

  else
  {
    v10 = [MEMORY[0x277CBEA90] data];
  }

  if (!v10)
  {
LABEL_12:
    v11 = 0;
    goto LABEL_13;
  }

  v11 = CFRetain(v10);
LABEL_13:
  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v6);
  return v11;
}

void sub_2224C1CF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__isStringInitWithBytesNoCopyAvailable_block_invoke()
{
  result = [MEMORY[0x277CCACA8] instancesRespondToSelector:sel_initWithBytesNoCopy_length_encoding_deallocator_];
  isStringInitWithBytesNoCopyAvailable_available = result;
  return result;
}

uint64_t AMFDRModuleCameraSensorAuthIsValid(const __CFString *a1, __CFString ***a2, uint64_t a3)
{
  if (!a1 || (v6 = CFGetTypeID(a1), v6 != CFStringGetTypeID()))
  {
    AMFDRModuleCameraSensorAuthIsValid_cold_2(a3);
    return 0;
  }

  if (!a2)
  {
    AMFDRModuleCameraSensorAuthIsValid_cold_1(a3);
    return 0;
  }

  v7 = &off_2784AEC00;
  v8 = 3;
  while (CFStringCompare(a1, *(v7 - 1), 0))
  {
    v7 += 3;
    if (!--v8)
    {
      AMFDRErrorPushInternal(a3, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, "AMFDRModuleCameraSensorAuthIsValid", @"cannot find matched camera sensor info: (%@)", a1);
      return 0;
    }
  }

  *a2 = v7;
  return 1;
}

CFStringRef AMFDRDataCreateString(const __CFAllocator *a1, const __CFString *cf, int a3)
{
  if (!cf)
  {
    return 0;
  }

  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    if (!a3)
    {
LABEL_21:

      return CFStringCreateCopy(a1, cf);
    }

    v7 = CFGetTypeID(cf);
    if (v7 == CFStringGetTypeID())
    {
      Length = CFStringGetLength(cf);
      if ((Length - 211) >= 0xFFFFFFFFFFFFFF2ELL)
      {
        v9 = Length;
        v10 = 0;
        v11 = "Instance '%@' contains illegal character or illegal length";
        do
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(cf, v10);
          if ((CharacterAtIndex - 48) >= 0xA && (CharacterAtIndex & 0xFFFFFFDF) - 65 >= 0x1A)
          {
            v14 = 0;
            while (CharacterAtIndex != asc_22254ACFD[v14])
            {
              if (++v14 == 4)
              {
                goto LABEL_42;
              }
            }
          }

          ++v10;
        }

        while (v10 != v9);
        goto LABEL_21;
      }

      AMSupportLogInternal(3, "_AMFDRStringInstanceIsValid", "instance %@ has unsupported length", cf);
    }

    AMSupportLogInternal(3, "AMFDRDataCreateString", "Instance '%@' contains illegal character or illegal length", cf);
    return 0;
  }

  v15 = CFGetTypeID(cf);
  if (v15 != CFDataGetTypeID())
  {
    v17 = CFGetTypeID(cf);
    if (v17 == CFBooleanGetTypeID())
    {
      if (*MEMORY[0x277CBED28] == cf)
      {
        v18 = "1";
      }

      else
      {
        v18 = "0";
      }

      return CFStringCreateWithFormat(a1, 0, @"%s", v18);
    }

    v19 = CFGetTypeID(cf);
    if (v19 == CFNumberGetTypeID())
    {
      if (CFNumberIsFloatType(cf))
      {
        AMSupportLogInternal(3, "AMFDRDataCreateString", "Floating point identifier '%@' is not supported", cf);
        return 0;
      }

      ByteSize = CFNumberGetByteSize(cf);
      if (ByteSize <= 4)
      {
        valuePtr = -1431655766;
        if (CFNumberGetValue(cf, kCFNumberIntType, &valuePtr))
        {
          goto LABEL_33;
        }

        goto LABEL_48;
      }

      if (ByteSize == 8)
      {
        v22 = 0xAAAAAAAAAAAAAAAALL;
        if (CFNumberGetValue(cf, kCFNumberLongLongType, &v22))
        {
          if (HIDWORD(v22))
          {
            result = AMSupportCopyHexStringFromUInt64();
            goto LABEL_34;
          }

LABEL_33:
          result = AMSupportCopyHexStringFromUInt32();
LABEL_34:
          v21 = 1;
          goto LABEL_35;
        }

LABEL_48:
        result = AMSupportLogInternal(3, "AMFDRDataCreateString", "Could not convert identifier '%@' to primitive", cf);
        v21 = 4;
LABEL_35:
        if (v21 != 4)
        {
          return result;
        }

        return 0;
      }
    }

    v11 = "Object '%@' has unsupported type and cannot be formatted as identifier";
LABEL_42:
    AMSupportLogInternal(3, "AMFDRDataCreateString", v11, cf);
    return 0;
  }

  return AMSupportCopyHexStringFromData();
}

const __CFString *AMFDRDataCreateSikInstanceString(const __CFAllocator *a1, uint64_t a2)
{
  v3 = AMFDRCreateTypeWithOptions(a1, @"Local", 0);
  if (v3)
  {
    SikInstanceStringInternal = AMFDRDataCreateSikInstanceStringInternal(v3, 0, a2);
  }

  else
  {
    AMFDRDataCreateSikInstanceString_cold_1(0);
    SikInstanceStringInternal = 0;
  }

  AMSupportSafeRelease();
  return SikInstanceStringInternal;
}

const __CFString *AMFDRDataCreateSikInstanceStringInternal(__CFString *cf, uint64_t a2, uint64_t a3)
{
  v3 = cf;
  if (!cf)
  {
    AMFDRDataCreateSikInstanceStringInternal_cold_4(0);
    goto LABEL_9;
  }

  if (!a3)
  {
    AMFDRDataCreateSikInstanceStringInternal_cold_3(cf);
LABEL_15:
    v3 = 0;
    goto LABEL_9;
  }

  if (!a2 || (SikPub = AMFDRGetSikOverride(cf, a2, a3)) == 0)
  {
    SikPub = AMFDRCryptoGetSikPub(v3);
    if (!SikPub)
    {
      AMFDRDataCreateSikInstanceStringInternal_cold_2(0);
      v3 = 0;
      goto LABEL_9;
    }
  }

  v6 = SikPub;
  v7 = CFGetAllocator(v3);
  v8 = CFStringCreateWithFormat(v7, 0, @"sik-%@-%@", a3, v6);
  v9 = v8;
  if (!v8)
  {
    AMFDRDataCreateSikInstanceStringInternal_cold_1(0);
    goto LABEL_15;
  }

  if (CFStringGetLength(v8) >= 211)
  {
    AMSupportLogInternal(3, "AMFDRDataCreateSikInstanceStringInternal", "sik instance %@ is too long", v9);
    goto LABEL_15;
  }

  v3 = v9;
LABEL_9:
  AMSupportSafeRelease();
  return v3;
}

const __CFString *AMFDRDataCreateInstanceString(__CFString *a1, uint64_t a2, const void *a3)
{
  if (a3)
  {
    if (AMFDRDataInstanceUseSikFormat(a1, a2))
    {

      return AMFDRDataCreateSikInstanceStringInternal(a1, a2, a3);
    }

    else
    {

      return CFRetain(a3);
    }
  }

  else
  {
    AMFDRDataCreateInstanceString_cold_1(a1);
    return 0;
  }
}

BOOL AMFDRDataInstanceUseSikFormat(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return AMFDRSealingMapGetFDRDataVersionForDeviceInternal(0) == 2;
  }

  v3 = *(*(a1 + 136) + 8);
  if ((v3 & 8) != 0)
  {
    v4 = 1;
    if ((v3 & 2) != 0)
    {
      return 0;
    }
  }

  else
  {
    v4 = AMFDRSealingMapGetFDRDataVersionForDeviceInternal(a1) == 2;
    if ((*(*(a1 + 136) + 8) & 2) != 0)
    {
      return 0;
    }
  }

  v5 = AMFDRGetOptions(a1, a2);
  if (v5)
  {
    Value = CFDictionaryGetValue(v5, @"UseSikDataInstance");
    if (Value)
    {
      return CFBooleanGetValue(Value) != 0;
    }
  }

  else
  {
    AMFDRDataInstanceUseSikFormat_cold_1(0);
  }

  return v4;
}

const __CFString *AMFDRDataCreatePermissionsString(__CFString *cf, uint64_t a2, const __CFString *a3, const __CFString *a4)
{
  v4 = a4;
  if (a4)
  {
    if (cf)
    {
      v8 = CFGetAllocator(cf);
    }

    else
    {
      v8 = *MEMORY[0x277CBECE8];
    }

    Mutable = CFStringCreateMutable(v8, 0);
    if (Mutable)
    {
      v10 = Mutable;
      appended = AMFDRDataAppendPermissionsString(cf, a2, a3, v4, Mutable);
      if (appended)
      {
        v4 = CFRetain(v10);
      }

      else
      {
        AMFDRDataCreatePermissionsString_cold_1(appended);
        v4 = 0;
      }

      CFRelease(v10);
    }

    else
    {
      AMFDRDataCreatePermissionsString_cold_2(0);
      return 0;
    }
  }

  else
  {
    AMFDRDataCreatePermissionsString_cold_3(cf);
  }

  return v4;
}

uint64_t AMFDRDataAppendPermissionsString(__CFString *cf, uint64_t a2, const __CFString *a3, const __CFString *a4, __CFString *a5)
{
  if (!a4)
  {
    AMFDRDataAppendPermissionsString_cold_6(cf);
    return 0;
  }

  if (a2 == 10)
  {
    goto LABEL_7;
  }

  if (a2 != 8)
  {
    InstanceString = AMFDRDataCreateInstanceString(cf, a3, a4);
    if (InstanceString)
    {
      v13 = InstanceString;
      if ((AMFDRAppendPermissionsString(a2, a3, InstanceString, a5) & 1) == 0)
      {
        AMSupportLogInternal(3, "AMFDRDataAppendPermissionsString", "AMFDRAppendPermissionsString with %@ failed", a2);
        goto LABEL_21;
      }

      goto LABEL_13;
    }

    goto LABEL_17;
  }

  if (!AMFDRSealingMapEntryHasAttributeForClassInternal(cf, a3, @"ChallengeClaim", 0))
  {
LABEL_7:
    SikInstanceStringInternal = AMFDRDataCreateSikInstanceStringInternal(cf, a3, a4);
    if (SikInstanceStringInternal)
    {
      v13 = SikInstanceStringInternal;
      v14 = AMFDRAppendPermissionsString(1, a3, SikInstanceStringInternal, a5);
      if ((v14 & 1) == 0)
      {
        AMFDRDataAppendPermissionsString_cold_1(v14);
        goto LABEL_21;
      }

      v15 = AMFDRAppendPermissionsString(0, a3, a4, a5);
      if ((v15 & 1) == 0)
      {
        AMFDRDataAppendPermissionsString_cold_2(v15);
LABEL_21:
        v11 = 0;
        goto LABEL_14;
      }

LABEL_13:
      v11 = 1;
LABEL_14:
      CFRelease(v13);
      return v11;
    }

LABEL_17:
    AMFDRDataAppendPermissionsString_cold_3(0);
    return 0;
  }

  v10 = AMFDRAppendPermissionsString(8, a3, a4, a5);
  if ((v10 & 1) == 0)
  {
    AMFDRDataAppendPermissionsString_cold_4(v10);
    return 0;
  }

  return 1;
}

const __CFString *AMFDRCreatePermissionsString(const __CFAllocator *a1, uint64_t a2, const __CFString *a3, const __CFString *a4)
{
  if (!a3)
  {
    AMFDRCreatePermissionsString_cold_4(a1);
    return 0;
  }

  v4 = a4;
  if (!a4)
  {
    AMFDRCreatePermissionsString_cold_3(a1);
    return v4;
  }

  Mutable = CFStringCreateMutable(a1, 0);
  if (!Mutable)
  {
    AMFDRCreatePermissionsString_cold_2(0);
    return 0;
  }

  v8 = Mutable;
  v9 = AMFDRAppendPermissionsString(a2, a3, v4, Mutable);
  if (v9)
  {
    v4 = CFRetain(v8);
  }

  else
  {
    AMFDRCreatePermissionsString_cold_1(v9);
    v4 = 0;
  }

  CFRelease(v8);
  return v4;
}

uint64_t AMFDRAppendPermissionsString(uint64_t a1, CFStringRef theString, const __CFString *a3, __CFString *a4)
{
  if (!theString)
  {
    AMFDRAppendPermissionsString_cold_5(a1);
    return 0;
  }

  if (!a3)
  {
    AMFDRAppendPermissionsString_cold_4(a1);
    return 0;
  }

  if (!a4)
  {
    AMFDRAppendPermissionsString_cold_3(a1);
    return 0;
  }

  v6 = a1;
  if (a1 >= 0xF || ((0x7BFFu >> a1) & 1) == 0)
  {
    AMSupportLogInternal(3, "AMFDRAppendPermissionsString", "unknown action type: %d", a1);
    return 0;
  }

  v8 = off_2784AECA0[a1];
  if (!CFStringGetLength(theString))
  {
    AMFDRAppendPermissionsString_cold_2(0);
    return 0;
  }

  if (!CFStringGetLength(a3))
  {
    AMFDRAppendPermissionsString_cold_1(0);
    return 0;
  }

  if (v6 == 13)
  {
    Length = CFStringGetLength(a4);
    v12 = @";%@/Mothership";
    v13 = @"%@/Mothership";
  }

  else
  {
    if (v6 != 7 || CFStringCompare(theString, @"*", 0) || CFStringCompare(a3, @"*", 0))
    {
      if (CFStringGetLength(a4))
      {
        v9 = @";%@/%@:%@";
      }

      else
      {
        v9 = @"%@/%@:%@";
      }

      CFStringAppendFormat(a4, 0, v9, v8, theString, a3);
      return 1;
    }

    Length = CFStringGetLength(a4);